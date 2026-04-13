//.kernel _ZTSZZZ4mainENKUlvE_clEvENKUlRN4sycl3_V17handlerEE_clES3_EUlNS1_7nd_itemILi2EEEE_
//.platform XE2
//.thread_config numGRF=256, numAcc=8, numSWSB=32
//.options_string "-emitCrossThreadOffR0Reloc -hashmovs 2558329195 2373902379 -hashmovs1 0 1 "
//.full_options "-emitLocation -enableCoalesceScalarMoves -samplerHeaderWA -enablePreemptionR0Only -hasRNEandDenorm -noStitchExternFunc -useInlineData -emitCrossThreadOffR0Reloc -TotalGRFNum 256 -abortOnSpill 4 -enableBundleCR 3 -freqBasedSpillCost 8 -freqBasedSpillCostFunc 1 -boundsChecking -presched-rp 100 -nodpsendreorder -SBIDDepLoc -PVCSendWARWA -output -binary -dumpcommonisa -dumpcombinedcisa -dumpvisa -printHexFloatInAsm -noverifyCISA -enableHalfLSC -partialInt64 -activeThreadsOnlyBarrier -hashmovs 2558329195 2373902379 -hashmovs1 0 1 "
//.instCount 828
//.RA type	LOCAL_FIRST_FIT_BC_RA
//.git-hash 2c5a85aeee1b0ddde5971fcb2e716b2732d974c5

