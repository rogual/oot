glabel func_8084D84C
/* 1B63C 8084D84C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 1B640 8084D850 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 1B644 8084D854 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 1B648 8084D858 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 1B64C 8084D85C 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 1B650 8084D860 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1B654 8084D864 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1B658 8084D868 35CF0020 */  ori     $t7, $t6, 0x0020           ## $t7 = 00000020
/* 1B65C 8084D86C AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 1B660 8084D870 8E070838 */  lw      $a3, 0x0838($s0)           ## 00000838
/* 1B664 8084D874 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1B668 8084D878 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 1B66C 8084D87C 0C212C56 */  jal     func_8084B158              
/* 1B670 8084D880 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B674 8084D884 0C212C00 */  jal     func_8084B000              
/* 1B678 8084D888 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B67C 8084D88C 3C068085 */  lui     $a2, %hi(D_80854444)       ## $a2 = 80850000
/* 1B680 8084D890 24C64444 */  addiu   $a2, $a2, %lo(D_80854444)  ## $a2 = 80854444
/* 1B684 8084D894 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 1B688 8084D898 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B68C 8084D89C 0C20DCD2 */  jal     func_80837348              
/* 1B690 8084D8A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 1B694 8084D8A4 14400031 */  bne     $v0, $zero, .L8084D96C     
/* 1B698 8084D8A8 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 1B69C 8084D8AC 3C068086 */  lui     $a2, %hi(D_80858AB4)       ## $a2 = 80860000
/* 1B6A0 8084D8B0 8CC68AB4 */  lw      $a2, %lo(D_80858AB4)($a2)  
/* 1B6A4 8084D8B4 0C20F44B */  jal     func_8083D12C              
/* 1B6A8 8084D8B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B6AC 8084D8BC 1440002B */  bne     $v0, $zero, .L8084D96C     
/* 1B6B0 8084D8C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B6B4 8084D8C4 8FB8003C */  lw      $t8, 0x003C($sp)           
/* 1B6B8 8084D8C8 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 1B6BC 8084D8CC 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 1B6C0 8084D8D0 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 1B6C4 8084D8D4 0C20DC9A */  jal     func_80837268              
/* 1B6C8 8084D8D8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 1B6CC 8084D8DC C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 1B6D0 8084D8E0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 1B6D4 8084D8E4 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 1B6D8 8084D8E8 87A80032 */  lh      $t0, 0x0032($sp)           
/* 1B6DC 8084D8EC 46062032 */  c.eq.s  $f4, $f6                   
/* 1B6E0 8084D8F0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 1B6E4 8084D8F4 03281823 */  subu    $v1, $t9, $t0              
/* 1B6E8 8084D8F8 00031C00 */  sll     $v1, $v1, 16               
/* 1B6EC 8084D8FC 4501000C */  bc1t    .L8084D930                 
/* 1B6F0 8084D900 00031C03 */  sra     $v1, $v1, 16               
/* 1B6F4 8084D904 04600003 */  bltz    $v1, .L8084D914            
/* 1B6F8 8084D908 00031023 */  subu    $v0, $zero, $v1            
/* 1B6FC 8084D90C 10000001 */  beq     $zero, $zero, .L8084D914   
/* 1B700 8084D910 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8084D914:
/* 1B704 8084D914 28416001 */  slti    $at, $v0, 0x6001           
/* 1B708 8084D918 10200005 */  beq     $at, $zero, .L8084D930     
/* 1B70C 8084D91C 00000000 */  nop
/* 1B710 8084D920 8209014F */  lb      $t1, 0x014F($s0)           ## 0000014F
/* 1B714 8084D924 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1B718 8084D928 15210005 */  bne     $t1, $at, .L8084D940       
/* 1B71C 8084D92C 00000000 */  nop
.L8084D930:
/* 1B720 8084D930 0C20E3C6 */  jal     func_80838F18              
/* 1B724 8084D934 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1B728 8084D938 10000008 */  beq     $zero, $zero, .L8084D95C   
/* 1B72C 8084D93C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084D940:
/* 1B730 8084D940 0C20CF01 */  jal     func_80833C04              
/* 1B734 8084D944 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1B738 8084D948 10400003 */  beq     $v0, $zero, .L8084D958     
/* 1B73C 8084D94C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 1B740 8084D950 0C213573 */  jal     func_8084D5CC              
/* 1B744 8084D954 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
.L8084D958:
/* 1B748 8084D958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084D95C:
/* 1B74C 8084D95C 26050838 */  addiu   $a1, $s0, 0x0838           ## $a1 = 00000838
/* 1B750 8084D960 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 1B754 8084D964 0C21354C */  jal     func_8084D530              
/* 1B758 8084D968 87A70032 */  lh      $a3, 0x0032($sp)           
.L8084D96C:
/* 1B75C 8084D96C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 1B760 8084D970 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 1B764 8084D974 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 1B768 8084D978 03E00008 */  jr      $ra                        
/* 1B76C 8084D97C 00000000 */  nop
