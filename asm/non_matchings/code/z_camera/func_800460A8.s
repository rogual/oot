.rdata
glabel D_8013912C
    .asciz "%f (%f %f %f) %f\n"
    .balign 4

.late_rodata
glabel D_80139E20
    .float 0.01

glabel D_80139E24
    .float 0.01

glabel D_80139E28
    .float 0.01

glabel D_80139E2C
    .float 0.01

glabel D_80139E30
    .float 0.2

glabel D_80139E34
    .float -0.1

glabel D_80139E38
    .float 0.01

glabel D_80139E3C
    .float 0.1

glabel D_80139E40
    .float 0.017453293 # pi / 180

glabel D_80139E44
    .float 0.4

glabel D_80139E48
    .float 0.017453293 # pi / 180

glabel D_80139E4C
    .float 0.01

glabel D_80139E50
    .float 0.1

glabel D_80139E54
    .float 0.01

glabel D_80139E58
    .float 0.2

.text
glabel func_800460A8
/* ABD248 800460A8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* ABD24C 800460AC AFB00040 */  sw    $s0, 0x40($sp)
/* ABD250 800460B0 00808025 */  move  $s0, $a0
/* ABD254 800460B4 AFBF0044 */  sw    $ra, 0x44($sp)
/* ABD258 800460B8 F7B40038 */  sdc1  $f20, 0x38($sp)
/* ABD25C 800460BC AFA500AC */  sw    $a1, 0xac($sp)
/* ABD260 800460C0 AFA600B0 */  sw    $a2, 0xb0($sp)
/* ABD264 800460C4 AFA700B4 */  sw    $a3, 0xb4($sp)
/* ABD268 800460C8 0C00B721 */  jal   Player_GetCameraYOffset
/* ABD26C 800460CC 8C840090 */   lw    $a0, 0x90($a0)
/* ABD270 800460D0 C7A400B4 */  lwc1  $f4, 0xb4($sp)
/* ABD274 800460D4 44801000 */  mtc1  $zero, $f2
/* ABD278 800460D8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD27C 800460DC 46040180 */  add.s $f6, $f0, $f4
/* ABD280 800460E0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD284 800460E4 E7A20098 */  swc1  $f2, 0x98($sp)
/* ABD288 800460E8 E7A200A0 */  swc1  $f2, 0xa0($sp)
/* ABD28C 800460EC E7A6009C */  swc1  $f6, 0x9c($sp)
/* ABD290 800460F0 844E02EC */  lh    $t6, 0x2ec($v0)
/* ABD294 800460F4 87AF00C6 */  lh    $t7, 0xc6($sp)
/* ABD298 800460F8 46000506 */  mov.s $f20, $f0
/* ABD29C 800460FC 11C00010 */  beqz  $t6, .L80046140
/* ABD2A0 80046100 31F80001 */   andi  $t8, $t7, 1
/* ABD2A4 80046104 5300000F */  beql  $t8, $zero, .L80046144
/* ABD2A8 80046108 26020094 */   addiu $v0, $s0, 0x94
/* ABD2AC 8004610C 844801A6 */  lh    $t0, 0x1a6($v0)
/* ABD2B0 80046110 8FB900AC */  lw    $t9, 0xac($sp)
/* ABD2B4 80046114 26040108 */  addiu $a0, $s0, 0x108
/* ABD2B8 80046118 44884000 */  mtc1  $t0, $f8
/* ABD2BC 8004611C 860500A2 */  lh    $a1, 0xa2($s0)
/* ABD2C0 80046120 87260006 */  lh    $a2, 6($t9)
/* ABD2C4 80046124 46804220 */  cvt.s.w $f8, $f8
/* ABD2C8 80046128 44074000 */  mfc1  $a3, $f8
/* ABD2CC 8004612C 0C0115C5 */  jal   func_80045714
/* ABD2D0 80046130 00000000 */   nop   
/* ABD2D4 80046134 C7AA009C */  lwc1  $f10, 0x9c($sp)
/* ABD2D8 80046138 46005101 */  sub.s $f4, $f10, $f0
/* ABD2DC 8004613C E7A4009C */  swc1  $f4, 0x9c($sp)
.L80046140:
/* ABD2E0 80046140 26020094 */  addiu $v0, $s0, 0x94
.L80046144:
/* ABD2E4 80046144 8C4A0000 */  lw    $t2, ($v0)
/* ABD2E8 80046148 27A5008C */  addiu $a1, $sp, 0x8c
/* ABD2EC 8004614C ACAA0000 */  sw    $t2, ($a1)
/* ABD2F0 80046150 8C490004 */  lw    $t1, 4($v0)
/* ABD2F4 80046154 ACA90004 */  sw    $t1, 4($a1)
/* ABD2F8 80046158 8C4A0008 */  lw    $t2, 8($v0)
/* ABD2FC 8004615C ACAA0008 */  sw    $t2, 8($a1)
/* ABD300 80046160 C7A60090 */  lwc1  $f6, 0x90($sp)
/* ABD304 80046164 AFA20050 */  sw    $v0, 0x50($sp)
/* ABD308 80046168 8FA600B0 */  lw    $a2, 0xb0($sp)
/* ABD30C 8004616C 46143200 */  add.s $f8, $f6, $f20
/* ABD310 80046170 8FA400C0 */  lw    $a0, 0xc0($sp)
/* ABD314 80046174 0C01F124 */  jal   func_8007C490
/* ABD318 80046178 E7A80090 */   swc1  $f8, 0x90($sp)
/* ABD31C 8004617C 8FAC00C0 */  lw    $t4, 0xc0($sp)
/* ABD320 80046180 27AB0074 */  addiu $t3, $sp, 0x74
/* ABD324 80046184 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ABD328 80046188 8D8E0000 */  lw    $t6, ($t4)
/* ABD32C 8004618C AD6E0000 */  sw    $t6, ($t3)
/* ABD330 80046190 8D8D0004 */  lw    $t5, 4($t4)
/* ABD334 80046194 AD6D0004 */  sw    $t5, 4($t3)
/* ABD338 80046198 C7A40074 */  lwc1  $f4, 0x74($sp)
/* ABD33C 8004619C C7AA00B8 */  lwc1  $f10, 0xb8($sp)
/* ABD340 800461A0 8FB90050 */  lw    $t9, 0x50($sp)
/* ABD344 800461A4 4604503C */  c.lt.s $f10, $f4
/* ABD348 800461A8 00000000 */  nop   
/* ABD34C 800461AC 4502000E */  bc1fl .L800461E8
/* ABD350 800461B0 C72A0004 */   lwc1  $f10, 4($t9)
/* ABD354 800461B4 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ABD358 800461B8 3C018014 */  lui   $at, %hi(D_80139E20)
/* ABD35C 800461BC C42A9E20 */  lwc1  $f10, %lo(D_80139E20)($at)
/* ABD360 800461C0 85F801E0 */  lh    $t8, 0x1e0($t7)
/* ABD364 800461C4 44983000 */  mtc1  $t8, $f6
/* ABD368 800461C8 00000000 */  nop   
/* ABD36C 800461CC 46803220 */  cvt.s.w $f8, $f6
/* ABD370 800461D0 460A4182 */  mul.s $f6, $f8, $f10
/* ABD374 800461D4 00000000 */  nop   
/* ABD378 800461D8 46043202 */  mul.s $f8, $f6, $f4
/* ABD37C 800461DC 10000024 */  b     .L80046270
/* ABD380 800461E0 E7A80074 */   swc1  $f8, 0x74($sp)
/* ABD384 800461E4 C72A0004 */  lwc1  $f10, 4($t9)
.L800461E8:
/* ABD388 800461E8 C6060104 */  lwc1  $f6, 0x104($s0)
/* ABD38C 800461EC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD390 800461F0 44817000 */  mtc1  $at, $f14
/* ABD394 800461F4 46065101 */  sub.s $f4, $f10, $f6
/* ABD398 800461F8 0C01F02A */  jal   func_8007C0A8
/* ABD39C 800461FC 46142303 */   div.s $f12, $f4, $f20
/* ABD3A0 80046200 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD3A4 80046204 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD3A8 80046208 3C018014 */  lui   $at, %hi(D_80139E24)
/* ABD3AC 8004620C C4269E24 */  lwc1  $f6, %lo(D_80139E24)($at)
/* ABD3B0 80046210 844801E2 */  lh    $t0, 0x1e2($v0)
/* ABD3B4 80046214 844901E0 */  lh    $t1, 0x1e0($v0)
/* ABD3B8 80046218 3C018014 */  lui   $at, %hi(D_80139E28)
/* ABD3BC 8004621C 44884000 */  mtc1  $t0, $f8
/* ABD3C0 80046220 44892000 */  mtc1  $t1, $f4
/* ABD3C4 80046224 468042A0 */  cvt.s.w $f10, $f8
/* ABD3C8 80046228 46802220 */  cvt.s.w $f8, $f4
/* ABD3CC 8004622C 46065082 */  mul.s $f2, $f10, $f6
/* ABD3D0 80046230 C42A9E28 */  lwc1  $f10, %lo(D_80139E28)($at)
/* ABD3D4 80046234 460A4182 */  mul.s $f6, $f8, $f10
/* ABD3D8 80046238 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ABD3DC 8004623C 46061101 */  sub.s $f4, $f2, $f6
/* ABD3E0 80046240 C7A600B8 */  lwc1  $f6, 0xb8($sp)
/* ABD3E4 80046244 46082282 */  mul.s $f10, $f4, $f8
/* ABD3E8 80046248 46064103 */  div.s $f4, $f8, $f6
/* ABD3EC 8004624C 46045182 */  mul.s $f6, $f10, $f4
/* ABD3F0 80046250 00000000 */  nop   
/* ABD3F4 80046254 46024282 */  mul.s $f10, $f8, $f2
/* ABD3F8 80046258 46065101 */  sub.s $f4, $f10, $f6
/* ABD3FC 8004625C 46002202 */  mul.s $f8, $f4, $f0
/* ABD400 80046260 E7A40074 */  swc1  $f4, 0x74($sp)
/* ABD404 80046264 46004282 */  mul.s $f10, $f8, $f0
/* ABD408 80046268 460A2181 */  sub.s $f6, $f4, $f10
/* ABD40C 8004626C E7A60074 */  swc1  $f6, 0x74($sp)
.L80046270:
/* ABD410 80046270 87A300C6 */  lh    $v1, 0xc6($sp)
/* ABD414 80046274 3C018014 */  lui   $at, %hi(D_80139E2C)
/* ABD418 80046278 27A40080 */  addiu $a0, $sp, 0x80
/* ABD41C 8004627C 30630080 */  andi  $v1, $v1, 0x80
/* ABD420 80046280 10600009 */  beqz  $v1, .L800462A8
/* ABD424 80046284 27A50074 */   addiu $a1, $sp, 0x74
/* ABD428 80046288 C4209E2C */  lwc1  $f0, %lo(D_80139E2C)($at)
/* ABD42C 8004628C 3C018014 */  lui   $at, %hi(D_80139E30)
/* ABD430 80046290 C4249E30 */  lwc1  $f4, %lo(D_80139E30)($at)
/* ABD434 80046294 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ABD438 80046298 46044282 */  mul.s $f10, $f8, $f4
/* ABD43C 8004629C E7AA0074 */  swc1  $f10, 0x74($sp)
/* ABD440 800462A0 E60000CC */  swc1  $f0, 0xcc($s0)
/* ABD444 800462A4 E60000D0 */  swc1  $f0, 0xd0($s0)
.L800462A8:
/* ABD448 800462A8 0C01F097 */  jal   func_8007C25C
/* ABD44C 800462AC AFA3004C */   sw    $v1, 0x4c($sp)
/* ABD450 800462B0 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* ABD454 800462B4 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* ABD458 800462B8 8FA3004C */  lw    $v1, 0x4c($sp)
/* ABD45C 800462BC C7A60074 */  lwc1  $f6, 0x74($sp)
/* ABD460 800462C0 854B0306 */  lh    $t3, 0x306($t2)
/* ABD464 800462C4 C7A800B8 */  lwc1  $f8, 0xb8($sp)
/* ABD468 800462C8 51600017 */  beql  $t3, $zero, .L80046328
/* ABD46C 800462CC C7A60098 */   lwc1  $f6, 0x98($sp)
/* ABD470 800462D0 46083103 */  div.s $f4, $f6, $f8
/* ABD474 800462D4 C7A60080 */  lwc1  $f6, 0x80($sp)
/* ABD478 800462D8 3C048014 */  lui   $a0, %hi(D_8013912C) # $a0, 0x8014
/* ABD47C 800462DC 2484912C */  addiu $a0, %lo(D_8013912C) # addiu $a0, $a0, -0x6ed4
/* ABD480 800462E0 46003221 */  cvt.d.s $f8, $f6
/* ABD484 800462E4 C7A60088 */  lwc1  $f6, 0x88($sp)
/* ABD488 800462E8 F7A80010 */  sdc1  $f8, 0x10($sp)
/* ABD48C 800462EC 46003221 */  cvt.d.s $f8, $f6
/* ABD490 800462F0 F7A80020 */  sdc1  $f8, 0x20($sp)
/* ABD494 800462F4 460022A1 */  cvt.d.s $f10, $f4
/* ABD498 800462F8 C7A40084 */  lwc1  $f4, 0x84($sp)
/* ABD49C 800462FC 44075000 */  mfc1  $a3, $f10
/* ABD4A0 80046300 44065800 */  mfc1  $a2, $f11
/* ABD4A4 80046304 460022A1 */  cvt.d.s $f10, $f4
/* ABD4A8 80046308 F7AA0018 */  sdc1  $f10, 0x18($sp)
/* ABD4AC 8004630C C6040100 */  lwc1  $f4, 0x100($s0)
/* ABD4B0 80046310 AFA3004C */  sw    $v1, 0x4c($sp)
/* ABD4B4 80046314 460022A1 */  cvt.d.s $f10, $f4
/* ABD4B8 80046318 0C00084C */  jal   osSyncPrintf
/* ABD4BC 8004631C F7AA0028 */   sdc1  $f10, 0x28($sp)
/* ABD4C0 80046320 8FA3004C */  lw    $v1, 0x4c($sp)
/* ABD4C4 80046324 C7A60098 */  lwc1  $f6, 0x98($sp)
.L80046328:
/* ABD4C8 80046328 C7A80080 */  lwc1  $f8, 0x80($sp)
/* ABD4CC 8004632C C7AA009C */  lwc1  $f10, 0x9c($sp)
/* ABD4D0 80046330 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* ABD4D4 80046334 46083100 */  add.s $f4, $f6, $f8
/* ABD4D8 80046338 C7A60084 */  lwc1  $f6, 0x84($sp)
/* ABD4DC 8004633C 46065200 */  add.s $f8, $f10, $f6
/* ABD4E0 80046340 E7A40098 */  swc1  $f4, 0x98($sp)
/* ABD4E4 80046344 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* ABD4E8 80046348 C7AA0088 */  lwc1  $f10, 0x88($sp)
/* ABD4EC 8004634C E7A8009C */  swc1  $f8, 0x9c($sp)
/* ABD4F0 80046350 460A2180 */  add.s $f6, $f4, $f10
/* ABD4F4 80046354 E7A600A0 */  swc1  $f6, 0xa0($sp)
/* ABD4F8 80046358 C6040104 */  lwc1  $f4, 0x104($s0)
/* ABD4FC 8004635C C6080098 */  lwc1  $f8, 0x98($s0)
/* ABD500 80046360 46044032 */  c.eq.s $f8, $f4
/* ABD504 80046364 00000000 */  nop   
/* ABD508 80046368 4501000D */  bc1t  .L800463A0
/* ABD50C 8004636C 00000000 */   nop   
/* ABD510 80046370 8E020090 */  lw    $v0, 0x90($s0)
/* ABD514 80046374 3C018014 */  lui   $at, %hi(D_80139E34)
/* ABD518 80046378 C42A9E34 */  lwc1  $f10, %lo(D_80139E34)($at)
/* ABD51C 8004637C C446006C */  lwc1  $f6, 0x6c($v0)
/* ABD520 80046380 4606503C */  c.lt.s $f10, $f6
/* ABD524 80046384 00000000 */  nop   
/* ABD528 80046388 45010005 */  bc1t  .L800463A0
/* ABD52C 8004638C 00000000 */   nop   
/* ABD530 80046390 8C4C067C */  lw    $t4, 0x67c($v0)
/* ABD534 80046394 000C6A80 */  sll   $t5, $t4, 0xa
/* ABD538 80046398 05A10024 */  bgez  $t5, .L8004642C
/* ABD53C 8004639C 00000000 */   nop   
.L800463A0:
/* ABD540 800463A0 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* ABD544 800463A4 3C018014 */  lui   $at, %hi(D_80139E38)
/* ABD548 800463A8 C42A9E38 */  lwc1  $f10, %lo(D_80139E38)($at)
/* ABD54C 800463AC 871901EA */  lh    $t9, 0x1ea($t8)
/* ABD550 800463B0 8FAE0050 */  lw    $t6, 0x50($sp)
/* ABD554 800463B4 8FAF00BC */  lw    $t7, 0xbc($sp)
/* ABD558 800463B8 44994000 */  mtc1  $t9, $f8
/* ABD55C 800463BC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABD560 800463C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABD564 800463C4 46804120 */  cvt.s.w $f4, $f8
/* ABD568 800463C8 C5CC0004 */  lwc1  $f12, 4($t6)
/* ABD56C 800463CC C5EE0000 */  lwc1  $f14, ($t7)
/* ABD570 800463D0 460A2182 */  mul.s $f6, $f4, $f10
/* ABD574 800463D4 44063000 */  mfc1  $a2, $f6
/* ABD578 800463D8 0C010E27 */  jal   func_8004389C
/* ABD57C 800463DC 00000000 */   nop   
/* ABD580 800463E0 8FA800BC */  lw    $t0, 0xbc($sp)
/* ABD584 800463E4 3C018014 */  lui   $at, %hi(D_80139E3C)
/* ABD588 800463E8 27A40098 */  addiu $a0, $sp, 0x98
/* ABD58C 800463EC E5000000 */  swc1  $f0, ($t0)
/* ABD590 800463F0 8FA90050 */  lw    $t1, 0x50($sp)
/* ABD594 800463F4 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* ABD598 800463F8 C4269E3C */  lwc1  $f6, %lo(D_80139E3C)($at)
/* ABD59C 800463FC C5280004 */  lwc1  $f8, 4($t1)
/* ABD5A0 80046400 260500E4 */  addiu $a1, $s0, 0xe4
/* ABD5A4 80046404 46004501 */  sub.s $f20, $f8, $f0
/* ABD5A8 80046408 46142281 */  sub.s $f10, $f4, $f20
/* ABD5AC 8004640C E7AA009C */  swc1  $f10, 0x9c($sp)
/* ABD5B0 80046410 8E0700CC */  lw    $a3, 0xcc($s0)
/* ABD5B4 80046414 8E0600D0 */  lw    $a2, 0xd0($s0)
/* ABD5B8 80046418 0C010E8F */  jal   func_80043A3C
/* ABD5BC 8004641C E7A60010 */   swc1  $f6, 0x10($sp)
/* ABD5C0 80046420 260A0050 */  addiu $t2, $s0, 0x50
/* ABD5C4 80046424 10000097 */  b     .L80046684
/* ABD5C8 80046428 AFAA0054 */   sw    $t2, 0x54($sp)
.L8004642C:
/* ABD5CC 8004642C 14600036 */  bnez  $v1, .L80046508
/* ABD5D0 80046430 8FAD0050 */   lw    $t5, 0x50($sp)
/* ABD5D4 80046434 8FAB0050 */  lw    $t3, 0x50($sp)
/* ABD5D8 80046438 8FAC00BC */  lw    $t4, 0xbc($sp)
/* ABD5DC 8004643C 26040050 */  addiu $a0, $s0, 0x50
/* ABD5E0 80046440 C5680004 */  lwc1  $f8, 4($t3)
/* ABD5E4 80046444 C5840000 */  lwc1  $f4, ($t4)
/* ABD5E8 80046448 AFA40054 */  sw    $a0, 0x54($sp)
/* ABD5EC 8004644C 2605005C */  addiu $a1, $s0, 0x5c
/* ABD5F0 80046450 0C01F00A */  jal   func_8007C028
/* ABD5F4 80046454 46044501 */   sub.s $f20, $f8, $f4
/* ABD5F8 80046458 4600A306 */  mov.s $f12, $f20
/* ABD5FC 8004645C 46000386 */  mov.s $f14, $f0
/* ABD600 80046460 0C03F494 */  jal   Math_atan2f
/* ABD604 80046464 E7A00068 */   swc1  $f0, 0x68($sp)
/* ABD608 80046468 3C018014 */  lui   $at, %hi(D_80139E40)
/* ABD60C 8004646C C4329E40 */  lwc1  $f18, %lo(D_80139E40)($at)
/* ABD610 80046470 3C018014 */  lui   $at, %hi(D_80139E44)
/* ABD614 80046474 C4269E44 */  lwc1  $f6, %lo(D_80139E44)($at)
/* ABD618 80046478 C60A00FC */  lwc1  $f10, 0xfc($s0)
/* ABD61C 8004647C 46065202 */  mul.s $f8, $f10, $f6
/* ABD620 80046480 00000000 */  nop   
/* ABD624 80046484 46124302 */  mul.s $f12, $f8, $f18
/* ABD628 80046488 0C03F3A0 */  jal   Math_tanf
/* ABD62C 8004648C 00000000 */   nop   
/* ABD630 80046490 C7B00068 */  lwc1  $f16, 0x68($sp)
/* ABD634 80046494 8FA200BC */  lw    $v0, 0xbc($sp)
/* ABD638 80046498 46100082 */  mul.s $f2, $f0, $f16
/* ABD63C 8004649C 4614103C */  c.lt.s $f2, $f20
/* ABD640 800464A0 00000000 */  nop   
/* ABD644 800464A4 45020008 */  bc1fl .L800464C8
/* ABD648 800464A8 46001007 */   neg.s $f0, $f2
/* ABD64C 800464AC 4602A281 */  sub.s $f10, $f20, $f2
/* ABD650 800464B0 C4440000 */  lwc1  $f4, ($v0)
/* ABD654 800464B4 46001506 */  mov.s $f20, $f2
/* ABD658 800464B8 460A2180 */  add.s $f6, $f4, $f10
/* ABD65C 800464BC 1000000C */  b     .L800464F0
/* ABD660 800464C0 E4460000 */   swc1  $f6, ($v0)
/* ABD664 800464C4 46001007 */  neg.s $f0, $f2
.L800464C8:
/* ABD668 800464C8 8FA200BC */  lw    $v0, 0xbc($sp)
/* ABD66C 800464CC 4600A03C */  c.lt.s $f20, $f0
/* ABD670 800464D0 00000000 */  nop   
/* ABD674 800464D4 45020007 */  bc1fl .L800464F4
/* ABD678 800464D8 C7A6009C */   lwc1  $f6, 0x9c($sp)
/* ABD67C 800464DC 4602A100 */  add.s $f4, $f20, $f2
/* ABD680 800464E0 C4480000 */  lwc1  $f8, ($v0)
/* ABD684 800464E4 46000506 */  mov.s $f20, $f0
/* ABD688 800464E8 46044280 */  add.s $f10, $f8, $f4
/* ABD68C 800464EC E44A0000 */  swc1  $f10, ($v0)
.L800464F0:
/* ABD690 800464F0 C7A6009C */  lwc1  $f6, 0x9c($sp)
.L800464F4:
/* ABD694 800464F4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD698 800464F8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD69C 800464FC 46143201 */  sub.s $f8, $f6, $f20
/* ABD6A0 80046500 1000003A */  b     .L800465EC
/* ABD6A4 80046504 E7A8009C */   swc1  $f8, 0x9c($sp)
.L80046508:
/* ABD6A8 80046508 8FAE00BC */  lw    $t6, 0xbc($sp)
/* ABD6AC 8004650C C5A40004 */  lwc1  $f4, 4($t5)
/* ABD6B0 80046510 26040050 */  addiu $a0, $s0, 0x50
/* ABD6B4 80046514 C5CA0000 */  lwc1  $f10, ($t6)
/* ABD6B8 80046518 AFA40054 */  sw    $a0, 0x54($sp)
/* ABD6BC 8004651C 2605005C */  addiu $a1, $s0, 0x5c
/* ABD6C0 80046520 0C01F00A */  jal   func_8007C028
/* ABD6C4 80046524 460A2501 */   sub.s $f20, $f4, $f10
/* ABD6C8 80046528 4600A306 */  mov.s $f12, $f20
/* ABD6CC 8004652C 0C03F494 */  jal   Math_atan2f
/* ABD6D0 80046530 46000386 */   mov.s $f14, $f0
/* ABD6D4 80046534 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD6D8 80046538 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD6DC 8004653C 3C018014 */  lui   $at, %hi(D_80139E48)
/* ABD6E0 80046540 C4329E48 */  lwc1  $f18, %lo(D_80139E48)($at)
/* ABD6E4 80046544 845801D4 */  lh    $t8, 0x1d4($v0)
/* ABD6E8 80046548 46000086 */  mov.s $f2, $f0
/* ABD6EC 8004654C 44983000 */  mtc1  $t8, $f6
/* ABD6F0 80046550 00000000 */  nop   
/* ABD6F4 80046554 46803220 */  cvt.s.w $f8, $f6
/* ABD6F8 80046558 46124382 */  mul.s $f14, $f8, $f18
/* ABD6FC 8004655C 4600703C */  c.lt.s $f14, $f0
/* ABD700 80046560 00000000 */  nop   
/* ABD704 80046564 4502000A */  bc1fl .L80046590
/* ABD708 80046568 845901D6 */   lh    $t9, 0x1d6($v0)
/* ABD70C 8004656C 0C0400A4 */  jal   sinf
/* ABD710 80046570 460E1301 */   sub.s $f12, $f2, $f14
/* ABD714 80046574 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD718 80046578 44812000 */  mtc1  $at, $f4
/* ABD71C 8004657C 3C028016 */  lui   $v0, %hi(gGameInfo)
/* ABD720 80046580 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD724 80046584 10000015 */  b     .L800465DC
/* ABD728 80046588 46002401 */   sub.s $f16, $f4, $f0
/* ABD72C 8004658C 845901D6 */  lh    $t9, 0x1d6($v0)
.L80046590:
/* ABD730 80046590 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD734 80046594 44995000 */  mtc1  $t9, $f10
/* ABD738 80046598 00000000 */  nop   
/* ABD73C 8004659C 468051A0 */  cvt.s.w $f6, $f10
/* ABD740 800465A0 46123382 */  mul.s $f14, $f6, $f18
/* ABD744 800465A4 460E003C */  c.lt.s $f0, $f14
/* ABD748 800465A8 00000000 */  nop   
/* ABD74C 800465AC 4502000A */  bc1fl .L800465D8
/* ABD750 800465B0 44818000 */   mtc1  $at, $f16
/* ABD754 800465B4 0C0400A4 */  jal   sinf
/* ABD758 800465B8 46027301 */   sub.s $f12, $f14, $f2
/* ABD75C 800465BC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD760 800465C0 44814000 */  mtc1  $at, $f8
/* ABD764 800465C4 3C028016 */  lui   $v0, %hi(gGameInfo)
/* ABD768 800465C8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD76C 800465CC 10000003 */  b     .L800465DC
/* ABD770 800465D0 46004401 */   sub.s $f16, $f8, $f0
/* ABD774 800465D4 44818000 */  mtc1  $at, $f16
.L800465D8:
/* ABD778 800465D8 00000000 */  nop   
.L800465DC:
/* ABD77C 800465DC 4610A282 */  mul.s $f10, $f20, $f16
/* ABD780 800465E0 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* ABD784 800465E4 460A2181 */  sub.s $f6, $f4, $f10
/* ABD788 800465E8 E7A6009C */  swc1  $f6, 0x9c($sp)
.L800465EC:
/* ABD78C 800465EC 844801CE */  lh    $t0, 0x1ce($v0)
/* ABD790 800465F0 844901D0 */  lh    $t1, 0x1d0($v0)
/* ABD794 800465F4 3C018014 */  lui   $at, %hi(D_80139E4C)
/* ABD798 800465F8 44884000 */  mtc1  $t0, $f8
/* ABD79C 800465FC 44893000 */  mtc1  $t1, $f6
/* ABD7A0 80046600 C4209E4C */  lwc1  $f0, %lo(D_80139E4C)($at)
/* ABD7A4 80046604 46804120 */  cvt.s.w $f4, $f8
/* ABD7A8 80046608 3C018014 */  lui   $at, %hi(D_80139E50)
/* ABD7AC 8004660C 27A40098 */  addiu $a0, $sp, 0x98
/* ABD7B0 80046610 260500E4 */  addiu $a1, $s0, 0xe4
/* ABD7B4 80046614 46803220 */  cvt.s.w $f8, $f6
/* ABD7B8 80046618 46002282 */  mul.s $f10, $f4, $f0
/* ABD7BC 8004661C 00000000 */  nop   
/* ABD7C0 80046620 46004102 */  mul.s $f4, $f8, $f0
/* ABD7C4 80046624 44065000 */  mfc1  $a2, $f10
/* ABD7C8 80046628 C42A9E50 */  lwc1  $f10, %lo(D_80139E50)($at)
/* ABD7CC 8004662C E7AA0010 */  swc1  $f10, 0x10($sp)
/* ABD7D0 80046630 44072000 */  mfc1  $a3, $f4
/* ABD7D4 80046634 0C010E8F */  jal   func_80043A3C
/* ABD7D8 80046638 00000000 */   nop   
/* ABD7DC 8004663C 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* ABD7E0 80046640 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* ABD7E4 80046644 3C018014 */  lui   $at, %hi(D_80139E54)
/* ABD7E8 80046648 C4209E54 */  lwc1  $f0, %lo(D_80139E54)($at)
/* ABD7EC 8004664C 854B01CE */  lh    $t3, 0x1ce($t2)
/* ABD7F0 80046650 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* ABD7F4 80046654 448B3000 */  mtc1  $t3, $f6
/* ABD7F8 80046658 00000000 */  nop   
/* ABD7FC 8004665C 46803220 */  cvt.s.w $f8, $f6
/* ABD800 80046660 46004102 */  mul.s $f4, $f8, $f0
/* ABD804 80046664 E60400D0 */  swc1  $f4, 0xd0($s0)
/* ABD808 80046668 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* ABD80C 8004666C 858D01D0 */  lh    $t5, 0x1d0($t4)
/* ABD810 80046670 448D5000 */  mtc1  $t5, $f10
/* ABD814 80046674 00000000 */  nop   
/* ABD818 80046678 468051A0 */  cvt.s.w $f6, $f10
/* ABD81C 8004667C 46003202 */  mul.s $f8, $f6, $f0
/* ABD820 80046680 E60800CC */  swc1  $f8, 0xcc($s0)
.L80046684:
/* ABD824 80046684 8FA20050 */  lw    $v0, 0x50($sp)
/* ABD828 80046688 C60A00E4 */  lwc1  $f10, 0xe4($s0)
/* ABD82C 8004668C 3C018014 */  lui   $at, %hi(D_80139E58)
/* ABD830 80046690 C4440000 */  lwc1  $f4, ($v0)
/* ABD834 80046694 27A4008C */  addiu $a0, $sp, 0x8c
/* ABD838 80046698 8FA50054 */  lw    $a1, 0x54($sp)
/* ABD83C 8004669C 460A2180 */  add.s $f6, $f4, $f10
/* ABD840 800466A0 E7A6008C */  swc1  $f6, 0x8c($sp)
/* ABD844 800466A4 C60400E8 */  lwc1  $f4, 0xe8($s0)
/* ABD848 800466A8 C4480004 */  lwc1  $f8, 4($v0)
/* ABD84C 800466AC 46044280 */  add.s $f10, $f8, $f4
/* ABD850 800466B0 E7AA0090 */  swc1  $f10, 0x90($sp)
/* ABD854 800466B4 C60800EC */  lwc1  $f8, 0xec($s0)
/* ABD858 800466B8 C4460008 */  lwc1  $f6, 8($v0)
/* ABD85C 800466BC C42A9E58 */  lwc1  $f10, %lo(D_80139E58)($at)
/* ABD860 800466C0 46083100 */  add.s $f4, $f6, $f8
/* ABD864 800466C4 E7A40094 */  swc1  $f4, 0x94($sp)
/* ABD868 800466C8 C6000100 */  lwc1  $f0, 0x100($s0)
/* ABD86C 800466CC E7AA0010 */  swc1  $f10, 0x10($sp)
/* ABD870 800466D0 44060000 */  mfc1  $a2, $f0
/* ABD874 800466D4 44070000 */  mfc1  $a3, $f0
/* ABD878 800466D8 0C010E8F */  jal   func_80043A3C
/* ABD87C 800466DC 00000000 */   nop   
/* ABD880 800466E0 8FBF0044 */  lw    $ra, 0x44($sp)
/* ABD884 800466E4 D7B40038 */  ldc1  $f20, 0x38($sp)
/* ABD888 800466E8 8FB00040 */  lw    $s0, 0x40($sp)
/* ABD88C 800466EC 27BD00A8 */  addiu $sp, $sp, 0xa8
/* ABD890 800466F0 03E00008 */  jr    $ra
/* ABD894 800466F4 24020001 */   li    $v0, 1