//.declare BuiltInR0 (0)  rf=r size=64 type=ud align=32 words (r0.0) IsBuiltin
//.declare  (1)  rf=r size=64 type=ud align=32 words (r107.0) IsBuiltin
//.declare BuiltinA0 (2)  rf=a size=4 type=ud align=1 words (a0.0) IsBuiltin
//.declare BuiltinA0Dot2 (3)  rf=a size=4 type=ud align=1 words (a0.2) IsBuiltin
//.declare BuiltinSR0Dot1 (5)  rf=r size=4 type=ud align=2 words IsBuiltin
//.declare %null (10)  rf=r size=4 type=ud align=32 words
//.declare %local_id_x (13)  rf=r size=4 type=ud align=2 words (r1.9)
//.declare %local_id_y (14)  rf=r size=4 type=ud align=2 words (r1.10)
//.declare %local_size_x (15)  rf=r size=4 type=ud align=2 words (r1.5)
//.declare %local_size_y (16)  rf=r size=4 type=ud align=2 words (r1.6)
//.declare %group_id_x (17)  rf=r size=4 type=ud align=2 words (r0.1)
//.declare %group_id_y (18)  rf=r size=4 type=ud align=2 words (r0.6)
//.declare %group_id_z (19)  rf=r size=4 type=ud align=2 words (r0.7)
//.declare %group_count_x (20)  rf=r size=4 type=ud align=2 words (r1.7)
//.declare %group_count_y (21)  rf=r size=4 type=ud align=2 words (r1.8)
//.declare %tsc (22)  rf=r size=20 type=ud align=2 words
//.declare %arg (23)  rf=r size=0 type=ud align=32 words (r26.0)
//.declare %retval (24)  rf=r size=0 type=ud align=32 words (r26.0) Output
//.declare %sp (25)  rf=r size=8 type=uq align=32 words (r255.3)
//.declare %fp (26)  rf=r size=8 type=uq align=32 words (r255.2)
//.declare %sr0 (27)  rf=r size=16 type=ud align=2 words
//.declare %cr0 (28)  rf=r size=12 type=ud align=2 words
//.declare %ce0 (29)  rf=r size=4 type=ud align=2 words
//.declare %dbg0 (30)  rf=r size=8 type=ud align=2 words
//.declare implBufPtr (32)  rf=r size=8 type=uq align=32 words (r254.0)
//.declare localIdBufPtr (33)  rf=r size=8 type=uq align=32 words (r254.3)
//.declare %msg0 (34)  rf=r size=12 type=ud align=2 words
//.declare %null (35)  rf=r size=4 type=ud align=32 words
//.declare V0033 (43)  rf=r size=64 type=d alias=+0 align=32 words (r107.0)
//.declare V0034 (44)  rf=r size=8 type=uq align=4 words (r4.0)
//.declare V0035 (45)  rf=r size=8 type=uq align=4 words (r4.1)
//.declare V0036 (46)  rf=r size=8 type=uq align=4 words (r4.2)
//.declare V0037 (47)  rf=r size=4 type=d align=2 words (r4.6)
//.declare V0038 (48)  rf=r size=4 type=d align=2 words (r4.7)
//.declare V0040 (50)  rf=r size=32 type=d alias=+0 align=32 words (r107.0)
//.declare V0042 (52)  rf=r size=12 type=d align=2 words (r5.2)
//.declare V0043 (53)  rf=r size=32 type=w align=16 words (r1.0)
//.declare V0044 (54)  rf=r size=32 type=w align=16 words (r2.0)
//.declare V0045 (55)  rf=r size=32 type=w align=16 words (r3.0)
//.declare V0046 (56)  rf=r size=8 type=uq align=4 words (r5.0)
//.declare V0053 (63)  rf=r size=4 type=d align=2 words (r254.0)
//.declare V0054 (64)  rf=r size=4 type=d alias=+0 align=2 words (r108.8)
//.declare V0055 (65)  rf=r size=4 type=d alias=+4 align=2 words (r108.9)
//.declare V0056 (66)  rf=r size=4 type=d align=2 words (r108.0)
//.declare V0057 (67)  rf=r size=4 type=d align=2 words (r1.0)
//.declare V0058 (68)  rf=r size=4 type=d align=2 words (r254.1)
//.declare P01 (69)  rf=f16  size=2 type=uw align=1 words (f0.0)
//.declare V0059 (70)  rf=r size=512 type=d align=32 words (r110.0)
//.declare V0060 (71)  rf=r size=512 type=f alias=V0059+0 align=32 words (r110.0)
//.declare V0061 (72)  rf=r size=512 type=d align=32 words (r118.0)
//.declare V0062 (73)  rf=r size=512 type=f alias=V0061+0 align=32 words (r118.0)
//.declare V0063 (74)  rf=r size=512 type=d align=32 words (r126.0)
//.declare V0064 (75)  rf=r size=512 type=f alias=V0063+0 align=32 words (r126.0)
//.declare V0065 (76)  rf=r size=512 type=d align=32 words (r134.0)
//.declare V0066 (77)  rf=r size=512 type=f alias=V0065+0 align=32 words (r134.0)
//.declare V0067 (78)  rf=r size=512 type=d align=32 words (r142.0)
//.declare V0068 (79)  rf=r size=512 type=f alias=V0067+0 align=32 words (r142.0)
//.declare V0069 (80)  rf=r size=512 type=d align=32 words (r150.0)
//.declare V0070 (81)  rf=r size=512 type=f alias=V0069+0 align=32 words (r150.0)
//.declare V0071 (82)  rf=r size=512 type=d align=32 words (r158.0)
//.declare V0072 (83)  rf=r size=512 type=f alias=V0071+0 align=32 words (r158.0)
//.declare V0073 (84)  rf=r size=512 type=d align=32 words (r166.0)
//.declare V0074 (85)  rf=r size=512 type=f alias=V0073+0 align=32 words (r166.0)
//.declare V0075 (86)  rf=r size=512 type=d align=32 words (r174.0)
//.declare V0076 (87)  rf=r size=512 type=f alias=V0075+0 align=32 words (r174.0)
//.declare V0077 (88)  rf=r size=512 type=d align=32 words (r182.0)
//.declare V0078 (89)  rf=r size=512 type=f alias=V0077+0 align=32 words (r182.0)
//.declare V0079 (90)  rf=r size=512 type=d align=32 words (r190.0)
//.declare V0080 (91)  rf=r size=512 type=f alias=V0079+0 align=32 words (r190.0)
//.declare V0081 (92)  rf=r size=512 type=d align=32 words (r198.0)
//.declare V0082 (93)  rf=r size=512 type=f alias=V0081+0 align=32 words (r198.0)
//.declare V0083 (94)  rf=r size=512 type=d align=32 words (r206.0)
//.declare V0084 (95)  rf=r size=512 type=f alias=V0083+0 align=32 words (r206.0)
//.declare V0085 (96)  rf=r size=512 type=d align=32 words (r214.0)
//.declare V0086 (97)  rf=r size=512 type=f alias=V0085+0 align=32 words (r214.0)
//.declare V0087 (98)  rf=r size=512 type=d align=32 words (r222.0)
//.declare V0088 (99)  rf=r size=512 type=f alias=V0087+0 align=32 words (r222.0)
//.declare V0089 (100)  rf=r size=512 type=d align=32 words (r230.0)
//.declare V0090 (101)  rf=r size=512 type=f alias=V0089+0 align=32 words (r230.0)
//.declare V0091 (102)  rf=r size=4 type=d align=32 words (r1.0)
//.declare V0092 (103)  rf=r size=8 type=q alias=V0034+0 align=32 words (r4.0)
//.declare V0094 (105)  rf=r size=8 type=q align=4 words (r254.1)
//.declare V0095 (106)  rf=r size=8 type=q align=4 words (r108.1)
//.declare V0096 (107)  rf=r size=4 type=d align=2 words (r254.4)
//.declare V0097 (108)  rf=r size=4 type=d align=2 words (r108.1)
//.declare V0099 (110)  rf=r size=32 type=ud alias=V0040+0 align=32 words (r107.0)
//.declare V0100 (111)  rf=r size=8 type=q align=4 words (r2.0)
//.declare V0101 (112)  rf=r size=8 type=d align=2 words (r3.0)
//.declare V0102 (113)  rf=r size=8 type=d alias=V0100+0 align=4 words (r2.0)
//.declare V0106 (117)  rf=r size=8 type=q align=4 words (r3.1)
//.declare V0107 (118)  rf=r size=8 type=d alias=V0106+0 align=4 words (r3.2)
//.declare V0108 (119)  rf=r size=8 type=q alias=V0035+0 align=32 words (r4.1)
//.declare V0109 (120)  rf=r size=8 type=q align=4 words (r254.3)
//.declare V0110 (121)  rf=r size=4 type=d align=2 words (r4.8)
//.declare V0111 (122)  rf=r size=4 type=d align=2 words (r4.9)
//.declare V0112 (123)  rf=r size=4 type=d alias=+0 align=2 words (r108.12)
//.declare V0113 (124)  rf=r size=4 type=d alias=+0 align=2 words (r1.0)
//.declare V0114 (125)  rf=r size=4 type=d alias=+4 align=2 words (r1.1)
//.declare V0115 (126)  rf=r size=4 type=d align=32 words (r5.0)
//.declare V0117 (128)  rf=r size=8 type=q alias=+0 align=4 words (r254.6)
//.declare V0119 (130)  rf=r size=8 type=q alias=+8 align=4 words (r254.7)
//.declare V0121 (132)  rf=r size=8 type=q align=4 words (r108.2)
//.declare V0123 (134)  rf=r size=4 type=ud alias=V0110+0 align=2 words (r4.8)
//.declare V0124 (135)  rf=r size=8 type=q align=4 words (r254.4)
//.declare V0125 (136)  rf=r size=4 type=d align=2 words (r108.6)
//.declare V0126 (137)  rf=r size=4 type=d align=2 words (r254.5)
//.declare P02 (138)  rf=f16  size=2 type=uw align=1 words (f0.1)
//.declare V0127 (139)  rf=r size=4 type=d align=2 words (r1.0)
//.declare V0129 (141)  rf=r size=4 type=ud alias=V0127+0 align=2 words (r1.0)
//.declare V0132 (144)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0133 (145)  rf=r size=8 type=q alias=V0132+0 align=4 words (r2.0)
//.declare V0136 (148)  rf=r size=8 type=d alias=V0132+0 align=4 words (r2.0)
//.declare V0139 (151)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0140 (152)  rf=r size=8 type=d alias=V0139+0 align=4 words (r2.2)
//.declare V0142 (154)  rf=r size=4 type=d align=2 words (r3.0)
//.declare V0144 (156)  rf=r size=4 type=ud alias=V0142+0 align=2 words (r3.0)
//.declare  (158)  rf=r size=64 type=ud align=32 words (r5.0)
//.declare  (159)  rf=r size=64 type=uq alias=+0 align=32 words (r5.0)
//.declare V0146 (160)  rf=r size=4 type=d align=2 words (r1.0)
//.declare V0147 (161)  rf=r size=4 type=ud alias=V0126+0 align=2 words (r254.5)
//.declare V0148 (162)  rf=r size=4 type=ud alias=V0146+0 align=2 words (r1.0)
//.declare V0152 (166)  rf=r size=4 type=ud alias=V0096+0 align=2 words (r254.4)
//.declare V0153 (167)  rf=r size=4 type=d align=32 words (r3.0)
//.declare V0155 (169)  rf=r size=4 type=d align=32 words (r2.0)
//.declare V0157 (171)  rf=r size=8 type=q align=32 words (r6.0)
//.declare V0158 (172)  rf=r size=8 type=d alias=V0157+0 align=4 words (r6.0)
//.declare V0159 (173)  rf=r size=8 type=q align=4 words (r4.4)
//.declare V0162 (176)  rf=r size=8 type=uq align=4 words (r7.0)
//.declare V0163 (177)  rf=r size=8 type=q alias=V0162+0 align=4 words (r7.0)
//.declare V0166 (180)  rf=r size=8 type=d alias=V0162+0 align=4 words (r7.0)
//.declare V0169 (183)  rf=r size=8 type=q align=4 words (r5.0)
//.declare V0170 (184)  rf=r size=8 type=d alias=V0169+0 align=4 words (r5.0)
//.declare V0172 (186)  rf=r size=4 type=d align=2 words (r5.2)
//.declare V0174 (188)  rf=r size=4 type=ud alias=V0172+0 align=2 words (r5.2)
//.declare  (190)  rf=r size=64 type=ud align=32 words (r8.0)
//.declare  (191)  rf=r size=64 type=uq alias=+0 align=32 words (r8.0)
//.declare V0176 (192)  rf=r size=4 type=d align=2 words (r1.0)
//.declare V0178 (194)  rf=r size=4 type=ud alias=V0176+0 align=2 words (r1.0)
//.declare V0179 (195)  rf=r size=8 type=q align=4 words (r2.0)
//.declare V0180 (196)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0181 (197)  rf=r size=8 type=uq alias=V0180+0 align=4 words (r2.1)
//.declare V0182 (198)  rf=r size=8 type=uq align=4 words (r2.2)
//.declare V0183 (199)  rf=r size=8 type=q alias=V0182+0 align=4 words (r2.2)
//.declare V0186 (202)  rf=r size=8 type=d alias=V0182+0 align=4 words (r2.4)
//.declare V0189 (205)  rf=r size=8 type=q align=4 words (r2.3)
//.declare V0190 (206)  rf=r size=8 type=d alias=V0189+0 align=4 words (r2.6)
//.declare V0192 (208)  rf=r size=4 type=d align=2 words (r3.0)
//.declare V0194 (210)  rf=r size=4 type=ud alias=V0192+0 align=2 words (r3.0)
//.declare V0195 (211)  rf=r size=4 type=d alias=+4 align=2 words (r108.13)
//.declare V0198 (214)  rf=r size=8 type=uq align=4 words (r4.4)
//.declare V0199 (215)  rf=r size=8 type=q alias=V0198+0 align=4 words (r4.4)
//.declare V0202 (218)  rf=r size=8 type=d alias=V0198+0 align=4 words (r4.8)
//.declare V0205 (221)  rf=r size=8 type=q align=4 words (r4.5)
//.declare V0206 (222)  rf=r size=8 type=d alias=V0205+0 align=4 words (r4.10)
//.declare V0208 (224)  rf=r size=4 type=d align=2 words (r5.0)
//.declare V0210 (226)  rf=r size=4 type=ud alias=V0208+0 align=2 words (r5.0)
//.declare V0211 (227)  rf=r size=4 type=d align=2 words (r6.0)
//.declare V0212 (228)  rf=r size=8 type=q align=4 words (r1.0)
//.declare V0213 (229)  rf=r size=8 type=uq alias=V0212+0 align=4 words (r1.0)
//.declare V0214 (230)  rf=r size=8 type=uq align=4 words (r1.1)
//.declare V0215 (231)  rf=r size=8 type=q alias=V0214+0 align=4 words (r1.1)
//.declare V0218 (234)  rf=r size=8 type=d alias=V0214+0 align=4 words (r1.2)
//.declare V0221 (237)  rf=r size=8 type=q align=4 words (r1.2)
//.declare V0222 (238)  rf=r size=8 type=d alias=V0221+0 align=4 words (r1.4)
//.declare V0224 (240)  rf=r size=4 type=d align=2 words (r6.1)
//.declare V0226 (242)  rf=r size=4 type=ud alias=V0224+0 align=2 words (r6.1)
//.declare V0227 (243)  rf=r size=4 type=d align=2 words (r7.0)
//.declare V0230 (246)  rf=r size=8 type=uq align=4 words (r3.0)
//.declare V0231 (247)  rf=r size=8 type=q alias=V0230+0 align=4 words (r3.0)
//.declare V0234 (250)  rf=r size=8 type=d alias=V0230+0 align=4 words (r3.0)
//.declare V0237 (253)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0238 (254)  rf=r size=8 type=d alias=V0237+0 align=4 words (r2.2)
//.declare V0240 (256)  rf=r size=4 type=d align=2 words (r2.4)
//.declare V0242 (258)  rf=r size=4 type=ud alias=V0240+0 align=2 words (r2.4)
//.declare V0243 (259)  rf=r size=4 type=d align=2 words (r4.8)
//.declare V0244 (260)  rf=r size=8 type=q align=4 words (r4.6)
//.declare V0245 (261)  rf=r size=8 type=uq alias=V0244+0 align=4 words (r4.6)
//.declare V0246 (262)  rf=r size=8 type=uq align=4 words (r4.7)
//.declare V0247 (263)  rf=r size=8 type=q alias=V0246+0 align=4 words (r4.7)
//.declare V0250 (266)  rf=r size=8 type=d alias=V0246+0 align=4 words (r4.14)
//.declare V0253 (269)  rf=r size=8 type=q align=4 words (r5.0)
//.declare V0254 (270)  rf=r size=8 type=d alias=V0253+0 align=4 words (r5.0)
//.declare V0256 (272)  rf=r size=4 type=d align=2 words (r5.2)
//.declare V0258 (274)  rf=r size=4 type=ud alias=V0256+0 align=2 words (r5.2)
//.declare V0259 (275)  rf=r size=4 type=d align=2 words (r7.1)
//.declare V0262 (278)  rf=r size=8 type=uq align=4 words (r6.1)
//.declare V0263 (279)  rf=r size=8 type=q alias=V0262+0 align=4 words (r6.1)
//.declare V0266 (282)  rf=r size=8 type=d alias=V0262+0 align=4 words (r6.2)
//.declare V0269 (285)  rf=r size=8 type=q align=4 words (r1.0)
//.declare V0270 (286)  rf=r size=8 type=d alias=V0269+0 align=4 words (r1.0)
//.declare V0272 (288)  rf=r size=4 type=d align=2 words (r1.2)
//.declare V0274 (290)  rf=r size=4 type=ud alias=V0272+0 align=2 words (r1.2)
//.declare V0275 (291)  rf=r size=4 type=d align=2 words (r3.0)
//.declare V0276 (292)  rf=r size=8 type=q align=4 words (r3.1)
//.declare V0277 (293)  rf=r size=8 type=uq alias=V0276+0 align=4 words (r3.1)
//.declare V0278 (294)  rf=r size=8 type=uq align=4 words (r3.2)
//.declare V0279 (295)  rf=r size=8 type=q alias=V0278+0 align=4 words (r3.2)
//.declare V0282 (298)  rf=r size=8 type=d alias=V0278+0 align=4 words (r3.4)
//.declare V0285 (301)  rf=r size=8 type=q align=4 words (r3.3)
//.declare V0286 (302)  rf=r size=8 type=d alias=V0285+0 align=4 words (r3.6)
//.declare V0288 (304)  rf=r size=4 type=d align=2 words (r7.2)
//.declare V0290 (306)  rf=r size=4 type=ud alias=V0288+0 align=2 words (r7.2)
//.declare V0291 (307)  rf=r size=4 type=d align=2 words (r8.0)
//.declare V0294 (310)  rf=r size=8 type=uq align=4 words (r5.1)
//.declare V0295 (311)  rf=r size=8 type=q alias=V0294+0 align=4 words (r5.1)
//.declare V0298 (314)  rf=r size=8 type=d alias=V0294+0 align=4 words (r5.2)
//.declare V0301 (317)  rf=r size=8 type=q align=4 words (r4.6)
//.declare V0302 (318)  rf=r size=8 type=d alias=V0301+0 align=4 words (r4.12)
//.declare V0304 (320)  rf=r size=4 type=d align=2 words (r4.9)
//.declare V0306 (322)  rf=r size=4 type=ud alias=V0304+0 align=2 words (r4.9)
//.declare V0307 (323)  rf=r size=4 type=d align=2 words (r6.1)
//.declare V0308 (324)  rf=r size=4 type=d align=2 words (r1.2)
//.declare V0309 (325)  rf=r size=4 type=ud alias=V0125+0 align=2 words (r108.6)
//.declare V0310 (326)  rf=r size=4 type=ud alias=V0308+0 align=2 words (r1.2)
//.declare V0314 (330)  rf=r size=4 type=d align=32 words (r9.0)
//.declare V0316 (332)  rf=r size=4 type=d align=32 words (r10.0)
//.declare V0318 (334)  rf=r size=8 type=q align=32 words (r2.0)
//.declare V0319 (335)  rf=r size=8 type=d alias=V0318+0 align=4 words (r2.0)
//.declare V0320 (336)  rf=r size=8 type=q align=4 words (r1.3)
//.declare V0321 (337)  rf=r size=8 type=q align=4 words (r3.1)
//.declare V0322 (338)  rf=r size=4 type=d align=2 words (r3.1)
//.declare V0326 (342)  rf=r size=4 type=ud alias=V0322+0 align=2 words (r3.1)
//.declare V0327 (343)  rf=r size=4 type=d align=32 words (r12.0)
//.declare V0329 (345)  rf=r size=4 type=d align=32 words (r13.0)
//.declare V0331 (347)  rf=r size=8 type=q align=32 words (r11.0)
//.declare V0332 (348)  rf=r size=8 type=d alias=V0331+0 align=4 words (r11.0)
//.declare V0333 (349)  rf=r size=8 type=q align=4 words (r4.7)
//.declare V0334 (350)  rf=r size=8 type=q align=4 words (r2.0)
//.declare V0335 (351)  rf=r size=8 type=q align=4 words (r2.2)
//.declare V0336 (352)  rf=r size=8 type=uq alias=V0335+0 align=4 words (r2.2)
//.declare V0337 (353)  rf=r size=8 type=uq align=4 words (r1.1)
//.declare V0338 (354)  rf=r size=8 type=q alias=V0337+0 align=4 words (r1.1)
//.declare V0341 (357)  rf=r size=8 type=d alias=V0337+0 align=4 words (r1.2)
//.declare V0344 (360)  rf=r size=8 type=q align=4 words (r1.3)
//.declare V0345 (361)  rf=r size=8 type=d alias=V0344+0 align=4 words (r1.6)
//.declare V0347 (363)  rf=r size=4 type=d align=2 words (r2.8)
//.declare V0349 (365)  rf=r size=4 type=ud alias=V0347+0 align=2 words (r2.8)
//.declare V0351 (367)  rf=r size=8 type=q align=4 words (r5.1)
//.declare V0352 (368)  rf=r size=8 type=uq alias=V0351+0 align=4 words (r5.1)
//.declare V0353 (369)  rf=r size=8 type=uq align=4 words (r5.2)
//.declare V0354 (370)  rf=r size=8 type=q alias=V0353+0 align=4 words (r5.2)
//.declare V0357 (373)  rf=r size=8 type=d alias=V0353+0 align=4 words (r5.4)
//.declare V0360 (376)  rf=r size=8 type=q align=4 words (r5.3)
//.declare V0361 (377)  rf=r size=8 type=d alias=V0360+0 align=4 words (r5.6)
//.declare V0363 (379)  rf=r size=4 type=d align=2 words (r6.2)
//.declare V0365 (381)  rf=r size=4 type=ud alias=V0363+0 align=2 words (r6.2)
//.declare V0369 (385)  rf=r size=8 type=uq align=4 words (r3.1)
//.declare V0370 (386)  rf=r size=8 type=q alias=V0369+0 align=4 words (r3.1)
//.declare V0373 (389)  rf=r size=8 type=d alias=V0369+0 align=4 words (r3.2)
//.declare V0376 (392)  rf=r size=8 type=q align=4 words (r3.2)
//.declare V0377 (393)  rf=r size=8 type=d alias=V0376+0 align=4 words (r3.4)
//.declare V0379 (395)  rf=r size=4 type=d align=2 words (r4.9)
//.declare V0381 (397)  rf=r size=4 type=ud alias=V0379+0 align=2 words (r4.9)
//.declare V0385 (401)  rf=r size=8 type=uq align=4 words (r1.1)
//.declare V0386 (402)  rf=r size=8 type=q alias=V0385+0 align=4 words (r1.1)
//.declare V0389 (405)  rf=r size=8 type=d alias=V0385+0 align=4 words (r1.2)
//.declare V0392 (408)  rf=r size=8 type=q align=4 words (r1.4)
//.declare V0393 (409)  rf=r size=8 type=d alias=V0392+0 align=4 words (r1.8)
//.declare V0395 (411)  rf=r size=4 type=d align=2 words (r2.0)
//.declare V0397 (413)  rf=r size=4 type=ud alias=V0395+0 align=2 words (r2.0)
//.declare V0401 (417)  rf=r size=8 type=uq align=4 words (r5.2)
//.declare V0402 (418)  rf=r size=8 type=q alias=V0401+0 align=4 words (r5.2)
//.declare V0405 (421)  rf=r size=8 type=d alias=V0401+0 align=4 words (r5.4)
//.declare V0408 (424)  rf=r size=8 type=q align=4 words (r5.4)
//.declare V0409 (425)  rf=r size=8 type=d alias=V0408+0 align=4 words (r5.8)
//.declare V0411 (427)  rf=r size=4 type=d align=2 words (r6.2)
//.declare V0413 (429)  rf=r size=4 type=ud alias=V0411+0 align=2 words (r6.2)
//.declare V0417 (433)  rf=r size=8 type=uq align=4 words (r3.1)
//.declare V0418 (434)  rf=r size=8 type=q alias=V0417+0 align=4 words (r3.1)
//.declare V0421 (437)  rf=r size=8 type=d alias=V0417+0 align=4 words (r3.2)
//.declare V0424 (440)  rf=r size=8 type=q align=4 words (r3.4)
//.declare V0425 (441)  rf=r size=8 type=d alias=V0424+0 align=4 words (r3.8)
//.declare V0427 (443)  rf=r size=4 type=d align=2 words (r4.9)
//.declare V0429 (445)  rf=r size=4 type=ud alias=V0427+0 align=2 words (r4.9)
//.declare V0433 (449)  rf=r size=8 type=uq align=4 words (r1.1)
//.declare V0434 (450)  rf=r size=8 type=q alias=V0433+0 align=4 words (r1.1)
//.declare V0437 (453)  rf=r size=8 type=d alias=V0433+0 align=4 words (r1.2)
//.declare V0440 (456)  rf=r size=8 type=q align=4 words (r1.5)
//.declare V0441 (457)  rf=r size=8 type=d alias=V0440+0 align=4 words (r1.10)
//.declare V0443 (459)  rf=r size=4 type=d align=2 words (r7.2)
//.declare V0445 (461)  rf=r size=4 type=ud alias=V0443+0 align=2 words (r7.2)
//.declare V0449 (465)  rf=r size=8 type=uq align=4 words (r8.1)
//.declare V0450 (466)  rf=r size=8 type=q alias=V0449+0 align=4 words (r8.1)
//.declare V0453 (469)  rf=r size=8 type=d alias=V0449+0 align=4 words (r8.2)
//.declare V0456 (472)  rf=r size=8 type=q align=4 words (r6.1)
//.declare V0457 (473)  rf=r size=8 type=d alias=V0456+0 align=4 words (r6.2)
//.declare V0459 (475)  rf=r size=4 type=d align=2 words (r6.4)
//.declare V0461 (477)  rf=r size=4 type=ud alias=V0459+0 align=2 words (r6.4)
//.declare V0463 (479)  rf=r size=256 type=w align=32 words (r19.0)
//.declare  (480)  rf=r size=64 type=ud align=32 words (r17.0)
//.declare  (481)  rf=r size=64 type=uq alias=+0 align=32 words (r17.0)
//.declare V0464 (482)  rf=r size=512 type=d align=32 words (r23.0)
//.declare  (483)  rf=r size=64 type=ud align=32 words (r9.0)
//.declare  (484)  rf=r size=64 type=uq alias=+0 align=32 words (r9.0)
//.declare V0465 (485)  rf=r size=256 type=w align=32 words (r31.0)
//.declare  (486)  rf=r size=64 type=ud align=32 words (r18.0)
//.declare  (487)  rf=r size=64 type=uq alias=+0 align=32 words (r18.0)
//.declare V0466 (488)  rf=r size=512 type=d align=32 words (r35.0)
//.declare  (489)  rf=r size=64 type=ud align=32 words (r10.0)
//.declare  (490)  rf=r size=64 type=uq alias=+0 align=32 words (r10.0)
//.declare V0467 (491)  rf=r size=512 type=d align=32 words (r43.0)
//.declare  (492)  rf=r size=64 type=ud align=32 words (r11.0)
//.declare  (493)  rf=r size=64 type=uq alias=+0 align=32 words (r11.0)
//.declare V0468 (494)  rf=r size=512 type=d align=32 words (r51.0)
//.declare  (495)  rf=r size=64 type=ud align=32 words (r12.0)
//.declare  (496)  rf=r size=64 type=uq alias=+0 align=32 words (r12.0)
//.declare V0469 (497)  rf=r size=512 type=d align=32 words (r59.0)
//.declare  (498)  rf=r size=64 type=ud align=32 words (r13.0)
//.declare  (499)  rf=r size=64 type=uq alias=+0 align=32 words (r13.0)
//.declare V0470 (500)  rf=r size=512 type=d align=32 words (r67.0)
//.declare  (501)  rf=r size=64 type=ud align=32 words (r14.0)
//.declare  (502)  rf=r size=64 type=uq alias=+0 align=32 words (r14.0)
//.declare V0471 (503)  rf=r size=512 type=d align=32 words (r75.0)
//.declare  (504)  rf=r size=64 type=ud align=32 words (r15.0)
//.declare  (505)  rf=r size=64 type=uq alias=+0 align=32 words (r15.0)
//.declare V0472 (506)  rf=r size=512 type=d align=32 words (r83.0)
//.declare  (507)  rf=r size=64 type=ud align=32 words (r16.0)
//.declare  (508)  rf=r size=64 type=uq alias=+0 align=32 words (r16.0)
//.declare V0473 (509)  rf=r size=256 type=w align=32 words (r95.0)
//.declare  (510)  rf=r size=64 type=ud align=32 words (r9.0)
//.declare  (511)  rf=r size=64 type=uq alias=+0 align=32 words (r9.0)
//.declare V0474 (512)  rf=r size=256 type=w align=32 words (r11.0)
//.declare  (513)  rf=r size=64 type=ud align=32 words (r10.0)
//.declare  (514)  rf=r size=64 type=uq alias=+0 align=32 words (r10.0)
//.declare V0475 (515)  rf=r size=256 type=w align=32 words (r99.0)
//.declare  (516)  rf=r size=64 type=ud align=32 words (r15.0)
//.declare  (517)  rf=r size=64 type=uq alias=+0 align=32 words (r15.0)
//.declare V0476 (518)  rf=r size=256 type=w align=32 words (r91.0)
//.declare  (519)  rf=r size=64 type=ud align=32 words (r2.0)
//.declare  (520)  rf=r size=64 type=uq alias=+0 align=32 words (r2.0)
//.declare V0477 (521)  rf=r size=256 type=w align=32 words (r15.0)
//.declare  (522)  rf=r size=64 type=ud align=32 words (r5.0)
//.declare  (523)  rf=r size=64 type=uq alias=+0 align=32 words (r5.0)
//.declare V0478 (524)  rf=r size=256 type=w align=32 words (r103.0)
//.declare  (525)  rf=r size=64 type=ud align=32 words (r1.0)
//.declare  (526)  rf=r size=64 type=uq alias=+0 align=32 words (r1.0)
//.declare V0479 (527)  rf=r size=256 type=ud alias=V0463+0 align=32 words (r19.0)
//.declare V0480 (528)  rf=r size=256 type=ud alias=V0465+0 align=32 words (r31.0)
//.declare V0481 (529)  rf=r size=256 type=ud alias=V0473+0 align=32 words (r95.0)
//.declare V0482 (530)  rf=r size=256 type=ud alias=V0474+0 align=32 words (r11.0)
//.declare V0483 (531)  rf=r size=256 type=ud alias=V0475+0 align=32 words (r99.0)
//.declare V0484 (532)  rf=r size=256 type=ud alias=V0476+0 align=32 words (r91.0)
//.declare V0485 (533)  rf=r size=256 type=ud alias=V0477+0 align=32 words (r15.0)
//.declare V0486 (534)  rf=r size=256 type=ud alias=V0478+0 align=32 words (r103.0)
//.declare V0487 (535)  rf=r size=4 type=d align=2 words (r1.0)
//.declare V0488 (536)  rf=r size=8 type=q alias=V0036+0 align=32 words (r4.2)
//.declare V0490 (538)  rf=r size=4 type=ud alias=V0487+0 align=2 words (r1.0)
//.declare V0491 (539)  rf=r size=8 type=q align=4 words (r2.0)
//.declare V0492 (540)  rf=r size=8 type=q align=4 words (r3.0)
//.declare V0493 (541)  rf=r size=4 type=d align=32 words (r5.0)
//.declare V0495 (543)  rf=r size=8 type=q align=4 words (r3.1)
//.declare V0496 (544)  rf=r size=8 type=q align=4 words (r4.4)
//.declare V0497 (545)  rf=r size=8 type=uq alias=V0496+0 align=4 words (r4.4)
//.declare V0498 (546)  rf=r size=8 type=uq align=4 words (r4.5)
//.declare V0499 (547)  rf=r size=8 type=q alias=V0498+0 align=4 words (r4.5)
//.declare V0502 (550)  rf=r size=8 type=d alias=V0498+0 align=4 words (r4.10)
//.declare V0505 (553)  rf=r size=8 type=q align=4 words (r4.6)
//.declare V0506 (554)  rf=r size=8 type=d alias=V0505+0 align=4 words (r4.12)
//.declare V0508 (556)  rf=r size=4 type=d align=2 words (r6.0)
//.declare V0510 (558)  rf=r size=4 type=ud alias=V0508+0 align=2 words (r6.0)
//.declare  (560)  rf=r size=64 type=ud align=32 words (r7.0)
//.declare  (561)  rf=r size=64 type=uq alias=+0 align=32 words (r7.0)
//.declare V0514 (564)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0515 (565)  rf=r size=8 type=q alias=V0514+0 align=4 words (r1.0)
//.declare V0518 (568)  rf=r size=8 type=d alias=V0514+0 align=4 words (r1.0)
//.declare V0521 (571)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0522 (572)  rf=r size=8 type=d alias=V0521+0 align=4 words (r1.2)
//.declare V0524 (574)  rf=r size=4 type=d align=2 words (r2.0)
//.declare V0526 (576)  rf=r size=4 type=ud alias=V0524+0 align=2 words (r2.0)
//.declare  (578)  rf=r size=64 type=ud align=32 words (r5.0)
//.declare  (579)  rf=r size=64 type=uq alias=+0 align=32 words (r5.0)
//.declare V0530 (582)  rf=r size=8 type=uq align=4 words (r3.1)
//.declare V0531 (583)  rf=r size=8 type=q alias=V0530+0 align=4 words (r3.1)
//.declare V0534 (586)  rf=r size=8 type=d alias=V0530+0 align=4 words (r3.2)
//.declare V0537 (589)  rf=r size=8 type=q align=4 words (r3.2)
//.declare V0538 (590)  rf=r size=8 type=d alias=V0537+0 align=4 words (r3.4)
//.declare V0540 (592)  rf=r size=4 type=d align=2 words (r4.10)
//.declare V0542 (594)  rf=r size=4 type=ud alias=V0540+0 align=2 words (r4.10)
//.declare  (596)  rf=r size=64 type=ud align=32 words (r2.0)
//.declare  (597)  rf=r size=64 type=uq alias=+0 align=32 words (r2.0)
//.declare V0546 (600)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0547 (601)  rf=r size=8 type=q alias=V0546+0 align=4 words (r1.0)
//.declare V0550 (604)  rf=r size=8 type=d alias=V0546+0 align=4 words (r1.0)
//.declare V0553 (607)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0554 (608)  rf=r size=8 type=d alias=V0553+0 align=4 words (r1.2)
//.declare V0556 (610)  rf=r size=4 type=d align=2 words (r5.0)
//.declare V0558 (612)  rf=r size=4 type=ud alias=V0556+0 align=2 words (r5.0)
//.declare  (614)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (615)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0560 (616)  rf=r size=4 type=d align=32 words (r2.0)
//.declare V0562 (618)  rf=r size=8 type=q align=4 words (r3.1)
//.declare V0563 (619)  rf=r size=8 type=q align=4 words (r4.4)
//.declare V0564 (620)  rf=r size=8 type=uq alias=V0563+0 align=4 words (r4.4)
//.declare V0565 (621)  rf=r size=8 type=uq align=4 words (r4.5)
//.declare V0566 (622)  rf=r size=8 type=q alias=V0565+0 align=4 words (r4.5)
//.declare V0569 (625)  rf=r size=8 type=d alias=V0565+0 align=4 words (r4.10)
//.declare V0572 (628)  rf=r size=8 type=q align=4 words (r1.0)
//.declare V0573 (629)  rf=r size=8 type=d alias=V0572+0 align=4 words (r1.0)
//.declare V0575 (631)  rf=r size=4 type=d align=2 words (r1.2)
//.declare V0577 (633)  rf=r size=4 type=ud alias=V0575+0 align=2 words (r1.2)
//.declare  (635)  rf=r size=64 type=ud align=32 words (r5.0)
//.declare  (636)  rf=r size=64 type=uq alias=+0 align=32 words (r5.0)
//.declare V0581 (639)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0582 (640)  rf=r size=8 type=q alias=V0581+0 align=4 words (r2.0)
//.declare V0585 (643)  rf=r size=8 type=d alias=V0581+0 align=4 words (r2.0)
//.declare V0588 (646)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0589 (647)  rf=r size=8 type=d alias=V0588+0 align=4 words (r2.2)
//.declare V0591 (649)  rf=r size=4 type=d align=2 words (r3.2)
//.declare V0593 (651)  rf=r size=4 type=ud alias=V0591+0 align=2 words (r3.2)
//.declare  (653)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (654)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0597 (657)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0598 (658)  rf=r size=8 type=q alias=V0597+0 align=4 words (r1.0)
//.declare V0601 (661)  rf=r size=8 type=d alias=V0597+0 align=4 words (r1.0)
//.declare V0604 (664)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0605 (665)  rf=r size=8 type=d alias=V0604+0 align=4 words (r1.2)
//.declare V0607 (667)  rf=r size=4 type=d align=2 words (r4.10)
//.declare V0609 (669)  rf=r size=4 type=ud alias=V0607+0 align=2 words (r4.10)
//.declare  (671)  rf=r size=64 type=ud align=32 words (r5.0)
//.declare  (672)  rf=r size=64 type=uq alias=+0 align=32 words (r5.0)
//.declare V0613 (675)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0614 (676)  rf=r size=8 type=q alias=V0613+0 align=4 words (r2.0)
//.declare V0617 (679)  rf=r size=8 type=d alias=V0613+0 align=4 words (r2.0)
//.declare V0620 (682)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0621 (683)  rf=r size=8 type=d alias=V0620+0 align=4 words (r2.2)
//.declare V0623 (685)  rf=r size=4 type=d align=2 words (r3.2)
//.declare V0625 (687)  rf=r size=4 type=ud alias=V0623+0 align=2 words (r3.2)
//.declare  (689)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (690)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0627 (691)  rf=r size=4 type=d align=32 words (r1.0)
//.declare V0629 (693)  rf=r size=8 type=q align=4 words (r4.4)
//.declare V0630 (694)  rf=r size=8 type=q align=4 words (r5.0)
//.declare V0631 (695)  rf=r size=8 type=uq alias=V0630+0 align=4 words (r5.0)
//.declare V0632 (696)  rf=r size=8 type=uq align=4 words (r3.1)
//.declare V0633 (697)  rf=r size=8 type=q alias=V0632+0 align=4 words (r3.1)
//.declare V0636 (700)  rf=r size=8 type=d alias=V0632+0 align=4 words (r3.2)
//.declare V0639 (703)  rf=r size=8 type=q align=4 words (r2.0)
//.declare V0640 (704)  rf=r size=8 type=d alias=V0639+0 align=4 words (r2.0)
//.declare V0642 (706)  rf=r size=4 type=d align=2 words (r2.2)
//.declare V0644 (708)  rf=r size=4 type=ud alias=V0642+0 align=2 words (r2.2)
//.declare  (710)  rf=r size=64 type=ud align=32 words (r7.0)
//.declare  (711)  rf=r size=64 type=uq alias=+0 align=32 words (r7.0)
//.declare V0648 (714)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0649 (715)  rf=r size=8 type=q alias=V0648+0 align=4 words (r1.0)
//.declare V0652 (718)  rf=r size=8 type=d alias=V0648+0 align=4 words (r1.0)
//.declare V0655 (721)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0656 (722)  rf=r size=8 type=d alias=V0655+0 align=4 words (r1.2)
//.declare V0658 (724)  rf=r size=4 type=d align=2 words (r3.2)
//.declare V0660 (726)  rf=r size=4 type=ud alias=V0658+0 align=2 words (r3.2)
//.declare  (728)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (729)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0664 (732)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0665 (733)  rf=r size=8 type=q alias=V0664+0 align=4 words (r2.0)
//.declare V0668 (736)  rf=r size=8 type=d alias=V0664+0 align=4 words (r2.0)
//.declare V0671 (739)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0672 (740)  rf=r size=8 type=d alias=V0671+0 align=4 words (r2.2)
//.declare V0674 (742)  rf=r size=4 type=d align=2 words (r4.8)
//.declare V0676 (744)  rf=r size=4 type=ud alias=V0674+0 align=2 words (r4.8)
//.declare  (746)  rf=r size=64 type=ud align=32 words (r7.0)
//.declare  (747)  rf=r size=64 type=uq alias=+0 align=32 words (r7.0)
//.declare V0680 (750)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0681 (751)  rf=r size=8 type=q alias=V0680+0 align=4 words (r1.0)
//.declare V0684 (754)  rf=r size=8 type=d alias=V0680+0 align=4 words (r1.0)
//.declare V0687 (757)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0688 (758)  rf=r size=8 type=d alias=V0687+0 align=4 words (r1.2)
//.declare V0690 (760)  rf=r size=4 type=d align=2 words (r3.2)
//.declare V0692 (762)  rf=r size=4 type=ud alias=V0690+0 align=2 words (r3.2)
//.declare  (764)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (765)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0694 (766)  rf=r size=4 type=d align=32 words (r2.0)
//.declare V0696 (768)  rf=r size=8 type=q align=4 words (r4.4)
//.declare V0697 (769)  rf=r size=8 type=q align=4 words (r5.0)
//.declare V0698 (770)  rf=r size=8 type=uq alias=V0697+0 align=4 words (r5.0)
//.declare V0699 (771)  rf=r size=8 type=uq align=4 words (r5.1)
//.declare V0700 (772)  rf=r size=8 type=q alias=V0699+0 align=4 words (r5.1)
//.declare V0703 (775)  rf=r size=8 type=d alias=V0699+0 align=4 words (r5.2)
//.declare V0706 (778)  rf=r size=8 type=q align=4 words (r1.0)
//.declare V0707 (779)  rf=r size=8 type=d alias=V0706+0 align=4 words (r1.0)
//.declare V0709 (781)  rf=r size=4 type=d align=2 words (r1.2)
//.declare V0711 (783)  rf=r size=4 type=ud alias=V0709+0 align=2 words (r1.2)
//.declare  (785)  rf=r size=64 type=ud align=32 words (r7.0)
//.declare  (786)  rf=r size=64 type=uq alias=+0 align=32 words (r7.0)
//.declare V0715 (789)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0716 (790)  rf=r size=8 type=q alias=V0715+0 align=4 words (r2.0)
//.declare V0719 (793)  rf=r size=8 type=d alias=V0715+0 align=4 words (r2.0)
//.declare V0722 (796)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0723 (797)  rf=r size=8 type=d alias=V0722+0 align=4 words (r2.2)
//.declare V0725 (799)  rf=r size=4 type=d align=2 words (r3.0)
//.declare V0727 (801)  rf=r size=4 type=ud alias=V0725+0 align=2 words (r3.0)
//.declare  (803)  rf=r size=64 type=ud align=32 words (r6.0)
//.declare  (804)  rf=r size=64 type=uq alias=+0 align=32 words (r6.0)
//.declare V0731 (807)  rf=r size=8 type=uq align=4 words (r1.0)
//.declare V0732 (808)  rf=r size=8 type=q alias=V0731+0 align=4 words (r1.0)
//.declare V0735 (811)  rf=r size=8 type=d alias=V0731+0 align=4 words (r1.0)
//.declare V0738 (814)  rf=r size=8 type=q align=4 words (r1.1)
//.declare V0739 (815)  rf=r size=8 type=d alias=V0738+0 align=4 words (r1.2)
//.declare V0741 (817)  rf=r size=4 type=d align=2 words (r4.8)
//.declare V0743 (819)  rf=r size=4 type=ud alias=V0741+0 align=2 words (r4.8)
//.declare  (821)  rf=r size=64 type=ud align=32 words (r3.0)
//.declare  (822)  rf=r size=64 type=uq alias=+0 align=32 words (r3.0)
//.declare V0747 (825)  rf=r size=8 type=uq align=4 words (r2.0)
//.declare V0748 (826)  rf=r size=8 type=q alias=V0747+0 align=4 words (r2.0)
//.declare V0751 (829)  rf=r size=8 type=d alias=V0747+0 align=4 words (r2.0)
//.declare V0754 (832)  rf=r size=8 type=q align=4 words (r2.1)
//.declare V0755 (833)  rf=r size=8 type=d alias=V0754+0 align=4 words (r2.2)
//.declare V0757 (835)  rf=r size=4 type=d align=2 words (r6.0)
//.declare V0759 (837)  rf=r size=4 type=ud alias=V0757+0 align=2 words (r6.0)
//.declare  (839)  rf=r size=64 type=ud align=32 words (r7.0)
//.declare  (840)  rf=r size=64 type=uq alias=+0 align=32 words (r7.0)
//.declare  (841)  rf=r size=64 type=ud align=32 words (r255.0)
//.declare  (842)  rf=r size=4 type=d alias=V0133+0 align=2 words (r2.0)
//.declare  (843)  rf=r size=4 type=d alias=V0163+0 align=2 words (r7.0)
//.declare  (844)  rf=r size=4 type=d alias=V0183+0 align=2 words (r2.4)
//.declare  (845)  rf=r size=4 type=d alias=V0199+0 align=2 words (r4.8)
//.declare  (846)  rf=r size=4 type=d alias=V0215+0 align=2 words (r1.2)
//.declare  (847)  rf=r size=4 type=d alias=V0231+0 align=2 words (r3.0)
//.declare  (848)  rf=r size=4 type=d alias=V0247+0 align=2 words (r4.14)
//.declare  (849)  rf=r size=4 type=d alias=V0263+0 align=2 words (r6.2)
//.declare  (850)  rf=r size=4 type=d alias=V0279+0 align=2 words (r3.4)
//.declare  (851)  rf=r size=4 type=d alias=V0295+0 align=2 words (r5.2)
//.declare  (852)  rf=r size=4 type=d alias=V0338+0 align=2 words (r1.2)
//.declare  (853)  rf=r size=4 type=d alias=V0354+0 align=2 words (r5.4)
//.declare  (854)  rf=r size=4 type=d alias=V0370+0 align=2 words (r3.2)
//.declare  (855)  rf=r size=4 type=d alias=V0386+0 align=2 words (r1.2)
//.declare  (856)  rf=r size=4 type=d alias=V0402+0 align=2 words (r5.4)
//.declare  (857)  rf=r size=4 type=d alias=V0418+0 align=2 words (r3.2)
//.declare  (858)  rf=r size=4 type=d alias=V0434+0 align=2 words (r1.2)
//.declare  (859)  rf=r size=4 type=d alias=V0450+0 align=2 words (r8.2)
//.declare  (860)  rf=r size=4 type=d alias=V0499+0 align=2 words (r4.10)
//.declare  (861)  rf=r size=4 type=d alias=V0515+0 align=2 words (r1.0)
//.declare  (862)  rf=r size=4 type=d alias=V0531+0 align=2 words (r3.2)
//.declare  (863)  rf=r size=4 type=d alias=V0547+0 align=2 words (r1.0)
//.declare  (864)  rf=r size=4 type=d alias=V0566+0 align=2 words (r4.10)
//.declare  (865)  rf=r size=4 type=d alias=V0582+0 align=2 words (r2.0)
//.declare  (866)  rf=r size=4 type=d alias=V0598+0 align=2 words (r1.0)
//.declare  (867)  rf=r size=4 type=d alias=V0614+0 align=2 words (r2.0)
//.declare  (868)  rf=r size=4 type=d alias=V0633+0 align=2 words (r3.2)
//.declare  (869)  rf=r size=4 type=d alias=V0649+0 align=2 words (r1.0)
//.declare  (870)  rf=r size=4 type=d alias=V0665+0 align=2 words (r2.0)
//.declare  (871)  rf=r size=4 type=d alias=V0681+0 align=2 words (r1.0)
//.declare  (872)  rf=r size=4 type=d alias=V0700+0 align=2 words (r5.2)
//.declare  (873)  rf=r size=4 type=d alias=V0716+0 align=2 words (r2.0)
//.declare  (874)  rf=r size=4 type=d alias=V0732+0 align=2 words (r1.0)
//.declare  (875)  rf=r size=4 type=d alias=V0748+0 align=2 words (r2.0)
//.declare  (876)  rf=r size=8 type=d align=32 words (r1.0)
//.declare  (877)  rf=r size=8 type=d align=8 words (r108.8)
//.declare  (878)  rf=r size=16 type=q align=8 words (r254.6)
//.declare  (879)  rf=r size=8 type=d align=8 words (r108.12)
//.declare r0 (880)  rf=r size=64 type=ud align=32 words (r0.0)
//.declare rtmp (881)  rf=r size=64 type=ud align=32 words (r255.0)
//.declare inlineRegFromTDL (882)  rf=r size=32 type=ud align=2 words (r1.0)
//.declare inlineRegExpectedLocation (883)  rf=r size=32 type=ud align=2 words (r4.0)
//.declare  (884)  rf=r size=128 type=ud align=32 words (r1.0)
//.declare  (885)  rf=r size=64 type=ud align=32 words (r3.0)
//.declare  (886)  rf=r size=32 type=ud align=2 words (r5.0)

