glabel func_80B57AE0
/* 04730 80B57AE0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 04734 80B57AE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 04738 80B57AE8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0473C 80B57AEC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 04740 80B57AF0 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 04744 80B57AF4 848E00B6 */  lh      $t6, 0x00B6($a0)           ## 000000B6
/* 04748 80B57AF8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0474C 80B57AFC 24910348 */  addiu   $s1, $a0, 0x0348           ## $s1 = 00000348
/* 04750 80B57B00 A7AE0042 */  sh      $t6, 0x0042($sp)           
/* 04754 80B57B04 8C8F0314 */  lw      $t7, 0x0314($a0)           ## 00000314
/* 04758 80B57B08 8C880024 */  lw      $t0, 0x0024($a0)           ## 00000024
/* 0475C 80B57B0C A4800344 */  sh      $zero, 0x0344($a0)         ## 00000344
/* 04760 80B57B10 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 04764 80B57B14 AC980314 */  sw      $t8, 0x0314($a0)           ## 00000314
/* 04768 80B57B18 E4800360 */  swc1    $f0, 0x0360($a0)           ## 00000360
/* 0476C 80B57B1C E4800364 */  swc1    $f0, 0x0364($a0)           ## 00000364
/* 04770 80B57B20 E4800368 */  swc1    $f0, 0x0368($a0)           ## 00000368
/* 04774 80B57B24 AE280000 */  sw      $t0, 0x0000($s1)           ## 00000348
/* 04778 80B57B28 8C990028 */  lw      $t9, 0x0028($a0)           ## 00000028
/* 0477C 80B57B2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04780 80B57B30 AE390004 */  sw      $t9, 0x0004($s1)           ## 0000034C
/* 04784 80B57B34 8C88002C */  lw      $t0, 0x002C($a0)           ## 0000002C
/* 04788 80B57B38 AE280008 */  sw      $t0, 0x0008($s1)           ## 00000350
/* 0478C 80B57B3C 0C2D5BEB */  jal     func_80B56FAC              
/* 04790 80B57B40 8E050314 */  lw      $a1, 0x0314($s0)           ## 00000314
/* 04794 80B57B44 10400012 */  beq     $v0, $zero, .L80B57B90     
/* 04798 80B57B48 00000000 */  nop
/* 0479C 80B57B4C 84490000 */  lh      $t1, 0x0000($v0)           ## 00000000
/* 047A0 80B57B50 26030354 */  addiu   $v1, $s0, 0x0354           ## $v1 = 00000354
/* 047A4 80B57B54 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 047A8 80B57B58 00000000 */  nop
/* 047AC 80B57B5C 468021A0 */  cvt.s.w $f6, $f4                   
/* 047B0 80B57B60 E4660000 */  swc1    $f6, 0x0000($v1)           ## 00000354
/* 047B4 80B57B64 844A0002 */  lh      $t2, 0x0002($v0)           ## 00000002
/* 047B8 80B57B68 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 047BC 80B57B6C 00000000 */  nop
/* 047C0 80B57B70 468042A0 */  cvt.s.w $f10, $f8                  
/* 047C4 80B57B74 E46A0004 */  swc1    $f10, 0x0004($v1)          ## 00000358
/* 047C8 80B57B78 844B0004 */  lh      $t3, 0x0004($v0)           ## 00000004
/* 047CC 80B57B7C 448B8000 */  mtc1    $t3, $f16                  ## $f16 = 0.00
/* 047D0 80B57B80 00000000 */  nop
/* 047D4 80B57B84 468084A0 */  cvt.s.w $f18, $f16                 
/* 047D8 80B57B88 10000016 */  beq     $zero, $zero, .L80B57BE4   
/* 047DC 80B57B8C E4720008 */  swc1    $f18, 0x0008($v1)          ## 0000035C
.L80B57B90:
/* 047E0 80B57B90 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 047E4 80B57B94 87A40042 */  lh      $a0, 0x0042($sp)           
/* 047E8 80B57B98 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 047EC 80B57B9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 200.00
/* 047F0 80B57BA0 C6280000 */  lwc1    $f8, 0x0000($s1)           ## 00000348
/* 047F4 80B57BA4 26030354 */  addiu   $v1, $s0, 0x0354           ## $v1 = 00000354
/* 047F8 80B57BA8 46040182 */  mul.s   $f6, $f0, $f4              
/* 047FC 80B57BAC 46083280 */  add.s   $f10, $f6, $f8             
/* 04800 80B57BB0 E46A0000 */  swc1    $f10, 0x0000($v1)          ## 00000354
/* 04804 80B57BB4 C6300004 */  lwc1    $f16, 0x0004($s1)          ## 0000034C
/* 04808 80B57BB8 E4700004 */  swc1    $f16, 0x0004($v1)          ## 00000358
/* 0480C 80B57BBC AFA30020 */  sw      $v1, 0x0020($sp)           
/* 04810 80B57BC0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 04814 80B57BC4 87A40042 */  lh      $a0, 0x0042($sp)           
/* 04818 80B57BC8 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 0481C 80B57BCC 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 04820 80B57BD0 C6260008 */  lwc1    $f6, 0x0008($s1)           ## 00000350
/* 04824 80B57BD4 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 04828 80B57BD8 46120102 */  mul.s   $f4, $f0, $f18             
/* 0482C 80B57BDC 46062200 */  add.s   $f8, $f4, $f6              
/* 04830 80B57BE0 E4680008 */  swc1    $f8, 0x0008($v1)           ## 00000008
.L80B57BE4:
/* 04834 80B57BE4 C46A0000 */  lwc1    $f10, 0x0000($v1)          ## 00000000
/* 04838 80B57BE8 C6300000 */  lwc1    $f16, 0x0000($s1)          ## 00000348
/* 0483C 80B57BEC C4720008 */  lwc1    $f18, 0x0008($v1)          ## 00000008
/* 04840 80B57BF0 C6240008 */  lwc1    $f4, 0x0008($s1)           ## 00000350
/* 04844 80B57BF4 46105081 */  sub.s   $f2, $f10, $f16            
/* 04848 80B57BF8 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 0484C 80B57BFC 8D8CFA90 */  lw      $t4, -0x0570($t4)          ## 8015FA90
/* 04850 80B57C00 46049301 */  sub.s   $f12, $f18, $f4            
/* 04854 80B57C04 46021182 */  mul.s   $f6, $f2, $f2              
/* 04858 80B57C08 858D1460 */  lh      $t5, 0x1460($t4)           ## 80161460
/* 0485C 80B57C0C 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 04860 80B57C10 460C6202 */  mul.s   $f8, $f12, $f12            
/* 04864 80B57C14 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 04868 80B57C18 44819000 */  mtc1    $at, $f18                  ## $f18 = 8.00
/* 0486C 80B57C1C 46805420 */  cvt.s.w $f16, $f10                 
/* 04870 80B57C20 46083000 */  add.s   $f0, $f6, $f8              
/* 04874 80B57C24 46128100 */  add.s   $f4, $f16, $f18            
/* 04878 80B57C28 46000004 */  sqrt.s  $f0, $f0                   
/* 0487C 80B57C2C 46040183 */  div.s   $f6, $f0, $f4              
/* 04880 80B57C30 4600320D */  trunc.w.s $f8, $f6                   
/* 04884 80B57C34 440F4000 */  mfc1    $t7, $f8                   
/* 04888 80B57C38 00000000 */  nop
/* 0488C 80B57C3C A60F0346 */  sh      $t7, 0x0346($s0)           ## 00000346
/* 04890 80B57C40 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 04894 80B57C44 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 04898 80B57C48 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 0489C 80B57C4C 03E00008 */  jr      $ra                        
/* 048A0 80B57C50 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000

