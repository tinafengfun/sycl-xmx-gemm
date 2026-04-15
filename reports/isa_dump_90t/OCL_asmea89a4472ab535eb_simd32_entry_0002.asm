//.kernel _ZTSZN4sycl3_V17handler4fillINS0_3ext6oneapi8bfloat16EEEvPvRKT_mEUlNS0_2idILi1EEEE_
//.platform XE2
//.thread_config numGRF=256, numAcc=8, numSWSB=32
//.options_string "-emitCrossThreadOffR0Reloc -perfmodel -hashmovs 3934889031 716518891 -hashmovs1 0 2 "
//.full_options "-emitLocation -enableCoalesceScalarMoves -samplerHeaderWA -enablePreemptionR0Only -hasRNEandDenorm -noStitchExternFunc -useInlineData -emitCrossThreadOffR0Reloc -abortonspill -TotalGRFNum 256 -abortOnSpill 4 -enableBundleCR 3 -perfmodel -freqBasedSpillCost 8 -freqBasedSpillCostFunc 1 -boundsChecking -presched-ctrl 6 -presched-rp 100 -nodpsendreorder -SBIDDepLoc -PVCSendWARWA -output -binary -dumpcommonisa -dumpcombinedcisa -dumpvisa -printHexFloatInAsm -noverifyCISA -enableHalfLSC -partialInt64 -activeThreadsOnlyBarrier -hashmovs 3934889031 716518891 -hashmovs1 0 2 "
//.instCount 41
//.RA type	LOCAL_ROUND_ROBIN_RA
//.git-hash e4d4ac078f9631183f53140352fbe60ef5ff40c3

