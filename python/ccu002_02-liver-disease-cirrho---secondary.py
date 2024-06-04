# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"K70.3","system":"icd10"},{"code":"K74.4","system":"icd10"},{"code":"K74.5","system":"icd10"},{"code":"K71.7","system":"icd10"},{"code":"K74.6","system":"icd10"},{"code":"XE0b5","system":"icd10"},{"code":"X307R","system":"icd10"},{"code":"J615.","system":"icd10"},{"code":"J61y3","system":"icd10"},{"code":"X307N","system":"icd10"},{"code":"X307M","system":"icd10"},{"code":"XE0bA","system":"icd10"},{"code":"XE0b4","system":"icd10"},{"code":"J615y","system":"icd10"},{"code":"J612.","system":"icd10"},{"code":"J6356","system":"icd10"},{"code":"XE0b8","system":"icd10"},{"code":"XaBM6","system":"icd10"},{"code":"X307O","system":"icd10"},{"code":"XE0dJ","system":"icd10"},{"code":"X307V","system":"icd10"},{"code":"XE0dD","system":"icd10"},{"code":"X307S","system":"icd10"},{"code":"X307L","system":"icd10"},{"code":"J61..","system":"icd10"},{"code":"J616z","system":"icd10"},{"code":"J616.","system":"icd10"},{"code":"Jyu71","system":"icd10"},{"code":"J615G","system":"icd10"},{"code":"J615B","system":"icd10"},{"code":"XaC1d","system":"icd10"},{"code":"J6161","system":"icd10"},{"code":"197301006","system":"icd10"},{"code":"197362001","system":"icd10"},{"code":"419728003","system":"icd10"},{"code":"1761006","system":"icd10"},{"code":"197279005","system":"icd10"},{"code":"309783001","system":"icd10"},{"code":"308129003","system":"icd10"},{"code":"19943007","system":"icd10"},{"code":"266468003","system":"icd10"},{"code":"12368000","system":"icd10"},{"code":"197316009","system":"icd10"},{"code":"470971000000107","system":"icd10"},{"code":"123604002","system":"icd10"},{"code":"76301009","system":"icd10"},{"code":"420054005","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-liver-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ccu002_02-liver-disease-cirrho---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ccu002_02-liver-disease-cirrho---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ccu002_02-liver-disease-cirrho---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
