class BMW2002VinTable
  
  ##
  # Lookup a Model entry for a given VIN number
  ##
  def self.lookup_model(vin)
    model_id = -1
    variance = 0
  
    case vin
    when 4150001 .. 4200000
      model_id = 1
      variance = (vin - 4150001) / (4200000 - 4150001).to_f
    when 5300001 .. 5320742
      model_id = 2
      variance = (vin - 5300001) / (5320742 - 5300001).to_f
    when 3810001 .. 3810822
      model_id = 3
      variance = (vin - 3810001) / (3810822 - 3810001).to_f
    when 1500001 .. 1550000
      model_id = 4
      variance = (vin - 1500001) / (1550000 - 1500001).to_f
    when 1850001 .. 1900000
      model_id = 5
      variance = (vin - 1850001) / (1900000 - 1850001).to_f
    when 2650001 .. 2676591
      model_id = 6
      variance = (vin - 2650001) / (2676591 - 2650001).to_f
    when 2676592 .. 2700000
      model_id = 7
      variance = (vin - 2676592) / (2700000 - 2676592).to_f
    when 3900001 .. 3922941
      model_id = 8
      variance = (vin - 3900001) / (3922941 - 3900001).to_f
    when 3930001 .. 3981500
      model_id = 9
      variance = (vin - 3930001) / (3981500 - 3930001).to_f
    when 1550001 .. 1553252
      model_id = 10
      variance = (vin - 1550001) / (1553252 - 1550001).to_f
    when 1553253 .. 1554575
      model_id = 11
      variance = (vin - 1553253) / (1554575 - 1553253).to_f
    when 3560001 .. 3561938
      model_id = 12
      variance = (vin - 3560001) / (3561938 - 3560001).to_f
    when 1580001 .. 1588670
      model_id = 13
      variance = (vin - 1580001) / (1588670 - 1580001).to_f
    when 1557001 .. 1558682
      model_id = 14
      variance = (vin - 1557001) / (1558682 - 1557001).to_f
    when 3500001 .. 3550000
      model_id = 15
      variance = (vin - 3500001) / (3550000 - 3500001).to_f
    when 3580001 .. 3582437
      model_id = 16
      variance = (vin - 3580001) / (3582437 - 3580001).to_f
    when 4100001 .. 4130814
      model_id = 17
      variance = (vin - 4100001) / (4130814 - 4100001).to_f
    when 3570001 .. 3570100
      model_id = 18
      variance = (vin - 3570001) / (3570100 - 3570001).to_f
    when 1600001 .. 1650000
      model_id = 19
      variance = (vin - 1600001) / (1650000 - 1600001).to_f
    when 2600001 .. 2634875
      model_id = 20
      variance = (vin - 2600001) / (2634875 - 2600001).to_f
    when 2634876 .. 2650000
      model_id = 21
      variance = (vin - 2634876) / (2650000 - 2634876).to_f
    when 3600001 .. 3652610
      model_id = 22
      variance = (vin - 3600001) / (3652610 - 3600001).to_f
    when 3660001 .. 3700000
      model_id = 23
      variance = (vin - 3660001) / (3700000 - 3660001).to_f
    when 3750001 .. 3754244
      model_id = 24
      variance = (vin - 3750001) / (3754244 - 3750001).to_f
    when 1650001 .. 1653979
      model_id = 25
      variance = (vin - 1650001) / (1653979 - 1650001).to_f
    when 1653980 .. 1660000
      model_id = 26
      variance = (vin - 1653980) / (1660000 - 1653980).to_f
    when 2550001 .. 2551473
      model_id = 27
      variance = (vin - 2550001) / (2551473 - 2550001).to_f
    when 4200001 .. 4203288
      model_id = 28
      variance = (vin - 4200001) / (4203288 - 4200001).to_f
    when 2500001 .. 2507130
      model_id = 29
      variance = (vin - 2500001) / (2507130 - 2500001).to_f
    when 2507131 .. 2513880
      model_id = 30
      variance = (vin - 2507131) / (2513880 - 2507131).to_f
    when 4250001 .. 4255109
      model_id = 31
      variance = (vin - 4250001) / (4255109 - 4250001).to_f
    when 2520001 .. 2520993
      model_id = 32
      variance = (vin - 2520001) / (2520993 - 2520001).to_f
    when 2520994 .. 2522160
      model_id = 33
      variance = (vin - 2520994) / (2522160 - 2520994).to_f
    when 4270001 .. 4271240
      model_id = 34
      variance = (vin - 4270001) / (4271240 - 4270001).to_f
    when 1680001 .. 1696450
      model_id = 35
      variance = (vin - 1680001) / (1696450 - 1680001).to_f
    when 2790001 .. 2790200
      model_id = 36
      variance = (vin - 2790001) / (2790200 - 2790001).to_f
    when 2795001 .. 2796200
      model_id = 37
      variance = (vin - 2795001) / (2796200 - 2795001).to_f
    when 3590001 .. 3590763
      model_id = 38
      variance = (vin - 3590001) / (3590763 - 3590001).to_f
    when 2791001 .. 2791260
      model_id = 39
      variance = (vin - 2791001) / (2791260 - 2791001).to_f
    when 3595001 .. 3595094
      model_id = 40
      variance = (vin - 3595001) / (3595094 - 3595001).to_f
    when 2700001 .. 2720114
      model_id = 41
      variance = (vin - 2700001) / (2720114 - 2700001).to_f
    when 2730001 .. 2737460
      model_id = 42
      variance = (vin - 2730001) / (2737460 - 2730001).to_f
    when 2750001 .. 2752447
      model_id = 43
      variance = (vin - 2750001) / (2752447 - 2750001).to_f
    when 2770001 .. 2771233
      model_id = 44
      variance = (vin - 2770001) / (2771233 - 2770001).to_f
    when 4290001 .. 4291672
      model_id = 45
      variance = (vin - 4290001) / (4291672 - 4290001).to_f
    when 3300001 .. 3304379
      model_id = 46
      variance = (vin - 3300001) / (3304379 - 3300001).to_f
    when 3550001 .. 3553099
      model_id = 47
      variance = (vin - 3550001) / (3553099 - 3550001).to_f
    when 3410001 .. 3410976
      model_id = 48
      variance = (vin - 3410001) / (3410976 - 3410001).to_f
    when 3350001 .. 3360264
      model_id = 49
      variance = (vin - 3350001) / (3360264 - 3350001).to_f
    when 3460001 .. 3462840
      model_id = 50
      variance = (vin - 3460001) / (3462840 - 3460001).to_f
    when 3440001 .. 3441537
      model_id = 51
      variance = (vin - 3440001) / (3441537 - 3440001).to_f
    when 3480001 .. 3480339
      model_id = 52
      variance = (vin - 3480001) / (3480339 - 3480001).to_f
    when 3400001 .. 3400989
      model_id = 53
      variance = (vin - 3400001) / (3400989 - 3400001).to_f
    when 3420001 .. 3425059
      model_id = 54
      variance = (vin - 3420001) / (3425059 - 3420001).to_f
    when 3430001 .. 3430724
      model_id = 55
      variance = (vin - 3430001) / (3430724 - 3430001).to_f
    when 1560001 .. 1572930
      model_id = 56
      variance = (vin - 1560001) / (1572930 - 1560001).to_f
    when 1572931 .. 1573162
      model_id = 57
      variance = (vin - 1572931) / (1573162 - 1572931).to_f
    when 1660001 .. 1680000
      model_id = 58
      variance = (vin - 1660001) / (1680000 - 1660001).to_f
    when 2570001 .. 2572069
      model_id = 59
      variance = (vin - 2570001) / (2572069 - 2570001).to_f
    when 2572070 .. 2593704
      model_id = 60
      variance = (vin - 2572070) / (2593704 - 2572070).to_f
    when 4220001 .. 4230601
      model_id = 61
      variance = (vin - 4220001) / (4230601 - 4220001).to_f
    when 2360001 .. 2367750
      model_id = 62
      variance = (vin - 2360001) / (2367750 - 2360001).to_f
    when 2370001 .. 2380000
      model_id = 63
      variance = (vin - 2370001) / (2380000 - 2370001).to_f
    when 2740001 .. 2745584
      model_id = 64
      variance = (vin - 2740001) / (2745584 - 2740001).to_f
    when 2530001 .. 2532124
      model_id = 65
      variance = (vin - 2530001) / (2532124 - 2530001).to_f
    when 2532125 .. 2534861
      model_id = 66
      variance = (vin - 2532125) / (2534861 - 2532125).to_f
    when 4280001 .. 4283429
      model_id = 67
      variance = (vin - 4280001) / (4283429 - 4280001).to_f
    when 2380001 .. 2382692
      model_id = 68
      variance = (vin - 2380001) / (2382692 - 2380001).to_f
    when 2390001 .. 2393292
      model_id = 69
      variance = (vin - 2390001) / (2393292 - 2390001).to_f
    when 2760001 .. 2764521
      model_id = 70
      variance = (vin - 2760001) / (2764521 - 2760001).to_f
    when 2780001 .. 2782928
      model_id = 71
      variance = (vin - 2780001) / (2782928 - 2780001).to_f
    end
    
    if model_id > 0
      { :model => Model.find_by_model_id(model_id),
        :variance => ("%0.2f" % variance).to_f }
    else
      { :model => nil }
    end
  end
  
end