//.declare BuiltInR0 (0)  rf=r size=64 type=ud align=32 words (r0.0) IsBuiltin
//.declare  (1)  rf=r size=64 type=ud align=32 words (r2.0) IsBuiltin
//.declare BuiltinA0 (2)  rf=a size=4 type=ud align=1 words (a0.0) IsBuiltin
//.declare BuiltinA0Dot2 (3)  rf=a size=4 type=ud align=1 words (a0.2) IsBuiltin
//.declare BuiltinSR0Dot1 (5)  rf=r size=4 type=ud align=2 words IsBuiltin
//.declare %null (10)  rf=r size=4 type=ud align=2 words
//.declare %local_id_x (13)  rf=r size=4 type=ud align=2 words (r1.8)
//.declare %local_id_y (14)  rf=r size=4 type=ud align=2 words (r1.9)
//.declare %local_size_x (15)  rf=r size=4 type=ud align=2 words (r1.4)
//.declare %local_size_y (16)  rf=r size=4 type=ud align=2 words (r1.5)
//.declare %group_id_x (17)  rf=r size=4 type=ud align=2 words (r0.1)
//.declare %group_id_y (18)  rf=r size=4 type=ud align=2 words (r0.6)
//.declare %group_id_z (19)  rf=r size=4 type=ud align=2 words (r0.7)
//.declare %group_count_x (20)  rf=r size=4 type=ud align=2 words (r1.6)
//.declare %group_count_y (21)  rf=r size=4 type=ud align=2 words (r1.7)
//.declare %tsc (22)  rf=r size=20 type=ud align=2 words
//.declare %arg (23)  rf=r size=0 type=ud align=32 words (r26.0)
//.declare %retval (24)  rf=r size=0 type=ud align=32 words (r26.0) Output
//.declare %sp (25)  rf=r size=8 type=uq align=4 words (r255.3)
//.declare %fp (26)  rf=r size=8 type=uq align=4 words (r255.2)
//.declare %sr0 (27)  rf=r size=16 type=ud align=2 words
//.declare %cr0 (28)  rf=r size=12 type=ud align=2 words
//.declare %ce0 (29)  rf=r size=4 type=ud align=2 words
//.declare %dbg0 (30)  rf=r size=8 type=ud align=2 words
//.declare implBufPtr (32)  rf=r size=8 type=uq align=4 words (r254.0)
//.declare localIdBufPtr (33)  rf=r size=8 type=uq align=4 words (r254.3)
//.declare %msg0 (34)  rf=r size=12 type=ud align=2 words
//.declare %null (35)  rf=r size=4 type=ud align=2 words
//.declare V0033 (43)  rf=r size=64 type=d alias=+0 align=32 words (r2.0)
//.declare V0034 (44)  rf=r size=8 type=uq align=4 words (r4.3)
//.declare V0036 (46)  rf=r size=32 type=d alias=+0 align=32 words (r2.0)
//.declare V0037 (47)  rf=r size=12 type=d align=2 words (r4.0)
//.declare V0038 (48)  rf=r size=12 type=d align=2 words (r4.3)
//.declare V0039 (49)  rf=r size=64 type=w align=32 words (r1.0)
//.declare V0040 (50)  rf=r size=64 type=w align=32 words (r2.0)
//.declare V0041 (51)  rf=r size=64 type=w align=32 words (r3.0)
//.declare V0042 (52)  rf=r size=8 type=uq align=4 words (r5.1)
//.declare V0043 (53)  rf=r size=2 type=w align=2 words (r5.0)
//.declare V0049 (59)  rf=r size=12 type=ud alias=V0038+0 align=2 words (r4.3)
//.declare V0050 (60)  rf=r size=32 type=ud alias=V0036+0 align=16 words (r2.0)
//.declare V0051 (61)  rf=r size=4 type=d align=32 words (r3.0)
//.declare V0055 (65)  rf=r size=8 type=q align=32 words (r6.0)
//.declare V0056 (66)  rf=r size=8 type=d alias=V0055+0 align=4 words (r6.0)
//.declare V0058 (68)  rf=r size=64 type=uw alias=V0039+0 align=32 words (r1.0)
//.declare V0061 (71)  rf=r size=12 type=ud alias=V0037+0 align=2 words (r4.0)
//.declare V0063 (73)  rf=r size=8 type=q alias=V0034+0 align=4 words (r4.3)
//.declare V0065 (75)  rf=r size=256 type=q align=32 words (r7.0)
//.declare V0066 (76)  rf=r size=256 type=uq alias=V0065+0 align=32 words (r7.0)
//.declare V0067 (77)  rf=r size=2 type=uw alias=V0043+0 align=2 words (r5.0)
//.declare V0068 (78)  rf=r size=128 type=ud align=32 words (r11.0)
//.declare  (79)  rf=r size=64 type=ud align=32 words (r255.0)
//.declare  (80)  rf=r size=128 type=uw align=32 words (r13.0)
//.declare  (81)  rf=r size=128 type=uw align=32 words (r15.0)
//.declare  (84)  rf=r size=128 type=q align=32 words (r17.0)
//.declare  (85)  rf=r size=128 type=q align=32 words (r19.0)
//.declare  (86)  rf=r size=128 type=q align=32 words (r21.0)
//.declare  (87)  rf=r size=128 type=q align=32 words (r23.0)
//.declare  (88)  rf=r size=128 type=q align=32 words (r25.0)
//.declare  (89)  rf=r size=128 type=q align=32 words (r27.0)
//.declare r0 (90)  rf=r size=64 type=ud align=32 words (r0.0)
//.declare rtmp (91)  rf=r size=64 type=ud align=32 words (r255.0)
//.declare inlineRegFromTDL (92)  rf=r size=32 type=ud align=2 words (r1.0)
//.declare inlineRegExpectedLocation (93)  rf=r size=32 type=ud align=2 words (r4.0)
//.declare  (94)  rf=r size=128 type=ud align=32 words (r1.0)
//.declare  (95)  rf=r size=64 type=ud align=32 words (r3.0)
//.declare  (96)  rf=r size=32 type=ud align=2 words (r5.0)