// .inputs
// +----------+----------+--------+----------+------------------+
// | id       | type     |  bytes | at       | from             |
// +----------+----------+--------+----------+------------------+
// | V0043    | :w x 16  |   0x20 | r1       | pti[tid]+0x0     |
// | V0044    | :w x 16  |   0x20 | r2       | pti[tid]+0x40    |
// | V0045    | :w x 16  |   0x20 | r3       | pti[tid]+0x80    |
// | V0034    | :uq      |    0x8 | r4       | inline+0x0       |
// | V0035    | :uq      |    0x8 | r4+0x8   | inline+0x8       |
// | V0036    | :uq      |    0x8 | r4+0x10  | inline+0x10      |
// | V0037    | :d       |    0x4 | r4+0x18  | inline+0x18      |
// | V0038    | :d       |    0x4 | r4+0x1C  | inline+0x1C      |
// | V0046    | :uq      |    0x8 | r5       | cti+0x20         |
// | V0042    | :d x 3   |    0xC | r5+0x8   | cti+0x28         |
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
// B002: Preds:{B001},  Succs:{B003, B004}
// _main:
(W)     mov (16|M0)              r107.0<1>:ud  r0.0<1;1,0>:ud                   {Compacted}          //  ALU pipe: int; $1
(W)     or (1|M0)                cr0.0<1>:ud   cr0.0<0;1,0>:ud   0x400004C0:ud              {A@1}    // $1
(W)     cmp (16|M0)   (gt)f0.0   null<1>:d     r4.6<0;1,0>:d     0:w               {A@1}             //  ALU pipe: int; $8
(W)     shl (1|M0)               r254.0<1>:d   r107.6<0;1,0>:d   5:w               {Compacted,I@3}   //  ALU pipe: int; $2
(W)     shl (1|M0)               r1.0<1>:d     r4.7<0;1,0>:d     2:w               {$0.dst}          //  ALU pipe: int; $6
(W)     add (1|M0)               r108.8<1>:d   r254.0<0;1,0>:d   8:w               {I@2}             //  ALU pipe: int; $3
(W)     add (1|M0)               r108.9<1>:d   r254.0<0;1,0>:d   16:w                                //  ALU pipe: int; $4
(W)     add (1|M0)               r108.0<1>:d   r254.0<0;1,0>:d   24:w               {Compacted}      //  ALU pipe: int; $5
(W)     add (1|M0)               r254.1<1>:d   r1.0<0;1,0>:d     -1:w               {Compacted,I@4}  //  ALU pipe: int; $7
(W&f0.0) jmpi                                _0_010                                                  //  ALU pipe: int; $9
// B003: Preds:{B002},  Succs:{B009}
_0_011:
        mov (16|M0)              r110.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $11
        mov (16|M0)              r111.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $12
        mov (16|M0)              r112.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $13
        mov (16|M0)              r113.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $14
        mov (16|M0)              r114.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $15
        mov (16|M0)              r115.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $16
        mov (16|M0)              r116.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $17
        mov (16|M0)              r117.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $18
        mov (16|M0)              r118.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $19
        mov (16|M0)              r119.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $20
        mov (16|M0)              r120.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $21
        mov (16|M0)              r121.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $22
        mov (16|M0)              r122.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $23
        mov (16|M0)              r123.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $24
        mov (16|M0)              r124.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $25
        mov (16|M0)              r125.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $26
        mov (16|M0)              r126.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $27
        mov (16|M0)              r127.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $28
        mov (16|M0)              r128.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $29
        mov (16|M0)              r129.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $30
        mov (16|M0)              r130.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $31
        mov (16|M0)              r131.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $32
        mov (16|M0)              r132.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $33
        mov (16|M0)              r133.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $34
        mov (16|M0)              r134.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $35
        mov (16|M0)              r135.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $36
        mov (16|M0)              r136.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $37
        mov (16|M0)              r137.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $38
        mov (16|M0)              r138.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $39
        mov (16|M0)              r139.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $40
        mov (16|M0)              r140.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $41
        mov (16|M0)              r141.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $42
        mov (16|M0)              r142.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $43
        mov (16|M0)              r143.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $44
        mov (16|M0)              r144.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $45
        mov (16|M0)              r145.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $46
        mov (16|M0)              r146.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $47
        mov (16|M0)              r147.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $48
        mov (16|M0)              r148.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $49
        mov (16|M0)              r149.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $50
        mov (16|M0)              r150.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $51
        mov (16|M0)              r151.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $52
        mov (16|M0)              r152.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $53
        mov (16|M0)              r153.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $54
        mov (16|M0)              r154.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $55
        mov (16|M0)              r155.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $56
        mov (16|M0)              r156.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $57
        mov (16|M0)              r157.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $58
        mov (16|M0)              r158.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $59
        mov (16|M0)              r159.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $60
        mov (16|M0)              r160.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $61
        mov (16|M0)              r161.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $62
        mov (16|M0)              r162.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $63
        mov (16|M0)              r163.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $64
        mov (16|M0)              r164.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $65
        mov (16|M0)              r165.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $66
        mov (16|M0)              r166.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $67
        mov (16|M0)              r167.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $68
        mov (16|M0)              r168.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $69
        mov (16|M0)              r169.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $70
        mov (16|M0)              r170.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $71
        mov (16|M0)              r171.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $72
        mov (16|M0)              r172.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $73
        mov (16|M0)              r173.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $74
        mov (16|M0)              r174.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $75
        mov (16|M0)              r175.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $76
        mov (16|M0)              r176.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $77
        mov (16|M0)              r177.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $78
        mov (16|M0)              r178.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $79
        mov (16|M0)              r179.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $80
        mov (16|M0)              r180.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $81
        mov (16|M0)              r181.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $82
        mov (16|M0)              r182.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $83
        mov (16|M0)              r183.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $84
        mov (16|M0)              r184.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $85
        mov (16|M0)              r185.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $86
        mov (16|M0)              r186.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $87
        mov (16|M0)              r187.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $88
        mov (16|M0)              r188.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $89
        mov (16|M0)              r189.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $90
        mov (16|M0)              r190.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $91
        mov (16|M0)              r191.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $92
        mov (16|M0)              r192.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $93
        mov (16|M0)              r193.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $94
        mov (16|M0)              r194.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $95
        mov (16|M0)              r195.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $96
        mov (16|M0)              r196.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $97
        mov (16|M0)              r197.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $98
        mov (16|M0)              r198.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $99
        mov (16|M0)              r199.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $100
        mov (16|M0)              r200.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $101
        mov (16|M0)              r201.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $102
        mov (16|M0)              r202.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $103
        mov (16|M0)              r203.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $104
        mov (16|M0)              r204.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $105
        mov (16|M0)              r205.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $106
        mov (16|M0)              r206.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $107
        mov (16|M0)              r207.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $108
        mov (16|M0)              r208.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $109
        mov (16|M0)              r209.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $110
        mov (16|M0)              r210.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $111
        mov (16|M0)              r211.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $112
        mov (16|M0)              r212.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $113
        mov (16|M0)              r213.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $114
        mov (16|M0)              r214.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $115
        mov (16|M0)              r215.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $116
        mov (16|M0)              r216.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $117
        mov (16|M0)              r217.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $118
        mov (16|M0)              r218.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $119
        mov (16|M0)              r219.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $120
        mov (16|M0)              r220.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $121
        mov (16|M0)              r221.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $122
        mov (16|M0)              r222.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $123
        mov (16|M0)              r223.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $124
        mov (16|M0)              r224.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $125
        mov (16|M0)              r225.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $126
        mov (16|M0)              r226.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $127
        mov (16|M0)              r227.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $128
        mov (16|M0)              r228.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $129
        mov (16|M0)              r229.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $130
        mov (16|M0)              r230.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $131
        mov (16|M0)              r231.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $132
        mov (16|M0)              r232.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $133
        mov (16|M0)              r233.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $134
        mov (16|M0)              r234.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $135
        mov (16|M0)              r235.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $136
        mov (16|M0)              r236.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $137
        mov (16|M0)              r237.0<1>:d   0:w                               {Compacted}         //  ALU pipe: int; $138
