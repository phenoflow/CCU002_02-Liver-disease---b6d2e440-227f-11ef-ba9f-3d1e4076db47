# CVD-COVID-UK consortium, William N Whiteley, et al., 2024.

import sys, csv, re

codes = [{"code":"K74.0","system":"icd10"},{"code":"A704z","system":"icd10"},{"code":"PB614","system":"icd10"},{"code":"X3073","system":"icd10"},{"code":"PB616","system":"icd10"},{"code":"XaYbp","system":"icd10"},{"code":"X7848","system":"icd10"},{"code":"X3078","system":"icd10"},{"code":"X7847","system":"icd10"},{"code":"X3076","system":"icd10"},{"code":"X307C","system":"icd10"},{"code":"SP142","system":"icd10"},{"code":"235881000","system":"icd10"},{"code":"213230009","system":"icd10"},{"code":"204782009","system":"icd10"},{"code":"59927004","system":"icd10"},{"code":"82821008","system":"icd10"},{"code":"253807009","system":"icd10"},{"code":"235886005","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ccu002_02-liver-disease-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["extrahepatic-ccu002_02-liver-disease---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["extrahepatic-ccu002_02-liver-disease---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["extrahepatic-ccu002_02-liver-disease---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