// .inputs
// +----------+----------+--------+----------+------------------+
// | id       | type     |  bytes | at       | from             |
// +----------+----------+--------+----------+------------------+
// | V0039    | :w x 32  |   0x40 | r1       | pti[tid]+0x0     |
// | V0040    | :w x 32  |   0x40 | r2       | pti[tid]+0x40    |
// | V0041    | :w x 32  |   0x40 | r3       | pti[tid]+0x80    |
// | V0037    | :d x 3   |    0xC | r4       | inline+0x0       |
// | V0038    | :d x 3   |    0xC | r4+0xC   | inline+0xC       |
// | V0034    | :uq      |    0x8 | r4+0x18  | inline+0x18      |
// | V0043    | :w       |    0x2 | r5       | cti+0x20         |
// | V0042    | :uq      |    0x8 | r5+0x8   | cti+0x28         |
// +----------+----------+--------+----------+------------------+


// B000: Preds:{},  Succs:{B001}
per_thread_prolog:
(W)     mov (16|M0)              r255.0<1>:ud  0x0:ud                                                //  ALU pipe: int; 
(W)     and (1|M0)               r255.2<1>:ud  r0.0<0;1,0>:ud    0xFFFFFFC0:ud                       //  ALU pipe: int; 
(W)     and (1|M0)               r255.0<1>:uw  r0.4<0;1,0>:uw    0xFF:uw                             //  ALU pipe: int; 
(W)     add (1|M0)               r255.2<1>:ud  r255.2<0;1,0>:ud  0x20:ud              {I@2}          //  ALU pipe: int; 
(W)     add (1|M0)               r255.2<1>:ud  r255.2<0;1,0>:ud  0x0:ud              {I@1}           //  R_SYM_ADDR_32: __INTEL_PATCH_CROSS_THREAD_OFFSET_OFF_R0; ALU pipe: int; 
(W)     mad (1|M0)               r255.0<1>:ud  r255.2<0;0>:ud    r255.0<0;0>:uw    0xC0:uw              {I@1} //  ALU pipe: int; 
(W)     mov (8|M0)               r4.0<1>:ud    r1.0<1;1,0>:ud                                        //  ALU pipe: int; 
(W)     load.ugm.d32x32t.a32.ca.cc (1|M0)  r1:2 bti[255][r255:1]   {A@1,$0} // ex_desc:0xFF000000; desc:0x6229E500 // 
(W)     load.ugm.d32x16t.a32.ca.cc (1|M0)  r3:1 bti[255][r255:1+0x80]  {$1} // ex_desc:0xFF080000; desc:0x6219D500 // 
        nop                                                                                          // 
        nop                                                                                          // 
        nop                                                                                          // 
// B001: Preds:{B000},  Succs:{B002}
// cross_thread_prolog:
        sync.nop                             null                             {Compacted,$1.src}     // 
(W)     and (1|M0)               r255.0<1>:ud  r0.0<0;1,0>:ud    0xFFFFFFC0:ud              {$0.src} //  ALU pipe: int; 
(W)     add (1|M0)               r255.0<1>:ud  r255.0<0;1,0>:ud  0x0:ud              {I@1}           //  R_SYM_ADDR_32: __INTEL_PATCH_CROSS_THREAD_OFFSET_OFF_R0; ALU pipe: int; 
(W)     load.ugm.d32x8t.a32.ca.cc (1|M0)  r5:1  bti[255][r255:1]   {I@1,$2} // ex_desc:0xFF000000; desc:0x6219C500 // 
// B002: Preds:{B001},  Succs:{}
// _main:
(W)     mov (16|M0)              r2.0<1>:ud    r0.0<1;1,0>:ud                   {Compacted,$0.dst}   //  ALU pipe: int; $1
(W)     or (1|M0)                cr0.0<1>:ud   cr0.0<0;1,0>:ud   0x400004C0:ud              {A@1}    // $1
(W)     mul (1|M0)               acc0.0<1>:ud  r4.3<0;1,0>:ud    r2.2<0;1,0>:uw   {A@1}              //  ALU pipe: int; $2
        mov (16|M0)              r13.0<4>:uw   r1.0<1;1,0>:uw                                        //  ALU pipe: int; $14