(W)     jmpi                                 _0_012                                                  // $139
// B004: Preds:{B002},  Succs:{B005}
_0_010:
(W)     mul (1|M0)               acc0.0<1>:d   r254.0<0;1,0>:d   r4.12<0;1,0>:uw                     //  ALU pipe: int; $141
(W)     shl (1|M0)               r2.0<1>:q     r107.1<0;1,0>:ud  8:w                                 //  ALU pipe: int; $148
(W)     shl (1|M0)               r254.4<1>:d   r4.7<0;1,0>:d     1:w                                 //  ALU pipe: int; $145
(W)     macl (1|M0)              r1.0<1>:d     r254.0<0;1,0>:d   r4.6<0;1,0>:d    {Compacted}        //  ALU pipe: int; $143
(W)     mul (2|M0)               acc0.0<1>:d   r108.8<1;1,0>:d   r4.12<0;1,0>:uw                     //  ALU pipe: int; $160
(W)     shl (1|M0)               r4.8<1>:d     r107.1<0;1,0>:d   7:w                                 //  ALU pipe: int; $157
(W)     mov (2|M0)               r3.0<1>:d     r2.0<1;1,0>:d                    {Compacted,@5,$1.dst} //  ALU pipe: int; $149
(W)     shl (1|M0)               r4.9<1>:d     r4.6<0;1,0>:d     1:w                                 //  ALU pipe: int; $158
(W)     shl (1|M0)               r254.1<1>:q   r1.0<0;1,0>:d     1:w               {I@5}             //  ALU pipe: int; $143
(W)     macl (2|M0)              r1.0<1>:d     r108.8<1;1,0>:d   r4.6<0;1,0>:d    {Compacted}        //  ALU pipe: int; $162
(W)     mul (1|M0)               acc0.0<1>:d   r108.0<0;1,0>:d   r4.12<0;1,0>:uw                     //  ALU pipe: int; $162
(W)     and (1|M0)               r3.2<1>:d     r3.0<0;1,0>:d     -256:w               {Compacted,I@5} //  ALU pipe: int; $150
(W)     and (1|M0)               r3.3<1>:d     r3.1<0;1,0>:d     3:w                                 //  ALU pipe: int; $151
(W)     macl (1|M0)              r5.0<1>:d     r108.0<0;1,0>:d   r4.6<0;1,0>:d    {Compacted,$2.dst} //  ALU pipe: int; $164
        mov (16|M0)              r110.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $171
        mov (16|M0)              r111.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $172
        mov (16|M0)              r112.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $173
        mov (16|M0)              r113.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $174
        mov (16|M0)              r114.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $175
        mov (16|M0)              r115.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $176
        mov (16|M0)              r116.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $177
        mov (16|M0)              r117.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $178
        mov (16|M0)              r118.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $179
        mov (16|M0)              r119.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $180
        mov (16|M0)              r120.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $181
        mov (16|M0)              r121.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $182
        mov (16|M0)              r122.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $183
        mov (16|M0)              r123.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $184
        mov (16|M0)              r124.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $185
        mov (16|M0)              r125.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $186
        mov (16|M0)              r126.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $187
        mov (16|M0)              r127.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $188
        mov (16|M0)              r128.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $189
        mov (16|M0)              r129.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $190
        mov (16|M0)              r130.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $191
        mov (16|M0)              r131.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $192
        mov (16|M0)              r132.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $193
        mov (16|M0)              r133.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $194
        mov (16|M0)              r134.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $195
        mov (16|M0)              r135.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $196
        mov (16|M0)              r136.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $197
        mov (16|M0)              r137.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $198
        mov (16|M0)              r138.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $199
        mov (16|M0)              r139.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $200
        mov (16|M0)              r140.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $201
        mov (16|M0)              r141.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $202
        mov (16|M0)              r142.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $203
        mov (16|M0)              r143.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $204
        mov (16|M0)              r144.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $205
        mov (16|M0)              r145.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $206
        mov (16|M0)              r146.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $207
        mov (16|M0)              r147.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $208
        mov (16|M0)              r148.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $209
        mov (16|M0)              r149.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $210
        mov (16|M0)              r150.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $211
        mov (16|M0)              r151.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $212
        mov (16|M0)              r152.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $213
        mov (16|M0)              r153.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $214
        mov (16|M0)              r154.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $215
        mov (16|M0)              r155.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $216
        mov (16|M0)              r156.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $217
        mov (16|M0)              r157.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $218
        mov (16|M0)              r158.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $219
        mov (16|M0)              r159.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $220
        mov (16|M0)              r160.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $221
        mov (16|M0)              r161.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $222
        mov (16|M0)              r162.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $223
        mov (16|M0)              r163.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $224
        mov (16|M0)              r164.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $225
        mov (16|M0)              r165.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $226
        mov (16|M0)              r166.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $227
        mov (16|M0)              r167.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $228
        mov (16|M0)              r168.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $229
        mov (16|M0)              r169.0<1>:ud  0x0:ud                              {Compacted}       //  ALU pipe: int; $230
        mov (16|M0)              r170.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $231
        mov (16|M0)              r171.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $232
        mov (16|M0)              r172.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $233
        mov (16|M0)              r173.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $234
        mov (16|M0)              r174.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $235
        mov (16|M0)              r175.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $236
        mov (16|M0)              r176.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $237
        mov (16|M0)              r177.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $238
        mov (16|M0)              r178.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $239
        mov (16|M0)              r179.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $240
        mov (16|M0)              r180.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $241
        mov (16|M0)              r181.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $242
        mov (16|M0)              r182.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $243
        mov (16|M0)              r183.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $244
        mov (16|M0)              r184.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $245
        mov (16|M0)              r185.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $246
        mov (16|M0)              r186.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $247
        mov (16|M0)              r187.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $248
        mov (16|M0)              r188.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $249
        mov (16|M0)              r189.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $250
        mov (16|M0)              r190.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $251
        mov (16|M0)              r191.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $252
        mov (16|M0)              r192.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $253
        mov (16|M0)              r193.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $254
        mov (16|M0)              r194.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $255
        mov (16|M0)              r195.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $256
        mov (16|M0)              r196.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $257
        mov (16|M0)              r197.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $258
        mov (16|M0)              r198.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $259
        mov (16|M0)              r199.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $260
        mov (16|M0)              r200.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $261
        mov (16|M0)              r201.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $262
        mov (16|M0)              r202.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $263
        mov (16|M0)              r203.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $264
        mov (16|M0)              r204.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $265
        mov (16|M0)              r205.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $266
        mov (16|M0)              r206.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $267
        mov (16|M0)              r207.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $268
        mov (16|M0)              r208.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $269
        mov (16|M0)              r209.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $270
        mov (16|M0)              r210.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $271
        mov (16|M0)              r211.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $272
        mov (16|M0)              r212.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $273
        mov (16|M0)              r213.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $274
        mov (16|M0)              r214.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $275
        mov (16|M0)              r215.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $276
        mov (16|M0)              r216.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $277
        mov (16|M0)              r217.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $278
        mov (16|M0)              r218.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $279
        mov (16|M0)              r219.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $280
        mov (16|M0)              r220.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $281
        mov (16|M0)              r221.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $282
        mov (16|M0)              r222.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $283
        mov (16|M0)              r223.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $284
        mov (16|M0)              r224.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $285
        mov (16|M0)              r225.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $286
        mov (16|M0)              r226.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $287
        mov (16|M0)              r227.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $288
        mov (16|M0)              r228.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $289
        mov (16|M0)              r229.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $290
        mov (16|M0)              r230.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $291
        mov (16|M0)              r231.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $292
        mov (16|M0)              r232.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $293
        mov (16|M0)              r233.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $294
        mov (16|M0)              r234.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $295
        mov (16|M0)              r235.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $296
        mov (16|M0)              r236.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $297
        mov (16|M0)              r237.0<1>:f   0x0:f                               {Compacted}       //  ALU pipe: float; $298
