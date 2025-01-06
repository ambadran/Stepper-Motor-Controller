                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial_console
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _uartSendBlock
                                     12 	.globl _uartGetBlock
                                     13 	.globl _uartInitialise
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
                                    159 	.globl _serialConsoleInitialise_PARM_3
                                    160 	.globl _serialConsoleInitialise_PARM_2
                                    161 	.globl _DMA_UR4R_TXAL
                                    162 	.globl _DMA_UR4R_TXAH
                                    163 	.globl _DMA_UR4R_DONE
                                    164 	.globl _DMA_UR4R_AMT
                                    165 	.globl _DMA_UR4R_STA
                                    166 	.globl _DMA_UR4R_CR
                                    167 	.globl _DMA_UR4R_CFG
                                    168 	.globl _DMA_UR4T_TXAL
                                    169 	.globl _DMA_UR4T_TXAH
                                    170 	.globl _DMA_UR4T_DONE
                                    171 	.globl _DMA_UR4T_AMT
                                    172 	.globl _DMA_UR4T_STA
                                    173 	.globl _DMA_UR4T_CR
                                    174 	.globl _DMA_UR4T_CFG
                                    175 	.globl _DMA_UR3R_TXAL
                                    176 	.globl _DMA_UR3R_TXAH
                                    177 	.globl _DMA_UR3R_DONE
                                    178 	.globl _DMA_UR3R_AMT
                                    179 	.globl _DMA_UR3R_STA
                                    180 	.globl _DMA_UR3R_CR
                                    181 	.globl _DMA_UR3R_CFG
                                    182 	.globl _DMA_UR3T_TXAL
                                    183 	.globl _DMA_UR3T_TXAH
                                    184 	.globl _DMA_UR3T_DONE
                                    185 	.globl _DMA_UR3T_AMT
                                    186 	.globl _DMA_UR3T_STA
                                    187 	.globl _DMA_UR3T_CR
                                    188 	.globl _DMA_UR3T_CFG
                                    189 	.globl _DMA_UR2R_TXAL
                                    190 	.globl _DMA_UR2R_TXAH
                                    191 	.globl _DMA_UR2R_DONE
                                    192 	.globl _DMA_UR2R_AMT
                                    193 	.globl _DMA_UR2R_STA
                                    194 	.globl _DMA_UR2R_CR
                                    195 	.globl _DMA_UR2R_CFG
                                    196 	.globl _DMA_UR2T_TXAL
                                    197 	.globl _DMA_UR2T_TXAH
                                    198 	.globl _DMA_UR2T_DONE
                                    199 	.globl _DMA_UR2T_AMT
                                    200 	.globl _DMA_UR2T_STA
                                    201 	.globl _DMA_UR2T_CR
                                    202 	.globl _DMA_UR2T_CFG
                                    203 	.globl _DMA_UR1R_TXAL
                                    204 	.globl _DMA_UR1R_TXAH
                                    205 	.globl _DMA_UR1R_DONE
                                    206 	.globl _DMA_UR1R_AMT
                                    207 	.globl _DMA_UR1R_STA
                                    208 	.globl _DMA_UR1R_CR
                                    209 	.globl _DMA_UR1R_CFG
                                    210 	.globl _DMA_UR1T_TXAL
                                    211 	.globl _DMA_UR1T_TXAH
                                    212 	.globl _DMA_UR1T_DONE
                                    213 	.globl _DMA_URTX_AMT
                                    214 	.globl _DMA_UR1T_STA
                                    215 	.globl _DMA_UR1T_CR
                                    216 	.globl _DMA_UR1T_CFG
                                    217 	.globl _TM4PS
                                    218 	.globl _TM3PS
                                    219 	.globl _TM2PS
                                    220 	.globl _IRC48MCR
                                    221 	.globl _IRCDB
                                    222 	.globl _MCLKOCR
                                    223 	.globl _CKSEL
                                    224 	.globl _IRC32KCR
                                    225 	.globl _XOSCCR
                                    226 	.globl _HIRCCR
                                    227 	.globl _CLKDIV
                                    228 	.globl _DMA_SPI_CFG2
                                    229 	.globl _DMA_SPI_RXAL
                                    230 	.globl _DMA_SPI_RXAH
                                    231 	.globl _DMA_SPI_TXAL
                                    232 	.globl _DMA_SPI_TXAH
                                    233 	.globl _DMA_SPI_DONE
                                    234 	.globl _DMA_SPI_AMT
                                    235 	.globl _DMA_SPI_STA
                                    236 	.globl _DMA_SPI_CR
                                    237 	.globl _DMA_SPI_CFG
                                    238 	.globl _SSEC
                                    239 	.globl _SEC
                                    240 	.globl _MIN
                                    241 	.globl _HOUR
                                    242 	.globl _DAY
                                    243 	.globl _MONTH
                                    244 	.globl _YEAR
                                    245 	.globl _INISSEC
                                    246 	.globl _INISEC
                                    247 	.globl _INIMIN
                                    248 	.globl _INIHOUR
                                    249 	.globl _INIDAY
                                    250 	.globl _INIMONTH
                                    251 	.globl _INIYEAR
                                    252 	.globl _ALASSEC
                                    253 	.globl _ALASEC
                                    254 	.globl _ALAMIN
                                    255 	.globl _ALAHOUR
                                    256 	.globl _RTCIF
                                    257 	.globl _RTCIEN
                                    258 	.globl _RTCCFG
                                    259 	.globl _RTCCR
                                    260 	.globl _PWMB_OISR
                                    261 	.globl _PWMB_DTR
                                    262 	.globl _PWMB_BKR
                                    263 	.globl _PWMB_CCR4L
                                    264 	.globl _PWMB_CCR4H
                                    265 	.globl _PWMB_CCR3L
                                    266 	.globl _PWMB_CCR3H
                                    267 	.globl _PWMB_CCR2L
                                    268 	.globl _PWMB_CCR2H
                                    269 	.globl _PWMB_CCR1L
                                    270 	.globl _PWMB_CCR1H
                                    271 	.globl _PWMB_RCR
                                    272 	.globl _PWMB_ARRL
                                    273 	.globl _PWMB_ARRH
                                    274 	.globl _PWMB_PSCRL
                                    275 	.globl _PWMB_PSCRH
                                    276 	.globl _PWMB_CNTRL
                                    277 	.globl _PWMB_CNTRH
                                    278 	.globl _PWMB_CCER2
                                    279 	.globl _PWMB_CCER1
                                    280 	.globl _PWMB_CCMR4
                                    281 	.globl _PWMB_CCMR3
                                    282 	.globl _PWMB_CCMR2
                                    283 	.globl _PWMB_CCMR1
                                    284 	.globl _PWMB_EGR
                                    285 	.globl _PWMB_SR2
                                    286 	.globl _PWMB_SR1
                                    287 	.globl _PWMB_IER
                                    288 	.globl _PWMB_ETR
                                    289 	.globl _PWMB_SMCR
                                    290 	.globl _PWMB_CR2
                                    291 	.globl _PWMB_CR1
                                    292 	.globl _PWMA_OISR
                                    293 	.globl _PWMA_DTR
                                    294 	.globl _PWMA_BKR
                                    295 	.globl _PWMA_CCR4L
                                    296 	.globl _PWMA_CCR4H
                                    297 	.globl _PWMA_CCR3L
                                    298 	.globl _PWMA_CCR3H
                                    299 	.globl _PWMA_CCR2L
                                    300 	.globl _PWMA_CCR2H
                                    301 	.globl _PWMA_CCR1L
                                    302 	.globl _PWMA_CCR1H
                                    303 	.globl _PWMA_RCR
                                    304 	.globl _PWMA_ARRL
                                    305 	.globl _PWMA_ARRH
                                    306 	.globl _PWMA_PSCRL
                                    307 	.globl _PWMA_PSCRH
                                    308 	.globl _PWMA_CNTRL
                                    309 	.globl _PWMA_CNTRH
                                    310 	.globl _PWMA_CCER2
                                    311 	.globl _PWMA_CCER1
                                    312 	.globl _PWMA_CCMR4
                                    313 	.globl _PWMA_CCMR3
                                    314 	.globl _PWMA_CCMR2
                                    315 	.globl _PWMA_CCMR1
                                    316 	.globl _PWMA_EGR
                                    317 	.globl _PWMA_SR2
                                    318 	.globl _PWMA_SR1
                                    319 	.globl _PWMA_IER
                                    320 	.globl _PWMA_ETR
                                    321 	.globl _PWMA_SMCR
                                    322 	.globl _PWMA_CR2
                                    323 	.globl _PWMA_CR1
                                    324 	.globl _PWMB_IOAUX
                                    325 	.globl _PWMB_PS
                                    326 	.globl _PWMB_ENO
                                    327 	.globl _PWMB_ETRPS
                                    328 	.globl _PWMA_IOAUX
                                    329 	.globl _PWMA_PS
                                    330 	.globl _PWMA_ENO
                                    331 	.globl _PWMA_ETRPS
                                    332 	.globl _RSTFLAG
                                    333 	.globl _SPFUNC
                                    334 	.globl _OPCON
                                    335 	.globl _ARCON
                                    336 	.globl _MD4
                                    337 	.globl _MD5
                                    338 	.globl _MD0
                                    339 	.globl _MD1
                                    340 	.globl _MD2
                                    341 	.globl _MD3
                                    342 	.globl _DMA_LCM_RXAL
                                    343 	.globl _DMA_LCM_RXAH
                                    344 	.globl _DMA_LCM_TXAL
                                    345 	.globl _DMA_LCM_TXAH
                                    346 	.globl _DMA_LCM_DONE
                                    347 	.globl _DMA_LCM_AMT
                                    348 	.globl _DMA_LCM_STA
                                    349 	.globl _DMA_LCM_CR
                                    350 	.globl _DMA_LCM_CFG
                                    351 	.globl _LCMIDDAT
                                    352 	.globl _LCMIDDATH
                                    353 	.globl _LCMIDDATL
                                    354 	.globl _LCMSTA
                                    355 	.globl _LCMCR
                                    356 	.globl _LCMCFG2
                                    357 	.globl _LCMCFG
                                    358 	.globl _I2CMSAUX
                                    359 	.globl _I2CRXD
                                    360 	.globl _I2CTXD
                                    361 	.globl _I2CSLADR
                                    362 	.globl _I2CSLST
                                    363 	.globl _I2CSLCR
                                    364 	.globl _I2CMSST
                                    365 	.globl _I2CMSCR
                                    366 	.globl _I2CCFG
                                    367 	.globl _PINIPH
                                    368 	.globl _PINIPL
                                    369 	.globl _P5IE
                                    370 	.globl _P5DR
                                    371 	.globl _P5SR
                                    372 	.globl _P5NCS
                                    373 	.globl _P5PU
                                    374 	.globl _P5WKUE
                                    375 	.globl _P5IM1
                                    376 	.globl _P5IM0
                                    377 	.globl _P5INTF
                                    378 	.globl _P5INTE
                                    379 	.globl _P3IE
                                    380 	.globl _P3DR
                                    381 	.globl _P3SR
                                    382 	.globl _P3NCS
                                    383 	.globl _P3PU
                                    384 	.globl _P3WKUE
                                    385 	.globl _P3IM1
                                    386 	.globl _P3IM0
                                    387 	.globl _P3INTF
                                    388 	.globl _P3INTE
                                    389 	.globl _P2IE
                                    390 	.globl _P2DR
                                    391 	.globl _P2SR
                                    392 	.globl _P2NCS
                                    393 	.globl _P2PU
                                    394 	.globl _P2WKUE
                                    395 	.globl _P2IM1
                                    396 	.globl _P2IM0
                                    397 	.globl _P2INTF
                                    398 	.globl _P2INTE
                                    399 	.globl _P1IE
                                    400 	.globl _P1DR
                                    401 	.globl _P1SR
                                    402 	.globl _P1NCS
                                    403 	.globl _P1PU
                                    404 	.globl _P1WKUE
                                    405 	.globl _P1IM1
                                    406 	.globl _P1IM0
                                    407 	.globl _P1INTF
                                    408 	.globl _P1INTE
                                    409 	.globl _DMA_M2M_RXAL
                                    410 	.globl _DMA_M2M_RXAH
                                    411 	.globl _DMA_M2M_TXAL
                                    412 	.globl _DMA_M2M_TXAH
                                    413 	.globl _DMA_M2M_DONE
                                    414 	.globl _DMA_M2M_AMT
                                    415 	.globl _DMA_M2M_STA
                                    416 	.globl _DMA_M2M_CR
                                    417 	.globl _DMA_M2M_CFG
                                    418 	.globl _CMPEXCFG
                                    419 	.globl _DMA_ADC_CHSW1
                                    420 	.globl _DMA_ADC_CHSW0
                                    421 	.globl _DMA_ADC_CFG2
                                    422 	.globl _DMA_ADC_RXAL
                                    423 	.globl _DMA_ADC_RXAH
                                    424 	.globl _DMA_ADC_STA
                                    425 	.globl _DMA_ADC_CR
                                    426 	.globl _DMA_ADC_CFG
                                    427 	.globl _ADCEXCFG
                                    428 	.globl _ADCTIM
                                    429 	.globl _serialConsoleInitialise
                                    430 	.globl _putchar
                                    431 	.globl _getchar
                                    432 ;--------------------------------------------------------
                                    433 ; special function registers
                                    434 ;--------------------------------------------------------
                                    435 	.area RSEG    (ABS,DATA)
      000000                        436 	.org 0x0000
                           0000BC   437 _ADC_CONTR	=	0x00bc
                           0000BD   438 _ADC_RESH	=	0x00bd
                           0000BE   439 _ADC_RESL	=	0x00be
                           00BDBE   440 _ADC_RES	=	0xbdbe
                           0000DE   441 _ADCCFG	=	0x00de
                           0000FA   442 _DMA_ADC_AMT	=	0x00fa
                           0000E6   443 _CMPCR1	=	0x00e6
                           0000E7   444 _CMPCR2	=	0x00e7
                           000082   445 _DPL	=	0x0082
                           000083   446 _DPH	=	0x0083
                           008382   447 _DP	=	0x8382
                           0000E3   448 _DPS	=	0x00e3
                           0000E4   449 _DPL1	=	0x00e4
                           0000E5   450 _DPH1	=	0x00e5
                           0000AE   451 _TA	=	0x00ae
                           000090   452 _P1	=	0x0090
                           000091   453 _P1M1	=	0x0091
                           000092   454 _P1M0	=	0x0092
                           0000A0   455 _P2	=	0x00a0
                           000095   456 _P2M1	=	0x0095
                           000096   457 _P2M0	=	0x0096
                           0000B0   458 _P3	=	0x00b0
                           0000B1   459 _P3M1	=	0x00b1
                           0000B2   460 _P3M0	=	0x00b2
                           0000C8   461 _P5	=	0x00c8
                           0000C9   462 _P5M1	=	0x00c9
                           0000CA   463 _P5M0	=	0x00ca
                           0000C2   464 _IAP_DATA	=	0x00c2
                           0000C3   465 _IAP_ADDRH	=	0x00c3
                           0000C4   466 _IAP_ADDRL	=	0x00c4
                           00C3C4   467 _IAP_ADDR	=	0xc3c4
                           0000C5   468 _IAP_CMD	=	0x00c5
                           0000C6   469 _IAP_TRIG	=	0x00c6
                           0000C7   470 _IAP_CONTR	=	0x00c7
                           0000F5   471 _IAP_TPS	=	0x00f5
                           00008F   472 _INT_CLKO	=	0x008f
                           0000A8   473 _IE1	=	0x00a8
                           0000B8   474 _IP1L	=	0x00b8
                           0000B7   475 _IP1H	=	0x00b7
                           0000AF   476 _IE2	=	0x00af
                           0000B5   477 _IP2L	=	0x00b5
                           0000B6   478 _IP2H	=	0x00b6
                           0000DF   479 _IP3L	=	0x00df
                           0000EE   480 _IP3H	=	0x00ee
                           000081   481 _SP	=	0x0081
                           0000D0   482 _PSW	=	0x00d0
                           0000E0   483 _ACC	=	0x00e0
                           0000F0   484 _B	=	0x00f0
                           000087   485 _PCON	=	0x0087
                           0000FF   486 _RSTCFG	=	0x00ff
                           0000A2   487 _P_SW1	=	0x00a2
                           0000BA   488 _P_SW2	=	0x00ba
                           0000A1   489 _BUS_SPEED	=	0x00a1
                           0000AA   490 _WKTCL	=	0x00aa
                           0000AB   491 _WKTCH	=	0x00ab
                           00ABAA   492 _WKTC	=	0xabaa
                           0000CD   493 _SPSTAT	=	0x00cd
                           0000CE   494 _SPCTL	=	0x00ce
                           0000CF   495 _SPDAT	=	0x00cf
                           00009D   496 _IRCBAND	=	0x009d
                           00009E   497 _LIRTRIM	=	0x009e
                           00009F   498 _IRTRIM	=	0x009f
                           000088   499 _TCON	=	0x0088
                           000089   500 _TMOD	=	0x0089
                           00008A   501 _T0L	=	0x008a
                           00008C   502 _T0H	=	0x008c
                           008C8A   503 _T0	=	0x8c8a
                           00008B   504 _T1L	=	0x008b
                           00008D   505 _T1H	=	0x008d
                           008D8B   506 _T1	=	0x8d8b
                           0000D7   507 _T2L	=	0x00d7
                           0000D6   508 _T2H	=	0x00d6
                           00D6D7   509 _T2	=	0xd6d7
                           00008E   510 _AUXR	=	0x008e
                           0000C1   511 _WDT_CONTR	=	0x00c1
                           0000D1   512 _T4T3M	=	0x00d1
                           0000D2   513 _T4H	=	0x00d2
                           0000D3   514 _T4L	=	0x00d3
                           00D2D3   515 _T4	=	0xd2d3
                           0000D4   516 _T3H	=	0x00d4
                           0000D5   517 _T3L	=	0x00d5
                           00D4D5   518 _T3	=	0xd4d5
                           0000EF   519 _AUXINTIF	=	0x00ef
                           0000A9   520 _SADDR	=	0x00a9
                           0000B9   521 _SADEN	=	0x00b9
                           000098   522 _S1CON	=	0x0098
                           000099   523 _S1BUF	=	0x0099
                           00009A   524 _S2CON	=	0x009a
                           00009B   525 _S2BUF	=	0x009b
                           0000AC   526 _S3CON	=	0x00ac
                           0000AD   527 _S3BUF	=	0x00ad
                           000084   528 _S4CON	=	0x0084
                           000085   529 _S4BUF	=	0x0085
                           0000DC   530 _USBCLK	=	0x00dc
                           0000EC   531 _USBDAT	=	0x00ec
                           0000F4   532 _USBCON	=	0x00f4
                           0000FC   533 _USBADR	=	0x00fc
                                    534 ;--------------------------------------------------------
                                    535 ; special function bits
                                    536 ;--------------------------------------------------------
                                    537 	.area RSEG    (ABS,DATA)
      000000                        538 	.org 0x0000
                           000090   539 _P1_0	=	0x0090
                           000091   540 _P1_1	=	0x0091
                           000092   541 _P1_2	=	0x0092
                           000093   542 _P1_3	=	0x0093
                           000094   543 _P1_4	=	0x0094
                           000095   544 _P1_5	=	0x0095
                           000096   545 _P1_6	=	0x0096
                           000097   546 _P1_7	=	0x0097
                           0000A0   547 _P2_0	=	0x00a0
                           0000A1   548 _P2_1	=	0x00a1
                           0000A2   549 _P2_2	=	0x00a2
                           0000A3   550 _P2_3	=	0x00a3
                           0000A4   551 _P2_4	=	0x00a4
                           0000A5   552 _P2_5	=	0x00a5
                           0000A6   553 _P2_6	=	0x00a6
                           0000A7   554 _P2_7	=	0x00a7
                           0000B0   555 _P3_0	=	0x00b0
                           0000B1   556 _P3_1	=	0x00b1
                           0000B2   557 _P3_2	=	0x00b2
                           0000B3   558 _P3_3	=	0x00b3
                           0000B4   559 _P3_4	=	0x00b4
                           0000B5   560 _P3_5	=	0x00b5
                           0000B6   561 _P3_6	=	0x00b6
                           0000B7   562 _P3_7	=	0x00b7
                           0000C8   563 _P5_0	=	0x00c8
                           0000C9   564 _P5_1	=	0x00c9
                           0000CA   565 _P5_2	=	0x00ca
                           0000CB   566 _P5_3	=	0x00cb
                           0000CC   567 _P5_4	=	0x00cc
                           0000CD   568 _P5_5	=	0x00cd
                           000088   569 _INT0TR	=	0x0088
                           00008A   570 _INT1TR	=	0x008a
                           0000A8   571 _INT0IE	=	0x00a8
                           0000AA   572 _INT1IE	=	0x00aa
                           0000AF   573 _EA	=	0x00af
                           0000D0   574 _P	=	0x00d0
                           0000D1   575 _F1	=	0x00d1
                           0000D2   576 _OV	=	0x00d2
                           0000D3   577 _RS0	=	0x00d3
                           0000D4   578 _RS1	=	0x00d4
                           0000D5   579 _F0	=	0x00d5
                           0000D6   580 _AC	=	0x00d6
                           0000D7   581 _CY	=	0x00d7
                           00008C   582 _T0RUN	=	0x008c
                           00008E   583 _T1RUN	=	0x008e
                           0000A9   584 _T0IE	=	0x00a9
                           0000AB   585 _T1IE	=	0x00ab
                           00009F   586 _S1SM0_FE	=	0x009f
                                    587 ;--------------------------------------------------------
                                    588 ; overlayable register banks
                                    589 ;--------------------------------------------------------
                                    590 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        591 	.ds 8
                                    592 ;--------------------------------------------------------
                                    593 ; internal ram data
                                    594 ;--------------------------------------------------------
                                    595 	.area DSEG    (DATA)
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
      000000                        888 _uartGetCharacter_result_65536_69:
      000000                        889 	.ds 1
      000001                        890 ___serialConsoleUart:
      000001                        891 	.ds 1
      000002                        892 _serialConsoleInitialise_PARM_2:
      000002                        893 	.ds 4
      000006                        894 _serialConsoleInitialise_PARM_3:
      000006                        895 	.ds 1
      000007                        896 _serialConsoleInitialise_uart_65536_148:
      000007                        897 	.ds 1
      000008                        898 _putchar_c_65536_150:
      000008                        899 	.ds 2
      00000A                        900 _putchar_c_262144_154:
      00000A                        901 	.ds 1
      00000B                        902 _putchar_c_196608_157:
      00000B                        903 	.ds 1
      00000C                        904 _getchar_result_262144_162:
      00000C                        905 	.ds 1
                                    906 ;--------------------------------------------------------
                                    907 ; absolute external ram data
                                    908 ;--------------------------------------------------------
                                    909 	.area XABS    (ABS,XDATA)
                                    910 ;--------------------------------------------------------
                                    911 ; external initialized ram data
                                    912 ;--------------------------------------------------------
                                    913 	.area XISEG   (XDATA)
                                    914 	.area HOME    (CODE)
                                    915 	.area GSINIT0 (CODE)
                                    916 	.area GSINIT1 (CODE)
                                    917 	.area GSINIT2 (CODE)
                                    918 	.area GSINIT3 (CODE)
                                    919 	.area GSINIT4 (CODE)
                                    920 	.area GSINIT5 (CODE)
                                    921 	.area GSINIT  (CODE)
                                    922 	.area GSFINAL (CODE)
                                    923 	.area CSEG    (CODE)
                                    924 ;--------------------------------------------------------
                                    925 ; global & static initialisations
                                    926 ;--------------------------------------------------------
                                    927 	.area HOME    (CODE)
                                    928 	.area GSINIT  (CODE)
                                    929 	.area GSFINAL (CODE)
                                    930 	.area GSINIT  (CODE)
                                    931 ;--------------------------------------------------------
                                    932 ; Home
                                    933 ;--------------------------------------------------------
                                    934 	.area HOME    (CODE)
                                    935 	.area HOME    (CODE)
                                    936 ;--------------------------------------------------------
                                    937 ; code
                                    938 ;--------------------------------------------------------
                                    939 	.area CSEG    (CODE)
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'serialConsoleInitialise'
                                    942 ;------------------------------------------------------------
                                    943 ;baudRate                  Allocated with name '_serialConsoleInitialise_PARM_2'
                                    944 ;pinConfiguration          Allocated with name '_serialConsoleInitialise_PARM_3'
                                    945 ;uart                      Allocated with name '_serialConsoleInitialise_uart_65536_148'
                                    946 ;------------------------------------------------------------
                                    947 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:52: void serialConsoleInitialise(Uart uart, uint32_t baudRate, uint8_t pinConfiguration) {
                                    948 ;	-----------------------------------------
                                    949 ;	 function serialConsoleInitialise
                                    950 ;	-----------------------------------------
      000182                        951 _serialConsoleInitialise:
                           000007   952 	ar7 = 0x07
                           000006   953 	ar6 = 0x06
                           000005   954 	ar5 = 0x05
                           000004   955 	ar4 = 0x04
                           000003   956 	ar3 = 0x03
                           000002   957 	ar2 = 0x02
                           000001   958 	ar1 = 0x01
                           000000   959 	ar0 = 0x00
      000182 E5 82            [12]  960 	mov	a,dpl
      000184 90 00 07         [24]  961 	mov	dptr,#_serialConsoleInitialise_uart_65536_148
      000187 F0               [24]  962 	movx	@dptr,a
                                    963 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:53: __serialConsoleUart = uart;
      000188 E0               [24]  964 	movx	a,@dptr
      000189 FF               [12]  965 	mov	r7,a
      00018A 90 00 01         [24]  966 	mov	dptr,#___serialConsoleUart
      00018D F0               [24]  967 	movx	@dptr,a
                                    968 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:54: uartInitialise(__serialConsoleUart, baudRate, CONSOLE_TIMER, UART_8N1, pinConfiguration);
      00018E 90 00 02         [24]  969 	mov	dptr,#_serialConsoleInitialise_PARM_2
      000191 E0               [24]  970 	movx	a,@dptr
      000192 FB               [12]  971 	mov	r3,a
      000193 A3               [24]  972 	inc	dptr
      000194 E0               [24]  973 	movx	a,@dptr
      000195 FC               [12]  974 	mov	r4,a
      000196 A3               [24]  975 	inc	dptr
      000197 E0               [24]  976 	movx	a,@dptr
      000198 FD               [12]  977 	mov	r5,a
      000199 A3               [24]  978 	inc	dptr
      00019A E0               [24]  979 	movx	a,@dptr
      00019B FE               [12]  980 	mov	r6,a
      00019C 90 00 06         [24]  981 	mov	dptr,#_serialConsoleInitialise_PARM_3
      00019F E0               [24]  982 	movx	a,@dptr
      0001A0 FA               [12]  983 	mov	r2,a
      0001A1 90 01 13         [24]  984 	mov	dptr,#_uartInitialise_PARM_2
      0001A4 EB               [12]  985 	mov	a,r3
      0001A5 F0               [24]  986 	movx	@dptr,a
      0001A6 EC               [12]  987 	mov	a,r4
      0001A7 A3               [24]  988 	inc	dptr
      0001A8 F0               [24]  989 	movx	@dptr,a
      0001A9 ED               [12]  990 	mov	a,r5
      0001AA A3               [24]  991 	inc	dptr
      0001AB F0               [24]  992 	movx	@dptr,a
      0001AC EE               [12]  993 	mov	a,r6
      0001AD A3               [24]  994 	inc	dptr
      0001AE F0               [24]  995 	movx	@dptr,a
      0001AF 90 01 17         [24]  996 	mov	dptr,#_uartInitialise_PARM_3
      0001B2 74 01            [12]  997 	mov	a,#0x01
      0001B4 F0               [24]  998 	movx	@dptr,a
      0001B5 90 01 18         [24]  999 	mov	dptr,#_uartInitialise_PARM_4
      0001B8 E4               [12] 1000 	clr	a
      0001B9 F0               [24] 1001 	movx	@dptr,a
      0001BA 90 01 19         [24] 1002 	mov	dptr,#_uartInitialise_PARM_5
      0001BD EA               [12] 1003 	mov	a,r2
      0001BE F0               [24] 1004 	movx	@dptr,a
      0001BF 8F 82            [24] 1005 	mov	dpl,r7
                                   1006 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:55: }
      0001C1 02 28 92         [24] 1007 	ljmp	_uartInitialise
                                   1008 ;------------------------------------------------------------
                                   1009 ;Allocation info for local variables in function 'putchar'
                                   1010 ;------------------------------------------------------------
                                   1011 ;c                         Allocated with name '_putchar_c_65536_150'
                                   1012 ;__1310720018              Allocated with name '_putchar___1310720018_131072_151'
                                   1013 ;__1966080013              Allocated with name '_putchar___1966080013_196608_152'
                                   1014 ;__1966080014              Allocated with name '_putchar___1966080014_196608_153'
                                   1015 ;__1966080015              Allocated with name '_putchar___1966080015_196608_153'
                                   1016 ;__1966080016              Allocated with name '_putchar___1966080016_196608_153'
                                   1017 ;uart                      Allocated with name '_putchar_uart_262144_154'
                                   1018 ;c                         Allocated with name '_putchar_c_262144_154'
                                   1019 ;blocking                  Allocated with name '_putchar_blocking_262144_154'
                                   1020 ;__1310720019              Allocated with name '_putchar___1310720019_131072_156'
                                   1021 ;__1310720020              Allocated with name '_putchar___1310720020_131072_156'
                                   1022 ;__1310720021              Allocated with name '_putchar___1310720021_131072_156'
                                   1023 ;uart                      Allocated with name '_putchar_uart_196608_157'
                                   1024 ;c                         Allocated with name '_putchar_c_196608_157'
                                   1025 ;blocking                  Allocated with name '_putchar_blocking_196608_157'
                                   1026 ;------------------------------------------------------------
                                   1027 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:57: int putchar(int c) {
                                   1028 ;	-----------------------------------------
                                   1029 ;	 function putchar
                                   1030 ;	-----------------------------------------
      0001C4                       1031 _putchar:
      0001C4 AF 83            [24] 1032 	mov	r7,dph
      0001C6 E5 82            [12] 1033 	mov	a,dpl
      0001C8 90 00 08         [24] 1034 	mov	dptr,#_putchar_c_65536_150
      0001CB F0               [24] 1035 	movx	@dptr,a
      0001CC EF               [12] 1036 	mov	a,r7
      0001CD A3               [24] 1037 	inc	dptr
      0001CE F0               [24] 1038 	movx	@dptr,a
                                   1039 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:58: if (c == '\n') {
      0001CF 90 00 08         [24] 1040 	mov	dptr,#_putchar_c_65536_150
      0001D2 E0               [24] 1041 	movx	a,@dptr
      0001D3 FE               [12] 1042 	mov	r6,a
      0001D4 A3               [24] 1043 	inc	dptr
      0001D5 E0               [24] 1044 	movx	a,@dptr
      0001D6 FF               [12] 1045 	mov	r7,a
      0001D7 BE 0A 29         [24] 1046 	cjne	r6,#0x0a,00102$
      0001DA BF 00 26         [24] 1047 	cjne	r7,#0x00,00102$
                                   1048 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:61: uartSendCharacter(__serialConsoleUart, '\r', BLOCKING);
      0001DD 90 00 01         [24] 1049 	mov	dptr,#___serialConsoleUart
      0001E0 E0               [24] 1050 	movx	a,@dptr
      0001E1 FF               [12] 1051 	mov	r7,a
      0001E2 90 00 0A         [24] 1052 	mov	dptr,#_putchar_c_262144_154
      0001E5 74 0D            [12] 1053 	mov	a,#0x0d
      0001E7 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:196: return uartSendBlock(uart, &c, 1, blocking);
      0001E8 90 01 25         [24] 1056 	mov	dptr,#_uartSendBlock_PARM_2
      0001EB 74 0A            [12] 1057 	mov	a,#_putchar_c_262144_154
      0001ED F0               [24] 1058 	movx	@dptr,a
      0001EE 74 00            [12] 1059 	mov	a,#(_putchar_c_262144_154 >> 8)
      0001F0 A3               [24] 1060 	inc	dptr
      0001F1 F0               [24] 1061 	movx	@dptr,a
      0001F2 E4               [12] 1062 	clr	a
      0001F3 A3               [24] 1063 	inc	dptr
      0001F4 F0               [24] 1064 	movx	@dptr,a
      0001F5 90 01 28         [24] 1065 	mov	dptr,#_uartSendBlock_PARM_3
      0001F8 04               [12] 1066 	inc	a
      0001F9 F0               [24] 1067 	movx	@dptr,a
      0001FA 90 01 29         [24] 1068 	mov	dptr,#_uartSendBlock_PARM_4
      0001FD F0               [24] 1069 	movx	@dptr,a
      0001FE 8F 82            [24] 1070 	mov	dpl,r7
      000200 12 2B 86         [24] 1071 	lcall	_uartSendBlock
                                   1072 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:61: uartSendCharacter(__serialConsoleUart, '\r', BLOCKING);
      000203                       1073 00102$:
                                   1074 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:64: uartSendCharacter(__serialConsoleUart, c, BLOCKING);
      000203 90 00 08         [24] 1075 	mov	dptr,#_putchar_c_65536_150
      000206 E0               [24] 1076 	movx	a,@dptr
      000207 FE               [12] 1077 	mov	r6,a
      000208 A3               [24] 1078 	inc	dptr
      000209 E0               [24] 1079 	movx	a,@dptr
      00020A FF               [12] 1080 	mov	r7,a
      00020B 8E 05            [24] 1081 	mov	ar5,r6
      00020D 90 00 01         [24] 1082 	mov	dptr,#___serialConsoleUart
      000210 E0               [24] 1083 	movx	a,@dptr
      000211 FC               [12] 1084 	mov	r4,a
      000212 90 00 0B         [24] 1085 	mov	dptr,#_putchar_c_196608_157
      000215 ED               [12] 1086 	mov	a,r5
      000216 F0               [24] 1087 	movx	@dptr,a
                                   1088 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:196: return uartSendBlock(uart, &c, 1, blocking);
      000217 90 01 25         [24] 1089 	mov	dptr,#_uartSendBlock_PARM_2
      00021A 74 0B            [12] 1090 	mov	a,#_putchar_c_196608_157
      00021C F0               [24] 1091 	movx	@dptr,a
      00021D 74 00            [12] 1092 	mov	a,#(_putchar_c_196608_157 >> 8)
      00021F A3               [24] 1093 	inc	dptr
      000220 F0               [24] 1094 	movx	@dptr,a
      000221 E4               [12] 1095 	clr	a
      000222 A3               [24] 1096 	inc	dptr
      000223 F0               [24] 1097 	movx	@dptr,a
      000224 90 01 28         [24] 1098 	mov	dptr,#_uartSendBlock_PARM_3
      000227 04               [12] 1099 	inc	a
      000228 F0               [24] 1100 	movx	@dptr,a
      000229 90 01 29         [24] 1101 	mov	dptr,#_uartSendBlock_PARM_4
      00022C F0               [24] 1102 	movx	@dptr,a
      00022D 8C 82            [24] 1103 	mov	dpl,r4
      00022F C0 07            [24] 1104 	push	ar7
      000231 C0 06            [24] 1105 	push	ar6
      000233 12 2B 86         [24] 1106 	lcall	_uartSendBlock
      000236 D0 06            [24] 1107 	pop	ar6
      000238 D0 07            [24] 1108 	pop	ar7
                                   1109 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:66: return c;
      00023A 8E 82            [24] 1110 	mov	dpl,r6
      00023C 8F 83            [24] 1111 	mov	dph,r7
                                   1112 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:67: }
      00023E 22               [24] 1113 	ret
                                   1114 ;------------------------------------------------------------
                                   1115 ;Allocation info for local variables in function 'getchar'
                                   1116 ;------------------------------------------------------------
                                   1117 ;__1310720023              Allocated with name '_getchar___1310720023_131072_159'
                                   1118 ;__1310720024              Allocated with name '_getchar___1310720024_131072_160'
                                   1119 ;__1310720025              Allocated with name '_getchar___1310720025_131072_160'
                                   1120 ;uart                      Allocated with name '_getchar_uart_196608_161'
                                   1121 ;blocking                  Allocated with name '_getchar_blocking_196608_161'
                                   1122 ;result                    Allocated with name '_getchar_result_262144_162'
                                   1123 ;------------------------------------------------------------
                                   1124 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:69: int getchar() {
                                   1125 ;	-----------------------------------------
                                   1126 ;	 function getchar
                                   1127 ;	-----------------------------------------
      00023F                       1128 _getchar:
                                   1129 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:70: return uartGetCharacter(__serialConsoleUart, BLOCKING);
      00023F 90 00 01         [24] 1130 	mov	dptr,#___serialConsoleUart
      000242 E0               [24] 1131 	movx	a,@dptr
      000243 FF               [12] 1132 	mov	r7,a
                                   1133 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:189: uint8_t result = 0;
      000244 90 00 0C         [24] 1134 	mov	dptr,#_getchar_result_262144_162
      000247 E4               [12] 1135 	clr	a
      000248 F0               [24] 1136 	movx	@dptr,a
                                   1137 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:190: uartGetBlock(uart, &result, 1, blocking);
      000249 90 01 1F         [24] 1138 	mov	dptr,#_uartGetBlock_PARM_2
      00024C 74 0C            [12] 1139 	mov	a,#_getchar_result_262144_162
      00024E F0               [24] 1140 	movx	@dptr,a
      00024F 74 00            [12] 1141 	mov	a,#(_getchar_result_262144_162 >> 8)
      000251 A3               [24] 1142 	inc	dptr
      000252 F0               [24] 1143 	movx	@dptr,a
      000253 E4               [12] 1144 	clr	a
      000254 A3               [24] 1145 	inc	dptr
      000255 F0               [24] 1146 	movx	@dptr,a
      000256 90 01 22         [24] 1147 	mov	dptr,#_uartGetBlock_PARM_3
      000259 04               [12] 1148 	inc	a
      00025A F0               [24] 1149 	movx	@dptr,a
      00025B 90 01 23         [24] 1150 	mov	dptr,#_uartGetBlock_PARM_4
      00025E F0               [24] 1151 	movx	@dptr,a
      00025F 8F 82            [24] 1152 	mov	dpl,r7
      000261 12 2B 1B         [24] 1153 	lcall	_uartGetBlock
                                   1154 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.h:192: return result;
      000264 90 00 0C         [24] 1155 	mov	dptr,#_getchar_result_262144_162
      000267 E0               [24] 1156 	movx	a,@dptr
      000268 FF               [12] 1157 	mov	r7,a
                                   1158 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:70: return uartGetCharacter(__serialConsoleUart, BLOCKING);
      000269 7E 00            [12] 1159 	mov	r6,#0x00
      00026B 8F 82            [24] 1160 	mov	dpl,r7
      00026D 8E 83            [24] 1161 	mov	dph,r6
                                   1162 ;	/home/mr-a-717/.stc/uni-stc/hal/serial-console.c:71: }
      00026F 22               [24] 1163 	ret
                                   1164 	.area CSEG    (CODE)
                                   1165 	.area CONST   (CODE)
      00585E                       1166 _FONTS:
      00585E 00                    1167 	.db #0x00	; 0
      00585F 00                    1168 	.db #0x00	; 0
      005860 00                    1169 	.db #0x00	; 0
      005861 00                    1170 	.db #0x00	; 0
      005862 00                    1171 	.db #0x00	; 0
      005863 81                    1172 	.db #0x81	; 129
      005864 81                    1173 	.db #0x81	; 129
      005865 18                    1174 	.db #0x18	; 24
      005866 81                    1175 	.db #0x81	; 129
      005867 81                    1176 	.db #0x81	; 129
      005868 00                    1177 	.db #0x00	; 0
      005869 07                    1178 	.db #0x07	; 7
      00586A 00                    1179 	.db #0x00	; 0
      00586B 07                    1180 	.db #0x07	; 7
      00586C 00                    1181 	.db #0x00	; 0
      00586D 14                    1182 	.db #0x14	; 20
      00586E 7F                    1183 	.db #0x7f	; 127
      00586F 14                    1184 	.db #0x14	; 20
      005870 7F                    1185 	.db #0x7f	; 127
      005871 14                    1186 	.db #0x14	; 20
      005872 24                    1187 	.db #0x24	; 36
      005873 2A                    1188 	.db #0x2a	; 42
      005874 7F                    1189 	.db #0x7f	; 127
      005875 2A                    1190 	.db #0x2a	; 42
      005876 12                    1191 	.db #0x12	; 18
      005877 23                    1192 	.db #0x23	; 35
      005878 13                    1193 	.db #0x13	; 19
      005879 08                    1194 	.db #0x08	; 8
      00587A 64                    1195 	.db #0x64	; 100	'd'
      00587B 62                    1196 	.db #0x62	; 98	'b'
      00587C 36                    1197 	.db #0x36	; 54	'6'
      00587D 49                    1198 	.db #0x49	; 73	'I'
      00587E 55                    1199 	.db #0x55	; 85	'U'
      00587F 22                    1200 	.db #0x22	; 34
      005880 50                    1201 	.db #0x50	; 80	'P'
      005881 00                    1202 	.db #0x00	; 0
      005882 05                    1203 	.db #0x05	; 5
      005883 03                    1204 	.db #0x03	; 3
      005884 00                    1205 	.db #0x00	; 0
      005885 00                    1206 	.db #0x00	; 0
      005886 00                    1207 	.db #0x00	; 0
      005887 1C                    1208 	.db #0x1c	; 28
      005888 22                    1209 	.db #0x22	; 34
      005889 41                    1210 	.db #0x41	; 65	'A'
      00588A 00                    1211 	.db #0x00	; 0
      00588B 00                    1212 	.db #0x00	; 0
      00588C 41                    1213 	.db #0x41	; 65	'A'
      00588D 22                    1214 	.db #0x22	; 34
      00588E 1C                    1215 	.db #0x1c	; 28
      00588F 00                    1216 	.db #0x00	; 0
      005890 14                    1217 	.db #0x14	; 20
      005891 08                    1218 	.db #0x08	; 8
      005892 3E                    1219 	.db #0x3e	; 62
      005893 08                    1220 	.db #0x08	; 8
      005894 14                    1221 	.db #0x14	; 20
      005895 08                    1222 	.db #0x08	; 8
      005896 08                    1223 	.db #0x08	; 8
      005897 3E                    1224 	.db #0x3e	; 62
      005898 08                    1225 	.db #0x08	; 8
      005899 08                    1226 	.db #0x08	; 8
      00589A 00                    1227 	.db #0x00	; 0
      00589B 50                    1228 	.db #0x50	; 80	'P'
      00589C 30                    1229 	.db #0x30	; 48	'0'
      00589D 00                    1230 	.db #0x00	; 0
      00589E 00                    1231 	.db #0x00	; 0
      00589F 08                    1232 	.db #0x08	; 8
      0058A0 08                    1233 	.db #0x08	; 8
      0058A1 08                    1234 	.db #0x08	; 8
      0058A2 08                    1235 	.db #0x08	; 8
      0058A3 08                    1236 	.db #0x08	; 8
      0058A4 00                    1237 	.db #0x00	; 0
      0058A5 60                    1238 	.db #0x60	; 96
      0058A6 60                    1239 	.db #0x60	; 96
      0058A7 00                    1240 	.db #0x00	; 0
      0058A8 00                    1241 	.db #0x00	; 0
      0058A9 20                    1242 	.db #0x20	; 32
      0058AA 10                    1243 	.db #0x10	; 16
      0058AB 08                    1244 	.db #0x08	; 8
      0058AC 04                    1245 	.db #0x04	; 4
      0058AD 02                    1246 	.db #0x02	; 2
      0058AE 3E                    1247 	.db #0x3e	; 62
      0058AF 51                    1248 	.db #0x51	; 81	'Q'
      0058B0 49                    1249 	.db #0x49	; 73	'I'
      0058B1 45                    1250 	.db #0x45	; 69	'E'
      0058B2 3E                    1251 	.db #0x3e	; 62
      0058B3 00                    1252 	.db #0x00	; 0
      0058B4 42                    1253 	.db #0x42	; 66	'B'
      0058B5 7F                    1254 	.db #0x7f	; 127
      0058B6 40                    1255 	.db #0x40	; 64
      0058B7 00                    1256 	.db #0x00	; 0
      0058B8 42                    1257 	.db #0x42	; 66	'B'
      0058B9 61                    1258 	.db #0x61	; 97	'a'
      0058BA 51                    1259 	.db #0x51	; 81	'Q'
      0058BB 49                    1260 	.db #0x49	; 73	'I'
      0058BC 46                    1261 	.db #0x46	; 70	'F'
      0058BD 21                    1262 	.db #0x21	; 33
      0058BE 41                    1263 	.db #0x41	; 65	'A'
      0058BF 45                    1264 	.db #0x45	; 69	'E'
      0058C0 4B                    1265 	.db #0x4b	; 75	'K'
      0058C1 31                    1266 	.db #0x31	; 49	'1'
      0058C2 18                    1267 	.db #0x18	; 24
      0058C3 14                    1268 	.db #0x14	; 20
      0058C4 12                    1269 	.db #0x12	; 18
      0058C5 7F                    1270 	.db #0x7f	; 127
      0058C6 10                    1271 	.db #0x10	; 16
      0058C7 27                    1272 	.db #0x27	; 39
      0058C8 45                    1273 	.db #0x45	; 69	'E'
      0058C9 45                    1274 	.db #0x45	; 69	'E'
      0058CA 45                    1275 	.db #0x45	; 69	'E'
      0058CB 39                    1276 	.db #0x39	; 57	'9'
      0058CC 3C                    1277 	.db #0x3c	; 60
      0058CD 4A                    1278 	.db #0x4a	; 74	'J'
      0058CE 49                    1279 	.db #0x49	; 73	'I'
      0058CF 49                    1280 	.db #0x49	; 73	'I'
      0058D0 30                    1281 	.db #0x30	; 48	'0'
      0058D1 01                    1282 	.db #0x01	; 1
      0058D2 71                    1283 	.db #0x71	; 113	'q'
      0058D3 09                    1284 	.db #0x09	; 9
      0058D4 05                    1285 	.db #0x05	; 5
      0058D5 03                    1286 	.db #0x03	; 3
      0058D6 36                    1287 	.db #0x36	; 54	'6'
      0058D7 49                    1288 	.db #0x49	; 73	'I'
      0058D8 49                    1289 	.db #0x49	; 73	'I'
      0058D9 49                    1290 	.db #0x49	; 73	'I'
      0058DA 36                    1291 	.db #0x36	; 54	'6'
      0058DB 06                    1292 	.db #0x06	; 6
      0058DC 49                    1293 	.db #0x49	; 73	'I'
      0058DD 49                    1294 	.db #0x49	; 73	'I'
      0058DE 29                    1295 	.db #0x29	; 41
      0058DF 1E                    1296 	.db #0x1e	; 30
      0058E0 00                    1297 	.db #0x00	; 0
      0058E1 36                    1298 	.db #0x36	; 54	'6'
      0058E2 36                    1299 	.db #0x36	; 54	'6'
      0058E3 00                    1300 	.db #0x00	; 0
      0058E4 00                    1301 	.db #0x00	; 0
      0058E5 00                    1302 	.db #0x00	; 0
      0058E6 56                    1303 	.db #0x56	; 86	'V'
      0058E7 36                    1304 	.db #0x36	; 54	'6'
      0058E8 00                    1305 	.db #0x00	; 0
      0058E9 00                    1306 	.db #0x00	; 0
      0058EA 08                    1307 	.db #0x08	; 8
      0058EB 14                    1308 	.db #0x14	; 20
      0058EC 22                    1309 	.db #0x22	; 34
      0058ED 41                    1310 	.db #0x41	; 65	'A'
      0058EE 00                    1311 	.db #0x00	; 0
      0058EF 14                    1312 	.db #0x14	; 20
      0058F0 14                    1313 	.db #0x14	; 20
      0058F1 14                    1314 	.db #0x14	; 20
      0058F2 14                    1315 	.db #0x14	; 20
      0058F3 14                    1316 	.db #0x14	; 20
      0058F4 00                    1317 	.db #0x00	; 0
      0058F5 41                    1318 	.db #0x41	; 65	'A'
      0058F6 22                    1319 	.db #0x22	; 34
      0058F7 14                    1320 	.db #0x14	; 20
      0058F8 08                    1321 	.db #0x08	; 8
      0058F9 02                    1322 	.db #0x02	; 2
      0058FA 01                    1323 	.db #0x01	; 1
      0058FB 51                    1324 	.db #0x51	; 81	'Q'
      0058FC 09                    1325 	.db #0x09	; 9
      0058FD 06                    1326 	.db #0x06	; 6
      0058FE 32                    1327 	.db #0x32	; 50	'2'
      0058FF 49                    1328 	.db #0x49	; 73	'I'
      005900 79                    1329 	.db #0x79	; 121	'y'
      005901 41                    1330 	.db #0x41	; 65	'A'
      005902 3E                    1331 	.db #0x3e	; 62
      005903 7E                    1332 	.db #0x7e	; 126
      005904 11                    1333 	.db #0x11	; 17
      005905 11                    1334 	.db #0x11	; 17
      005906 11                    1335 	.db #0x11	; 17
      005907 7E                    1336 	.db #0x7e	; 126
      005908 7F                    1337 	.db #0x7f	; 127
      005909 49                    1338 	.db #0x49	; 73	'I'
      00590A 49                    1339 	.db #0x49	; 73	'I'
      00590B 49                    1340 	.db #0x49	; 73	'I'
      00590C 36                    1341 	.db #0x36	; 54	'6'
      00590D 3E                    1342 	.db #0x3e	; 62
      00590E 41                    1343 	.db #0x41	; 65	'A'
      00590F 41                    1344 	.db #0x41	; 65	'A'
      005910 41                    1345 	.db #0x41	; 65	'A'
      005911 22                    1346 	.db #0x22	; 34
      005912 7F                    1347 	.db #0x7f	; 127
      005913 41                    1348 	.db #0x41	; 65	'A'
      005914 41                    1349 	.db #0x41	; 65	'A'
      005915 22                    1350 	.db #0x22	; 34
      005916 1C                    1351 	.db #0x1c	; 28
      005917 7F                    1352 	.db #0x7f	; 127
      005918 49                    1353 	.db #0x49	; 73	'I'
      005919 49                    1354 	.db #0x49	; 73	'I'
      00591A 49                    1355 	.db #0x49	; 73	'I'
      00591B 41                    1356 	.db #0x41	; 65	'A'
      00591C 7F                    1357 	.db #0x7f	; 127
      00591D 09                    1358 	.db #0x09	; 9
      00591E 09                    1359 	.db #0x09	; 9
      00591F 09                    1360 	.db #0x09	; 9
      005920 01                    1361 	.db #0x01	; 1
      005921 3E                    1362 	.db #0x3e	; 62
      005922 41                    1363 	.db #0x41	; 65	'A'
      005923 49                    1364 	.db #0x49	; 73	'I'
      005924 49                    1365 	.db #0x49	; 73	'I'
      005925 7A                    1366 	.db #0x7a	; 122	'z'
      005926 7F                    1367 	.db #0x7f	; 127
      005927 08                    1368 	.db #0x08	; 8
      005928 08                    1369 	.db #0x08	; 8
      005929 08                    1370 	.db #0x08	; 8
      00592A 7F                    1371 	.db #0x7f	; 127
      00592B 00                    1372 	.db #0x00	; 0
      00592C 41                    1373 	.db #0x41	; 65	'A'
      00592D 7F                    1374 	.db #0x7f	; 127
      00592E 41                    1375 	.db #0x41	; 65	'A'
      00592F 00                    1376 	.db #0x00	; 0
      005930 20                    1377 	.db #0x20	; 32
      005931 40                    1378 	.db #0x40	; 64
      005932 41                    1379 	.db #0x41	; 65	'A'
      005933 3F                    1380 	.db #0x3f	; 63
      005934 01                    1381 	.db #0x01	; 1
      005935 7F                    1382 	.db #0x7f	; 127
      005936 08                    1383 	.db #0x08	; 8
      005937 14                    1384 	.db #0x14	; 20
      005938 22                    1385 	.db #0x22	; 34
      005939 41                    1386 	.db #0x41	; 65	'A'
      00593A 7F                    1387 	.db #0x7f	; 127
      00593B 40                    1388 	.db #0x40	; 64
      00593C 40                    1389 	.db #0x40	; 64
      00593D 40                    1390 	.db #0x40	; 64
      00593E 40                    1391 	.db #0x40	; 64
      00593F 7F                    1392 	.db #0x7f	; 127
      005940 02                    1393 	.db #0x02	; 2
      005941 0C                    1394 	.db #0x0c	; 12
      005942 02                    1395 	.db #0x02	; 2
      005943 7F                    1396 	.db #0x7f	; 127
      005944 7F                    1397 	.db #0x7f	; 127
      005945 04                    1398 	.db #0x04	; 4
      005946 08                    1399 	.db #0x08	; 8
      005947 10                    1400 	.db #0x10	; 16
      005948 7F                    1401 	.db #0x7f	; 127
      005949 3E                    1402 	.db #0x3e	; 62
      00594A 41                    1403 	.db #0x41	; 65	'A'
      00594B 41                    1404 	.db #0x41	; 65	'A'
      00594C 41                    1405 	.db #0x41	; 65	'A'
      00594D 3E                    1406 	.db #0x3e	; 62
      00594E 7F                    1407 	.db #0x7f	; 127
      00594F 09                    1408 	.db #0x09	; 9
      005950 09                    1409 	.db #0x09	; 9
      005951 09                    1410 	.db #0x09	; 9
      005952 06                    1411 	.db #0x06	; 6
      005953 3E                    1412 	.db #0x3e	; 62
      005954 41                    1413 	.db #0x41	; 65	'A'
      005955 51                    1414 	.db #0x51	; 81	'Q'
      005956 21                    1415 	.db #0x21	; 33
      005957 5E                    1416 	.db #0x5e	; 94
      005958 7F                    1417 	.db #0x7f	; 127
      005959 09                    1418 	.db #0x09	; 9
      00595A 19                    1419 	.db #0x19	; 25
      00595B 29                    1420 	.db #0x29	; 41
      00595C 46                    1421 	.db #0x46	; 70	'F'
      00595D 46                    1422 	.db #0x46	; 70	'F'
      00595E 49                    1423 	.db #0x49	; 73	'I'
      00595F 49                    1424 	.db #0x49	; 73	'I'
      005960 49                    1425 	.db #0x49	; 73	'I'
      005961 31                    1426 	.db #0x31	; 49	'1'
      005962 01                    1427 	.db #0x01	; 1
      005963 01                    1428 	.db #0x01	; 1
      005964 7F                    1429 	.db #0x7f	; 127
      005965 01                    1430 	.db #0x01	; 1
      005966 01                    1431 	.db #0x01	; 1
      005967 3F                    1432 	.db #0x3f	; 63
      005968 40                    1433 	.db #0x40	; 64
      005969 40                    1434 	.db #0x40	; 64
      00596A 40                    1435 	.db #0x40	; 64
      00596B 3F                    1436 	.db #0x3f	; 63
      00596C 1F                    1437 	.db #0x1f	; 31
      00596D 20                    1438 	.db #0x20	; 32
      00596E 40                    1439 	.db #0x40	; 64
      00596F 20                    1440 	.db #0x20	; 32
      005970 1F                    1441 	.db #0x1f	; 31
      005971 3F                    1442 	.db #0x3f	; 63
      005972 40                    1443 	.db #0x40	; 64
      005973 38                    1444 	.db #0x38	; 56	'8'
      005974 40                    1445 	.db #0x40	; 64
      005975 3F                    1446 	.db #0x3f	; 63
      005976 63                    1447 	.db #0x63	; 99	'c'
      005977 14                    1448 	.db #0x14	; 20
      005978 08                    1449 	.db #0x08	; 8
      005979 14                    1450 	.db #0x14	; 20
      00597A 63                    1451 	.db #0x63	; 99	'c'
      00597B 07                    1452 	.db #0x07	; 7
      00597C 08                    1453 	.db #0x08	; 8
      00597D 70                    1454 	.db #0x70	; 112	'p'
      00597E 08                    1455 	.db #0x08	; 8
      00597F 07                    1456 	.db #0x07	; 7
      005980 61                    1457 	.db #0x61	; 97	'a'
      005981 51                    1458 	.db #0x51	; 81	'Q'
      005982 49                    1459 	.db #0x49	; 73	'I'
      005983 45                    1460 	.db #0x45	; 69	'E'
      005984 43                    1461 	.db #0x43	; 67	'C'
      005985 00                    1462 	.db #0x00	; 0
      005986 7F                    1463 	.db #0x7f	; 127
      005987 41                    1464 	.db #0x41	; 65	'A'
      005988 41                    1465 	.db #0x41	; 65	'A'
      005989 00                    1466 	.db #0x00	; 0
      00598A 02                    1467 	.db #0x02	; 2
      00598B 04                    1468 	.db #0x04	; 4
      00598C 08                    1469 	.db #0x08	; 8
      00598D 10                    1470 	.db #0x10	; 16
      00598E 20                    1471 	.db #0x20	; 32
      00598F 00                    1472 	.db #0x00	; 0
      005990 41                    1473 	.db #0x41	; 65	'A'
      005991 41                    1474 	.db #0x41	; 65	'A'
      005992 7F                    1475 	.db #0x7f	; 127
      005993 00                    1476 	.db #0x00	; 0
      005994 04                    1477 	.db #0x04	; 4
      005995 02                    1478 	.db #0x02	; 2
      005996 01                    1479 	.db #0x01	; 1
      005997 02                    1480 	.db #0x02	; 2
      005998 04                    1481 	.db #0x04	; 4
      005999 40                    1482 	.db #0x40	; 64
      00599A 40                    1483 	.db #0x40	; 64
      00599B 40                    1484 	.db #0x40	; 64
      00599C 40                    1485 	.db #0x40	; 64
      00599D 40                    1486 	.db #0x40	; 64
      00599E 00                    1487 	.db #0x00	; 0
      00599F 01                    1488 	.db #0x01	; 1
      0059A0 02                    1489 	.db #0x02	; 2
      0059A1 04                    1490 	.db #0x04	; 4
      0059A2 00                    1491 	.db #0x00	; 0
      0059A3 20                    1492 	.db #0x20	; 32
      0059A4 54                    1493 	.db #0x54	; 84	'T'
      0059A5 54                    1494 	.db #0x54	; 84	'T'
      0059A6 54                    1495 	.db #0x54	; 84	'T'
      0059A7 78                    1496 	.db #0x78	; 120	'x'
      0059A8 7F                    1497 	.db #0x7f	; 127
      0059A9 48                    1498 	.db #0x48	; 72	'H'
      0059AA 44                    1499 	.db #0x44	; 68	'D'
      0059AB 44                    1500 	.db #0x44	; 68	'D'
      0059AC 38                    1501 	.db #0x38	; 56	'8'
      0059AD 38                    1502 	.db #0x38	; 56	'8'
      0059AE 44                    1503 	.db #0x44	; 68	'D'
      0059AF 44                    1504 	.db #0x44	; 68	'D'
      0059B0 44                    1505 	.db #0x44	; 68	'D'
      0059B1 20                    1506 	.db #0x20	; 32
      0059B2 38                    1507 	.db #0x38	; 56	'8'
      0059B3 44                    1508 	.db #0x44	; 68	'D'
      0059B4 44                    1509 	.db #0x44	; 68	'D'
      0059B5 48                    1510 	.db #0x48	; 72	'H'
      0059B6 7F                    1511 	.db #0x7f	; 127
      0059B7 38                    1512 	.db #0x38	; 56	'8'
      0059B8 54                    1513 	.db #0x54	; 84	'T'
      0059B9 54                    1514 	.db #0x54	; 84	'T'
      0059BA 54                    1515 	.db #0x54	; 84	'T'
      0059BB 18                    1516 	.db #0x18	; 24
      0059BC 08                    1517 	.db #0x08	; 8
      0059BD 7E                    1518 	.db #0x7e	; 126
      0059BE 09                    1519 	.db #0x09	; 9
      0059BF 01                    1520 	.db #0x01	; 1
      0059C0 02                    1521 	.db #0x02	; 2
      0059C1 0C                    1522 	.db #0x0c	; 12
      0059C2 52                    1523 	.db #0x52	; 82	'R'
      0059C3 52                    1524 	.db #0x52	; 82	'R'
      0059C4 52                    1525 	.db #0x52	; 82	'R'
      0059C5 3E                    1526 	.db #0x3e	; 62
      0059C6 7F                    1527 	.db #0x7f	; 127
      0059C7 08                    1528 	.db #0x08	; 8
      0059C8 04                    1529 	.db #0x04	; 4
      0059C9 04                    1530 	.db #0x04	; 4
      0059CA 78                    1531 	.db #0x78	; 120	'x'
      0059CB 00                    1532 	.db #0x00	; 0
      0059CC 44                    1533 	.db #0x44	; 68	'D'
      0059CD 7D                    1534 	.db #0x7d	; 125
      0059CE 40                    1535 	.db #0x40	; 64
      0059CF 00                    1536 	.db #0x00	; 0
      0059D0 20                    1537 	.db #0x20	; 32
      0059D1 40                    1538 	.db #0x40	; 64
      0059D2 44                    1539 	.db #0x44	; 68	'D'
      0059D3 3D                    1540 	.db #0x3d	; 61
      0059D4 00                    1541 	.db #0x00	; 0
      0059D5 7F                    1542 	.db #0x7f	; 127
      0059D6 10                    1543 	.db #0x10	; 16
      0059D7 28                    1544 	.db #0x28	; 40
      0059D8 44                    1545 	.db #0x44	; 68	'D'
      0059D9 00                    1546 	.db #0x00	; 0
      0059DA 00                    1547 	.db #0x00	; 0
      0059DB 41                    1548 	.db #0x41	; 65	'A'
      0059DC 7F                    1549 	.db #0x7f	; 127
      0059DD 40                    1550 	.db #0x40	; 64
      0059DE 00                    1551 	.db #0x00	; 0
      0059DF 7C                    1552 	.db #0x7c	; 124
      0059E0 04                    1553 	.db #0x04	; 4
      0059E1 18                    1554 	.db #0x18	; 24
      0059E2 04                    1555 	.db #0x04	; 4
      0059E3 78                    1556 	.db #0x78	; 120	'x'
      0059E4 7C                    1557 	.db #0x7c	; 124
      0059E5 08                    1558 	.db #0x08	; 8
      0059E6 04                    1559 	.db #0x04	; 4
      0059E7 04                    1560 	.db #0x04	; 4
      0059E8 78                    1561 	.db #0x78	; 120	'x'
      0059E9 38                    1562 	.db #0x38	; 56	'8'
      0059EA 44                    1563 	.db #0x44	; 68	'D'
      0059EB 44                    1564 	.db #0x44	; 68	'D'
      0059EC 44                    1565 	.db #0x44	; 68	'D'
      0059ED 38                    1566 	.db #0x38	; 56	'8'
      0059EE 7C                    1567 	.db #0x7c	; 124
      0059EF 14                    1568 	.db #0x14	; 20
      0059F0 14                    1569 	.db #0x14	; 20
      0059F1 14                    1570 	.db #0x14	; 20
      0059F2 08                    1571 	.db #0x08	; 8
      0059F3 08                    1572 	.db #0x08	; 8
      0059F4 14                    1573 	.db #0x14	; 20
      0059F5 14                    1574 	.db #0x14	; 20
      0059F6 14                    1575 	.db #0x14	; 20
      0059F7 7C                    1576 	.db #0x7c	; 124
      0059F8 7C                    1577 	.db #0x7c	; 124
      0059F9 08                    1578 	.db #0x08	; 8
      0059FA 04                    1579 	.db #0x04	; 4
      0059FB 04                    1580 	.db #0x04	; 4
      0059FC 08                    1581 	.db #0x08	; 8
      0059FD 48                    1582 	.db #0x48	; 72	'H'
      0059FE 54                    1583 	.db #0x54	; 84	'T'
      0059FF 54                    1584 	.db #0x54	; 84	'T'
      005A00 54                    1585 	.db #0x54	; 84	'T'
      005A01 20                    1586 	.db #0x20	; 32
      005A02 04                    1587 	.db #0x04	; 4
      005A03 3F                    1588 	.db #0x3f	; 63
      005A04 44                    1589 	.db #0x44	; 68	'D'
      005A05 40                    1590 	.db #0x40	; 64
      005A06 20                    1591 	.db #0x20	; 32
      005A07 3C                    1592 	.db #0x3c	; 60
      005A08 40                    1593 	.db #0x40	; 64
      005A09 40                    1594 	.db #0x40	; 64
      005A0A 20                    1595 	.db #0x20	; 32
      005A0B 7C                    1596 	.db #0x7c	; 124
      005A0C 1C                    1597 	.db #0x1c	; 28
      005A0D 20                    1598 	.db #0x20	; 32
      005A0E 40                    1599 	.db #0x40	; 64
      005A0F 20                    1600 	.db #0x20	; 32
      005A10 1C                    1601 	.db #0x1c	; 28
      005A11 3C                    1602 	.db #0x3c	; 60
      005A12 40                    1603 	.db #0x40	; 64
      005A13 30                    1604 	.db #0x30	; 48	'0'
      005A14 40                    1605 	.db #0x40	; 64
      005A15 3C                    1606 	.db #0x3c	; 60
      005A16 44                    1607 	.db #0x44	; 68	'D'
      005A17 28                    1608 	.db #0x28	; 40
      005A18 10                    1609 	.db #0x10	; 16
      005A19 28                    1610 	.db #0x28	; 40
      005A1A 44                    1611 	.db #0x44	; 68	'D'
      005A1B 0C                    1612 	.db #0x0c	; 12
      005A1C 50                    1613 	.db #0x50	; 80	'P'
      005A1D 50                    1614 	.db #0x50	; 80	'P'
      005A1E 50                    1615 	.db #0x50	; 80	'P'
      005A1F 3C                    1616 	.db #0x3c	; 60
      005A20 44                    1617 	.db #0x44	; 68	'D'
      005A21 64                    1618 	.db #0x64	; 100	'd'
      005A22 54                    1619 	.db #0x54	; 84	'T'
      005A23 4C                    1620 	.db #0x4c	; 76	'L'
      005A24 44                    1621 	.db #0x44	; 68	'D'
      005A25 00                    1622 	.db #0x00	; 0
      005A26 08                    1623 	.db #0x08	; 8
      005A27 36                    1624 	.db #0x36	; 54	'6'
      005A28 41                    1625 	.db #0x41	; 65	'A'
      005A29 00                    1626 	.db #0x00	; 0
      005A2A 00                    1627 	.db #0x00	; 0
      005A2B 00                    1628 	.db #0x00	; 0
      005A2C 7F                    1629 	.db #0x7f	; 127
      005A2D 00                    1630 	.db #0x00	; 0
      005A2E 00                    1631 	.db #0x00	; 0
      005A2F 00                    1632 	.db #0x00	; 0
      005A30 41                    1633 	.db #0x41	; 65	'A'
      005A31 36                    1634 	.db #0x36	; 54	'6'
      005A32 08                    1635 	.db #0x08	; 8
      005A33 00                    1636 	.db #0x00	; 0
      005A34 10                    1637 	.db #0x10	; 16
      005A35 08                    1638 	.db #0x08	; 8
      005A36 08                    1639 	.db #0x08	; 8
      005A37 10                    1640 	.db #0x10	; 16
      005A38 08                    1641 	.db #0x08	; 8
      005A39 00                    1642 	.db #0x00	; 0
      005A3A 00                    1643 	.db #0x00	; 0
      005A3B 00                    1644 	.db #0x00	; 0
      005A3C 00                    1645 	.db #0x00	; 0
      005A3D 00                    1646 	.db #0x00	; 0
                                   1647 	.area XINIT   (CODE)
                                   1648 	.area CABS    (ABS,CODE)
