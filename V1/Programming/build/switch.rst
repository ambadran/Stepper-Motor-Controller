                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module switch
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UINT8_TO_SWITCH_STATUS
                                     12 	.globl _gpioRead
                                     13 	.globl _gpioConfigure
                                     14 	.globl _S1SM0_FE
                                     15 	.globl _T1IE
                                     16 	.globl _T0IE
                                     17 	.globl _T1RUN
                                     18 	.globl _T0RUN
                                     19 	.globl _CY
                                     20 	.globl _AC
                                     21 	.globl _F0
                                     22 	.globl _RS1
                                     23 	.globl _RS0
                                     24 	.globl _OV
                                     25 	.globl _F1
                                     26 	.globl _P
                                     27 	.globl _EA
                                     28 	.globl _INT1IE
                                     29 	.globl _INT0IE
                                     30 	.globl _INT1TR
                                     31 	.globl _INT0TR
                                     32 	.globl _P5_5
                                     33 	.globl _P5_4
                                     34 	.globl _P5_3
                                     35 	.globl _P5_2
                                     36 	.globl _P5_1
                                     37 	.globl _P5_0
                                     38 	.globl _P3_7
                                     39 	.globl _P3_6
                                     40 	.globl _P3_5
                                     41 	.globl _P3_4
                                     42 	.globl _P3_3
                                     43 	.globl _P3_2
                                     44 	.globl _P3_1
                                     45 	.globl _P3_0
                                     46 	.globl _P2_7
                                     47 	.globl _P2_6
                                     48 	.globl _P2_5
                                     49 	.globl _P2_4
                                     50 	.globl _P2_3
                                     51 	.globl _P2_2
                                     52 	.globl _P2_1
                                     53 	.globl _P2_0
                                     54 	.globl _P1_7
                                     55 	.globl _P1_6
                                     56 	.globl _P1_5
                                     57 	.globl _P1_4
                                     58 	.globl _P1_3
                                     59 	.globl _P1_2
                                     60 	.globl _P1_1
                                     61 	.globl _P1_0
                                     62 	.globl _USBADR
                                     63 	.globl _USBCON
                                     64 	.globl _USBDAT
                                     65 	.globl _USBCLK
                                     66 	.globl _S4BUF
                                     67 	.globl _S4CON
                                     68 	.globl _S3BUF
                                     69 	.globl _S3CON
                                     70 	.globl _S2BUF
                                     71 	.globl _S2CON
                                     72 	.globl _S1BUF
                                     73 	.globl _S1CON
                                     74 	.globl _SADEN
                                     75 	.globl _SADDR
                                     76 	.globl _AUXINTIF
                                     77 	.globl _T3
                                     78 	.globl _T3L
                                     79 	.globl _T3H
                                     80 	.globl _T4
                                     81 	.globl _T4L
                                     82 	.globl _T4H
                                     83 	.globl _T4T3M
                                     84 	.globl _WDT_CONTR
                                     85 	.globl _AUXR
                                     86 	.globl _T2
                                     87 	.globl _T2H
                                     88 	.globl _T2L
                                     89 	.globl _T1
                                     90 	.globl _T1H
                                     91 	.globl _T1L
                                     92 	.globl _T0
                                     93 	.globl _T0H
                                     94 	.globl _T0L
                                     95 	.globl _TMOD
                                     96 	.globl _TCON
                                     97 	.globl _IRTRIM
                                     98 	.globl _LIRTRIM
                                     99 	.globl _IRCBAND
                                    100 	.globl _SPDAT
                                    101 	.globl _SPCTL
                                    102 	.globl _SPSTAT
                                    103 	.globl _WKTC
                                    104 	.globl _WKTCH
                                    105 	.globl _WKTCL
                                    106 	.globl _BUS_SPEED
                                    107 	.globl _P_SW2
                                    108 	.globl _P_SW1
                                    109 	.globl _RSTCFG
                                    110 	.globl _PCON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _SP
                                    115 	.globl _IP3H
                                    116 	.globl _IP3L
                                    117 	.globl _IP2H
                                    118 	.globl _IP2L
                                    119 	.globl _IE2
                                    120 	.globl _IP1H
                                    121 	.globl _IP1L
                                    122 	.globl _IE1
                                    123 	.globl _INT_CLKO
                                    124 	.globl _IAP_TPS
                                    125 	.globl _IAP_CONTR
                                    126 	.globl _IAP_TRIG
                                    127 	.globl _IAP_CMD
                                    128 	.globl _IAP_ADDR
                                    129 	.globl _IAP_ADDRL
                                    130 	.globl _IAP_ADDRH
                                    131 	.globl _IAP_DATA
                                    132 	.globl _P5M0
                                    133 	.globl _P5M1
                                    134 	.globl _P5
                                    135 	.globl _P3M0
                                    136 	.globl _P3M1
                                    137 	.globl _P3
                                    138 	.globl _P2M0
                                    139 	.globl _P2M1
                                    140 	.globl _P2
                                    141 	.globl _P1M0
                                    142 	.globl _P1M1
                                    143 	.globl _P1
                                    144 	.globl _TA
                                    145 	.globl _DPH1
                                    146 	.globl _DPL1
                                    147 	.globl _DPS
                                    148 	.globl _DP
                                    149 	.globl _DPH
                                    150 	.globl _DPL
                                    151 	.globl _CMPCR2
                                    152 	.globl _CMPCR1
                                    153 	.globl _DMA_ADC_AMT
                                    154 	.globl _ADCCFG
                                    155 	.globl _ADC_RES
                                    156 	.globl _ADC_RESL
                                    157 	.globl _ADC_RESH
                                    158 	.globl _ADC_CONTR
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
                                    427 	.globl _switch_init
                                    428 	.globl _get_switch_status
                                    429 ;--------------------------------------------------------
                                    430 ; special function registers
                                    431 ;--------------------------------------------------------
                                    432 	.area RSEG    (ABS,DATA)
      000000                        433 	.org 0x0000
                           0000BC   434 _ADC_CONTR	=	0x00bc
                           0000BD   435 _ADC_RESH	=	0x00bd
                           0000BE   436 _ADC_RESL	=	0x00be
                           00BDBE   437 _ADC_RES	=	0xbdbe
                           0000DE   438 _ADCCFG	=	0x00de
                           0000FA   439 _DMA_ADC_AMT	=	0x00fa
                           0000E6   440 _CMPCR1	=	0x00e6
                           0000E7   441 _CMPCR2	=	0x00e7
                           000082   442 _DPL	=	0x0082
                           000083   443 _DPH	=	0x0083
                           008382   444 _DP	=	0x8382
                           0000E3   445 _DPS	=	0x00e3
                           0000E4   446 _DPL1	=	0x00e4
                           0000E5   447 _DPH1	=	0x00e5
                           0000AE   448 _TA	=	0x00ae
                           000090   449 _P1	=	0x0090
                           000091   450 _P1M1	=	0x0091
                           000092   451 _P1M0	=	0x0092
                           0000A0   452 _P2	=	0x00a0
                           000095   453 _P2M1	=	0x0095
                           000096   454 _P2M0	=	0x0096
                           0000B0   455 _P3	=	0x00b0
                           0000B1   456 _P3M1	=	0x00b1
                           0000B2   457 _P3M0	=	0x00b2
                           0000C8   458 _P5	=	0x00c8
                           0000C9   459 _P5M1	=	0x00c9
                           0000CA   460 _P5M0	=	0x00ca
                           0000C2   461 _IAP_DATA	=	0x00c2
                           0000C3   462 _IAP_ADDRH	=	0x00c3
                           0000C4   463 _IAP_ADDRL	=	0x00c4
                           00C3C4   464 _IAP_ADDR	=	0xc3c4
                           0000C5   465 _IAP_CMD	=	0x00c5
                           0000C6   466 _IAP_TRIG	=	0x00c6
                           0000C7   467 _IAP_CONTR	=	0x00c7
                           0000F5   468 _IAP_TPS	=	0x00f5
                           00008F   469 _INT_CLKO	=	0x008f
                           0000A8   470 _IE1	=	0x00a8
                           0000B8   471 _IP1L	=	0x00b8
                           0000B7   472 _IP1H	=	0x00b7
                           0000AF   473 _IE2	=	0x00af
                           0000B5   474 _IP2L	=	0x00b5
                           0000B6   475 _IP2H	=	0x00b6
                           0000DF   476 _IP3L	=	0x00df
                           0000EE   477 _IP3H	=	0x00ee
                           000081   478 _SP	=	0x0081
                           0000D0   479 _PSW	=	0x00d0
                           0000E0   480 _ACC	=	0x00e0
                           0000F0   481 _B	=	0x00f0
                           000087   482 _PCON	=	0x0087
                           0000FF   483 _RSTCFG	=	0x00ff
                           0000A2   484 _P_SW1	=	0x00a2
                           0000BA   485 _P_SW2	=	0x00ba
                           0000A1   486 _BUS_SPEED	=	0x00a1
                           0000AA   487 _WKTCL	=	0x00aa
                           0000AB   488 _WKTCH	=	0x00ab
                           00ABAA   489 _WKTC	=	0xabaa
                           0000CD   490 _SPSTAT	=	0x00cd
                           0000CE   491 _SPCTL	=	0x00ce
                           0000CF   492 _SPDAT	=	0x00cf
                           00009D   493 _IRCBAND	=	0x009d
                           00009E   494 _LIRTRIM	=	0x009e
                           00009F   495 _IRTRIM	=	0x009f
                           000088   496 _TCON	=	0x0088
                           000089   497 _TMOD	=	0x0089
                           00008A   498 _T0L	=	0x008a
                           00008C   499 _T0H	=	0x008c
                           008C8A   500 _T0	=	0x8c8a
                           00008B   501 _T1L	=	0x008b
                           00008D   502 _T1H	=	0x008d
                           008D8B   503 _T1	=	0x8d8b
                           0000D7   504 _T2L	=	0x00d7
                           0000D6   505 _T2H	=	0x00d6
                           00D6D7   506 _T2	=	0xd6d7
                           00008E   507 _AUXR	=	0x008e
                           0000C1   508 _WDT_CONTR	=	0x00c1
                           0000D1   509 _T4T3M	=	0x00d1
                           0000D2   510 _T4H	=	0x00d2
                           0000D3   511 _T4L	=	0x00d3
                           00D2D3   512 _T4	=	0xd2d3
                           0000D4   513 _T3H	=	0x00d4
                           0000D5   514 _T3L	=	0x00d5
                           00D4D5   515 _T3	=	0xd4d5
                           0000EF   516 _AUXINTIF	=	0x00ef
                           0000A9   517 _SADDR	=	0x00a9
                           0000B9   518 _SADEN	=	0x00b9
                           000098   519 _S1CON	=	0x0098
                           000099   520 _S1BUF	=	0x0099
                           00009A   521 _S2CON	=	0x009a
                           00009B   522 _S2BUF	=	0x009b
                           0000AC   523 _S3CON	=	0x00ac
                           0000AD   524 _S3BUF	=	0x00ad
                           000084   525 _S4CON	=	0x0084
                           000085   526 _S4BUF	=	0x0085
                           0000DC   527 _USBCLK	=	0x00dc
                           0000EC   528 _USBDAT	=	0x00ec
                           0000F4   529 _USBCON	=	0x00f4
                           0000FC   530 _USBADR	=	0x00fc
                                    531 ;--------------------------------------------------------
                                    532 ; special function bits
                                    533 ;--------------------------------------------------------
                                    534 	.area RSEG    (ABS,DATA)
      000000                        535 	.org 0x0000
                           000090   536 _P1_0	=	0x0090
                           000091   537 _P1_1	=	0x0091
                           000092   538 _P1_2	=	0x0092
                           000093   539 _P1_3	=	0x0093
                           000094   540 _P1_4	=	0x0094
                           000095   541 _P1_5	=	0x0095
                           000096   542 _P1_6	=	0x0096
                           000097   543 _P1_7	=	0x0097
                           0000A0   544 _P2_0	=	0x00a0
                           0000A1   545 _P2_1	=	0x00a1
                           0000A2   546 _P2_2	=	0x00a2
                           0000A3   547 _P2_3	=	0x00a3
                           0000A4   548 _P2_4	=	0x00a4
                           0000A5   549 _P2_5	=	0x00a5
                           0000A6   550 _P2_6	=	0x00a6
                           0000A7   551 _P2_7	=	0x00a7
                           0000B0   552 _P3_0	=	0x00b0
                           0000B1   553 _P3_1	=	0x00b1
                           0000B2   554 _P3_2	=	0x00b2
                           0000B3   555 _P3_3	=	0x00b3
                           0000B4   556 _P3_4	=	0x00b4
                           0000B5   557 _P3_5	=	0x00b5
                           0000B6   558 _P3_6	=	0x00b6
                           0000B7   559 _P3_7	=	0x00b7
                           0000C8   560 _P5_0	=	0x00c8
                           0000C9   561 _P5_1	=	0x00c9
                           0000CA   562 _P5_2	=	0x00ca
                           0000CB   563 _P5_3	=	0x00cb
                           0000CC   564 _P5_4	=	0x00cc
                           0000CD   565 _P5_5	=	0x00cd
                           000088   566 _INT0TR	=	0x0088
                           00008A   567 _INT1TR	=	0x008a
                           0000A8   568 _INT0IE	=	0x00a8
                           0000AA   569 _INT1IE	=	0x00aa
                           0000AF   570 _EA	=	0x00af
                           0000D0   571 _P	=	0x00d0
                           0000D1   572 _F1	=	0x00d1
                           0000D2   573 _OV	=	0x00d2
                           0000D3   574 _RS0	=	0x00d3
                           0000D4   575 _RS1	=	0x00d4
                           0000D5   576 _F0	=	0x00d5
                           0000D6   577 _AC	=	0x00d6
                           0000D7   578 _CY	=	0x00d7
                           00008C   579 _T0RUN	=	0x008c
                           00008E   580 _T1RUN	=	0x008e
                           0000A9   581 _T0IE	=	0x00a9
                           0000AB   582 _T1IE	=	0x00ab
                           00009F   583 _S1SM0_FE	=	0x009f
                                    584 ;--------------------------------------------------------
                                    585 ; overlayable register banks
                                    586 ;--------------------------------------------------------
                                    587 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        588 	.ds 8
                                    589 ;--------------------------------------------------------
                                    590 ; internal ram data
                                    591 ;--------------------------------------------------------
                                    592 	.area DSEG    (DATA)
                                    593 ;--------------------------------------------------------
                                    594 ; overlayable items in internal ram 
                                    595 ;--------------------------------------------------------
                                    596 ;--------------------------------------------------------
                                    597 ; indirectly addressable internal ram data
                                    598 ;--------------------------------------------------------
                                    599 	.area ISEG    (DATA)
                                    600 ;--------------------------------------------------------
                                    601 ; absolute internal ram data
                                    602 ;--------------------------------------------------------
                                    603 	.area IABS    (ABS,DATA)
                                    604 	.area IABS    (ABS,DATA)
                                    605 ;--------------------------------------------------------
                                    606 ; bit data
                                    607 ;--------------------------------------------------------
                                    608 	.area BSEG    (BIT)
                                    609 ;--------------------------------------------------------
                                    610 ; paged external ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area PSEG    (PAG,XDATA)
                                    613 ;--------------------------------------------------------
                                    614 ; external ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area XSEG    (XDATA)
                           00FEA8   617 _ADCTIM	=	0xfea8
                           00FEAD   618 _ADCEXCFG	=	0xfead
                           00FA10   619 _DMA_ADC_CFG	=	0xfa10
                           00FA11   620 _DMA_ADC_CR	=	0xfa11
                           00FA12   621 _DMA_ADC_STA	=	0xfa12
                           00FA17   622 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   623 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   624 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   625 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   626 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   627 _CMPEXCFG	=	0xfeae
                           00FA00   628 _DMA_M2M_CFG	=	0xfa00
                           00FA01   629 _DMA_M2M_CR	=	0xfa01
                           00FA02   630 _DMA_M2M_STA	=	0xfa02
                           00FA03   631 _DMA_M2M_AMT	=	0xfa03
                           00FA04   632 _DMA_M2M_DONE	=	0xfa04
                           00FA05   633 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   634 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   635 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   636 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   637 _P1INTE	=	0xfd01
                           00FD11   638 _P1INTF	=	0xfd11
                           00FD21   639 _P1IM0	=	0xfd21
                           00FD31   640 _P1IM1	=	0xfd31
                           00FD41   641 _P1WKUE	=	0xfd41
                           00FE11   642 _P1PU	=	0xfe11
                           00FE19   643 _P1NCS	=	0xfe19
                           00FE21   644 _P1SR	=	0xfe21
                           00FE29   645 _P1DR	=	0xfe29
                           00FE31   646 _P1IE	=	0xfe31
                           00FD02   647 _P2INTE	=	0xfd02
                           00FD12   648 _P2INTF	=	0xfd12
                           00FD22   649 _P2IM0	=	0xfd22
                           00FD32   650 _P2IM1	=	0xfd32
                           00FD42   651 _P2WKUE	=	0xfd42
                           00FE12   652 _P2PU	=	0xfe12
                           00FE1A   653 _P2NCS	=	0xfe1a
                           00FE22   654 _P2SR	=	0xfe22
                           00FE2A   655 _P2DR	=	0xfe2a
                           00FE32   656 _P2IE	=	0xfe32
                           00FD03   657 _P3INTE	=	0xfd03
                           00FD13   658 _P3INTF	=	0xfd13
                           00FD23   659 _P3IM0	=	0xfd23
                           00FD33   660 _P3IM1	=	0xfd33
                           00FD43   661 _P3WKUE	=	0xfd43
                           00FE13   662 _P3PU	=	0xfe13
                           00FE1B   663 _P3NCS	=	0xfe1b
                           00FE23   664 _P3SR	=	0xfe23
                           00FE2B   665 _P3DR	=	0xfe2b
                           00FE33   666 _P3IE	=	0xfe33
                           00FD05   667 _P5INTE	=	0xfd05
                           00FD15   668 _P5INTF	=	0xfd15
                           00FD25   669 _P5IM0	=	0xfd25
                           00FD35   670 _P5IM1	=	0xfd35
                           00FD45   671 _P5WKUE	=	0xfd45
                           00FE15   672 _P5PU	=	0xfe15
                           00FE1D   673 _P5NCS	=	0xfe1d
                           00FE25   674 _P5SR	=	0xfe25
                           00FE2D   675 _P5DR	=	0xfe2d
                           00FE35   676 _P5IE	=	0xfe35
                           00FD60   677 _PINIPL	=	0xfd60
                           00FD61   678 _PINIPH	=	0xfd61
                           00FE80   679 _I2CCFG	=	0xfe80
                           00FE81   680 _I2CMSCR	=	0xfe81
                           00FE82   681 _I2CMSST	=	0xfe82
                           00FE83   682 _I2CSLCR	=	0xfe83
                           00FE84   683 _I2CSLST	=	0xfe84
                           00FE85   684 _I2CSLADR	=	0xfe85
                           00FE86   685 _I2CTXD	=	0xfe86
                           00FE87   686 _I2CRXD	=	0xfe87
                           00FE88   687 _I2CMSAUX	=	0xfe88
                           00FE50   688 _LCMCFG	=	0xfe50
                           00FE51   689 _LCMCFG2	=	0xfe51
                           00FE52   690 _LCMCR	=	0xfe52
                           00FE53   691 _LCMSTA	=	0xfe53
                           00FE54   692 _LCMIDDATL	=	0xfe54
                           00FE55   693 _LCMIDDATH	=	0xfe55
                           00FE54   694 _LCMIDDAT	=	0xfe54
                           00FA70   695 _DMA_LCM_CFG	=	0xfa70
                           00FA71   696 _DMA_LCM_CR	=	0xfa71
                           00FA72   697 _DMA_LCM_STA	=	0xfa72
                           00FA73   698 _DMA_LCM_AMT	=	0xfa73
                           00FA74   699 _DMA_LCM_DONE	=	0xfa74
                           00FA75   700 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   701 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   702 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   703 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   704 _MD3	=	0xfcf0
                           00FCF1   705 _MD2	=	0xfcf1
                           00FCF2   706 _MD1	=	0xfcf2
                           00FCF3   707 _MD0	=	0xfcf3
                           00FCF4   708 _MD5	=	0xfcf4
                           00FCF5   709 _MD4	=	0xfcf5
                           00FCF6   710 _ARCON	=	0xfcf6
                           00FCF7   711 _OPCON	=	0xfcf7
                           00FE08   712 _SPFUNC	=	0xfe08
                           00FE09   713 _RSTFLAG	=	0xfe09
                           00FEB0   714 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   715 _PWMA_ENO	=	0xfeb1
                           00FEB2   716 _PWMA_PS	=	0xfeb2
                           00FEB3   717 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   718 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   719 _PWMB_ENO	=	0xfeb5
                           00FEB6   720 _PWMB_PS	=	0xfeb6
                           00FEB7   721 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   722 _PWMA_CR1	=	0xfec0
                           00FEC1   723 _PWMA_CR2	=	0xfec1
                           00FEC2   724 _PWMA_SMCR	=	0xfec2
                           00FEC3   725 _PWMA_ETR	=	0xfec3
                           00FEC4   726 _PWMA_IER	=	0xfec4
                           00FEC5   727 _PWMA_SR1	=	0xfec5
                           00FEC6   728 _PWMA_SR2	=	0xfec6
                           00FEC7   729 _PWMA_EGR	=	0xfec7
                           00FEC8   730 _PWMA_CCMR1	=	0xfec8
                           00FEC9   731 _PWMA_CCMR2	=	0xfec9
                           00FECA   732 _PWMA_CCMR3	=	0xfeca
                           00FECB   733 _PWMA_CCMR4	=	0xfecb
                           00FECC   734 _PWMA_CCER1	=	0xfecc
                           00FECD   735 _PWMA_CCER2	=	0xfecd
                           00FECE   736 _PWMA_CNTRH	=	0xfece
                           00FECF   737 _PWMA_CNTRL	=	0xfecf
                           00FED0   738 _PWMA_PSCRH	=	0xfed0
                           00FED1   739 _PWMA_PSCRL	=	0xfed1
                           00FED2   740 _PWMA_ARRH	=	0xfed2
                           00FED3   741 _PWMA_ARRL	=	0xfed3
                           00FED4   742 _PWMA_RCR	=	0xfed4
                           00FED5   743 _PWMA_CCR1H	=	0xfed5
                           00FED6   744 _PWMA_CCR1L	=	0xfed6
                           00FED7   745 _PWMA_CCR2H	=	0xfed7
                           00FED8   746 _PWMA_CCR2L	=	0xfed8
                           00FED9   747 _PWMA_CCR3H	=	0xfed9
                           00FEDA   748 _PWMA_CCR3L	=	0xfeda
                           00FEDB   749 _PWMA_CCR4H	=	0xfedb
                           00FEDC   750 _PWMA_CCR4L	=	0xfedc
                           00FEDD   751 _PWMA_BKR	=	0xfedd
                           00FEDE   752 _PWMA_DTR	=	0xfede
                           00FEDF   753 _PWMA_OISR	=	0xfedf
                           00FEE0   754 _PWMB_CR1	=	0xfee0
                           00FEE1   755 _PWMB_CR2	=	0xfee1
                           00FEE2   756 _PWMB_SMCR	=	0xfee2
                           00FEE3   757 _PWMB_ETR	=	0xfee3
                           00FEE4   758 _PWMB_IER	=	0xfee4
                           00FEE5   759 _PWMB_SR1	=	0xfee5
                           00FEE6   760 _PWMB_SR2	=	0xfee6
                           00FEE7   761 _PWMB_EGR	=	0xfee7
                           00FEE8   762 _PWMB_CCMR1	=	0xfee8
                           00FEE9   763 _PWMB_CCMR2	=	0xfee9
                           00FEEA   764 _PWMB_CCMR3	=	0xfeea
                           00FEEB   765 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   766 _PWMB_CCER1	=	0xfeec
                           00FEED   767 _PWMB_CCER2	=	0xfeed
                           00FEEE   768 _PWMB_CNTRH	=	0xfeee
                           00FEEF   769 _PWMB_CNTRL	=	0xfeef
                           00FEF0   770 _PWMB_PSCRH	=	0xfef0
                           00FEF1   771 _PWMB_PSCRL	=	0xfef1
                           00FEF2   772 _PWMB_ARRH	=	0xfef2
                           00FEF3   773 _PWMB_ARRL	=	0xfef3
                           00FEF4   774 _PWMB_RCR	=	0xfef4
                           00FEF5   775 _PWMB_CCR1H	=	0xfef5
                           00FEF6   776 _PWMB_CCR1L	=	0xfef6
                           00FEF7   777 _PWMB_CCR2H	=	0xfef7
                           00FEF8   778 _PWMB_CCR2L	=	0xfef8
                           00FEF9   779 _PWMB_CCR3H	=	0xfef9
                           00FEFA   780 _PWMB_CCR3L	=	0xfefa
                           00FEFB   781 _PWMB_CCR4H	=	0xfefb
                           00FEFC   782 _PWMB_CCR4L	=	0xfefc
                           00FEFD   783 _PWMB_BKR	=	0xfefd
                           00FEFE   784 _PWMB_DTR	=	0xfefe
                           00FEFF   785 _PWMB_OISR	=	0xfeff
                           00FE60   786 _RTCCR	=	0xfe60
                           00FE61   787 _RTCCFG	=	0xfe61
                           00FE62   788 _RTCIEN	=	0xfe62
                           00FE63   789 _RTCIF	=	0xfe63
                           00FE64   790 _ALAHOUR	=	0xfe64
                           00FE65   791 _ALAMIN	=	0xfe65
                           00FE66   792 _ALASEC	=	0xfe66
                           00FE67   793 _ALASSEC	=	0xfe67
                           00FE68   794 _INIYEAR	=	0xfe68
                           00FE69   795 _INIMONTH	=	0xfe69
                           00FE6A   796 _INIDAY	=	0xfe6a
                           00FE6B   797 _INIHOUR	=	0xfe6b
                           00FE6C   798 _INIMIN	=	0xfe6c
                           00FE6D   799 _INISEC	=	0xfe6d
                           00FE6E   800 _INISSEC	=	0xfe6e
                           00FE70   801 _YEAR	=	0xfe70
                           00FE71   802 _MONTH	=	0xfe71
                           00FE72   803 _DAY	=	0xfe72
                           00FE73   804 _HOUR	=	0xfe73
                           00FE74   805 _MIN	=	0xfe74
                           00FE75   806 _SEC	=	0xfe75
                           00FE76   807 _SSEC	=	0xfe76
                           00FA20   808 _DMA_SPI_CFG	=	0xfa20
                           00FA21   809 _DMA_SPI_CR	=	0xfa21
                           00FA22   810 _DMA_SPI_STA	=	0xfa22
                           00FA23   811 _DMA_SPI_AMT	=	0xfa23
                           00FA24   812 _DMA_SPI_DONE	=	0xfa24
                           00FA25   813 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   814 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   815 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   816 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   817 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   818 _CLKDIV	=	0xfe01
                           00FE02   819 _HIRCCR	=	0xfe02
                           00FE03   820 _XOSCCR	=	0xfe03
                           00FE04   821 _IRC32KCR	=	0xfe04
                           00FE00   822 _CKSEL	=	0xfe00
                           00FE05   823 _MCLKOCR	=	0xfe05
                           00FE06   824 _IRCDB	=	0xfe06
                           00FE07   825 _IRC48MCR	=	0xfe07
                           00FEA2   826 _TM2PS	=	0xfea2
                           00FEA3   827 _TM3PS	=	0xfea3
                           00FEA4   828 _TM4PS	=	0xfea4
                           00FA30   829 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   830 _DMA_UR1T_CR	=	0xfa31
                           00FA32   831 _DMA_UR1T_STA	=	0xfa32
                           00FA33   832 _DMA_URTX_AMT	=	0xfa33
                           00FA34   833 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   834 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   835 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   836 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   837 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   838 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   839 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   840 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   841 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   842 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   843 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   844 _DMA_UR2T_CR	=	0xfa31
                           00FA32   845 _DMA_UR2T_STA	=	0xfa32
                           00FA33   846 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   847 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   848 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   849 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   850 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   851 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   852 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   853 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   854 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   855 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   856 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   857 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   858 _DMA_UR3T_CR	=	0xfa31
                           00FA32   859 _DMA_UR3T_STA	=	0xfa32
                           00FA33   860 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   861 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   862 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   863 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   864 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   865 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   866 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   867 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   868 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   869 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   870 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   871 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   872 _DMA_UR4T_CR	=	0xfa31
                           00FA32   873 _DMA_UR4T_STA	=	0xfa32
                           00FA33   874 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   875 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   876 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   877 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   878 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   879 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   880 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   881 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   882 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   883 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   884 _DMA_UR4R_TXAL	=	0xfa3e
      000550                        885 _uartGetCharacter_result_65536_69:
      000550                        886 	.ds 1
                                    887 ;--------------------------------------------------------
                                    888 ; absolute external ram data
                                    889 ;--------------------------------------------------------
                                    890 	.area XABS    (ABS,XDATA)
                                    891 ;--------------------------------------------------------
                                    892 ; external initialized ram data
                                    893 ;--------------------------------------------------------
                                    894 	.area XISEG   (XDATA)
      000643                        895 _switch_gpio:
      000643                        896 	.ds 13
                                    897 	.area HOME    (CODE)
                                    898 	.area GSINIT0 (CODE)
                                    899 	.area GSINIT1 (CODE)
                                    900 	.area GSINIT2 (CODE)
                                    901 	.area GSINIT3 (CODE)
                                    902 	.area GSINIT4 (CODE)
                                    903 	.area GSINIT5 (CODE)
                                    904 	.area GSINIT  (CODE)
                                    905 	.area GSFINAL (CODE)
                                    906 	.area CSEG    (CODE)
                                    907 ;--------------------------------------------------------
                                    908 ; global & static initialisations
                                    909 ;--------------------------------------------------------
                                    910 	.area HOME    (CODE)
                                    911 	.area GSINIT  (CODE)
                                    912 	.area GSFINAL (CODE)
                                    913 	.area GSINIT  (CODE)
                                    914 ;--------------------------------------------------------
                                    915 ; Home
                                    916 ;--------------------------------------------------------
                                    917 	.area HOME    (CODE)
                                    918 	.area HOME    (CODE)
                                    919 ;--------------------------------------------------------
                                    920 ; code
                                    921 ;--------------------------------------------------------
                                    922 	.area CSEG    (CODE)
                                    923 ;------------------------------------------------------------
                                    924 ;Allocation info for local variables in function 'switch_init'
                                    925 ;------------------------------------------------------------
                                    926 ;	switch.c:17: void switch_init(void) {
                                    927 ;	-----------------------------------------
                                    928 ;	 function switch_init
                                    929 ;	-----------------------------------------
      003341                        930 _switch_init:
                           000007   931 	ar7 = 0x07
                           000006   932 	ar6 = 0x06
                           000005   933 	ar5 = 0x05
                           000004   934 	ar4 = 0x04
                           000003   935 	ar3 = 0x03
                           000002   936 	ar2 = 0x02
                           000001   937 	ar1 = 0x01
                           000000   938 	ar0 = 0x00
                                    939 ;	switch.c:19: gpioConfigure(&switch_gpio);
      003341 90 06 43         [24]  940 	mov	dptr,#_switch_gpio
      003344 75 F0 00         [24]  941 	mov	b,#0x00
                                    942 ;	switch.c:21: }
      003347 02 18 44         [24]  943 	ljmp	_gpioConfigure
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'get_switch_status'
                                    946 ;------------------------------------------------------------
                                    947 ;	switch.c:23: switch_status_t get_switch_status(void) { return UINT8_TO_SWITCH_STATUS[gpioRead(&switch_gpio)]; }
                                    948 ;	-----------------------------------------
                                    949 ;	 function get_switch_status
                                    950 ;	-----------------------------------------
      00334A                        951 _get_switch_status:
      00334A 90 06 43         [24]  952 	mov	dptr,#_switch_gpio
      00334D 75 F0 00         [24]  953 	mov	b,#0x00
      003350 12 1F DB         [24]  954 	lcall	_gpioRead
      003353 E5 82            [12]  955 	mov	a,dpl
      003355 90 6F 63         [24]  956 	mov	dptr,#_UINT8_TO_SWITCH_STATUS
      003358 93               [24]  957 	movc	a,@a+dptr
      003359 F5 82            [12]  958 	mov	dpl,a
      00335B 22               [24]  959 	ret
                                    960 	.area CSEG    (CODE)
                                    961 	.area CONST   (CODE)
      006D83                        962 _FONTS:
      006D83 00                     963 	.db #0x00	; 0
      006D84 00                     964 	.db #0x00	; 0
      006D85 00                     965 	.db #0x00	; 0
      006D86 00                     966 	.db #0x00	; 0
      006D87 00                     967 	.db #0x00	; 0
      006D88 81                     968 	.db #0x81	; 129
      006D89 81                     969 	.db #0x81	; 129
      006D8A 18                     970 	.db #0x18	; 24
      006D8B 81                     971 	.db #0x81	; 129
      006D8C 81                     972 	.db #0x81	; 129
      006D8D 00                     973 	.db #0x00	; 0
      006D8E 07                     974 	.db #0x07	; 7
      006D8F 00                     975 	.db #0x00	; 0
      006D90 07                     976 	.db #0x07	; 7
      006D91 00                     977 	.db #0x00	; 0
      006D92 14                     978 	.db #0x14	; 20
      006D93 7F                     979 	.db #0x7f	; 127
      006D94 14                     980 	.db #0x14	; 20
      006D95 7F                     981 	.db #0x7f	; 127
      006D96 14                     982 	.db #0x14	; 20
      006D97 24                     983 	.db #0x24	; 36
      006D98 2A                     984 	.db #0x2a	; 42
      006D99 7F                     985 	.db #0x7f	; 127
      006D9A 2A                     986 	.db #0x2a	; 42
      006D9B 12                     987 	.db #0x12	; 18
      006D9C 23                     988 	.db #0x23	; 35
      006D9D 13                     989 	.db #0x13	; 19
      006D9E 08                     990 	.db #0x08	; 8
      006D9F 64                     991 	.db #0x64	; 100	'd'
      006DA0 62                     992 	.db #0x62	; 98	'b'
      006DA1 36                     993 	.db #0x36	; 54	'6'
      006DA2 49                     994 	.db #0x49	; 73	'I'
      006DA3 55                     995 	.db #0x55	; 85	'U'
      006DA4 22                     996 	.db #0x22	; 34
      006DA5 50                     997 	.db #0x50	; 80	'P'
      006DA6 00                     998 	.db #0x00	; 0
      006DA7 05                     999 	.db #0x05	; 5
      006DA8 03                    1000 	.db #0x03	; 3
      006DA9 00                    1001 	.db #0x00	; 0
      006DAA 00                    1002 	.db #0x00	; 0
      006DAB 00                    1003 	.db #0x00	; 0
      006DAC 1C                    1004 	.db #0x1c	; 28
      006DAD 22                    1005 	.db #0x22	; 34
      006DAE 41                    1006 	.db #0x41	; 65	'A'
      006DAF 00                    1007 	.db #0x00	; 0
      006DB0 00                    1008 	.db #0x00	; 0
      006DB1 41                    1009 	.db #0x41	; 65	'A'
      006DB2 22                    1010 	.db #0x22	; 34
      006DB3 1C                    1011 	.db #0x1c	; 28
      006DB4 00                    1012 	.db #0x00	; 0
      006DB5 14                    1013 	.db #0x14	; 20
      006DB6 08                    1014 	.db #0x08	; 8
      006DB7 3E                    1015 	.db #0x3e	; 62
      006DB8 08                    1016 	.db #0x08	; 8
      006DB9 14                    1017 	.db #0x14	; 20
      006DBA 08                    1018 	.db #0x08	; 8
      006DBB 08                    1019 	.db #0x08	; 8
      006DBC 3E                    1020 	.db #0x3e	; 62
      006DBD 08                    1021 	.db #0x08	; 8
      006DBE 08                    1022 	.db #0x08	; 8
      006DBF 00                    1023 	.db #0x00	; 0
      006DC0 50                    1024 	.db #0x50	; 80	'P'
      006DC1 30                    1025 	.db #0x30	; 48	'0'
      006DC2 00                    1026 	.db #0x00	; 0
      006DC3 00                    1027 	.db #0x00	; 0
      006DC4 08                    1028 	.db #0x08	; 8
      006DC5 08                    1029 	.db #0x08	; 8
      006DC6 08                    1030 	.db #0x08	; 8
      006DC7 08                    1031 	.db #0x08	; 8
      006DC8 08                    1032 	.db #0x08	; 8
      006DC9 00                    1033 	.db #0x00	; 0
      006DCA 60                    1034 	.db #0x60	; 96
      006DCB 60                    1035 	.db #0x60	; 96
      006DCC 00                    1036 	.db #0x00	; 0
      006DCD 00                    1037 	.db #0x00	; 0
      006DCE 20                    1038 	.db #0x20	; 32
      006DCF 10                    1039 	.db #0x10	; 16
      006DD0 08                    1040 	.db #0x08	; 8
      006DD1 04                    1041 	.db #0x04	; 4
      006DD2 02                    1042 	.db #0x02	; 2
      006DD3 3E                    1043 	.db #0x3e	; 62
      006DD4 51                    1044 	.db #0x51	; 81	'Q'
      006DD5 49                    1045 	.db #0x49	; 73	'I'
      006DD6 45                    1046 	.db #0x45	; 69	'E'
      006DD7 3E                    1047 	.db #0x3e	; 62
      006DD8 00                    1048 	.db #0x00	; 0
      006DD9 42                    1049 	.db #0x42	; 66	'B'
      006DDA 7F                    1050 	.db #0x7f	; 127
      006DDB 40                    1051 	.db #0x40	; 64
      006DDC 00                    1052 	.db #0x00	; 0
      006DDD 42                    1053 	.db #0x42	; 66	'B'
      006DDE 61                    1054 	.db #0x61	; 97	'a'
      006DDF 51                    1055 	.db #0x51	; 81	'Q'
      006DE0 49                    1056 	.db #0x49	; 73	'I'
      006DE1 46                    1057 	.db #0x46	; 70	'F'
      006DE2 21                    1058 	.db #0x21	; 33
      006DE3 41                    1059 	.db #0x41	; 65	'A'
      006DE4 45                    1060 	.db #0x45	; 69	'E'
      006DE5 4B                    1061 	.db #0x4b	; 75	'K'
      006DE6 31                    1062 	.db #0x31	; 49	'1'
      006DE7 18                    1063 	.db #0x18	; 24
      006DE8 14                    1064 	.db #0x14	; 20
      006DE9 12                    1065 	.db #0x12	; 18
      006DEA 7F                    1066 	.db #0x7f	; 127
      006DEB 10                    1067 	.db #0x10	; 16
      006DEC 27                    1068 	.db #0x27	; 39
      006DED 45                    1069 	.db #0x45	; 69	'E'
      006DEE 45                    1070 	.db #0x45	; 69	'E'
      006DEF 45                    1071 	.db #0x45	; 69	'E'
      006DF0 39                    1072 	.db #0x39	; 57	'9'
      006DF1 3C                    1073 	.db #0x3c	; 60
      006DF2 4A                    1074 	.db #0x4a	; 74	'J'
      006DF3 49                    1075 	.db #0x49	; 73	'I'
      006DF4 49                    1076 	.db #0x49	; 73	'I'
      006DF5 30                    1077 	.db #0x30	; 48	'0'
      006DF6 01                    1078 	.db #0x01	; 1
      006DF7 71                    1079 	.db #0x71	; 113	'q'
      006DF8 09                    1080 	.db #0x09	; 9
      006DF9 05                    1081 	.db #0x05	; 5
      006DFA 03                    1082 	.db #0x03	; 3
      006DFB 36                    1083 	.db #0x36	; 54	'6'
      006DFC 49                    1084 	.db #0x49	; 73	'I'
      006DFD 49                    1085 	.db #0x49	; 73	'I'
      006DFE 49                    1086 	.db #0x49	; 73	'I'
      006DFF 36                    1087 	.db #0x36	; 54	'6'
      006E00 06                    1088 	.db #0x06	; 6
      006E01 49                    1089 	.db #0x49	; 73	'I'
      006E02 49                    1090 	.db #0x49	; 73	'I'
      006E03 29                    1091 	.db #0x29	; 41
      006E04 1E                    1092 	.db #0x1e	; 30
      006E05 00                    1093 	.db #0x00	; 0
      006E06 36                    1094 	.db #0x36	; 54	'6'
      006E07 36                    1095 	.db #0x36	; 54	'6'
      006E08 00                    1096 	.db #0x00	; 0
      006E09 00                    1097 	.db #0x00	; 0
      006E0A 00                    1098 	.db #0x00	; 0
      006E0B 56                    1099 	.db #0x56	; 86	'V'
      006E0C 36                    1100 	.db #0x36	; 54	'6'
      006E0D 00                    1101 	.db #0x00	; 0
      006E0E 00                    1102 	.db #0x00	; 0
      006E0F 08                    1103 	.db #0x08	; 8
      006E10 14                    1104 	.db #0x14	; 20
      006E11 22                    1105 	.db #0x22	; 34
      006E12 41                    1106 	.db #0x41	; 65	'A'
      006E13 00                    1107 	.db #0x00	; 0
      006E14 14                    1108 	.db #0x14	; 20
      006E15 14                    1109 	.db #0x14	; 20
      006E16 14                    1110 	.db #0x14	; 20
      006E17 14                    1111 	.db #0x14	; 20
      006E18 14                    1112 	.db #0x14	; 20
      006E19 00                    1113 	.db #0x00	; 0
      006E1A 41                    1114 	.db #0x41	; 65	'A'
      006E1B 22                    1115 	.db #0x22	; 34
      006E1C 14                    1116 	.db #0x14	; 20
      006E1D 08                    1117 	.db #0x08	; 8
      006E1E 02                    1118 	.db #0x02	; 2
      006E1F 01                    1119 	.db #0x01	; 1
      006E20 51                    1120 	.db #0x51	; 81	'Q'
      006E21 09                    1121 	.db #0x09	; 9
      006E22 06                    1122 	.db #0x06	; 6
      006E23 32                    1123 	.db #0x32	; 50	'2'
      006E24 49                    1124 	.db #0x49	; 73	'I'
      006E25 79                    1125 	.db #0x79	; 121	'y'
      006E26 41                    1126 	.db #0x41	; 65	'A'
      006E27 3E                    1127 	.db #0x3e	; 62
      006E28 7E                    1128 	.db #0x7e	; 126
      006E29 11                    1129 	.db #0x11	; 17
      006E2A 11                    1130 	.db #0x11	; 17
      006E2B 11                    1131 	.db #0x11	; 17
      006E2C 7E                    1132 	.db #0x7e	; 126
      006E2D 7F                    1133 	.db #0x7f	; 127
      006E2E 49                    1134 	.db #0x49	; 73	'I'
      006E2F 49                    1135 	.db #0x49	; 73	'I'
      006E30 49                    1136 	.db #0x49	; 73	'I'
      006E31 36                    1137 	.db #0x36	; 54	'6'
      006E32 3E                    1138 	.db #0x3e	; 62
      006E33 41                    1139 	.db #0x41	; 65	'A'
      006E34 41                    1140 	.db #0x41	; 65	'A'
      006E35 41                    1141 	.db #0x41	; 65	'A'
      006E36 22                    1142 	.db #0x22	; 34
      006E37 7F                    1143 	.db #0x7f	; 127
      006E38 41                    1144 	.db #0x41	; 65	'A'
      006E39 41                    1145 	.db #0x41	; 65	'A'
      006E3A 22                    1146 	.db #0x22	; 34
      006E3B 1C                    1147 	.db #0x1c	; 28
      006E3C 7F                    1148 	.db #0x7f	; 127
      006E3D 49                    1149 	.db #0x49	; 73	'I'
      006E3E 49                    1150 	.db #0x49	; 73	'I'
      006E3F 49                    1151 	.db #0x49	; 73	'I'
      006E40 41                    1152 	.db #0x41	; 65	'A'
      006E41 7F                    1153 	.db #0x7f	; 127
      006E42 09                    1154 	.db #0x09	; 9
      006E43 09                    1155 	.db #0x09	; 9
      006E44 09                    1156 	.db #0x09	; 9
      006E45 01                    1157 	.db #0x01	; 1
      006E46 3E                    1158 	.db #0x3e	; 62
      006E47 41                    1159 	.db #0x41	; 65	'A'
      006E48 49                    1160 	.db #0x49	; 73	'I'
      006E49 49                    1161 	.db #0x49	; 73	'I'
      006E4A 7A                    1162 	.db #0x7a	; 122	'z'
      006E4B 7F                    1163 	.db #0x7f	; 127
      006E4C 08                    1164 	.db #0x08	; 8
      006E4D 08                    1165 	.db #0x08	; 8
      006E4E 08                    1166 	.db #0x08	; 8
      006E4F 7F                    1167 	.db #0x7f	; 127
      006E50 00                    1168 	.db #0x00	; 0
      006E51 41                    1169 	.db #0x41	; 65	'A'
      006E52 7F                    1170 	.db #0x7f	; 127
      006E53 41                    1171 	.db #0x41	; 65	'A'
      006E54 00                    1172 	.db #0x00	; 0
      006E55 20                    1173 	.db #0x20	; 32
      006E56 40                    1174 	.db #0x40	; 64
      006E57 41                    1175 	.db #0x41	; 65	'A'
      006E58 3F                    1176 	.db #0x3f	; 63
      006E59 01                    1177 	.db #0x01	; 1
      006E5A 7F                    1178 	.db #0x7f	; 127
      006E5B 08                    1179 	.db #0x08	; 8
      006E5C 14                    1180 	.db #0x14	; 20
      006E5D 22                    1181 	.db #0x22	; 34
      006E5E 41                    1182 	.db #0x41	; 65	'A'
      006E5F 7F                    1183 	.db #0x7f	; 127
      006E60 40                    1184 	.db #0x40	; 64
      006E61 40                    1185 	.db #0x40	; 64
      006E62 40                    1186 	.db #0x40	; 64
      006E63 40                    1187 	.db #0x40	; 64
      006E64 7F                    1188 	.db #0x7f	; 127
      006E65 02                    1189 	.db #0x02	; 2
      006E66 0C                    1190 	.db #0x0c	; 12
      006E67 02                    1191 	.db #0x02	; 2
      006E68 7F                    1192 	.db #0x7f	; 127
      006E69 7F                    1193 	.db #0x7f	; 127
      006E6A 04                    1194 	.db #0x04	; 4
      006E6B 08                    1195 	.db #0x08	; 8
      006E6C 10                    1196 	.db #0x10	; 16
      006E6D 7F                    1197 	.db #0x7f	; 127
      006E6E 3E                    1198 	.db #0x3e	; 62
      006E6F 41                    1199 	.db #0x41	; 65	'A'
      006E70 41                    1200 	.db #0x41	; 65	'A'
      006E71 41                    1201 	.db #0x41	; 65	'A'
      006E72 3E                    1202 	.db #0x3e	; 62
      006E73 7F                    1203 	.db #0x7f	; 127
      006E74 09                    1204 	.db #0x09	; 9
      006E75 09                    1205 	.db #0x09	; 9
      006E76 09                    1206 	.db #0x09	; 9
      006E77 06                    1207 	.db #0x06	; 6
      006E78 3E                    1208 	.db #0x3e	; 62
      006E79 41                    1209 	.db #0x41	; 65	'A'
      006E7A 51                    1210 	.db #0x51	; 81	'Q'
      006E7B 21                    1211 	.db #0x21	; 33
      006E7C 5E                    1212 	.db #0x5e	; 94
      006E7D 7F                    1213 	.db #0x7f	; 127
      006E7E 09                    1214 	.db #0x09	; 9
      006E7F 19                    1215 	.db #0x19	; 25
      006E80 29                    1216 	.db #0x29	; 41
      006E81 46                    1217 	.db #0x46	; 70	'F'
      006E82 46                    1218 	.db #0x46	; 70	'F'
      006E83 49                    1219 	.db #0x49	; 73	'I'
      006E84 49                    1220 	.db #0x49	; 73	'I'
      006E85 49                    1221 	.db #0x49	; 73	'I'
      006E86 31                    1222 	.db #0x31	; 49	'1'
      006E87 01                    1223 	.db #0x01	; 1
      006E88 01                    1224 	.db #0x01	; 1
      006E89 7F                    1225 	.db #0x7f	; 127
      006E8A 01                    1226 	.db #0x01	; 1
      006E8B 01                    1227 	.db #0x01	; 1
      006E8C 3F                    1228 	.db #0x3f	; 63
      006E8D 40                    1229 	.db #0x40	; 64
      006E8E 40                    1230 	.db #0x40	; 64
      006E8F 40                    1231 	.db #0x40	; 64
      006E90 3F                    1232 	.db #0x3f	; 63
      006E91 1F                    1233 	.db #0x1f	; 31
      006E92 20                    1234 	.db #0x20	; 32
      006E93 40                    1235 	.db #0x40	; 64
      006E94 20                    1236 	.db #0x20	; 32
      006E95 1F                    1237 	.db #0x1f	; 31
      006E96 3F                    1238 	.db #0x3f	; 63
      006E97 40                    1239 	.db #0x40	; 64
      006E98 38                    1240 	.db #0x38	; 56	'8'
      006E99 40                    1241 	.db #0x40	; 64
      006E9A 3F                    1242 	.db #0x3f	; 63
      006E9B 63                    1243 	.db #0x63	; 99	'c'
      006E9C 14                    1244 	.db #0x14	; 20
      006E9D 08                    1245 	.db #0x08	; 8
      006E9E 14                    1246 	.db #0x14	; 20
      006E9F 63                    1247 	.db #0x63	; 99	'c'
      006EA0 07                    1248 	.db #0x07	; 7
      006EA1 08                    1249 	.db #0x08	; 8
      006EA2 70                    1250 	.db #0x70	; 112	'p'
      006EA3 08                    1251 	.db #0x08	; 8
      006EA4 07                    1252 	.db #0x07	; 7
      006EA5 61                    1253 	.db #0x61	; 97	'a'
      006EA6 51                    1254 	.db #0x51	; 81	'Q'
      006EA7 49                    1255 	.db #0x49	; 73	'I'
      006EA8 45                    1256 	.db #0x45	; 69	'E'
      006EA9 43                    1257 	.db #0x43	; 67	'C'
      006EAA 00                    1258 	.db #0x00	; 0
      006EAB 7F                    1259 	.db #0x7f	; 127
      006EAC 41                    1260 	.db #0x41	; 65	'A'
      006EAD 41                    1261 	.db #0x41	; 65	'A'
      006EAE 00                    1262 	.db #0x00	; 0
      006EAF 02                    1263 	.db #0x02	; 2
      006EB0 04                    1264 	.db #0x04	; 4
      006EB1 08                    1265 	.db #0x08	; 8
      006EB2 10                    1266 	.db #0x10	; 16
      006EB3 20                    1267 	.db #0x20	; 32
      006EB4 00                    1268 	.db #0x00	; 0
      006EB5 41                    1269 	.db #0x41	; 65	'A'
      006EB6 41                    1270 	.db #0x41	; 65	'A'
      006EB7 7F                    1271 	.db #0x7f	; 127
      006EB8 00                    1272 	.db #0x00	; 0
      006EB9 04                    1273 	.db #0x04	; 4
      006EBA 02                    1274 	.db #0x02	; 2
      006EBB 01                    1275 	.db #0x01	; 1
      006EBC 02                    1276 	.db #0x02	; 2
      006EBD 04                    1277 	.db #0x04	; 4
      006EBE 40                    1278 	.db #0x40	; 64
      006EBF 40                    1279 	.db #0x40	; 64
      006EC0 40                    1280 	.db #0x40	; 64
      006EC1 40                    1281 	.db #0x40	; 64
      006EC2 40                    1282 	.db #0x40	; 64
      006EC3 00                    1283 	.db #0x00	; 0
      006EC4 01                    1284 	.db #0x01	; 1
      006EC5 02                    1285 	.db #0x02	; 2
      006EC6 04                    1286 	.db #0x04	; 4
      006EC7 00                    1287 	.db #0x00	; 0
      006EC8 20                    1288 	.db #0x20	; 32
      006EC9 54                    1289 	.db #0x54	; 84	'T'
      006ECA 54                    1290 	.db #0x54	; 84	'T'
      006ECB 54                    1291 	.db #0x54	; 84	'T'
      006ECC 78                    1292 	.db #0x78	; 120	'x'
      006ECD 7F                    1293 	.db #0x7f	; 127
      006ECE 48                    1294 	.db #0x48	; 72	'H'
      006ECF 44                    1295 	.db #0x44	; 68	'D'
      006ED0 44                    1296 	.db #0x44	; 68	'D'
      006ED1 38                    1297 	.db #0x38	; 56	'8'
      006ED2 38                    1298 	.db #0x38	; 56	'8'
      006ED3 44                    1299 	.db #0x44	; 68	'D'
      006ED4 44                    1300 	.db #0x44	; 68	'D'
      006ED5 44                    1301 	.db #0x44	; 68	'D'
      006ED6 20                    1302 	.db #0x20	; 32
      006ED7 38                    1303 	.db #0x38	; 56	'8'
      006ED8 44                    1304 	.db #0x44	; 68	'D'
      006ED9 44                    1305 	.db #0x44	; 68	'D'
      006EDA 48                    1306 	.db #0x48	; 72	'H'
      006EDB 7F                    1307 	.db #0x7f	; 127
      006EDC 38                    1308 	.db #0x38	; 56	'8'
      006EDD 54                    1309 	.db #0x54	; 84	'T'
      006EDE 54                    1310 	.db #0x54	; 84	'T'
      006EDF 54                    1311 	.db #0x54	; 84	'T'
      006EE0 18                    1312 	.db #0x18	; 24
      006EE1 08                    1313 	.db #0x08	; 8
      006EE2 7E                    1314 	.db #0x7e	; 126
      006EE3 09                    1315 	.db #0x09	; 9
      006EE4 01                    1316 	.db #0x01	; 1
      006EE5 02                    1317 	.db #0x02	; 2
      006EE6 0C                    1318 	.db #0x0c	; 12
      006EE7 52                    1319 	.db #0x52	; 82	'R'
      006EE8 52                    1320 	.db #0x52	; 82	'R'
      006EE9 52                    1321 	.db #0x52	; 82	'R'
      006EEA 3E                    1322 	.db #0x3e	; 62
      006EEB 7F                    1323 	.db #0x7f	; 127
      006EEC 08                    1324 	.db #0x08	; 8
      006EED 04                    1325 	.db #0x04	; 4
      006EEE 04                    1326 	.db #0x04	; 4
      006EEF 78                    1327 	.db #0x78	; 120	'x'
      006EF0 00                    1328 	.db #0x00	; 0
      006EF1 44                    1329 	.db #0x44	; 68	'D'
      006EF2 7D                    1330 	.db #0x7d	; 125
      006EF3 40                    1331 	.db #0x40	; 64
      006EF4 00                    1332 	.db #0x00	; 0
      006EF5 20                    1333 	.db #0x20	; 32
      006EF6 40                    1334 	.db #0x40	; 64
      006EF7 44                    1335 	.db #0x44	; 68	'D'
      006EF8 3D                    1336 	.db #0x3d	; 61
      006EF9 00                    1337 	.db #0x00	; 0
      006EFA 7F                    1338 	.db #0x7f	; 127
      006EFB 10                    1339 	.db #0x10	; 16
      006EFC 28                    1340 	.db #0x28	; 40
      006EFD 44                    1341 	.db #0x44	; 68	'D'
      006EFE 00                    1342 	.db #0x00	; 0
      006EFF 00                    1343 	.db #0x00	; 0
      006F00 41                    1344 	.db #0x41	; 65	'A'
      006F01 7F                    1345 	.db #0x7f	; 127
      006F02 40                    1346 	.db #0x40	; 64
      006F03 00                    1347 	.db #0x00	; 0
      006F04 7C                    1348 	.db #0x7c	; 124
      006F05 04                    1349 	.db #0x04	; 4
      006F06 18                    1350 	.db #0x18	; 24
      006F07 04                    1351 	.db #0x04	; 4
      006F08 78                    1352 	.db #0x78	; 120	'x'
      006F09 7C                    1353 	.db #0x7c	; 124
      006F0A 08                    1354 	.db #0x08	; 8
      006F0B 04                    1355 	.db #0x04	; 4
      006F0C 04                    1356 	.db #0x04	; 4
      006F0D 78                    1357 	.db #0x78	; 120	'x'
      006F0E 38                    1358 	.db #0x38	; 56	'8'
      006F0F 44                    1359 	.db #0x44	; 68	'D'
      006F10 44                    1360 	.db #0x44	; 68	'D'
      006F11 44                    1361 	.db #0x44	; 68	'D'
      006F12 38                    1362 	.db #0x38	; 56	'8'
      006F13 7C                    1363 	.db #0x7c	; 124
      006F14 14                    1364 	.db #0x14	; 20
      006F15 14                    1365 	.db #0x14	; 20
      006F16 14                    1366 	.db #0x14	; 20
      006F17 08                    1367 	.db #0x08	; 8
      006F18 08                    1368 	.db #0x08	; 8
      006F19 14                    1369 	.db #0x14	; 20
      006F1A 14                    1370 	.db #0x14	; 20
      006F1B 14                    1371 	.db #0x14	; 20
      006F1C 7C                    1372 	.db #0x7c	; 124
      006F1D 7C                    1373 	.db #0x7c	; 124
      006F1E 08                    1374 	.db #0x08	; 8
      006F1F 04                    1375 	.db #0x04	; 4
      006F20 04                    1376 	.db #0x04	; 4
      006F21 08                    1377 	.db #0x08	; 8
      006F22 48                    1378 	.db #0x48	; 72	'H'
      006F23 54                    1379 	.db #0x54	; 84	'T'
      006F24 54                    1380 	.db #0x54	; 84	'T'
      006F25 54                    1381 	.db #0x54	; 84	'T'
      006F26 20                    1382 	.db #0x20	; 32
      006F27 04                    1383 	.db #0x04	; 4
      006F28 3F                    1384 	.db #0x3f	; 63
      006F29 44                    1385 	.db #0x44	; 68	'D'
      006F2A 40                    1386 	.db #0x40	; 64
      006F2B 20                    1387 	.db #0x20	; 32
      006F2C 3C                    1388 	.db #0x3c	; 60
      006F2D 40                    1389 	.db #0x40	; 64
      006F2E 40                    1390 	.db #0x40	; 64
      006F2F 20                    1391 	.db #0x20	; 32
      006F30 7C                    1392 	.db #0x7c	; 124
      006F31 1C                    1393 	.db #0x1c	; 28
      006F32 20                    1394 	.db #0x20	; 32
      006F33 40                    1395 	.db #0x40	; 64
      006F34 20                    1396 	.db #0x20	; 32
      006F35 1C                    1397 	.db #0x1c	; 28
      006F36 3C                    1398 	.db #0x3c	; 60
      006F37 40                    1399 	.db #0x40	; 64
      006F38 30                    1400 	.db #0x30	; 48	'0'
      006F39 40                    1401 	.db #0x40	; 64
      006F3A 3C                    1402 	.db #0x3c	; 60
      006F3B 44                    1403 	.db #0x44	; 68	'D'
      006F3C 28                    1404 	.db #0x28	; 40
      006F3D 10                    1405 	.db #0x10	; 16
      006F3E 28                    1406 	.db #0x28	; 40
      006F3F 44                    1407 	.db #0x44	; 68	'D'
      006F40 0C                    1408 	.db #0x0c	; 12
      006F41 50                    1409 	.db #0x50	; 80	'P'
      006F42 50                    1410 	.db #0x50	; 80	'P'
      006F43 50                    1411 	.db #0x50	; 80	'P'
      006F44 3C                    1412 	.db #0x3c	; 60
      006F45 44                    1413 	.db #0x44	; 68	'D'
      006F46 64                    1414 	.db #0x64	; 100	'd'
      006F47 54                    1415 	.db #0x54	; 84	'T'
      006F48 4C                    1416 	.db #0x4c	; 76	'L'
      006F49 44                    1417 	.db #0x44	; 68	'D'
      006F4A 00                    1418 	.db #0x00	; 0
      006F4B 08                    1419 	.db #0x08	; 8
      006F4C 36                    1420 	.db #0x36	; 54	'6'
      006F4D 41                    1421 	.db #0x41	; 65	'A'
      006F4E 00                    1422 	.db #0x00	; 0
      006F4F 00                    1423 	.db #0x00	; 0
      006F50 00                    1424 	.db #0x00	; 0
      006F51 7F                    1425 	.db #0x7f	; 127
      006F52 00                    1426 	.db #0x00	; 0
      006F53 00                    1427 	.db #0x00	; 0
      006F54 00                    1428 	.db #0x00	; 0
      006F55 41                    1429 	.db #0x41	; 65	'A'
      006F56 36                    1430 	.db #0x36	; 54	'6'
      006F57 08                    1431 	.db #0x08	; 8
      006F58 00                    1432 	.db #0x00	; 0
      006F59 10                    1433 	.db #0x10	; 16
      006F5A 08                    1434 	.db #0x08	; 8
      006F5B 08                    1435 	.db #0x08	; 8
      006F5C 10                    1436 	.db #0x10	; 16
      006F5D 08                    1437 	.db #0x08	; 8
      006F5E 00                    1438 	.db #0x00	; 0
      006F5F 00                    1439 	.db #0x00	; 0
      006F60 00                    1440 	.db #0x00	; 0
      006F61 00                    1441 	.db #0x00	; 0
      006F62 00                    1442 	.db #0x00	; 0
      006F63                       1443 _UINT8_TO_SWITCH_STATUS:
      006F63 00                    1444 	.db #0x00	; 0
      006F64 01                    1445 	.db #0x01	; 1
                                   1446 	.area XINIT   (CODE)
      007B9D                       1447 __xinit__switch_gpio:
      007B9D 03                    1448 	.db #0x03	; 3
      007B9E 07                    1449 	.db #0x07	; 7
      007B9F 01                    1450 	.db #0x01	; 1
      007BA0 02                    1451 	.db #0x02	; 2
      007BA1 01                    1452 	.db #0x01	; 1
      007BA2 01                    1453 	.db #0x01	; 1
      007BA3 03                    1454 	.db #0x03	; 3
      007BA4 01                    1455 	.db #0x01	; 1
      007BA5 00                    1456 	.db #0x00	; 0
      007BA6 01                    1457 	.db #0x01	; 1
      007BA7 00                    1458 	.db #0x00	; 0
      007BA8 00                    1459 	.db #0x00	; 0
      007BA9 00                    1460 	.db #0x00	; 0
                                   1461 	.area CABS    (ABS,CODE)
