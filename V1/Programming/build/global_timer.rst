                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module global_timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer3_isr
                                     12 	.globl _startTimer
                                     13 	.globl _S1SM0_FE
                                     14 	.globl _T1IE
                                     15 	.globl _T0IE
                                     16 	.globl _T1RUN
                                     17 	.globl _T0RUN
                                     18 	.globl _CY
                                     19 	.globl _AC
                                     20 	.globl _F0
                                     21 	.globl _RS1
                                     22 	.globl _RS0
                                     23 	.globl _OV
                                     24 	.globl _F1
                                     25 	.globl _P
                                     26 	.globl _EA
                                     27 	.globl _INT1IE
                                     28 	.globl _INT0IE
                                     29 	.globl _INT1TR
                                     30 	.globl _INT0TR
                                     31 	.globl _P5_5
                                     32 	.globl _P5_4
                                     33 	.globl _P5_3
                                     34 	.globl _P5_2
                                     35 	.globl _P5_1
                                     36 	.globl _P5_0
                                     37 	.globl _P3_7
                                     38 	.globl _P3_6
                                     39 	.globl _P3_5
                                     40 	.globl _P3_4
                                     41 	.globl _P3_3
                                     42 	.globl _P3_2
                                     43 	.globl _P3_1
                                     44 	.globl _P3_0
                                     45 	.globl _P2_7
                                     46 	.globl _P2_6
                                     47 	.globl _P2_5
                                     48 	.globl _P2_4
                                     49 	.globl _P2_3
                                     50 	.globl _P2_2
                                     51 	.globl _P2_1
                                     52 	.globl _P2_0
                                     53 	.globl _P1_7
                                     54 	.globl _P1_6
                                     55 	.globl _P1_5
                                     56 	.globl _P1_4
                                     57 	.globl _P1_3
                                     58 	.globl _P1_2
                                     59 	.globl _P1_1
                                     60 	.globl _P1_0
                                     61 	.globl _USBADR
                                     62 	.globl _USBCON
                                     63 	.globl _USBDAT
                                     64 	.globl _USBCLK
                                     65 	.globl _S4BUF
                                     66 	.globl _S4CON
                                     67 	.globl _S3BUF
                                     68 	.globl _S3CON
                                     69 	.globl _S2BUF
                                     70 	.globl _S2CON
                                     71 	.globl _S1BUF
                                     72 	.globl _S1CON
                                     73 	.globl _SADEN
                                     74 	.globl _SADDR
                                     75 	.globl _AUXINTIF
                                     76 	.globl _T3
                                     77 	.globl _T3L
                                     78 	.globl _T3H
                                     79 	.globl _T4
                                     80 	.globl _T4L
                                     81 	.globl _T4H
                                     82 	.globl _T4T3M
                                     83 	.globl _WDT_CONTR
                                     84 	.globl _AUXR
                                     85 	.globl _T2
                                     86 	.globl _T2H
                                     87 	.globl _T2L
                                     88 	.globl _T1
                                     89 	.globl _T1H
                                     90 	.globl _T1L
                                     91 	.globl _T0
                                     92 	.globl _T0H
                                     93 	.globl _T0L
                                     94 	.globl _TMOD
                                     95 	.globl _TCON
                                     96 	.globl _IRTRIM
                                     97 	.globl _LIRTRIM
                                     98 	.globl _IRCBAND
                                     99 	.globl _SPDAT
                                    100 	.globl _SPCTL
                                    101 	.globl _SPSTAT
                                    102 	.globl _WKTC
                                    103 	.globl _WKTCH
                                    104 	.globl _WKTCL
                                    105 	.globl _BUS_SPEED
                                    106 	.globl _P_SW2
                                    107 	.globl _P_SW1
                                    108 	.globl _RSTCFG
                                    109 	.globl _PCON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _SP
                                    114 	.globl _IP3H
                                    115 	.globl _IP3L
                                    116 	.globl _IP2H
                                    117 	.globl _IP2L
                                    118 	.globl _IE2
                                    119 	.globl _IP1H
                                    120 	.globl _IP1L
                                    121 	.globl _IE1
                                    122 	.globl _INT_CLKO
                                    123 	.globl _IAP_TPS
                                    124 	.globl _IAP_CONTR
                                    125 	.globl _IAP_TRIG
                                    126 	.globl _IAP_CMD
                                    127 	.globl _IAP_ADDR
                                    128 	.globl _IAP_ADDRL
                                    129 	.globl _IAP_ADDRH
                                    130 	.globl _IAP_DATA
                                    131 	.globl _P5M0
                                    132 	.globl _P5M1
                                    133 	.globl _P5
                                    134 	.globl _P3M0
                                    135 	.globl _P3M1
                                    136 	.globl _P3
                                    137 	.globl _P2M0
                                    138 	.globl _P2M1
                                    139 	.globl _P2
                                    140 	.globl _P1M0
                                    141 	.globl _P1M1
                                    142 	.globl _P1
                                    143 	.globl _TA
                                    144 	.globl _DPH1
                                    145 	.globl _DPL1
                                    146 	.globl _DPS
                                    147 	.globl _DP
                                    148 	.globl _DPH
                                    149 	.globl _DPL
                                    150 	.globl _CMPCR2
                                    151 	.globl _CMPCR1
                                    152 	.globl _DMA_ADC_AMT
                                    153 	.globl _ADCCFG
                                    154 	.globl _ADC_RES
                                    155 	.globl _ADC_RESL
                                    156 	.globl _ADC_RESH
                                    157 	.globl _ADC_CONTR
                                    158 	.globl _DMA_UR4R_TXAL
                                    159 	.globl _DMA_UR4R_TXAH
                                    160 	.globl _DMA_UR4R_DONE
                                    161 	.globl _DMA_UR4R_AMT
                                    162 	.globl _DMA_UR4R_STA
                                    163 	.globl _DMA_UR4R_CR
                                    164 	.globl _DMA_UR4R_CFG
                                    165 	.globl _DMA_UR4T_TXAL
                                    166 	.globl _DMA_UR4T_TXAH
                                    167 	.globl _DMA_UR4T_DONE
                                    168 	.globl _DMA_UR4T_AMT
                                    169 	.globl _DMA_UR4T_STA
                                    170 	.globl _DMA_UR4T_CR
                                    171 	.globl _DMA_UR4T_CFG
                                    172 	.globl _DMA_UR3R_TXAL
                                    173 	.globl _DMA_UR3R_TXAH
                                    174 	.globl _DMA_UR3R_DONE
                                    175 	.globl _DMA_UR3R_AMT
                                    176 	.globl _DMA_UR3R_STA
                                    177 	.globl _DMA_UR3R_CR
                                    178 	.globl _DMA_UR3R_CFG
                                    179 	.globl _DMA_UR3T_TXAL
                                    180 	.globl _DMA_UR3T_TXAH
                                    181 	.globl _DMA_UR3T_DONE
                                    182 	.globl _DMA_UR3T_AMT
                                    183 	.globl _DMA_UR3T_STA
                                    184 	.globl _DMA_UR3T_CR
                                    185 	.globl _DMA_UR3T_CFG
                                    186 	.globl _DMA_UR2R_TXAL
                                    187 	.globl _DMA_UR2R_TXAH
                                    188 	.globl _DMA_UR2R_DONE
                                    189 	.globl _DMA_UR2R_AMT
                                    190 	.globl _DMA_UR2R_STA
                                    191 	.globl _DMA_UR2R_CR
                                    192 	.globl _DMA_UR2R_CFG
                                    193 	.globl _DMA_UR2T_TXAL
                                    194 	.globl _DMA_UR2T_TXAH
                                    195 	.globl _DMA_UR2T_DONE
                                    196 	.globl _DMA_UR2T_AMT
                                    197 	.globl _DMA_UR2T_STA
                                    198 	.globl _DMA_UR2T_CR
                                    199 	.globl _DMA_UR2T_CFG
                                    200 	.globl _DMA_UR1R_TXAL
                                    201 	.globl _DMA_UR1R_TXAH
                                    202 	.globl _DMA_UR1R_DONE
                                    203 	.globl _DMA_UR1R_AMT
                                    204 	.globl _DMA_UR1R_STA
                                    205 	.globl _DMA_UR1R_CR
                                    206 	.globl _DMA_UR1R_CFG
                                    207 	.globl _DMA_UR1T_TXAL
                                    208 	.globl _DMA_UR1T_TXAH
                                    209 	.globl _DMA_UR1T_DONE
                                    210 	.globl _DMA_URTX_AMT
                                    211 	.globl _DMA_UR1T_STA
                                    212 	.globl _DMA_UR1T_CR
                                    213 	.globl _DMA_UR1T_CFG
                                    214 	.globl _TM4PS
                                    215 	.globl _TM3PS
                                    216 	.globl _TM2PS
                                    217 	.globl _IRC48MCR
                                    218 	.globl _IRCDB
                                    219 	.globl _MCLKOCR
                                    220 	.globl _CKSEL
                                    221 	.globl _IRC32KCR
                                    222 	.globl _XOSCCR
                                    223 	.globl _HIRCCR
                                    224 	.globl _CLKDIV
                                    225 	.globl _DMA_SPI_CFG2
                                    226 	.globl _DMA_SPI_RXAL
                                    227 	.globl _DMA_SPI_RXAH
                                    228 	.globl _DMA_SPI_TXAL
                                    229 	.globl _DMA_SPI_TXAH
                                    230 	.globl _DMA_SPI_DONE
                                    231 	.globl _DMA_SPI_AMT
                                    232 	.globl _DMA_SPI_STA
                                    233 	.globl _DMA_SPI_CR
                                    234 	.globl _DMA_SPI_CFG
                                    235 	.globl _SSEC
                                    236 	.globl _SEC
                                    237 	.globl _MIN
                                    238 	.globl _HOUR
                                    239 	.globl _DAY
                                    240 	.globl _MONTH
                                    241 	.globl _YEAR
                                    242 	.globl _INISSEC
                                    243 	.globl _INISEC
                                    244 	.globl _INIMIN
                                    245 	.globl _INIHOUR
                                    246 	.globl _INIDAY
                                    247 	.globl _INIMONTH
                                    248 	.globl _INIYEAR
                                    249 	.globl _ALASSEC
                                    250 	.globl _ALASEC
                                    251 	.globl _ALAMIN
                                    252 	.globl _ALAHOUR
                                    253 	.globl _RTCIF
                                    254 	.globl _RTCIEN
                                    255 	.globl _RTCCFG
                                    256 	.globl _RTCCR
                                    257 	.globl _PWMB_OISR
                                    258 	.globl _PWMB_DTR
                                    259 	.globl _PWMB_BKR
                                    260 	.globl _PWMB_CCR4L
                                    261 	.globl _PWMB_CCR4H
                                    262 	.globl _PWMB_CCR3L
                                    263 	.globl _PWMB_CCR3H
                                    264 	.globl _PWMB_CCR2L
                                    265 	.globl _PWMB_CCR2H
                                    266 	.globl _PWMB_CCR1L
                                    267 	.globl _PWMB_CCR1H
                                    268 	.globl _PWMB_RCR
                                    269 	.globl _PWMB_ARRL
                                    270 	.globl _PWMB_ARRH
                                    271 	.globl _PWMB_PSCRL
                                    272 	.globl _PWMB_PSCRH
                                    273 	.globl _PWMB_CNTRL
                                    274 	.globl _PWMB_CNTRH
                                    275 	.globl _PWMB_CCER2
                                    276 	.globl _PWMB_CCER1
                                    277 	.globl _PWMB_CCMR4
                                    278 	.globl _PWMB_CCMR3
                                    279 	.globl _PWMB_CCMR2
                                    280 	.globl _PWMB_CCMR1
                                    281 	.globl _PWMB_EGR
                                    282 	.globl _PWMB_SR2
                                    283 	.globl _PWMB_SR1
                                    284 	.globl _PWMB_IER
                                    285 	.globl _PWMB_ETR
                                    286 	.globl _PWMB_SMCR
                                    287 	.globl _PWMB_CR2
                                    288 	.globl _PWMB_CR1
                                    289 	.globl _PWMA_OISR
                                    290 	.globl _PWMA_DTR
                                    291 	.globl _PWMA_BKR
                                    292 	.globl _PWMA_CCR4L
                                    293 	.globl _PWMA_CCR4H
                                    294 	.globl _PWMA_CCR3L
                                    295 	.globl _PWMA_CCR3H
                                    296 	.globl _PWMA_CCR2L
                                    297 	.globl _PWMA_CCR2H
                                    298 	.globl _PWMA_CCR1L
                                    299 	.globl _PWMA_CCR1H
                                    300 	.globl _PWMA_RCR
                                    301 	.globl _PWMA_ARRL
                                    302 	.globl _PWMA_ARRH
                                    303 	.globl _PWMA_PSCRL
                                    304 	.globl _PWMA_PSCRH
                                    305 	.globl _PWMA_CNTRL
                                    306 	.globl _PWMA_CNTRH
                                    307 	.globl _PWMA_CCER2
                                    308 	.globl _PWMA_CCER1
                                    309 	.globl _PWMA_CCMR4
                                    310 	.globl _PWMA_CCMR3
                                    311 	.globl _PWMA_CCMR2
                                    312 	.globl _PWMA_CCMR1
                                    313 	.globl _PWMA_EGR
                                    314 	.globl _PWMA_SR2
                                    315 	.globl _PWMA_SR1
                                    316 	.globl _PWMA_IER
                                    317 	.globl _PWMA_ETR
                                    318 	.globl _PWMA_SMCR
                                    319 	.globl _PWMA_CR2
                                    320 	.globl _PWMA_CR1
                                    321 	.globl _PWMB_IOAUX
                                    322 	.globl _PWMB_PS
                                    323 	.globl _PWMB_ENO
                                    324 	.globl _PWMB_ETRPS
                                    325 	.globl _PWMA_IOAUX
                                    326 	.globl _PWMA_PS
                                    327 	.globl _PWMA_ENO
                                    328 	.globl _PWMA_ETRPS
                                    329 	.globl _RSTFLAG
                                    330 	.globl _SPFUNC
                                    331 	.globl _OPCON
                                    332 	.globl _ARCON
                                    333 	.globl _MD4
                                    334 	.globl _MD5
                                    335 	.globl _MD0
                                    336 	.globl _MD1
                                    337 	.globl _MD2
                                    338 	.globl _MD3
                                    339 	.globl _DMA_LCM_RXAL
                                    340 	.globl _DMA_LCM_RXAH
                                    341 	.globl _DMA_LCM_TXAL
                                    342 	.globl _DMA_LCM_TXAH
                                    343 	.globl _DMA_LCM_DONE
                                    344 	.globl _DMA_LCM_AMT
                                    345 	.globl _DMA_LCM_STA
                                    346 	.globl _DMA_LCM_CR
                                    347 	.globl _DMA_LCM_CFG
                                    348 	.globl _LCMIDDAT
                                    349 	.globl _LCMIDDATH
                                    350 	.globl _LCMIDDATL
                                    351 	.globl _LCMSTA
                                    352 	.globl _LCMCR
                                    353 	.globl _LCMCFG2
                                    354 	.globl _LCMCFG
                                    355 	.globl _I2CMSAUX
                                    356 	.globl _I2CRXD
                                    357 	.globl _I2CTXD
                                    358 	.globl _I2CSLADR
                                    359 	.globl _I2CSLST
                                    360 	.globl _I2CSLCR
                                    361 	.globl _I2CMSST
                                    362 	.globl _I2CMSCR
                                    363 	.globl _I2CCFG
                                    364 	.globl _PINIPH
                                    365 	.globl _PINIPL
                                    366 	.globl _P5IE
                                    367 	.globl _P5DR
                                    368 	.globl _P5SR
                                    369 	.globl _P5NCS
                                    370 	.globl _P5PU
                                    371 	.globl _P5WKUE
                                    372 	.globl _P5IM1
                                    373 	.globl _P5IM0
                                    374 	.globl _P5INTF
                                    375 	.globl _P5INTE
                                    376 	.globl _P3IE
                                    377 	.globl _P3DR
                                    378 	.globl _P3SR
                                    379 	.globl _P3NCS
                                    380 	.globl _P3PU
                                    381 	.globl _P3WKUE
                                    382 	.globl _P3IM1
                                    383 	.globl _P3IM0
                                    384 	.globl _P3INTF
                                    385 	.globl _P3INTE
                                    386 	.globl _P2IE
                                    387 	.globl _P2DR
                                    388 	.globl _P2SR
                                    389 	.globl _P2NCS
                                    390 	.globl _P2PU
                                    391 	.globl _P2WKUE
                                    392 	.globl _P2IM1
                                    393 	.globl _P2IM0
                                    394 	.globl _P2INTF
                                    395 	.globl _P2INTE
                                    396 	.globl _P1IE
                                    397 	.globl _P1DR
                                    398 	.globl _P1SR
                                    399 	.globl _P1NCS
                                    400 	.globl _P1PU
                                    401 	.globl _P1WKUE
                                    402 	.globl _P1IM1
                                    403 	.globl _P1IM0
                                    404 	.globl _P1INTF
                                    405 	.globl _P1INTE
                                    406 	.globl _DMA_M2M_RXAL
                                    407 	.globl _DMA_M2M_RXAH
                                    408 	.globl _DMA_M2M_TXAL
                                    409 	.globl _DMA_M2M_TXAH
                                    410 	.globl _DMA_M2M_DONE
                                    411 	.globl _DMA_M2M_AMT
                                    412 	.globl _DMA_M2M_STA
                                    413 	.globl _DMA_M2M_CR
                                    414 	.globl _DMA_M2M_CFG
                                    415 	.globl _CMPEXCFG
                                    416 	.globl _DMA_ADC_CHSW1
                                    417 	.globl _DMA_ADC_CHSW0
                                    418 	.globl _DMA_ADC_CFG2
                                    419 	.globl _DMA_ADC_RXAL
                                    420 	.globl _DMA_ADC_RXAH
                                    421 	.globl _DMA_ADC_STA
                                    422 	.globl _DMA_ADC_CR
                                    423 	.globl _DMA_ADC_CFG
                                    424 	.globl _ADCEXCFG
                                    425 	.globl _ADCTIM
                                    426 	.globl _global_timer_init
                                    427 	.globl _get_current_time
                                    428 ;--------------------------------------------------------
                                    429 ; special function registers
                                    430 ;--------------------------------------------------------
                                    431 	.area RSEG    (ABS,DATA)
      000000                        432 	.org 0x0000
                           0000BC   433 _ADC_CONTR	=	0x00bc
                           0000BD   434 _ADC_RESH	=	0x00bd
                           0000BE   435 _ADC_RESL	=	0x00be
                           00BDBE   436 _ADC_RES	=	0xbdbe
                           0000DE   437 _ADCCFG	=	0x00de
                           0000FA   438 _DMA_ADC_AMT	=	0x00fa
                           0000E6   439 _CMPCR1	=	0x00e6
                           0000E7   440 _CMPCR2	=	0x00e7
                           000082   441 _DPL	=	0x0082
                           000083   442 _DPH	=	0x0083
                           008382   443 _DP	=	0x8382
                           0000E3   444 _DPS	=	0x00e3
                           0000E4   445 _DPL1	=	0x00e4
                           0000E5   446 _DPH1	=	0x00e5
                           0000AE   447 _TA	=	0x00ae
                           000090   448 _P1	=	0x0090
                           000091   449 _P1M1	=	0x0091
                           000092   450 _P1M0	=	0x0092
                           0000A0   451 _P2	=	0x00a0
                           000095   452 _P2M1	=	0x0095
                           000096   453 _P2M0	=	0x0096
                           0000B0   454 _P3	=	0x00b0
                           0000B1   455 _P3M1	=	0x00b1
                           0000B2   456 _P3M0	=	0x00b2
                           0000C8   457 _P5	=	0x00c8
                           0000C9   458 _P5M1	=	0x00c9
                           0000CA   459 _P5M0	=	0x00ca
                           0000C2   460 _IAP_DATA	=	0x00c2
                           0000C3   461 _IAP_ADDRH	=	0x00c3
                           0000C4   462 _IAP_ADDRL	=	0x00c4
                           00C3C4   463 _IAP_ADDR	=	0xc3c4
                           0000C5   464 _IAP_CMD	=	0x00c5
                           0000C6   465 _IAP_TRIG	=	0x00c6
                           0000C7   466 _IAP_CONTR	=	0x00c7
                           0000F5   467 _IAP_TPS	=	0x00f5
                           00008F   468 _INT_CLKO	=	0x008f
                           0000A8   469 _IE1	=	0x00a8
                           0000B8   470 _IP1L	=	0x00b8
                           0000B7   471 _IP1H	=	0x00b7
                           0000AF   472 _IE2	=	0x00af
                           0000B5   473 _IP2L	=	0x00b5
                           0000B6   474 _IP2H	=	0x00b6
                           0000DF   475 _IP3L	=	0x00df
                           0000EE   476 _IP3H	=	0x00ee
                           000081   477 _SP	=	0x0081
                           0000D0   478 _PSW	=	0x00d0
                           0000E0   479 _ACC	=	0x00e0
                           0000F0   480 _B	=	0x00f0
                           000087   481 _PCON	=	0x0087
                           0000FF   482 _RSTCFG	=	0x00ff
                           0000A2   483 _P_SW1	=	0x00a2
                           0000BA   484 _P_SW2	=	0x00ba
                           0000A1   485 _BUS_SPEED	=	0x00a1
                           0000AA   486 _WKTCL	=	0x00aa
                           0000AB   487 _WKTCH	=	0x00ab
                           00ABAA   488 _WKTC	=	0xabaa
                           0000CD   489 _SPSTAT	=	0x00cd
                           0000CE   490 _SPCTL	=	0x00ce
                           0000CF   491 _SPDAT	=	0x00cf
                           00009D   492 _IRCBAND	=	0x009d
                           00009E   493 _LIRTRIM	=	0x009e
                           00009F   494 _IRTRIM	=	0x009f
                           000088   495 _TCON	=	0x0088
                           000089   496 _TMOD	=	0x0089
                           00008A   497 _T0L	=	0x008a
                           00008C   498 _T0H	=	0x008c
                           008C8A   499 _T0	=	0x8c8a
                           00008B   500 _T1L	=	0x008b
                           00008D   501 _T1H	=	0x008d
                           008D8B   502 _T1	=	0x8d8b
                           0000D7   503 _T2L	=	0x00d7
                           0000D6   504 _T2H	=	0x00d6
                           00D6D7   505 _T2	=	0xd6d7
                           00008E   506 _AUXR	=	0x008e
                           0000C1   507 _WDT_CONTR	=	0x00c1
                           0000D1   508 _T4T3M	=	0x00d1
                           0000D2   509 _T4H	=	0x00d2
                           0000D3   510 _T4L	=	0x00d3
                           00D2D3   511 _T4	=	0xd2d3
                           0000D4   512 _T3H	=	0x00d4
                           0000D5   513 _T3L	=	0x00d5
                           00D4D5   514 _T3	=	0xd4d5
                           0000EF   515 _AUXINTIF	=	0x00ef
                           0000A9   516 _SADDR	=	0x00a9
                           0000B9   517 _SADEN	=	0x00b9
                           000098   518 _S1CON	=	0x0098
                           000099   519 _S1BUF	=	0x0099
                           00009A   520 _S2CON	=	0x009a
                           00009B   521 _S2BUF	=	0x009b
                           0000AC   522 _S3CON	=	0x00ac
                           0000AD   523 _S3BUF	=	0x00ad
                           000084   524 _S4CON	=	0x0084
                           000085   525 _S4BUF	=	0x0085
                           0000DC   526 _USBCLK	=	0x00dc
                           0000EC   527 _USBDAT	=	0x00ec
                           0000F4   528 _USBCON	=	0x00f4
                           0000FC   529 _USBADR	=	0x00fc
                                    530 ;--------------------------------------------------------
                                    531 ; special function bits
                                    532 ;--------------------------------------------------------
                                    533 	.area RSEG    (ABS,DATA)
      000000                        534 	.org 0x0000
                           000090   535 _P1_0	=	0x0090
                           000091   536 _P1_1	=	0x0091
                           000092   537 _P1_2	=	0x0092
                           000093   538 _P1_3	=	0x0093
                           000094   539 _P1_4	=	0x0094
                           000095   540 _P1_5	=	0x0095
                           000096   541 _P1_6	=	0x0096
                           000097   542 _P1_7	=	0x0097
                           0000A0   543 _P2_0	=	0x00a0
                           0000A1   544 _P2_1	=	0x00a1
                           0000A2   545 _P2_2	=	0x00a2
                           0000A3   546 _P2_3	=	0x00a3
                           0000A4   547 _P2_4	=	0x00a4
                           0000A5   548 _P2_5	=	0x00a5
                           0000A6   549 _P2_6	=	0x00a6
                           0000A7   550 _P2_7	=	0x00a7
                           0000B0   551 _P3_0	=	0x00b0
                           0000B1   552 _P3_1	=	0x00b1
                           0000B2   553 _P3_2	=	0x00b2
                           0000B3   554 _P3_3	=	0x00b3
                           0000B4   555 _P3_4	=	0x00b4
                           0000B5   556 _P3_5	=	0x00b5
                           0000B6   557 _P3_6	=	0x00b6
                           0000B7   558 _P3_7	=	0x00b7
                           0000C8   559 _P5_0	=	0x00c8
                           0000C9   560 _P5_1	=	0x00c9
                           0000CA   561 _P5_2	=	0x00ca
                           0000CB   562 _P5_3	=	0x00cb
                           0000CC   563 _P5_4	=	0x00cc
                           0000CD   564 _P5_5	=	0x00cd
                           000088   565 _INT0TR	=	0x0088
                           00008A   566 _INT1TR	=	0x008a
                           0000A8   567 _INT0IE	=	0x00a8
                           0000AA   568 _INT1IE	=	0x00aa
                           0000AF   569 _EA	=	0x00af
                           0000D0   570 _P	=	0x00d0
                           0000D1   571 _F1	=	0x00d1
                           0000D2   572 _OV	=	0x00d2
                           0000D3   573 _RS0	=	0x00d3
                           0000D4   574 _RS1	=	0x00d4
                           0000D5   575 _F0	=	0x00d5
                           0000D6   576 _AC	=	0x00d6
                           0000D7   577 _CY	=	0x00d7
                           00008C   578 _T0RUN	=	0x008c
                           00008E   579 _T1RUN	=	0x008e
                           0000A9   580 _T0IE	=	0x00a9
                           0000AB   581 _T1IE	=	0x00ab
                           00009F   582 _S1SM0_FE	=	0x009f
                                    583 ;--------------------------------------------------------
                                    584 ; overlayable register banks
                                    585 ;--------------------------------------------------------
                                    586 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        587 	.ds 8
                                    588 ;--------------------------------------------------------
                                    589 ; internal ram data
                                    590 ;--------------------------------------------------------
                                    591 	.area DSEG    (DATA)
                                    592 ;--------------------------------------------------------
                                    593 ; overlayable items in internal ram 
                                    594 ;--------------------------------------------------------
                                    595 ;--------------------------------------------------------
                                    596 ; indirectly addressable internal ram data
                                    597 ;--------------------------------------------------------
                                    598 	.area ISEG    (DATA)
                                    599 ;--------------------------------------------------------
                                    600 ; absolute internal ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area IABS    (ABS,DATA)
                                    603 	.area IABS    (ABS,DATA)
                                    604 ;--------------------------------------------------------
                                    605 ; bit data
                                    606 ;--------------------------------------------------------
                                    607 	.area BSEG    (BIT)
                                    608 ;--------------------------------------------------------
                                    609 ; paged external ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area PSEG    (PAG,XDATA)
                                    612 ;--------------------------------------------------------
                                    613 ; external ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area XSEG    (XDATA)
                           00FEA8   616 _ADCTIM	=	0xfea8
                           00FEAD   617 _ADCEXCFG	=	0xfead
                           00FA10   618 _DMA_ADC_CFG	=	0xfa10
                           00FA11   619 _DMA_ADC_CR	=	0xfa11
                           00FA12   620 _DMA_ADC_STA	=	0xfa12
                           00FA17   621 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   622 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   623 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   624 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   625 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   626 _CMPEXCFG	=	0xfeae
                           00FA00   627 _DMA_M2M_CFG	=	0xfa00
                           00FA01   628 _DMA_M2M_CR	=	0xfa01
                           00FA02   629 _DMA_M2M_STA	=	0xfa02
                           00FA03   630 _DMA_M2M_AMT	=	0xfa03
                           00FA04   631 _DMA_M2M_DONE	=	0xfa04
                           00FA05   632 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   633 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   634 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   635 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   636 _P1INTE	=	0xfd01
                           00FD11   637 _P1INTF	=	0xfd11
                           00FD21   638 _P1IM0	=	0xfd21
                           00FD31   639 _P1IM1	=	0xfd31
                           00FD41   640 _P1WKUE	=	0xfd41
                           00FE11   641 _P1PU	=	0xfe11
                           00FE19   642 _P1NCS	=	0xfe19
                           00FE21   643 _P1SR	=	0xfe21
                           00FE29   644 _P1DR	=	0xfe29
                           00FE31   645 _P1IE	=	0xfe31
                           00FD02   646 _P2INTE	=	0xfd02
                           00FD12   647 _P2INTF	=	0xfd12
                           00FD22   648 _P2IM0	=	0xfd22
                           00FD32   649 _P2IM1	=	0xfd32
                           00FD42   650 _P2WKUE	=	0xfd42
                           00FE12   651 _P2PU	=	0xfe12
                           00FE1A   652 _P2NCS	=	0xfe1a
                           00FE22   653 _P2SR	=	0xfe22
                           00FE2A   654 _P2DR	=	0xfe2a
                           00FE32   655 _P2IE	=	0xfe32
                           00FD03   656 _P3INTE	=	0xfd03
                           00FD13   657 _P3INTF	=	0xfd13
                           00FD23   658 _P3IM0	=	0xfd23
                           00FD33   659 _P3IM1	=	0xfd33
                           00FD43   660 _P3WKUE	=	0xfd43
                           00FE13   661 _P3PU	=	0xfe13
                           00FE1B   662 _P3NCS	=	0xfe1b
                           00FE23   663 _P3SR	=	0xfe23
                           00FE2B   664 _P3DR	=	0xfe2b
                           00FE33   665 _P3IE	=	0xfe33
                           00FD05   666 _P5INTE	=	0xfd05
                           00FD15   667 _P5INTF	=	0xfd15
                           00FD25   668 _P5IM0	=	0xfd25
                           00FD35   669 _P5IM1	=	0xfd35
                           00FD45   670 _P5WKUE	=	0xfd45
                           00FE15   671 _P5PU	=	0xfe15
                           00FE1D   672 _P5NCS	=	0xfe1d
                           00FE25   673 _P5SR	=	0xfe25
                           00FE2D   674 _P5DR	=	0xfe2d
                           00FE35   675 _P5IE	=	0xfe35
                           00FD60   676 _PINIPL	=	0xfd60
                           00FD61   677 _PINIPH	=	0xfd61
                           00FE80   678 _I2CCFG	=	0xfe80
                           00FE81   679 _I2CMSCR	=	0xfe81
                           00FE82   680 _I2CMSST	=	0xfe82
                           00FE83   681 _I2CSLCR	=	0xfe83
                           00FE84   682 _I2CSLST	=	0xfe84
                           00FE85   683 _I2CSLADR	=	0xfe85
                           00FE86   684 _I2CTXD	=	0xfe86
                           00FE87   685 _I2CRXD	=	0xfe87
                           00FE88   686 _I2CMSAUX	=	0xfe88
                           00FE50   687 _LCMCFG	=	0xfe50
                           00FE51   688 _LCMCFG2	=	0xfe51
                           00FE52   689 _LCMCR	=	0xfe52
                           00FE53   690 _LCMSTA	=	0xfe53
                           00FE54   691 _LCMIDDATL	=	0xfe54
                           00FE55   692 _LCMIDDATH	=	0xfe55
                           00FE54   693 _LCMIDDAT	=	0xfe54
                           00FA70   694 _DMA_LCM_CFG	=	0xfa70
                           00FA71   695 _DMA_LCM_CR	=	0xfa71
                           00FA72   696 _DMA_LCM_STA	=	0xfa72
                           00FA73   697 _DMA_LCM_AMT	=	0xfa73
                           00FA74   698 _DMA_LCM_DONE	=	0xfa74
                           00FA75   699 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   700 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   701 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   702 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   703 _MD3	=	0xfcf0
                           00FCF1   704 _MD2	=	0xfcf1
                           00FCF2   705 _MD1	=	0xfcf2
                           00FCF3   706 _MD0	=	0xfcf3
                           00FCF4   707 _MD5	=	0xfcf4
                           00FCF5   708 _MD4	=	0xfcf5
                           00FCF6   709 _ARCON	=	0xfcf6
                           00FCF7   710 _OPCON	=	0xfcf7
                           00FE08   711 _SPFUNC	=	0xfe08
                           00FE09   712 _RSTFLAG	=	0xfe09
                           00FEB0   713 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   714 _PWMA_ENO	=	0xfeb1
                           00FEB2   715 _PWMA_PS	=	0xfeb2
                           00FEB3   716 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   717 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   718 _PWMB_ENO	=	0xfeb5
                           00FEB6   719 _PWMB_PS	=	0xfeb6
                           00FEB7   720 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   721 _PWMA_CR1	=	0xfec0
                           00FEC1   722 _PWMA_CR2	=	0xfec1
                           00FEC2   723 _PWMA_SMCR	=	0xfec2
                           00FEC3   724 _PWMA_ETR	=	0xfec3
                           00FEC4   725 _PWMA_IER	=	0xfec4
                           00FEC5   726 _PWMA_SR1	=	0xfec5
                           00FEC6   727 _PWMA_SR2	=	0xfec6
                           00FEC7   728 _PWMA_EGR	=	0xfec7
                           00FEC8   729 _PWMA_CCMR1	=	0xfec8
                           00FEC9   730 _PWMA_CCMR2	=	0xfec9
                           00FECA   731 _PWMA_CCMR3	=	0xfeca
                           00FECB   732 _PWMA_CCMR4	=	0xfecb
                           00FECC   733 _PWMA_CCER1	=	0xfecc
                           00FECD   734 _PWMA_CCER2	=	0xfecd
                           00FECE   735 _PWMA_CNTRH	=	0xfece
                           00FECF   736 _PWMA_CNTRL	=	0xfecf
                           00FED0   737 _PWMA_PSCRH	=	0xfed0
                           00FED1   738 _PWMA_PSCRL	=	0xfed1
                           00FED2   739 _PWMA_ARRH	=	0xfed2
                           00FED3   740 _PWMA_ARRL	=	0xfed3
                           00FED4   741 _PWMA_RCR	=	0xfed4
                           00FED5   742 _PWMA_CCR1H	=	0xfed5
                           00FED6   743 _PWMA_CCR1L	=	0xfed6
                           00FED7   744 _PWMA_CCR2H	=	0xfed7
                           00FED8   745 _PWMA_CCR2L	=	0xfed8
                           00FED9   746 _PWMA_CCR3H	=	0xfed9
                           00FEDA   747 _PWMA_CCR3L	=	0xfeda
                           00FEDB   748 _PWMA_CCR4H	=	0xfedb
                           00FEDC   749 _PWMA_CCR4L	=	0xfedc
                           00FEDD   750 _PWMA_BKR	=	0xfedd
                           00FEDE   751 _PWMA_DTR	=	0xfede
                           00FEDF   752 _PWMA_OISR	=	0xfedf
                           00FEE0   753 _PWMB_CR1	=	0xfee0
                           00FEE1   754 _PWMB_CR2	=	0xfee1
                           00FEE2   755 _PWMB_SMCR	=	0xfee2
                           00FEE3   756 _PWMB_ETR	=	0xfee3
                           00FEE4   757 _PWMB_IER	=	0xfee4
                           00FEE5   758 _PWMB_SR1	=	0xfee5
                           00FEE6   759 _PWMB_SR2	=	0xfee6
                           00FEE7   760 _PWMB_EGR	=	0xfee7
                           00FEE8   761 _PWMB_CCMR1	=	0xfee8
                           00FEE9   762 _PWMB_CCMR2	=	0xfee9
                           00FEEA   763 _PWMB_CCMR3	=	0xfeea
                           00FEEB   764 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   765 _PWMB_CCER1	=	0xfeec
                           00FEED   766 _PWMB_CCER2	=	0xfeed
                           00FEEE   767 _PWMB_CNTRH	=	0xfeee
                           00FEEF   768 _PWMB_CNTRL	=	0xfeef
                           00FEF0   769 _PWMB_PSCRH	=	0xfef0
                           00FEF1   770 _PWMB_PSCRL	=	0xfef1
                           00FEF2   771 _PWMB_ARRH	=	0xfef2
                           00FEF3   772 _PWMB_ARRL	=	0xfef3
                           00FEF4   773 _PWMB_RCR	=	0xfef4
                           00FEF5   774 _PWMB_CCR1H	=	0xfef5
                           00FEF6   775 _PWMB_CCR1L	=	0xfef6
                           00FEF7   776 _PWMB_CCR2H	=	0xfef7
                           00FEF8   777 _PWMB_CCR2L	=	0xfef8
                           00FEF9   778 _PWMB_CCR3H	=	0xfef9
                           00FEFA   779 _PWMB_CCR3L	=	0xfefa
                           00FEFB   780 _PWMB_CCR4H	=	0xfefb
                           00FEFC   781 _PWMB_CCR4L	=	0xfefc
                           00FEFD   782 _PWMB_BKR	=	0xfefd
                           00FEFE   783 _PWMB_DTR	=	0xfefe
                           00FEFF   784 _PWMB_OISR	=	0xfeff
                           00FE60   785 _RTCCR	=	0xfe60
                           00FE61   786 _RTCCFG	=	0xfe61
                           00FE62   787 _RTCIEN	=	0xfe62
                           00FE63   788 _RTCIF	=	0xfe63
                           00FE64   789 _ALAHOUR	=	0xfe64
                           00FE65   790 _ALAMIN	=	0xfe65
                           00FE66   791 _ALASEC	=	0xfe66
                           00FE67   792 _ALASSEC	=	0xfe67
                           00FE68   793 _INIYEAR	=	0xfe68
                           00FE69   794 _INIMONTH	=	0xfe69
                           00FE6A   795 _INIDAY	=	0xfe6a
                           00FE6B   796 _INIHOUR	=	0xfe6b
                           00FE6C   797 _INIMIN	=	0xfe6c
                           00FE6D   798 _INISEC	=	0xfe6d
                           00FE6E   799 _INISSEC	=	0xfe6e
                           00FE70   800 _YEAR	=	0xfe70
                           00FE71   801 _MONTH	=	0xfe71
                           00FE72   802 _DAY	=	0xfe72
                           00FE73   803 _HOUR	=	0xfe73
                           00FE74   804 _MIN	=	0xfe74
                           00FE75   805 _SEC	=	0xfe75
                           00FE76   806 _SSEC	=	0xfe76
                           00FA20   807 _DMA_SPI_CFG	=	0xfa20
                           00FA21   808 _DMA_SPI_CR	=	0xfa21
                           00FA22   809 _DMA_SPI_STA	=	0xfa22
                           00FA23   810 _DMA_SPI_AMT	=	0xfa23
                           00FA24   811 _DMA_SPI_DONE	=	0xfa24
                           00FA25   812 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   813 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   814 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   815 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   816 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   817 _CLKDIV	=	0xfe01
                           00FE02   818 _HIRCCR	=	0xfe02
                           00FE03   819 _XOSCCR	=	0xfe03
                           00FE04   820 _IRC32KCR	=	0xfe04
                           00FE00   821 _CKSEL	=	0xfe00
                           00FE05   822 _MCLKOCR	=	0xfe05
                           00FE06   823 _IRCDB	=	0xfe06
                           00FE07   824 _IRC48MCR	=	0xfe07
                           00FEA2   825 _TM2PS	=	0xfea2
                           00FEA3   826 _TM3PS	=	0xfea3
                           00FEA4   827 _TM4PS	=	0xfea4
                           00FA30   828 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   829 _DMA_UR1T_CR	=	0xfa31
                           00FA32   830 _DMA_UR1T_STA	=	0xfa32
                           00FA33   831 _DMA_URTX_AMT	=	0xfa33
                           00FA34   832 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   833 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   834 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   835 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   836 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   837 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   838 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   839 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   840 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   841 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   842 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   843 _DMA_UR2T_CR	=	0xfa31
                           00FA32   844 _DMA_UR2T_STA	=	0xfa32
                           00FA33   845 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   846 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   847 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   848 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   849 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   850 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   851 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   852 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   853 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   854 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   855 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   856 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   857 _DMA_UR3T_CR	=	0xfa31
                           00FA32   858 _DMA_UR3T_STA	=	0xfa32
                           00FA33   859 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   860 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   861 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   862 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   863 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   864 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   865 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   866 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   867 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   868 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   869 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   870 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   871 _DMA_UR4T_CR	=	0xfa31
                           00FA32   872 _DMA_UR4T_STA	=	0xfa32
                           00FA33   873 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   874 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   875 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   876 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   877 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   878 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   879 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   880 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   881 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   882 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   883 _DMA_UR4R_TXAL	=	0xfa3e
      000564                        884 _uartGetCharacter_result_65536_69:
      000564                        885 	.ds 1
      000565                        886 _global_timer_counter:
      000565                        887 	.ds 4
                                    888 ;--------------------------------------------------------
                                    889 ; absolute external ram data
                                    890 ;--------------------------------------------------------
                                    891 	.area XABS    (ABS,XDATA)
                                    892 ;--------------------------------------------------------
                                    893 ; external initialized ram data
                                    894 ;--------------------------------------------------------
                                    895 	.area XISEG   (XDATA)
                                    896 	.area HOME    (CODE)
                                    897 	.area GSINIT0 (CODE)
                                    898 	.area GSINIT1 (CODE)
                                    899 	.area GSINIT2 (CODE)
                                    900 	.area GSINIT3 (CODE)
                                    901 	.area GSINIT4 (CODE)
                                    902 	.area GSINIT5 (CODE)
                                    903 	.area GSINIT  (CODE)
                                    904 	.area GSFINAL (CODE)
                                    905 	.area CSEG    (CODE)
                                    906 ;--------------------------------------------------------
                                    907 ; global & static initialisations
                                    908 ;--------------------------------------------------------
                                    909 	.area HOME    (CODE)
                                    910 	.area GSINIT  (CODE)
                                    911 	.area GSFINAL (CODE)
                                    912 	.area GSINIT  (CODE)
                                    913 ;--------------------------------------------------------
                                    914 ; Home
                                    915 ;--------------------------------------------------------
                                    916 	.area HOME    (CODE)
                                    917 	.area HOME    (CODE)
                                    918 ;--------------------------------------------------------
                                    919 ; code
                                    920 ;--------------------------------------------------------
                                    921 	.area CSEG    (CODE)
                                    922 ;------------------------------------------------------------
                                    923 ;Allocation info for local variables in function 'global_timer_init'
                                    924 ;------------------------------------------------------------
                                    925 ;	global_timer.c:5: void global_timer_init(void) {
                                    926 ;	-----------------------------------------
                                    927 ;	 function global_timer_init
                                    928 ;	-----------------------------------------
      003D6C                        929 _global_timer_init:
                           000007   930 	ar7 = 0x07
                           000006   931 	ar6 = 0x06
                           000005   932 	ar5 = 0x05
                           000004   933 	ar4 = 0x04
                           000003   934 	ar3 = 0x03
                           000002   935 	ar2 = 0x02
                           000001   936 	ar1 = 0x01
                           000000   937 	ar0 = 0x00
                                    938 ;	global_timer.c:11: FREE_RUNNING
      003D6C 90 00 A5         [24]  939 	mov	dptr,#_startTimer_PARM_2
      003D6F 74 B8            [12]  940 	mov	a,#0xb8
      003D71 F0               [24]  941 	movx	@dptr,a
      003D72 74 88            [12]  942 	mov	a,#0x88
      003D74 A3               [24]  943 	inc	dptr
      003D75 F0               [24]  944 	movx	@dptr,a
      003D76 E4               [12]  945 	clr	a
      003D77 A3               [24]  946 	inc	dptr
      003D78 F0               [24]  947 	movx	@dptr,a
      003D79 A3               [24]  948 	inc	dptr
      003D7A F0               [24]  949 	movx	@dptr,a
      003D7B 90 00 A9         [24]  950 	mov	dptr,#_startTimer_PARM_3
      003D7E F0               [24]  951 	movx	@dptr,a
      003D7F 90 00 AA         [24]  952 	mov	dptr,#_startTimer_PARM_4
      003D82 04               [12]  953 	inc	a
      003D83 F0               [24]  954 	movx	@dptr,a
      003D84 90 00 AB         [24]  955 	mov	dptr,#_startTimer_PARM_5
      003D87 E4               [12]  956 	clr	a
      003D88 F0               [24]  957 	movx	@dptr,a
      003D89 75 82 03         [24]  958 	mov	dpl,#0x03
                                    959 ;	global_timer.c:13: }
      003D8C 02 13 2F         [24]  960 	ljmp	_startTimer
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'get_current_time'
                                    963 ;------------------------------------------------------------
                                    964 ;	global_timer.c:15: uint32_t get_current_time(void) { return global_timer_counter; }
                                    965 ;	-----------------------------------------
                                    966 ;	 function get_current_time
                                    967 ;	-----------------------------------------
      003D8F                        968 _get_current_time:
      003D8F 90 05 65         [24]  969 	mov	dptr,#_global_timer_counter
      003D92 E0               [24]  970 	movx	a,@dptr
      003D93 FC               [12]  971 	mov	r4,a
      003D94 A3               [24]  972 	inc	dptr
      003D95 E0               [24]  973 	movx	a,@dptr
      003D96 FD               [12]  974 	mov	r5,a
      003D97 A3               [24]  975 	inc	dptr
      003D98 E0               [24]  976 	movx	a,@dptr
      003D99 FE               [12]  977 	mov	r6,a
      003D9A A3               [24]  978 	inc	dptr
      003D9B E0               [24]  979 	movx	a,@dptr
      003D9C 8C 82            [24]  980 	mov	dpl,r4
      003D9E 8D 83            [24]  981 	mov	dph,r5
      003DA0 8E F0            [24]  982 	mov	b,r6
      003DA2 22               [24]  983 	ret
                                    984 ;------------------------------------------------------------
                                    985 ;Allocation info for local variables in function 'timer3_isr'
                                    986 ;------------------------------------------------------------
                                    987 ;	global_timer.c:18: INTERRUPT(GLOBAL_TIMER_ISR, GLOBAL_TIMER_INTERRUPT) {
                                    988 ;	-----------------------------------------
                                    989 ;	 function timer3_isr
                                    990 ;	-----------------------------------------
      003DA3                        991 _timer3_isr:
      003DA3 C0 E0            [24]  992 	push	acc
      003DA5 C0 82            [24]  993 	push	dpl
      003DA7 C0 83            [24]  994 	push	dph
      003DA9 C0 07            [24]  995 	push	ar7
      003DAB C0 06            [24]  996 	push	ar6
      003DAD C0 05            [24]  997 	push	ar5
      003DAF C0 04            [24]  998 	push	ar4
      003DB1 C0 D0            [24]  999 	push	psw
      003DB3 75 D0 00         [24] 1000 	mov	psw,#0x00
                                   1001 ;	global_timer.c:20: global_timer_counter++;
      003DB6 90 05 65         [24] 1002 	mov	dptr,#_global_timer_counter
      003DB9 E0               [24] 1003 	movx	a,@dptr
      003DBA FC               [12] 1004 	mov	r4,a
      003DBB A3               [24] 1005 	inc	dptr
      003DBC E0               [24] 1006 	movx	a,@dptr
      003DBD FD               [12] 1007 	mov	r5,a
      003DBE A3               [24] 1008 	inc	dptr
      003DBF E0               [24] 1009 	movx	a,@dptr
      003DC0 FE               [12] 1010 	mov	r6,a
      003DC1 A3               [24] 1011 	inc	dptr
      003DC2 E0               [24] 1012 	movx	a,@dptr
      003DC3 FF               [12] 1013 	mov	r7,a
      003DC4 90 05 65         [24] 1014 	mov	dptr,#_global_timer_counter
      003DC7 74 01            [12] 1015 	mov	a,#0x01
      003DC9 2C               [12] 1016 	add	a,r4
      003DCA F0               [24] 1017 	movx	@dptr,a
      003DCB E4               [12] 1018 	clr	a
      003DCC 3D               [12] 1019 	addc	a,r5
      003DCD A3               [24] 1020 	inc	dptr
      003DCE F0               [24] 1021 	movx	@dptr,a
      003DCF E4               [12] 1022 	clr	a
      003DD0 3E               [12] 1023 	addc	a,r6
      003DD1 A3               [24] 1024 	inc	dptr
      003DD2 F0               [24] 1025 	movx	@dptr,a
      003DD3 E4               [12] 1026 	clr	a
      003DD4 3F               [12] 1027 	addc	a,r7
      003DD5 A3               [24] 1028 	inc	dptr
      003DD6 F0               [24] 1029 	movx	@dptr,a
                                   1030 ;	global_timer.c:22: }
      003DD7 D0 D0            [24] 1031 	pop	psw
      003DD9 D0 04            [24] 1032 	pop	ar4
      003DDB D0 05            [24] 1033 	pop	ar5
      003DDD D0 06            [24] 1034 	pop	ar6
      003DDF D0 07            [24] 1035 	pop	ar7
      003DE1 D0 83            [24] 1036 	pop	dph
      003DE3 D0 82            [24] 1037 	pop	dpl
      003DE5 D0 E0            [24] 1038 	pop	acc
      003DE7 32               [24] 1039 	reti
                                   1040 ;	eliminated unneeded push/pop b
                                   1041 	.area CSEG    (CODE)
                                   1042 	.area CONST   (CODE)
      0073A3                       1043 _FONTS:
      0073A3 00                    1044 	.db #0x00	; 0
      0073A4 00                    1045 	.db #0x00	; 0
      0073A5 00                    1046 	.db #0x00	; 0
      0073A6 00                    1047 	.db #0x00	; 0
      0073A7 00                    1048 	.db #0x00	; 0
      0073A8 81                    1049 	.db #0x81	; 129
      0073A9 81                    1050 	.db #0x81	; 129
      0073AA 18                    1051 	.db #0x18	; 24
      0073AB 81                    1052 	.db #0x81	; 129
      0073AC 81                    1053 	.db #0x81	; 129
      0073AD 00                    1054 	.db #0x00	; 0
      0073AE 07                    1055 	.db #0x07	; 7
      0073AF 00                    1056 	.db #0x00	; 0
      0073B0 07                    1057 	.db #0x07	; 7
      0073B1 00                    1058 	.db #0x00	; 0
      0073B2 14                    1059 	.db #0x14	; 20
      0073B3 7F                    1060 	.db #0x7f	; 127
      0073B4 14                    1061 	.db #0x14	; 20
      0073B5 7F                    1062 	.db #0x7f	; 127
      0073B6 14                    1063 	.db #0x14	; 20
      0073B7 24                    1064 	.db #0x24	; 36
      0073B8 2A                    1065 	.db #0x2a	; 42
      0073B9 7F                    1066 	.db #0x7f	; 127
      0073BA 2A                    1067 	.db #0x2a	; 42
      0073BB 12                    1068 	.db #0x12	; 18
      0073BC 23                    1069 	.db #0x23	; 35
      0073BD 13                    1070 	.db #0x13	; 19
      0073BE 08                    1071 	.db #0x08	; 8
      0073BF 64                    1072 	.db #0x64	; 100	'd'
      0073C0 62                    1073 	.db #0x62	; 98	'b'
      0073C1 36                    1074 	.db #0x36	; 54	'6'
      0073C2 49                    1075 	.db #0x49	; 73	'I'
      0073C3 55                    1076 	.db #0x55	; 85	'U'
      0073C4 22                    1077 	.db #0x22	; 34
      0073C5 50                    1078 	.db #0x50	; 80	'P'
      0073C6 00                    1079 	.db #0x00	; 0
      0073C7 05                    1080 	.db #0x05	; 5
      0073C8 03                    1081 	.db #0x03	; 3
      0073C9 00                    1082 	.db #0x00	; 0
      0073CA 00                    1083 	.db #0x00	; 0
      0073CB 00                    1084 	.db #0x00	; 0
      0073CC 1C                    1085 	.db #0x1c	; 28
      0073CD 22                    1086 	.db #0x22	; 34
      0073CE 41                    1087 	.db #0x41	; 65	'A'
      0073CF 00                    1088 	.db #0x00	; 0
      0073D0 00                    1089 	.db #0x00	; 0
      0073D1 41                    1090 	.db #0x41	; 65	'A'
      0073D2 22                    1091 	.db #0x22	; 34
      0073D3 1C                    1092 	.db #0x1c	; 28
      0073D4 00                    1093 	.db #0x00	; 0
      0073D5 14                    1094 	.db #0x14	; 20
      0073D6 08                    1095 	.db #0x08	; 8
      0073D7 3E                    1096 	.db #0x3e	; 62
      0073D8 08                    1097 	.db #0x08	; 8
      0073D9 14                    1098 	.db #0x14	; 20
      0073DA 08                    1099 	.db #0x08	; 8
      0073DB 08                    1100 	.db #0x08	; 8
      0073DC 3E                    1101 	.db #0x3e	; 62
      0073DD 08                    1102 	.db #0x08	; 8
      0073DE 08                    1103 	.db #0x08	; 8
      0073DF 00                    1104 	.db #0x00	; 0
      0073E0 50                    1105 	.db #0x50	; 80	'P'
      0073E1 30                    1106 	.db #0x30	; 48	'0'
      0073E2 00                    1107 	.db #0x00	; 0
      0073E3 00                    1108 	.db #0x00	; 0
      0073E4 08                    1109 	.db #0x08	; 8
      0073E5 08                    1110 	.db #0x08	; 8
      0073E6 08                    1111 	.db #0x08	; 8
      0073E7 08                    1112 	.db #0x08	; 8
      0073E8 08                    1113 	.db #0x08	; 8
      0073E9 00                    1114 	.db #0x00	; 0
      0073EA 60                    1115 	.db #0x60	; 96
      0073EB 60                    1116 	.db #0x60	; 96
      0073EC 00                    1117 	.db #0x00	; 0
      0073ED 00                    1118 	.db #0x00	; 0
      0073EE 20                    1119 	.db #0x20	; 32
      0073EF 10                    1120 	.db #0x10	; 16
      0073F0 08                    1121 	.db #0x08	; 8
      0073F1 04                    1122 	.db #0x04	; 4
      0073F2 02                    1123 	.db #0x02	; 2
      0073F3 3E                    1124 	.db #0x3e	; 62
      0073F4 51                    1125 	.db #0x51	; 81	'Q'
      0073F5 49                    1126 	.db #0x49	; 73	'I'
      0073F6 45                    1127 	.db #0x45	; 69	'E'
      0073F7 3E                    1128 	.db #0x3e	; 62
      0073F8 00                    1129 	.db #0x00	; 0
      0073F9 42                    1130 	.db #0x42	; 66	'B'
      0073FA 7F                    1131 	.db #0x7f	; 127
      0073FB 40                    1132 	.db #0x40	; 64
      0073FC 00                    1133 	.db #0x00	; 0
      0073FD 42                    1134 	.db #0x42	; 66	'B'
      0073FE 61                    1135 	.db #0x61	; 97	'a'
      0073FF 51                    1136 	.db #0x51	; 81	'Q'
      007400 49                    1137 	.db #0x49	; 73	'I'
      007401 46                    1138 	.db #0x46	; 70	'F'
      007402 21                    1139 	.db #0x21	; 33
      007403 41                    1140 	.db #0x41	; 65	'A'
      007404 45                    1141 	.db #0x45	; 69	'E'
      007405 4B                    1142 	.db #0x4b	; 75	'K'
      007406 31                    1143 	.db #0x31	; 49	'1'
      007407 18                    1144 	.db #0x18	; 24
      007408 14                    1145 	.db #0x14	; 20
      007409 12                    1146 	.db #0x12	; 18
      00740A 7F                    1147 	.db #0x7f	; 127
      00740B 10                    1148 	.db #0x10	; 16
      00740C 27                    1149 	.db #0x27	; 39
      00740D 45                    1150 	.db #0x45	; 69	'E'
      00740E 45                    1151 	.db #0x45	; 69	'E'
      00740F 45                    1152 	.db #0x45	; 69	'E'
      007410 39                    1153 	.db #0x39	; 57	'9'
      007411 3C                    1154 	.db #0x3c	; 60
      007412 4A                    1155 	.db #0x4a	; 74	'J'
      007413 49                    1156 	.db #0x49	; 73	'I'
      007414 49                    1157 	.db #0x49	; 73	'I'
      007415 30                    1158 	.db #0x30	; 48	'0'
      007416 01                    1159 	.db #0x01	; 1
      007417 71                    1160 	.db #0x71	; 113	'q'
      007418 09                    1161 	.db #0x09	; 9
      007419 05                    1162 	.db #0x05	; 5
      00741A 03                    1163 	.db #0x03	; 3
      00741B 36                    1164 	.db #0x36	; 54	'6'
      00741C 49                    1165 	.db #0x49	; 73	'I'
      00741D 49                    1166 	.db #0x49	; 73	'I'
      00741E 49                    1167 	.db #0x49	; 73	'I'
      00741F 36                    1168 	.db #0x36	; 54	'6'
      007420 06                    1169 	.db #0x06	; 6
      007421 49                    1170 	.db #0x49	; 73	'I'
      007422 49                    1171 	.db #0x49	; 73	'I'
      007423 29                    1172 	.db #0x29	; 41
      007424 1E                    1173 	.db #0x1e	; 30
      007425 00                    1174 	.db #0x00	; 0
      007426 36                    1175 	.db #0x36	; 54	'6'
      007427 36                    1176 	.db #0x36	; 54	'6'
      007428 00                    1177 	.db #0x00	; 0
      007429 00                    1178 	.db #0x00	; 0
      00742A 00                    1179 	.db #0x00	; 0
      00742B 56                    1180 	.db #0x56	; 86	'V'
      00742C 36                    1181 	.db #0x36	; 54	'6'
      00742D 00                    1182 	.db #0x00	; 0
      00742E 00                    1183 	.db #0x00	; 0
      00742F 08                    1184 	.db #0x08	; 8
      007430 14                    1185 	.db #0x14	; 20
      007431 22                    1186 	.db #0x22	; 34
      007432 41                    1187 	.db #0x41	; 65	'A'
      007433 00                    1188 	.db #0x00	; 0
      007434 14                    1189 	.db #0x14	; 20
      007435 14                    1190 	.db #0x14	; 20
      007436 14                    1191 	.db #0x14	; 20
      007437 14                    1192 	.db #0x14	; 20
      007438 14                    1193 	.db #0x14	; 20
      007439 00                    1194 	.db #0x00	; 0
      00743A 41                    1195 	.db #0x41	; 65	'A'
      00743B 22                    1196 	.db #0x22	; 34
      00743C 14                    1197 	.db #0x14	; 20
      00743D 08                    1198 	.db #0x08	; 8
      00743E 02                    1199 	.db #0x02	; 2
      00743F 01                    1200 	.db #0x01	; 1
      007440 51                    1201 	.db #0x51	; 81	'Q'
      007441 09                    1202 	.db #0x09	; 9
      007442 06                    1203 	.db #0x06	; 6
      007443 32                    1204 	.db #0x32	; 50	'2'
      007444 49                    1205 	.db #0x49	; 73	'I'
      007445 79                    1206 	.db #0x79	; 121	'y'
      007446 41                    1207 	.db #0x41	; 65	'A'
      007447 3E                    1208 	.db #0x3e	; 62
      007448 7E                    1209 	.db #0x7e	; 126
      007449 11                    1210 	.db #0x11	; 17
      00744A 11                    1211 	.db #0x11	; 17
      00744B 11                    1212 	.db #0x11	; 17
      00744C 7E                    1213 	.db #0x7e	; 126
      00744D 7F                    1214 	.db #0x7f	; 127
      00744E 49                    1215 	.db #0x49	; 73	'I'
      00744F 49                    1216 	.db #0x49	; 73	'I'
      007450 49                    1217 	.db #0x49	; 73	'I'
      007451 36                    1218 	.db #0x36	; 54	'6'
      007452 3E                    1219 	.db #0x3e	; 62
      007453 41                    1220 	.db #0x41	; 65	'A'
      007454 41                    1221 	.db #0x41	; 65	'A'
      007455 41                    1222 	.db #0x41	; 65	'A'
      007456 22                    1223 	.db #0x22	; 34
      007457 7F                    1224 	.db #0x7f	; 127
      007458 41                    1225 	.db #0x41	; 65	'A'
      007459 41                    1226 	.db #0x41	; 65	'A'
      00745A 22                    1227 	.db #0x22	; 34
      00745B 1C                    1228 	.db #0x1c	; 28
      00745C 7F                    1229 	.db #0x7f	; 127
      00745D 49                    1230 	.db #0x49	; 73	'I'
      00745E 49                    1231 	.db #0x49	; 73	'I'
      00745F 49                    1232 	.db #0x49	; 73	'I'
      007460 41                    1233 	.db #0x41	; 65	'A'
      007461 7F                    1234 	.db #0x7f	; 127
      007462 09                    1235 	.db #0x09	; 9
      007463 09                    1236 	.db #0x09	; 9
      007464 09                    1237 	.db #0x09	; 9
      007465 01                    1238 	.db #0x01	; 1
      007466 3E                    1239 	.db #0x3e	; 62
      007467 41                    1240 	.db #0x41	; 65	'A'
      007468 49                    1241 	.db #0x49	; 73	'I'
      007469 49                    1242 	.db #0x49	; 73	'I'
      00746A 7A                    1243 	.db #0x7a	; 122	'z'
      00746B 7F                    1244 	.db #0x7f	; 127
      00746C 08                    1245 	.db #0x08	; 8
      00746D 08                    1246 	.db #0x08	; 8
      00746E 08                    1247 	.db #0x08	; 8
      00746F 7F                    1248 	.db #0x7f	; 127
      007470 00                    1249 	.db #0x00	; 0
      007471 41                    1250 	.db #0x41	; 65	'A'
      007472 7F                    1251 	.db #0x7f	; 127
      007473 41                    1252 	.db #0x41	; 65	'A'
      007474 00                    1253 	.db #0x00	; 0
      007475 20                    1254 	.db #0x20	; 32
      007476 40                    1255 	.db #0x40	; 64
      007477 41                    1256 	.db #0x41	; 65	'A'
      007478 3F                    1257 	.db #0x3f	; 63
      007479 01                    1258 	.db #0x01	; 1
      00747A 7F                    1259 	.db #0x7f	; 127
      00747B 08                    1260 	.db #0x08	; 8
      00747C 14                    1261 	.db #0x14	; 20
      00747D 22                    1262 	.db #0x22	; 34
      00747E 41                    1263 	.db #0x41	; 65	'A'
      00747F 7F                    1264 	.db #0x7f	; 127
      007480 40                    1265 	.db #0x40	; 64
      007481 40                    1266 	.db #0x40	; 64
      007482 40                    1267 	.db #0x40	; 64
      007483 40                    1268 	.db #0x40	; 64
      007484 7F                    1269 	.db #0x7f	; 127
      007485 02                    1270 	.db #0x02	; 2
      007486 0C                    1271 	.db #0x0c	; 12
      007487 02                    1272 	.db #0x02	; 2
      007488 7F                    1273 	.db #0x7f	; 127
      007489 7F                    1274 	.db #0x7f	; 127
      00748A 04                    1275 	.db #0x04	; 4
      00748B 08                    1276 	.db #0x08	; 8
      00748C 10                    1277 	.db #0x10	; 16
      00748D 7F                    1278 	.db #0x7f	; 127
      00748E 3E                    1279 	.db #0x3e	; 62
      00748F 41                    1280 	.db #0x41	; 65	'A'
      007490 41                    1281 	.db #0x41	; 65	'A'
      007491 41                    1282 	.db #0x41	; 65	'A'
      007492 3E                    1283 	.db #0x3e	; 62
      007493 7F                    1284 	.db #0x7f	; 127
      007494 09                    1285 	.db #0x09	; 9
      007495 09                    1286 	.db #0x09	; 9
      007496 09                    1287 	.db #0x09	; 9
      007497 06                    1288 	.db #0x06	; 6
      007498 3E                    1289 	.db #0x3e	; 62
      007499 41                    1290 	.db #0x41	; 65	'A'
      00749A 51                    1291 	.db #0x51	; 81	'Q'
      00749B 21                    1292 	.db #0x21	; 33
      00749C 5E                    1293 	.db #0x5e	; 94
      00749D 7F                    1294 	.db #0x7f	; 127
      00749E 09                    1295 	.db #0x09	; 9
      00749F 19                    1296 	.db #0x19	; 25
      0074A0 29                    1297 	.db #0x29	; 41
      0074A1 46                    1298 	.db #0x46	; 70	'F'
      0074A2 46                    1299 	.db #0x46	; 70	'F'
      0074A3 49                    1300 	.db #0x49	; 73	'I'
      0074A4 49                    1301 	.db #0x49	; 73	'I'
      0074A5 49                    1302 	.db #0x49	; 73	'I'
      0074A6 31                    1303 	.db #0x31	; 49	'1'
      0074A7 01                    1304 	.db #0x01	; 1
      0074A8 01                    1305 	.db #0x01	; 1
      0074A9 7F                    1306 	.db #0x7f	; 127
      0074AA 01                    1307 	.db #0x01	; 1
      0074AB 01                    1308 	.db #0x01	; 1
      0074AC 3F                    1309 	.db #0x3f	; 63
      0074AD 40                    1310 	.db #0x40	; 64
      0074AE 40                    1311 	.db #0x40	; 64
      0074AF 40                    1312 	.db #0x40	; 64
      0074B0 3F                    1313 	.db #0x3f	; 63
      0074B1 1F                    1314 	.db #0x1f	; 31
      0074B2 20                    1315 	.db #0x20	; 32
      0074B3 40                    1316 	.db #0x40	; 64
      0074B4 20                    1317 	.db #0x20	; 32
      0074B5 1F                    1318 	.db #0x1f	; 31
      0074B6 3F                    1319 	.db #0x3f	; 63
      0074B7 40                    1320 	.db #0x40	; 64
      0074B8 38                    1321 	.db #0x38	; 56	'8'
      0074B9 40                    1322 	.db #0x40	; 64
      0074BA 3F                    1323 	.db #0x3f	; 63
      0074BB 63                    1324 	.db #0x63	; 99	'c'
      0074BC 14                    1325 	.db #0x14	; 20
      0074BD 08                    1326 	.db #0x08	; 8
      0074BE 14                    1327 	.db #0x14	; 20
      0074BF 63                    1328 	.db #0x63	; 99	'c'
      0074C0 07                    1329 	.db #0x07	; 7
      0074C1 08                    1330 	.db #0x08	; 8
      0074C2 70                    1331 	.db #0x70	; 112	'p'
      0074C3 08                    1332 	.db #0x08	; 8
      0074C4 07                    1333 	.db #0x07	; 7
      0074C5 61                    1334 	.db #0x61	; 97	'a'
      0074C6 51                    1335 	.db #0x51	; 81	'Q'
      0074C7 49                    1336 	.db #0x49	; 73	'I'
      0074C8 45                    1337 	.db #0x45	; 69	'E'
      0074C9 43                    1338 	.db #0x43	; 67	'C'
      0074CA 00                    1339 	.db #0x00	; 0
      0074CB 7F                    1340 	.db #0x7f	; 127
      0074CC 41                    1341 	.db #0x41	; 65	'A'
      0074CD 41                    1342 	.db #0x41	; 65	'A'
      0074CE 00                    1343 	.db #0x00	; 0
      0074CF 02                    1344 	.db #0x02	; 2
      0074D0 04                    1345 	.db #0x04	; 4
      0074D1 08                    1346 	.db #0x08	; 8
      0074D2 10                    1347 	.db #0x10	; 16
      0074D3 20                    1348 	.db #0x20	; 32
      0074D4 00                    1349 	.db #0x00	; 0
      0074D5 41                    1350 	.db #0x41	; 65	'A'
      0074D6 41                    1351 	.db #0x41	; 65	'A'
      0074D7 7F                    1352 	.db #0x7f	; 127
      0074D8 00                    1353 	.db #0x00	; 0
      0074D9 04                    1354 	.db #0x04	; 4
      0074DA 02                    1355 	.db #0x02	; 2
      0074DB 01                    1356 	.db #0x01	; 1
      0074DC 02                    1357 	.db #0x02	; 2
      0074DD 04                    1358 	.db #0x04	; 4
      0074DE 40                    1359 	.db #0x40	; 64
      0074DF 40                    1360 	.db #0x40	; 64
      0074E0 40                    1361 	.db #0x40	; 64
      0074E1 40                    1362 	.db #0x40	; 64
      0074E2 40                    1363 	.db #0x40	; 64
      0074E3 00                    1364 	.db #0x00	; 0
      0074E4 01                    1365 	.db #0x01	; 1
      0074E5 02                    1366 	.db #0x02	; 2
      0074E6 04                    1367 	.db #0x04	; 4
      0074E7 00                    1368 	.db #0x00	; 0
      0074E8 20                    1369 	.db #0x20	; 32
      0074E9 54                    1370 	.db #0x54	; 84	'T'
      0074EA 54                    1371 	.db #0x54	; 84	'T'
      0074EB 54                    1372 	.db #0x54	; 84	'T'
      0074EC 78                    1373 	.db #0x78	; 120	'x'
      0074ED 7F                    1374 	.db #0x7f	; 127
      0074EE 48                    1375 	.db #0x48	; 72	'H'
      0074EF 44                    1376 	.db #0x44	; 68	'D'
      0074F0 44                    1377 	.db #0x44	; 68	'D'
      0074F1 38                    1378 	.db #0x38	; 56	'8'
      0074F2 38                    1379 	.db #0x38	; 56	'8'
      0074F3 44                    1380 	.db #0x44	; 68	'D'
      0074F4 44                    1381 	.db #0x44	; 68	'D'
      0074F5 44                    1382 	.db #0x44	; 68	'D'
      0074F6 20                    1383 	.db #0x20	; 32
      0074F7 38                    1384 	.db #0x38	; 56	'8'
      0074F8 44                    1385 	.db #0x44	; 68	'D'
      0074F9 44                    1386 	.db #0x44	; 68	'D'
      0074FA 48                    1387 	.db #0x48	; 72	'H'
      0074FB 7F                    1388 	.db #0x7f	; 127
      0074FC 38                    1389 	.db #0x38	; 56	'8'
      0074FD 54                    1390 	.db #0x54	; 84	'T'
      0074FE 54                    1391 	.db #0x54	; 84	'T'
      0074FF 54                    1392 	.db #0x54	; 84	'T'
      007500 18                    1393 	.db #0x18	; 24
      007501 08                    1394 	.db #0x08	; 8
      007502 7E                    1395 	.db #0x7e	; 126
      007503 09                    1396 	.db #0x09	; 9
      007504 01                    1397 	.db #0x01	; 1
      007505 02                    1398 	.db #0x02	; 2
      007506 0C                    1399 	.db #0x0c	; 12
      007507 52                    1400 	.db #0x52	; 82	'R'
      007508 52                    1401 	.db #0x52	; 82	'R'
      007509 52                    1402 	.db #0x52	; 82	'R'
      00750A 3E                    1403 	.db #0x3e	; 62
      00750B 7F                    1404 	.db #0x7f	; 127
      00750C 08                    1405 	.db #0x08	; 8
      00750D 04                    1406 	.db #0x04	; 4
      00750E 04                    1407 	.db #0x04	; 4
      00750F 78                    1408 	.db #0x78	; 120	'x'
      007510 00                    1409 	.db #0x00	; 0
      007511 44                    1410 	.db #0x44	; 68	'D'
      007512 7D                    1411 	.db #0x7d	; 125
      007513 40                    1412 	.db #0x40	; 64
      007514 00                    1413 	.db #0x00	; 0
      007515 20                    1414 	.db #0x20	; 32
      007516 40                    1415 	.db #0x40	; 64
      007517 44                    1416 	.db #0x44	; 68	'D'
      007518 3D                    1417 	.db #0x3d	; 61
      007519 00                    1418 	.db #0x00	; 0
      00751A 7F                    1419 	.db #0x7f	; 127
      00751B 10                    1420 	.db #0x10	; 16
      00751C 28                    1421 	.db #0x28	; 40
      00751D 44                    1422 	.db #0x44	; 68	'D'
      00751E 00                    1423 	.db #0x00	; 0
      00751F 00                    1424 	.db #0x00	; 0
      007520 41                    1425 	.db #0x41	; 65	'A'
      007521 7F                    1426 	.db #0x7f	; 127
      007522 40                    1427 	.db #0x40	; 64
      007523 00                    1428 	.db #0x00	; 0
      007524 7C                    1429 	.db #0x7c	; 124
      007525 04                    1430 	.db #0x04	; 4
      007526 18                    1431 	.db #0x18	; 24
      007527 04                    1432 	.db #0x04	; 4
      007528 78                    1433 	.db #0x78	; 120	'x'
      007529 7C                    1434 	.db #0x7c	; 124
      00752A 08                    1435 	.db #0x08	; 8
      00752B 04                    1436 	.db #0x04	; 4
      00752C 04                    1437 	.db #0x04	; 4
      00752D 78                    1438 	.db #0x78	; 120	'x'
      00752E 38                    1439 	.db #0x38	; 56	'8'
      00752F 44                    1440 	.db #0x44	; 68	'D'
      007530 44                    1441 	.db #0x44	; 68	'D'
      007531 44                    1442 	.db #0x44	; 68	'D'
      007532 38                    1443 	.db #0x38	; 56	'8'
      007533 7C                    1444 	.db #0x7c	; 124
      007534 14                    1445 	.db #0x14	; 20
      007535 14                    1446 	.db #0x14	; 20
      007536 14                    1447 	.db #0x14	; 20
      007537 08                    1448 	.db #0x08	; 8
      007538 08                    1449 	.db #0x08	; 8
      007539 14                    1450 	.db #0x14	; 20
      00753A 14                    1451 	.db #0x14	; 20
      00753B 14                    1452 	.db #0x14	; 20
      00753C 7C                    1453 	.db #0x7c	; 124
      00753D 7C                    1454 	.db #0x7c	; 124
      00753E 08                    1455 	.db #0x08	; 8
      00753F 04                    1456 	.db #0x04	; 4
      007540 04                    1457 	.db #0x04	; 4
      007541 08                    1458 	.db #0x08	; 8
      007542 48                    1459 	.db #0x48	; 72	'H'
      007543 54                    1460 	.db #0x54	; 84	'T'
      007544 54                    1461 	.db #0x54	; 84	'T'
      007545 54                    1462 	.db #0x54	; 84	'T'
      007546 20                    1463 	.db #0x20	; 32
      007547 04                    1464 	.db #0x04	; 4
      007548 3F                    1465 	.db #0x3f	; 63
      007549 44                    1466 	.db #0x44	; 68	'D'
      00754A 40                    1467 	.db #0x40	; 64
      00754B 20                    1468 	.db #0x20	; 32
      00754C 3C                    1469 	.db #0x3c	; 60
      00754D 40                    1470 	.db #0x40	; 64
      00754E 40                    1471 	.db #0x40	; 64
      00754F 20                    1472 	.db #0x20	; 32
      007550 7C                    1473 	.db #0x7c	; 124
      007551 1C                    1474 	.db #0x1c	; 28
      007552 20                    1475 	.db #0x20	; 32
      007553 40                    1476 	.db #0x40	; 64
      007554 20                    1477 	.db #0x20	; 32
      007555 1C                    1478 	.db #0x1c	; 28
      007556 3C                    1479 	.db #0x3c	; 60
      007557 40                    1480 	.db #0x40	; 64
      007558 30                    1481 	.db #0x30	; 48	'0'
      007559 40                    1482 	.db #0x40	; 64
      00755A 3C                    1483 	.db #0x3c	; 60
      00755B 44                    1484 	.db #0x44	; 68	'D'
      00755C 28                    1485 	.db #0x28	; 40
      00755D 10                    1486 	.db #0x10	; 16
      00755E 28                    1487 	.db #0x28	; 40
      00755F 44                    1488 	.db #0x44	; 68	'D'
      007560 0C                    1489 	.db #0x0c	; 12
      007561 50                    1490 	.db #0x50	; 80	'P'
      007562 50                    1491 	.db #0x50	; 80	'P'
      007563 50                    1492 	.db #0x50	; 80	'P'
      007564 3C                    1493 	.db #0x3c	; 60
      007565 44                    1494 	.db #0x44	; 68	'D'
      007566 64                    1495 	.db #0x64	; 100	'd'
      007567 54                    1496 	.db #0x54	; 84	'T'
      007568 4C                    1497 	.db #0x4c	; 76	'L'
      007569 44                    1498 	.db #0x44	; 68	'D'
      00756A 00                    1499 	.db #0x00	; 0
      00756B 08                    1500 	.db #0x08	; 8
      00756C 36                    1501 	.db #0x36	; 54	'6'
      00756D 41                    1502 	.db #0x41	; 65	'A'
      00756E 00                    1503 	.db #0x00	; 0
      00756F 00                    1504 	.db #0x00	; 0
      007570 00                    1505 	.db #0x00	; 0
      007571 7F                    1506 	.db #0x7f	; 127
      007572 00                    1507 	.db #0x00	; 0
      007573 00                    1508 	.db #0x00	; 0
      007574 00                    1509 	.db #0x00	; 0
      007575 41                    1510 	.db #0x41	; 65	'A'
      007576 36                    1511 	.db #0x36	; 54	'6'
      007577 08                    1512 	.db #0x08	; 8
      007578 00                    1513 	.db #0x00	; 0
      007579 10                    1514 	.db #0x10	; 16
      00757A 08                    1515 	.db #0x08	; 8
      00757B 08                    1516 	.db #0x08	; 8
      00757C 10                    1517 	.db #0x10	; 16
      00757D 08                    1518 	.db #0x08	; 8
      00757E 00                    1519 	.db #0x00	; 0
      00757F 00                    1520 	.db #0x00	; 0
      007580 00                    1521 	.db #0x00	; 0
      007581 00                    1522 	.db #0x00	; 0
      007582 00                    1523 	.db #0x00	; 0
                                   1524 	.area XINIT   (CODE)
                                   1525 	.area CABS    (ABS,CODE)
