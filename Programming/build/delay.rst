                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _S1SM0_FE
                                     12 	.globl _T1IE
                                     13 	.globl _T0IE
                                     14 	.globl _T1RUN
                                     15 	.globl _T0RUN
                                     16 	.globl _CY
                                     17 	.globl _AC
                                     18 	.globl _F0
                                     19 	.globl _RS1
                                     20 	.globl _RS0
                                     21 	.globl _OV
                                     22 	.globl _F1
                                     23 	.globl _P
                                     24 	.globl _EA
                                     25 	.globl _INT1IE
                                     26 	.globl _INT0IE
                                     27 	.globl _INT1TR
                                     28 	.globl _INT0TR
                                     29 	.globl _P5_5
                                     30 	.globl _P5_4
                                     31 	.globl _P5_3
                                     32 	.globl _P5_2
                                     33 	.globl _P5_1
                                     34 	.globl _P5_0
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _P2_7
                                     44 	.globl _P2_6
                                     45 	.globl _P2_5
                                     46 	.globl _P2_4
                                     47 	.globl _P2_3
                                     48 	.globl _P2_2
                                     49 	.globl _P2_1
                                     50 	.globl _P2_0
                                     51 	.globl _P1_7
                                     52 	.globl _P1_6
                                     53 	.globl _P1_5
                                     54 	.globl _P1_4
                                     55 	.globl _P1_3
                                     56 	.globl _P1_2
                                     57 	.globl _P1_1
                                     58 	.globl _P1_0
                                     59 	.globl _USBADR
                                     60 	.globl _USBCON
                                     61 	.globl _USBDAT
                                     62 	.globl _USBCLK
                                     63 	.globl _S4BUF
                                     64 	.globl _S4CON
                                     65 	.globl _S3BUF
                                     66 	.globl _S3CON
                                     67 	.globl _S2BUF
                                     68 	.globl _S2CON
                                     69 	.globl _S1BUF
                                     70 	.globl _S1CON
                                     71 	.globl _SADEN
                                     72 	.globl _SADDR
                                     73 	.globl _AUXINTIF
                                     74 	.globl _T3
                                     75 	.globl _T3L
                                     76 	.globl _T3H
                                     77 	.globl _T4
                                     78 	.globl _T4L
                                     79 	.globl _T4H
                                     80 	.globl _T4T3M
                                     81 	.globl _WDT_CONTR
                                     82 	.globl _AUXR
                                     83 	.globl _T2
                                     84 	.globl _T2H
                                     85 	.globl _T2L
                                     86 	.globl _T1
                                     87 	.globl _T1H
                                     88 	.globl _T1L
                                     89 	.globl _T0
                                     90 	.globl _T0H
                                     91 	.globl _T0L
                                     92 	.globl _TMOD
                                     93 	.globl _TCON
                                     94 	.globl _IRTRIM
                                     95 	.globl _LIRTRIM
                                     96 	.globl _IRCBAND
                                     97 	.globl _SPDAT
                                     98 	.globl _SPCTL
                                     99 	.globl _SPSTAT
                                    100 	.globl _WKTC
                                    101 	.globl _WKTCH
                                    102 	.globl _WKTCL
                                    103 	.globl _BUS_SPEED
                                    104 	.globl _P_SW2
                                    105 	.globl _P_SW1
                                    106 	.globl _RSTCFG
                                    107 	.globl _PCON
                                    108 	.globl _B
                                    109 	.globl _ACC
                                    110 	.globl _PSW
                                    111 	.globl _SP
                                    112 	.globl _IP3H
                                    113 	.globl _IP3L
                                    114 	.globl _IP2H
                                    115 	.globl _IP2L
                                    116 	.globl _IE2
                                    117 	.globl _IP1H
                                    118 	.globl _IP1L
                                    119 	.globl _IE1
                                    120 	.globl _INT_CLKO
                                    121 	.globl _IAP_TPS
                                    122 	.globl _IAP_CONTR
                                    123 	.globl _IAP_TRIG
                                    124 	.globl _IAP_CMD
                                    125 	.globl _IAP_ADDR
                                    126 	.globl _IAP_ADDRL
                                    127 	.globl _IAP_ADDRH
                                    128 	.globl _IAP_DATA
                                    129 	.globl _P5M0
                                    130 	.globl _P5M1
                                    131 	.globl _P5
                                    132 	.globl _P3M0
                                    133 	.globl _P3M1
                                    134 	.globl _P3
                                    135 	.globl _P2M0
                                    136 	.globl _P2M1
                                    137 	.globl _P2
                                    138 	.globl _P1M0
                                    139 	.globl _P1M1
                                    140 	.globl _P1
                                    141 	.globl _TA
                                    142 	.globl _DPH1
                                    143 	.globl _DPL1
                                    144 	.globl _DPS
                                    145 	.globl _DP
                                    146 	.globl _DPH
                                    147 	.globl _DPL
                                    148 	.globl _CMPCR2
                                    149 	.globl _CMPCR1
                                    150 	.globl _DMA_ADC_AMT
                                    151 	.globl _ADCCFG
                                    152 	.globl _ADC_RES
                                    153 	.globl _ADC_RESL
                                    154 	.globl _ADC_RESH
                                    155 	.globl _ADC_CONTR
                                    156 	.globl _DMA_UR4R_TXAL
                                    157 	.globl _DMA_UR4R_TXAH
                                    158 	.globl _DMA_UR4R_DONE
                                    159 	.globl _DMA_UR4R_AMT
                                    160 	.globl _DMA_UR4R_STA
                                    161 	.globl _DMA_UR4R_CR
                                    162 	.globl _DMA_UR4R_CFG
                                    163 	.globl _DMA_UR4T_TXAL
                                    164 	.globl _DMA_UR4T_TXAH
                                    165 	.globl _DMA_UR4T_DONE
                                    166 	.globl _DMA_UR4T_AMT
                                    167 	.globl _DMA_UR4T_STA
                                    168 	.globl _DMA_UR4T_CR
                                    169 	.globl _DMA_UR4T_CFG
                                    170 	.globl _DMA_UR3R_TXAL
                                    171 	.globl _DMA_UR3R_TXAH
                                    172 	.globl _DMA_UR3R_DONE
                                    173 	.globl _DMA_UR3R_AMT
                                    174 	.globl _DMA_UR3R_STA
                                    175 	.globl _DMA_UR3R_CR
                                    176 	.globl _DMA_UR3R_CFG
                                    177 	.globl _DMA_UR3T_TXAL
                                    178 	.globl _DMA_UR3T_TXAH
                                    179 	.globl _DMA_UR3T_DONE
                                    180 	.globl _DMA_UR3T_AMT
                                    181 	.globl _DMA_UR3T_STA
                                    182 	.globl _DMA_UR3T_CR
                                    183 	.globl _DMA_UR3T_CFG
                                    184 	.globl _DMA_UR2R_TXAL
                                    185 	.globl _DMA_UR2R_TXAH
                                    186 	.globl _DMA_UR2R_DONE
                                    187 	.globl _DMA_UR2R_AMT
                                    188 	.globl _DMA_UR2R_STA
                                    189 	.globl _DMA_UR2R_CR
                                    190 	.globl _DMA_UR2R_CFG
                                    191 	.globl _DMA_UR2T_TXAL
                                    192 	.globl _DMA_UR2T_TXAH
                                    193 	.globl _DMA_UR2T_DONE
                                    194 	.globl _DMA_UR2T_AMT
                                    195 	.globl _DMA_UR2T_STA
                                    196 	.globl _DMA_UR2T_CR
                                    197 	.globl _DMA_UR2T_CFG
                                    198 	.globl _DMA_UR1R_TXAL
                                    199 	.globl _DMA_UR1R_TXAH
                                    200 	.globl _DMA_UR1R_DONE
                                    201 	.globl _DMA_UR1R_AMT
                                    202 	.globl _DMA_UR1R_STA
                                    203 	.globl _DMA_UR1R_CR
                                    204 	.globl _DMA_UR1R_CFG
                                    205 	.globl _DMA_UR1T_TXAL
                                    206 	.globl _DMA_UR1T_TXAH
                                    207 	.globl _DMA_UR1T_DONE
                                    208 	.globl _DMA_URTX_AMT
                                    209 	.globl _DMA_UR1T_STA
                                    210 	.globl _DMA_UR1T_CR
                                    211 	.globl _DMA_UR1T_CFG
                                    212 	.globl _TM4PS
                                    213 	.globl _TM3PS
                                    214 	.globl _TM2PS
                                    215 	.globl _IRC48MCR
                                    216 	.globl _IRCDB
                                    217 	.globl _MCLKOCR
                                    218 	.globl _CKSEL
                                    219 	.globl _IRC32KCR
                                    220 	.globl _XOSCCR
                                    221 	.globl _HIRCCR
                                    222 	.globl _CLKDIV
                                    223 	.globl _DMA_SPI_CFG2
                                    224 	.globl _DMA_SPI_RXAL
                                    225 	.globl _DMA_SPI_RXAH
                                    226 	.globl _DMA_SPI_TXAL
                                    227 	.globl _DMA_SPI_TXAH
                                    228 	.globl _DMA_SPI_DONE
                                    229 	.globl _DMA_SPI_AMT
                                    230 	.globl _DMA_SPI_STA
                                    231 	.globl _DMA_SPI_CR
                                    232 	.globl _DMA_SPI_CFG
                                    233 	.globl _SSEC
                                    234 	.globl _SEC
                                    235 	.globl _MIN
                                    236 	.globl _HOUR
                                    237 	.globl _DAY
                                    238 	.globl _MONTH
                                    239 	.globl _YEAR
                                    240 	.globl _INISSEC
                                    241 	.globl _INISEC
                                    242 	.globl _INIMIN
                                    243 	.globl _INIHOUR
                                    244 	.globl _INIDAY
                                    245 	.globl _INIMONTH
                                    246 	.globl _INIYEAR
                                    247 	.globl _ALASSEC
                                    248 	.globl _ALASEC
                                    249 	.globl _ALAMIN
                                    250 	.globl _ALAHOUR
                                    251 	.globl _RTCIF
                                    252 	.globl _RTCIEN
                                    253 	.globl _RTCCFG
                                    254 	.globl _RTCCR
                                    255 	.globl _PWMB_OISR
                                    256 	.globl _PWMB_DTR
                                    257 	.globl _PWMB_BKR
                                    258 	.globl _PWMB_CCR4L
                                    259 	.globl _PWMB_CCR4H
                                    260 	.globl _PWMB_CCR3L
                                    261 	.globl _PWMB_CCR3H
                                    262 	.globl _PWMB_CCR2L
                                    263 	.globl _PWMB_CCR2H
                                    264 	.globl _PWMB_CCR1L
                                    265 	.globl _PWMB_CCR1H
                                    266 	.globl _PWMB_RCR
                                    267 	.globl _PWMB_ARRL
                                    268 	.globl _PWMB_ARRH
                                    269 	.globl _PWMB_PSCRL
                                    270 	.globl _PWMB_PSCRH
                                    271 	.globl _PWMB_CNTRL
                                    272 	.globl _PWMB_CNTRH
                                    273 	.globl _PWMB_CCER2
                                    274 	.globl _PWMB_CCER1
                                    275 	.globl _PWMB_CCMR4
                                    276 	.globl _PWMB_CCMR3
                                    277 	.globl _PWMB_CCMR2
                                    278 	.globl _PWMB_CCMR1
                                    279 	.globl _PWMB_EGR
                                    280 	.globl _PWMB_SR2
                                    281 	.globl _PWMB_SR1
                                    282 	.globl _PWMB_IER
                                    283 	.globl _PWMB_ETR
                                    284 	.globl _PWMB_SMCR
                                    285 	.globl _PWMB_CR2
                                    286 	.globl _PWMB_CR1
                                    287 	.globl _PWMA_OISR
                                    288 	.globl _PWMA_DTR
                                    289 	.globl _PWMA_BKR
                                    290 	.globl _PWMA_CCR4L
                                    291 	.globl _PWMA_CCR4H
                                    292 	.globl _PWMA_CCR3L
                                    293 	.globl _PWMA_CCR3H
                                    294 	.globl _PWMA_CCR2L
                                    295 	.globl _PWMA_CCR2H
                                    296 	.globl _PWMA_CCR1L
                                    297 	.globl _PWMA_CCR1H
                                    298 	.globl _PWMA_RCR
                                    299 	.globl _PWMA_ARRL
                                    300 	.globl _PWMA_ARRH
                                    301 	.globl _PWMA_PSCRL
                                    302 	.globl _PWMA_PSCRH
                                    303 	.globl _PWMA_CNTRL
                                    304 	.globl _PWMA_CNTRH
                                    305 	.globl _PWMA_CCER2
                                    306 	.globl _PWMA_CCER1
                                    307 	.globl _PWMA_CCMR4
                                    308 	.globl _PWMA_CCMR3
                                    309 	.globl _PWMA_CCMR2
                                    310 	.globl _PWMA_CCMR1
                                    311 	.globl _PWMA_EGR
                                    312 	.globl _PWMA_SR2
                                    313 	.globl _PWMA_SR1
                                    314 	.globl _PWMA_IER
                                    315 	.globl _PWMA_ETR
                                    316 	.globl _PWMA_SMCR
                                    317 	.globl _PWMA_CR2
                                    318 	.globl _PWMA_CR1
                                    319 	.globl _PWMB_IOAUX
                                    320 	.globl _PWMB_PS
                                    321 	.globl _PWMB_ENO
                                    322 	.globl _PWMB_ETRPS
                                    323 	.globl _PWMA_IOAUX
                                    324 	.globl _PWMA_PS
                                    325 	.globl _PWMA_ENO
                                    326 	.globl _PWMA_ETRPS
                                    327 	.globl _RSTFLAG
                                    328 	.globl _SPFUNC
                                    329 	.globl _OPCON
                                    330 	.globl _ARCON
                                    331 	.globl _MD4
                                    332 	.globl _MD5
                                    333 	.globl _MD0
                                    334 	.globl _MD1
                                    335 	.globl _MD2
                                    336 	.globl _MD3
                                    337 	.globl _DMA_LCM_RXAL
                                    338 	.globl _DMA_LCM_RXAH
                                    339 	.globl _DMA_LCM_TXAL
                                    340 	.globl _DMA_LCM_TXAH
                                    341 	.globl _DMA_LCM_DONE
                                    342 	.globl _DMA_LCM_AMT
                                    343 	.globl _DMA_LCM_STA
                                    344 	.globl _DMA_LCM_CR
                                    345 	.globl _DMA_LCM_CFG
                                    346 	.globl _LCMIDDAT
                                    347 	.globl _LCMIDDATH
                                    348 	.globl _LCMIDDATL
                                    349 	.globl _LCMSTA
                                    350 	.globl _LCMCR
                                    351 	.globl _LCMCFG2
                                    352 	.globl _LCMCFG
                                    353 	.globl _I2CMSAUX
                                    354 	.globl _I2CRXD
                                    355 	.globl _I2CTXD
                                    356 	.globl _I2CSLADR
                                    357 	.globl _I2CSLST
                                    358 	.globl _I2CSLCR
                                    359 	.globl _I2CMSST
                                    360 	.globl _I2CMSCR
                                    361 	.globl _I2CCFG
                                    362 	.globl _PINIPH
                                    363 	.globl _PINIPL
                                    364 	.globl _P5IE
                                    365 	.globl _P5DR
                                    366 	.globl _P5SR
                                    367 	.globl _P5NCS
                                    368 	.globl _P5PU
                                    369 	.globl _P5WKUE
                                    370 	.globl _P5IM1
                                    371 	.globl _P5IM0
                                    372 	.globl _P5INTF
                                    373 	.globl _P5INTE
                                    374 	.globl _P3IE
                                    375 	.globl _P3DR
                                    376 	.globl _P3SR
                                    377 	.globl _P3NCS
                                    378 	.globl _P3PU
                                    379 	.globl _P3WKUE
                                    380 	.globl _P3IM1
                                    381 	.globl _P3IM0
                                    382 	.globl _P3INTF
                                    383 	.globl _P3INTE
                                    384 	.globl _P2IE
                                    385 	.globl _P2DR
                                    386 	.globl _P2SR
                                    387 	.globl _P2NCS
                                    388 	.globl _P2PU
                                    389 	.globl _P2WKUE
                                    390 	.globl _P2IM1
                                    391 	.globl _P2IM0
                                    392 	.globl _P2INTF
                                    393 	.globl _P2INTE
                                    394 	.globl _P1IE
                                    395 	.globl _P1DR
                                    396 	.globl _P1SR
                                    397 	.globl _P1NCS
                                    398 	.globl _P1PU
                                    399 	.globl _P1WKUE
                                    400 	.globl _P1IM1
                                    401 	.globl _P1IM0
                                    402 	.globl _P1INTF
                                    403 	.globl _P1INTE
                                    404 	.globl _DMA_M2M_RXAL
                                    405 	.globl _DMA_M2M_RXAH
                                    406 	.globl _DMA_M2M_TXAL
                                    407 	.globl _DMA_M2M_TXAH
                                    408 	.globl _DMA_M2M_DONE
                                    409 	.globl _DMA_M2M_AMT
                                    410 	.globl _DMA_M2M_STA
                                    411 	.globl _DMA_M2M_CR
                                    412 	.globl _DMA_M2M_CFG
                                    413 	.globl _CMPEXCFG
                                    414 	.globl _DMA_ADC_CHSW1
                                    415 	.globl _DMA_ADC_CHSW0
                                    416 	.globl _DMA_ADC_CFG2
                                    417 	.globl _DMA_ADC_RXAL
                                    418 	.globl _DMA_ADC_RXAH
                                    419 	.globl _DMA_ADC_STA
                                    420 	.globl _DMA_ADC_CR
                                    421 	.globl _DMA_ADC_CFG
                                    422 	.globl _ADCEXCFG
                                    423 	.globl _ADCTIM
                                    424 	.globl _delay1ms
                                    425 	.globl _delay10us
                                    426 	.globl _delay1us
                                    427 ;--------------------------------------------------------
                                    428 ; special function registers
                                    429 ;--------------------------------------------------------
                                    430 	.area RSEG    (ABS,DATA)
      000000                        431 	.org 0x0000
                           0000BC   432 _ADC_CONTR	=	0x00bc
                           0000BD   433 _ADC_RESH	=	0x00bd
                           0000BE   434 _ADC_RESL	=	0x00be
                           00BDBE   435 _ADC_RES	=	0xbdbe
                           0000DE   436 _ADCCFG	=	0x00de
                           0000FA   437 _DMA_ADC_AMT	=	0x00fa
                           0000E6   438 _CMPCR1	=	0x00e6
                           0000E7   439 _CMPCR2	=	0x00e7
                           000082   440 _DPL	=	0x0082
                           000083   441 _DPH	=	0x0083
                           008382   442 _DP	=	0x8382
                           0000E3   443 _DPS	=	0x00e3
                           0000E4   444 _DPL1	=	0x00e4
                           0000E5   445 _DPH1	=	0x00e5
                           0000AE   446 _TA	=	0x00ae
                           000090   447 _P1	=	0x0090
                           000091   448 _P1M1	=	0x0091
                           000092   449 _P1M0	=	0x0092
                           0000A0   450 _P2	=	0x00a0
                           000095   451 _P2M1	=	0x0095
                           000096   452 _P2M0	=	0x0096
                           0000B0   453 _P3	=	0x00b0
                           0000B1   454 _P3M1	=	0x00b1
                           0000B2   455 _P3M0	=	0x00b2
                           0000C8   456 _P5	=	0x00c8
                           0000C9   457 _P5M1	=	0x00c9
                           0000CA   458 _P5M0	=	0x00ca
                           0000C2   459 _IAP_DATA	=	0x00c2
                           0000C3   460 _IAP_ADDRH	=	0x00c3
                           0000C4   461 _IAP_ADDRL	=	0x00c4
                           00C3C4   462 _IAP_ADDR	=	0xc3c4
                           0000C5   463 _IAP_CMD	=	0x00c5
                           0000C6   464 _IAP_TRIG	=	0x00c6
                           0000C7   465 _IAP_CONTR	=	0x00c7
                           0000F5   466 _IAP_TPS	=	0x00f5
                           00008F   467 _INT_CLKO	=	0x008f
                           0000A8   468 _IE1	=	0x00a8
                           0000B8   469 _IP1L	=	0x00b8
                           0000B7   470 _IP1H	=	0x00b7
                           0000AF   471 _IE2	=	0x00af
                           0000B5   472 _IP2L	=	0x00b5
                           0000B6   473 _IP2H	=	0x00b6
                           0000DF   474 _IP3L	=	0x00df
                           0000EE   475 _IP3H	=	0x00ee
                           000081   476 _SP	=	0x0081
                           0000D0   477 _PSW	=	0x00d0
                           0000E0   478 _ACC	=	0x00e0
                           0000F0   479 _B	=	0x00f0
                           000087   480 _PCON	=	0x0087
                           0000FF   481 _RSTCFG	=	0x00ff
                           0000A2   482 _P_SW1	=	0x00a2
                           0000BA   483 _P_SW2	=	0x00ba
                           0000A1   484 _BUS_SPEED	=	0x00a1
                           0000AA   485 _WKTCL	=	0x00aa
                           0000AB   486 _WKTCH	=	0x00ab
                           00ABAA   487 _WKTC	=	0xabaa
                           0000CD   488 _SPSTAT	=	0x00cd
                           0000CE   489 _SPCTL	=	0x00ce
                           0000CF   490 _SPDAT	=	0x00cf
                           00009D   491 _IRCBAND	=	0x009d
                           00009E   492 _LIRTRIM	=	0x009e
                           00009F   493 _IRTRIM	=	0x009f
                           000088   494 _TCON	=	0x0088
                           000089   495 _TMOD	=	0x0089
                           00008A   496 _T0L	=	0x008a
                           00008C   497 _T0H	=	0x008c
                           008C8A   498 _T0	=	0x8c8a
                           00008B   499 _T1L	=	0x008b
                           00008D   500 _T1H	=	0x008d
                           008D8B   501 _T1	=	0x8d8b
                           0000D7   502 _T2L	=	0x00d7
                           0000D6   503 _T2H	=	0x00d6
                           00D6D7   504 _T2	=	0xd6d7
                           00008E   505 _AUXR	=	0x008e
                           0000C1   506 _WDT_CONTR	=	0x00c1
                           0000D1   507 _T4T3M	=	0x00d1
                           0000D2   508 _T4H	=	0x00d2
                           0000D3   509 _T4L	=	0x00d3
                           00D2D3   510 _T4	=	0xd2d3
                           0000D4   511 _T3H	=	0x00d4
                           0000D5   512 _T3L	=	0x00d5
                           00D4D5   513 _T3	=	0xd4d5
                           0000EF   514 _AUXINTIF	=	0x00ef
                           0000A9   515 _SADDR	=	0x00a9
                           0000B9   516 _SADEN	=	0x00b9
                           000098   517 _S1CON	=	0x0098
                           000099   518 _S1BUF	=	0x0099
                           00009A   519 _S2CON	=	0x009a
                           00009B   520 _S2BUF	=	0x009b
                           0000AC   521 _S3CON	=	0x00ac
                           0000AD   522 _S3BUF	=	0x00ad
                           000084   523 _S4CON	=	0x0084
                           000085   524 _S4BUF	=	0x0085
                           0000DC   525 _USBCLK	=	0x00dc
                           0000EC   526 _USBDAT	=	0x00ec
                           0000F4   527 _USBCON	=	0x00f4
                           0000FC   528 _USBADR	=	0x00fc
                                    529 ;--------------------------------------------------------
                                    530 ; special function bits
                                    531 ;--------------------------------------------------------
                                    532 	.area RSEG    (ABS,DATA)
      000000                        533 	.org 0x0000
                           000090   534 _P1_0	=	0x0090
                           000091   535 _P1_1	=	0x0091
                           000092   536 _P1_2	=	0x0092
                           000093   537 _P1_3	=	0x0093
                           000094   538 _P1_4	=	0x0094
                           000095   539 _P1_5	=	0x0095
                           000096   540 _P1_6	=	0x0096
                           000097   541 _P1_7	=	0x0097
                           0000A0   542 _P2_0	=	0x00a0
                           0000A1   543 _P2_1	=	0x00a1
                           0000A2   544 _P2_2	=	0x00a2
                           0000A3   545 _P2_3	=	0x00a3
                           0000A4   546 _P2_4	=	0x00a4
                           0000A5   547 _P2_5	=	0x00a5
                           0000A6   548 _P2_6	=	0x00a6
                           0000A7   549 _P2_7	=	0x00a7
                           0000B0   550 _P3_0	=	0x00b0
                           0000B1   551 _P3_1	=	0x00b1
                           0000B2   552 _P3_2	=	0x00b2
                           0000B3   553 _P3_3	=	0x00b3
                           0000B4   554 _P3_4	=	0x00b4
                           0000B5   555 _P3_5	=	0x00b5
                           0000B6   556 _P3_6	=	0x00b6
                           0000B7   557 _P3_7	=	0x00b7
                           0000C8   558 _P5_0	=	0x00c8
                           0000C9   559 _P5_1	=	0x00c9
                           0000CA   560 _P5_2	=	0x00ca
                           0000CB   561 _P5_3	=	0x00cb
                           0000CC   562 _P5_4	=	0x00cc
                           0000CD   563 _P5_5	=	0x00cd
                           000088   564 _INT0TR	=	0x0088
                           00008A   565 _INT1TR	=	0x008a
                           0000A8   566 _INT0IE	=	0x00a8
                           0000AA   567 _INT1IE	=	0x00aa
                           0000AF   568 _EA	=	0x00af
                           0000D0   569 _P	=	0x00d0
                           0000D1   570 _F1	=	0x00d1
                           0000D2   571 _OV	=	0x00d2
                           0000D3   572 _RS0	=	0x00d3
                           0000D4   573 _RS1	=	0x00d4
                           0000D5   574 _F0	=	0x00d5
                           0000D6   575 _AC	=	0x00d6
                           0000D7   576 _CY	=	0x00d7
                           00008C   577 _T0RUN	=	0x008c
                           00008E   578 _T1RUN	=	0x008e
                           0000A9   579 _T0IE	=	0x00a9
                           0000AB   580 _T1IE	=	0x00ab
                           00009F   581 _S1SM0_FE	=	0x009f
                                    582 ;--------------------------------------------------------
                                    583 ; overlayable register banks
                                    584 ;--------------------------------------------------------
                                    585 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        586 	.ds 8
                                    587 ;--------------------------------------------------------
                                    588 ; internal ram data
                                    589 ;--------------------------------------------------------
                                    590 	.area DSEG    (DATA)
                                    591 ;--------------------------------------------------------
                                    592 ; overlayable items in internal ram 
                                    593 ;--------------------------------------------------------
                                    594 ;--------------------------------------------------------
                                    595 ; indirectly addressable internal ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area ISEG    (DATA)
                                    598 ;--------------------------------------------------------
                                    599 ; absolute internal ram data
                                    600 ;--------------------------------------------------------
                                    601 	.area IABS    (ABS,DATA)
                                    602 	.area IABS    (ABS,DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; bit data
                                    605 ;--------------------------------------------------------
                                    606 	.area BSEG    (BIT)
                                    607 ;--------------------------------------------------------
                                    608 ; paged external ram data
                                    609 ;--------------------------------------------------------
                                    610 	.area PSEG    (PAG,XDATA)
                                    611 ;--------------------------------------------------------
                                    612 ; external ram data
                                    613 ;--------------------------------------------------------
                                    614 	.area XSEG    (XDATA)
                           00FEA8   615 _ADCTIM	=	0xfea8
                           00FEAD   616 _ADCEXCFG	=	0xfead
                           00FA10   617 _DMA_ADC_CFG	=	0xfa10
                           00FA11   618 _DMA_ADC_CR	=	0xfa11
                           00FA12   619 _DMA_ADC_STA	=	0xfa12
                           00FA17   620 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   621 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   622 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   623 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   624 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   625 _CMPEXCFG	=	0xfeae
                           00FA00   626 _DMA_M2M_CFG	=	0xfa00
                           00FA01   627 _DMA_M2M_CR	=	0xfa01
                           00FA02   628 _DMA_M2M_STA	=	0xfa02
                           00FA03   629 _DMA_M2M_AMT	=	0xfa03
                           00FA04   630 _DMA_M2M_DONE	=	0xfa04
                           00FA05   631 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   632 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   633 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   634 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   635 _P1INTE	=	0xfd01
                           00FD11   636 _P1INTF	=	0xfd11
                           00FD21   637 _P1IM0	=	0xfd21
                           00FD31   638 _P1IM1	=	0xfd31
                           00FD41   639 _P1WKUE	=	0xfd41
                           00FE11   640 _P1PU	=	0xfe11
                           00FE19   641 _P1NCS	=	0xfe19
                           00FE21   642 _P1SR	=	0xfe21
                           00FE29   643 _P1DR	=	0xfe29
                           00FE31   644 _P1IE	=	0xfe31
                           00FD02   645 _P2INTE	=	0xfd02
                           00FD12   646 _P2INTF	=	0xfd12
                           00FD22   647 _P2IM0	=	0xfd22
                           00FD32   648 _P2IM1	=	0xfd32
                           00FD42   649 _P2WKUE	=	0xfd42
                           00FE12   650 _P2PU	=	0xfe12
                           00FE1A   651 _P2NCS	=	0xfe1a
                           00FE22   652 _P2SR	=	0xfe22
                           00FE2A   653 _P2DR	=	0xfe2a
                           00FE32   654 _P2IE	=	0xfe32
                           00FD03   655 _P3INTE	=	0xfd03
                           00FD13   656 _P3INTF	=	0xfd13
                           00FD23   657 _P3IM0	=	0xfd23
                           00FD33   658 _P3IM1	=	0xfd33
                           00FD43   659 _P3WKUE	=	0xfd43
                           00FE13   660 _P3PU	=	0xfe13
                           00FE1B   661 _P3NCS	=	0xfe1b
                           00FE23   662 _P3SR	=	0xfe23
                           00FE2B   663 _P3DR	=	0xfe2b
                           00FE33   664 _P3IE	=	0xfe33
                           00FD05   665 _P5INTE	=	0xfd05
                           00FD15   666 _P5INTF	=	0xfd15
                           00FD25   667 _P5IM0	=	0xfd25
                           00FD35   668 _P5IM1	=	0xfd35
                           00FD45   669 _P5WKUE	=	0xfd45
                           00FE15   670 _P5PU	=	0xfe15
                           00FE1D   671 _P5NCS	=	0xfe1d
                           00FE25   672 _P5SR	=	0xfe25
                           00FE2D   673 _P5DR	=	0xfe2d
                           00FE35   674 _P5IE	=	0xfe35
                           00FD60   675 _PINIPL	=	0xfd60
                           00FD61   676 _PINIPH	=	0xfd61
                           00FE80   677 _I2CCFG	=	0xfe80
                           00FE81   678 _I2CMSCR	=	0xfe81
                           00FE82   679 _I2CMSST	=	0xfe82
                           00FE83   680 _I2CSLCR	=	0xfe83
                           00FE84   681 _I2CSLST	=	0xfe84
                           00FE85   682 _I2CSLADR	=	0xfe85
                           00FE86   683 _I2CTXD	=	0xfe86
                           00FE87   684 _I2CRXD	=	0xfe87
                           00FE88   685 _I2CMSAUX	=	0xfe88
                           00FE50   686 _LCMCFG	=	0xfe50
                           00FE51   687 _LCMCFG2	=	0xfe51
                           00FE52   688 _LCMCR	=	0xfe52
                           00FE53   689 _LCMSTA	=	0xfe53
                           00FE54   690 _LCMIDDATL	=	0xfe54
                           00FE55   691 _LCMIDDATH	=	0xfe55
                           00FE54   692 _LCMIDDAT	=	0xfe54
                           00FA70   693 _DMA_LCM_CFG	=	0xfa70
                           00FA71   694 _DMA_LCM_CR	=	0xfa71
                           00FA72   695 _DMA_LCM_STA	=	0xfa72
                           00FA73   696 _DMA_LCM_AMT	=	0xfa73
                           00FA74   697 _DMA_LCM_DONE	=	0xfa74
                           00FA75   698 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   699 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   700 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   701 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   702 _MD3	=	0xfcf0
                           00FCF1   703 _MD2	=	0xfcf1
                           00FCF2   704 _MD1	=	0xfcf2
                           00FCF3   705 _MD0	=	0xfcf3
                           00FCF4   706 _MD5	=	0xfcf4
                           00FCF5   707 _MD4	=	0xfcf5
                           00FCF6   708 _ARCON	=	0xfcf6
                           00FCF7   709 _OPCON	=	0xfcf7
                           00FE08   710 _SPFUNC	=	0xfe08
                           00FE09   711 _RSTFLAG	=	0xfe09
                           00FEB0   712 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   713 _PWMA_ENO	=	0xfeb1
                           00FEB2   714 _PWMA_PS	=	0xfeb2
                           00FEB3   715 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   716 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   717 _PWMB_ENO	=	0xfeb5
                           00FEB6   718 _PWMB_PS	=	0xfeb6
                           00FEB7   719 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   720 _PWMA_CR1	=	0xfec0
                           00FEC1   721 _PWMA_CR2	=	0xfec1
                           00FEC2   722 _PWMA_SMCR	=	0xfec2
                           00FEC3   723 _PWMA_ETR	=	0xfec3
                           00FEC4   724 _PWMA_IER	=	0xfec4
                           00FEC5   725 _PWMA_SR1	=	0xfec5
                           00FEC6   726 _PWMA_SR2	=	0xfec6
                           00FEC7   727 _PWMA_EGR	=	0xfec7
                           00FEC8   728 _PWMA_CCMR1	=	0xfec8
                           00FEC9   729 _PWMA_CCMR2	=	0xfec9
                           00FECA   730 _PWMA_CCMR3	=	0xfeca
                           00FECB   731 _PWMA_CCMR4	=	0xfecb
                           00FECC   732 _PWMA_CCER1	=	0xfecc
                           00FECD   733 _PWMA_CCER2	=	0xfecd
                           00FECE   734 _PWMA_CNTRH	=	0xfece
                           00FECF   735 _PWMA_CNTRL	=	0xfecf
                           00FED0   736 _PWMA_PSCRH	=	0xfed0
                           00FED1   737 _PWMA_PSCRL	=	0xfed1
                           00FED2   738 _PWMA_ARRH	=	0xfed2
                           00FED3   739 _PWMA_ARRL	=	0xfed3
                           00FED4   740 _PWMA_RCR	=	0xfed4
                           00FED5   741 _PWMA_CCR1H	=	0xfed5
                           00FED6   742 _PWMA_CCR1L	=	0xfed6
                           00FED7   743 _PWMA_CCR2H	=	0xfed7
                           00FED8   744 _PWMA_CCR2L	=	0xfed8
                           00FED9   745 _PWMA_CCR3H	=	0xfed9
                           00FEDA   746 _PWMA_CCR3L	=	0xfeda
                           00FEDB   747 _PWMA_CCR4H	=	0xfedb
                           00FEDC   748 _PWMA_CCR4L	=	0xfedc
                           00FEDD   749 _PWMA_BKR	=	0xfedd
                           00FEDE   750 _PWMA_DTR	=	0xfede
                           00FEDF   751 _PWMA_OISR	=	0xfedf
                           00FEE0   752 _PWMB_CR1	=	0xfee0
                           00FEE1   753 _PWMB_CR2	=	0xfee1
                           00FEE2   754 _PWMB_SMCR	=	0xfee2
                           00FEE3   755 _PWMB_ETR	=	0xfee3
                           00FEE4   756 _PWMB_IER	=	0xfee4
                           00FEE5   757 _PWMB_SR1	=	0xfee5
                           00FEE6   758 _PWMB_SR2	=	0xfee6
                           00FEE7   759 _PWMB_EGR	=	0xfee7
                           00FEE8   760 _PWMB_CCMR1	=	0xfee8
                           00FEE9   761 _PWMB_CCMR2	=	0xfee9
                           00FEEA   762 _PWMB_CCMR3	=	0xfeea
                           00FEEB   763 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   764 _PWMB_CCER1	=	0xfeec
                           00FEED   765 _PWMB_CCER2	=	0xfeed
                           00FEEE   766 _PWMB_CNTRH	=	0xfeee
                           00FEEF   767 _PWMB_CNTRL	=	0xfeef
                           00FEF0   768 _PWMB_PSCRH	=	0xfef0
                           00FEF1   769 _PWMB_PSCRL	=	0xfef1
                           00FEF2   770 _PWMB_ARRH	=	0xfef2
                           00FEF3   771 _PWMB_ARRL	=	0xfef3
                           00FEF4   772 _PWMB_RCR	=	0xfef4
                           00FEF5   773 _PWMB_CCR1H	=	0xfef5
                           00FEF6   774 _PWMB_CCR1L	=	0xfef6
                           00FEF7   775 _PWMB_CCR2H	=	0xfef7
                           00FEF8   776 _PWMB_CCR2L	=	0xfef8
                           00FEF9   777 _PWMB_CCR3H	=	0xfef9
                           00FEFA   778 _PWMB_CCR3L	=	0xfefa
                           00FEFB   779 _PWMB_CCR4H	=	0xfefb
                           00FEFC   780 _PWMB_CCR4L	=	0xfefc
                           00FEFD   781 _PWMB_BKR	=	0xfefd
                           00FEFE   782 _PWMB_DTR	=	0xfefe
                           00FEFF   783 _PWMB_OISR	=	0xfeff
                           00FE60   784 _RTCCR	=	0xfe60
                           00FE61   785 _RTCCFG	=	0xfe61
                           00FE62   786 _RTCIEN	=	0xfe62
                           00FE63   787 _RTCIF	=	0xfe63
                           00FE64   788 _ALAHOUR	=	0xfe64
                           00FE65   789 _ALAMIN	=	0xfe65
                           00FE66   790 _ALASEC	=	0xfe66
                           00FE67   791 _ALASSEC	=	0xfe67
                           00FE68   792 _INIYEAR	=	0xfe68
                           00FE69   793 _INIMONTH	=	0xfe69
                           00FE6A   794 _INIDAY	=	0xfe6a
                           00FE6B   795 _INIHOUR	=	0xfe6b
                           00FE6C   796 _INIMIN	=	0xfe6c
                           00FE6D   797 _INISEC	=	0xfe6d
                           00FE6E   798 _INISSEC	=	0xfe6e
                           00FE70   799 _YEAR	=	0xfe70
                           00FE71   800 _MONTH	=	0xfe71
                           00FE72   801 _DAY	=	0xfe72
                           00FE73   802 _HOUR	=	0xfe73
                           00FE74   803 _MIN	=	0xfe74
                           00FE75   804 _SEC	=	0xfe75
                           00FE76   805 _SSEC	=	0xfe76
                           00FA20   806 _DMA_SPI_CFG	=	0xfa20
                           00FA21   807 _DMA_SPI_CR	=	0xfa21
                           00FA22   808 _DMA_SPI_STA	=	0xfa22
                           00FA23   809 _DMA_SPI_AMT	=	0xfa23
                           00FA24   810 _DMA_SPI_DONE	=	0xfa24
                           00FA25   811 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   812 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   813 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   814 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   815 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   816 _CLKDIV	=	0xfe01
                           00FE02   817 _HIRCCR	=	0xfe02
                           00FE03   818 _XOSCCR	=	0xfe03
                           00FE04   819 _IRC32KCR	=	0xfe04
                           00FE00   820 _CKSEL	=	0xfe00
                           00FE05   821 _MCLKOCR	=	0xfe05
                           00FE06   822 _IRCDB	=	0xfe06
                           00FE07   823 _IRC48MCR	=	0xfe07
                           00FEA2   824 _TM2PS	=	0xfea2
                           00FEA3   825 _TM3PS	=	0xfea3
                           00FEA4   826 _TM4PS	=	0xfea4
                           00FA30   827 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   828 _DMA_UR1T_CR	=	0xfa31
                           00FA32   829 _DMA_UR1T_STA	=	0xfa32
                           00FA33   830 _DMA_URTX_AMT	=	0xfa33
                           00FA34   831 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   832 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   833 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   834 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   835 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   836 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   837 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   838 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   839 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   840 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   841 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   842 _DMA_UR2T_CR	=	0xfa31
                           00FA32   843 _DMA_UR2T_STA	=	0xfa32
                           00FA33   844 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   845 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   846 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   847 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   848 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   849 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   850 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   851 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   852 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   853 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   854 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   855 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   856 _DMA_UR3T_CR	=	0xfa31
                           00FA32   857 _DMA_UR3T_STA	=	0xfa32
                           00FA33   858 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   859 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   860 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   861 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   862 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   863 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   864 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   865 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   866 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   867 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   868 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   869 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   870 _DMA_UR4T_CR	=	0xfa31
                           00FA32   871 _DMA_UR4T_STA	=	0xfa32
                           00FA33   872 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   873 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   874 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   875 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   876 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   877 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   878 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   879 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   880 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   881 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   882 _DMA_UR4R_TXAL	=	0xfa3e
      0000D9                        883 _uartGetCharacter_result_65536_69:
      0000D9                        884 	.ds 1
      0000DA                        885 _delay1ms_ms_65536_148:
      0000DA                        886 	.ds 2
      0000DC                        887 _delay10us_us_65536_154:
      0000DC                        888 	.ds 1
      0000DD                        889 _delay1us_us_65536_160:
      0000DD                        890 	.ds 2
                                    891 ;--------------------------------------------------------
                                    892 ; absolute external ram data
                                    893 ;--------------------------------------------------------
                                    894 	.area XABS    (ABS,XDATA)
                                    895 ;--------------------------------------------------------
                                    896 ; external initialized ram data
                                    897 ;--------------------------------------------------------
                                    898 	.area XISEG   (XDATA)
                                    899 	.area HOME    (CODE)
                                    900 	.area GSINIT0 (CODE)
                                    901 	.area GSINIT1 (CODE)
                                    902 	.area GSINIT2 (CODE)
                                    903 	.area GSINIT3 (CODE)
                                    904 	.area GSINIT4 (CODE)
                                    905 	.area GSINIT5 (CODE)
                                    906 	.area GSINIT  (CODE)
                                    907 	.area GSFINAL (CODE)
                                    908 	.area CSEG    (CODE)
                                    909 ;--------------------------------------------------------
                                    910 ; global & static initialisations
                                    911 ;--------------------------------------------------------
                                    912 	.area HOME    (CODE)
                                    913 	.area GSINIT  (CODE)
                                    914 	.area GSFINAL (CODE)
                                    915 	.area GSINIT  (CODE)
                                    916 ;--------------------------------------------------------
                                    917 ; Home
                                    918 ;--------------------------------------------------------
                                    919 	.area HOME    (CODE)
                                    920 	.area HOME    (CODE)
                                    921 ;--------------------------------------------------------
                                    922 ; code
                                    923 ;--------------------------------------------------------
                                    924 	.area CSEG    (CODE)
                                    925 ;------------------------------------------------------------
                                    926 ;Allocation info for local variables in function 'delay1ms'
                                    927 ;------------------------------------------------------------
                                    928 ;ms                        Allocated with name '_delay1ms_ms_65536_148'
                                    929 ;i                         Allocated with name '_delay1ms_i_131072_150'
                                    930 ;n                         Allocated with name '_delay1ms_n_262144_152'
                                    931 ;------------------------------------------------------------
                                    932 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:158: void delay1ms(uint16_t ms) {
                                    933 ;	-----------------------------------------
                                    934 ;	 function delay1ms
                                    935 ;	-----------------------------------------
      002135                        936 _delay1ms:
                           000007   937 	ar7 = 0x07
                           000006   938 	ar6 = 0x06
                           000005   939 	ar5 = 0x05
                           000004   940 	ar4 = 0x04
                           000003   941 	ar3 = 0x03
                           000002   942 	ar2 = 0x02
                           000001   943 	ar1 = 0x01
                           000000   944 	ar0 = 0x00
      002135 AF 83            [24]  945 	mov	r7,dph
      002137 E5 82            [12]  946 	mov	a,dpl
      002139 90 00 DA         [24]  947 	mov	dptr,#_delay1ms_ms_65536_148
      00213C F0               [24]  948 	movx	@dptr,a
      00213D EF               [12]  949 	mov	a,r7
      00213E A3               [24]  950 	inc	dptr
      00213F F0               [24]  951 	movx	@dptr,a
                                    952 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:159: for (uint16_t i = ms; i; i--) {
      002140 90 00 DA         [24]  953 	mov	dptr,#_delay1ms_ms_65536_148
      002143 E0               [24]  954 	movx	a,@dptr
      002144 FE               [12]  955 	mov	r6,a
      002145 A3               [24]  956 	inc	dptr
      002146 E0               [24]  957 	movx	a,@dptr
      002147 FF               [12]  958 	mov	r7,a
      002148                        959 00107$:
      002148 EE               [12]  960 	mov	a,r6
      002149 4F               [12]  961 	orl	a,r7
      00214A 60 19            [24]  962 	jz	00109$
                                    963 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:160: for (uint16_t n = DELAY_1ms; n; n--) {
      00214C 7C 82            [12]  964 	mov	r4,#0x82
      00214E 7D 0A            [12]  965 	mov	r5,#0x0a
      002150                        966 00104$:
      002150 EC               [12]  967 	mov	a,r4
      002151 4D               [12]  968 	orl	a,r5
      002152 60 0A            [24]  969 	jz	00108$
                                    970 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:161: NOP();
      002154 00               [12]  971 	NOP	
                                    972 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:162: NOP();
      002155 00               [12]  973 	NOP	
                                    974 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:163: NOP();
      002156 00               [12]  975 	NOP	
                                    976 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:160: for (uint16_t n = DELAY_1ms; n; n--) {
      002157 1C               [12]  977 	dec	r4
      002158 BC FF 01         [24]  978 	cjne	r4,#0xff,00131$
      00215B 1D               [12]  979 	dec	r5
      00215C                        980 00131$:
      00215C 80 F2            [24]  981 	sjmp	00104$
      00215E                        982 00108$:
                                    983 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:159: for (uint16_t i = ms; i; i--) {
      00215E 1E               [12]  984 	dec	r6
      00215F BE FF 01         [24]  985 	cjne	r6,#0xff,00132$
      002162 1F               [12]  986 	dec	r7
      002163                        987 00132$:
      002163 80 E3            [24]  988 	sjmp	00107$
      002165                        989 00109$:
                                    990 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:166: }
      002165 22               [24]  991 	ret
                                    992 ;------------------------------------------------------------
                                    993 ;Allocation info for local variables in function 'delay10us'
                                    994 ;------------------------------------------------------------
                                    995 ;us                        Allocated with name '_delay10us_us_65536_154'
                                    996 ;i                         Allocated with name '_delay10us_i_131072_156'
                                    997 ;n                         Allocated with name '_delay10us_n_262144_158'
                                    998 ;------------------------------------------------------------
                                    999 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:167: void delay10us(uint8_t us) {
                                   1000 ;	-----------------------------------------
                                   1001 ;	 function delay10us
                                   1002 ;	-----------------------------------------
      002166                       1003 _delay10us:
      002166 E5 82            [12] 1004 	mov	a,dpl
      002168 90 00 DC         [24] 1005 	mov	dptr,#_delay10us_us_65536_154
      00216B F0               [24] 1006 	movx	@dptr,a
                                   1007 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:168: for (uint8_t i = us; i; i--) {
      00216C E0               [24] 1008 	movx	a,@dptr
      00216D FF               [12] 1009 	mov	r7,a
      00216E                       1010 00107$:
      00216E EF               [12] 1011 	mov	a,r7
      00216F 60 0B            [24] 1012 	jz	00109$
                                   1013 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:169: for (uint8_t n = DELAY_10us; n; n--) {
      002171 7E 37            [12] 1014 	mov	r6,#0x37
      002173                       1015 00104$:
      002173 EE               [12] 1016 	mov	a,r6
      002174 60 03            [24] 1017 	jz	00108$
      002176 1E               [12] 1018 	dec	r6
      002177 80 FA            [24] 1019 	sjmp	00104$
      002179                       1020 00108$:
                                   1021 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:168: for (uint8_t i = us; i; i--) {
      002179 1F               [12] 1022 	dec	r7
      00217A 80 F2            [24] 1023 	sjmp	00107$
      00217C                       1024 00109$:
                                   1025 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:172: }
      00217C 22               [24] 1026 	ret
                                   1027 ;------------------------------------------------------------
                                   1028 ;Allocation info for local variables in function 'delay1us'
                                   1029 ;------------------------------------------------------------
                                   1030 ;us                        Allocated with name '_delay1us_us_65536_160'
                                   1031 ;i                         Allocated with name '_delay1us_i_131072_162'
                                   1032 ;n                         Allocated with name '_delay1us_n_262144_164'
                                   1033 ;------------------------------------------------------------
                                   1034 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:195: void delay1us(uint16_t us) {
                                   1035 ;	-----------------------------------------
                                   1036 ;	 function delay1us
                                   1037 ;	-----------------------------------------
      00217D                       1038 _delay1us:
      00217D AF 83            [24] 1039 	mov	r7,dph
      00217F E5 82            [12] 1040 	mov	a,dpl
      002181 90 00 DD         [24] 1041 	mov	dptr,#_delay1us_us_65536_160
      002184 F0               [24] 1042 	movx	@dptr,a
      002185 EF               [12] 1043 	mov	a,r7
      002186 A3               [24] 1044 	inc	dptr
      002187 F0               [24] 1045 	movx	@dptr,a
                                   1046 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:196: for (uint16_t i = us; i; i--) {
      002188 90 00 DD         [24] 1047 	mov	dptr,#_delay1us_us_65536_160
      00218B E0               [24] 1048 	movx	a,@dptr
      00218C FE               [12] 1049 	mov	r6,a
      00218D A3               [24] 1050 	inc	dptr
      00218E E0               [24] 1051 	movx	a,@dptr
      00218F FF               [12] 1052 	mov	r7,a
      002190                       1053 00107$:
      002190 EE               [12] 1054 	mov	a,r6
      002191 4F               [12] 1055 	orl	a,r7
      002192 60 10            [24] 1056 	jz	00109$
                                   1057 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:197: for (uint8_t n = DELAY_1us; n; n--) {
      002194 7D 05            [12] 1058 	mov	r5,#0x05
      002196                       1059 00104$:
      002196 ED               [12] 1060 	mov	a,r5
      002197 60 03            [24] 1061 	jz	00101$
      002199 1D               [12] 1062 	dec	r5
      00219A 80 FA            [24] 1063 	sjmp	00104$
      00219C                       1064 00101$:
                                   1065 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:200: NOP();
      00219C 00               [12] 1066 	NOP	
                                   1067 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:196: for (uint16_t i = us; i; i--) {
      00219D 1E               [12] 1068 	dec	r6
      00219E BE FF 01         [24] 1069 	cjne	r6,#0xff,00131$
      0021A1 1F               [12] 1070 	dec	r7
      0021A2                       1071 00131$:
      0021A2 80 EC            [24] 1072 	sjmp	00107$
      0021A4                       1073 00109$:
                                   1074 ;	/home/mr-a-717/.stc/uni-stc/hal/delay.c:202: }
      0021A4 22               [24] 1075 	ret
                                   1076 	.area CSEG    (CODE)
                                   1077 	.area CONST   (CODE)
      00601A                       1078 _FONTS:
      00601A 00                    1079 	.db #0x00	; 0
      00601B 00                    1080 	.db #0x00	; 0
      00601C 00                    1081 	.db #0x00	; 0
      00601D 00                    1082 	.db #0x00	; 0
      00601E 00                    1083 	.db #0x00	; 0
      00601F 81                    1084 	.db #0x81	; 129
      006020 81                    1085 	.db #0x81	; 129
      006021 18                    1086 	.db #0x18	; 24
      006022 81                    1087 	.db #0x81	; 129
      006023 81                    1088 	.db #0x81	; 129
      006024 00                    1089 	.db #0x00	; 0
      006025 07                    1090 	.db #0x07	; 7
      006026 00                    1091 	.db #0x00	; 0
      006027 07                    1092 	.db #0x07	; 7
      006028 00                    1093 	.db #0x00	; 0
      006029 14                    1094 	.db #0x14	; 20
      00602A 7F                    1095 	.db #0x7f	; 127
      00602B 14                    1096 	.db #0x14	; 20
      00602C 7F                    1097 	.db #0x7f	; 127
      00602D 14                    1098 	.db #0x14	; 20
      00602E 24                    1099 	.db #0x24	; 36
      00602F 2A                    1100 	.db #0x2a	; 42
      006030 7F                    1101 	.db #0x7f	; 127
      006031 2A                    1102 	.db #0x2a	; 42
      006032 12                    1103 	.db #0x12	; 18
      006033 23                    1104 	.db #0x23	; 35
      006034 13                    1105 	.db #0x13	; 19
      006035 08                    1106 	.db #0x08	; 8
      006036 64                    1107 	.db #0x64	; 100	'd'
      006037 62                    1108 	.db #0x62	; 98	'b'
      006038 36                    1109 	.db #0x36	; 54	'6'
      006039 49                    1110 	.db #0x49	; 73	'I'
      00603A 55                    1111 	.db #0x55	; 85	'U'
      00603B 22                    1112 	.db #0x22	; 34
      00603C 50                    1113 	.db #0x50	; 80	'P'
      00603D 00                    1114 	.db #0x00	; 0
      00603E 05                    1115 	.db #0x05	; 5
      00603F 03                    1116 	.db #0x03	; 3
      006040 00                    1117 	.db #0x00	; 0
      006041 00                    1118 	.db #0x00	; 0
      006042 00                    1119 	.db #0x00	; 0
      006043 1C                    1120 	.db #0x1c	; 28
      006044 22                    1121 	.db #0x22	; 34
      006045 41                    1122 	.db #0x41	; 65	'A'
      006046 00                    1123 	.db #0x00	; 0
      006047 00                    1124 	.db #0x00	; 0
      006048 41                    1125 	.db #0x41	; 65	'A'
      006049 22                    1126 	.db #0x22	; 34
      00604A 1C                    1127 	.db #0x1c	; 28
      00604B 00                    1128 	.db #0x00	; 0
      00604C 14                    1129 	.db #0x14	; 20
      00604D 08                    1130 	.db #0x08	; 8
      00604E 3E                    1131 	.db #0x3e	; 62
      00604F 08                    1132 	.db #0x08	; 8
      006050 14                    1133 	.db #0x14	; 20
      006051 08                    1134 	.db #0x08	; 8
      006052 08                    1135 	.db #0x08	; 8
      006053 3E                    1136 	.db #0x3e	; 62
      006054 08                    1137 	.db #0x08	; 8
      006055 08                    1138 	.db #0x08	; 8
      006056 00                    1139 	.db #0x00	; 0
      006057 50                    1140 	.db #0x50	; 80	'P'
      006058 30                    1141 	.db #0x30	; 48	'0'
      006059 00                    1142 	.db #0x00	; 0
      00605A 00                    1143 	.db #0x00	; 0
      00605B 08                    1144 	.db #0x08	; 8
      00605C 08                    1145 	.db #0x08	; 8
      00605D 08                    1146 	.db #0x08	; 8
      00605E 08                    1147 	.db #0x08	; 8
      00605F 08                    1148 	.db #0x08	; 8
      006060 00                    1149 	.db #0x00	; 0
      006061 60                    1150 	.db #0x60	; 96
      006062 60                    1151 	.db #0x60	; 96
      006063 00                    1152 	.db #0x00	; 0
      006064 00                    1153 	.db #0x00	; 0
      006065 20                    1154 	.db #0x20	; 32
      006066 10                    1155 	.db #0x10	; 16
      006067 08                    1156 	.db #0x08	; 8
      006068 04                    1157 	.db #0x04	; 4
      006069 02                    1158 	.db #0x02	; 2
      00606A 3E                    1159 	.db #0x3e	; 62
      00606B 51                    1160 	.db #0x51	; 81	'Q'
      00606C 49                    1161 	.db #0x49	; 73	'I'
      00606D 45                    1162 	.db #0x45	; 69	'E'
      00606E 3E                    1163 	.db #0x3e	; 62
      00606F 00                    1164 	.db #0x00	; 0
      006070 42                    1165 	.db #0x42	; 66	'B'
      006071 7F                    1166 	.db #0x7f	; 127
      006072 40                    1167 	.db #0x40	; 64
      006073 00                    1168 	.db #0x00	; 0
      006074 42                    1169 	.db #0x42	; 66	'B'
      006075 61                    1170 	.db #0x61	; 97	'a'
      006076 51                    1171 	.db #0x51	; 81	'Q'
      006077 49                    1172 	.db #0x49	; 73	'I'
      006078 46                    1173 	.db #0x46	; 70	'F'
      006079 21                    1174 	.db #0x21	; 33
      00607A 41                    1175 	.db #0x41	; 65	'A'
      00607B 45                    1176 	.db #0x45	; 69	'E'
      00607C 4B                    1177 	.db #0x4b	; 75	'K'
      00607D 31                    1178 	.db #0x31	; 49	'1'
      00607E 18                    1179 	.db #0x18	; 24
      00607F 14                    1180 	.db #0x14	; 20
      006080 12                    1181 	.db #0x12	; 18
      006081 7F                    1182 	.db #0x7f	; 127
      006082 10                    1183 	.db #0x10	; 16
      006083 27                    1184 	.db #0x27	; 39
      006084 45                    1185 	.db #0x45	; 69	'E'
      006085 45                    1186 	.db #0x45	; 69	'E'
      006086 45                    1187 	.db #0x45	; 69	'E'
      006087 39                    1188 	.db #0x39	; 57	'9'
      006088 3C                    1189 	.db #0x3c	; 60
      006089 4A                    1190 	.db #0x4a	; 74	'J'
      00608A 49                    1191 	.db #0x49	; 73	'I'
      00608B 49                    1192 	.db #0x49	; 73	'I'
      00608C 30                    1193 	.db #0x30	; 48	'0'
      00608D 01                    1194 	.db #0x01	; 1
      00608E 71                    1195 	.db #0x71	; 113	'q'
      00608F 09                    1196 	.db #0x09	; 9
      006090 05                    1197 	.db #0x05	; 5
      006091 03                    1198 	.db #0x03	; 3
      006092 36                    1199 	.db #0x36	; 54	'6'
      006093 49                    1200 	.db #0x49	; 73	'I'
      006094 49                    1201 	.db #0x49	; 73	'I'
      006095 49                    1202 	.db #0x49	; 73	'I'
      006096 36                    1203 	.db #0x36	; 54	'6'
      006097 06                    1204 	.db #0x06	; 6
      006098 49                    1205 	.db #0x49	; 73	'I'
      006099 49                    1206 	.db #0x49	; 73	'I'
      00609A 29                    1207 	.db #0x29	; 41
      00609B 1E                    1208 	.db #0x1e	; 30
      00609C 00                    1209 	.db #0x00	; 0
      00609D 36                    1210 	.db #0x36	; 54	'6'
      00609E 36                    1211 	.db #0x36	; 54	'6'
      00609F 00                    1212 	.db #0x00	; 0
      0060A0 00                    1213 	.db #0x00	; 0
      0060A1 00                    1214 	.db #0x00	; 0
      0060A2 56                    1215 	.db #0x56	; 86	'V'
      0060A3 36                    1216 	.db #0x36	; 54	'6'
      0060A4 00                    1217 	.db #0x00	; 0
      0060A5 00                    1218 	.db #0x00	; 0
      0060A6 08                    1219 	.db #0x08	; 8
      0060A7 14                    1220 	.db #0x14	; 20
      0060A8 22                    1221 	.db #0x22	; 34
      0060A9 41                    1222 	.db #0x41	; 65	'A'
      0060AA 00                    1223 	.db #0x00	; 0
      0060AB 14                    1224 	.db #0x14	; 20
      0060AC 14                    1225 	.db #0x14	; 20
      0060AD 14                    1226 	.db #0x14	; 20
      0060AE 14                    1227 	.db #0x14	; 20
      0060AF 14                    1228 	.db #0x14	; 20
      0060B0 00                    1229 	.db #0x00	; 0
      0060B1 41                    1230 	.db #0x41	; 65	'A'
      0060B2 22                    1231 	.db #0x22	; 34
      0060B3 14                    1232 	.db #0x14	; 20
      0060B4 08                    1233 	.db #0x08	; 8
      0060B5 02                    1234 	.db #0x02	; 2
      0060B6 01                    1235 	.db #0x01	; 1
      0060B7 51                    1236 	.db #0x51	; 81	'Q'
      0060B8 09                    1237 	.db #0x09	; 9
      0060B9 06                    1238 	.db #0x06	; 6
      0060BA 32                    1239 	.db #0x32	; 50	'2'
      0060BB 49                    1240 	.db #0x49	; 73	'I'
      0060BC 79                    1241 	.db #0x79	; 121	'y'
      0060BD 41                    1242 	.db #0x41	; 65	'A'
      0060BE 3E                    1243 	.db #0x3e	; 62
      0060BF 7E                    1244 	.db #0x7e	; 126
      0060C0 11                    1245 	.db #0x11	; 17
      0060C1 11                    1246 	.db #0x11	; 17
      0060C2 11                    1247 	.db #0x11	; 17
      0060C3 7E                    1248 	.db #0x7e	; 126
      0060C4 7F                    1249 	.db #0x7f	; 127
      0060C5 49                    1250 	.db #0x49	; 73	'I'
      0060C6 49                    1251 	.db #0x49	; 73	'I'
      0060C7 49                    1252 	.db #0x49	; 73	'I'
      0060C8 36                    1253 	.db #0x36	; 54	'6'
      0060C9 3E                    1254 	.db #0x3e	; 62
      0060CA 41                    1255 	.db #0x41	; 65	'A'
      0060CB 41                    1256 	.db #0x41	; 65	'A'
      0060CC 41                    1257 	.db #0x41	; 65	'A'
      0060CD 22                    1258 	.db #0x22	; 34
      0060CE 7F                    1259 	.db #0x7f	; 127
      0060CF 41                    1260 	.db #0x41	; 65	'A'
      0060D0 41                    1261 	.db #0x41	; 65	'A'
      0060D1 22                    1262 	.db #0x22	; 34
      0060D2 1C                    1263 	.db #0x1c	; 28
      0060D3 7F                    1264 	.db #0x7f	; 127
      0060D4 49                    1265 	.db #0x49	; 73	'I'
      0060D5 49                    1266 	.db #0x49	; 73	'I'
      0060D6 49                    1267 	.db #0x49	; 73	'I'
      0060D7 41                    1268 	.db #0x41	; 65	'A'
      0060D8 7F                    1269 	.db #0x7f	; 127
      0060D9 09                    1270 	.db #0x09	; 9
      0060DA 09                    1271 	.db #0x09	; 9
      0060DB 09                    1272 	.db #0x09	; 9
      0060DC 01                    1273 	.db #0x01	; 1
      0060DD 3E                    1274 	.db #0x3e	; 62
      0060DE 41                    1275 	.db #0x41	; 65	'A'
      0060DF 49                    1276 	.db #0x49	; 73	'I'
      0060E0 49                    1277 	.db #0x49	; 73	'I'
      0060E1 7A                    1278 	.db #0x7a	; 122	'z'
      0060E2 7F                    1279 	.db #0x7f	; 127
      0060E3 08                    1280 	.db #0x08	; 8
      0060E4 08                    1281 	.db #0x08	; 8
      0060E5 08                    1282 	.db #0x08	; 8
      0060E6 7F                    1283 	.db #0x7f	; 127
      0060E7 00                    1284 	.db #0x00	; 0
      0060E8 41                    1285 	.db #0x41	; 65	'A'
      0060E9 7F                    1286 	.db #0x7f	; 127
      0060EA 41                    1287 	.db #0x41	; 65	'A'
      0060EB 00                    1288 	.db #0x00	; 0
      0060EC 20                    1289 	.db #0x20	; 32
      0060ED 40                    1290 	.db #0x40	; 64
      0060EE 41                    1291 	.db #0x41	; 65	'A'
      0060EF 3F                    1292 	.db #0x3f	; 63
      0060F0 01                    1293 	.db #0x01	; 1
      0060F1 7F                    1294 	.db #0x7f	; 127
      0060F2 08                    1295 	.db #0x08	; 8
      0060F3 14                    1296 	.db #0x14	; 20
      0060F4 22                    1297 	.db #0x22	; 34
      0060F5 41                    1298 	.db #0x41	; 65	'A'
      0060F6 7F                    1299 	.db #0x7f	; 127
      0060F7 40                    1300 	.db #0x40	; 64
      0060F8 40                    1301 	.db #0x40	; 64
      0060F9 40                    1302 	.db #0x40	; 64
      0060FA 40                    1303 	.db #0x40	; 64
      0060FB 7F                    1304 	.db #0x7f	; 127
      0060FC 02                    1305 	.db #0x02	; 2
      0060FD 0C                    1306 	.db #0x0c	; 12
      0060FE 02                    1307 	.db #0x02	; 2
      0060FF 7F                    1308 	.db #0x7f	; 127
      006100 7F                    1309 	.db #0x7f	; 127
      006101 04                    1310 	.db #0x04	; 4
      006102 08                    1311 	.db #0x08	; 8
      006103 10                    1312 	.db #0x10	; 16
      006104 7F                    1313 	.db #0x7f	; 127
      006105 3E                    1314 	.db #0x3e	; 62
      006106 41                    1315 	.db #0x41	; 65	'A'
      006107 41                    1316 	.db #0x41	; 65	'A'
      006108 41                    1317 	.db #0x41	; 65	'A'
      006109 3E                    1318 	.db #0x3e	; 62
      00610A 7F                    1319 	.db #0x7f	; 127
      00610B 09                    1320 	.db #0x09	; 9
      00610C 09                    1321 	.db #0x09	; 9
      00610D 09                    1322 	.db #0x09	; 9
      00610E 06                    1323 	.db #0x06	; 6
      00610F 3E                    1324 	.db #0x3e	; 62
      006110 41                    1325 	.db #0x41	; 65	'A'
      006111 51                    1326 	.db #0x51	; 81	'Q'
      006112 21                    1327 	.db #0x21	; 33
      006113 5E                    1328 	.db #0x5e	; 94
      006114 7F                    1329 	.db #0x7f	; 127
      006115 09                    1330 	.db #0x09	; 9
      006116 19                    1331 	.db #0x19	; 25
      006117 29                    1332 	.db #0x29	; 41
      006118 46                    1333 	.db #0x46	; 70	'F'
      006119 46                    1334 	.db #0x46	; 70	'F'
      00611A 49                    1335 	.db #0x49	; 73	'I'
      00611B 49                    1336 	.db #0x49	; 73	'I'
      00611C 49                    1337 	.db #0x49	; 73	'I'
      00611D 31                    1338 	.db #0x31	; 49	'1'
      00611E 01                    1339 	.db #0x01	; 1
      00611F 01                    1340 	.db #0x01	; 1
      006120 7F                    1341 	.db #0x7f	; 127
      006121 01                    1342 	.db #0x01	; 1
      006122 01                    1343 	.db #0x01	; 1
      006123 3F                    1344 	.db #0x3f	; 63
      006124 40                    1345 	.db #0x40	; 64
      006125 40                    1346 	.db #0x40	; 64
      006126 40                    1347 	.db #0x40	; 64
      006127 3F                    1348 	.db #0x3f	; 63
      006128 1F                    1349 	.db #0x1f	; 31
      006129 20                    1350 	.db #0x20	; 32
      00612A 40                    1351 	.db #0x40	; 64
      00612B 20                    1352 	.db #0x20	; 32
      00612C 1F                    1353 	.db #0x1f	; 31
      00612D 3F                    1354 	.db #0x3f	; 63
      00612E 40                    1355 	.db #0x40	; 64
      00612F 38                    1356 	.db #0x38	; 56	'8'
      006130 40                    1357 	.db #0x40	; 64
      006131 3F                    1358 	.db #0x3f	; 63
      006132 63                    1359 	.db #0x63	; 99	'c'
      006133 14                    1360 	.db #0x14	; 20
      006134 08                    1361 	.db #0x08	; 8
      006135 14                    1362 	.db #0x14	; 20
      006136 63                    1363 	.db #0x63	; 99	'c'
      006137 07                    1364 	.db #0x07	; 7
      006138 08                    1365 	.db #0x08	; 8
      006139 70                    1366 	.db #0x70	; 112	'p'
      00613A 08                    1367 	.db #0x08	; 8
      00613B 07                    1368 	.db #0x07	; 7
      00613C 61                    1369 	.db #0x61	; 97	'a'
      00613D 51                    1370 	.db #0x51	; 81	'Q'
      00613E 49                    1371 	.db #0x49	; 73	'I'
      00613F 45                    1372 	.db #0x45	; 69	'E'
      006140 43                    1373 	.db #0x43	; 67	'C'
      006141 00                    1374 	.db #0x00	; 0
      006142 7F                    1375 	.db #0x7f	; 127
      006143 41                    1376 	.db #0x41	; 65	'A'
      006144 41                    1377 	.db #0x41	; 65	'A'
      006145 00                    1378 	.db #0x00	; 0
      006146 02                    1379 	.db #0x02	; 2
      006147 04                    1380 	.db #0x04	; 4
      006148 08                    1381 	.db #0x08	; 8
      006149 10                    1382 	.db #0x10	; 16
      00614A 20                    1383 	.db #0x20	; 32
      00614B 00                    1384 	.db #0x00	; 0
      00614C 41                    1385 	.db #0x41	; 65	'A'
      00614D 41                    1386 	.db #0x41	; 65	'A'
      00614E 7F                    1387 	.db #0x7f	; 127
      00614F 00                    1388 	.db #0x00	; 0
      006150 04                    1389 	.db #0x04	; 4
      006151 02                    1390 	.db #0x02	; 2
      006152 01                    1391 	.db #0x01	; 1
      006153 02                    1392 	.db #0x02	; 2
      006154 04                    1393 	.db #0x04	; 4
      006155 40                    1394 	.db #0x40	; 64
      006156 40                    1395 	.db #0x40	; 64
      006157 40                    1396 	.db #0x40	; 64
      006158 40                    1397 	.db #0x40	; 64
      006159 40                    1398 	.db #0x40	; 64
      00615A 00                    1399 	.db #0x00	; 0
      00615B 01                    1400 	.db #0x01	; 1
      00615C 02                    1401 	.db #0x02	; 2
      00615D 04                    1402 	.db #0x04	; 4
      00615E 00                    1403 	.db #0x00	; 0
      00615F 20                    1404 	.db #0x20	; 32
      006160 54                    1405 	.db #0x54	; 84	'T'
      006161 54                    1406 	.db #0x54	; 84	'T'
      006162 54                    1407 	.db #0x54	; 84	'T'
      006163 78                    1408 	.db #0x78	; 120	'x'
      006164 7F                    1409 	.db #0x7f	; 127
      006165 48                    1410 	.db #0x48	; 72	'H'
      006166 44                    1411 	.db #0x44	; 68	'D'
      006167 44                    1412 	.db #0x44	; 68	'D'
      006168 38                    1413 	.db #0x38	; 56	'8'
      006169 38                    1414 	.db #0x38	; 56	'8'
      00616A 44                    1415 	.db #0x44	; 68	'D'
      00616B 44                    1416 	.db #0x44	; 68	'D'
      00616C 44                    1417 	.db #0x44	; 68	'D'
      00616D 20                    1418 	.db #0x20	; 32
      00616E 38                    1419 	.db #0x38	; 56	'8'
      00616F 44                    1420 	.db #0x44	; 68	'D'
      006170 44                    1421 	.db #0x44	; 68	'D'
      006171 48                    1422 	.db #0x48	; 72	'H'
      006172 7F                    1423 	.db #0x7f	; 127
      006173 38                    1424 	.db #0x38	; 56	'8'
      006174 54                    1425 	.db #0x54	; 84	'T'
      006175 54                    1426 	.db #0x54	; 84	'T'
      006176 54                    1427 	.db #0x54	; 84	'T'
      006177 18                    1428 	.db #0x18	; 24
      006178 08                    1429 	.db #0x08	; 8
      006179 7E                    1430 	.db #0x7e	; 126
      00617A 09                    1431 	.db #0x09	; 9
      00617B 01                    1432 	.db #0x01	; 1
      00617C 02                    1433 	.db #0x02	; 2
      00617D 0C                    1434 	.db #0x0c	; 12
      00617E 52                    1435 	.db #0x52	; 82	'R'
      00617F 52                    1436 	.db #0x52	; 82	'R'
      006180 52                    1437 	.db #0x52	; 82	'R'
      006181 3E                    1438 	.db #0x3e	; 62
      006182 7F                    1439 	.db #0x7f	; 127
      006183 08                    1440 	.db #0x08	; 8
      006184 04                    1441 	.db #0x04	; 4
      006185 04                    1442 	.db #0x04	; 4
      006186 78                    1443 	.db #0x78	; 120	'x'
      006187 00                    1444 	.db #0x00	; 0
      006188 44                    1445 	.db #0x44	; 68	'D'
      006189 7D                    1446 	.db #0x7d	; 125
      00618A 40                    1447 	.db #0x40	; 64
      00618B 00                    1448 	.db #0x00	; 0
      00618C 20                    1449 	.db #0x20	; 32
      00618D 40                    1450 	.db #0x40	; 64
      00618E 44                    1451 	.db #0x44	; 68	'D'
      00618F 3D                    1452 	.db #0x3d	; 61
      006190 00                    1453 	.db #0x00	; 0
      006191 7F                    1454 	.db #0x7f	; 127
      006192 10                    1455 	.db #0x10	; 16
      006193 28                    1456 	.db #0x28	; 40
      006194 44                    1457 	.db #0x44	; 68	'D'
      006195 00                    1458 	.db #0x00	; 0
      006196 00                    1459 	.db #0x00	; 0
      006197 41                    1460 	.db #0x41	; 65	'A'
      006198 7F                    1461 	.db #0x7f	; 127
      006199 40                    1462 	.db #0x40	; 64
      00619A 00                    1463 	.db #0x00	; 0
      00619B 7C                    1464 	.db #0x7c	; 124
      00619C 04                    1465 	.db #0x04	; 4
      00619D 18                    1466 	.db #0x18	; 24
      00619E 04                    1467 	.db #0x04	; 4
      00619F 78                    1468 	.db #0x78	; 120	'x'
      0061A0 7C                    1469 	.db #0x7c	; 124
      0061A1 08                    1470 	.db #0x08	; 8
      0061A2 04                    1471 	.db #0x04	; 4
      0061A3 04                    1472 	.db #0x04	; 4
      0061A4 78                    1473 	.db #0x78	; 120	'x'
      0061A5 38                    1474 	.db #0x38	; 56	'8'
      0061A6 44                    1475 	.db #0x44	; 68	'D'
      0061A7 44                    1476 	.db #0x44	; 68	'D'
      0061A8 44                    1477 	.db #0x44	; 68	'D'
      0061A9 38                    1478 	.db #0x38	; 56	'8'
      0061AA 7C                    1479 	.db #0x7c	; 124
      0061AB 14                    1480 	.db #0x14	; 20
      0061AC 14                    1481 	.db #0x14	; 20
      0061AD 14                    1482 	.db #0x14	; 20
      0061AE 08                    1483 	.db #0x08	; 8
      0061AF 08                    1484 	.db #0x08	; 8
      0061B0 14                    1485 	.db #0x14	; 20
      0061B1 14                    1486 	.db #0x14	; 20
      0061B2 14                    1487 	.db #0x14	; 20
      0061B3 7C                    1488 	.db #0x7c	; 124
      0061B4 7C                    1489 	.db #0x7c	; 124
      0061B5 08                    1490 	.db #0x08	; 8
      0061B6 04                    1491 	.db #0x04	; 4
      0061B7 04                    1492 	.db #0x04	; 4
      0061B8 08                    1493 	.db #0x08	; 8
      0061B9 48                    1494 	.db #0x48	; 72	'H'
      0061BA 54                    1495 	.db #0x54	; 84	'T'
      0061BB 54                    1496 	.db #0x54	; 84	'T'
      0061BC 54                    1497 	.db #0x54	; 84	'T'
      0061BD 20                    1498 	.db #0x20	; 32
      0061BE 04                    1499 	.db #0x04	; 4
      0061BF 3F                    1500 	.db #0x3f	; 63
      0061C0 44                    1501 	.db #0x44	; 68	'D'
      0061C1 40                    1502 	.db #0x40	; 64
      0061C2 20                    1503 	.db #0x20	; 32
      0061C3 3C                    1504 	.db #0x3c	; 60
      0061C4 40                    1505 	.db #0x40	; 64
      0061C5 40                    1506 	.db #0x40	; 64
      0061C6 20                    1507 	.db #0x20	; 32
      0061C7 7C                    1508 	.db #0x7c	; 124
      0061C8 1C                    1509 	.db #0x1c	; 28
      0061C9 20                    1510 	.db #0x20	; 32
      0061CA 40                    1511 	.db #0x40	; 64
      0061CB 20                    1512 	.db #0x20	; 32
      0061CC 1C                    1513 	.db #0x1c	; 28
      0061CD 3C                    1514 	.db #0x3c	; 60
      0061CE 40                    1515 	.db #0x40	; 64
      0061CF 30                    1516 	.db #0x30	; 48	'0'
      0061D0 40                    1517 	.db #0x40	; 64
      0061D1 3C                    1518 	.db #0x3c	; 60
      0061D2 44                    1519 	.db #0x44	; 68	'D'
      0061D3 28                    1520 	.db #0x28	; 40
      0061D4 10                    1521 	.db #0x10	; 16
      0061D5 28                    1522 	.db #0x28	; 40
      0061D6 44                    1523 	.db #0x44	; 68	'D'
      0061D7 0C                    1524 	.db #0x0c	; 12
      0061D8 50                    1525 	.db #0x50	; 80	'P'
      0061D9 50                    1526 	.db #0x50	; 80	'P'
      0061DA 50                    1527 	.db #0x50	; 80	'P'
      0061DB 3C                    1528 	.db #0x3c	; 60
      0061DC 44                    1529 	.db #0x44	; 68	'D'
      0061DD 64                    1530 	.db #0x64	; 100	'd'
      0061DE 54                    1531 	.db #0x54	; 84	'T'
      0061DF 4C                    1532 	.db #0x4c	; 76	'L'
      0061E0 44                    1533 	.db #0x44	; 68	'D'
      0061E1 00                    1534 	.db #0x00	; 0
      0061E2 08                    1535 	.db #0x08	; 8
      0061E3 36                    1536 	.db #0x36	; 54	'6'
      0061E4 41                    1537 	.db #0x41	; 65	'A'
      0061E5 00                    1538 	.db #0x00	; 0
      0061E6 00                    1539 	.db #0x00	; 0
      0061E7 00                    1540 	.db #0x00	; 0
      0061E8 7F                    1541 	.db #0x7f	; 127
      0061E9 00                    1542 	.db #0x00	; 0
      0061EA 00                    1543 	.db #0x00	; 0
      0061EB 00                    1544 	.db #0x00	; 0
      0061EC 41                    1545 	.db #0x41	; 65	'A'
      0061ED 36                    1546 	.db #0x36	; 54	'6'
      0061EE 08                    1547 	.db #0x08	; 8
      0061EF 00                    1548 	.db #0x00	; 0
      0061F0 10                    1549 	.db #0x10	; 16
      0061F1 08                    1550 	.db #0x08	; 8
      0061F2 08                    1551 	.db #0x08	; 8
      0061F3 10                    1552 	.db #0x10	; 16
      0061F4 08                    1553 	.db #0x08	; 8
      0061F5 00                    1554 	.db #0x00	; 0
      0061F6 00                    1555 	.db #0x00	; 0
      0061F7 00                    1556 	.db #0x00	; 0
      0061F8 00                    1557 	.db #0x00	; 0
      0061F9 00                    1558 	.db #0x00	; 0
                                   1559 	.area XINIT   (CODE)
                                   1560 	.area CABS    (ABS,CODE)
