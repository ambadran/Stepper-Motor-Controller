                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer_hal
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
                                    156 	.globl _startTimer_PARM_5
                                    157 	.globl _startTimer_PARM_4
                                    158 	.globl _startTimer_PARM_3
                                    159 	.globl _startTimer_PARM_2
                                    160 	.globl _DMA_UR4R_TXAL
                                    161 	.globl _DMA_UR4R_TXAH
                                    162 	.globl _DMA_UR4R_DONE
                                    163 	.globl _DMA_UR4R_AMT
                                    164 	.globl _DMA_UR4R_STA
                                    165 	.globl _DMA_UR4R_CR
                                    166 	.globl _DMA_UR4R_CFG
                                    167 	.globl _DMA_UR4T_TXAL
                                    168 	.globl _DMA_UR4T_TXAH
                                    169 	.globl _DMA_UR4T_DONE
                                    170 	.globl _DMA_UR4T_AMT
                                    171 	.globl _DMA_UR4T_STA
                                    172 	.globl _DMA_UR4T_CR
                                    173 	.globl _DMA_UR4T_CFG
                                    174 	.globl _DMA_UR3R_TXAL
                                    175 	.globl _DMA_UR3R_TXAH
                                    176 	.globl _DMA_UR3R_DONE
                                    177 	.globl _DMA_UR3R_AMT
                                    178 	.globl _DMA_UR3R_STA
                                    179 	.globl _DMA_UR3R_CR
                                    180 	.globl _DMA_UR3R_CFG
                                    181 	.globl _DMA_UR3T_TXAL
                                    182 	.globl _DMA_UR3T_TXAH
                                    183 	.globl _DMA_UR3T_DONE
                                    184 	.globl _DMA_UR3T_AMT
                                    185 	.globl _DMA_UR3T_STA
                                    186 	.globl _DMA_UR3T_CR
                                    187 	.globl _DMA_UR3T_CFG
                                    188 	.globl _DMA_UR2R_TXAL
                                    189 	.globl _DMA_UR2R_TXAH
                                    190 	.globl _DMA_UR2R_DONE
                                    191 	.globl _DMA_UR2R_AMT
                                    192 	.globl _DMA_UR2R_STA
                                    193 	.globl _DMA_UR2R_CR
                                    194 	.globl _DMA_UR2R_CFG
                                    195 	.globl _DMA_UR2T_TXAL
                                    196 	.globl _DMA_UR2T_TXAH
                                    197 	.globl _DMA_UR2T_DONE
                                    198 	.globl _DMA_UR2T_AMT
                                    199 	.globl _DMA_UR2T_STA
                                    200 	.globl _DMA_UR2T_CR
                                    201 	.globl _DMA_UR2T_CFG
                                    202 	.globl _DMA_UR1R_TXAL
                                    203 	.globl _DMA_UR1R_TXAH
                                    204 	.globl _DMA_UR1R_DONE
                                    205 	.globl _DMA_UR1R_AMT
                                    206 	.globl _DMA_UR1R_STA
                                    207 	.globl _DMA_UR1R_CR
                                    208 	.globl _DMA_UR1R_CFG
                                    209 	.globl _DMA_UR1T_TXAL
                                    210 	.globl _DMA_UR1T_TXAH
                                    211 	.globl _DMA_UR1T_DONE
                                    212 	.globl _DMA_URTX_AMT
                                    213 	.globl _DMA_UR1T_STA
                                    214 	.globl _DMA_UR1T_CR
                                    215 	.globl _DMA_UR1T_CFG
                                    216 	.globl _TM4PS
                                    217 	.globl _TM3PS
                                    218 	.globl _TM2PS
                                    219 	.globl _IRC48MCR
                                    220 	.globl _IRCDB
                                    221 	.globl _MCLKOCR
                                    222 	.globl _CKSEL
                                    223 	.globl _IRC32KCR
                                    224 	.globl _XOSCCR
                                    225 	.globl _HIRCCR
                                    226 	.globl _CLKDIV
                                    227 	.globl _DMA_SPI_CFG2
                                    228 	.globl _DMA_SPI_RXAL
                                    229 	.globl _DMA_SPI_RXAH
                                    230 	.globl _DMA_SPI_TXAL
                                    231 	.globl _DMA_SPI_TXAH
                                    232 	.globl _DMA_SPI_DONE
                                    233 	.globl _DMA_SPI_AMT
                                    234 	.globl _DMA_SPI_STA
                                    235 	.globl _DMA_SPI_CR
                                    236 	.globl _DMA_SPI_CFG
                                    237 	.globl _SSEC
                                    238 	.globl _SEC
                                    239 	.globl _MIN
                                    240 	.globl _HOUR
                                    241 	.globl _DAY
                                    242 	.globl _MONTH
                                    243 	.globl _YEAR
                                    244 	.globl _INISSEC
                                    245 	.globl _INISEC
                                    246 	.globl _INIMIN
                                    247 	.globl _INIHOUR
                                    248 	.globl _INIDAY
                                    249 	.globl _INIMONTH
                                    250 	.globl _INIYEAR
                                    251 	.globl _ALASSEC
                                    252 	.globl _ALASEC
                                    253 	.globl _ALAMIN
                                    254 	.globl _ALAHOUR
                                    255 	.globl _RTCIF
                                    256 	.globl _RTCIEN
                                    257 	.globl _RTCCFG
                                    258 	.globl _RTCCR
                                    259 	.globl _PWMB_OISR
                                    260 	.globl _PWMB_DTR
                                    261 	.globl _PWMB_BKR
                                    262 	.globl _PWMB_CCR4L
                                    263 	.globl _PWMB_CCR4H
                                    264 	.globl _PWMB_CCR3L
                                    265 	.globl _PWMB_CCR3H
                                    266 	.globl _PWMB_CCR2L
                                    267 	.globl _PWMB_CCR2H
                                    268 	.globl _PWMB_CCR1L
                                    269 	.globl _PWMB_CCR1H
                                    270 	.globl _PWMB_RCR
                                    271 	.globl _PWMB_ARRL
                                    272 	.globl _PWMB_ARRH
                                    273 	.globl _PWMB_PSCRL
                                    274 	.globl _PWMB_PSCRH
                                    275 	.globl _PWMB_CNTRL
                                    276 	.globl _PWMB_CNTRH
                                    277 	.globl _PWMB_CCER2
                                    278 	.globl _PWMB_CCER1
                                    279 	.globl _PWMB_CCMR4
                                    280 	.globl _PWMB_CCMR3
                                    281 	.globl _PWMB_CCMR2
                                    282 	.globl _PWMB_CCMR1
                                    283 	.globl _PWMB_EGR
                                    284 	.globl _PWMB_SR2
                                    285 	.globl _PWMB_SR1
                                    286 	.globl _PWMB_IER
                                    287 	.globl _PWMB_ETR
                                    288 	.globl _PWMB_SMCR
                                    289 	.globl _PWMB_CR2
                                    290 	.globl _PWMB_CR1
                                    291 	.globl _PWMA_OISR
                                    292 	.globl _PWMA_DTR
                                    293 	.globl _PWMA_BKR
                                    294 	.globl _PWMA_CCR4L
                                    295 	.globl _PWMA_CCR4H
                                    296 	.globl _PWMA_CCR3L
                                    297 	.globl _PWMA_CCR3H
                                    298 	.globl _PWMA_CCR2L
                                    299 	.globl _PWMA_CCR2H
                                    300 	.globl _PWMA_CCR1L
                                    301 	.globl _PWMA_CCR1H
                                    302 	.globl _PWMA_RCR
                                    303 	.globl _PWMA_ARRL
                                    304 	.globl _PWMA_ARRH
                                    305 	.globl _PWMA_PSCRL
                                    306 	.globl _PWMA_PSCRH
                                    307 	.globl _PWMA_CNTRL
                                    308 	.globl _PWMA_CNTRH
                                    309 	.globl _PWMA_CCER2
                                    310 	.globl _PWMA_CCER1
                                    311 	.globl _PWMA_CCMR4
                                    312 	.globl _PWMA_CCMR3
                                    313 	.globl _PWMA_CCMR2
                                    314 	.globl _PWMA_CCMR1
                                    315 	.globl _PWMA_EGR
                                    316 	.globl _PWMA_SR2
                                    317 	.globl _PWMA_SR1
                                    318 	.globl _PWMA_IER
                                    319 	.globl _PWMA_ETR
                                    320 	.globl _PWMA_SMCR
                                    321 	.globl _PWMA_CR2
                                    322 	.globl _PWMA_CR1
                                    323 	.globl _PWMB_IOAUX
                                    324 	.globl _PWMB_PS
                                    325 	.globl _PWMB_ENO
                                    326 	.globl _PWMB_ETRPS
                                    327 	.globl _PWMA_IOAUX
                                    328 	.globl _PWMA_PS
                                    329 	.globl _PWMA_ENO
                                    330 	.globl _PWMA_ETRPS
                                    331 	.globl _RSTFLAG
                                    332 	.globl _SPFUNC
                                    333 	.globl _OPCON
                                    334 	.globl _ARCON
                                    335 	.globl _MD4
                                    336 	.globl _MD5
                                    337 	.globl _MD0
                                    338 	.globl _MD1
                                    339 	.globl _MD2
                                    340 	.globl _MD3
                                    341 	.globl _DMA_LCM_RXAL
                                    342 	.globl _DMA_LCM_RXAH
                                    343 	.globl _DMA_LCM_TXAL
                                    344 	.globl _DMA_LCM_TXAH
                                    345 	.globl _DMA_LCM_DONE
                                    346 	.globl _DMA_LCM_AMT
                                    347 	.globl _DMA_LCM_STA
                                    348 	.globl _DMA_LCM_CR
                                    349 	.globl _DMA_LCM_CFG
                                    350 	.globl _LCMIDDAT
                                    351 	.globl _LCMIDDATH
                                    352 	.globl _LCMIDDATL
                                    353 	.globl _LCMSTA
                                    354 	.globl _LCMCR
                                    355 	.globl _LCMCFG2
                                    356 	.globl _LCMCFG
                                    357 	.globl _I2CMSAUX
                                    358 	.globl _I2CRXD
                                    359 	.globl _I2CTXD
                                    360 	.globl _I2CSLADR
                                    361 	.globl _I2CSLST
                                    362 	.globl _I2CSLCR
                                    363 	.globl _I2CMSST
                                    364 	.globl _I2CMSCR
                                    365 	.globl _I2CCFG
                                    366 	.globl _PINIPH
                                    367 	.globl _PINIPL
                                    368 	.globl _P5IE
                                    369 	.globl _P5DR
                                    370 	.globl _P5SR
                                    371 	.globl _P5NCS
                                    372 	.globl _P5PU
                                    373 	.globl _P5WKUE
                                    374 	.globl _P5IM1
                                    375 	.globl _P5IM0
                                    376 	.globl _P5INTF
                                    377 	.globl _P5INTE
                                    378 	.globl _P3IE
                                    379 	.globl _P3DR
                                    380 	.globl _P3SR
                                    381 	.globl _P3NCS
                                    382 	.globl _P3PU
                                    383 	.globl _P3WKUE
                                    384 	.globl _P3IM1
                                    385 	.globl _P3IM0
                                    386 	.globl _P3INTF
                                    387 	.globl _P3INTE
                                    388 	.globl _P2IE
                                    389 	.globl _P2DR
                                    390 	.globl _P2SR
                                    391 	.globl _P2NCS
                                    392 	.globl _P2PU
                                    393 	.globl _P2WKUE
                                    394 	.globl _P2IM1
                                    395 	.globl _P2IM0
                                    396 	.globl _P2INTF
                                    397 	.globl _P2INTE
                                    398 	.globl _P1IE
                                    399 	.globl _P1DR
                                    400 	.globl _P1SR
                                    401 	.globl _P1NCS
                                    402 	.globl _P1PU
                                    403 	.globl _P1WKUE
                                    404 	.globl _P1IM1
                                    405 	.globl _P1IM0
                                    406 	.globl _P1INTF
                                    407 	.globl _P1INTE
                                    408 	.globl _DMA_M2M_RXAL
                                    409 	.globl _DMA_M2M_RXAH
                                    410 	.globl _DMA_M2M_TXAL
                                    411 	.globl _DMA_M2M_TXAH
                                    412 	.globl _DMA_M2M_DONE
                                    413 	.globl _DMA_M2M_AMT
                                    414 	.globl _DMA_M2M_STA
                                    415 	.globl _DMA_M2M_CR
                                    416 	.globl _DMA_M2M_CFG
                                    417 	.globl _CMPEXCFG
                                    418 	.globl _DMA_ADC_CHSW1
                                    419 	.globl _DMA_ADC_CHSW0
                                    420 	.globl _DMA_ADC_CFG2
                                    421 	.globl _DMA_ADC_RXAL
                                    422 	.globl _DMA_ADC_RXAH
                                    423 	.globl _DMA_ADC_STA
                                    424 	.globl _DMA_ADC_CR
                                    425 	.globl _DMA_ADC_CFG
                                    426 	.globl _ADCEXCFG
                                    427 	.globl _ADCTIM
                                    428 	.globl _startTimer
                                    429 	.globl _stopTimer
                                    430 ;--------------------------------------------------------
                                    431 ; special function registers
                                    432 ;--------------------------------------------------------
                                    433 	.area RSEG    (ABS,DATA)
      000000                        434 	.org 0x0000
                           0000BC   435 _ADC_CONTR	=	0x00bc
                           0000BD   436 _ADC_RESH	=	0x00bd
                           0000BE   437 _ADC_RESL	=	0x00be
                           00BDBE   438 _ADC_RES	=	0xbdbe
                           0000DE   439 _ADCCFG	=	0x00de
                           0000FA   440 _DMA_ADC_AMT	=	0x00fa
                           0000E6   441 _CMPCR1	=	0x00e6
                           0000E7   442 _CMPCR2	=	0x00e7
                           000082   443 _DPL	=	0x0082
                           000083   444 _DPH	=	0x0083
                           008382   445 _DP	=	0x8382
                           0000E3   446 _DPS	=	0x00e3
                           0000E4   447 _DPL1	=	0x00e4
                           0000E5   448 _DPH1	=	0x00e5
                           0000AE   449 _TA	=	0x00ae
                           000090   450 _P1	=	0x0090
                           000091   451 _P1M1	=	0x0091
                           000092   452 _P1M0	=	0x0092
                           0000A0   453 _P2	=	0x00a0
                           000095   454 _P2M1	=	0x0095
                           000096   455 _P2M0	=	0x0096
                           0000B0   456 _P3	=	0x00b0
                           0000B1   457 _P3M1	=	0x00b1
                           0000B2   458 _P3M0	=	0x00b2
                           0000C8   459 _P5	=	0x00c8
                           0000C9   460 _P5M1	=	0x00c9
                           0000CA   461 _P5M0	=	0x00ca
                           0000C2   462 _IAP_DATA	=	0x00c2
                           0000C3   463 _IAP_ADDRH	=	0x00c3
                           0000C4   464 _IAP_ADDRL	=	0x00c4
                           00C3C4   465 _IAP_ADDR	=	0xc3c4
                           0000C5   466 _IAP_CMD	=	0x00c5
                           0000C6   467 _IAP_TRIG	=	0x00c6
                           0000C7   468 _IAP_CONTR	=	0x00c7
                           0000F5   469 _IAP_TPS	=	0x00f5
                           00008F   470 _INT_CLKO	=	0x008f
                           0000A8   471 _IE1	=	0x00a8
                           0000B8   472 _IP1L	=	0x00b8
                           0000B7   473 _IP1H	=	0x00b7
                           0000AF   474 _IE2	=	0x00af
                           0000B5   475 _IP2L	=	0x00b5
                           0000B6   476 _IP2H	=	0x00b6
                           0000DF   477 _IP3L	=	0x00df
                           0000EE   478 _IP3H	=	0x00ee
                           000081   479 _SP	=	0x0081
                           0000D0   480 _PSW	=	0x00d0
                           0000E0   481 _ACC	=	0x00e0
                           0000F0   482 _B	=	0x00f0
                           000087   483 _PCON	=	0x0087
                           0000FF   484 _RSTCFG	=	0x00ff
                           0000A2   485 _P_SW1	=	0x00a2
                           0000BA   486 _P_SW2	=	0x00ba
                           0000A1   487 _BUS_SPEED	=	0x00a1
                           0000AA   488 _WKTCL	=	0x00aa
                           0000AB   489 _WKTCH	=	0x00ab
                           00ABAA   490 _WKTC	=	0xabaa
                           0000CD   491 _SPSTAT	=	0x00cd
                           0000CE   492 _SPCTL	=	0x00ce
                           0000CF   493 _SPDAT	=	0x00cf
                           00009D   494 _IRCBAND	=	0x009d
                           00009E   495 _LIRTRIM	=	0x009e
                           00009F   496 _IRTRIM	=	0x009f
                           000088   497 _TCON	=	0x0088
                           000089   498 _TMOD	=	0x0089
                           00008A   499 _T0L	=	0x008a
                           00008C   500 _T0H	=	0x008c
                           008C8A   501 _T0	=	0x8c8a
                           00008B   502 _T1L	=	0x008b
                           00008D   503 _T1H	=	0x008d
                           008D8B   504 _T1	=	0x8d8b
                           0000D7   505 _T2L	=	0x00d7
                           0000D6   506 _T2H	=	0x00d6
                           00D6D7   507 _T2	=	0xd6d7
                           00008E   508 _AUXR	=	0x008e
                           0000C1   509 _WDT_CONTR	=	0x00c1
                           0000D1   510 _T4T3M	=	0x00d1
                           0000D2   511 _T4H	=	0x00d2
                           0000D3   512 _T4L	=	0x00d3
                           00D2D3   513 _T4	=	0xd2d3
                           0000D4   514 _T3H	=	0x00d4
                           0000D5   515 _T3L	=	0x00d5
                           00D4D5   516 _T3	=	0xd4d5
                           0000EF   517 _AUXINTIF	=	0x00ef
                           0000A9   518 _SADDR	=	0x00a9
                           0000B9   519 _SADEN	=	0x00b9
                           000098   520 _S1CON	=	0x0098
                           000099   521 _S1BUF	=	0x0099
                           00009A   522 _S2CON	=	0x009a
                           00009B   523 _S2BUF	=	0x009b
                           0000AC   524 _S3CON	=	0x00ac
                           0000AD   525 _S3BUF	=	0x00ad
                           000084   526 _S4CON	=	0x0084
                           000085   527 _S4BUF	=	0x0085
                           0000DC   528 _USBCLK	=	0x00dc
                           0000EC   529 _USBDAT	=	0x00ec
                           0000F4   530 _USBCON	=	0x00f4
                           0000FC   531 _USBADR	=	0x00fc
                                    532 ;--------------------------------------------------------
                                    533 ; special function bits
                                    534 ;--------------------------------------------------------
                                    535 	.area RSEG    (ABS,DATA)
      000000                        536 	.org 0x0000
                           000090   537 _P1_0	=	0x0090
                           000091   538 _P1_1	=	0x0091
                           000092   539 _P1_2	=	0x0092
                           000093   540 _P1_3	=	0x0093
                           000094   541 _P1_4	=	0x0094
                           000095   542 _P1_5	=	0x0095
                           000096   543 _P1_6	=	0x0096
                           000097   544 _P1_7	=	0x0097
                           0000A0   545 _P2_0	=	0x00a0
                           0000A1   546 _P2_1	=	0x00a1
                           0000A2   547 _P2_2	=	0x00a2
                           0000A3   548 _P2_3	=	0x00a3
                           0000A4   549 _P2_4	=	0x00a4
                           0000A5   550 _P2_5	=	0x00a5
                           0000A6   551 _P2_6	=	0x00a6
                           0000A7   552 _P2_7	=	0x00a7
                           0000B0   553 _P3_0	=	0x00b0
                           0000B1   554 _P3_1	=	0x00b1
                           0000B2   555 _P3_2	=	0x00b2
                           0000B3   556 _P3_3	=	0x00b3
                           0000B4   557 _P3_4	=	0x00b4
                           0000B5   558 _P3_5	=	0x00b5
                           0000B6   559 _P3_6	=	0x00b6
                           0000B7   560 _P3_7	=	0x00b7
                           0000C8   561 _P5_0	=	0x00c8
                           0000C9   562 _P5_1	=	0x00c9
                           0000CA   563 _P5_2	=	0x00ca
                           0000CB   564 _P5_3	=	0x00cb
                           0000CC   565 _P5_4	=	0x00cc
                           0000CD   566 _P5_5	=	0x00cd
                           000088   567 _INT0TR	=	0x0088
                           00008A   568 _INT1TR	=	0x008a
                           0000A8   569 _INT0IE	=	0x00a8
                           0000AA   570 _INT1IE	=	0x00aa
                           0000AF   571 _EA	=	0x00af
                           0000D0   572 _P	=	0x00d0
                           0000D1   573 _F1	=	0x00d1
                           0000D2   574 _OV	=	0x00d2
                           0000D3   575 _RS0	=	0x00d3
                           0000D4   576 _RS1	=	0x00d4
                           0000D5   577 _F0	=	0x00d5
                           0000D6   578 _AC	=	0x00d6
                           0000D7   579 _CY	=	0x00d7
                           00008C   580 _T0RUN	=	0x008c
                           00008E   581 _T1RUN	=	0x008e
                           0000A9   582 _T0IE	=	0x00a9
                           0000AB   583 _T1IE	=	0x00ab
                           00009F   584 _S1SM0_FE	=	0x009f
                                    585 ;--------------------------------------------------------
                                    586 ; overlayable register banks
                                    587 ;--------------------------------------------------------
                                    588 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        589 	.ds 8
                                    590 ;--------------------------------------------------------
                                    591 ; internal ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area DSEG    (DATA)
      000010                        594 _startTimer_sloc0_1_0:
      000010                        595 	.ds 2
                                    596 ;--------------------------------------------------------
                                    597 ; overlayable items in internal ram 
                                    598 ;--------------------------------------------------------
                                    599 ;--------------------------------------------------------
                                    600 ; indirectly addressable internal ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area ISEG    (DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; absolute internal ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area IABS    (ABS,DATA)
                                    607 	.area IABS    (ABS,DATA)
                                    608 ;--------------------------------------------------------
                                    609 ; bit data
                                    610 ;--------------------------------------------------------
                                    611 	.area BSEG    (BIT)
                                    612 ;--------------------------------------------------------
                                    613 ; paged external ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area PSEG    (PAG,XDATA)
                                    616 ;--------------------------------------------------------
                                    617 ; external ram data
                                    618 ;--------------------------------------------------------
                                    619 	.area XSEG    (XDATA)
                           00FEA8   620 _ADCTIM	=	0xfea8
                           00FEAD   621 _ADCEXCFG	=	0xfead
                           00FA10   622 _DMA_ADC_CFG	=	0xfa10
                           00FA11   623 _DMA_ADC_CR	=	0xfa11
                           00FA12   624 _DMA_ADC_STA	=	0xfa12
                           00FA17   625 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   626 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   627 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   628 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   629 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   630 _CMPEXCFG	=	0xfeae
                           00FA00   631 _DMA_M2M_CFG	=	0xfa00
                           00FA01   632 _DMA_M2M_CR	=	0xfa01
                           00FA02   633 _DMA_M2M_STA	=	0xfa02
                           00FA03   634 _DMA_M2M_AMT	=	0xfa03
                           00FA04   635 _DMA_M2M_DONE	=	0xfa04
                           00FA05   636 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   637 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   638 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   639 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   640 _P1INTE	=	0xfd01
                           00FD11   641 _P1INTF	=	0xfd11
                           00FD21   642 _P1IM0	=	0xfd21
                           00FD31   643 _P1IM1	=	0xfd31
                           00FD41   644 _P1WKUE	=	0xfd41
                           00FE11   645 _P1PU	=	0xfe11
                           00FE19   646 _P1NCS	=	0xfe19
                           00FE21   647 _P1SR	=	0xfe21
                           00FE29   648 _P1DR	=	0xfe29
                           00FE31   649 _P1IE	=	0xfe31
                           00FD02   650 _P2INTE	=	0xfd02
                           00FD12   651 _P2INTF	=	0xfd12
                           00FD22   652 _P2IM0	=	0xfd22
                           00FD32   653 _P2IM1	=	0xfd32
                           00FD42   654 _P2WKUE	=	0xfd42
                           00FE12   655 _P2PU	=	0xfe12
                           00FE1A   656 _P2NCS	=	0xfe1a
                           00FE22   657 _P2SR	=	0xfe22
                           00FE2A   658 _P2DR	=	0xfe2a
                           00FE32   659 _P2IE	=	0xfe32
                           00FD03   660 _P3INTE	=	0xfd03
                           00FD13   661 _P3INTF	=	0xfd13
                           00FD23   662 _P3IM0	=	0xfd23
                           00FD33   663 _P3IM1	=	0xfd33
                           00FD43   664 _P3WKUE	=	0xfd43
                           00FE13   665 _P3PU	=	0xfe13
                           00FE1B   666 _P3NCS	=	0xfe1b
                           00FE23   667 _P3SR	=	0xfe23
                           00FE2B   668 _P3DR	=	0xfe2b
                           00FE33   669 _P3IE	=	0xfe33
                           00FD05   670 _P5INTE	=	0xfd05
                           00FD15   671 _P5INTF	=	0xfd15
                           00FD25   672 _P5IM0	=	0xfd25
                           00FD35   673 _P5IM1	=	0xfd35
                           00FD45   674 _P5WKUE	=	0xfd45
                           00FE15   675 _P5PU	=	0xfe15
                           00FE1D   676 _P5NCS	=	0xfe1d
                           00FE25   677 _P5SR	=	0xfe25
                           00FE2D   678 _P5DR	=	0xfe2d
                           00FE35   679 _P5IE	=	0xfe35
                           00FD60   680 _PINIPL	=	0xfd60
                           00FD61   681 _PINIPH	=	0xfd61
                           00FE80   682 _I2CCFG	=	0xfe80
                           00FE81   683 _I2CMSCR	=	0xfe81
                           00FE82   684 _I2CMSST	=	0xfe82
                           00FE83   685 _I2CSLCR	=	0xfe83
                           00FE84   686 _I2CSLST	=	0xfe84
                           00FE85   687 _I2CSLADR	=	0xfe85
                           00FE86   688 _I2CTXD	=	0xfe86
                           00FE87   689 _I2CRXD	=	0xfe87
                           00FE88   690 _I2CMSAUX	=	0xfe88
                           00FE50   691 _LCMCFG	=	0xfe50
                           00FE51   692 _LCMCFG2	=	0xfe51
                           00FE52   693 _LCMCR	=	0xfe52
                           00FE53   694 _LCMSTA	=	0xfe53
                           00FE54   695 _LCMIDDATL	=	0xfe54
                           00FE55   696 _LCMIDDATH	=	0xfe55
                           00FE54   697 _LCMIDDAT	=	0xfe54
                           00FA70   698 _DMA_LCM_CFG	=	0xfa70
                           00FA71   699 _DMA_LCM_CR	=	0xfa71
                           00FA72   700 _DMA_LCM_STA	=	0xfa72
                           00FA73   701 _DMA_LCM_AMT	=	0xfa73
                           00FA74   702 _DMA_LCM_DONE	=	0xfa74
                           00FA75   703 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   704 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   705 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   706 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   707 _MD3	=	0xfcf0
                           00FCF1   708 _MD2	=	0xfcf1
                           00FCF2   709 _MD1	=	0xfcf2
                           00FCF3   710 _MD0	=	0xfcf3
                           00FCF4   711 _MD5	=	0xfcf4
                           00FCF5   712 _MD4	=	0xfcf5
                           00FCF6   713 _ARCON	=	0xfcf6
                           00FCF7   714 _OPCON	=	0xfcf7
                           00FE08   715 _SPFUNC	=	0xfe08
                           00FE09   716 _RSTFLAG	=	0xfe09
                           00FEB0   717 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   718 _PWMA_ENO	=	0xfeb1
                           00FEB2   719 _PWMA_PS	=	0xfeb2
                           00FEB3   720 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   721 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   722 _PWMB_ENO	=	0xfeb5
                           00FEB6   723 _PWMB_PS	=	0xfeb6
                           00FEB7   724 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   725 _PWMA_CR1	=	0xfec0
                           00FEC1   726 _PWMA_CR2	=	0xfec1
                           00FEC2   727 _PWMA_SMCR	=	0xfec2
                           00FEC3   728 _PWMA_ETR	=	0xfec3
                           00FEC4   729 _PWMA_IER	=	0xfec4
                           00FEC5   730 _PWMA_SR1	=	0xfec5
                           00FEC6   731 _PWMA_SR2	=	0xfec6
                           00FEC7   732 _PWMA_EGR	=	0xfec7
                           00FEC8   733 _PWMA_CCMR1	=	0xfec8
                           00FEC9   734 _PWMA_CCMR2	=	0xfec9
                           00FECA   735 _PWMA_CCMR3	=	0xfeca
                           00FECB   736 _PWMA_CCMR4	=	0xfecb
                           00FECC   737 _PWMA_CCER1	=	0xfecc
                           00FECD   738 _PWMA_CCER2	=	0xfecd
                           00FECE   739 _PWMA_CNTRH	=	0xfece
                           00FECF   740 _PWMA_CNTRL	=	0xfecf
                           00FED0   741 _PWMA_PSCRH	=	0xfed0
                           00FED1   742 _PWMA_PSCRL	=	0xfed1
                           00FED2   743 _PWMA_ARRH	=	0xfed2
                           00FED3   744 _PWMA_ARRL	=	0xfed3
                           00FED4   745 _PWMA_RCR	=	0xfed4
                           00FED5   746 _PWMA_CCR1H	=	0xfed5
                           00FED6   747 _PWMA_CCR1L	=	0xfed6
                           00FED7   748 _PWMA_CCR2H	=	0xfed7
                           00FED8   749 _PWMA_CCR2L	=	0xfed8
                           00FED9   750 _PWMA_CCR3H	=	0xfed9
                           00FEDA   751 _PWMA_CCR3L	=	0xfeda
                           00FEDB   752 _PWMA_CCR4H	=	0xfedb
                           00FEDC   753 _PWMA_CCR4L	=	0xfedc
                           00FEDD   754 _PWMA_BKR	=	0xfedd
                           00FEDE   755 _PWMA_DTR	=	0xfede
                           00FEDF   756 _PWMA_OISR	=	0xfedf
                           00FEE0   757 _PWMB_CR1	=	0xfee0
                           00FEE1   758 _PWMB_CR2	=	0xfee1
                           00FEE2   759 _PWMB_SMCR	=	0xfee2
                           00FEE3   760 _PWMB_ETR	=	0xfee3
                           00FEE4   761 _PWMB_IER	=	0xfee4
                           00FEE5   762 _PWMB_SR1	=	0xfee5
                           00FEE6   763 _PWMB_SR2	=	0xfee6
                           00FEE7   764 _PWMB_EGR	=	0xfee7
                           00FEE8   765 _PWMB_CCMR1	=	0xfee8
                           00FEE9   766 _PWMB_CCMR2	=	0xfee9
                           00FEEA   767 _PWMB_CCMR3	=	0xfeea
                           00FEEB   768 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   769 _PWMB_CCER1	=	0xfeec
                           00FEED   770 _PWMB_CCER2	=	0xfeed
                           00FEEE   771 _PWMB_CNTRH	=	0xfeee
                           00FEEF   772 _PWMB_CNTRL	=	0xfeef
                           00FEF0   773 _PWMB_PSCRH	=	0xfef0
                           00FEF1   774 _PWMB_PSCRL	=	0xfef1
                           00FEF2   775 _PWMB_ARRH	=	0xfef2
                           00FEF3   776 _PWMB_ARRL	=	0xfef3
                           00FEF4   777 _PWMB_RCR	=	0xfef4
                           00FEF5   778 _PWMB_CCR1H	=	0xfef5
                           00FEF6   779 _PWMB_CCR1L	=	0xfef6
                           00FEF7   780 _PWMB_CCR2H	=	0xfef7
                           00FEF8   781 _PWMB_CCR2L	=	0xfef8
                           00FEF9   782 _PWMB_CCR3H	=	0xfef9
                           00FEFA   783 _PWMB_CCR3L	=	0xfefa
                           00FEFB   784 _PWMB_CCR4H	=	0xfefb
                           00FEFC   785 _PWMB_CCR4L	=	0xfefc
                           00FEFD   786 _PWMB_BKR	=	0xfefd
                           00FEFE   787 _PWMB_DTR	=	0xfefe
                           00FEFF   788 _PWMB_OISR	=	0xfeff
                           00FE60   789 _RTCCR	=	0xfe60
                           00FE61   790 _RTCCFG	=	0xfe61
                           00FE62   791 _RTCIEN	=	0xfe62
                           00FE63   792 _RTCIF	=	0xfe63
                           00FE64   793 _ALAHOUR	=	0xfe64
                           00FE65   794 _ALAMIN	=	0xfe65
                           00FE66   795 _ALASEC	=	0xfe66
                           00FE67   796 _ALASSEC	=	0xfe67
                           00FE68   797 _INIYEAR	=	0xfe68
                           00FE69   798 _INIMONTH	=	0xfe69
                           00FE6A   799 _INIDAY	=	0xfe6a
                           00FE6B   800 _INIHOUR	=	0xfe6b
                           00FE6C   801 _INIMIN	=	0xfe6c
                           00FE6D   802 _INISEC	=	0xfe6d
                           00FE6E   803 _INISSEC	=	0xfe6e
                           00FE70   804 _YEAR	=	0xfe70
                           00FE71   805 _MONTH	=	0xfe71
                           00FE72   806 _DAY	=	0xfe72
                           00FE73   807 _HOUR	=	0xfe73
                           00FE74   808 _MIN	=	0xfe74
                           00FE75   809 _SEC	=	0xfe75
                           00FE76   810 _SSEC	=	0xfe76
                           00FA20   811 _DMA_SPI_CFG	=	0xfa20
                           00FA21   812 _DMA_SPI_CR	=	0xfa21
                           00FA22   813 _DMA_SPI_STA	=	0xfa22
                           00FA23   814 _DMA_SPI_AMT	=	0xfa23
                           00FA24   815 _DMA_SPI_DONE	=	0xfa24
                           00FA25   816 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   817 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   818 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   819 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   820 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   821 _CLKDIV	=	0xfe01
                           00FE02   822 _HIRCCR	=	0xfe02
                           00FE03   823 _XOSCCR	=	0xfe03
                           00FE04   824 _IRC32KCR	=	0xfe04
                           00FE00   825 _CKSEL	=	0xfe00
                           00FE05   826 _MCLKOCR	=	0xfe05
                           00FE06   827 _IRCDB	=	0xfe06
                           00FE07   828 _IRC48MCR	=	0xfe07
                           00FEA2   829 _TM2PS	=	0xfea2
                           00FEA3   830 _TM3PS	=	0xfea3
                           00FEA4   831 _TM4PS	=	0xfea4
                           00FA30   832 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   833 _DMA_UR1T_CR	=	0xfa31
                           00FA32   834 _DMA_UR1T_STA	=	0xfa32
                           00FA33   835 _DMA_URTX_AMT	=	0xfa33
                           00FA34   836 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   837 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   838 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   839 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   840 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   841 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   842 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   843 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   844 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   845 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   846 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   847 _DMA_UR2T_CR	=	0xfa31
                           00FA32   848 _DMA_UR2T_STA	=	0xfa32
                           00FA33   849 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   850 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   851 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   852 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   853 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   854 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   855 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   856 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   857 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   858 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   859 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   860 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   861 _DMA_UR3T_CR	=	0xfa31
                           00FA32   862 _DMA_UR3T_STA	=	0xfa32
                           00FA33   863 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   864 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   865 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   866 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   867 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   868 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   869 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   870 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   871 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   872 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   873 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   874 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   875 _DMA_UR4T_CR	=	0xfa31
                           00FA32   876 _DMA_UR4T_STA	=	0xfa32
                           00FA33   877 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   878 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   879 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   880 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   881 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   882 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   883 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   884 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   885 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   886 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   887 _DMA_UR4R_TXAL	=	0xfa3e
      0000A4                        888 _uartGetCharacter_result_65536_69:
      0000A4                        889 	.ds 1
      0000A5                        890 _startTimer_PARM_2:
      0000A5                        891 	.ds 4
      0000A9                        892 _startTimer_PARM_3:
      0000A9                        893 	.ds 1
      0000AA                        894 _startTimer_PARM_4:
      0000AA                        895 	.ds 1
      0000AB                        896 _startTimer_PARM_5:
      0000AB                        897 	.ds 1
      0000AC                        898 _startTimer_timer_65536_148:
      0000AC                        899 	.ds 1
      0000AD                        900 _startTimer_rc_65536_149:
      0000AD                        901 	.ds 1
      0000AE                        902 _startTimer_sysclkDiv1_65536_149:
      0000AE                        903 	.ds 1
      0000AF                        904 _startTimer_prescaler_131072_151:
      0000AF                        905 	.ds 2
      0000B1                        906 _stopTimer_timer_65536_182:
      0000B1                        907 	.ds 1
      0000B2                        908 _stopTimer_counterValue_65536_183:
      0000B2                        909 	.ds 2
                                    910 ;--------------------------------------------------------
                                    911 ; absolute external ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XABS    (ABS,XDATA)
                                    914 ;--------------------------------------------------------
                                    915 ; external initialized ram data
                                    916 ;--------------------------------------------------------
                                    917 	.area XISEG   (XDATA)
                                    918 	.area HOME    (CODE)
                                    919 	.area GSINIT0 (CODE)
                                    920 	.area GSINIT1 (CODE)
                                    921 	.area GSINIT2 (CODE)
                                    922 	.area GSINIT3 (CODE)
                                    923 	.area GSINIT4 (CODE)
                                    924 	.area GSINIT5 (CODE)
                                    925 	.area GSINIT  (CODE)
                                    926 	.area GSFINAL (CODE)
                                    927 	.area CSEG    (CODE)
                                    928 ;--------------------------------------------------------
                                    929 ; global & static initialisations
                                    930 ;--------------------------------------------------------
                                    931 	.area HOME    (CODE)
                                    932 	.area GSINIT  (CODE)
                                    933 	.area GSFINAL (CODE)
                                    934 	.area GSINIT  (CODE)
                                    935 ;--------------------------------------------------------
                                    936 ; Home
                                    937 ;--------------------------------------------------------
                                    938 	.area HOME    (CODE)
                                    939 	.area HOME    (CODE)
                                    940 ;--------------------------------------------------------
                                    941 ; code
                                    942 ;--------------------------------------------------------
                                    943 	.area CSEG    (CODE)
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'startTimer'
                                    946 ;------------------------------------------------------------
                                    947 ;sloc0                     Allocated with name '_startTimer_sloc0_1_0'
                                    948 ;sysclkDivisor             Allocated with name '_startTimer_PARM_2'
                                    949 ;enableOutput              Allocated with name '_startTimer_PARM_3'
                                    950 ;enableInterrupt           Allocated with name '_startTimer_PARM_4'
                                    951 ;timerControl              Allocated with name '_startTimer_PARM_5'
                                    952 ;timer                     Allocated with name '_startTimer_timer_65536_148'
                                    953 ;rc                        Allocated with name '_startTimer_rc_65536_149'
                                    954 ;sysclkDiv1                Allocated with name '_startTimer_sysclkDiv1_65536_149'
                                    955 ;prescaler                 Allocated with name '_startTimer_prescaler_131072_151'
                                    956 ;reloadValue               Allocated with name '_startTimer_reloadValue_131072_160'
                                    957 ;------------------------------------------------------------
                                    958 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:54: TimerStatus startTimer(Timer timer, uint32_t sysclkDivisor, OutputEnable enableOutput, InterruptEnable enableInterrupt, CounterControl timerControl) {
                                    959 ;	-----------------------------------------
                                    960 ;	 function startTimer
                                    961 ;	-----------------------------------------
      00132F                        962 _startTimer:
                           000007   963 	ar7 = 0x07
                           000006   964 	ar6 = 0x06
                           000005   965 	ar5 = 0x05
                           000004   966 	ar4 = 0x04
                           000003   967 	ar3 = 0x03
                           000002   968 	ar2 = 0x02
                           000001   969 	ar1 = 0x01
                           000000   970 	ar0 = 0x00
      00132F E5 82            [12]  971 	mov	a,dpl
      001331 90 00 AC         [24]  972 	mov	dptr,#_startTimer_timer_65536_148
      001334 F0               [24]  973 	movx	@dptr,a
                                    974 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:55: TimerStatus rc = TIMER_FREQUENCY_OK;
      001335 90 00 AD         [24]  975 	mov	dptr,#_startTimer_rc_65536_149
      001338 E4               [12]  976 	clr	a
      001339 F0               [24]  977 	movx	@dptr,a
                                    978 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:56: uint8_t sysclkDiv1 = 1;
      00133A 90 00 AE         [24]  979 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      00133D 04               [12]  980 	inc	a
      00133E F0               [24]  981 	movx	@dptr,a
                                    982 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:58: if (sysclkDivisor == 0) {
      00133F 90 00 A5         [24]  983 	mov	dptr,#_startTimer_PARM_2
      001342 E0               [24]  984 	movx	a,@dptr
      001343 FC               [12]  985 	mov	r4,a
      001344 A3               [24]  986 	inc	dptr
      001345 E0               [24]  987 	movx	a,@dptr
      001346 FD               [12]  988 	mov	r5,a
      001347 A3               [24]  989 	inc	dptr
      001348 E0               [24]  990 	movx	a,@dptr
      001349 FE               [12]  991 	mov	r6,a
      00134A A3               [24]  992 	inc	dptr
      00134B E0               [24]  993 	movx	a,@dptr
      00134C FF               [12]  994 	mov	r7,a
      00134D EC               [12]  995 	mov	a,r4
      00134E 4D               [12]  996 	orl	a,r5
      00134F 4E               [12]  997 	orl	a,r6
      001350 4F               [12]  998 	orl	a,r7
      001351 70 09            [24]  999 	jnz	00121$
                                   1000 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:60: rc = TIMER_FREQUENCY_TOO_HIGH;
      001353 90 00 AD         [24] 1001 	mov	dptr,#_startTimer_rc_65536_149
      001356 74 01            [12] 1002 	mov	a,#0x01
      001358 F0               [24] 1003 	movx	@dptr,a
      001359 02 15 28         [24] 1004 	ljmp	00122$
      00135C                       1005 00121$:
                                   1006 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:63: uint16_t prescaler = 0;
      00135C 90 00 AF         [24] 1007 	mov	dptr,#_startTimer_prescaler_131072_151
      00135F E4               [12] 1008 	clr	a
      001360 F0               [24] 1009 	movx	@dptr,a
      001361 A3               [24] 1010 	inc	dptr
      001362 F0               [24] 1011 	movx	@dptr,a
                                   1012 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:65: switch (timer) {
      001363 90 00 AC         [24] 1013 	mov	dptr,#_startTimer_timer_65536_148
      001366 E0               [24] 1014 	movx	a,@dptr
      001367 FB               [12] 1015 	mov	r3,a
      001368 60 03            [24] 1016 	jz	00102$
      00136A BB 01 58         [24] 1017 	cjne	r3,#0x01,00108$
                                   1018 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:68: case TIMER1:
      00136D                       1019 00102$:
                                   1020 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:72: if (sysclkDivisor > COUNTER_MAX) {
      00136D C3               [12] 1021 	clr	c
      00136E E4               [12] 1022 	clr	a
      00136F 9C               [12] 1023 	subb	a,r4
      001370 E4               [12] 1024 	clr	a
      001371 9D               [12] 1025 	subb	a,r5
      001372 74 01            [12] 1026 	mov	a,#0x01
      001374 9E               [12] 1027 	subb	a,r6
      001375 E4               [12] 1028 	clr	a
      001376 9F               [12] 1029 	subb	a,r7
      001377 40 03            [24] 1030 	jc	00279$
      001379 02 14 E9         [24] 1031 	ljmp	00115$
      00137C                       1032 00279$:
                                   1033 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:73: if (sysclkDivisor <= (COUNTER_MAX * 12UL)) {
      00137C C3               [12] 1034 	clr	c
      00137D E4               [12] 1035 	clr	a
      00137E 9C               [12] 1036 	subb	a,r4
      00137F E4               [12] 1037 	clr	a
      001380 9D               [12] 1038 	subb	a,r5
      001381 74 0C            [12] 1039 	mov	a,#0x0c
      001383 9E               [12] 1040 	subb	a,r6
      001384 E4               [12] 1041 	clr	a
      001385 9F               [12] 1042 	subb	a,r7
      001386 40 34            [24] 1043 	jc	00104$
                                   1044 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:74: sysclkDiv1 = 0;
      001388 90 00 AE         [24] 1045 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      00138B E4               [12] 1046 	clr	a
      00138C F0               [24] 1047 	movx	@dptr,a
                                   1048 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:75: sysclkDivisor /= 12;
      00138D 90 05 DC         [24] 1049 	mov	dptr,#__divulong_PARM_2
      001390 74 0C            [12] 1050 	mov	a,#0x0c
      001392 F0               [24] 1051 	movx	@dptr,a
      001393 E4               [12] 1052 	clr	a
      001394 A3               [24] 1053 	inc	dptr
      001395 F0               [24] 1054 	movx	@dptr,a
      001396 A3               [24] 1055 	inc	dptr
      001397 F0               [24] 1056 	movx	@dptr,a
      001398 A3               [24] 1057 	inc	dptr
      001399 F0               [24] 1058 	movx	@dptr,a
      00139A 8C 82            [24] 1059 	mov	dpl,r4
      00139C 8D 83            [24] 1060 	mov	dph,r5
      00139E 8E F0            [24] 1061 	mov	b,r6
      0013A0 EF               [12] 1062 	mov	a,r7
      0013A1 12 4A DE         [24] 1063 	lcall	__divulong
      0013A4 A8 82            [24] 1064 	mov	r0,dpl
      0013A6 A9 83            [24] 1065 	mov	r1,dph
      0013A8 AA F0            [24] 1066 	mov	r2,b
      0013AA FB               [12] 1067 	mov	r3,a
      0013AB 90 00 A5         [24] 1068 	mov	dptr,#_startTimer_PARM_2
      0013AE E8               [12] 1069 	mov	a,r0
      0013AF F0               [24] 1070 	movx	@dptr,a
      0013B0 E9               [12] 1071 	mov	a,r1
      0013B1 A3               [24] 1072 	inc	dptr
      0013B2 F0               [24] 1073 	movx	@dptr,a
      0013B3 EA               [12] 1074 	mov	a,r2
      0013B4 A3               [24] 1075 	inc	dptr
      0013B5 F0               [24] 1076 	movx	@dptr,a
      0013B6 EB               [12] 1077 	mov	a,r3
      0013B7 A3               [24] 1078 	inc	dptr
      0013B8 F0               [24] 1079 	movx	@dptr,a
      0013B9 02 14 E9         [24] 1080 	ljmp	00115$
      0013BC                       1081 00104$:
                                   1082 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:78: rc = TIMER_FREQUENCY_TOO_LOW;
      0013BC 90 00 AD         [24] 1083 	mov	dptr,#_startTimer_rc_65536_149
      0013BF 74 02            [12] 1084 	mov	a,#0x02
      0013C1 F0               [24] 1085 	movx	@dptr,a
                                   1086 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:83: break;
      0013C2 02 14 E9         [24] 1087 	ljmp	00115$
                                   1088 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:85: default:
      0013C5                       1089 00108$:
                                   1090 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:86: if (sysclkDivisor > COUNTER_MAX) {
      0013C5 C3               [12] 1091 	clr	c
      0013C6 E4               [12] 1092 	clr	a
      0013C7 9C               [12] 1093 	subb	a,r4
      0013C8 E4               [12] 1094 	clr	a
      0013C9 9D               [12] 1095 	subb	a,r5
      0013CA 74 01            [12] 1096 	mov	a,#0x01
      0013CC 9E               [12] 1097 	subb	a,r6
      0013CD E4               [12] 1098 	clr	a
      0013CE 9F               [12] 1099 	subb	a,r7
      0013CF 40 03            [24] 1100 	jc	00281$
      0013D1 02 14 E9         [24] 1101 	ljmp	00115$
      0013D4                       1102 00281$:
                                   1103 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:87: prescaler = sysclkDivisor / COUNTER_MAX;
      0013D4 8E 00            [24] 1104 	mov	ar0,r6
      0013D6 8F 01            [24] 1105 	mov	ar1,r7
      0013D8 90 00 AF         [24] 1106 	mov	dptr,#_startTimer_prescaler_131072_151
      0013DB E8               [12] 1107 	mov	a,r0
      0013DC F0               [24] 1108 	movx	@dptr,a
      0013DD E9               [12] 1109 	mov	a,r1
      0013DE A3               [24] 1110 	inc	dptr
      0013DF F0               [24] 1111 	movx	@dptr,a
                                   1112 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:89: if (prescaler > PRESCALER_MAX) {
      0013E0 C3               [12] 1113 	clr	c
      0013E1 E4               [12] 1114 	clr	a
      0013E2 98               [12] 1115 	subb	a,r0
      0013E3 74 01            [12] 1116 	mov	a,#0x01
      0013E5 99               [12] 1117 	subb	a,r1
      0013E6 50 5D            [24] 1118 	jnc	00110$
                                   1119 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:90: sysclkDiv1 = 0;
      0013E8 90 00 AE         [24] 1120 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      0013EB E4               [12] 1121 	clr	a
      0013EC F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:91: prescaler /= 12;
      0013ED 90 05 CC         [24] 1124 	mov	dptr,#__divuint_PARM_2
      0013F0 74 0C            [12] 1125 	mov	a,#0x0c
      0013F2 F0               [24] 1126 	movx	@dptr,a
      0013F3 E4               [12] 1127 	clr	a
      0013F4 A3               [24] 1128 	inc	dptr
      0013F5 F0               [24] 1129 	movx	@dptr,a
      0013F6 88 82            [24] 1130 	mov	dpl,r0
      0013F8 89 83            [24] 1131 	mov	dph,r1
      0013FA C0 07            [24] 1132 	push	ar7
      0013FC C0 06            [24] 1133 	push	ar6
      0013FE C0 05            [24] 1134 	push	ar5
      001400 C0 04            [24] 1135 	push	ar4
      001402 12 49 11         [24] 1136 	lcall	__divuint
      001405 AA 82            [24] 1137 	mov	r2,dpl
      001407 AB 83            [24] 1138 	mov	r3,dph
      001409 D0 04            [24] 1139 	pop	ar4
      00140B D0 05            [24] 1140 	pop	ar5
      00140D D0 06            [24] 1141 	pop	ar6
      00140F D0 07            [24] 1142 	pop	ar7
      001411 90 00 AF         [24] 1143 	mov	dptr,#_startTimer_prescaler_131072_151
      001414 EA               [12] 1144 	mov	a,r2
      001415 F0               [24] 1145 	movx	@dptr,a
      001416 EB               [12] 1146 	mov	a,r3
      001417 A3               [24] 1147 	inc	dptr
      001418 F0               [24] 1148 	movx	@dptr,a
                                   1149 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:92: sysclkDivisor /= 12;
      001419 90 05 DC         [24] 1150 	mov	dptr,#__divulong_PARM_2
      00141C 74 0C            [12] 1151 	mov	a,#0x0c
      00141E F0               [24] 1152 	movx	@dptr,a
      00141F E4               [12] 1153 	clr	a
      001420 A3               [24] 1154 	inc	dptr
      001421 F0               [24] 1155 	movx	@dptr,a
      001422 A3               [24] 1156 	inc	dptr
      001423 F0               [24] 1157 	movx	@dptr,a
      001424 A3               [24] 1158 	inc	dptr
      001425 F0               [24] 1159 	movx	@dptr,a
      001426 8C 82            [24] 1160 	mov	dpl,r4
      001428 8D 83            [24] 1161 	mov	dph,r5
      00142A 8E F0            [24] 1162 	mov	b,r6
      00142C EF               [12] 1163 	mov	a,r7
      00142D 12 4A DE         [24] 1164 	lcall	__divulong
      001430 AC 82            [24] 1165 	mov	r4,dpl
      001432 AD 83            [24] 1166 	mov	r5,dph
      001434 AE F0            [24] 1167 	mov	r6,b
      001436 FF               [12] 1168 	mov	r7,a
      001437 90 00 A5         [24] 1169 	mov	dptr,#_startTimer_PARM_2
      00143A EC               [12] 1170 	mov	a,r4
      00143B F0               [24] 1171 	movx	@dptr,a
      00143C ED               [12] 1172 	mov	a,r5
      00143D A3               [24] 1173 	inc	dptr
      00143E F0               [24] 1174 	movx	@dptr,a
      00143F EE               [12] 1175 	mov	a,r6
      001440 A3               [24] 1176 	inc	dptr
      001441 F0               [24] 1177 	movx	@dptr,a
      001442 EF               [12] 1178 	mov	a,r7
      001443 A3               [24] 1179 	inc	dptr
      001444 F0               [24] 1180 	movx	@dptr,a
      001445                       1181 00110$:
                                   1182 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:96: if (sysclkDivisor % prescaler) {
      001445 90 00 AF         [24] 1183 	mov	dptr,#_startTimer_prescaler_131072_151
      001448 E0               [24] 1184 	movx	a,@dptr
      001449 F5 10            [12] 1185 	mov	_startTimer_sloc0_1_0,a
      00144B A3               [24] 1186 	inc	dptr
      00144C E0               [24] 1187 	movx	a,@dptr
      00144D F5 11            [12] 1188 	mov	(_startTimer_sloc0_1_0 + 1),a
      00144F 90 00 A5         [24] 1189 	mov	dptr,#_startTimer_PARM_2
      001452 E0               [24] 1190 	movx	a,@dptr
      001453 FA               [12] 1191 	mov	r2,a
      001454 A3               [24] 1192 	inc	dptr
      001455 E0               [24] 1193 	movx	a,@dptr
      001456 FB               [12] 1194 	mov	r3,a
      001457 A3               [24] 1195 	inc	dptr
      001458 E0               [24] 1196 	movx	a,@dptr
      001459 FC               [12] 1197 	mov	r4,a
      00145A A3               [24] 1198 	inc	dptr
      00145B E0               [24] 1199 	movx	a,@dptr
      00145C FD               [12] 1200 	mov	r5,a
      00145D 90 05 D3         [24] 1201 	mov	dptr,#__modulong_PARM_2
      001460 E5 10            [12] 1202 	mov	a,_startTimer_sloc0_1_0
      001462 F0               [24] 1203 	movx	@dptr,a
      001463 E5 11            [12] 1204 	mov	a,(_startTimer_sloc0_1_0 + 1)
      001465 A3               [24] 1205 	inc	dptr
      001466 F0               [24] 1206 	movx	@dptr,a
      001467 E4               [12] 1207 	clr	a
      001468 A3               [24] 1208 	inc	dptr
      001469 F0               [24] 1209 	movx	@dptr,a
      00146A A3               [24] 1210 	inc	dptr
      00146B F0               [24] 1211 	movx	@dptr,a
      00146C 8A 82            [24] 1212 	mov	dpl,r2
      00146E 8B 83            [24] 1213 	mov	dph,r3
      001470 8C F0            [24] 1214 	mov	b,r4
      001472 ED               [12] 1215 	mov	a,r5
      001473 C0 05            [24] 1216 	push	ar5
      001475 C0 04            [24] 1217 	push	ar4
      001477 C0 03            [24] 1218 	push	ar3
      001479 C0 02            [24] 1219 	push	ar2
      00147B 12 49 9E         [24] 1220 	lcall	__modulong
      00147E A8 82            [24] 1221 	mov	r0,dpl
      001480 A9 83            [24] 1222 	mov	r1,dph
      001482 AE F0            [24] 1223 	mov	r6,b
      001484 FF               [12] 1224 	mov	r7,a
      001485 D0 02            [24] 1225 	pop	ar2
      001487 D0 03            [24] 1226 	pop	ar3
      001489 D0 04            [24] 1227 	pop	ar4
      00148B D0 05            [24] 1228 	pop	ar5
      00148D E8               [12] 1229 	mov	a,r0
      00148E 49               [12] 1230 	orl	a,r1
      00148F 4E               [12] 1231 	orl	a,r6
      001490 4F               [12] 1232 	orl	a,r7
      001491 60 0D            [24] 1233 	jz	00112$
                                   1234 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:97: prescaler++;
      001493 90 00 AF         [24] 1235 	mov	dptr,#_startTimer_prescaler_131072_151
      001496 74 01            [12] 1236 	mov	a,#0x01
      001498 25 10            [12] 1237 	add	a,_startTimer_sloc0_1_0
      00149A F0               [24] 1238 	movx	@dptr,a
      00149B E4               [12] 1239 	clr	a
      00149C 35 11            [12] 1240 	addc	a,(_startTimer_sloc0_1_0 + 1)
      00149E A3               [24] 1241 	inc	dptr
      00149F F0               [24] 1242 	movx	@dptr,a
      0014A0                       1243 00112$:
                                   1244 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:100: sysclkDivisor /= prescaler;
      0014A0 90 00 AF         [24] 1245 	mov	dptr,#_startTimer_prescaler_131072_151
      0014A3 E0               [24] 1246 	movx	a,@dptr
      0014A4 FE               [12] 1247 	mov	r6,a
      0014A5 A3               [24] 1248 	inc	dptr
      0014A6 E0               [24] 1249 	movx	a,@dptr
      0014A7 FF               [12] 1250 	mov	r7,a
      0014A8 90 05 DC         [24] 1251 	mov	dptr,#__divulong_PARM_2
      0014AB EE               [12] 1252 	mov	a,r6
      0014AC F0               [24] 1253 	movx	@dptr,a
      0014AD EF               [12] 1254 	mov	a,r7
      0014AE A3               [24] 1255 	inc	dptr
      0014AF F0               [24] 1256 	movx	@dptr,a
      0014B0 E4               [12] 1257 	clr	a
      0014B1 A3               [24] 1258 	inc	dptr
      0014B2 F0               [24] 1259 	movx	@dptr,a
      0014B3 A3               [24] 1260 	inc	dptr
      0014B4 F0               [24] 1261 	movx	@dptr,a
      0014B5 8A 82            [24] 1262 	mov	dpl,r2
      0014B7 8B 83            [24] 1263 	mov	dph,r3
      0014B9 8C F0            [24] 1264 	mov	b,r4
      0014BB ED               [12] 1265 	mov	a,r5
      0014BC C0 07            [24] 1266 	push	ar7
      0014BE C0 06            [24] 1267 	push	ar6
      0014C0 12 4A DE         [24] 1268 	lcall	__divulong
      0014C3 AA 82            [24] 1269 	mov	r2,dpl
      0014C5 AB 83            [24] 1270 	mov	r3,dph
      0014C7 AC F0            [24] 1271 	mov	r4,b
      0014C9 FD               [12] 1272 	mov	r5,a
      0014CA D0 06            [24] 1273 	pop	ar6
      0014CC D0 07            [24] 1274 	pop	ar7
      0014CE 90 00 A5         [24] 1275 	mov	dptr,#_startTimer_PARM_2
      0014D1 EA               [12] 1276 	mov	a,r2
      0014D2 F0               [24] 1277 	movx	@dptr,a
      0014D3 EB               [12] 1278 	mov	a,r3
      0014D4 A3               [24] 1279 	inc	dptr
      0014D5 F0               [24] 1280 	movx	@dptr,a
      0014D6 EC               [12] 1281 	mov	a,r4
      0014D7 A3               [24] 1282 	inc	dptr
      0014D8 F0               [24] 1283 	movx	@dptr,a
      0014D9 ED               [12] 1284 	mov	a,r5
      0014DA A3               [24] 1285 	inc	dptr
      0014DB F0               [24] 1286 	movx	@dptr,a
                                   1287 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:103: prescaler--;
      0014DC 1E               [12] 1288 	dec	r6
      0014DD BE FF 01         [24] 1289 	cjne	r6,#0xff,00284$
      0014E0 1F               [12] 1290 	dec	r7
      0014E1                       1291 00284$:
      0014E1 90 00 AF         [24] 1292 	mov	dptr,#_startTimer_prescaler_131072_151
      0014E4 EE               [12] 1293 	mov	a,r6
      0014E5 F0               [24] 1294 	movx	@dptr,a
      0014E6 EF               [12] 1295 	mov	a,r7
      0014E7 A3               [24] 1296 	inc	dptr
      0014E8 F0               [24] 1297 	movx	@dptr,a
                                   1298 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:106: }
      0014E9                       1299 00115$:
                                   1300 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:108: switch (timer) {
      0014E9 90 00 AC         [24] 1301 	mov	dptr,#_startTimer_timer_65536_148
      0014EC E0               [24] 1302 	movx	a,@dptr
      0014ED FF               [12] 1303 	mov	r7,a
      0014EE BF 02 02         [24] 1304 	cjne	r7,#0x02,00285$
      0014F1 80 0A            [24] 1305 	sjmp	00116$
      0014F3                       1306 00285$:
      0014F3 BF 03 02         [24] 1307 	cjne	r7,#0x03,00286$
      0014F6 80 14            [24] 1308 	sjmp	00117$
      0014F8                       1309 00286$:
                                   1310 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:110: case TIMER2:
      0014F8 BF 04 2D         [24] 1311 	cjne	r7,#0x04,00122$
      0014FB 80 1E            [24] 1312 	sjmp	00118$
      0014FD                       1313 00116$:
                                   1314 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:111: TM2PS = prescaler;
      0014FD 90 00 AF         [24] 1315 	mov	dptr,#_startTimer_prescaler_131072_151
      001500 E0               [24] 1316 	movx	a,@dptr
      001501 FE               [12] 1317 	mov	r6,a
      001502 A3               [24] 1318 	inc	dptr
      001503 E0               [24] 1319 	movx	a,@dptr
      001504 FF               [12] 1320 	mov	r7,a
      001505 90 FE A2         [24] 1321 	mov	dptr,#_TM2PS
      001508 EE               [12] 1322 	mov	a,r6
      001509 F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:112: break;
                                   1325 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:116: case TIMER3:
      00150A 80 1C            [24] 1326 	sjmp	00122$
      00150C                       1327 00117$:
                                   1328 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:117: TM3PS = prescaler;
      00150C 90 00 AF         [24] 1329 	mov	dptr,#_startTimer_prescaler_131072_151
      00150F E0               [24] 1330 	movx	a,@dptr
      001510 FE               [12] 1331 	mov	r6,a
      001511 A3               [24] 1332 	inc	dptr
      001512 E0               [24] 1333 	movx	a,@dptr
      001513 FF               [12] 1334 	mov	r7,a
      001514 90 FE A3         [24] 1335 	mov	dptr,#_TM3PS
      001517 EE               [12] 1336 	mov	a,r6
      001518 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:118: break;
                                   1339 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:120: case TIMER4:
      001519 80 0D            [24] 1340 	sjmp	00122$
      00151B                       1341 00118$:
                                   1342 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:121: TM4PS = prescaler;
      00151B 90 00 AF         [24] 1343 	mov	dptr,#_startTimer_prescaler_131072_151
      00151E E0               [24] 1344 	movx	a,@dptr
      00151F FE               [12] 1345 	mov	r6,a
      001520 A3               [24] 1346 	inc	dptr
      001521 E0               [24] 1347 	movx	a,@dptr
      001522 FF               [12] 1348 	mov	r7,a
      001523 90 FE A4         [24] 1349 	mov	dptr,#_TM4PS
      001526 EE               [12] 1350 	mov	a,r6
      001527 F0               [24] 1351 	movx	@dptr,a
                                   1352 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:130: }
      001528                       1353 00122$:
                                   1354 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:134: if (rc == TIMER_FREQUENCY_OK) {
      001528 90 00 AD         [24] 1355 	mov	dptr,#_startTimer_rc_65536_149
      00152B E0               [24] 1356 	movx	a,@dptr
      00152C 60 03            [24] 1357 	jz	00288$
      00152E 02 16 E1         [24] 1358 	ljmp	00160$
      001531                       1359 00288$:
                                   1360 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:135: uint16_t reloadValue = (uint16_t) (COUNTER_MAX - sysclkDivisor);
      001531 90 00 A5         [24] 1361 	mov	dptr,#_startTimer_PARM_2
      001534 E0               [24] 1362 	movx	a,@dptr
      001535 FC               [12] 1363 	mov	r4,a
      001536 A3               [24] 1364 	inc	dptr
      001537 E0               [24] 1365 	movx	a,@dptr
      001538 FD               [12] 1366 	mov	r5,a
      001539 A3               [24] 1367 	inc	dptr
      00153A E0               [24] 1368 	movx	a,@dptr
      00153B A3               [24] 1369 	inc	dptr
      00153C E0               [24] 1370 	movx	a,@dptr
      00153D C3               [12] 1371 	clr	c
      00153E E4               [12] 1372 	clr	a
      00153F 9C               [12] 1373 	subb	a,r4
      001540 FE               [12] 1374 	mov	r6,a
      001541 E4               [12] 1375 	clr	a
      001542 9D               [12] 1376 	subb	a,r5
      001543 FF               [12] 1377 	mov	r7,a
                                   1378 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:137: switch (timer) {
      001544 90 00 AC         [24] 1379 	mov	dptr,#_startTimer_timer_65536_148
      001547 E0               [24] 1380 	movx	a,@dptr
      001548 FD               [12] 1381 	mov  r5,a
      001549 24 FB            [12] 1382 	add	a,#0xff - 0x04
      00154B 50 03            [24] 1383 	jnc	00289$
      00154D 02 16 E1         [24] 1384 	ljmp	00160$
      001550                       1385 00289$:
      001550 ED               [12] 1386 	mov	a,r5
      001551 2D               [12] 1387 	add	a,r5
      001552 2D               [12] 1388 	add	a,r5
      001553 90 15 57         [24] 1389 	mov	dptr,#00290$
      001556 73               [24] 1390 	jmp	@a+dptr
      001557                       1391 00290$:
      001557 02 15 66         [24] 1392 	ljmp	00123$
      00155A 02 15 BA         [24] 1393 	ljmp	00130$
      00155D 02 16 13         [24] 1394 	ljmp	00137$
      001560 02 16 59         [24] 1395 	ljmp	00144$
      001563 02 16 9E         [24] 1396 	ljmp	00151$
                                   1397 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:138: case TIMER0:
      001566                       1398 00123$:
                                   1399 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:141: AUXR = (AUXR & ~M_T0x12) | ((sysclkDiv1 << P_T0x12) & M_T0x12);
      001566 74 7F            [12] 1400 	mov	a,#0x7f
      001568 55 8E            [12] 1401 	anl	a,_AUXR
      00156A FD               [12] 1402 	mov	r5,a
      00156B 90 00 AE         [24] 1403 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      00156E E0               [24] 1404 	movx	a,@dptr
      00156F 03               [12] 1405 	rr	a
      001570 54 80            [12] 1406 	anl	a,#0x80
      001572 FC               [12] 1407 	mov	r4,a
      001573 74 80            [12] 1408 	mov	a,#0x80
      001575 5C               [12] 1409 	anl	a,r4
      001576 4D               [12] 1410 	orl	a,r5
      001577 F5 8E            [12] 1411 	mov	_AUXR,a
                                   1412 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:145: TMOD &= 0xf0;
      001579 53 89 F0         [24] 1413 	anl	_TMOD,#0xf0
                                   1414 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:148: TMOD = (TMOD & ~M_T0_GATE) | ((timerControl << P_T0_GATE) & M_T0_GATE);
      00157C 74 F7            [12] 1415 	mov	a,#0xf7
      00157E 55 89            [12] 1416 	anl	a,_TMOD
      001580 FD               [12] 1417 	mov	r5,a
      001581 90 00 AB         [24] 1418 	mov	dptr,#_startTimer_PARM_5
      001584 E0               [24] 1419 	movx	a,@dptr
      001585 C4               [12] 1420 	swap	a
      001586 03               [12] 1421 	rr	a
      001587 54 F8            [12] 1422 	anl	a,#0xf8
      001589 FC               [12] 1423 	mov	r4,a
      00158A 74 08            [12] 1424 	mov	a,#0x08
      00158C 5C               [12] 1425 	anl	a,r4
      00158D 4D               [12] 1426 	orl	a,r5
      00158E F5 89            [12] 1427 	mov	_TMOD,a
                                   1428 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:162: if (enableOutput == ENABLE_OUTPUT) {
      001590 90 00 A9         [24] 1429 	mov	dptr,#_startTimer_PARM_3
      001593 E0               [24] 1430 	movx	a,@dptr
      001594 FD               [12] 1431 	mov	r5,a
      001595 BD 01 05         [24] 1432 	cjne	r5,#0x01,00125$
                                   1433 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:163: INT_CLKO |= M_T0CLKO;
      001598 43 8F 01         [24] 1434 	orl	_INT_CLKO,#0x01
      00159B 80 03            [24] 1435 	sjmp	00126$
      00159D                       1436 00125$:
                                   1437 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:165: INT_CLKO &= ~M_T0CLKO;
      00159D 53 8F FE         [24] 1438 	anl	_INT_CLKO,#0xfe
      0015A0                       1439 00126$:
                                   1440 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:168: T0 = reloadValue;
      0015A0 8E 8A            [24] 1441 	mov	((_T0 >> 0) & 0xFF),r6
      0015A2 8F 8C            [24] 1442 	mov	((_T0 >> 8) & 0xFF),r7
                                   1443 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:171: if (enableInterrupt == ENABLE_INTERRUPT) {
      0015A4 90 00 AA         [24] 1444 	mov	dptr,#_startTimer_PARM_4
      0015A7 E0               [24] 1445 	movx	a,@dptr
      0015A8 FD               [12] 1446 	mov	r5,a
      0015A9 BD 01 05         [24] 1447 	cjne	r5,#0x01,00128$
                                   1448 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:172: IE1 |= M_T0IE;
      0015AC 43 A8 02         [24] 1449 	orl	_IE1,#0x02
      0015AF 80 03            [24] 1450 	sjmp	00129$
      0015B1                       1451 00128$:
                                   1452 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:174: IE1 &= ~M_T0IE;
      0015B1 53 A8 FD         [24] 1453 	anl	_IE1,#0xfd
      0015B4                       1454 00129$:
                                   1455 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:178: TCON |= M_T0RUN;
      0015B4 43 88 10         [24] 1456 	orl	_TCON,#0x10
                                   1457 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:179: break;
      0015B7 02 16 E1         [24] 1458 	ljmp	00160$
                                   1459 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:182: case TIMER1:
      0015BA                       1460 00130$:
                                   1461 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:197: TMOD &= 0x0f;
      0015BA 53 89 0F         [24] 1462 	anl	_TMOD,#0x0f
                                   1463 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:200: if (enableOutput == ENABLE_OUTPUT) {
      0015BD 90 00 A9         [24] 1464 	mov	dptr,#_startTimer_PARM_3
      0015C0 E0               [24] 1465 	movx	a,@dptr
      0015C1 FD               [12] 1466 	mov	r5,a
      0015C2 BD 01 05         [24] 1467 	cjne	r5,#0x01,00132$
                                   1468 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:201: INT_CLKO |= M_T1CLKO;
      0015C5 43 8F 02         [24] 1469 	orl	_INT_CLKO,#0x02
      0015C8 80 03            [24] 1470 	sjmp	00133$
      0015CA                       1471 00132$:
                                   1472 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:203: INT_CLKO &= ~M_T1CLKO;
      0015CA 53 8F FD         [24] 1473 	anl	_INT_CLKO,#0xfd
      0015CD                       1474 00133$:
                                   1475 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:208: T1 = reloadValue;
      0015CD 8E 8B            [24] 1476 	mov	((_T1 >> 0) & 0xFF),r6
      0015CF 8F 8D            [24] 1477 	mov	((_T1 >> 8) & 0xFF),r7
                                   1478 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:212: TMOD = (TMOD & ~M_T1_GATE) | ((timerControl << P_T1_GATE) & M_T1_GATE);
      0015D1 74 7F            [12] 1479 	mov	a,#0x7f
      0015D3 55 89            [12] 1480 	anl	a,_TMOD
      0015D5 FD               [12] 1481 	mov	r5,a
      0015D6 90 00 AB         [24] 1482 	mov	dptr,#_startTimer_PARM_5
      0015D9 E0               [24] 1483 	movx	a,@dptr
      0015DA 03               [12] 1484 	rr	a
      0015DB 54 80            [12] 1485 	anl	a,#0x80
      0015DD FC               [12] 1486 	mov	r4,a
      0015DE 74 80            [12] 1487 	mov	a,#0x80
      0015E0 5C               [12] 1488 	anl	a,r4
      0015E1 4D               [12] 1489 	orl	a,r5
      0015E2 F5 89            [12] 1490 	mov	_TMOD,a
                                   1491 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:216: AUXR = (sysclkDiv1) ? (AUXR | M_T1x12) : (AUXR & ~M_T1x12);
      0015E4 90 00 AE         [24] 1492 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      0015E7 E0               [24] 1493 	movx	a,@dptr
      0015E8 60 09            [24] 1494 	jz	00163$
      0015EA AC 8E            [24] 1495 	mov	r4,_AUXR
      0015EC 7D 00            [12] 1496 	mov	r5,#0x00
      0015EE 43 04 40         [24] 1497 	orl	ar4,#0x40
      0015F1 80 08            [24] 1498 	sjmp	00164$
      0015F3                       1499 00163$:
      0015F3 74 BF            [12] 1500 	mov	a,#0xbf
      0015F5 55 8E            [12] 1501 	anl	a,_AUXR
      0015F7 FB               [12] 1502 	mov	r3,a
      0015F8 FC               [12] 1503 	mov	r4,a
      0015F9 7D 00            [12] 1504 	mov	r5,#0x00
      0015FB                       1505 00164$:
      0015FB 8C 8E            [24] 1506 	mov	_AUXR,r4
                                   1507 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:219: if (enableInterrupt == ENABLE_INTERRUPT) {
      0015FD 90 00 AA         [24] 1508 	mov	dptr,#_startTimer_PARM_4
      001600 E0               [24] 1509 	movx	a,@dptr
      001601 FD               [12] 1510 	mov	r5,a
      001602 BD 01 05         [24] 1511 	cjne	r5,#0x01,00135$
                                   1512 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:220: IE1 |= M_T1IE;
      001605 43 A8 08         [24] 1513 	orl	_IE1,#0x08
      001608 80 03            [24] 1514 	sjmp	00136$
      00160A                       1515 00135$:
                                   1516 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:222: IE1 &= ~M_T1IE;
      00160A 53 A8 F7         [24] 1517 	anl	_IE1,#0xf7
      00160D                       1518 00136$:
                                   1519 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:226: TCON |= M_T1RUN;
      00160D 43 88 40         [24] 1520 	orl	_TCON,#0x40
                                   1521 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:227: break;
      001610 02 16 E1         [24] 1522 	ljmp	00160$
                                   1523 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:231: case TIMER2:
      001613                       1524 00137$:
                                   1525 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:234: AUXR &= ~M_T2_C_T;
      001613 53 8E F7         [24] 1526 	anl	_AUXR,#0xf7
                                   1527 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:236: if (enableOutput == ENABLE_OUTPUT) {
      001616 90 00 A9         [24] 1528 	mov	dptr,#_startTimer_PARM_3
      001619 E0               [24] 1529 	movx	a,@dptr
      00161A FD               [12] 1530 	mov	r5,a
      00161B BD 01 05         [24] 1531 	cjne	r5,#0x01,00139$
                                   1532 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:237: INT_CLKO |= M_T2CLKO;
      00161E 43 8F 04         [24] 1533 	orl	_INT_CLKO,#0x04
      001621 80 03            [24] 1534 	sjmp	00140$
      001623                       1535 00139$:
                                   1536 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:239: INT_CLKO &= ~M_T2CLKO;
      001623 53 8F FB         [24] 1537 	anl	_INT_CLKO,#0xfb
      001626                       1538 00140$:
                                   1539 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:243: T2 = reloadValue;
      001626 8E D7            [24] 1540 	mov	((_T2 >> 0) & 0xFF),r6
      001628 8F D6            [24] 1541 	mov	((_T2 >> 8) & 0xFF),r7
                                   1542 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:258: AUXR = (sysclkDiv1) ? (AUXR | M_T2x12) : (AUXR & ~M_T2x12);
      00162A 90 00 AE         [24] 1543 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      00162D E0               [24] 1544 	movx	a,@dptr
      00162E 60 09            [24] 1545 	jz	00165$
      001630 AC 8E            [24] 1546 	mov	r4,_AUXR
      001632 7D 00            [12] 1547 	mov	r5,#0x00
      001634 43 04 04         [24] 1548 	orl	ar4,#0x04
      001637 80 08            [24] 1549 	sjmp	00166$
      001639                       1550 00165$:
      001639 74 FB            [12] 1551 	mov	a,#0xfb
      00163B 55 8E            [12] 1552 	anl	a,_AUXR
      00163D FB               [12] 1553 	mov	r3,a
      00163E FC               [12] 1554 	mov	r4,a
      00163F 7D 00            [12] 1555 	mov	r5,#0x00
      001641                       1556 00166$:
      001641 8C 8E            [24] 1557 	mov	_AUXR,r4
                                   1558 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:261: if (enableInterrupt == ENABLE_INTERRUPT) {
      001643 90 00 AA         [24] 1559 	mov	dptr,#_startTimer_PARM_4
      001646 E0               [24] 1560 	movx	a,@dptr
      001647 FD               [12] 1561 	mov	r5,a
      001648 BD 01 05         [24] 1562 	cjne	r5,#0x01,00142$
                                   1563 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:262: IE2 |= M_T2IE;
      00164B 43 AF 04         [24] 1564 	orl	_IE2,#0x04
      00164E 80 03            [24] 1565 	sjmp	00143$
      001650                       1566 00142$:
                                   1567 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:264: IE2 &= ~M_T2IE;
      001650 53 AF FB         [24] 1568 	anl	_IE2,#0xfb
      001653                       1569 00143$:
                                   1570 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:269: AUXR |= M_T2RUN;
      001653 43 8E 10         [24] 1571 	orl	_AUXR,#0x10
                                   1572 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:270: break;
      001656 02 16 E1         [24] 1573 	ljmp	00160$
                                   1574 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:274: case TIMER3:
      001659                       1575 00144$:
                                   1576 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:276: T4T3M &= ~M_T3_C_T;
      001659 53 D1 FB         [24] 1577 	anl	_T4T3M,#0xfb
                                   1578 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:278: if (enableOutput == ENABLE_OUTPUT) {
      00165C 90 00 A9         [24] 1579 	mov	dptr,#_startTimer_PARM_3
      00165F E0               [24] 1580 	movx	a,@dptr
      001660 FD               [12] 1581 	mov	r5,a
      001661 BD 01 05         [24] 1582 	cjne	r5,#0x01,00146$
                                   1583 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:279: T4T3M |= M_T3CLKO;
      001664 43 D1 01         [24] 1584 	orl	_T4T3M,#0x01
      001667 80 03            [24] 1585 	sjmp	00147$
      001669                       1586 00146$:
                                   1587 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:281: T4T3M &= ~M_T3CLKO;
      001669 53 D1 FE         [24] 1588 	anl	_T4T3M,#0xfe
      00166C                       1589 00147$:
                                   1590 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:285: T4T3M = (sysclkDiv1) ? (T4T3M | M_T3x12) : (T4T3M & ~M_T3x12);
      00166C 90 00 AE         [24] 1591 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      00166F E0               [24] 1592 	movx	a,@dptr
      001670 60 09            [24] 1593 	jz	00167$
      001672 AC D1            [24] 1594 	mov	r4,_T4T3M
      001674 7D 00            [12] 1595 	mov	r5,#0x00
      001676 43 04 02         [24] 1596 	orl	ar4,#0x02
      001679 80 08            [24] 1597 	sjmp	00168$
      00167B                       1598 00167$:
      00167B 74 FD            [12] 1599 	mov	a,#0xfd
      00167D 55 D1            [12] 1600 	anl	a,_T4T3M
      00167F FB               [12] 1601 	mov	r3,a
      001680 FC               [12] 1602 	mov	r4,a
      001681 7D 00            [12] 1603 	mov	r5,#0x00
      001683                       1604 00168$:
      001683 8C D1            [24] 1605 	mov	_T4T3M,r4
                                   1606 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:288: T3 = reloadValue;
      001685 8E D5            [24] 1607 	mov	((_T3 >> 0) & 0xFF),r6
      001687 8F D4            [24] 1608 	mov	((_T3 >> 8) & 0xFF),r7
                                   1609 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:290: if (enableInterrupt == ENABLE_INTERRUPT) {
      001689 90 00 AA         [24] 1610 	mov	dptr,#_startTimer_PARM_4
      00168C E0               [24] 1611 	movx	a,@dptr
      00168D FD               [12] 1612 	mov	r5,a
      00168E BD 01 05         [24] 1613 	cjne	r5,#0x01,00149$
                                   1614 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:291: IE2 |= M_T3IE;
      001691 43 AF 20         [24] 1615 	orl	_IE2,#0x20
      001694 80 03            [24] 1616 	sjmp	00150$
      001696                       1617 00149$:
                                   1618 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:293: IE2 &= ~M_T3IE;
      001696 53 AF DF         [24] 1619 	anl	_IE2,#0xdf
      001699                       1620 00150$:
                                   1621 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:297: T4T3M |= M_T3RUN;
      001699 43 D1 08         [24] 1622 	orl	_T4T3M,#0x08
                                   1623 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:298: break;
                                   1624 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:300: case TIMER4:
      00169C 80 43            [24] 1625 	sjmp	00160$
      00169E                       1626 00151$:
                                   1627 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:302: T4T3M &= ~M_T4_C_T;
      00169E 53 D1 BF         [24] 1628 	anl	_T4T3M,#0xbf
                                   1629 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:304: if (enableOutput == ENABLE_OUTPUT) {
      0016A1 90 00 A9         [24] 1630 	mov	dptr,#_startTimer_PARM_3
      0016A4 E0               [24] 1631 	movx	a,@dptr
      0016A5 FD               [12] 1632 	mov	r5,a
      0016A6 BD 01 05         [24] 1633 	cjne	r5,#0x01,00153$
                                   1634 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:305: T4T3M |= M_T4CLKO;
      0016A9 43 D1 10         [24] 1635 	orl	_T4T3M,#0x10
      0016AC 80 03            [24] 1636 	sjmp	00154$
      0016AE                       1637 00153$:
                                   1638 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:307: T4T3M &= ~M_T4CLKO;
      0016AE 53 D1 EF         [24] 1639 	anl	_T4T3M,#0xef
      0016B1                       1640 00154$:
                                   1641 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:311: T4T3M = (sysclkDiv1) ? (T4T3M | M_T4x12) : (T4T3M & ~M_T4x12);
      0016B1 90 00 AE         [24] 1642 	mov	dptr,#_startTimer_sysclkDiv1_65536_149
      0016B4 E0               [24] 1643 	movx	a,@dptr
      0016B5 60 09            [24] 1644 	jz	00169$
      0016B7 AC D1            [24] 1645 	mov	r4,_T4T3M
      0016B9 7D 00            [12] 1646 	mov	r5,#0x00
      0016BB 43 04 20         [24] 1647 	orl	ar4,#0x20
      0016BE 80 08            [24] 1648 	sjmp	00170$
      0016C0                       1649 00169$:
      0016C0 74 DF            [12] 1650 	mov	a,#0xdf
      0016C2 55 D1            [12] 1651 	anl	a,_T4T3M
      0016C4 FB               [12] 1652 	mov	r3,a
      0016C5 FC               [12] 1653 	mov	r4,a
      0016C6 7D 00            [12] 1654 	mov	r5,#0x00
      0016C8                       1655 00170$:
      0016C8 8C D1            [24] 1656 	mov	_T4T3M,r4
                                   1657 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:314: T4 = reloadValue;
      0016CA 8E D3            [24] 1658 	mov	((_T4 >> 0) & 0xFF),r6
      0016CC 8F D2            [24] 1659 	mov	((_T4 >> 8) & 0xFF),r7
                                   1660 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:316: if (enableInterrupt == ENABLE_INTERRUPT) {
      0016CE 90 00 AA         [24] 1661 	mov	dptr,#_startTimer_PARM_4
      0016D1 E0               [24] 1662 	movx	a,@dptr
      0016D2 FF               [12] 1663 	mov	r7,a
      0016D3 BF 01 05         [24] 1664 	cjne	r7,#0x01,00156$
                                   1665 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:317: IE2 |= M_T4IE;
      0016D6 43 AF 40         [24] 1666 	orl	_IE2,#0x40
      0016D9 80 03            [24] 1667 	sjmp	00157$
      0016DB                       1668 00156$:
                                   1669 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:319: IE2 &= ~M_T4IE;
      0016DB 53 AF BF         [24] 1670 	anl	_IE2,#0xbf
      0016DE                       1671 00157$:
                                   1672 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:323: T4T3M |= M_T4RUN;
      0016DE 43 D1 80         [24] 1673 	orl	_T4T3M,#0x80
                                   1674 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:355: }
      0016E1                       1675 00160$:
                                   1676 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:358: return rc;
      0016E1 90 00 AD         [24] 1677 	mov	dptr,#_startTimer_rc_65536_149
      0016E4 E0               [24] 1678 	movx	a,@dptr
                                   1679 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:359: }
      0016E5 F5 82            [12] 1680 	mov	dpl,a
      0016E7 22               [24] 1681 	ret
                                   1682 ;------------------------------------------------------------
                                   1683 ;Allocation info for local variables in function 'stopTimer'
                                   1684 ;------------------------------------------------------------
                                   1685 ;timer                     Allocated with name '_stopTimer_timer_65536_182'
                                   1686 ;counterValue              Allocated with name '_stopTimer_counterValue_65536_183'
                                   1687 ;------------------------------------------------------------
                                   1688 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:367: uint16_t stopTimer(Timer timer) {
                                   1689 ;	-----------------------------------------
                                   1690 ;	 function stopTimer
                                   1691 ;	-----------------------------------------
      0016E8                       1692 _stopTimer:
      0016E8 E5 82            [12] 1693 	mov	a,dpl
      0016EA 90 00 B1         [24] 1694 	mov	dptr,#_stopTimer_timer_65536_182
      0016ED F0               [24] 1695 	movx	@dptr,a
                                   1696 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:368: uint16_t counterValue = 0;
      0016EE 90 00 B2         [24] 1697 	mov	dptr,#_stopTimer_counterValue_65536_183
      0016F1 E4               [12] 1698 	clr	a
      0016F2 F0               [24] 1699 	movx	@dptr,a
      0016F3 A3               [24] 1700 	inc	dptr
      0016F4 F0               [24] 1701 	movx	@dptr,a
                                   1702 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:370: switch (timer) {
      0016F5 90 00 B1         [24] 1703 	mov	dptr,#_stopTimer_timer_65536_182
      0016F8 E0               [24] 1704 	movx	a,@dptr
      0016F9 FF               [12] 1705 	mov  r7,a
      0016FA 24 FB            [12] 1706 	add	a,#0xff - 0x04
      0016FC 40 68            [24] 1707 	jc	00106$
      0016FE EF               [12] 1708 	mov	a,r7
      0016FF 2F               [12] 1709 	add	a,r7
                                   1710 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:371: case TIMER0:
      001700 90 17 04         [24] 1711 	mov	dptr,#00114$
      001703 73               [24] 1712 	jmp	@a+dptr
      001704                       1713 00114$:
      001704 80 08            [24] 1714 	sjmp	00101$
      001706 80 18            [24] 1715 	sjmp	00102$
      001708 80 28            [24] 1716 	sjmp	00103$
      00170A 80 38            [24] 1717 	sjmp	00104$
      00170C 80 48            [24] 1718 	sjmp	00105$
      00170E                       1719 00101$:
                                   1720 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:373: TCON &= ~M_T0RUN;
      00170E 53 88 EF         [24] 1721 	anl	_TCON,#0xef
                                   1722 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:378: counterValue = T0;
      001711 90 00 B2         [24] 1723 	mov	dptr,#_stopTimer_counterValue_65536_183
      001714 E5 8A            [12] 1724 	mov	a,((_T0 >> 0) & 0xFF)
      001716 F0               [24] 1725 	movx	@dptr,a
      001717 E5 8C            [12] 1726 	mov	a,((_T0 >> 8) & 0xFF)
      001719 A3               [24] 1727 	inc	dptr
      00171A F0               [24] 1728 	movx	@dptr,a
                                   1729 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:384: INT_CLKO &= ~M_T0CLKO;
      00171B 53 8F FE         [24] 1730 	anl	_INT_CLKO,#0xfe
                                   1731 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:386: break;
                                   1732 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:389: case TIMER1:
      00171E 80 46            [24] 1733 	sjmp	00106$
      001720                       1734 00102$:
                                   1735 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:391: TCON &= ~M_T1RUN;
      001720 53 88 BF         [24] 1736 	anl	_TCON,#0xbf
                                   1737 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:396: counterValue = T1;
      001723 90 00 B2         [24] 1738 	mov	dptr,#_stopTimer_counterValue_65536_183
      001726 E5 8B            [12] 1739 	mov	a,((_T1 >> 0) & 0xFF)
      001728 F0               [24] 1740 	movx	@dptr,a
      001729 E5 8D            [12] 1741 	mov	a,((_T1 >> 8) & 0xFF)
      00172B A3               [24] 1742 	inc	dptr
      00172C F0               [24] 1743 	movx	@dptr,a
                                   1744 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:402: INT_CLKO &= ~M_T1CLKO;
      00172D 53 8F FD         [24] 1745 	anl	_INT_CLKO,#0xfd
                                   1746 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:404: break;
                                   1747 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:408: case TIMER2:
      001730 80 34            [24] 1748 	sjmp	00106$
      001732                       1749 00103$:
                                   1750 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:410: AUXR &= ~M_T2RUN;
      001732 53 8E EF         [24] 1751 	anl	_AUXR,#0xef
                                   1752 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:413: counterValue = T2;
      001735 90 00 B2         [24] 1753 	mov	dptr,#_stopTimer_counterValue_65536_183
      001738 E5 D7            [12] 1754 	mov	a,((_T2 >> 0) & 0xFF)
      00173A F0               [24] 1755 	movx	@dptr,a
      00173B E5 D6            [12] 1756 	mov	a,((_T2 >> 8) & 0xFF)
      00173D A3               [24] 1757 	inc	dptr
      00173E F0               [24] 1758 	movx	@dptr,a
                                   1759 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:420: INT_CLKO &= ~M_T2CLKO;
      00173F 53 8F FB         [24] 1760 	anl	_INT_CLKO,#0xfb
                                   1761 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:425: break;
                                   1762 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:429: case TIMER3:
      001742 80 22            [24] 1763 	sjmp	00106$
      001744                       1764 00104$:
                                   1765 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:431: T4T3M &= ~M_T3RUN;
      001744 53 D1 F7         [24] 1766 	anl	_T4T3M,#0xf7
                                   1767 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:433: counterValue = T3;
      001747 90 00 B2         [24] 1768 	mov	dptr,#_stopTimer_counterValue_65536_183
      00174A E5 D5            [12] 1769 	mov	a,((_T3 >> 0) & 0xFF)
      00174C F0               [24] 1770 	movx	@dptr,a
      00174D E5 D4            [12] 1771 	mov	a,((_T3 >> 8) & 0xFF)
      00174F A3               [24] 1772 	inc	dptr
      001750 F0               [24] 1773 	movx	@dptr,a
                                   1774 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:435: T4T3M &= ~M_T3CLKO;
      001751 53 D1 FE         [24] 1775 	anl	_T4T3M,#0xfe
                                   1776 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:436: break;
                                   1777 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:438: case TIMER4:
      001754 80 10            [24] 1778 	sjmp	00106$
      001756                       1779 00105$:
                                   1780 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:440: T4T3M &= ~M_T4RUN;
      001756 53 D1 7F         [24] 1781 	anl	_T4T3M,#0x7f
                                   1782 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:442: counterValue = T4;
      001759 90 00 B2         [24] 1783 	mov	dptr,#_stopTimer_counterValue_65536_183
      00175C E5 D3            [12] 1784 	mov	a,((_T4 >> 0) & 0xFF)
      00175E F0               [24] 1785 	movx	@dptr,a
      00175F E5 D2            [12] 1786 	mov	a,((_T4 >> 8) & 0xFF)
      001761 A3               [24] 1787 	inc	dptr
      001762 F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:444: T4T3M &= ~M_T4CLKO;
      001763 53 D1 EF         [24] 1790 	anl	_T4T3M,#0xef
                                   1791 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:458: }
      001766                       1792 00106$:
                                   1793 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:460: return counterValue;
      001766 90 00 B2         [24] 1794 	mov	dptr,#_stopTimer_counterValue_65536_183
      001769 E0               [24] 1795 	movx	a,@dptr
      00176A FE               [12] 1796 	mov	r6,a
      00176B A3               [24] 1797 	inc	dptr
      00176C E0               [24] 1798 	movx	a,@dptr
                                   1799 ;	/home/mr-a-717/.stc/uni-stc/hal/timer-hal.c:461: }
      00176D 8E 82            [24] 1800 	mov	dpl,r6
      00176F F5 83            [12] 1801 	mov	dph,a
      001771 22               [24] 1802 	ret
                                   1803 	.area CSEG    (CODE)
                                   1804 	.area CONST   (CODE)
      005C5A                       1805 _FONTS:
      005C5A 00                    1806 	.db #0x00	; 0
      005C5B 00                    1807 	.db #0x00	; 0
      005C5C 00                    1808 	.db #0x00	; 0
      005C5D 00                    1809 	.db #0x00	; 0
      005C5E 00                    1810 	.db #0x00	; 0
      005C5F 81                    1811 	.db #0x81	; 129
      005C60 81                    1812 	.db #0x81	; 129
      005C61 18                    1813 	.db #0x18	; 24
      005C62 81                    1814 	.db #0x81	; 129
      005C63 81                    1815 	.db #0x81	; 129
      005C64 00                    1816 	.db #0x00	; 0
      005C65 07                    1817 	.db #0x07	; 7
      005C66 00                    1818 	.db #0x00	; 0
      005C67 07                    1819 	.db #0x07	; 7
      005C68 00                    1820 	.db #0x00	; 0
      005C69 14                    1821 	.db #0x14	; 20
      005C6A 7F                    1822 	.db #0x7f	; 127
      005C6B 14                    1823 	.db #0x14	; 20
      005C6C 7F                    1824 	.db #0x7f	; 127
      005C6D 14                    1825 	.db #0x14	; 20
      005C6E 24                    1826 	.db #0x24	; 36
      005C6F 2A                    1827 	.db #0x2a	; 42
      005C70 7F                    1828 	.db #0x7f	; 127
      005C71 2A                    1829 	.db #0x2a	; 42
      005C72 12                    1830 	.db #0x12	; 18
      005C73 23                    1831 	.db #0x23	; 35
      005C74 13                    1832 	.db #0x13	; 19
      005C75 08                    1833 	.db #0x08	; 8
      005C76 64                    1834 	.db #0x64	; 100	'd'
      005C77 62                    1835 	.db #0x62	; 98	'b'
      005C78 36                    1836 	.db #0x36	; 54	'6'
      005C79 49                    1837 	.db #0x49	; 73	'I'
      005C7A 55                    1838 	.db #0x55	; 85	'U'
      005C7B 22                    1839 	.db #0x22	; 34
      005C7C 50                    1840 	.db #0x50	; 80	'P'
      005C7D 00                    1841 	.db #0x00	; 0
      005C7E 05                    1842 	.db #0x05	; 5
      005C7F 03                    1843 	.db #0x03	; 3
      005C80 00                    1844 	.db #0x00	; 0
      005C81 00                    1845 	.db #0x00	; 0
      005C82 00                    1846 	.db #0x00	; 0
      005C83 1C                    1847 	.db #0x1c	; 28
      005C84 22                    1848 	.db #0x22	; 34
      005C85 41                    1849 	.db #0x41	; 65	'A'
      005C86 00                    1850 	.db #0x00	; 0
      005C87 00                    1851 	.db #0x00	; 0
      005C88 41                    1852 	.db #0x41	; 65	'A'
      005C89 22                    1853 	.db #0x22	; 34
      005C8A 1C                    1854 	.db #0x1c	; 28
      005C8B 00                    1855 	.db #0x00	; 0
      005C8C 14                    1856 	.db #0x14	; 20
      005C8D 08                    1857 	.db #0x08	; 8
      005C8E 3E                    1858 	.db #0x3e	; 62
      005C8F 08                    1859 	.db #0x08	; 8
      005C90 14                    1860 	.db #0x14	; 20
      005C91 08                    1861 	.db #0x08	; 8
      005C92 08                    1862 	.db #0x08	; 8
      005C93 3E                    1863 	.db #0x3e	; 62
      005C94 08                    1864 	.db #0x08	; 8
      005C95 08                    1865 	.db #0x08	; 8
      005C96 00                    1866 	.db #0x00	; 0
      005C97 50                    1867 	.db #0x50	; 80	'P'
      005C98 30                    1868 	.db #0x30	; 48	'0'
      005C99 00                    1869 	.db #0x00	; 0
      005C9A 00                    1870 	.db #0x00	; 0
      005C9B 08                    1871 	.db #0x08	; 8
      005C9C 08                    1872 	.db #0x08	; 8
      005C9D 08                    1873 	.db #0x08	; 8
      005C9E 08                    1874 	.db #0x08	; 8
      005C9F 08                    1875 	.db #0x08	; 8
      005CA0 00                    1876 	.db #0x00	; 0
      005CA1 60                    1877 	.db #0x60	; 96
      005CA2 60                    1878 	.db #0x60	; 96
      005CA3 00                    1879 	.db #0x00	; 0
      005CA4 00                    1880 	.db #0x00	; 0
      005CA5 20                    1881 	.db #0x20	; 32
      005CA6 10                    1882 	.db #0x10	; 16
      005CA7 08                    1883 	.db #0x08	; 8
      005CA8 04                    1884 	.db #0x04	; 4
      005CA9 02                    1885 	.db #0x02	; 2
      005CAA 3E                    1886 	.db #0x3e	; 62
      005CAB 51                    1887 	.db #0x51	; 81	'Q'
      005CAC 49                    1888 	.db #0x49	; 73	'I'
      005CAD 45                    1889 	.db #0x45	; 69	'E'
      005CAE 3E                    1890 	.db #0x3e	; 62
      005CAF 00                    1891 	.db #0x00	; 0
      005CB0 42                    1892 	.db #0x42	; 66	'B'
      005CB1 7F                    1893 	.db #0x7f	; 127
      005CB2 40                    1894 	.db #0x40	; 64
      005CB3 00                    1895 	.db #0x00	; 0
      005CB4 42                    1896 	.db #0x42	; 66	'B'
      005CB5 61                    1897 	.db #0x61	; 97	'a'
      005CB6 51                    1898 	.db #0x51	; 81	'Q'
      005CB7 49                    1899 	.db #0x49	; 73	'I'
      005CB8 46                    1900 	.db #0x46	; 70	'F'
      005CB9 21                    1901 	.db #0x21	; 33
      005CBA 41                    1902 	.db #0x41	; 65	'A'
      005CBB 45                    1903 	.db #0x45	; 69	'E'
      005CBC 4B                    1904 	.db #0x4b	; 75	'K'
      005CBD 31                    1905 	.db #0x31	; 49	'1'
      005CBE 18                    1906 	.db #0x18	; 24
      005CBF 14                    1907 	.db #0x14	; 20
      005CC0 12                    1908 	.db #0x12	; 18
      005CC1 7F                    1909 	.db #0x7f	; 127
      005CC2 10                    1910 	.db #0x10	; 16
      005CC3 27                    1911 	.db #0x27	; 39
      005CC4 45                    1912 	.db #0x45	; 69	'E'
      005CC5 45                    1913 	.db #0x45	; 69	'E'
      005CC6 45                    1914 	.db #0x45	; 69	'E'
      005CC7 39                    1915 	.db #0x39	; 57	'9'
      005CC8 3C                    1916 	.db #0x3c	; 60
      005CC9 4A                    1917 	.db #0x4a	; 74	'J'
      005CCA 49                    1918 	.db #0x49	; 73	'I'
      005CCB 49                    1919 	.db #0x49	; 73	'I'
      005CCC 30                    1920 	.db #0x30	; 48	'0'
      005CCD 01                    1921 	.db #0x01	; 1
      005CCE 71                    1922 	.db #0x71	; 113	'q'
      005CCF 09                    1923 	.db #0x09	; 9
      005CD0 05                    1924 	.db #0x05	; 5
      005CD1 03                    1925 	.db #0x03	; 3
      005CD2 36                    1926 	.db #0x36	; 54	'6'
      005CD3 49                    1927 	.db #0x49	; 73	'I'
      005CD4 49                    1928 	.db #0x49	; 73	'I'
      005CD5 49                    1929 	.db #0x49	; 73	'I'
      005CD6 36                    1930 	.db #0x36	; 54	'6'
      005CD7 06                    1931 	.db #0x06	; 6
      005CD8 49                    1932 	.db #0x49	; 73	'I'
      005CD9 49                    1933 	.db #0x49	; 73	'I'
      005CDA 29                    1934 	.db #0x29	; 41
      005CDB 1E                    1935 	.db #0x1e	; 30
      005CDC 00                    1936 	.db #0x00	; 0
      005CDD 36                    1937 	.db #0x36	; 54	'6'
      005CDE 36                    1938 	.db #0x36	; 54	'6'
      005CDF 00                    1939 	.db #0x00	; 0
      005CE0 00                    1940 	.db #0x00	; 0
      005CE1 00                    1941 	.db #0x00	; 0
      005CE2 56                    1942 	.db #0x56	; 86	'V'
      005CE3 36                    1943 	.db #0x36	; 54	'6'
      005CE4 00                    1944 	.db #0x00	; 0
      005CE5 00                    1945 	.db #0x00	; 0
      005CE6 08                    1946 	.db #0x08	; 8
      005CE7 14                    1947 	.db #0x14	; 20
      005CE8 22                    1948 	.db #0x22	; 34
      005CE9 41                    1949 	.db #0x41	; 65	'A'
      005CEA 00                    1950 	.db #0x00	; 0
      005CEB 14                    1951 	.db #0x14	; 20
      005CEC 14                    1952 	.db #0x14	; 20
      005CED 14                    1953 	.db #0x14	; 20
      005CEE 14                    1954 	.db #0x14	; 20
      005CEF 14                    1955 	.db #0x14	; 20
      005CF0 00                    1956 	.db #0x00	; 0
      005CF1 41                    1957 	.db #0x41	; 65	'A'
      005CF2 22                    1958 	.db #0x22	; 34
      005CF3 14                    1959 	.db #0x14	; 20
      005CF4 08                    1960 	.db #0x08	; 8
      005CF5 02                    1961 	.db #0x02	; 2
      005CF6 01                    1962 	.db #0x01	; 1
      005CF7 51                    1963 	.db #0x51	; 81	'Q'
      005CF8 09                    1964 	.db #0x09	; 9
      005CF9 06                    1965 	.db #0x06	; 6
      005CFA 32                    1966 	.db #0x32	; 50	'2'
      005CFB 49                    1967 	.db #0x49	; 73	'I'
      005CFC 79                    1968 	.db #0x79	; 121	'y'
      005CFD 41                    1969 	.db #0x41	; 65	'A'
      005CFE 3E                    1970 	.db #0x3e	; 62
      005CFF 7E                    1971 	.db #0x7e	; 126
      005D00 11                    1972 	.db #0x11	; 17
      005D01 11                    1973 	.db #0x11	; 17
      005D02 11                    1974 	.db #0x11	; 17
      005D03 7E                    1975 	.db #0x7e	; 126
      005D04 7F                    1976 	.db #0x7f	; 127
      005D05 49                    1977 	.db #0x49	; 73	'I'
      005D06 49                    1978 	.db #0x49	; 73	'I'
      005D07 49                    1979 	.db #0x49	; 73	'I'
      005D08 36                    1980 	.db #0x36	; 54	'6'
      005D09 3E                    1981 	.db #0x3e	; 62
      005D0A 41                    1982 	.db #0x41	; 65	'A'
      005D0B 41                    1983 	.db #0x41	; 65	'A'
      005D0C 41                    1984 	.db #0x41	; 65	'A'
      005D0D 22                    1985 	.db #0x22	; 34
      005D0E 7F                    1986 	.db #0x7f	; 127
      005D0F 41                    1987 	.db #0x41	; 65	'A'
      005D10 41                    1988 	.db #0x41	; 65	'A'
      005D11 22                    1989 	.db #0x22	; 34
      005D12 1C                    1990 	.db #0x1c	; 28
      005D13 7F                    1991 	.db #0x7f	; 127
      005D14 49                    1992 	.db #0x49	; 73	'I'
      005D15 49                    1993 	.db #0x49	; 73	'I'
      005D16 49                    1994 	.db #0x49	; 73	'I'
      005D17 41                    1995 	.db #0x41	; 65	'A'
      005D18 7F                    1996 	.db #0x7f	; 127
      005D19 09                    1997 	.db #0x09	; 9
      005D1A 09                    1998 	.db #0x09	; 9
      005D1B 09                    1999 	.db #0x09	; 9
      005D1C 01                    2000 	.db #0x01	; 1
      005D1D 3E                    2001 	.db #0x3e	; 62
      005D1E 41                    2002 	.db #0x41	; 65	'A'
      005D1F 49                    2003 	.db #0x49	; 73	'I'
      005D20 49                    2004 	.db #0x49	; 73	'I'
      005D21 7A                    2005 	.db #0x7a	; 122	'z'
      005D22 7F                    2006 	.db #0x7f	; 127
      005D23 08                    2007 	.db #0x08	; 8
      005D24 08                    2008 	.db #0x08	; 8
      005D25 08                    2009 	.db #0x08	; 8
      005D26 7F                    2010 	.db #0x7f	; 127
      005D27 00                    2011 	.db #0x00	; 0
      005D28 41                    2012 	.db #0x41	; 65	'A'
      005D29 7F                    2013 	.db #0x7f	; 127
      005D2A 41                    2014 	.db #0x41	; 65	'A'
      005D2B 00                    2015 	.db #0x00	; 0
      005D2C 20                    2016 	.db #0x20	; 32
      005D2D 40                    2017 	.db #0x40	; 64
      005D2E 41                    2018 	.db #0x41	; 65	'A'
      005D2F 3F                    2019 	.db #0x3f	; 63
      005D30 01                    2020 	.db #0x01	; 1
      005D31 7F                    2021 	.db #0x7f	; 127
      005D32 08                    2022 	.db #0x08	; 8
      005D33 14                    2023 	.db #0x14	; 20
      005D34 22                    2024 	.db #0x22	; 34
      005D35 41                    2025 	.db #0x41	; 65	'A'
      005D36 7F                    2026 	.db #0x7f	; 127
      005D37 40                    2027 	.db #0x40	; 64
      005D38 40                    2028 	.db #0x40	; 64
      005D39 40                    2029 	.db #0x40	; 64
      005D3A 40                    2030 	.db #0x40	; 64
      005D3B 7F                    2031 	.db #0x7f	; 127
      005D3C 02                    2032 	.db #0x02	; 2
      005D3D 0C                    2033 	.db #0x0c	; 12
      005D3E 02                    2034 	.db #0x02	; 2
      005D3F 7F                    2035 	.db #0x7f	; 127
      005D40 7F                    2036 	.db #0x7f	; 127
      005D41 04                    2037 	.db #0x04	; 4
      005D42 08                    2038 	.db #0x08	; 8
      005D43 10                    2039 	.db #0x10	; 16
      005D44 7F                    2040 	.db #0x7f	; 127
      005D45 3E                    2041 	.db #0x3e	; 62
      005D46 41                    2042 	.db #0x41	; 65	'A'
      005D47 41                    2043 	.db #0x41	; 65	'A'
      005D48 41                    2044 	.db #0x41	; 65	'A'
      005D49 3E                    2045 	.db #0x3e	; 62
      005D4A 7F                    2046 	.db #0x7f	; 127
      005D4B 09                    2047 	.db #0x09	; 9
      005D4C 09                    2048 	.db #0x09	; 9
      005D4D 09                    2049 	.db #0x09	; 9
      005D4E 06                    2050 	.db #0x06	; 6
      005D4F 3E                    2051 	.db #0x3e	; 62
      005D50 41                    2052 	.db #0x41	; 65	'A'
      005D51 51                    2053 	.db #0x51	; 81	'Q'
      005D52 21                    2054 	.db #0x21	; 33
      005D53 5E                    2055 	.db #0x5e	; 94
      005D54 7F                    2056 	.db #0x7f	; 127
      005D55 09                    2057 	.db #0x09	; 9
      005D56 19                    2058 	.db #0x19	; 25
      005D57 29                    2059 	.db #0x29	; 41
      005D58 46                    2060 	.db #0x46	; 70	'F'
      005D59 46                    2061 	.db #0x46	; 70	'F'
      005D5A 49                    2062 	.db #0x49	; 73	'I'
      005D5B 49                    2063 	.db #0x49	; 73	'I'
      005D5C 49                    2064 	.db #0x49	; 73	'I'
      005D5D 31                    2065 	.db #0x31	; 49	'1'
      005D5E 01                    2066 	.db #0x01	; 1
      005D5F 01                    2067 	.db #0x01	; 1
      005D60 7F                    2068 	.db #0x7f	; 127
      005D61 01                    2069 	.db #0x01	; 1
      005D62 01                    2070 	.db #0x01	; 1
      005D63 3F                    2071 	.db #0x3f	; 63
      005D64 40                    2072 	.db #0x40	; 64
      005D65 40                    2073 	.db #0x40	; 64
      005D66 40                    2074 	.db #0x40	; 64
      005D67 3F                    2075 	.db #0x3f	; 63
      005D68 1F                    2076 	.db #0x1f	; 31
      005D69 20                    2077 	.db #0x20	; 32
      005D6A 40                    2078 	.db #0x40	; 64
      005D6B 20                    2079 	.db #0x20	; 32
      005D6C 1F                    2080 	.db #0x1f	; 31
      005D6D 3F                    2081 	.db #0x3f	; 63
      005D6E 40                    2082 	.db #0x40	; 64
      005D6F 38                    2083 	.db #0x38	; 56	'8'
      005D70 40                    2084 	.db #0x40	; 64
      005D71 3F                    2085 	.db #0x3f	; 63
      005D72 63                    2086 	.db #0x63	; 99	'c'
      005D73 14                    2087 	.db #0x14	; 20
      005D74 08                    2088 	.db #0x08	; 8
      005D75 14                    2089 	.db #0x14	; 20
      005D76 63                    2090 	.db #0x63	; 99	'c'
      005D77 07                    2091 	.db #0x07	; 7
      005D78 08                    2092 	.db #0x08	; 8
      005D79 70                    2093 	.db #0x70	; 112	'p'
      005D7A 08                    2094 	.db #0x08	; 8
      005D7B 07                    2095 	.db #0x07	; 7
      005D7C 61                    2096 	.db #0x61	; 97	'a'
      005D7D 51                    2097 	.db #0x51	; 81	'Q'
      005D7E 49                    2098 	.db #0x49	; 73	'I'
      005D7F 45                    2099 	.db #0x45	; 69	'E'
      005D80 43                    2100 	.db #0x43	; 67	'C'
      005D81 00                    2101 	.db #0x00	; 0
      005D82 7F                    2102 	.db #0x7f	; 127
      005D83 41                    2103 	.db #0x41	; 65	'A'
      005D84 41                    2104 	.db #0x41	; 65	'A'
      005D85 00                    2105 	.db #0x00	; 0
      005D86 02                    2106 	.db #0x02	; 2
      005D87 04                    2107 	.db #0x04	; 4
      005D88 08                    2108 	.db #0x08	; 8
      005D89 10                    2109 	.db #0x10	; 16
      005D8A 20                    2110 	.db #0x20	; 32
      005D8B 00                    2111 	.db #0x00	; 0
      005D8C 41                    2112 	.db #0x41	; 65	'A'
      005D8D 41                    2113 	.db #0x41	; 65	'A'
      005D8E 7F                    2114 	.db #0x7f	; 127
      005D8F 00                    2115 	.db #0x00	; 0
      005D90 04                    2116 	.db #0x04	; 4
      005D91 02                    2117 	.db #0x02	; 2
      005D92 01                    2118 	.db #0x01	; 1
      005D93 02                    2119 	.db #0x02	; 2
      005D94 04                    2120 	.db #0x04	; 4
      005D95 40                    2121 	.db #0x40	; 64
      005D96 40                    2122 	.db #0x40	; 64
      005D97 40                    2123 	.db #0x40	; 64
      005D98 40                    2124 	.db #0x40	; 64
      005D99 40                    2125 	.db #0x40	; 64
      005D9A 00                    2126 	.db #0x00	; 0
      005D9B 01                    2127 	.db #0x01	; 1
      005D9C 02                    2128 	.db #0x02	; 2
      005D9D 04                    2129 	.db #0x04	; 4
      005D9E 00                    2130 	.db #0x00	; 0
      005D9F 20                    2131 	.db #0x20	; 32
      005DA0 54                    2132 	.db #0x54	; 84	'T'
      005DA1 54                    2133 	.db #0x54	; 84	'T'
      005DA2 54                    2134 	.db #0x54	; 84	'T'
      005DA3 78                    2135 	.db #0x78	; 120	'x'
      005DA4 7F                    2136 	.db #0x7f	; 127
      005DA5 48                    2137 	.db #0x48	; 72	'H'
      005DA6 44                    2138 	.db #0x44	; 68	'D'
      005DA7 44                    2139 	.db #0x44	; 68	'D'
      005DA8 38                    2140 	.db #0x38	; 56	'8'
      005DA9 38                    2141 	.db #0x38	; 56	'8'
      005DAA 44                    2142 	.db #0x44	; 68	'D'
      005DAB 44                    2143 	.db #0x44	; 68	'D'
      005DAC 44                    2144 	.db #0x44	; 68	'D'
      005DAD 20                    2145 	.db #0x20	; 32
      005DAE 38                    2146 	.db #0x38	; 56	'8'
      005DAF 44                    2147 	.db #0x44	; 68	'D'
      005DB0 44                    2148 	.db #0x44	; 68	'D'
      005DB1 48                    2149 	.db #0x48	; 72	'H'
      005DB2 7F                    2150 	.db #0x7f	; 127
      005DB3 38                    2151 	.db #0x38	; 56	'8'
      005DB4 54                    2152 	.db #0x54	; 84	'T'
      005DB5 54                    2153 	.db #0x54	; 84	'T'
      005DB6 54                    2154 	.db #0x54	; 84	'T'
      005DB7 18                    2155 	.db #0x18	; 24
      005DB8 08                    2156 	.db #0x08	; 8
      005DB9 7E                    2157 	.db #0x7e	; 126
      005DBA 09                    2158 	.db #0x09	; 9
      005DBB 01                    2159 	.db #0x01	; 1
      005DBC 02                    2160 	.db #0x02	; 2
      005DBD 0C                    2161 	.db #0x0c	; 12
      005DBE 52                    2162 	.db #0x52	; 82	'R'
      005DBF 52                    2163 	.db #0x52	; 82	'R'
      005DC0 52                    2164 	.db #0x52	; 82	'R'
      005DC1 3E                    2165 	.db #0x3e	; 62
      005DC2 7F                    2166 	.db #0x7f	; 127
      005DC3 08                    2167 	.db #0x08	; 8
      005DC4 04                    2168 	.db #0x04	; 4
      005DC5 04                    2169 	.db #0x04	; 4
      005DC6 78                    2170 	.db #0x78	; 120	'x'
      005DC7 00                    2171 	.db #0x00	; 0
      005DC8 44                    2172 	.db #0x44	; 68	'D'
      005DC9 7D                    2173 	.db #0x7d	; 125
      005DCA 40                    2174 	.db #0x40	; 64
      005DCB 00                    2175 	.db #0x00	; 0
      005DCC 20                    2176 	.db #0x20	; 32
      005DCD 40                    2177 	.db #0x40	; 64
      005DCE 44                    2178 	.db #0x44	; 68	'D'
      005DCF 3D                    2179 	.db #0x3d	; 61
      005DD0 00                    2180 	.db #0x00	; 0
      005DD1 7F                    2181 	.db #0x7f	; 127
      005DD2 10                    2182 	.db #0x10	; 16
      005DD3 28                    2183 	.db #0x28	; 40
      005DD4 44                    2184 	.db #0x44	; 68	'D'
      005DD5 00                    2185 	.db #0x00	; 0
      005DD6 00                    2186 	.db #0x00	; 0
      005DD7 41                    2187 	.db #0x41	; 65	'A'
      005DD8 7F                    2188 	.db #0x7f	; 127
      005DD9 40                    2189 	.db #0x40	; 64
      005DDA 00                    2190 	.db #0x00	; 0
      005DDB 7C                    2191 	.db #0x7c	; 124
      005DDC 04                    2192 	.db #0x04	; 4
      005DDD 18                    2193 	.db #0x18	; 24
      005DDE 04                    2194 	.db #0x04	; 4
      005DDF 78                    2195 	.db #0x78	; 120	'x'
      005DE0 7C                    2196 	.db #0x7c	; 124
      005DE1 08                    2197 	.db #0x08	; 8
      005DE2 04                    2198 	.db #0x04	; 4
      005DE3 04                    2199 	.db #0x04	; 4
      005DE4 78                    2200 	.db #0x78	; 120	'x'
      005DE5 38                    2201 	.db #0x38	; 56	'8'
      005DE6 44                    2202 	.db #0x44	; 68	'D'
      005DE7 44                    2203 	.db #0x44	; 68	'D'
      005DE8 44                    2204 	.db #0x44	; 68	'D'
      005DE9 38                    2205 	.db #0x38	; 56	'8'
      005DEA 7C                    2206 	.db #0x7c	; 124
      005DEB 14                    2207 	.db #0x14	; 20
      005DEC 14                    2208 	.db #0x14	; 20
      005DED 14                    2209 	.db #0x14	; 20
      005DEE 08                    2210 	.db #0x08	; 8
      005DEF 08                    2211 	.db #0x08	; 8
      005DF0 14                    2212 	.db #0x14	; 20
      005DF1 14                    2213 	.db #0x14	; 20
      005DF2 14                    2214 	.db #0x14	; 20
      005DF3 7C                    2215 	.db #0x7c	; 124
      005DF4 7C                    2216 	.db #0x7c	; 124
      005DF5 08                    2217 	.db #0x08	; 8
      005DF6 04                    2218 	.db #0x04	; 4
      005DF7 04                    2219 	.db #0x04	; 4
      005DF8 08                    2220 	.db #0x08	; 8
      005DF9 48                    2221 	.db #0x48	; 72	'H'
      005DFA 54                    2222 	.db #0x54	; 84	'T'
      005DFB 54                    2223 	.db #0x54	; 84	'T'
      005DFC 54                    2224 	.db #0x54	; 84	'T'
      005DFD 20                    2225 	.db #0x20	; 32
      005DFE 04                    2226 	.db #0x04	; 4
      005DFF 3F                    2227 	.db #0x3f	; 63
      005E00 44                    2228 	.db #0x44	; 68	'D'
      005E01 40                    2229 	.db #0x40	; 64
      005E02 20                    2230 	.db #0x20	; 32
      005E03 3C                    2231 	.db #0x3c	; 60
      005E04 40                    2232 	.db #0x40	; 64
      005E05 40                    2233 	.db #0x40	; 64
      005E06 20                    2234 	.db #0x20	; 32
      005E07 7C                    2235 	.db #0x7c	; 124
      005E08 1C                    2236 	.db #0x1c	; 28
      005E09 20                    2237 	.db #0x20	; 32
      005E0A 40                    2238 	.db #0x40	; 64
      005E0B 20                    2239 	.db #0x20	; 32
      005E0C 1C                    2240 	.db #0x1c	; 28
      005E0D 3C                    2241 	.db #0x3c	; 60
      005E0E 40                    2242 	.db #0x40	; 64
      005E0F 30                    2243 	.db #0x30	; 48	'0'
      005E10 40                    2244 	.db #0x40	; 64
      005E11 3C                    2245 	.db #0x3c	; 60
      005E12 44                    2246 	.db #0x44	; 68	'D'
      005E13 28                    2247 	.db #0x28	; 40
      005E14 10                    2248 	.db #0x10	; 16
      005E15 28                    2249 	.db #0x28	; 40
      005E16 44                    2250 	.db #0x44	; 68	'D'
      005E17 0C                    2251 	.db #0x0c	; 12
      005E18 50                    2252 	.db #0x50	; 80	'P'
      005E19 50                    2253 	.db #0x50	; 80	'P'
      005E1A 50                    2254 	.db #0x50	; 80	'P'
      005E1B 3C                    2255 	.db #0x3c	; 60
      005E1C 44                    2256 	.db #0x44	; 68	'D'
      005E1D 64                    2257 	.db #0x64	; 100	'd'
      005E1E 54                    2258 	.db #0x54	; 84	'T'
      005E1F 4C                    2259 	.db #0x4c	; 76	'L'
      005E20 44                    2260 	.db #0x44	; 68	'D'
      005E21 00                    2261 	.db #0x00	; 0
      005E22 08                    2262 	.db #0x08	; 8
      005E23 36                    2263 	.db #0x36	; 54	'6'
      005E24 41                    2264 	.db #0x41	; 65	'A'
      005E25 00                    2265 	.db #0x00	; 0
      005E26 00                    2266 	.db #0x00	; 0
      005E27 00                    2267 	.db #0x00	; 0
      005E28 7F                    2268 	.db #0x7f	; 127
      005E29 00                    2269 	.db #0x00	; 0
      005E2A 00                    2270 	.db #0x00	; 0
      005E2B 00                    2271 	.db #0x00	; 0
      005E2C 41                    2272 	.db #0x41	; 65	'A'
      005E2D 36                    2273 	.db #0x36	; 54	'6'
      005E2E 08                    2274 	.db #0x08	; 8
      005E2F 00                    2275 	.db #0x00	; 0
      005E30 10                    2276 	.db #0x10	; 16
      005E31 08                    2277 	.db #0x08	; 8
      005E32 08                    2278 	.db #0x08	; 8
      005E33 10                    2279 	.db #0x10	; 16
      005E34 08                    2280 	.db #0x08	; 8
      005E35 00                    2281 	.db #0x00	; 0
      005E36 00                    2282 	.db #0x00	; 0
      005E37 00                    2283 	.db #0x00	; 0
      005E38 00                    2284 	.db #0x00	; 0
      005E39 00                    2285 	.db #0x00	; 0
                                   2286 	.area XINIT   (CODE)
                                   2287 	.area CABS    (ABS,CODE)