(W)     mov (1|M0)               r108.6<1>:d   0:w                                                   //  ALU pipe: int; $299
(W)     asr (1|M0)               r108.1<1>:d   r254.4<0;1,0>:d   31:w                                //  ALU pipe: int; $146
(W)     shl (1|M0)               r254.4<1>:q   r4.8<0;1,0>:ud    1:w                                 //  ALU pipe: int; $170
(W)     add (1|M0)               r108.12<1>:d  r4.9<0;1,0>:d     -1:w                                //  ALU pipe: int; $159
(W)     add (1|M0)               r108.1<1>:q   r254.1<0;1,0>:q   r4.0<0;1,0>:q                       //  ALU pipe: int; $144
(W)     shl (1|M0)               r254.6<1>:q   r1.0<0;1,0>:d     1:w                                 //  ALU pipe: int; $164
(W)     shl (1|M0)               r254.7<1>:q   r1.1<0;1,0>:d     1:w                                 //  ALU pipe: int; $164
(W)     add (1|M0)               r254.3<1>:q   r3.1<0;1,0>:q     r4.1<0;1,0>:q                       //  ALU pipe: int; $156
(W)     shl (1|M0)               r108.2<1>:q   r5.0<0;1,0>:d     1:w                                 //  ALU pipe: int; $168
// B005: Preds:{B008, B004},  Succs:{B006, B007}
_0_013:
(W)     add (1|M0)               r254.5<1>:d   r108.6<0;1,0>:d   32:w               {I@7}            //  ALU pipe: int; $301
(W)     cmp (16|M0)   (lt)f0.1   null<1>:d     r254.5<0;1,0>:d   r4.6<0;1,0>:d    {I@1}              //  ALU pipe: int; $302
(W&~f0.1) jmpi                               _0_014                                                  //  ALU pipe: int; $303
// B006: Preds:{B005},  Succs:{B007}
_0_015:
(W)     shl (1|M0)               r1.0<1>:d     r254.5<0;1,0>:d   1:w                                 //  ALU pipe: int; $305
(W)     mov (1|M0)               r5.2<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $319
(W)     mov (1|M0)               r5.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $319
(W)     mov (1|M0)               r5.4<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $319
(W)     mov (1|M0)               r5.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $319
(W)     add (1|M0)               r2.0<1>:q     r108.1<0;1,0>:q   r1.0<0;1,0>:ud   {I@5}              //  ALU pipe: int; $307
(W)     shr (1|M0)               r1.0<1>:ud    r254.5<0;1,0>:ud  1:w                                 //  ALU pipe: int; $320
(W)     mov (1|M0)               r5.7<1>:ud    0x71F:uw                                              //  bkl2d.shape = 1x32x8; ALU pipe: int; $319
(W)     mov (1|M0)               r8.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $345
(W)     mov (1|M0)               r8.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $345
(W)     shr (1|M0)               r3.0<1>:ud    r2.0<0;1,0>:ud    1:w               {I@5}             //  ALU pipe: int; $317
(W)     mul (1|M0)               acc0.0<1>:ud  r1.0<0;1,0>:ud    r254.8<0;1,0>:uw {I@5}              //  ALU pipe: int; $321
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $311
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                                         //  ALU pipe: int; $310
(W)     macl (1|M0)              r6.0<1>:ud    r1.0<0;1,0>:ud    r254.4<0;1,0>:ud {Compacted}        //  ALU pipe: int; $322
(W)     mul (1|M0)               acc0.0<1>:ud  r1.0<0;1,0>:ud    r254.8<0;1,0>:uw                    //  ALU pipe: int; $322
(W)     and (1|M0)               r5.5<1>:ud    r3.0<0;1,0>:d     31:w               {I@6}            //  ALU pipe: int; $318
(W)     mov (1|M0)               r8.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $345
(W)     mach (1|M0)              r3.0<1>:d     r1.0<0;1,0>:ud    r254.4<0;1,0>:ud                    //  ALU pipe: int; 
(W)     mul (1|M0)               acc0.0<1>:d   r1.0<0;1,0>:ud    r108.2<0;1,0>:uw                    //  ALU pipe: int; $323
(W)     mov (1|M0)               r5.0<1>:uq    r2.1<0;1,0>:q                    {I@7}                //  ALU pipe: int; $319
(W)     mov (1|M0)               r8.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $345
(W)     macl (1|M0)              r2.0<1>:d     r1.0<0;1,0>:ud    r108.1<0;1,0>:d                     //  ALU pipe: int; $324
(W)     mov (1|M0)               r8.7<1>:ud    0x71F:uw                                              //  bkl2d.shape = 1x32x8; ALU pipe: int; $345
        load_block2d.ugm.d16.a64.ca.ca (1|M0)  null:0 [r5:1]       {I@4,$4} // ex_desc:0x0; desc:0x2080203 // $319
(W)     add (1|M0)               r3.0<1>:d     r3.0<0;1,0>:d     r2.0<0;1,0>:d    {Compacted,I@2}    //  ALU pipe: int; $324
(W)     mov (1|M0)               r6.1<1>:d     r3.0<0;1,0>:d                    {Compacted,I@1}      //  ALU pipe: int; $327
(W)     shl (1|M0)               r4.4<1>:q     r6.0<0;1,0>:q     1:w               {I@1}             //  ALU pipe: int; $332
(W)     add (1|M0)               r7.0<1>:q     r254.3<0;1,0>:q   r4.4<0;1,0>:q    {Compacted,I@1}    //  ALU pipe: int; $333
        sync.nop                             null                             {Compacted,I@1}        // $336
(W)     mov (1|M0)               r5.1<1>:f     r7.1<0;1,0>:f                    {$4.src}             //  ALU pipe: float; $336
(W)     and (1|M0)               r5.0<1>:d     r7.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $337
(W)     shr (1|M0)               r5.2<1>:ud    r7.0<0;1,0>:ud    1:w                                 //  ALU pipe: int; $343
(W)     mov (1|M0)               r8.0<1>:uq    r5.0<0;1,0>:q                    {A@1}                //  ALU pipe: int; $345
(W)     and (1|M0)               r8.5<1>:ud    r5.2<0;1,0>:d     31:w               {I@2}            //  ALU pipe: int; $344
        load_block2d.ugm.d16.a64.ca.ca (1|M0)  null:0 [r8:1]       {I@1,$5} // ex_desc:0x0; desc:0x2080203 // $345