(W)     macl (1|M0)              r6.0<1>:ud    r4.3<0;1,0>:ud    r2.1<0;1,0>:ud   {Compacted}        //  ALU pipe: int; $3
(W)     mul (1|M0)               acc0.0<1>:ud  r4.3<0;1,0>:ud    r2.2<0;1,0>:uw                      //  ALU pipe: int; $3
        mov (16|M16)             r15.0<4>:uw   r1.16<1;1,0>:uw                                       //  ALU pipe: int; $14
(W)     mach (1|M0)              r3.0<1>:d     r4.3<0;1,0>:ud    r2.1<0;1,0>:ud   {$1.dst}           //  ALU pipe: int; 
        mov (32|M0)              r11.0<1>:ud   r5.0<0;1,0>:uw                   {$2.dst}             //  ALU pipe: int; $19
(W)     mov (1|M0)               r6.1<1>:d     r3.0<0;1,0>:d                    {Compacted,I@2}      //  ALU pipe: int; $8
(W)     mov (16|M0)              r255.0<1>:ud  r2.0<1;1,0>:ud                   {Compacted}          //  ALU pipe: int; $21
        add (16|M0)              r17.0<1>:q    r6.0<0;1,0>:q     r13.0<4;1,0>:uw  {I@2}              //  ALU pipe: int; $14
        add (16|M16)             r19.0<1>:q    r6.0<0;1,0>:q     r15.0<4;1,0>:uw                     //  ALU pipe: int; $14
        add (16|M0)              r21.0<1>:q    r17.0<1;1,0>:q    r4.0<0;1,0>:ud   {I@2}              //  ALU pipe: int; $16
        add (16|M16)             r23.0<1>:q    r19.0<1;1,0>:q    r4.0<0;1,0>:ud   {I@2}              //  ALU pipe: int; $16
        shl (16|M0)              r25.0<1>:q    r21.0<1;1,0>:q    1:w               {Compacted,I@2}   //  ALU pipe: int; $17
        shl (16|M16)             r27.0<1>:q    r23.0<1;1,0>:q    1:w               {Compacted,I@2}   //  ALU pipe: int; $17
        add (16|M0)              r7.0<1>:q     r25.0<1;1,0>:q    r4.3<0;1,0>:q    {Compacted,I@2}    //  ALU pipe: int; $18
        add (16|M16)             r9.0<1>:q     r27.0<1;1,0>:q    r4.3<0;1,0>:q    {Compacted,I@2}    //  ALU pipe: int; $18
        store.ugm.d16u32.a64 (32|M0)  [r7:4]    r11:2              {I@1,$3} // ex_desc:0x0; desc:0x8000B84 // $20
(W)     send.gtwy (1|M0)         null     r255  null:0  0x0            0x02000010           {EOT,$4} // wr:1+0, rd:0; end of thread // $21
L520:
(W)     mov (16|M0)              null<1>:ud    0xEA89A447:ud                                         // 
(W)     mov (16|M0)              null<1>:ud    0x2AB535EB:ud                                         // 
(W)     mov (16|M0)              null<1>:ud    0x0:ud                                                // 
(W)     mov (16|M0)              null<1>:ud    0x2:ud                                                // 


//.BankConflicts: 0
//.ByteRMWs: 0
//


//.numALUInst: 33
//.accSubDef: 0
//.accSubUse: 0
//.accSubCandidateDef: 0
//.accSubCandidateUse: 0
//
//
//.singlePipeAtOneDistNum: 5
//.allAtOneDistNum: 3
//.syncInstCount: 1
//.tokenReuseCount: 0
//.AfterWriteTokenDepCount: 3
//.AfterReadTokenDepCount: 2
