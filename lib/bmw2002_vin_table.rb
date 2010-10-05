class BMW2002VinTable
  
  ##
  # Lookup a Model entry for a given VIN number
  ##
  def self.lookup_model(vin)
    model_id = -1
  
    case vin
    when 4150001 .. 4200000
      model_id = 1
    when 5300001 .. 5320742
      model_id = 2
    when 3810001 .. 3810822
      model_id = 3
    when 1500001 .. 1550000
      model_id = 4
    when 1850001 .. 1900000
      model_id = 5
    when 2650001 .. 2676591
      model_id = 6
    when 2676592 .. 2700000
      model_id = 7
    when 3900001 .. 3922941
      model_id = 8
    when 3930001 .. 3981500
      model_id = 9
    when 1550001 .. 1553252
      model_id = 10
    when 1553253 .. 1554575
      model_id = 11
    when 3560001 .. 3561938
      model_id = 12
    when 1580001 .. 1588670
      model_id = 13
    when 1557001 .. 1558682
      model_id = 14
    when 3500001 .. 3550000
      model_id = 15
    when 3580001 .. 3582437
      model_id = 16
    when 4100001 .. 4130814
      model_id = 17
    when 3570001 .. 3570100
      model_id = 18
    when 1600001 .. 1650000
      model_id = 19
    when 2600001 .. 2634875
      model_id = 20
    when 2634876 .. 2650000
      model_id = 21
    when 3600001 .. 3652610
      model_id = 22
    when 3660001 .. 3700000
      model_id = 23
    when 3750001 .. 3754244
      model_id = 24
    when 1650001 .. 1653979
      model_id = 25
    when 1653980 .. 1660000
      model_id = 26
    when 2550001 .. 2551473
      model_id = 27
    when 4200001 .. 4203288
      model_id = 28
    when 2500001 .. 2507130
      model_id = 29
    when 2507131 .. 2513880
      model_id = 30
    when 4250001 .. 4255109
      model_id = 31
    when 2520001 .. 2520993
      model_id = 32
    when 2520994 .. 2522160
      model_id = 33
    when 4270001 .. 4271240
      model_id = 34
    when 1680001 .. 1696450
      model_id = 35
    when 2790001 .. 2790200
      model_id = 36
    when 2795001 .. 2796200
      model_id = 37
    when 3590001 .. 3590763
      model_id = 38
    when 2791001 .. 2791260
      model_id = 39
    when 3595001 .. 3595094
      model_id = 40
    when 2700001 .. 2720114
      model_id = 41
    when 2730001 .. 2737460
      model_id = 42
    when 2750001 .. 2752447
      model_id = 43
    when 2770001 .. 2771233
      model_id = 44
    when 4290001 .. 4291672
      model_id = 45
    when 3300001 .. 3304379
      model_id = 46
    when 3550001 .. 3553099
      model_id = 47
    when 3410001 .. 3410976
      model_id = 48
    when 3350001 .. 3360264
      model_id = 49
    when 3460001 .. 3462840
      model_id = 50
    when 3440001 .. 3441537
      model_id = 51
    when 3480001 .. 3480339
      model_id = 52
    when 3400001 .. 3400989
      model_id = 53
    when 3420001 .. 3425059
      model_id = 54
    when 3430001 .. 3430724
      model_id = 55
    when 1560001 .. 1572930
      model_id = 56
    when 1572931 .. 1573162
      model_id = 57
    when 1660001 .. 1680000
      model_id = 58
    when 2570001 .. 2572069
      model_id = 59
    when 2572070 .. 2593704
      model_id = 60
    when 4220001 .. 4230601
      model_id = 61
    when 2360001 .. 2367750
      model_id = 62
    when 2370001 .. 2380000
      model_id = 63
    when 2740001 .. 2745584
      model_id = 64
    when 2530001 .. 2532124
      model_id = 65
    when 2532125 .. 2534861
      model_id = 66
    when 4280001 .. 4283429
      model_id = 67
    when 2380001 .. 2382692
      model_id = 68
    when 2390001 .. 2393292
      model_id = 69
    when 2760001 .. 2764521
      model_id = 70
    when 2780001 .. 2782928
      model_id = 71
    end
    
    if model_id > 0
      Model.find_by_model_id(model_id)
    else
      nil
    end
  end
  
end