// B007: Preds:{B006, B005},  Succs:{B008, B009}
_0_014:
(W)     shl (1|M0)               r1.0<1>:d     r108.6<0;1,0>:d   1:w               {Compacted}       //  ALU pipe: int; $347
(W)     mov (1|M0)               r15.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $578
(W)     mov (1|M0)               r15.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $578
(W)     mov (1|M0)               r15.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $578
(W)     mov (1|M0)               r15.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $578
(W)     add (1|M0)               r2.0<1>:q     r4.0<0;1,0>:q     r1.0<0;1,0>:ud   {I@5}              //  ALU pipe: int; $349
(W)     mov (1|M0)               r15.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $578
(W)     mov (1|M0)               r9.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $571
(W)     mov (1|M0)               r9.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $571
(W)     mov (1|M0)               r9.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $571
(W)     add (1|M0)               r2.1<1>:q     r2.0<0;1,0>:q     r254.1<0;1,0>:q  {Compacted,I@5}    //  ALU pipe: int; $350
(W)     add (1|M0)               r1.0<1>:q     r2.0<0;1,0>:q     r254.6<0;1,0>:q                     //  ALU pipe: int; $374
(W)     add (1|M0)               r4.6<1>:q     r2.0<0;1,0>:q     r254.7<0;1,0>:q                     //  ALU pipe: int; $398
(W)     add (1|M0)               r3.1<1>:q     r2.0<0;1,0>:q     r108.2<0;1,0>:q  {Compacted}        //  ALU pipe: int; $422
(W)     mov (1|M0)               r9.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $571
(W)     mov (1|M0)               r2.2<1>:uq    r2.1<0;1,0>:uq                   {I@5}                //  ALU pipe: int; $351
(W)     mov (1|M0)               r1.1<1>:uq    r1.0<0;1,0>:uq                   {Compacted,I@5}      //  ALU pipe: int; $375
(W)     add (1|M0)               r6.1<1>:q     r4.6<0;1,0>:q     32:w               {I@5}            //  ALU pipe: int; $410
(W)     add (1|M0)               r4.4<1>:q     r2.1<0;1,0>:q     32:w                                //  ALU pipe: int; $362
(W)     mov (1|M0)               r4.7<1>:uq    r4.6<0;1,0>:uq                                        //  ALU pipe: int; $399
(W)     shr (1|M0)               r3.0<1>:ud    r2.4<0;1,0>:ud    1:w               {I@5}             //  ALU pipe: int; $360
(W)     and (1|M0)               r1.4<1>:d     r1.2<0;1,0>:d     -64:w               {I@5}           //  ALU pipe: int; $378
(W)     shr (1|M0)               r6.1<1>:ud    r1.2<0;1,0>:ud    1:w                                 //  ALU pipe: int; $384
(W)     shr (1|M0)               r1.2<1>:ud    r6.2<0;1,0>:ud    1:w               {I@6}             //  ALU pipe: int; $420
(W)     and (1|M0)               r2.6<1>:d     r2.4<0;1,0>:d     -64:w                               //  ALU pipe: int; $354
(W)     and (1|M0)               r108.13<1>:d  r3.0<0;1,0>:d     31:w               {I@5}            //  ALU pipe: int; $361
(W)     add (1|M0)               r3.0<1>:q     r1.0<0;1,0>:q     32:w               {Compacted}      //  ALU pipe: int; $386
(W)     shr (1|M0)               r5.2<1>:ud    r4.14<0;1,0>:ud   1:w                                 //  ALU pipe: int; $408
(W)     shr (1|M0)               r5.0<1>:ud    r4.8<0;1,0>:ud    1:w                                 //  ALU pipe: int; $372
(W)     mov (1|M0)               r3.2<1>:uq    r3.1<0;1,0>:uq                                        //  ALU pipe: int; $423
(W)     mov (1|M0)               r5.1<1>:d     r4.15<0;1,0>:d                                        //  ALU pipe: int; $401
(W)     and (1|M0)               r2.2<1>:d     r3.0<0;1,0>:d     -64:w               {Compacted,I@5} //  ALU pipe: int; $390
(W)     shr (1|M0)               r2.4<1>:ud    r3.0<0;1,0>:ud    1:w                                 //  ALU pipe: int; $396
(W)     and (1|M0)               r3.0<1>:d     r1.2<0;1,0>:d     31:w               {Compacted}      //  ALU pipe: int; $421
(W)     shr (1|M0)               r1.2<1>:ud    r108.6<0;1,0>:ud  1:w                                 //  ALU pipe: int; $446
(W)     mov (1|M0)               r2.3<1>:d     r3.1<0;1,0>:d                                         //  ALU pipe: int; $389
(W)     and (1|M0)               r7.1<1>:d     r5.2<0;1,0>:d     31:w               {I@7}            //  ALU pipe: int; $409
(W)     and (1|M0)               r6.0<1>:d     r5.0<0;1,0>:d     31:w               {Compacted,I@7}  //  ALU pipe: int; $373
(W)     add (1|M0)               r5.1<1>:q     r3.1<0;1,0>:q     32:w                                //  ALU pipe: int; $434
(W)     mul (1|M0)               acc0.0<1>:ud  r1.2<0;1,0>:ud    r254.8<0;1,0>:uw {I@5}              //  ALU pipe: int; $447
(W)     or (1|M0)                r3.1<1>:d     r1.2<0;1,0>:d     8:w                                 //  ALU pipe: int; $460
(W)     and (1|M0)               r5.0<1>:d     r4.14<0;1,0>:d    -64:w               {Compacted}     //  ALU pipe: int; $402
(W)     macl (1|M0)              r2.0<1>:ud    r1.2<0;1,0>:ud    r254.4<0;1,0>:ud {Compacted}        //  ALU pipe: int; $448
(W)     mul (1|M0)               acc0.0<1>:ud  r1.2<0;1,0>:ud    r254.8<0;1,0>:uw                    //  ALU pipe: int; $448
(W)     and (1|M0)               r4.10<1>:d    r4.8<0;1,0>:d     -64:w                               //  ALU pipe: int; $366
(W)     mov (1|M0)               r2.7<1>:d     r2.5<0;1,0>:d                                         //  ALU pipe: int; $353
(W)     mach (1|M0)              r9.0<1>:d     r1.2<0;1,0>:ud    r254.4<0;1,0>:ud                    //  ALU pipe: int; 
(W)     mul (1|M0)               acc0.0<1>:d   r1.2<0;1,0>:ud    r108.2<0;1,0>:uw                    //  ALU pipe: int; $449
(W)     and (1|M0)               r4.8<1>:d     r2.4<0;1,0>:d     31:w                                //  ALU pipe: int; $397
(W)     mov (1|M0)               r1.5<1>:d     r1.3<0;1,0>:d                                         //  ALU pipe: int; $377
(W)     macl (1|M0)              r10.0<1>:d    r1.2<0;1,0>:ud    r108.1<0;1,0>:d                     //  ALU pipe: int; $450
(W)     mul (1|M0)               acc0.0<1>:ud  r3.1<0;1,0>:ud    r254.8<0;1,0>:uw {I@7}              //  ALU pipe: int; $461
(W)     mov (1|M0)               r4.11<1>:d    r4.9<0;1,0>:d                                         //  ALU pipe: int; $365
(W)     mov (1|M0)               r4.13<1>:d    r5.3<0;1,0>:d                                         //  ALU pipe: int; $437
(W)     macl (1|M0)              r11.0<1>:ud   r3.1<0;1,0>:ud    r254.4<0;1,0>:ud {Compacted,$3.src} //  ALU pipe: int; $462
(W)     mul (1|M0)               acc0.0<1>:ud  r3.1<0;1,0>:ud    r254.8<0;1,0>:uw                    //  ALU pipe: int; $462
(W)     add (1|M0)               r9.0<1>:d     r9.0<0;1,0>:d     r10.0<0;1,0>:d   {Compacted,I@6}    //  ALU pipe: int; $450
(W)     and (1|M0)               r4.12<1>:d    r5.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $438
(W)     mach (1|M0)              r12.0<1>:d    r3.1<0;1,0>:ud    r254.4<0;1,0>:ud                    //  ALU pipe: int; 
(W)     mul (1|M0)               acc0.0<1>:d   r3.1<0;1,0>:ud    r108.2<0;1,0>:uw                    //  ALU pipe: int; $463
(W)     shr (1|M0)               r4.9<1>:ud    r5.2<0;1,0>:ud    1:w                                 //  ALU pipe: int; $444
(W)     mov (1|M0)               r2.1<1>:d     r9.0<0;1,0>:d                    {Compacted,I@5}      //  ALU pipe: int; $453
(W)     macl (1|M0)              r13.0<1>:d    r3.1<0;1,0>:ud    r108.1<0;1,0>:d                     //  ALU pipe: int; $464
(W)     and (1|M0)               r1.0<1>:d     r6.2<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $414
(W)     shr (1|M0)               r7.2<1>:ud    r3.4<0;1,0>:ud    1:w                                 //  ALU pipe: int; $432
(W)     and (1|M0)               r7.0<1>:d     r6.1<0;1,0>:d     31:w               {Compacted}      //  ALU pipe: int; $385
(W)     shl (1|M0)               r1.3<1>:q     r2.0<0;1,0>:q     1:w               {I@5}             //  ALU pipe: int; $458
(W)     add (1|M0)               r12.0<1>:d    r12.0<0;1,0>:d    r13.0<0;1,0>:d   {Compacted,I@5}    //  ALU pipe: int; $464
(W)     mov (1|M0)               r1.1<1>:d     r6.3<0;1,0>:d                                         //  ALU pipe: int; $413
(W)     and (1|M0)               r8.0<1>:d     r7.2<0;1,0>:d     31:w               {Compacted,@5,$5.src} //  ALU pipe: int; $433
(W)     mov (1|M0)               r9.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $571
(W)     add (1|M0)               r3.1<1>:q     r1.3<0;1,0>:q     r4.1<0;1,0>:q    {I@5}              //  ALU pipe: int; $459
(W)     mov (1|M0)               r11.1<1>:d    r12.0<0;1,0>:d                   {Compacted,I@5}      //  ALU pipe: int; $467
(W)     mov (1|M0)               r3.7<1>:d     r3.5<0;1,0>:d                                         //  ALU pipe: int; $425
(W)     and (1|M0)               r3.6<1>:d     r3.4<0;1,0>:d     -64:w                               //  ALU pipe: int; $426
(W)     and (1|M0)               r6.1<1>:d     r4.9<0;1,0>:d     31:w                                //  ALU pipe: int; $445
(W)     add (1|M0)               r2.2<1>:q     r3.1<0;1,0>:q     r254.4<0;1,0>:q  {I@5}              //  ALU pipe: int; $474
(W)     shl (1|M0)               r4.7<1>:q     r11.0<0;1,0>:q    1:w               {I@5}             //  ALU pipe: int; $472
(W)     mov (1|M0)               r17.2<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $570
(W)     mov (1|M0)               r17.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $570
(W)     mov (1|M0)               r17.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $570
(W)     mov (1|M0)               r1.1<1>:uq    r2.2<0;1,0>:uq                   {I@5}                //  ALU pipe: int; $475
(W)     add (1|M0)               r2.0<1>:q     r4.7<0;1,0>:q     r4.1<0;1,0>:q    {Compacted,I@5}    //  ALU pipe: int; $473
(W)     add (1|M0)               r3.1<1>:q     r2.2<0;1,0>:q     64:w                                //  ALU pipe: int; $498
(W)     mov (1|M0)               r17.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $570
(W)     mov (1|M0)               r18.2<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $572
(W)     mov (1|M0)               r1.7<1>:d     r1.3<0;1,0>:d                    {I@5}                //  ALU pipe: int; $477
(W)     add (1|M0)               r5.1<1>:q     r2.0<0;1,0>:q     r254.4<0;1,0>:q  {Compacted,I@5}    //  ALU pipe: int; $486
(W)     and (1|M0)               r1.6<1>:d     r1.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $478
(W)     shr (1|M0)               r2.8<1>:ud    r1.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $484
(W)     mov (1|M0)               r3.5<1>:d     r3.3<0;1,0>:d                    {I@7}                //  ALU pipe: int; $501
(W)     and (1|M0)               r3.4<1>:d     r3.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $502
(W)     mov (1|M0)               r5.2<1>:uq    r5.1<0;1,0>:uq                   {I@5}                //  ALU pipe: int; $487
(W)     add (1|M0)               r1.1<1>:q     r5.1<0;1,0>:q     64:w                                //  ALU pipe: int; $510
(W)     add (1|M0)               r8.1<1>:q     r5.1<0;1,0>:q     192:w                               //  ALU pipe: int; $558
(W)     mov (1|M0)               r9.0<1>:uq    r1.3<0;1,0>:q                    {I@7}                //  ALU pipe: int; $571
(W)     and (1|M0)               r9.5<1>:ud    r2.8<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $485
(W)     mov (1|M0)               r5.7<1>:d     r5.5<0;1,0>:d                    {I@5}                //  ALU pipe: int; $489
(W)     and (1|M0)               r5.6<1>:d     r5.4<0;1,0>:d     -64:w                               //  ALU pipe: int; $490
(W)     shr (1|M0)               r6.2<1>:ud    r5.4<0;1,0>:ud    2:w                                 //  ALU pipe: int; $496
(W)     mov (1|M0)               r1.9<1>:d     r1.3<0;1,0>:d                    {I@7}                //  ALU pipe: int; $513
(W)     and (1|M0)               r1.8<1>:d     r1.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $514
(W)     shr (1|M0)               r2.0<1>:ud    r1.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $520
(W)     add (1|M0)               r5.2<1>:q     r2.2<0;1,0>:q     128:w                               //  ALU pipe: int; $522
(W)     add (1|M0)               r1.1<1>:q     r2.2<0;1,0>:q     192:w                               //  ALU pipe: int; $546
(W)     and (1|M0)               r10.5<1>:ud   r6.2<0;1,0>:d     15:w               {I@6}            //  ALU pipe: int; $497
(W)     mov (1|M0)               r6.3<1>:f     r8.3<0;1,0>:f                                         //  ALU pipe: float; $561
(W)     shr (1|M0)               r6.4<1>:ud    r8.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $568
(W)     shr (1|M0)               r6.2<1>:ud    r5.4<0;1,0>:ud    2:w               {I@4}             //  ALU pipe: int; $532
(W)     mov (1|M0)               r1.11<1>:d    r1.3<0;1,0>:d                    {I@4}                //  ALU pipe: int; $549
(W)     and (1|M0)               r1.10<1>:d    r1.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $550
(W)     shr (1|M0)               r7.2<1>:ud    r1.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $556
(W)     shr (1|M0)               r4.9<1>:ud    r3.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $508
(W)     and (1|M0)               r13.5<1>:ud   r6.2<0;1,0>:d     15:w               {I@5}            //  ALU pipe: int; $533
(W)     and (1|M0)               r6.2<1>:d     r8.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $562
(W)     mov (1|M0)               r15.0<1>:uq   r1.5<0;1,0>:q                    {I@5}                //  ALU pipe: int; $578
(W)     and (1|M0)               r15.5<1>:ud   r7.2<0;1,0>:d     15:w               {I@5}            //  ALU pipe: int; $557
(W)     mov (1|M0)               r5.9<1>:d     r5.5<0;1,0>:d                                         //  ALU pipe: int; $525
(W)     and (1|M0)               r5.8<1>:d     r5.4<0;1,0>:d     -64:w                               //  ALU pipe: int; $526
        load_block2d.ugm.d32.a64 (1|M0)  r23:8  [r9:1]             {$6} // ex_desc:0x0; desc:0x2800403 // $571
(W)     mov (1|M0)               r18.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $572
        load_block2d.ugm.d32.a64 (1|M0)  r75:8  [r15:1]            {I@4,$7} // ex_desc:0x0; desc:0x2800403 // $578
(W)     mov (1|M0)               r18.4<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $572
(W)     mov (1|M0)               r18.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $572
(W)     mov (1|M0)               r18.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $572
(W)     mov (1|M0)               r16.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $579
(W)     mov (1|M0)               r16.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $579
(W)     mov (1|M0)               r16.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $579
(W)     mov (1|M0)               r16.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $579
(W)     mov (1|M0)               r16.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $579
(W)     mov (2|M0)               r17.4<1>:ud   r108.12<1;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $570
(W)     mov (1|M0)               r18.5<1>:ud   r6.0<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $572
(W)     mov (1|M0)               r17.0<1>:uq   r2.3<0;1,0>:q                                         //  ALU pipe: int; $570
(W)     mov (1|M0)               r18.0<1>:uq   r4.5<0;1,0>:q                                         //  ALU pipe: int; $572
(W)     mov (1|M0)               r10.0<1>:uq   r5.3<0;1,0>:q                                         //  ALU pipe: int; $573
(W)     and (1|M0)               r16.5<1>:ud   r6.4<0;1,0>:d     15:w                                //  ALU pipe: int; $569
(W)     add (1|M0)               r3.1<1>:q     r5.1<0;1,0>:q     128:w                               //  ALU pipe: int; $534
(W)     mov (1|M0)               r16.0<1>:uq   r6.1<0;1,0>:q                    {F@1}                //  ALU pipe: int; $579
(W)     mov (1|M0)               r15.0<1>:uq   r5.0<0;1,0>:q                    {$7.src}             //  ALU pipe: int; $582
(W)     mov (1|M0)               r15.2<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $582
(W)     mov (1|M0)               r15.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $582
(W)     mov (1|M0)               r15.4<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $582
(W)     mov (1|M0)               r15.5<1>:ud   r7.1<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $582
(W)     mov (1|M0)               r15.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $582
(W)     mov (1|M0)               r15.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $582
(W)     mov (1|M0)               r11.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $574
(W)     mov (1|M0)               r11.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $574
(W)     mov (1|M0)               r11.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $574
(W)     mov (1|M0)               r11.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $574
(W)     mov (1|M0)               r11.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $574
(W)     mov (1|M0)               r13.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $576
(W)     mov (1|M0)               r13.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $576
(W)     mov (1|M0)               r13.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $576
(W)     mov (1|M0)               r13.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $576
(W)     mov (1|M0)               r13.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $576
(W)     mov (1|M0)               r11.0<1>:uq   r3.2<0;1,0>:q                                         //  ALU pipe: int; $574
(W)     and (1|M0)               r11.5<1>:ud   r4.9<0;1,0>:d     15:w                                //  ALU pipe: int; $509
(W)     mov (1|M0)               r5.5<1>:ud    r8.0<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $584
(W)     mov (1|M0)               r5.4<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $584
(W)     mov (1|M0)               r9.0<1>:uq    r1.2<0;1,0>:q                    {$6.src}             //  ALU pipe: int; $580
(W)     mov (1|M0)               r9.2<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $580
(W)     mov (1|M0)               r9.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $580
(W)     mov (1|M0)               r9.4<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $580
(W)     mov (1|M0)               r9.5<1>:ud    r7.0<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $580
(W)     mov (1|M0)               r9.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $580
(W)     mov (1|M0)               r9.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $580
(W)     mov (1|M0)               r13.0<1>:uq   r5.4<0;1,0>:q                                         //  ALU pipe: int; $576
(W)     mov (1|M0)               r5.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $584
(W)     mov (1|M0)               r5.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $584
(W)     mov (1|M0)               r5.2<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $584
(W)     mov (1|M0)               r5.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $584
(W)     mov (1|M0)               r5.0<1>:uq    r3.3<0;1,0>:q                                         //  ALU pipe: int; $584
        load_block2d.ugm.d16.a64 (1|M0)  r19:4  [r17:1]            {$8} // ex_desc:0x0; desc:0x2400203 // $570
        load_block2d.ugm.d16.a64 (1|M0)  r31:4  [r18:1]            {$9} // ex_desc:0x0; desc:0x2400203 // $572
        load_block2d.ugm.d32.a64 (1|M0)  r83:8  [r16:1]            {$10} // ex_desc:0x0; desc:0x2800403 // $579
        load_block2d.ugm.d16.a64 (1|M0)  r99:4  [r15:1]            {$11} // ex_desc:0x0; desc:0x2400203 // $582
        load_block2d.ugm.d32.a64 (1|M0)  r43:8  [r11:1]            {$12} // ex_desc:0x0; desc:0x2800403 // $574
        load_block2d.ugm.d16.a64 (1|M0)  r95:4  [r9:1]             {I@7,$13} // ex_desc:0x0; desc:0x2400203 // $580
        load_block2d.ugm.d32.a64 (1|M0)  r59:8  [r13:1]            {I@6,$14} // ex_desc:0x0; desc:0x2800403 // $576
        load_block2d.ugm.d16.a64 (1|M0)  r15:4  [r5:1]             {I@1,$15} // ex_desc:0x0; desc:0x2400203 // $584
