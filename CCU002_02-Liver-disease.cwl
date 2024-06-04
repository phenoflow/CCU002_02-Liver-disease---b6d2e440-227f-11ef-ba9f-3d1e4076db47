cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  ccu002_02-liver-disease-cirrho---secondary:
    run: ccu002_02-liver-disease-cirrho---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  ccu002_02-liver-disease-sclerosing---secondary:
    run: ccu002_02-liver-disease-sclerosing---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-cirrho---secondary/output
  nonalcoholic-ccu002_02-liver-disease---secondary:
    run: nonalcoholic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-sclerosing---secondary/output
  extrahepatic-ccu002_02-liver-disease---secondary:
    run: extrahepatic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: nonalcoholic-ccu002_02-liver-disease---secondary/output
  pigmentary-ccu002_02-liver-disease---secondary:
    run: pigmentary-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: extrahepatic-ccu002_02-liver-disease---secondary/output
  oesophageal-ccu002_02-liver-disease---secondary:
    run: oesophageal-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: pigmentary-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-phlebosclerosis---secondary:
    run: ccu002_02-liver-disease-phlebosclerosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: oesophageal-ccu002_02-liver-disease---secondary/output
  unilobular-ccu002_02-liver-disease---secondary:
    run: unilobular-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-phlebosclerosis---secondary/output
  ccu002_02-liver-disease-bleeding---secondary:
    run: ccu002_02-liver-disease-bleeding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: unilobular-ccu002_02-liver-disease---secondary/output
  mixed-ccu002_02-liver-disease---secondary:
    run: mixed-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-bleeding---secondary/output
  ccu002_02-liver-disease-druginduced---secondary:
    run: ccu002_02-liver-disease-druginduced---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: mixed-ccu002_02-liver-disease---secondary/output
  infectious-ccu002_02-liver-disease---secondary:
    run: infectious-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-druginduced---secondary/output
  micronodular-ccu002_02-liver-disease---secondary:
    run: micronodular-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: infectious-ccu002_02-liver-disease---secondary/output
  postnecrotic-ccu002_02-liver-disease---secondary:
    run: postnecrotic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: micronodular-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-sequelae---secondary:
    run: ccu002_02-liver-disease-sequelae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: postnecrotic-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-sclerotherapy---secondary:
    run: ccu002_02-liver-disease-sclerotherapy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-sequelae---secondary/output
  ccu002_02-liver-disease-subfulminant---secondary:
    run: ccu002_02-liver-disease-subfulminant---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-sclerotherapy---secondary/output
  gastric-ccu002_02-liver-disease---secondary:
    run: gastric-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-subfulminant---secondary/output
  ccu002_02-liver-disease-compensation---secondary:
    run: ccu002_02-liver-disease-compensation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: gastric-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-transplanted---secondary:
    run: ccu002_02-liver-disease-transplanted---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-compensation---secondary/output
  ccu002_02-liver-disease-subacute---secondary:
    run: ccu002_02-liver-disease-subacute---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-transplanted---secondary/output
  chronic-ccu002_02-liver-disease---secondary:
    run: chronic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-subacute---secondary/output
  ccu002_02-liver-disease-damage---secondary:
    run: ccu002_02-liver-disease-damage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: chronic-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-named---secondary:
    run: ccu002_02-liver-disease-named---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-damage---secondary/output
  recurrent-ccu002_02-liver-disease---secondary:
    run: recurrent-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-named---secondary/output
  ccu002_02-liver-disease-operation---secondary:
    run: ccu002_02-liver-disease-operation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: recurrent-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-specified---secondary:
    run: ccu002_02-liver-disease-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-operation---secondary/output
  rigid-ccu002_02-liver-disease---secondary:
    run: rigid-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-specified---secondary/output
  viral-ccu002_02-liver-disease---secondary:
    run: viral-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: rigid-ccu002_02-liver-disease---secondary/output
  deltaagent-ccu002_02-liver-disease---secondary:
    run: deltaagent-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: viral-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-congenita---secondary:
    run: ccu002_02-liver-disease-congenita---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: deltaagent-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-cardiac---secondary:
    run: ccu002_02-liver-disease-cardiac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-congenita---secondary/output
  ccu002_02-liver-disease-alagille---secondary:
    run: ccu002_02-liver-disease-alagille---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-cardiac---secondary/output
  ccu002_02-liver-disease-cholestasis---secondary:
    run: ccu002_02-liver-disease-cholestasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-alagille---secondary/output
  ccu002_02-liver-disease-atresia---secondary:
    run: ccu002_02-liver-disease-atresia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-cholestasis---secondary/output
  ccu002_02-liver-disease-abscess---secondary:
    run: ccu002_02-liver-disease-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-atresia---secondary/output
  ccu002_02-liver-disease-degeneration---secondary:
    run: ccu002_02-liver-disease-degeneration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-abscess---secondary/output
  ccu002_02-liver-disease-fibrosis---secondary:
    run: ccu002_02-liver-disease-fibrosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-degeneration---secondary/output
  capsular-ccu002_02-liver-disease---secondary:
    run: capsular-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-fibrosis---secondary/output
  previous-ccu002_02-liver-disease---secondary:
    run: previous-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: capsular-ccu002_02-liver-disease---secondary/output
  cystic-ccu002_02-liver-disease---secondary:
    run: cystic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: previous-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-complication---secondary:
    run: ccu002_02-liver-disease-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: cystic-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-minnesota---secondary:
    run: ccu002_02-liver-disease-minnesota---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-complication---secondary/output
  multilobular-ccu002_02-liver-disease---secondary:
    run: multilobular-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-minnesota---secondary/output
  ccu002_02-liver-disease-exploration---secondary:
    run: ccu002_02-liver-disease-exploration---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: multilobular-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-assessment---secondary:
    run: ccu002_02-liver-disease-assessment---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-exploration---secondary/output
  ccu002_02-liver-disease-review---secondary:
    run: ccu002_02-liver-disease-review---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-assessment---secondary/output
  ccu002_02-liver-disease-child---secondary:
    run: ccu002_02-liver-disease-child---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-review---secondary/output
  bacterial-ccu002_02-liver-disease---secondary:
    run: bacterial-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-child---secondary/output
  ccu002_02-liver-disease-fibreopt---secondary:
    run: ccu002_02-liver-disease-fibreopt---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: bacterial-ccu002_02-liver-disease---secondary/output
  congestive-ccu002_02-liver-disease---secondary:
    run: congestive-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-fibreopt---secondary/output
  persistent-ccu002_02-liver-disease---secondary:
    run: persistent-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: congestive-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-banding---secondary:
    run: ccu002_02-liver-disease-banding---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: persistent-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-cholangitis---secondary:
    run: ccu002_02-liver-disease-cholangitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-banding---secondary/output
  ccu002_02-liver-disease-related---secondary:
    run: ccu002_02-liver-disease-related---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-cholangitis---secondary/output
  ccu002_02-liver-disease-atrophy---secondary:
    run: ccu002_02-liver-disease-atrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-related---secondary/output
  ccu002_02-liver-disease-pipestem---secondary:
    run: ccu002_02-liver-disease-pipestem---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-atrophy---secondary/output
  ccu002_02-liver-disease-sarcoidosis---secondary:
    run: ccu002_02-liver-disease-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-pipestem---secondary/output
  ccu002_02-liver-disease-congestion---secondary:
    run: ccu002_02-liver-disease-congestion---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-sarcoidosis---secondary/output
  ccu002_02-liver-disease-autoimmune---secondary:
    run: ccu002_02-liver-disease-autoimmune---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-congestion---secondary/output
  whole-ccu002_02-liver-disease---secondary:
    run: whole-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-autoimmune---secondary/output
  upper-ccu002_02-liver-disease---secondary:
    run: upper-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: whole-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-sengstakenblakemore---secondary:
    run: ccu002_02-liver-disease-sengstakenblakemore---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: upper-ccu002_02-liver-disease---secondary/output
  heterotopic-ccu002_02-liver-disease---secondary:
    run: heterotopic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-sengstakenblakemore---secondary/output
  ccu002_02-liver-disease-classified---secondary:
    run: ccu002_02-liver-disease-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: heterotopic-ccu002_02-liver-disease---secondary/output
  primary-ccu002_02-liver-disease---secondary:
    run: primary-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-classified---secondary/output
  pericellular-ccu002_02-liver-disease---secondary:
    run: pericellular-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: primary-ccu002_02-liver-disease---secondary/output
  active-ccu002_02-liver-disease---secondary:
    run: active-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: pericellular-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-transplantation---secondary:
    run: ccu002_02-liver-disease-transplantation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: active-ccu002_02-liver-disease---secondary/output
  local-ccu002_02-liver-disease---secondary:
    run: local-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-transplantation---secondary/output
  fatty-ccu002_02-liver-disease---secondary:
    run: fatty-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: local-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-balloon---secondary:
    run: ccu002_02-liver-disease-balloon---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: fatty-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-syphilis---secondary:
    run: ccu002_02-liver-disease-syphilis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-balloon---secondary/output
  ccu002_02-liver-disease-hypoxiaassociated---secondary:
    run: ccu002_02-liver-disease-hypoxiaassociated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-syphilis---secondary/output
  ccu002_02-liver-disease-hypertension---secondary:
    run: ccu002_02-liver-disease-hypertension---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-hypoxiaassociated---secondary/output
  ccu002_02-liver-disease-failure---secondary:
    run: ccu002_02-liver-disease-failure---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-hypertension---secondary/output
  hepatorenal-ccu002_02-liver-disease---secondary:
    run: hepatorenal-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-failure---secondary/output
  splenic-ccu002_02-liver-disease---secondary:
    run: splenic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: hepatorenal-ccu002_02-liver-disease---secondary/output
  syphilitic-ccu002_02-liver-disease---secondary:
    run: syphilitic-ccu002_02-liver-disease---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: splenic-ccu002_02-liver-disease---secondary/output
  ccu002_02-liver-disease-endoscop---secondary:
    run: ccu002_02-liver-disease-endoscop---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: syphilitic-ccu002_02-liver-disease---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: ccu002_02-liver-disease-endoscop---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
