                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module encoder
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _pwmInitialiseQuadratureEncoder
                                     12 	.globl _S1SM0_FE
                                     13 	.globl _T1IE
                                     14 	.globl _T0IE
                                     15 	.globl _T1RUN
                                     16 	.globl _T0RUN
                                     17 	.globl _CY
                                     18 	.globl _AC
                                     19 	.globl _F0
                                     20 	.globl _RS1
                                     21 	.globl _RS0
                                     22 	.globl _OV
                                     23 	.globl _F1
                                     24 	.globl _P
                                     25 	.globl _EA
                                     26 	.globl _INT1IE
                                     27 	.globl _INT0IE
                                     28 	.globl _INT1TR
                                     29 	.globl _INT0TR
                                     30 	.globl _P5_5
                                     31 	.globl _P5_4
                                     32 	.globl _P5_3
                                     33 	.globl _P5_2
                                     34 	.globl _P5_1
                                     35 	.globl _P5_0
                                     36 	.globl _P3_7
                                     37 	.globl _P3_6
                                     38 	.globl _P3_5
                                     39 	.globl _P3_4
                                     40 	.globl _P3_3
                                     41 	.globl _P3_2
                                     42 	.globl _P3_1
                                     43 	.globl _P3_0
                                     44 	.globl _P2_7
                                     45 	.globl _P2_6
                                     46 	.globl _P2_5
                                     47 	.globl _P2_4
                                     48 	.globl _P2_3
                                     49 	.globl _P2_2
                                     50 	.globl _P2_1
                                     51 	.globl _P2_0
                                     52 	.globl _P1_7
                                     53 	.globl _P1_6
                                     54 	.globl _P1_5
                                     55 	.globl _P1_4
                                     56 	.globl _P1_3
                                     57 	.globl _P1_2
                                     58 	.globl _P1_1
                                     59 	.globl _P1_0
                                     60 	.globl _USBADR
                                     61 	.globl _USBCON
                                     62 	.globl _USBDAT
                                     63 	.globl _USBCLK
                                     64 	.globl _S4BUF
                                     65 	.globl _S4CON
                                     66 	.globl _S3BUF
                                     67 	.globl _S3CON
                                     68 	.globl _S2BUF
                                     69 	.globl _S2CON
                                     70 	.globl _S1BUF
                                     71 	.globl _S1CON
                                     72 	.globl _SADEN
                                     73 	.globl _SADDR
                                     74 	.globl _AUXINTIF
                                     75 	.globl _T3
                                     76 	.globl _T3L
                                     77 	.globl _T3H
                                     78 	.globl _T4
                                     79 	.globl _T4L
                                     80 	.globl _T4H
                                     81 	.globl _T4T3M
                                     82 	.globl _WDT_CONTR
                                     83 	.globl _AUXR
                                     84 	.globl _T2
                                     85 	.globl _T2H
                                     86 	.globl _T2L
                                     87 	.globl _T1
                                     88 	.globl _T1H
                                     89 	.globl _T1L
                                     90 	.globl _T0
                                     91 	.globl _T0H
                                     92 	.globl _T0L
                                     93 	.globl _TMOD
                                     94 	.globl _TCON
                                     95 	.globl _IRTRIM
                                     96 	.globl _LIRTRIM
                                     97 	.globl _IRCBAND
                                     98 	.globl _SPDAT
                                     99 	.globl _SPCTL
                                    100 	.globl _SPSTAT
                                    101 	.globl _WKTC
                                    102 	.globl _WKTCH
                                    103 	.globl _WKTCL
                                    104 	.globl _BUS_SPEED
                                    105 	.globl _P_SW2
                                    106 	.globl _P_SW1
                                    107 	.globl _RSTCFG
                                    108 	.globl _PCON
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _SP
                                    113 	.globl _IP3H
                                    114 	.globl _IP3L
                                    115 	.globl _IP2H
                                    116 	.globl _IP2L
                                    117 	.globl _IE2
                                    118 	.globl _IP1H
                                    119 	.globl _IP1L
                                    120 	.globl _IE1
                                    121 	.globl _INT_CLKO
                                    122 	.globl _IAP_TPS
                                    123 	.globl _IAP_CONTR
                                    124 	.globl _IAP_TRIG
                                    125 	.globl _IAP_CMD
                                    126 	.globl _IAP_ADDR
                                    127 	.globl _IAP_ADDRL
                                    128 	.globl _IAP_ADDRH
                                    129 	.globl _IAP_DATA
                                    130 	.globl _P5M0
                                    131 	.globl _P5M1
                                    132 	.globl _P5
                                    133 	.globl _P3M0
                                    134 	.globl _P3M1
                                    135 	.globl _P3
                                    136 	.globl _P2M0
                                    137 	.globl _P2M1
                                    138 	.globl _P2
                                    139 	.globl _P1M0
                                    140 	.globl _P1M1
                                    141 	.globl _P1
                                    142 	.globl _TA
                                    143 	.globl _DPH1
                                    144 	.globl _DPL1
                                    145 	.globl _DPS
                                    146 	.globl _DP
                                    147 	.globl _DPH
                                    148 	.globl _DPL
                                    149 	.globl _CMPCR2
                                    150 	.globl _CMPCR1
                                    151 	.globl _DMA_ADC_AMT
                                    152 	.globl _ADCCFG
                                    153 	.globl _ADC_RES
                                    154 	.globl _ADC_RESL
                                    155 	.globl _ADC_RESH
                                    156 	.globl _ADC_CONTR
                                    157 	.globl _pwmOnChannelInterrupt_PARM_2
                                    158 	.globl _pwmOnCounterInterrupt_PARM_2
                                    159 	.globl _DMA_UR4R_TXAL
                                    160 	.globl _DMA_UR4R_TXAH
                                    161 	.globl _DMA_UR4R_DONE
                                    162 	.globl _DMA_UR4R_AMT
                                    163 	.globl _DMA_UR4R_STA
                                    164 	.globl _DMA_UR4R_CR
                                    165 	.globl _DMA_UR4R_CFG
                                    166 	.globl _DMA_UR4T_TXAL
                                    167 	.globl _DMA_UR4T_TXAH
                                    168 	.globl _DMA_UR4T_DONE
                                    169 	.globl _DMA_UR4T_AMT
                                    170 	.globl _DMA_UR4T_STA
                                    171 	.globl _DMA_UR4T_CR
                                    172 	.globl _DMA_UR4T_CFG
                                    173 	.globl _DMA_UR3R_TXAL
                                    174 	.globl _DMA_UR3R_TXAH
                                    175 	.globl _DMA_UR3R_DONE
                                    176 	.globl _DMA_UR3R_AMT
                                    177 	.globl _DMA_UR3R_STA
                                    178 	.globl _DMA_UR3R_CR
                                    179 	.globl _DMA_UR3R_CFG
                                    180 	.globl _DMA_UR3T_TXAL
                                    181 	.globl _DMA_UR3T_TXAH
                                    182 	.globl _DMA_UR3T_DONE
                                    183 	.globl _DMA_UR3T_AMT
                                    184 	.globl _DMA_UR3T_STA
                                    185 	.globl _DMA_UR3T_CR
                                    186 	.globl _DMA_UR3T_CFG
                                    187 	.globl _DMA_UR2R_TXAL
                                    188 	.globl _DMA_UR2R_TXAH
                                    189 	.globl _DMA_UR2R_DONE
                                    190 	.globl _DMA_UR2R_AMT
                                    191 	.globl _DMA_UR2R_STA
                                    192 	.globl _DMA_UR2R_CR
                                    193 	.globl _DMA_UR2R_CFG
                                    194 	.globl _DMA_UR2T_TXAL
                                    195 	.globl _DMA_UR2T_TXAH
                                    196 	.globl _DMA_UR2T_DONE
                                    197 	.globl _DMA_UR2T_AMT
                                    198 	.globl _DMA_UR2T_STA
                                    199 	.globl _DMA_UR2T_CR
                                    200 	.globl _DMA_UR2T_CFG
                                    201 	.globl _DMA_UR1R_TXAL
                                    202 	.globl _DMA_UR1R_TXAH
                                    203 	.globl _DMA_UR1R_DONE
                                    204 	.globl _DMA_UR1R_AMT
                                    205 	.globl _DMA_UR1R_STA
                                    206 	.globl _DMA_UR1R_CR
                                    207 	.globl _DMA_UR1R_CFG
                                    208 	.globl _DMA_UR1T_TXAL
                                    209 	.globl _DMA_UR1T_TXAH
                                    210 	.globl _DMA_UR1T_DONE
                                    211 	.globl _DMA_URTX_AMT
                                    212 	.globl _DMA_UR1T_STA
                                    213 	.globl _DMA_UR1T_CR
                                    214 	.globl _DMA_UR1T_CFG
                                    215 	.globl _TM4PS
                                    216 	.globl _TM3PS
                                    217 	.globl _TM2PS
                                    218 	.globl _IRC48MCR
                                    219 	.globl _IRCDB
                                    220 	.globl _MCLKOCR
                                    221 	.globl _CKSEL
                                    222 	.globl _IRC32KCR
                                    223 	.globl _XOSCCR
                                    224 	.globl _HIRCCR
                                    225 	.globl _CLKDIV
                                    226 	.globl _DMA_SPI_CFG2
                                    227 	.globl _DMA_SPI_RXAL
                                    228 	.globl _DMA_SPI_RXAH
                                    229 	.globl _DMA_SPI_TXAL
                                    230 	.globl _DMA_SPI_TXAH
                                    231 	.globl _DMA_SPI_DONE
                                    232 	.globl _DMA_SPI_AMT
                                    233 	.globl _DMA_SPI_STA
                                    234 	.globl _DMA_SPI_CR
                                    235 	.globl _DMA_SPI_CFG
                                    236 	.globl _SSEC
                                    237 	.globl _SEC
                                    238 	.globl _MIN
                                    239 	.globl _HOUR
                                    240 	.globl _DAY
                                    241 	.globl _MONTH
                                    242 	.globl _YEAR
                                    243 	.globl _INISSEC
                                    244 	.globl _INISEC
                                    245 	.globl _INIMIN
                                    246 	.globl _INIHOUR
                                    247 	.globl _INIDAY
                                    248 	.globl _INIMONTH
                                    249 	.globl _INIYEAR
                                    250 	.globl _ALASSEC
                                    251 	.globl _ALASEC
                                    252 	.globl _ALAMIN
                                    253 	.globl _ALAHOUR
                                    254 	.globl _RTCIF
                                    255 	.globl _RTCIEN
                                    256 	.globl _RTCCFG
                                    257 	.globl _RTCCR
                                    258 	.globl _PWMB_OISR
                                    259 	.globl _PWMB_DTR
                                    260 	.globl _PWMB_BKR
                                    261 	.globl _PWMB_CCR4L
                                    262 	.globl _PWMB_CCR4H
                                    263 	.globl _PWMB_CCR3L
                                    264 	.globl _PWMB_CCR3H
                                    265 	.globl _PWMB_CCR2L
                                    266 	.globl _PWMB_CCR2H
                                    267 	.globl _PWMB_CCR1L
                                    268 	.globl _PWMB_CCR1H
                                    269 	.globl _PWMB_RCR
                                    270 	.globl _PWMB_ARRL
                                    271 	.globl _PWMB_ARRH
                                    272 	.globl _PWMB_PSCRL
                                    273 	.globl _PWMB_PSCRH
                                    274 	.globl _PWMB_CNTRL
                                    275 	.globl _PWMB_CNTRH
                                    276 	.globl _PWMB_CCER2
                                    277 	.globl _PWMB_CCER1
                                    278 	.globl _PWMB_CCMR4
                                    279 	.globl _PWMB_CCMR3
                                    280 	.globl _PWMB_CCMR2
                                    281 	.globl _PWMB_CCMR1
                                    282 	.globl _PWMB_EGR
                                    283 	.globl _PWMB_SR2
                                    284 	.globl _PWMB_SR1
                                    285 	.globl _PWMB_IER
                                    286 	.globl _PWMB_ETR
                                    287 	.globl _PWMB_SMCR
                                    288 	.globl _PWMB_CR2
                                    289 	.globl _PWMB_CR1
                                    290 	.globl _PWMA_OISR
                                    291 	.globl _PWMA_DTR
                                    292 	.globl _PWMA_BKR
                                    293 	.globl _PWMA_CCR4L
                                    294 	.globl _PWMA_CCR4H
                                    295 	.globl _PWMA_CCR3L
                                    296 	.globl _PWMA_CCR3H
                                    297 	.globl _PWMA_CCR2L
                                    298 	.globl _PWMA_CCR2H
                                    299 	.globl _PWMA_CCR1L
                                    300 	.globl _PWMA_CCR1H
                                    301 	.globl _PWMA_RCR
                                    302 	.globl _PWMA_ARRL
                                    303 	.globl _PWMA_ARRH
                                    304 	.globl _PWMA_PSCRL
                                    305 	.globl _PWMA_PSCRH
                                    306 	.globl _PWMA_CNTRL
                                    307 	.globl _PWMA_CNTRH
                                    308 	.globl _PWMA_CCER2
                                    309 	.globl _PWMA_CCER1
                                    310 	.globl _PWMA_CCMR4
                                    311 	.globl _PWMA_CCMR3
                                    312 	.globl _PWMA_CCMR2
                                    313 	.globl _PWMA_CCMR1
                                    314 	.globl _PWMA_EGR
                                    315 	.globl _PWMA_SR2
                                    316 	.globl _PWMA_SR1
                                    317 	.globl _PWMA_IER
                                    318 	.globl _PWMA_ETR
                                    319 	.globl _PWMA_SMCR
                                    320 	.globl _PWMA_CR2
                                    321 	.globl _PWMA_CR1
                                    322 	.globl _PWMB_IOAUX
                                    323 	.globl _PWMB_PS
                                    324 	.globl _PWMB_ENO
                                    325 	.globl _PWMB_ETRPS
                                    326 	.globl _PWMA_IOAUX
                                    327 	.globl _PWMA_PS
                                    328 	.globl _PWMA_ENO
                                    329 	.globl _PWMA_ETRPS
                                    330 	.globl _RSTFLAG
                                    331 	.globl _SPFUNC
                                    332 	.globl _OPCON
                                    333 	.globl _ARCON
                                    334 	.globl _MD4
                                    335 	.globl _MD5
                                    336 	.globl _MD0
                                    337 	.globl _MD1
                                    338 	.globl _MD2
                                    339 	.globl _MD3
                                    340 	.globl _DMA_LCM_RXAL
                                    341 	.globl _DMA_LCM_RXAH
                                    342 	.globl _DMA_LCM_TXAL
                                    343 	.globl _DMA_LCM_TXAH
                                    344 	.globl _DMA_LCM_DONE
                                    345 	.globl _DMA_LCM_AMT
                                    346 	.globl _DMA_LCM_STA
                                    347 	.globl _DMA_LCM_CR
                                    348 	.globl _DMA_LCM_CFG
                                    349 	.globl _LCMIDDAT
                                    350 	.globl _LCMIDDATH
                                    351 	.globl _LCMIDDATL
                                    352 	.globl _LCMSTA
                                    353 	.globl _LCMCR
                                    354 	.globl _LCMCFG2
                                    355 	.globl _LCMCFG
                                    356 	.globl _I2CMSAUX
                                    357 	.globl _I2CRXD
                                    358 	.globl _I2CTXD
                                    359 	.globl _I2CSLADR
                                    360 	.globl _I2CSLST
                                    361 	.globl _I2CSLCR
                                    362 	.globl _I2CMSST
                                    363 	.globl _I2CMSCR
                                    364 	.globl _I2CCFG
                                    365 	.globl _PINIPH
                                    366 	.globl _PINIPL
                                    367 	.globl _P5IE
                                    368 	.globl _P5DR
                                    369 	.globl _P5SR
                                    370 	.globl _P5NCS
                                    371 	.globl _P5PU
                                    372 	.globl _P5WKUE
                                    373 	.globl _P5IM1
                                    374 	.globl _P5IM0
                                    375 	.globl _P5INTF
                                    376 	.globl _P5INTE
                                    377 	.globl _P3IE
                                    378 	.globl _P3DR
                                    379 	.globl _P3SR
                                    380 	.globl _P3NCS
                                    381 	.globl _P3PU
                                    382 	.globl _P3WKUE
                                    383 	.globl _P3IM1
                                    384 	.globl _P3IM0
                                    385 	.globl _P3INTF
                                    386 	.globl _P3INTE
                                    387 	.globl _P2IE
                                    388 	.globl _P2DR
                                    389 	.globl _P2SR
                                    390 	.globl _P2NCS
                                    391 	.globl _P2PU
                                    392 	.globl _P2WKUE
                                    393 	.globl _P2IM1
                                    394 	.globl _P2IM0
                                    395 	.globl _P2INTF
                                    396 	.globl _P2INTE
                                    397 	.globl _P1IE
                                    398 	.globl _P1DR
                                    399 	.globl _P1SR
                                    400 	.globl _P1NCS
                                    401 	.globl _P1PU
                                    402 	.globl _P1WKUE
                                    403 	.globl _P1IM1
                                    404 	.globl _P1IM0
                                    405 	.globl _P1INTF
                                    406 	.globl _P1INTE
                                    407 	.globl _DMA_M2M_RXAL
                                    408 	.globl _DMA_M2M_RXAH
                                    409 	.globl _DMA_M2M_TXAL
                                    410 	.globl _DMA_M2M_TXAH
                                    411 	.globl _DMA_M2M_DONE
                                    412 	.globl _DMA_M2M_AMT
                                    413 	.globl _DMA_M2M_STA
                                    414 	.globl _DMA_M2M_CR
                                    415 	.globl _DMA_M2M_CFG
                                    416 	.globl _CMPEXCFG
                                    417 	.globl _DMA_ADC_CHSW1
                                    418 	.globl _DMA_ADC_CHSW0
                                    419 	.globl _DMA_ADC_CFG2
                                    420 	.globl _DMA_ADC_RXAL
                                    421 	.globl _DMA_ADC_RXAH
                                    422 	.globl _DMA_ADC_STA
                                    423 	.globl _DMA_ADC_CR
                                    424 	.globl _DMA_ADC_CFG
                                    425 	.globl _ADCEXCFG
                                    426 	.globl _ADCTIM
                                    427 	.globl _pwmOnCounterInterrupt
                                    428 	.globl _pwmOnChannelInterrupt
                                    429 	.globl _encoder_init
                                    430 	.globl _encoder_process
                                    431 	.globl _get_encoder_count
                                    432 	.globl _get_encoder_dir
                                    433 	.globl _encoder_count_reset
                                    434 	.globl _encoder_count_set
                                    435 ;--------------------------------------------------------
                                    436 ; special function registers
                                    437 ;--------------------------------------------------------
                                    438 	.area RSEG    (ABS,DATA)
      000000                        439 	.org 0x0000
                           0000BC   440 _ADC_CONTR	=	0x00bc
                           0000BD   441 _ADC_RESH	=	0x00bd
                           0000BE   442 _ADC_RESL	=	0x00be
                           00BDBE   443 _ADC_RES	=	0xbdbe
                           0000DE   444 _ADCCFG	=	0x00de
                           0000FA   445 _DMA_ADC_AMT	=	0x00fa
                           0000E6   446 _CMPCR1	=	0x00e6
                           0000E7   447 _CMPCR2	=	0x00e7
                           000082   448 _DPL	=	0x0082
                           000083   449 _DPH	=	0x0083
                           008382   450 _DP	=	0x8382
                           0000E3   451 _DPS	=	0x00e3
                           0000E4   452 _DPL1	=	0x00e4
                           0000E5   453 _DPH1	=	0x00e5
                           0000AE   454 _TA	=	0x00ae
                           000090   455 _P1	=	0x0090
                           000091   456 _P1M1	=	0x0091
                           000092   457 _P1M0	=	0x0092
                           0000A0   458 _P2	=	0x00a0
                           000095   459 _P2M1	=	0x0095
                           000096   460 _P2M0	=	0x0096
                           0000B0   461 _P3	=	0x00b0
                           0000B1   462 _P3M1	=	0x00b1
                           0000B2   463 _P3M0	=	0x00b2
                           0000C8   464 _P5	=	0x00c8
                           0000C9   465 _P5M1	=	0x00c9
                           0000CA   466 _P5M0	=	0x00ca
                           0000C2   467 _IAP_DATA	=	0x00c2
                           0000C3   468 _IAP_ADDRH	=	0x00c3
                           0000C4   469 _IAP_ADDRL	=	0x00c4
                           00C3C4   470 _IAP_ADDR	=	0xc3c4
                           0000C5   471 _IAP_CMD	=	0x00c5
                           0000C6   472 _IAP_TRIG	=	0x00c6
                           0000C7   473 _IAP_CONTR	=	0x00c7
                           0000F5   474 _IAP_TPS	=	0x00f5
                           00008F   475 _INT_CLKO	=	0x008f
                           0000A8   476 _IE1	=	0x00a8
                           0000B8   477 _IP1L	=	0x00b8
                           0000B7   478 _IP1H	=	0x00b7
                           0000AF   479 _IE2	=	0x00af
                           0000B5   480 _IP2L	=	0x00b5
                           0000B6   481 _IP2H	=	0x00b6
                           0000DF   482 _IP3L	=	0x00df
                           0000EE   483 _IP3H	=	0x00ee
                           000081   484 _SP	=	0x0081
                           0000D0   485 _PSW	=	0x00d0
                           0000E0   486 _ACC	=	0x00e0
                           0000F0   487 _B	=	0x00f0
                           000087   488 _PCON	=	0x0087
                           0000FF   489 _RSTCFG	=	0x00ff
                           0000A2   490 _P_SW1	=	0x00a2
                           0000BA   491 _P_SW2	=	0x00ba
                           0000A1   492 _BUS_SPEED	=	0x00a1
                           0000AA   493 _WKTCL	=	0x00aa
                           0000AB   494 _WKTCH	=	0x00ab
                           00ABAA   495 _WKTC	=	0xabaa
                           0000CD   496 _SPSTAT	=	0x00cd
                           0000CE   497 _SPCTL	=	0x00ce
                           0000CF   498 _SPDAT	=	0x00cf
                           00009D   499 _IRCBAND	=	0x009d
                           00009E   500 _LIRTRIM	=	0x009e
                           00009F   501 _IRTRIM	=	0x009f
                           000088   502 _TCON	=	0x0088
                           000089   503 _TMOD	=	0x0089
                           00008A   504 _T0L	=	0x008a
                           00008C   505 _T0H	=	0x008c
                           008C8A   506 _T0	=	0x8c8a
                           00008B   507 _T1L	=	0x008b
                           00008D   508 _T1H	=	0x008d
                           008D8B   509 _T1	=	0x8d8b
                           0000D7   510 _T2L	=	0x00d7
                           0000D6   511 _T2H	=	0x00d6
                           00D6D7   512 _T2	=	0xd6d7
                           00008E   513 _AUXR	=	0x008e
                           0000C1   514 _WDT_CONTR	=	0x00c1
                           0000D1   515 _T4T3M	=	0x00d1
                           0000D2   516 _T4H	=	0x00d2
                           0000D3   517 _T4L	=	0x00d3
                           00D2D3   518 _T4	=	0xd2d3
                           0000D4   519 _T3H	=	0x00d4
                           0000D5   520 _T3L	=	0x00d5
                           00D4D5   521 _T3	=	0xd4d5
                           0000EF   522 _AUXINTIF	=	0x00ef
                           0000A9   523 _SADDR	=	0x00a9
                           0000B9   524 _SADEN	=	0x00b9
                           000098   525 _S1CON	=	0x0098
                           000099   526 _S1BUF	=	0x0099
                           00009A   527 _S2CON	=	0x009a
                           00009B   528 _S2BUF	=	0x009b
                           0000AC   529 _S3CON	=	0x00ac
                           0000AD   530 _S3BUF	=	0x00ad
                           000084   531 _S4CON	=	0x0084
                           000085   532 _S4BUF	=	0x0085
                           0000DC   533 _USBCLK	=	0x00dc
                           0000EC   534 _USBDAT	=	0x00ec
                           0000F4   535 _USBCON	=	0x00f4
                           0000FC   536 _USBADR	=	0x00fc
                                    537 ;--------------------------------------------------------
                                    538 ; special function bits
                                    539 ;--------------------------------------------------------
                                    540 	.area RSEG    (ABS,DATA)
      000000                        541 	.org 0x0000
                           000090   542 _P1_0	=	0x0090
                           000091   543 _P1_1	=	0x0091
                           000092   544 _P1_2	=	0x0092
                           000093   545 _P1_3	=	0x0093
                           000094   546 _P1_4	=	0x0094
                           000095   547 _P1_5	=	0x0095
                           000096   548 _P1_6	=	0x0096
                           000097   549 _P1_7	=	0x0097
                           0000A0   550 _P2_0	=	0x00a0
                           0000A1   551 _P2_1	=	0x00a1
                           0000A2   552 _P2_2	=	0x00a2
                           0000A3   553 _P2_3	=	0x00a3
                           0000A4   554 _P2_4	=	0x00a4
                           0000A5   555 _P2_5	=	0x00a5
                           0000A6   556 _P2_6	=	0x00a6
                           0000A7   557 _P2_7	=	0x00a7
                           0000B0   558 _P3_0	=	0x00b0
                           0000B1   559 _P3_1	=	0x00b1
                           0000B2   560 _P3_2	=	0x00b2
                           0000B3   561 _P3_3	=	0x00b3
                           0000B4   562 _P3_4	=	0x00b4
                           0000B5   563 _P3_5	=	0x00b5
                           0000B6   564 _P3_6	=	0x00b6
                           0000B7   565 _P3_7	=	0x00b7
                           0000C8   566 _P5_0	=	0x00c8
                           0000C9   567 _P5_1	=	0x00c9
                           0000CA   568 _P5_2	=	0x00ca
                           0000CB   569 _P5_3	=	0x00cb
                           0000CC   570 _P5_4	=	0x00cc
                           0000CD   571 _P5_5	=	0x00cd
                           000088   572 _INT0TR	=	0x0088
                           00008A   573 _INT1TR	=	0x008a
                           0000A8   574 _INT0IE	=	0x00a8
                           0000AA   575 _INT1IE	=	0x00aa
                           0000AF   576 _EA	=	0x00af
                           0000D0   577 _P	=	0x00d0
                           0000D1   578 _F1	=	0x00d1
                           0000D2   579 _OV	=	0x00d2
                           0000D3   580 _RS0	=	0x00d3
                           0000D4   581 _RS1	=	0x00d4
                           0000D5   582 _F0	=	0x00d5
                           0000D6   583 _AC	=	0x00d6
                           0000D7   584 _CY	=	0x00d7
                           00008C   585 _T0RUN	=	0x008c
                           00008E   586 _T1RUN	=	0x008e
                           0000A9   587 _T0IE	=	0x00a9
                           0000AB   588 _T1IE	=	0x00ab
                           00009F   589 _S1SM0_FE	=	0x009f
                                    590 ;--------------------------------------------------------
                                    591 ; overlayable register banks
                                    592 ;--------------------------------------------------------
                                    593 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        594 	.ds 8
                                    595 ;--------------------------------------------------------
                                    596 ; internal ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area DSEG    (DATA)
                                    599 ;--------------------------------------------------------
                                    600 ; overlayable items in internal ram 
                                    601 ;--------------------------------------------------------
                                    602 ;--------------------------------------------------------
                                    603 ; indirectly addressable internal ram data
                                    604 ;--------------------------------------------------------
                                    605 	.area ISEG    (DATA)
                                    606 ;--------------------------------------------------------
                                    607 ; absolute internal ram data
                                    608 ;--------------------------------------------------------
                                    609 	.area IABS    (ABS,DATA)
                                    610 	.area IABS    (ABS,DATA)
                                    611 ;--------------------------------------------------------
                                    612 ; bit data
                                    613 ;--------------------------------------------------------
                                    614 	.area BSEG    (BIT)
      000000                        615 _direction:
      000000                        616 	.ds 1
      000001                        617 _ready:
      000001                        618 	.ds 1
                                    619 ;--------------------------------------------------------
                                    620 ; paged external ram data
                                    621 ;--------------------------------------------------------
                                    622 	.area PSEG    (PAG,XDATA)
                                    623 ;--------------------------------------------------------
                                    624 ; external ram data
                                    625 ;--------------------------------------------------------
                                    626 	.area XSEG    (XDATA)
                           00FEA8   627 _ADCTIM	=	0xfea8
                           00FEAD   628 _ADCEXCFG	=	0xfead
                           00FA10   629 _DMA_ADC_CFG	=	0xfa10
                           00FA11   630 _DMA_ADC_CR	=	0xfa11
                           00FA12   631 _DMA_ADC_STA	=	0xfa12
                           00FA17   632 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   633 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   634 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   635 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   636 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   637 _CMPEXCFG	=	0xfeae
                           00FA00   638 _DMA_M2M_CFG	=	0xfa00
                           00FA01   639 _DMA_M2M_CR	=	0xfa01
                           00FA02   640 _DMA_M2M_STA	=	0xfa02
                           00FA03   641 _DMA_M2M_AMT	=	0xfa03
                           00FA04   642 _DMA_M2M_DONE	=	0xfa04
                           00FA05   643 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   644 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   645 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   646 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   647 _P1INTE	=	0xfd01
                           00FD11   648 _P1INTF	=	0xfd11
                           00FD21   649 _P1IM0	=	0xfd21
                           00FD31   650 _P1IM1	=	0xfd31
                           00FD41   651 _P1WKUE	=	0xfd41
                           00FE11   652 _P1PU	=	0xfe11
                           00FE19   653 _P1NCS	=	0xfe19
                           00FE21   654 _P1SR	=	0xfe21
                           00FE29   655 _P1DR	=	0xfe29
                           00FE31   656 _P1IE	=	0xfe31
                           00FD02   657 _P2INTE	=	0xfd02
                           00FD12   658 _P2INTF	=	0xfd12
                           00FD22   659 _P2IM0	=	0xfd22
                           00FD32   660 _P2IM1	=	0xfd32
                           00FD42   661 _P2WKUE	=	0xfd42
                           00FE12   662 _P2PU	=	0xfe12
                           00FE1A   663 _P2NCS	=	0xfe1a
                           00FE22   664 _P2SR	=	0xfe22
                           00FE2A   665 _P2DR	=	0xfe2a
                           00FE32   666 _P2IE	=	0xfe32
                           00FD03   667 _P3INTE	=	0xfd03
                           00FD13   668 _P3INTF	=	0xfd13
                           00FD23   669 _P3IM0	=	0xfd23
                           00FD33   670 _P3IM1	=	0xfd33
                           00FD43   671 _P3WKUE	=	0xfd43
                           00FE13   672 _P3PU	=	0xfe13
                           00FE1B   673 _P3NCS	=	0xfe1b
                           00FE23   674 _P3SR	=	0xfe23
                           00FE2B   675 _P3DR	=	0xfe2b
                           00FE33   676 _P3IE	=	0xfe33
                           00FD05   677 _P5INTE	=	0xfd05
                           00FD15   678 _P5INTF	=	0xfd15
                           00FD25   679 _P5IM0	=	0xfd25
                           00FD35   680 _P5IM1	=	0xfd35
                           00FD45   681 _P5WKUE	=	0xfd45
                           00FE15   682 _P5PU	=	0xfe15
                           00FE1D   683 _P5NCS	=	0xfe1d
                           00FE25   684 _P5SR	=	0xfe25
                           00FE2D   685 _P5DR	=	0xfe2d
                           00FE35   686 _P5IE	=	0xfe35
                           00FD60   687 _PINIPL	=	0xfd60
                           00FD61   688 _PINIPH	=	0xfd61
                           00FE80   689 _I2CCFG	=	0xfe80
                           00FE81   690 _I2CMSCR	=	0xfe81
                           00FE82   691 _I2CMSST	=	0xfe82
                           00FE83   692 _I2CSLCR	=	0xfe83
                           00FE84   693 _I2CSLST	=	0xfe84
                           00FE85   694 _I2CSLADR	=	0xfe85
                           00FE86   695 _I2CTXD	=	0xfe86
                           00FE87   696 _I2CRXD	=	0xfe87
                           00FE88   697 _I2CMSAUX	=	0xfe88
                           00FE50   698 _LCMCFG	=	0xfe50
                           00FE51   699 _LCMCFG2	=	0xfe51
                           00FE52   700 _LCMCR	=	0xfe52
                           00FE53   701 _LCMSTA	=	0xfe53
                           00FE54   702 _LCMIDDATL	=	0xfe54
                           00FE55   703 _LCMIDDATH	=	0xfe55
                           00FE54   704 _LCMIDDAT	=	0xfe54
                           00FA70   705 _DMA_LCM_CFG	=	0xfa70
                           00FA71   706 _DMA_LCM_CR	=	0xfa71
                           00FA72   707 _DMA_LCM_STA	=	0xfa72
                           00FA73   708 _DMA_LCM_AMT	=	0xfa73
                           00FA74   709 _DMA_LCM_DONE	=	0xfa74
                           00FA75   710 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   711 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   712 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   713 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   714 _MD3	=	0xfcf0
                           00FCF1   715 _MD2	=	0xfcf1
                           00FCF2   716 _MD1	=	0xfcf2
                           00FCF3   717 _MD0	=	0xfcf3
                           00FCF4   718 _MD5	=	0xfcf4
                           00FCF5   719 _MD4	=	0xfcf5
                           00FCF6   720 _ARCON	=	0xfcf6
                           00FCF7   721 _OPCON	=	0xfcf7
                           00FE08   722 _SPFUNC	=	0xfe08
                           00FE09   723 _RSTFLAG	=	0xfe09
                           00FEB0   724 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   725 _PWMA_ENO	=	0xfeb1
                           00FEB2   726 _PWMA_PS	=	0xfeb2
                           00FEB3   727 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   728 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   729 _PWMB_ENO	=	0xfeb5
                           00FEB6   730 _PWMB_PS	=	0xfeb6
                           00FEB7   731 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   732 _PWMA_CR1	=	0xfec0
                           00FEC1   733 _PWMA_CR2	=	0xfec1
                           00FEC2   734 _PWMA_SMCR	=	0xfec2
                           00FEC3   735 _PWMA_ETR	=	0xfec3
                           00FEC4   736 _PWMA_IER	=	0xfec4
                           00FEC5   737 _PWMA_SR1	=	0xfec5
                           00FEC6   738 _PWMA_SR2	=	0xfec6
                           00FEC7   739 _PWMA_EGR	=	0xfec7
                           00FEC8   740 _PWMA_CCMR1	=	0xfec8
                           00FEC9   741 _PWMA_CCMR2	=	0xfec9
                           00FECA   742 _PWMA_CCMR3	=	0xfeca
                           00FECB   743 _PWMA_CCMR4	=	0xfecb
                           00FECC   744 _PWMA_CCER1	=	0xfecc
                           00FECD   745 _PWMA_CCER2	=	0xfecd
                           00FECE   746 _PWMA_CNTRH	=	0xfece
                           00FECF   747 _PWMA_CNTRL	=	0xfecf
                           00FED0   748 _PWMA_PSCRH	=	0xfed0
                           00FED1   749 _PWMA_PSCRL	=	0xfed1
                           00FED2   750 _PWMA_ARRH	=	0xfed2
                           00FED3   751 _PWMA_ARRL	=	0xfed3
                           00FED4   752 _PWMA_RCR	=	0xfed4
                           00FED5   753 _PWMA_CCR1H	=	0xfed5
                           00FED6   754 _PWMA_CCR1L	=	0xfed6
                           00FED7   755 _PWMA_CCR2H	=	0xfed7
                           00FED8   756 _PWMA_CCR2L	=	0xfed8
                           00FED9   757 _PWMA_CCR3H	=	0xfed9
                           00FEDA   758 _PWMA_CCR3L	=	0xfeda
                           00FEDB   759 _PWMA_CCR4H	=	0xfedb
                           00FEDC   760 _PWMA_CCR4L	=	0xfedc
                           00FEDD   761 _PWMA_BKR	=	0xfedd
                           00FEDE   762 _PWMA_DTR	=	0xfede
                           00FEDF   763 _PWMA_OISR	=	0xfedf
                           00FEE0   764 _PWMB_CR1	=	0xfee0
                           00FEE1   765 _PWMB_CR2	=	0xfee1
                           00FEE2   766 _PWMB_SMCR	=	0xfee2
                           00FEE3   767 _PWMB_ETR	=	0xfee3
                           00FEE4   768 _PWMB_IER	=	0xfee4
                           00FEE5   769 _PWMB_SR1	=	0xfee5
                           00FEE6   770 _PWMB_SR2	=	0xfee6
                           00FEE7   771 _PWMB_EGR	=	0xfee7
                           00FEE8   772 _PWMB_CCMR1	=	0xfee8
                           00FEE9   773 _PWMB_CCMR2	=	0xfee9
                           00FEEA   774 _PWMB_CCMR3	=	0xfeea
                           00FEEB   775 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   776 _PWMB_CCER1	=	0xfeec
                           00FEED   777 _PWMB_CCER2	=	0xfeed
                           00FEEE   778 _PWMB_CNTRH	=	0xfeee
                           00FEEF   779 _PWMB_CNTRL	=	0xfeef
                           00FEF0   780 _PWMB_PSCRH	=	0xfef0
                           00FEF1   781 _PWMB_PSCRL	=	0xfef1
                           00FEF2   782 _PWMB_ARRH	=	0xfef2
                           00FEF3   783 _PWMB_ARRL	=	0xfef3
                           00FEF4   784 _PWMB_RCR	=	0xfef4
                           00FEF5   785 _PWMB_CCR1H	=	0xfef5
                           00FEF6   786 _PWMB_CCR1L	=	0xfef6
                           00FEF7   787 _PWMB_CCR2H	=	0xfef7
                           00FEF8   788 _PWMB_CCR2L	=	0xfef8
                           00FEF9   789 _PWMB_CCR3H	=	0xfef9
                           00FEFA   790 _PWMB_CCR3L	=	0xfefa
                           00FEFB   791 _PWMB_CCR4H	=	0xfefb
                           00FEFC   792 _PWMB_CCR4L	=	0xfefc
                           00FEFD   793 _PWMB_BKR	=	0xfefd
                           00FEFE   794 _PWMB_DTR	=	0xfefe
                           00FEFF   795 _PWMB_OISR	=	0xfeff
                           00FE60   796 _RTCCR	=	0xfe60
                           00FE61   797 _RTCCFG	=	0xfe61
                           00FE62   798 _RTCIEN	=	0xfe62
                           00FE63   799 _RTCIF	=	0xfe63
                           00FE64   800 _ALAHOUR	=	0xfe64
                           00FE65   801 _ALAMIN	=	0xfe65
                           00FE66   802 _ALASEC	=	0xfe66
                           00FE67   803 _ALASSEC	=	0xfe67
                           00FE68   804 _INIYEAR	=	0xfe68
                           00FE69   805 _INIMONTH	=	0xfe69
                           00FE6A   806 _INIDAY	=	0xfe6a
                           00FE6B   807 _INIHOUR	=	0xfe6b
                           00FE6C   808 _INIMIN	=	0xfe6c
                           00FE6D   809 _INISEC	=	0xfe6d
                           00FE6E   810 _INISSEC	=	0xfe6e
                           00FE70   811 _YEAR	=	0xfe70
                           00FE71   812 _MONTH	=	0xfe71
                           00FE72   813 _DAY	=	0xfe72
                           00FE73   814 _HOUR	=	0xfe73
                           00FE74   815 _MIN	=	0xfe74
                           00FE75   816 _SEC	=	0xfe75
                           00FE76   817 _SSEC	=	0xfe76
                           00FA20   818 _DMA_SPI_CFG	=	0xfa20
                           00FA21   819 _DMA_SPI_CR	=	0xfa21
                           00FA22   820 _DMA_SPI_STA	=	0xfa22
                           00FA23   821 _DMA_SPI_AMT	=	0xfa23
                           00FA24   822 _DMA_SPI_DONE	=	0xfa24
                           00FA25   823 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   824 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   825 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   826 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   827 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   828 _CLKDIV	=	0xfe01
                           00FE02   829 _HIRCCR	=	0xfe02
                           00FE03   830 _XOSCCR	=	0xfe03
                           00FE04   831 _IRC32KCR	=	0xfe04
                           00FE00   832 _CKSEL	=	0xfe00
                           00FE05   833 _MCLKOCR	=	0xfe05
                           00FE06   834 _IRCDB	=	0xfe06
                           00FE07   835 _IRC48MCR	=	0xfe07
                           00FEA2   836 _TM2PS	=	0xfea2
                           00FEA3   837 _TM3PS	=	0xfea3
                           00FEA4   838 _TM4PS	=	0xfea4
                           00FA30   839 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   840 _DMA_UR1T_CR	=	0xfa31
                           00FA32   841 _DMA_UR1T_STA	=	0xfa32
                           00FA33   842 _DMA_URTX_AMT	=	0xfa33
                           00FA34   843 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   844 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   845 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   846 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   847 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   848 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   849 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   850 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   851 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   852 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   853 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   854 _DMA_UR2T_CR	=	0xfa31
                           00FA32   855 _DMA_UR2T_STA	=	0xfa32
                           00FA33   856 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   857 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   858 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   859 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   860 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   861 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   862 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   863 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   864 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   865 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   866 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   867 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   868 _DMA_UR3T_CR	=	0xfa31
                           00FA32   869 _DMA_UR3T_STA	=	0xfa32
                           00FA33   870 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   871 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   872 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   873 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   874 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   875 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   876 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   877 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   878 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   879 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   880 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   881 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   882 _DMA_UR4T_CR	=	0xfa31
                           00FA32   883 _DMA_UR4T_STA	=	0xfa32
                           00FA33   884 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   885 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   886 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   887 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   888 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   889 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   890 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   891 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   892 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   893 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   894 _DMA_UR4R_TXAL	=	0xfa3e
      00012C                        895 _uartGetCharacter_result_65536_69:
      00012C                        896 	.ds 1
      00012D                        897 _pwmOnCounterInterrupt_PARM_2:
      00012D                        898 	.ds 1
      00012E                        899 _pwmOnChannelInterrupt_PARM_2:
      00012E                        900 	.ds 2
      000130                        901 _pwmOnChannelInterrupt_channel_65536_151:
      000130                        902 	.ds 1
      000131                        903 _encoder_count_set_value_65536_165:
      000131                        904 	.ds 2
                                    905 ;--------------------------------------------------------
                                    906 ; absolute external ram data
                                    907 ;--------------------------------------------------------
                                    908 	.area XABS    (ABS,XDATA)
                                    909 ;--------------------------------------------------------
                                    910 ; external initialized ram data
                                    911 ;--------------------------------------------------------
                                    912 	.area XISEG   (XDATA)
      00063D                        913 _BIT_TO_INCREMENT:
      00063D                        914 	.ds 2
      00063F                        915 _count:
      00063F                        916 	.ds 2
      000641                        917 _prev_count:
      000641                        918 	.ds 2
                                    919 	.area HOME    (CODE)
                                    920 	.area GSINIT0 (CODE)
                                    921 	.area GSINIT1 (CODE)
                                    922 	.area GSINIT2 (CODE)
                                    923 	.area GSINIT3 (CODE)
                                    924 	.area GSINIT4 (CODE)
                                    925 	.area GSINIT5 (CODE)
                                    926 	.area GSINIT  (CODE)
                                    927 	.area GSFINAL (CODE)
                                    928 	.area CSEG    (CODE)
                                    929 ;--------------------------------------------------------
                                    930 ; global & static initialisations
                                    931 ;--------------------------------------------------------
                                    932 	.area HOME    (CODE)
                                    933 	.area GSINIT  (CODE)
                                    934 	.area GSFINAL (CODE)
                                    935 	.area GSINIT  (CODE)
                                    936 ;	encoder.c:3: static volatile __bit direction = 0; // 0 = count up, 1 = count down
                                    937 ;	assignBit
      000177 C2 00            [12]  938 	clr	_direction
                                    939 ;	encoder.c:4: static volatile __bit ready = 0;
                                    940 ;	assignBit
      000179 C2 01            [12]  941 	clr	_ready
                                    942 ;--------------------------------------------------------
                                    943 ; Home
                                    944 ;--------------------------------------------------------
                                    945 	.area HOME    (CODE)
                                    946 	.area HOME    (CODE)
                                    947 ;--------------------------------------------------------
                                    948 ; code
                                    949 ;--------------------------------------------------------
                                    950 	.area CSEG    (CODE)
                                    951 ;------------------------------------------------------------
                                    952 ;Allocation info for local variables in function 'pwmOnCounterInterrupt'
                                    953 ;------------------------------------------------------------
                                    954 ;event                     Allocated with name '_pwmOnCounterInterrupt_PARM_2'
                                    955 ;counter                   Allocated with name '_pwmOnCounterInterrupt_counter_65536_148'
                                    956 ;------------------------------------------------------------
                                    957 ;	encoder.c:15: void pwmOnCounterInterrupt(PWM_Counter counter, PWM_CounterInterrupt HAL_PWM_SEGMENT event) {}
                                    958 ;	-----------------------------------------
                                    959 ;	 function pwmOnCounterInterrupt
                                    960 ;	-----------------------------------------
      002C41                        961 _pwmOnCounterInterrupt:
                           000007   962 	ar7 = 0x07
                           000006   963 	ar6 = 0x06
                           000005   964 	ar5 = 0x05
                           000004   965 	ar4 = 0x04
                           000003   966 	ar3 = 0x03
                           000002   967 	ar2 = 0x02
                           000001   968 	ar1 = 0x01
                           000000   969 	ar0 = 0x00
      002C41 22               [24]  970 	ret
                                    971 ;------------------------------------------------------------
                                    972 ;Allocation info for local variables in function 'pwmOnChannelInterrupt'
                                    973 ;------------------------------------------------------------
                                    974 ;counterValue              Allocated with name '_pwmOnChannelInterrupt_PARM_2'
                                    975 ;channel                   Allocated with name '_pwmOnChannelInterrupt_channel_65536_151'
                                    976 ;------------------------------------------------------------
                                    977 ;	encoder.c:16: void pwmOnChannelInterrupt(PWM_Channel channel, uint16_t HAL_PWM_SEGMENT counterValue) {
                                    978 ;	-----------------------------------------
                                    979 ;	 function pwmOnChannelInterrupt
                                    980 ;	-----------------------------------------
      002C42                        981 _pwmOnChannelInterrupt:
      002C42 E5 82            [12]  982 	mov	a,dpl
      002C44 90 01 30         [24]  983 	mov	dptr,#_pwmOnChannelInterrupt_channel_65536_151
      002C47 F0               [24]  984 	movx	@dptr,a
                                    985 ;	encoder.c:20: if (channel == ENCODER_CHANNEL) {
      002C48 E0               [24]  986 	movx	a,@dptr
      002C49 70 0F            [24]  987 	jnz	00103$
                                    988 ;	encoder.c:24: direction = counterValue;
      002C4B 90 01 2E         [24]  989 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      002C4E E0               [24]  990 	movx	a,@dptr
      002C4F FE               [12]  991 	mov	r6,a
      002C50 A3               [24]  992 	inc	dptr
      002C51 E0               [24]  993 	movx	a,@dptr
                                    994 ;	assignBit
      002C52 FF               [12]  995 	mov	r7,a
      002C53 4E               [12]  996 	orl	a,r6
      002C54 24 FF            [12]  997 	add	a,#0xff
      002C56 92 00            [24]  998 	mov	_direction,c
                                    999 ;	encoder.c:25: ready = 1;
                                   1000 ;	assignBit
      002C58 D2 01            [12] 1001 	setb	_ready
      002C5A                       1002 00103$:
                                   1003 ;	encoder.c:28: }
      002C5A 22               [24] 1004 	ret
                                   1005 ;------------------------------------------------------------
                                   1006 ;Allocation info for local variables in function 'encoder_init'
                                   1007 ;------------------------------------------------------------
                                   1008 ;	encoder.c:31: void encoder_init(void) {
                                   1009 ;	-----------------------------------------
                                   1010 ;	 function encoder_init
                                   1011 ;	-----------------------------------------
      002C5B                       1012 _encoder_init:
                                   1013 ;	encoder.c:36: PWM_FILTER_4_CLOCKS
      002C5B 90 00 80         [24] 1014 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_2
      002C5E E4               [12] 1015 	clr	a
      002C5F F0               [24] 1016 	movx	@dptr,a
      002C60 90 00 81         [24] 1017 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_3
      002C63 F0               [24] 1018 	movx	@dptr,a
      002C64 90 00 82         [24] 1019 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_4
      002C67 74 02            [12] 1020 	mov	a,#0x02
      002C69 F0               [24] 1021 	movx	@dptr,a
      002C6A 75 82 00         [24] 1022 	mov	dpl,#0x00
                                   1023 ;	encoder.c:38: }
      002C6D 02 0C 61         [24] 1024 	ljmp	_pwmInitialiseQuadratureEncoder
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'encoder_process'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	encoder.c:40: void encoder_process(void) {
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function encoder_process
                                   1031 ;	-----------------------------------------
      002C70                       1032 _encoder_process:
                                   1033 ;	encoder.c:41: if (ready) {
      002C70 30 01 33         [24] 1034 	jnb	_ready,00103$
                                   1035 ;	encoder.c:42: prev_count = count;
      002C73 90 06 3F         [24] 1036 	mov	dptr,#_count
      002C76 E0               [24] 1037 	movx	a,@dptr
      002C77 FE               [12] 1038 	mov	r6,a
      002C78 A3               [24] 1039 	inc	dptr
      002C79 E0               [24] 1040 	movx	a,@dptr
      002C7A FF               [12] 1041 	mov	r7,a
      002C7B 90 06 41         [24] 1042 	mov	dptr,#_prev_count
      002C7E EE               [12] 1043 	mov	a,r6
      002C7F F0               [24] 1044 	movx	@dptr,a
      002C80 EF               [12] 1045 	mov	a,r7
      002C81 A3               [24] 1046 	inc	dptr
      002C82 F0               [24] 1047 	movx	@dptr,a
                                   1048 ;	encoder.c:43: count += BIT_TO_INCREMENT[direction];
      002C83 A2 00            [12] 1049 	mov	c,_direction
      002C85 E4               [12] 1050 	clr	a
      002C86 33               [12] 1051 	rlc	a
      002C87 24 3D            [12] 1052 	add	a,#_BIT_TO_INCREMENT
      002C89 F5 82            [12] 1053 	mov	dpl,a
      002C8B E4               [12] 1054 	clr	a
      002C8C 34 06            [12] 1055 	addc	a,#(_BIT_TO_INCREMENT >> 8)
      002C8E F5 83            [12] 1056 	mov	dph,a
      002C90 E0               [24] 1057 	movx	a,@dptr
      002C91 FD               [12] 1058 	mov	r5,a
      002C92 33               [12] 1059 	rlc	a
      002C93 95 E0            [12] 1060 	subb	a,acc
      002C95 FC               [12] 1061 	mov	r4,a
      002C96 ED               [12] 1062 	mov	a,r5
      002C97 2E               [12] 1063 	add	a,r6
      002C98 FD               [12] 1064 	mov	r5,a
      002C99 EC               [12] 1065 	mov	a,r4
      002C9A 3F               [12] 1066 	addc	a,r7
      002C9B FC               [12] 1067 	mov	r4,a
      002C9C 90 06 3F         [24] 1068 	mov	dptr,#_count
      002C9F ED               [12] 1069 	mov	a,r5
      002CA0 F0               [24] 1070 	movx	@dptr,a
      002CA1 EC               [12] 1071 	mov	a,r4
      002CA2 A3               [24] 1072 	inc	dptr
      002CA3 F0               [24] 1073 	movx	@dptr,a
                                   1074 ;	encoder.c:44: ready = 0;
                                   1075 ;	assignBit
      002CA4 C2 01            [12] 1076 	clr	_ready
      002CA6                       1077 00103$:
                                   1078 ;	encoder.c:46: }
      002CA6 22               [24] 1079 	ret
                                   1080 ;------------------------------------------------------------
                                   1081 ;Allocation info for local variables in function 'get_encoder_count'
                                   1082 ;------------------------------------------------------------
                                   1083 ;	encoder.c:48: int16_t get_encoder_count(void) { return count; }
                                   1084 ;	-----------------------------------------
                                   1085 ;	 function get_encoder_count
                                   1086 ;	-----------------------------------------
      002CA7                       1087 _get_encoder_count:
      002CA7 90 06 3F         [24] 1088 	mov	dptr,#_count
      002CAA E0               [24] 1089 	movx	a,@dptr
      002CAB FE               [12] 1090 	mov	r6,a
      002CAC A3               [24] 1091 	inc	dptr
      002CAD E0               [24] 1092 	movx	a,@dptr
      002CAE 8E 82            [24] 1093 	mov	dpl,r6
      002CB0 F5 83            [12] 1094 	mov	dph,a
      002CB2 22               [24] 1095 	ret
                                   1096 ;------------------------------------------------------------
                                   1097 ;Allocation info for local variables in function 'get_encoder_dir'
                                   1098 ;------------------------------------------------------------
                                   1099 ;	encoder.c:49: int8_t get_encoder_dir(void) {  return (count-prev_count); }
                                   1100 ;	-----------------------------------------
                                   1101 ;	 function get_encoder_dir
                                   1102 ;	-----------------------------------------
      002CB3                       1103 _get_encoder_dir:
      002CB3 90 06 3F         [24] 1104 	mov	dptr,#_count
      002CB6 E0               [24] 1105 	movx	a,@dptr
      002CB7 FE               [12] 1106 	mov	r6,a
      002CB8 A3               [24] 1107 	inc	dptr
      002CB9 E0               [24] 1108 	movx	a,@dptr
      002CBA 90 06 41         [24] 1109 	mov	dptr,#_prev_count
      002CBD E0               [24] 1110 	movx	a,@dptr
      002CBE FD               [12] 1111 	mov	r5,a
      002CBF A3               [24] 1112 	inc	dptr
      002CC0 E0               [24] 1113 	movx	a,@dptr
      002CC1 EE               [12] 1114 	mov	a,r6
      002CC2 C3               [12] 1115 	clr	c
      002CC3 9D               [12] 1116 	subb	a,r5
      002CC4 F5 82            [12] 1117 	mov	dpl,a
      002CC6 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'encoder_count_reset'
                                   1121 ;------------------------------------------------------------
                                   1122 ;	encoder.c:50: void encoder_count_reset(void) { count = 0; }
                                   1123 ;	-----------------------------------------
                                   1124 ;	 function encoder_count_reset
                                   1125 ;	-----------------------------------------
      002CC7                       1126 _encoder_count_reset:
      002CC7 90 06 3F         [24] 1127 	mov	dptr,#_count
      002CCA E4               [12] 1128 	clr	a
      002CCB F0               [24] 1129 	movx	@dptr,a
      002CCC A3               [24] 1130 	inc	dptr
      002CCD F0               [24] 1131 	movx	@dptr,a
      002CCE 22               [24] 1132 	ret
                                   1133 ;------------------------------------------------------------
                                   1134 ;Allocation info for local variables in function 'encoder_count_set'
                                   1135 ;------------------------------------------------------------
                                   1136 ;value                     Allocated with name '_encoder_count_set_value_65536_165'
                                   1137 ;------------------------------------------------------------
                                   1138 ;	encoder.c:51: void encoder_count_set(int16_t value) { count = value; }
                                   1139 ;	-----------------------------------------
                                   1140 ;	 function encoder_count_set
                                   1141 ;	-----------------------------------------
      002CCF                       1142 _encoder_count_set:
      002CCF AF 83            [24] 1143 	mov	r7,dph
      002CD1 E5 82            [12] 1144 	mov	a,dpl
      002CD3 90 01 31         [24] 1145 	mov	dptr,#_encoder_count_set_value_65536_165
      002CD6 F0               [24] 1146 	movx	@dptr,a
      002CD7 EF               [12] 1147 	mov	a,r7
      002CD8 A3               [24] 1148 	inc	dptr
      002CD9 F0               [24] 1149 	movx	@dptr,a
      002CDA 90 01 31         [24] 1150 	mov	dptr,#_encoder_count_set_value_65536_165
      002CDD E0               [24] 1151 	movx	a,@dptr
      002CDE FE               [12] 1152 	mov	r6,a
      002CDF A3               [24] 1153 	inc	dptr
      002CE0 E0               [24] 1154 	movx	a,@dptr
      002CE1 FF               [12] 1155 	mov	r7,a
      002CE2 90 06 3F         [24] 1156 	mov	dptr,#_count
      002CE5 EE               [12] 1157 	mov	a,r6
      002CE6 F0               [24] 1158 	movx	@dptr,a
      002CE7 EF               [12] 1159 	mov	a,r7
      002CE8 A3               [24] 1160 	inc	dptr
      002CE9 F0               [24] 1161 	movx	@dptr,a
      002CEA 22               [24] 1162 	ret
                                   1163 	.area CSEG    (CODE)
                                   1164 	.area CONST   (CODE)
      0067A3                       1165 _FONTS:
      0067A3 00                    1166 	.db #0x00	; 0
      0067A4 00                    1167 	.db #0x00	; 0
      0067A5 00                    1168 	.db #0x00	; 0
      0067A6 00                    1169 	.db #0x00	; 0
      0067A7 00                    1170 	.db #0x00	; 0
      0067A8 81                    1171 	.db #0x81	; 129
      0067A9 81                    1172 	.db #0x81	; 129
      0067AA 18                    1173 	.db #0x18	; 24
      0067AB 81                    1174 	.db #0x81	; 129
      0067AC 81                    1175 	.db #0x81	; 129
      0067AD 00                    1176 	.db #0x00	; 0
      0067AE 07                    1177 	.db #0x07	; 7
      0067AF 00                    1178 	.db #0x00	; 0
      0067B0 07                    1179 	.db #0x07	; 7
      0067B1 00                    1180 	.db #0x00	; 0
      0067B2 14                    1181 	.db #0x14	; 20
      0067B3 7F                    1182 	.db #0x7f	; 127
      0067B4 14                    1183 	.db #0x14	; 20
      0067B5 7F                    1184 	.db #0x7f	; 127
      0067B6 14                    1185 	.db #0x14	; 20
      0067B7 24                    1186 	.db #0x24	; 36
      0067B8 2A                    1187 	.db #0x2a	; 42
      0067B9 7F                    1188 	.db #0x7f	; 127
      0067BA 2A                    1189 	.db #0x2a	; 42
      0067BB 12                    1190 	.db #0x12	; 18
      0067BC 23                    1191 	.db #0x23	; 35
      0067BD 13                    1192 	.db #0x13	; 19
      0067BE 08                    1193 	.db #0x08	; 8
      0067BF 64                    1194 	.db #0x64	; 100	'd'
      0067C0 62                    1195 	.db #0x62	; 98	'b'
      0067C1 36                    1196 	.db #0x36	; 54	'6'
      0067C2 49                    1197 	.db #0x49	; 73	'I'
      0067C3 55                    1198 	.db #0x55	; 85	'U'
      0067C4 22                    1199 	.db #0x22	; 34
      0067C5 50                    1200 	.db #0x50	; 80	'P'
      0067C6 00                    1201 	.db #0x00	; 0
      0067C7 05                    1202 	.db #0x05	; 5
      0067C8 03                    1203 	.db #0x03	; 3
      0067C9 00                    1204 	.db #0x00	; 0
      0067CA 00                    1205 	.db #0x00	; 0
      0067CB 00                    1206 	.db #0x00	; 0
      0067CC 1C                    1207 	.db #0x1c	; 28
      0067CD 22                    1208 	.db #0x22	; 34
      0067CE 41                    1209 	.db #0x41	; 65	'A'
      0067CF 00                    1210 	.db #0x00	; 0
      0067D0 00                    1211 	.db #0x00	; 0
      0067D1 41                    1212 	.db #0x41	; 65	'A'
      0067D2 22                    1213 	.db #0x22	; 34
      0067D3 1C                    1214 	.db #0x1c	; 28
      0067D4 00                    1215 	.db #0x00	; 0
      0067D5 14                    1216 	.db #0x14	; 20
      0067D6 08                    1217 	.db #0x08	; 8
      0067D7 3E                    1218 	.db #0x3e	; 62
      0067D8 08                    1219 	.db #0x08	; 8
      0067D9 14                    1220 	.db #0x14	; 20
      0067DA 08                    1221 	.db #0x08	; 8
      0067DB 08                    1222 	.db #0x08	; 8
      0067DC 3E                    1223 	.db #0x3e	; 62
      0067DD 08                    1224 	.db #0x08	; 8
      0067DE 08                    1225 	.db #0x08	; 8
      0067DF 00                    1226 	.db #0x00	; 0
      0067E0 50                    1227 	.db #0x50	; 80	'P'
      0067E1 30                    1228 	.db #0x30	; 48	'0'
      0067E2 00                    1229 	.db #0x00	; 0
      0067E3 00                    1230 	.db #0x00	; 0
      0067E4 08                    1231 	.db #0x08	; 8
      0067E5 08                    1232 	.db #0x08	; 8
      0067E6 08                    1233 	.db #0x08	; 8
      0067E7 08                    1234 	.db #0x08	; 8
      0067E8 08                    1235 	.db #0x08	; 8
      0067E9 00                    1236 	.db #0x00	; 0
      0067EA 60                    1237 	.db #0x60	; 96
      0067EB 60                    1238 	.db #0x60	; 96
      0067EC 00                    1239 	.db #0x00	; 0
      0067ED 00                    1240 	.db #0x00	; 0
      0067EE 20                    1241 	.db #0x20	; 32
      0067EF 10                    1242 	.db #0x10	; 16
      0067F0 08                    1243 	.db #0x08	; 8
      0067F1 04                    1244 	.db #0x04	; 4
      0067F2 02                    1245 	.db #0x02	; 2
      0067F3 3E                    1246 	.db #0x3e	; 62
      0067F4 51                    1247 	.db #0x51	; 81	'Q'
      0067F5 49                    1248 	.db #0x49	; 73	'I'
      0067F6 45                    1249 	.db #0x45	; 69	'E'
      0067F7 3E                    1250 	.db #0x3e	; 62
      0067F8 00                    1251 	.db #0x00	; 0
      0067F9 42                    1252 	.db #0x42	; 66	'B'
      0067FA 7F                    1253 	.db #0x7f	; 127
      0067FB 40                    1254 	.db #0x40	; 64
      0067FC 00                    1255 	.db #0x00	; 0
      0067FD 42                    1256 	.db #0x42	; 66	'B'
      0067FE 61                    1257 	.db #0x61	; 97	'a'
      0067FF 51                    1258 	.db #0x51	; 81	'Q'
      006800 49                    1259 	.db #0x49	; 73	'I'
      006801 46                    1260 	.db #0x46	; 70	'F'
      006802 21                    1261 	.db #0x21	; 33
      006803 41                    1262 	.db #0x41	; 65	'A'
      006804 45                    1263 	.db #0x45	; 69	'E'
      006805 4B                    1264 	.db #0x4b	; 75	'K'
      006806 31                    1265 	.db #0x31	; 49	'1'
      006807 18                    1266 	.db #0x18	; 24
      006808 14                    1267 	.db #0x14	; 20
      006809 12                    1268 	.db #0x12	; 18
      00680A 7F                    1269 	.db #0x7f	; 127
      00680B 10                    1270 	.db #0x10	; 16
      00680C 27                    1271 	.db #0x27	; 39
      00680D 45                    1272 	.db #0x45	; 69	'E'
      00680E 45                    1273 	.db #0x45	; 69	'E'
      00680F 45                    1274 	.db #0x45	; 69	'E'
      006810 39                    1275 	.db #0x39	; 57	'9'
      006811 3C                    1276 	.db #0x3c	; 60
      006812 4A                    1277 	.db #0x4a	; 74	'J'
      006813 49                    1278 	.db #0x49	; 73	'I'
      006814 49                    1279 	.db #0x49	; 73	'I'
      006815 30                    1280 	.db #0x30	; 48	'0'
      006816 01                    1281 	.db #0x01	; 1
      006817 71                    1282 	.db #0x71	; 113	'q'
      006818 09                    1283 	.db #0x09	; 9
      006819 05                    1284 	.db #0x05	; 5
      00681A 03                    1285 	.db #0x03	; 3
      00681B 36                    1286 	.db #0x36	; 54	'6'
      00681C 49                    1287 	.db #0x49	; 73	'I'
      00681D 49                    1288 	.db #0x49	; 73	'I'
      00681E 49                    1289 	.db #0x49	; 73	'I'
      00681F 36                    1290 	.db #0x36	; 54	'6'
      006820 06                    1291 	.db #0x06	; 6
      006821 49                    1292 	.db #0x49	; 73	'I'
      006822 49                    1293 	.db #0x49	; 73	'I'
      006823 29                    1294 	.db #0x29	; 41
      006824 1E                    1295 	.db #0x1e	; 30
      006825 00                    1296 	.db #0x00	; 0
      006826 36                    1297 	.db #0x36	; 54	'6'
      006827 36                    1298 	.db #0x36	; 54	'6'
      006828 00                    1299 	.db #0x00	; 0
      006829 00                    1300 	.db #0x00	; 0
      00682A 00                    1301 	.db #0x00	; 0
      00682B 56                    1302 	.db #0x56	; 86	'V'
      00682C 36                    1303 	.db #0x36	; 54	'6'
      00682D 00                    1304 	.db #0x00	; 0
      00682E 00                    1305 	.db #0x00	; 0
      00682F 08                    1306 	.db #0x08	; 8
      006830 14                    1307 	.db #0x14	; 20
      006831 22                    1308 	.db #0x22	; 34
      006832 41                    1309 	.db #0x41	; 65	'A'
      006833 00                    1310 	.db #0x00	; 0
      006834 14                    1311 	.db #0x14	; 20
      006835 14                    1312 	.db #0x14	; 20
      006836 14                    1313 	.db #0x14	; 20
      006837 14                    1314 	.db #0x14	; 20
      006838 14                    1315 	.db #0x14	; 20
      006839 00                    1316 	.db #0x00	; 0
      00683A 41                    1317 	.db #0x41	; 65	'A'
      00683B 22                    1318 	.db #0x22	; 34
      00683C 14                    1319 	.db #0x14	; 20
      00683D 08                    1320 	.db #0x08	; 8
      00683E 02                    1321 	.db #0x02	; 2
      00683F 01                    1322 	.db #0x01	; 1
      006840 51                    1323 	.db #0x51	; 81	'Q'
      006841 09                    1324 	.db #0x09	; 9
      006842 06                    1325 	.db #0x06	; 6
      006843 32                    1326 	.db #0x32	; 50	'2'
      006844 49                    1327 	.db #0x49	; 73	'I'
      006845 79                    1328 	.db #0x79	; 121	'y'
      006846 41                    1329 	.db #0x41	; 65	'A'
      006847 3E                    1330 	.db #0x3e	; 62
      006848 7E                    1331 	.db #0x7e	; 126
      006849 11                    1332 	.db #0x11	; 17
      00684A 11                    1333 	.db #0x11	; 17
      00684B 11                    1334 	.db #0x11	; 17
      00684C 7E                    1335 	.db #0x7e	; 126
      00684D 7F                    1336 	.db #0x7f	; 127
      00684E 49                    1337 	.db #0x49	; 73	'I'
      00684F 49                    1338 	.db #0x49	; 73	'I'
      006850 49                    1339 	.db #0x49	; 73	'I'
      006851 36                    1340 	.db #0x36	; 54	'6'
      006852 3E                    1341 	.db #0x3e	; 62
      006853 41                    1342 	.db #0x41	; 65	'A'
      006854 41                    1343 	.db #0x41	; 65	'A'
      006855 41                    1344 	.db #0x41	; 65	'A'
      006856 22                    1345 	.db #0x22	; 34
      006857 7F                    1346 	.db #0x7f	; 127
      006858 41                    1347 	.db #0x41	; 65	'A'
      006859 41                    1348 	.db #0x41	; 65	'A'
      00685A 22                    1349 	.db #0x22	; 34
      00685B 1C                    1350 	.db #0x1c	; 28
      00685C 7F                    1351 	.db #0x7f	; 127
      00685D 49                    1352 	.db #0x49	; 73	'I'
      00685E 49                    1353 	.db #0x49	; 73	'I'
      00685F 49                    1354 	.db #0x49	; 73	'I'
      006860 41                    1355 	.db #0x41	; 65	'A'
      006861 7F                    1356 	.db #0x7f	; 127
      006862 09                    1357 	.db #0x09	; 9
      006863 09                    1358 	.db #0x09	; 9
      006864 09                    1359 	.db #0x09	; 9
      006865 01                    1360 	.db #0x01	; 1
      006866 3E                    1361 	.db #0x3e	; 62
      006867 41                    1362 	.db #0x41	; 65	'A'
      006868 49                    1363 	.db #0x49	; 73	'I'
      006869 49                    1364 	.db #0x49	; 73	'I'
      00686A 7A                    1365 	.db #0x7a	; 122	'z'
      00686B 7F                    1366 	.db #0x7f	; 127
      00686C 08                    1367 	.db #0x08	; 8
      00686D 08                    1368 	.db #0x08	; 8
      00686E 08                    1369 	.db #0x08	; 8
      00686F 7F                    1370 	.db #0x7f	; 127
      006870 00                    1371 	.db #0x00	; 0
      006871 41                    1372 	.db #0x41	; 65	'A'
      006872 7F                    1373 	.db #0x7f	; 127
      006873 41                    1374 	.db #0x41	; 65	'A'
      006874 00                    1375 	.db #0x00	; 0
      006875 20                    1376 	.db #0x20	; 32
      006876 40                    1377 	.db #0x40	; 64
      006877 41                    1378 	.db #0x41	; 65	'A'
      006878 3F                    1379 	.db #0x3f	; 63
      006879 01                    1380 	.db #0x01	; 1
      00687A 7F                    1381 	.db #0x7f	; 127
      00687B 08                    1382 	.db #0x08	; 8
      00687C 14                    1383 	.db #0x14	; 20
      00687D 22                    1384 	.db #0x22	; 34
      00687E 41                    1385 	.db #0x41	; 65	'A'
      00687F 7F                    1386 	.db #0x7f	; 127
      006880 40                    1387 	.db #0x40	; 64
      006881 40                    1388 	.db #0x40	; 64
      006882 40                    1389 	.db #0x40	; 64
      006883 40                    1390 	.db #0x40	; 64
      006884 7F                    1391 	.db #0x7f	; 127
      006885 02                    1392 	.db #0x02	; 2
      006886 0C                    1393 	.db #0x0c	; 12
      006887 02                    1394 	.db #0x02	; 2
      006888 7F                    1395 	.db #0x7f	; 127
      006889 7F                    1396 	.db #0x7f	; 127
      00688A 04                    1397 	.db #0x04	; 4
      00688B 08                    1398 	.db #0x08	; 8
      00688C 10                    1399 	.db #0x10	; 16
      00688D 7F                    1400 	.db #0x7f	; 127
      00688E 3E                    1401 	.db #0x3e	; 62
      00688F 41                    1402 	.db #0x41	; 65	'A'
      006890 41                    1403 	.db #0x41	; 65	'A'
      006891 41                    1404 	.db #0x41	; 65	'A'
      006892 3E                    1405 	.db #0x3e	; 62
      006893 7F                    1406 	.db #0x7f	; 127
      006894 09                    1407 	.db #0x09	; 9
      006895 09                    1408 	.db #0x09	; 9
      006896 09                    1409 	.db #0x09	; 9
      006897 06                    1410 	.db #0x06	; 6
      006898 3E                    1411 	.db #0x3e	; 62
      006899 41                    1412 	.db #0x41	; 65	'A'
      00689A 51                    1413 	.db #0x51	; 81	'Q'
      00689B 21                    1414 	.db #0x21	; 33
      00689C 5E                    1415 	.db #0x5e	; 94
      00689D 7F                    1416 	.db #0x7f	; 127
      00689E 09                    1417 	.db #0x09	; 9
      00689F 19                    1418 	.db #0x19	; 25
      0068A0 29                    1419 	.db #0x29	; 41
      0068A1 46                    1420 	.db #0x46	; 70	'F'
      0068A2 46                    1421 	.db #0x46	; 70	'F'
      0068A3 49                    1422 	.db #0x49	; 73	'I'
      0068A4 49                    1423 	.db #0x49	; 73	'I'
      0068A5 49                    1424 	.db #0x49	; 73	'I'
      0068A6 31                    1425 	.db #0x31	; 49	'1'
      0068A7 01                    1426 	.db #0x01	; 1
      0068A8 01                    1427 	.db #0x01	; 1
      0068A9 7F                    1428 	.db #0x7f	; 127
      0068AA 01                    1429 	.db #0x01	; 1
      0068AB 01                    1430 	.db #0x01	; 1
      0068AC 3F                    1431 	.db #0x3f	; 63
      0068AD 40                    1432 	.db #0x40	; 64
      0068AE 40                    1433 	.db #0x40	; 64
      0068AF 40                    1434 	.db #0x40	; 64
      0068B0 3F                    1435 	.db #0x3f	; 63
      0068B1 1F                    1436 	.db #0x1f	; 31
      0068B2 20                    1437 	.db #0x20	; 32
      0068B3 40                    1438 	.db #0x40	; 64
      0068B4 20                    1439 	.db #0x20	; 32
      0068B5 1F                    1440 	.db #0x1f	; 31
      0068B6 3F                    1441 	.db #0x3f	; 63
      0068B7 40                    1442 	.db #0x40	; 64
      0068B8 38                    1443 	.db #0x38	; 56	'8'
      0068B9 40                    1444 	.db #0x40	; 64
      0068BA 3F                    1445 	.db #0x3f	; 63
      0068BB 63                    1446 	.db #0x63	; 99	'c'
      0068BC 14                    1447 	.db #0x14	; 20
      0068BD 08                    1448 	.db #0x08	; 8
      0068BE 14                    1449 	.db #0x14	; 20
      0068BF 63                    1450 	.db #0x63	; 99	'c'
      0068C0 07                    1451 	.db #0x07	; 7
      0068C1 08                    1452 	.db #0x08	; 8
      0068C2 70                    1453 	.db #0x70	; 112	'p'
      0068C3 08                    1454 	.db #0x08	; 8
      0068C4 07                    1455 	.db #0x07	; 7
      0068C5 61                    1456 	.db #0x61	; 97	'a'
      0068C6 51                    1457 	.db #0x51	; 81	'Q'
      0068C7 49                    1458 	.db #0x49	; 73	'I'
      0068C8 45                    1459 	.db #0x45	; 69	'E'
      0068C9 43                    1460 	.db #0x43	; 67	'C'
      0068CA 00                    1461 	.db #0x00	; 0
      0068CB 7F                    1462 	.db #0x7f	; 127
      0068CC 41                    1463 	.db #0x41	; 65	'A'
      0068CD 41                    1464 	.db #0x41	; 65	'A'
      0068CE 00                    1465 	.db #0x00	; 0
      0068CF 02                    1466 	.db #0x02	; 2
      0068D0 04                    1467 	.db #0x04	; 4
      0068D1 08                    1468 	.db #0x08	; 8
      0068D2 10                    1469 	.db #0x10	; 16
      0068D3 20                    1470 	.db #0x20	; 32
      0068D4 00                    1471 	.db #0x00	; 0
      0068D5 41                    1472 	.db #0x41	; 65	'A'
      0068D6 41                    1473 	.db #0x41	; 65	'A'
      0068D7 7F                    1474 	.db #0x7f	; 127
      0068D8 00                    1475 	.db #0x00	; 0
      0068D9 04                    1476 	.db #0x04	; 4
      0068DA 02                    1477 	.db #0x02	; 2
      0068DB 01                    1478 	.db #0x01	; 1
      0068DC 02                    1479 	.db #0x02	; 2
      0068DD 04                    1480 	.db #0x04	; 4
      0068DE 40                    1481 	.db #0x40	; 64
      0068DF 40                    1482 	.db #0x40	; 64
      0068E0 40                    1483 	.db #0x40	; 64
      0068E1 40                    1484 	.db #0x40	; 64
      0068E2 40                    1485 	.db #0x40	; 64
      0068E3 00                    1486 	.db #0x00	; 0
      0068E4 01                    1487 	.db #0x01	; 1
      0068E5 02                    1488 	.db #0x02	; 2
      0068E6 04                    1489 	.db #0x04	; 4
      0068E7 00                    1490 	.db #0x00	; 0
      0068E8 20                    1491 	.db #0x20	; 32
      0068E9 54                    1492 	.db #0x54	; 84	'T'
      0068EA 54                    1493 	.db #0x54	; 84	'T'
      0068EB 54                    1494 	.db #0x54	; 84	'T'
      0068EC 78                    1495 	.db #0x78	; 120	'x'
      0068ED 7F                    1496 	.db #0x7f	; 127
      0068EE 48                    1497 	.db #0x48	; 72	'H'
      0068EF 44                    1498 	.db #0x44	; 68	'D'
      0068F0 44                    1499 	.db #0x44	; 68	'D'
      0068F1 38                    1500 	.db #0x38	; 56	'8'
      0068F2 38                    1501 	.db #0x38	; 56	'8'
      0068F3 44                    1502 	.db #0x44	; 68	'D'
      0068F4 44                    1503 	.db #0x44	; 68	'D'
      0068F5 44                    1504 	.db #0x44	; 68	'D'
      0068F6 20                    1505 	.db #0x20	; 32
      0068F7 38                    1506 	.db #0x38	; 56	'8'
      0068F8 44                    1507 	.db #0x44	; 68	'D'
      0068F9 44                    1508 	.db #0x44	; 68	'D'
      0068FA 48                    1509 	.db #0x48	; 72	'H'
      0068FB 7F                    1510 	.db #0x7f	; 127
      0068FC 38                    1511 	.db #0x38	; 56	'8'
      0068FD 54                    1512 	.db #0x54	; 84	'T'
      0068FE 54                    1513 	.db #0x54	; 84	'T'
      0068FF 54                    1514 	.db #0x54	; 84	'T'
      006900 18                    1515 	.db #0x18	; 24
      006901 08                    1516 	.db #0x08	; 8
      006902 7E                    1517 	.db #0x7e	; 126
      006903 09                    1518 	.db #0x09	; 9
      006904 01                    1519 	.db #0x01	; 1
      006905 02                    1520 	.db #0x02	; 2
      006906 0C                    1521 	.db #0x0c	; 12
      006907 52                    1522 	.db #0x52	; 82	'R'
      006908 52                    1523 	.db #0x52	; 82	'R'
      006909 52                    1524 	.db #0x52	; 82	'R'
      00690A 3E                    1525 	.db #0x3e	; 62
      00690B 7F                    1526 	.db #0x7f	; 127
      00690C 08                    1527 	.db #0x08	; 8
      00690D 04                    1528 	.db #0x04	; 4
      00690E 04                    1529 	.db #0x04	; 4
      00690F 78                    1530 	.db #0x78	; 120	'x'
      006910 00                    1531 	.db #0x00	; 0
      006911 44                    1532 	.db #0x44	; 68	'D'
      006912 7D                    1533 	.db #0x7d	; 125
      006913 40                    1534 	.db #0x40	; 64
      006914 00                    1535 	.db #0x00	; 0
      006915 20                    1536 	.db #0x20	; 32
      006916 40                    1537 	.db #0x40	; 64
      006917 44                    1538 	.db #0x44	; 68	'D'
      006918 3D                    1539 	.db #0x3d	; 61
      006919 00                    1540 	.db #0x00	; 0
      00691A 7F                    1541 	.db #0x7f	; 127
      00691B 10                    1542 	.db #0x10	; 16
      00691C 28                    1543 	.db #0x28	; 40
      00691D 44                    1544 	.db #0x44	; 68	'D'
      00691E 00                    1545 	.db #0x00	; 0
      00691F 00                    1546 	.db #0x00	; 0
      006920 41                    1547 	.db #0x41	; 65	'A'
      006921 7F                    1548 	.db #0x7f	; 127
      006922 40                    1549 	.db #0x40	; 64
      006923 00                    1550 	.db #0x00	; 0
      006924 7C                    1551 	.db #0x7c	; 124
      006925 04                    1552 	.db #0x04	; 4
      006926 18                    1553 	.db #0x18	; 24
      006927 04                    1554 	.db #0x04	; 4
      006928 78                    1555 	.db #0x78	; 120	'x'
      006929 7C                    1556 	.db #0x7c	; 124
      00692A 08                    1557 	.db #0x08	; 8
      00692B 04                    1558 	.db #0x04	; 4
      00692C 04                    1559 	.db #0x04	; 4
      00692D 78                    1560 	.db #0x78	; 120	'x'
      00692E 38                    1561 	.db #0x38	; 56	'8'
      00692F 44                    1562 	.db #0x44	; 68	'D'
      006930 44                    1563 	.db #0x44	; 68	'D'
      006931 44                    1564 	.db #0x44	; 68	'D'
      006932 38                    1565 	.db #0x38	; 56	'8'
      006933 7C                    1566 	.db #0x7c	; 124
      006934 14                    1567 	.db #0x14	; 20
      006935 14                    1568 	.db #0x14	; 20
      006936 14                    1569 	.db #0x14	; 20
      006937 08                    1570 	.db #0x08	; 8
      006938 08                    1571 	.db #0x08	; 8
      006939 14                    1572 	.db #0x14	; 20
      00693A 14                    1573 	.db #0x14	; 20
      00693B 14                    1574 	.db #0x14	; 20
      00693C 7C                    1575 	.db #0x7c	; 124
      00693D 7C                    1576 	.db #0x7c	; 124
      00693E 08                    1577 	.db #0x08	; 8
      00693F 04                    1578 	.db #0x04	; 4
      006940 04                    1579 	.db #0x04	; 4
      006941 08                    1580 	.db #0x08	; 8
      006942 48                    1581 	.db #0x48	; 72	'H'
      006943 54                    1582 	.db #0x54	; 84	'T'
      006944 54                    1583 	.db #0x54	; 84	'T'
      006945 54                    1584 	.db #0x54	; 84	'T'
      006946 20                    1585 	.db #0x20	; 32
      006947 04                    1586 	.db #0x04	; 4
      006948 3F                    1587 	.db #0x3f	; 63
      006949 44                    1588 	.db #0x44	; 68	'D'
      00694A 40                    1589 	.db #0x40	; 64
      00694B 20                    1590 	.db #0x20	; 32
      00694C 3C                    1591 	.db #0x3c	; 60
      00694D 40                    1592 	.db #0x40	; 64
      00694E 40                    1593 	.db #0x40	; 64
      00694F 20                    1594 	.db #0x20	; 32
      006950 7C                    1595 	.db #0x7c	; 124
      006951 1C                    1596 	.db #0x1c	; 28
      006952 20                    1597 	.db #0x20	; 32
      006953 40                    1598 	.db #0x40	; 64
      006954 20                    1599 	.db #0x20	; 32
      006955 1C                    1600 	.db #0x1c	; 28
      006956 3C                    1601 	.db #0x3c	; 60
      006957 40                    1602 	.db #0x40	; 64
      006958 30                    1603 	.db #0x30	; 48	'0'
      006959 40                    1604 	.db #0x40	; 64
      00695A 3C                    1605 	.db #0x3c	; 60
      00695B 44                    1606 	.db #0x44	; 68	'D'
      00695C 28                    1607 	.db #0x28	; 40
      00695D 10                    1608 	.db #0x10	; 16
      00695E 28                    1609 	.db #0x28	; 40
      00695F 44                    1610 	.db #0x44	; 68	'D'
      006960 0C                    1611 	.db #0x0c	; 12
      006961 50                    1612 	.db #0x50	; 80	'P'
      006962 50                    1613 	.db #0x50	; 80	'P'
      006963 50                    1614 	.db #0x50	; 80	'P'
      006964 3C                    1615 	.db #0x3c	; 60
      006965 44                    1616 	.db #0x44	; 68	'D'
      006966 64                    1617 	.db #0x64	; 100	'd'
      006967 54                    1618 	.db #0x54	; 84	'T'
      006968 4C                    1619 	.db #0x4c	; 76	'L'
      006969 44                    1620 	.db #0x44	; 68	'D'
      00696A 00                    1621 	.db #0x00	; 0
      00696B 08                    1622 	.db #0x08	; 8
      00696C 36                    1623 	.db #0x36	; 54	'6'
      00696D 41                    1624 	.db #0x41	; 65	'A'
      00696E 00                    1625 	.db #0x00	; 0
      00696F 00                    1626 	.db #0x00	; 0
      006970 00                    1627 	.db #0x00	; 0
      006971 7F                    1628 	.db #0x7f	; 127
      006972 00                    1629 	.db #0x00	; 0
      006973 00                    1630 	.db #0x00	; 0
      006974 00                    1631 	.db #0x00	; 0
      006975 41                    1632 	.db #0x41	; 65	'A'
      006976 36                    1633 	.db #0x36	; 54	'6'
      006977 08                    1634 	.db #0x08	; 8
      006978 00                    1635 	.db #0x00	; 0
      006979 10                    1636 	.db #0x10	; 16
      00697A 08                    1637 	.db #0x08	; 8
      00697B 08                    1638 	.db #0x08	; 8
      00697C 10                    1639 	.db #0x10	; 16
      00697D 08                    1640 	.db #0x08	; 8
      00697E 00                    1641 	.db #0x00	; 0
      00697F 00                    1642 	.db #0x00	; 0
      006980 00                    1643 	.db #0x00	; 0
      006981 00                    1644 	.db #0x00	; 0
      006982 00                    1645 	.db #0x00	; 0
                                   1646 	.area XINIT   (CODE)
      007B97                       1647 __xinit__BIT_TO_INCREMENT:
      007B97 FF                    1648 	.db #0xff	; -1
      007B98 01                    1649 	.db #0x01	;  1
      007B99                       1650 __xinit__count:
      007B99 00 00                 1651 	.byte #0x00, #0x00	;  0
      007B9B                       1652 __xinit__prev_count:
      007B9B 00 00                 1653 	.byte #0x00, #0x00	;  0
                                   1654 	.area CABS    (ABS,CODE)