(W)     mov (1|M0)               r10.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $573
(W)     mov (1|M0)               r10.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $573
(W)     mov (1|M0)               r10.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $573
(W)     mov (1|M0)               r10.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $573
(W)     mov (1|M0)               r10.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $573
(W)     mov (1|M0)               r3.9<1>:d     r3.3<0;1,0>:d                                         //  ALU pipe: int; $537
(W)     and (1|M0)               r3.8<1>:d     r3.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $538
(W)     shr (1|M0)               r4.9<1>:ud    r3.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $544
(W)     and (1|M0)               r12.5<1>:ud   r2.0<0;1,0>:d     15:w                                //  ALU pipe: int; $521
        load_block2d.ugm.d32.a64 (1|M0)  r35:8  [r10:1]            {I@5,$16} // ex_desc:0x0; desc:0x2800403 // $573
(W)     mov (1|M0)               r12.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $575
(W)     mov (1|M0)               r12.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $575
(W)     mov (1|M0)               r12.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $575
(W)     mov (1|M0)               r12.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $575
(W)     mov (1|M0)               r12.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $575
(W)     mov (1|M0)               r14.2<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $577
(W)     mov (1|M0)               r14.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $577
(W)     mov (1|M0)               r14.4<1>:ud   r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $577
(W)     mov (1|M0)               r14.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $577
(W)     mov (1|M0)               r14.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $577
(W)     mov (1|M0)               r12.0<1>:uq   r1.4<0;1,0>:q                                         //  ALU pipe: int; $575
(W)     mov (1|M0)               r2.0<1>:uq    r1.0<0;1,0>:q                                         //  ALU pipe: int; $583
(W)     mov (1|M0)               r10.0<1>:uq   r2.1<0;1,0>:q                    {$16.src}            //  ALU pipe: int; $581
(W)     mov (1|M0)               r14.0<1>:uq   r3.4<0;1,0>:q                                         //  ALU pipe: int; $577
(W)     and (1|M0)               r14.5<1>:ud   r4.9<0;1,0>:d     15:w                                //  ALU pipe: int; $545
(W)     mov (1|M0)               r1.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $585
(W)     mov (1|M0)               r1.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $585
(W)     mov (1|M0)               r2.4<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $583
(W)     mov (1|M0)               r2.5<1>:ud    r3.0<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $583
(W)     mov (1|M0)               r1.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $585
(W)     mov (1|M0)               r1.2<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $585
(W)     mov (1|M0)               r2.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $583
(W)     mov (1|M0)               r2.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $583
(W)     mov (1|M0)               r1.4<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $585
(W)     mov (1|M0)               r1.5<1>:ud    r6.1<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $585
(W)     mov (1|M0)               r10.2<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $581
(W)     mov (1|M0)               r10.3<1>:ud   7:w                                                   //  blk2d.heightM1; ALU pipe: int; $581
(W)     mov (1|M0)               r10.4<1>:ud   r108.12<0;1,0>:d                                      //  blk2d.pitchM1; ALU pipe: int; $581
(W)     mov (1|M0)               r10.5<1>:ud   r4.8<0;1,0>:d                                         //  blk2d.X; ALU pipe: int; $581
(W)     mov (1|M0)               r10.6<1>:ud   0:w                                                   //  blk2d.Y; ALU pipe: int; $581
(W)     mov (1|M0)               r10.7<1>:ud   0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $581
(W)     mov (1|M0)               r1.0<1>:uq    r4.6<0;1,0>:q                                         //  ALU pipe: int; $585
(W)     mov (1|M0)               r2.2<1>:ud    r108.12<0;1,0>:d                                      //  blk2d.widthM1; ALU pipe: int; $583
(W)     mov (1|M0)               r2.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $583
        load_block2d.ugm.d32.a64 (1|M0)  r51:8  [r12:1]            {$17} // ex_desc:0x0; desc:0x2800403 // $575
        load_block2d.ugm.d32.a64 (1|M0)  r67:8  [r14:1]            {$18} // ex_desc:0x0; desc:0x2800403 // $577
        load_block2d.ugm.d16.a64 (1|M0)  r11:4  [r10:1]            {I@4,$19} // ex_desc:0x0; desc:0x2400203 // $581
        load_block2d.ugm.d16.a64 (1|M0)  r103:4 [r1:1]             {I@3,$20} // ex_desc:0x0; desc:0x2400203 // $585
        load_block2d.ugm.d16.a64 (1|M0)  r91:4  [r2:1]             {I@1,$21} // ex_desc:0x0; desc:0x2400203 // $583
        sync.allwr                           ($3,$7,$8,$11,$12,$13,$14,$15)                          // $586
        dpas.8x8 (16|M0)         r110:f        r110:f            r23:bf            r19.0:bf         {Atomic,Compacted,$6.dst} // $586
        dpas.8x8 (16|M0)         r134:f        r134:f            r75:bf            r19.0:bf         {Atomic,Compacted} // $592
        dpas.8x8 (16|M0)         r174:f        r174:f            r23:bf            r99.0:bf         {Atomic,Compacted} // $602
        dpas.8x8 (16|M0)         r198:f        r198:f            r75:bf            r99.0:bf         {Atomic,Compacted} // $608
        dpas.8x8 (16|M0)         r118:f        r118:f            r43:bf            r19.0:bf         {Atomic,Compacted} // $588
        dpas.8x8 (16|M0)         r182:f        r182:f            r43:bf            r99.0:bf         {Atomic,Compacted} // $604
        dpas.8x8 (16|M0)         r142:f        r142:f            r23:bf            r95.0:bf         {Atomic,Compacted} // $594
        dpas.8x8 (16|M0)         r150:f        r150:f            r43:bf            r95.0:bf         {Atomic,Compacted} // $596
        dpas.8x8 (16|M0)         r166:f        r166:f            r75:bf            r95.0:bf         {Atomic,Compacted} // $600
        dpas.8x8 (16|M0)         r126:f        r126:f            r59:bf            r19.0:bf         {Atomic,Compacted} // $590
        dpas.8x8 (16|M0)         r158:f        r158:f            r59:bf            r95.0:bf         {Atomic,Compacted} // $598
        dpas.8x8 (16|M0)         r190:f        r190:f            r59:bf            r99.0:bf         {Atomic,Compacted} // $606
        dpas.8x8 (16|M0)         r206:f        r206:f            r23:bf            r15.0:bf         {Atomic,Compacted} // $610
        dpas.8x8 (16|M0)         r214:f        r214:f            r43:bf            r15.0:bf         {Atomic,Compacted} // $612
        dpas.8x8 (16|M0)         r222:f        r222:f            r59:bf            r15.0:bf         {Atomic,Compacted} // $614
        dpas.8x8 (16|M0)         r230:f        r230:f            r75:bf            r15.0:bf         {Compacted,$3} // $616
        sync.allwr                           ($3,$10,$16,$17,$18,$19,$20,$21)                        // $587
        dpas.8x8 (16|M0)         r110:f        r110:f            r35:bf            r31.0:bf         {Atomic,Compacted,$9.dst} // $587
        dpas.8x8 (16|M0)         r134:f        r134:f            r83:bf            r31.0:bf         {Atomic,Compacted} // $593
        dpas.8x8 (16|M0)         r118:f        r118:f            r51:bf            r31.0:bf         {Atomic,Compacted} // $589
        dpas.8x8 (16|M0)         r126:f        r126:f            r67:bf            r31.0:bf         {Atomic,Compacted} // $591
        dpas.8x8 (16|M0)         r142:f        r142:f            r35:bf            r11.0:bf         {Atomic,Compacted} // $595
        dpas.8x8 (16|M0)         r150:f        r150:f            r51:bf            r11.0:bf         {Atomic,Compacted} // $597
        dpas.8x8 (16|M0)         r158:f        r158:f            r67:bf            r11.0:bf         {Atomic,Compacted} // $599
        dpas.8x8 (16|M0)         r166:f        r166:f            r83:bf            r11.0:bf         {Atomic,Compacted} // $601
        dpas.8x8 (16|M0)         r206:f        r206:f            r35:bf            r103.0:bf        {Atomic,Compacted} // $611
        dpas.8x8 (16|M0)         r214:f        r214:f            r51:bf            r103.0:bf        {Atomic,Compacted} // $613
        dpas.8x8 (16|M0)         r222:f        r222:f            r67:bf            r103.0:bf        {Atomic,Compacted} // $615
        dpas.8x8 (16|M0)         r230:f        r230:f            r83:bf            r103.0:bf        {Atomic,Compacted} // $617
        dpas.8x8 (16|M0)         r174:f        r174:f            r35:bf            r91.0:bf         {Atomic,Compacted} // $603
        dpas.8x8 (16|M0)         r182:f        r182:f            r51:bf            r91.0:bf         {Atomic,Compacted} // $605
        dpas.8x8 (16|M0)         r190:f        r190:f            r67:bf            r91.0:bf         {Atomic,Compacted} // $607
        dpas.8x8 (16|M0)         r198:f        r198:f            r83:bf            r91.0:bf         {Compacted,$3} // $609
(W&~f0.1) jmpi                               _0_012                                                  //  ALU pipe: int; $618
// B008: Preds:{B007},  Succs:{B005}
_0_017:
(W)     mov (1|M0)               r108.6<1>:d   r254.5<0;1,0>:d                                       //  ALU pipe: int; $620
(W)     jmpi                                 _0_013                                                  // $621
// B009: Preds:{B007, B003},  Succs:{}
_0_012:
(W)     shl (1|M0)               r1.0<1>:d     r107.1<0;1,0>:d   6:w               {Compacted}       //  ALU pipe: int; $624
(W)     mul (1|M0)               acc0.0<1>:d   r254.0<0;1,0>:d   r4.14<0;1,0>:uw                     //  ALU pipe: int; $628
(W)     mov (1|M0)               r7.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $643
(W)     mov (1|M0)               r7.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $643
(W)     macl (1|M0)              r5.0<1>:d     r254.0<0;1,0>:d   r4.7<0;1,0>:d    {Compacted,$2.dst} //  ALU pipe: int; $630
(W)     shl (1|M0)               r2.0<1>:q     r1.0<0;1,0>:ud    2:w               {I@5}             //  ALU pipe: int; $626
(W)     mov (1|M0)               r7.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $643
(W)     mov (1|M0)               r7.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $643
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $643
(W)     shl (1|M0)               r3.1<1>:q     r5.0<0;1,0>:d     2:w               {@5,$1.dst}       //  ALU pipe: int; $630
(W)     add (1|M0)               r3.0<1>:q     r2.0<0;1,0>:q     r4.2<0;1,0>:q    {Compacted,I@5}    //  ALU pipe: int; $627
(W)     mov (1|M0)               r5.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $656
(W)     mov (1|M0)               r5.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $656
(W)     mov (1|M0)               r5.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $656
(W)     mov (1|M0)               r5.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $656
(W)     add (1|M0)               r4.4<1>:q     r3.0<0;1,0>:q     r3.1<0;1,0>:q    {I@5}              //  ALU pipe: int; $631
(W)     mov (1|M0)               r5.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $656
(W)     mov (1|M0)               r2.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $669
(W)     mov (1|M0)               r2.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $669
(W)     mov (1|M0)               r2.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $669
(W)     mov (1|M0)               r4.5<1>:uq    r4.4<0;1,0>:uq                   {I@5}                //  ALU pipe: int; $632
(W)     add (1|M0)               r1.0<1>:q     r4.4<0;1,0>:q     64:w               {Compacted}      //  ALU pipe: int; $644
(W)     add (1|M0)               r3.1<1>:q     r4.4<0;1,0>:q     128:w                               //  ALU pipe: int; $657
(W)     mov (1|M0)               r2.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $669
(W)     mov (1|M0)               r2.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $669
(W)     mov (1|M0)               r4.13<1>:d    r4.11<0;1,0>:d                   {I@5}                //  ALU pipe: int; $634
(W)     and (1|M0)               r4.12<1>:d    r4.10<0;1,0>:d    -64:w                               //  ALU pipe: int; $635
(W)     shr (1|M0)               r6.0<1>:ud    r4.10<0;1,0>:ud   2:w                                 //  ALU pipe: int; $641
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@7}                //  ALU pipe: int; $647
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $648
(W)     shr (1|M0)               r2.0<1>:ud    r1.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $654
(W)     mov (1|M0)               r3.5<1>:d     r3.3<0;1,0>:d                    {I@7}                //  ALU pipe: int; $660
(W)     and (1|M0)               r3.4<1>:d     r3.2<0;1,0>:d     -64:w                               //  ALU pipe: int; $661
(W)     shr (1|M0)               r4.10<1>:ud   r3.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $667
(W)     mov (1|M0)               r7.0<1>:uq    r4.6<0;1,0>:q                    {I@7}                //  ALU pipe: int; $643
(W)     and (1|M0)               r7.5<1>:ud    r6.0<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $642
(W)     mov (1|M0)               r5.0<1>:uq    r1.1<0;1,0>:q                    {I@7}                //  ALU pipe: int; $656
(W)     and (1|M0)               r5.5<1>:ud    r2.0<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $655
(W)     and (1|M0)               r2.5<1>:ud    r4.10<0;1,0>:d    15:w               {I@5}            //  ALU pipe: int; $668
(W)     mov (1|M0)               r2.0<1>:uq    r3.2<0;1,0>:q                                         //  ALU pipe: int; $669
        store_block2d.ugm.d32.a64 (1|M0)  [r7:1] r110:8            {I@5,$3} // ex_desc:0x0; desc:0x2000407 // $643
(W)     mul (1|M0)               acc0.0<1>:d   r108.8<0;1,0>:d   r4.14<0;1,0>:uw                     //  ALU pipe: int; $683
        store_block2d.ugm.d32.a64 (1|M0)  [r5:1] r118:8            {I@4,$22} // ex_desc:0x0; desc:0x2000407 // $656
(W)     add (1|M0)               r1.0<1>:q     r4.4<0;1,0>:q     192:w               {Compacted}     //  ALU pipe: int; $670
        store_block2d.ugm.d32.a64 (1|M0)  [r2:1] r126:8            {I@3,$23} // ex_desc:0x0; desc:0x2000407 // $669
(W)     macl (1|M0)              r2.0<1>:d     r108.8<0;1,0>:d   r4.7<0;1,0>:d    {Compacted,$23.src} //  ALU pipe: int; $685
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $682
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $682
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@4}                //  ALU pipe: int; $673
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $674
(W)     shl (1|M0)               r3.1<1>:q     r2.0<0;1,0>:d     2:w               {I@5}             //  ALU pipe: int; $685
(W)     shr (1|M0)               r5.0<1>:ud    r1.0<0;1,0>:ud    2:w               {$22.src}         //  ALU pipe: int; $680
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $682
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $682
(W)     mov (1|M0)               r6.0<1>:uq    r1.1<0;1,0>:q                    {I@5}                //  ALU pipe: int; $682
(W)     add (1|M0)               r4.4<1>:q     r3.0<0;1,0>:q     r3.1<0;1,0>:q    {I@5}              //  ALU pipe: int; $686
(W)     and (1|M0)               r6.5<1>:ud    r5.0<0;1,0>:d     15:w               {I@5}            //  ALU pipe: int; $681
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $682
(W)     mul (1|M0)               acc0.0<1>:d   r108.9<0;1,0>:d   r4.14<0;1,0>:uw                     //  ALU pipe: int; $738
(W)     mov (1|M0)               r5.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $698
(W)     mov (1|M0)               r4.5<1>:uq    r4.4<0;1,0>:uq                   {I@5}                //  ALU pipe: int; $687
(W)     add (1|M0)               r2.0<1>:q     r4.4<0;1,0>:q     64:w               {Compacted}      //  ALU pipe: int; $699
(W)     mov (1|M0)               r5.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $698
(W)     mov (1|M0)               r5.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $698
(W)     mov (1|M0)               r5.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $698
(W)     mov (1|M0)               r1.1<1>:d     r4.11<0;1,0>:d                   {I@5}                //  ALU pipe: int; $689
(W)     and (1|M0)               r1.0<1>:d     r4.10<0;1,0>:d    -64:w               {Compacted}     //  ALU pipe: int; $690
(W)     shr (1|M0)               r1.2<1>:ud    r4.10<0;1,0>:ud   2:w                                 //  ALU pipe: int; $696
(W)     mov (1|M0)               r5.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $698
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                    {I@7}                //  ALU pipe: int; $702
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $703
(W)     mov (1|M0)               r5.0<1>:uq    r1.0<0;1,0>:q                    {I@5}                //  ALU pipe: int; $698
(W)     add (1|M0)               r1.0<1>:q     r4.4<0;1,0>:q     128:w               {Compacted}     //  ALU pipe: int; $712
(W)     shr (1|M0)               r3.2<1>:ud    r2.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $709
(W)     and (1|M0)               r5.5<1>:ud    r1.2<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $697
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r134:8            {$24} // ex_desc:0x0; desc:0x2000407 // $682
(W)     mov (1|M0)               r6.0<1>:uq    r2.1<0;1,0>:q                    {@5,$24.src}         //  ALU pipe: int; $711
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@4}                //  ALU pipe: int; $715
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $716
(W)     shr (1|M0)               r4.10<1>:ud   r1.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $722
(W)     macl (1|M0)              r1.0<1>:d     r108.9<0;1,0>:d   r4.7<0;1,0>:d    {Compacted}        //  ALU pipe: int; $740
        store_block2d.ugm.d32.a64 (1|M0)  [r5:1] r142:8            {I@6,$25} // ex_desc:0x0; desc:0x2000407 // $698
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $711
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $711
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $711
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $711
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $711
(W)     and (1|M0)               r6.5<1>:ud    r3.2<0;1,0>:d     15:w                                //  ALU pipe: int; $710
(W)     add (1|M0)               r2.0<1>:q     r4.4<0;1,0>:q     192:w               {Compacted}     //  ALU pipe: int; $725
(W)     mov (1|M0)               r5.2<1>:ud    r254.1<0;1,0>:d                  {$25.src}            //  blk2d.widthM1; ALU pipe: int; $724
(W)     mov (1|M0)               r5.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $724
(W)     mov (1|M0)               r5.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $724
(W)     mov (1|M0)               r5.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $724
(W)     mov (1|M0)               r5.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $724
(W)     mov (1|M0)               r5.0<1>:uq    r1.1<0;1,0>:q                                         //  ALU pipe: int; $724
(W)     and (1|M0)               r5.5<1>:ud    r4.10<0;1,0>:d    15:w                                //  ALU pipe: int; $723
(W)     shl (1|M0)               r4.4<1>:q     r1.0<0;1,0>:d     2:w                                 //  ALU pipe: int; $740
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r150:8            {I@7,$26} // ex_desc:0x0; desc:0x2000407 // $711
(W)     shr (1|M0)               r3.2<1>:ud    r2.0<0;1,0>:ud    2:w               {I@7}             //  ALU pipe: int; $735
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                                         //  ALU pipe: int; $728
        store_block2d.ugm.d32.a64 (1|M0)  [r5:1] r158:8            {I@4,$27} // ex_desc:0x0; desc:0x2000407 // $724
(W)     add (1|M0)               r5.0<1>:q     r3.0<0;1,0>:q     r4.4<0;1,0>:q    {Compacted,@3,$27.src} //  ALU pipe: int; $741
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $729
(W)     and (1|M0)               r6.5<1>:ud    r3.2<0;1,0>:d     15:w               {@4,$26.src}     //  ALU pipe: int; $736
(W)     mul (1|M0)               acc0.0<1>:d   r108.0<0;1,0>:d   r4.14<0;1,0>:uw                     //  ALU pipe: int; $793
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $737
(W)     mov (1|M0)               r3.1<1>:uq    r5.0<0;1,0>:uq                   {Compacted,I@5}      //  ALU pipe: int; $742
(W)     mov (1|M0)               r6.0<1>:uq    r2.1<0;1,0>:q                    {I@5}                //  ALU pipe: int; $737
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $737
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $737
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $737
(W)     mov (1|M0)               r2.1<1>:d     r3.3<0;1,0>:d                    {I@5}                //  ALU pipe: int; $744
(W)     and (1|M0)               r2.0<1>:d     r3.2<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $745
(W)     shr (1|M0)               r2.2<1>:ud    r3.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $751
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $737
(W)     mov (1|M0)               r7.2<1>:ud    r254.1<0;1,0>:d                  {$3.src}             //  blk2d.widthM1; ALU pipe: int; $753
(W)     mov (1|M0)               r7.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $753
(W)     mov (1|M0)               r7.0<1>:uq    r2.0<0;1,0>:q                    {I@5}                //  ALU pipe: int; $753
(W)     add (1|M0)               r2.0<1>:q     r5.0<0;1,0>:q     128:w               {Compacted}     //  ALU pipe: int; $767
(W)     mov (1|M0)               r7.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $753
(W)     mov (1|M0)               r7.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $753
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $753
(W)     and (1|M0)               r7.5<1>:ud    r2.2<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $752
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted,I@5} //  ALU pipe: int; $771
(W)     shr (1|M0)               r4.8<1>:ud    r2.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $777
(W)     macl (1|M0)              r2.0<1>:d     r108.0<0;1,0>:d   r4.7<0;1,0>:d    {Compacted}        //  ALU pipe: int; $795
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r166:8            {$28} // ex_desc:0x0; desc:0x2000407 // $737
        store_block2d.ugm.d32.a64 (1|M0)  [r7:1] r174:8            {I@4,$29} // ex_desc:0x0; desc:0x2000407 // $753
(W)     add (1|M0)               r1.0<1>:q     r5.0<0;1,0>:q     64:w               {Compacted}      //  ALU pipe: int; $754
(W)     and (1|M0)               r7.5<1>:ud    r4.8<0;1,0>:d     15:w               {@3,$29.src}     //  ALU pipe: int; $778
(W)     shl (1|M0)               r4.4<1>:q     r2.0<0;1,0>:d     2:w               {I@3}             //  ALU pipe: int; $795
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                  {$28.src}            //  blk2d.widthM1; ALU pipe: int; $766
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $766
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@5}                //  ALU pipe: int; $757
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $758
(W)     shr (1|M0)               r3.2<1>:ud    r1.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $764
(W)     add (1|M0)               r1.0<1>:q     r5.0<0;1,0>:q     192:w               {Compacted}     //  ALU pipe: int; $780
(W)     add (1|M0)               r5.0<1>:q     r3.0<0;1,0>:q     r4.4<0;1,0>:q    {Compacted,I@7}    //  ALU pipe: int; $796
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $766
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $766
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $766
(W)     mov (1|M0)               r6.0<1>:uq    r1.1<0;1,0>:q                    {I@7}                //  ALU pipe: int; $766
(W)     and (1|M0)               r6.5<1>:ud    r3.2<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $765
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                                         //  ALU pipe: int; $770
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@7}                //  ALU pipe: int; $783
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $784
(W)     mov (1|M0)               r5.1<1>:uq    r5.0<0;1,0>:uq                   {Compacted,I@7}      //  ALU pipe: int; $797
(W)     shr (1|M0)               r3.2<1>:ud    r1.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $790
(W)     add (1|M0)               r2.0<1>:q     r5.0<0;1,0>:q     64:w               {Compacted}      //  ALU pipe: int; $809
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r182:8            {I@7,$30} // ex_desc:0x0; desc:0x2000407 // $766
(W)     mov (1|M0)               r7.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $779
(W)     mov (1|M0)               r7.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $779
(W)     mov (1|M0)               r7.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $779
(W)     mov (1|M0)               r7.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $779
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $779
(W)     mov (1|M0)               r7.0<1>:uq    r2.1<0;1,0>:q                    {I@7}                //  ALU pipe: int; $779
(W)     mov (1|M0)               r6.0<1>:uq    r1.1<0;1,0>:q                    {@7,$30.src}         //  ALU pipe: int; $792
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $792
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $792
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $792
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $792
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $792
(W)     mov (1|M0)               r1.1<1>:d     r5.3<0;1,0>:d                                         //  ALU pipe: int; $799
(W)     and (1|M0)               r1.0<1>:d     r5.2<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $800
(W)     and (1|M0)               r6.5<1>:ud    r3.2<0;1,0>:d     15:w                                //  ALU pipe: int; $791
(W)     shr (1|M0)               r1.2<1>:ud    r5.2<0;1,0>:ud    2:w                                 //  ALU pipe: int; $806
(W)     shr (1|M0)               r3.0<1>:ud    r2.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $819
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                                         //  ALU pipe: int; $812
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $813
        store_block2d.ugm.d32.a64 (1|M0)  [r7:1] r190:8            {$31} // ex_desc:0x0; desc:0x2000407 // $779
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r198:8            {I@5,$0} // ex_desc:0x0; desc:0x2000407 // $792
(W)     and (1|M0)               r7.5<1>:ud    r1.2<0;1,0>:d     15:w               {@4,$31.src}     //  ALU pipe: int; $807
(W)     mov (1|M0)               r7.0<1>:uq    r1.0<0;1,0>:q                                         //  ALU pipe: int; $808
(W)     mov (1|M0)               r7.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $808
(W)     mov (1|M0)               r7.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $808
(W)     mov (1|M0)               r7.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $808
(W)     mov (1|M0)               r7.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $808
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $808
(W)     and (1|M0)               r6.5<1>:ud    r3.0<0;1,0>:d     15:w               {@7,$0.src}      //  ALU pipe: int; $820
(W)     mov (1|M0)               r6.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $821
(W)     mov (1|M0)               r6.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $821
(W)     mov (1|M0)               r6.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $821
(W)     mov (1|M0)               r6.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $821
(W)     mov (1|M0)               r6.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $821
(W)     mov (1|M0)               r6.0<1>:uq    r2.1<0;1,0>:q                                         //  ALU pipe: int; $821
(W)     add (1|M0)               r1.0<1>:q     r5.0<0;1,0>:q     128:w               {Compacted}     //  ALU pipe: int; $822
(W)     add (1|M0)               r2.0<1>:q     r5.0<0;1,0>:q     192:w               {Compacted}     //  ALU pipe: int; $835
        store_block2d.ugm.d32.a64 (1|M0)  [r7:1] r206:8            {I@7,$1} // ex_desc:0x0; desc:0x2000407 // $808
(W)     mov (1|M0)               r3.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $834
        store_block2d.ugm.d32.a64 (1|M0)  [r6:1] r214:8            {I@4,$2} // ex_desc:0x0; desc:0x2000407 // $821
(W)     mov (1|M0)               r1.3<1>:d     r1.1<0;1,0>:d                    {I@3}                //  ALU pipe: int; $825
(W)     and (1|M0)               r1.2<1>:d     r1.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $826
(W)     shr (1|M0)               r4.8<1>:ud    r1.0<0;1,0>:ud    2:w                                 //  ALU pipe: int; $832
(W)     mov (1|M0)               r2.3<1>:d     r2.1<0;1,0>:d                    {I@5}                //  ALU pipe: int; $838
(W)     and (1|M0)               r2.2<1>:d     r2.0<0;1,0>:d     -64:w               {Compacted}     //  ALU pipe: int; $839
(W)     shr (1|M0)               r6.0<1>:ud    r2.0<0;1,0>:ud    2:w               {$2.src}          //  ALU pipe: int; $845
(W)     mov (1|M0)               r3.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $834
(W)     mov (1|M0)               r3.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $834
(W)     mov (1|M0)               r3.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $834
(W)     mov (1|M0)               r3.2<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.widthM1; ALU pipe: int; $834
(W)     mov (1|M0)               r3.0<1>:uq    r1.1<0;1,0>:q                    {I@7}                //  ALU pipe: int; $834
(W)     and (1|M0)               r3.5<1>:ud    r4.8<0;1,0>:d     15:w               {I@7}            //  ALU pipe: int; $833
(W)     mov (16|M0)              r255.0<1>:f   r107.0<1;1,0>:f                  {Compacted}          //  ALU pipe: float; $848
(W)     mov (1|M0)               r7.2<1>:ud    r254.1<0;1,0>:d                  {$1.src}             //  blk2d.widthM1; ALU pipe: int; $847
(W)     mov (1|M0)               r7.3<1>:ud    7:w                                                   //  blk2d.heightM1; ALU pipe: int; $847
(W)     mov (1|M0)               r7.4<1>:ud    r254.1<0;1,0>:d                                       //  blk2d.pitchM1; ALU pipe: int; $847
(W)     mov (1|M0)               r7.6<1>:ud    0:w                                                   //  blk2d.Y; ALU pipe: int; $847
(W)     mov (1|M0)               r7.7<1>:ud    0x70F:uw                                              //  bkl2d.shape = 1x16x8; ALU pipe: int; $847
(W)     mov (1|M0)               r7.0<1>:uq    r2.1<0;1,0>:q                                         //  ALU pipe: int; $847
(W)     and (1|M0)               r7.5<1>:ud    r6.0<0;1,0>:d     15:w                                //  ALU pipe: int; $846
        store_block2d.ugm.d32.a64 (1|M0)  [r3:1] r222:8            {I@7,$3} // ex_desc:0x0; desc:0x2000407 // $834
        store_block2d.ugm.d32.a64 (1|M0)  [r7:1] r230:8            {I@1,$4} // ex_desc:0x0; desc:0x2000407 // $847
(W)     send.gtwy (1|M0)         null     r255  null:0  0x0            0x02000010           {EOT,F@1,$5} // wr:1+0, rd:0; end of thread // $848
L10296:
(W)     mov (16|M0)              null<1>:ud    0x987D016B:ud                                         // 
(W)     mov (16|M0)              null<1>:ud    0x8D7EE02B:ud                                         // 
(W)     mov (16|M0)              null<1>:ud    0x0:ud                                                // 
(W)     mov (16|M0)              null<1>:ud    0x1:ud                                                // 


//.BankConflicts: 0
//.ByteRMWs: 0
//


//.numALUInst: 750
//.accSubDef: 0
//.accSubUse: 0
//.accSubCandidateDef: 0
//.accSubCandidateUse: 0
//
//
//.singlePipeAtOneDistNum: 15
//.allAtOneDistNum: 4
//.syncInstCount: 2
//.tokenReuseCount: 0
//.AfterWriteTokenDepCount: 23
//.AfterReadTokenDepCount: 22
