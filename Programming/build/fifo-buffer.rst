                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module fifo_buffer
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
                                    424 	.globl _fifoClear
                                    425 	.globl _fifoIsFull
                                    426 	.globl _fifoBytesFree
                                    427 	.globl _fifoWrite
                                    428 	.globl _fifoRead
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
                                    590 ; overlayable bit register bank
                                    591 ;--------------------------------------------------------
                                    592 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        593 bits:
      000021                        594 	.ds 1
                           008000   595 	b0 = bits[0]
                           008100   596 	b1 = bits[1]
                           008200   597 	b2 = bits[2]
                           008300   598 	b3 = bits[3]
                           008400   599 	b4 = bits[4]
                           008500   600 	b5 = bits[5]
                           008600   601 	b6 = bits[6]
                           008700   602 	b7 = bits[7]
                                    603 ;--------------------------------------------------------
                                    604 ; internal ram data
                                    605 ;--------------------------------------------------------
                                    606 	.area DSEG    (DATA)
                                    607 ;--------------------------------------------------------
                                    608 ; overlayable items in internal ram 
                                    609 ;--------------------------------------------------------
                                    610 ;--------------------------------------------------------
                                    611 ; indirectly addressable internal ram data
                                    612 ;--------------------------------------------------------
                                    613 	.area ISEG    (DATA)
                                    614 ;--------------------------------------------------------
                                    615 ; absolute internal ram data
                                    616 ;--------------------------------------------------------
                                    617 	.area IABS    (ABS,DATA)
                                    618 	.area IABS    (ABS,DATA)
                                    619 ;--------------------------------------------------------
                                    620 ; bit data
                                    621 ;--------------------------------------------------------
                                    622 	.area BSEG    (BIT)
                                    623 ;--------------------------------------------------------
                                    624 ; paged external ram data
                                    625 ;--------------------------------------------------------
                                    626 	.area PSEG    (PAG,XDATA)
                                    627 ;--------------------------------------------------------
                                    628 ; external ram data
                                    629 ;--------------------------------------------------------
                                    630 	.area XSEG    (XDATA)
                           00FEA8   631 _ADCTIM	=	0xfea8
                           00FEAD   632 _ADCEXCFG	=	0xfead
                           00FA10   633 _DMA_ADC_CFG	=	0xfa10
                           00FA11   634 _DMA_ADC_CR	=	0xfa11
                           00FA12   635 _DMA_ADC_STA	=	0xfa12
                           00FA17   636 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   637 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   638 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   639 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   640 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   641 _CMPEXCFG	=	0xfeae
                           00FA00   642 _DMA_M2M_CFG	=	0xfa00
                           00FA01   643 _DMA_M2M_CR	=	0xfa01
                           00FA02   644 _DMA_M2M_STA	=	0xfa02
                           00FA03   645 _DMA_M2M_AMT	=	0xfa03
                           00FA04   646 _DMA_M2M_DONE	=	0xfa04
                           00FA05   647 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   648 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   649 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   650 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   651 _P1INTE	=	0xfd01
                           00FD11   652 _P1INTF	=	0xfd11
                           00FD21   653 _P1IM0	=	0xfd21
                           00FD31   654 _P1IM1	=	0xfd31
                           00FD41   655 _P1WKUE	=	0xfd41
                           00FE11   656 _P1PU	=	0xfe11
                           00FE19   657 _P1NCS	=	0xfe19
                           00FE21   658 _P1SR	=	0xfe21
                           00FE29   659 _P1DR	=	0xfe29
                           00FE31   660 _P1IE	=	0xfe31
                           00FD02   661 _P2INTE	=	0xfd02
                           00FD12   662 _P2INTF	=	0xfd12
                           00FD22   663 _P2IM0	=	0xfd22
                           00FD32   664 _P2IM1	=	0xfd32
                           00FD42   665 _P2WKUE	=	0xfd42
                           00FE12   666 _P2PU	=	0xfe12
                           00FE1A   667 _P2NCS	=	0xfe1a
                           00FE22   668 _P2SR	=	0xfe22
                           00FE2A   669 _P2DR	=	0xfe2a
                           00FE32   670 _P2IE	=	0xfe32
                           00FD03   671 _P3INTE	=	0xfd03
                           00FD13   672 _P3INTF	=	0xfd13
                           00FD23   673 _P3IM0	=	0xfd23
                           00FD33   674 _P3IM1	=	0xfd33
                           00FD43   675 _P3WKUE	=	0xfd43
                           00FE13   676 _P3PU	=	0xfe13
                           00FE1B   677 _P3NCS	=	0xfe1b
                           00FE23   678 _P3SR	=	0xfe23
                           00FE2B   679 _P3DR	=	0xfe2b
                           00FE33   680 _P3IE	=	0xfe33
                           00FD05   681 _P5INTE	=	0xfd05
                           00FD15   682 _P5INTF	=	0xfd15
                           00FD25   683 _P5IM0	=	0xfd25
                           00FD35   684 _P5IM1	=	0xfd35
                           00FD45   685 _P5WKUE	=	0xfd45
                           00FE15   686 _P5PU	=	0xfe15
                           00FE1D   687 _P5NCS	=	0xfe1d
                           00FE25   688 _P5SR	=	0xfe25
                           00FE2D   689 _P5DR	=	0xfe2d
                           00FE35   690 _P5IE	=	0xfe35
                           00FD60   691 _PINIPL	=	0xfd60
                           00FD61   692 _PINIPH	=	0xfd61
                           00FE80   693 _I2CCFG	=	0xfe80
                           00FE81   694 _I2CMSCR	=	0xfe81
                           00FE82   695 _I2CMSST	=	0xfe82
                           00FE83   696 _I2CSLCR	=	0xfe83
                           00FE84   697 _I2CSLST	=	0xfe84
                           00FE85   698 _I2CSLADR	=	0xfe85
                           00FE86   699 _I2CTXD	=	0xfe86
                           00FE87   700 _I2CRXD	=	0xfe87
                           00FE88   701 _I2CMSAUX	=	0xfe88
                           00FE50   702 _LCMCFG	=	0xfe50
                           00FE51   703 _LCMCFG2	=	0xfe51
                           00FE52   704 _LCMCR	=	0xfe52
                           00FE53   705 _LCMSTA	=	0xfe53
                           00FE54   706 _LCMIDDATL	=	0xfe54
                           00FE55   707 _LCMIDDATH	=	0xfe55
                           00FE54   708 _LCMIDDAT	=	0xfe54
                           00FA70   709 _DMA_LCM_CFG	=	0xfa70
                           00FA71   710 _DMA_LCM_CR	=	0xfa71
                           00FA72   711 _DMA_LCM_STA	=	0xfa72
                           00FA73   712 _DMA_LCM_AMT	=	0xfa73
                           00FA74   713 _DMA_LCM_DONE	=	0xfa74
                           00FA75   714 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   715 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   716 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   717 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   718 _MD3	=	0xfcf0
                           00FCF1   719 _MD2	=	0xfcf1
                           00FCF2   720 _MD1	=	0xfcf2
                           00FCF3   721 _MD0	=	0xfcf3
                           00FCF4   722 _MD5	=	0xfcf4
                           00FCF5   723 _MD4	=	0xfcf5
                           00FCF6   724 _ARCON	=	0xfcf6
                           00FCF7   725 _OPCON	=	0xfcf7
                           00FE08   726 _SPFUNC	=	0xfe08
                           00FE09   727 _RSTFLAG	=	0xfe09
                           00FEB0   728 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   729 _PWMA_ENO	=	0xfeb1
                           00FEB2   730 _PWMA_PS	=	0xfeb2
                           00FEB3   731 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   732 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   733 _PWMB_ENO	=	0xfeb5
                           00FEB6   734 _PWMB_PS	=	0xfeb6
                           00FEB7   735 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   736 _PWMA_CR1	=	0xfec0
                           00FEC1   737 _PWMA_CR2	=	0xfec1
                           00FEC2   738 _PWMA_SMCR	=	0xfec2
                           00FEC3   739 _PWMA_ETR	=	0xfec3
                           00FEC4   740 _PWMA_IER	=	0xfec4
                           00FEC5   741 _PWMA_SR1	=	0xfec5
                           00FEC6   742 _PWMA_SR2	=	0xfec6
                           00FEC7   743 _PWMA_EGR	=	0xfec7
                           00FEC8   744 _PWMA_CCMR1	=	0xfec8
                           00FEC9   745 _PWMA_CCMR2	=	0xfec9
                           00FECA   746 _PWMA_CCMR3	=	0xfeca
                           00FECB   747 _PWMA_CCMR4	=	0xfecb
                           00FECC   748 _PWMA_CCER1	=	0xfecc
                           00FECD   749 _PWMA_CCER2	=	0xfecd
                           00FECE   750 _PWMA_CNTRH	=	0xfece
                           00FECF   751 _PWMA_CNTRL	=	0xfecf
                           00FED0   752 _PWMA_PSCRH	=	0xfed0
                           00FED1   753 _PWMA_PSCRL	=	0xfed1
                           00FED2   754 _PWMA_ARRH	=	0xfed2
                           00FED3   755 _PWMA_ARRL	=	0xfed3
                           00FED4   756 _PWMA_RCR	=	0xfed4
                           00FED5   757 _PWMA_CCR1H	=	0xfed5
                           00FED6   758 _PWMA_CCR1L	=	0xfed6
                           00FED7   759 _PWMA_CCR2H	=	0xfed7
                           00FED8   760 _PWMA_CCR2L	=	0xfed8
                           00FED9   761 _PWMA_CCR3H	=	0xfed9
                           00FEDA   762 _PWMA_CCR3L	=	0xfeda
                           00FEDB   763 _PWMA_CCR4H	=	0xfedb
                           00FEDC   764 _PWMA_CCR4L	=	0xfedc
                           00FEDD   765 _PWMA_BKR	=	0xfedd
                           00FEDE   766 _PWMA_DTR	=	0xfede
                           00FEDF   767 _PWMA_OISR	=	0xfedf
                           00FEE0   768 _PWMB_CR1	=	0xfee0
                           00FEE1   769 _PWMB_CR2	=	0xfee1
                           00FEE2   770 _PWMB_SMCR	=	0xfee2
                           00FEE3   771 _PWMB_ETR	=	0xfee3
                           00FEE4   772 _PWMB_IER	=	0xfee4
                           00FEE5   773 _PWMB_SR1	=	0xfee5
                           00FEE6   774 _PWMB_SR2	=	0xfee6
                           00FEE7   775 _PWMB_EGR	=	0xfee7
                           00FEE8   776 _PWMB_CCMR1	=	0xfee8
                           00FEE9   777 _PWMB_CCMR2	=	0xfee9
                           00FEEA   778 _PWMB_CCMR3	=	0xfeea
                           00FEEB   779 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   780 _PWMB_CCER1	=	0xfeec
                           00FEED   781 _PWMB_CCER2	=	0xfeed
                           00FEEE   782 _PWMB_CNTRH	=	0xfeee
                           00FEEF   783 _PWMB_CNTRL	=	0xfeef
                           00FEF0   784 _PWMB_PSCRH	=	0xfef0
                           00FEF1   785 _PWMB_PSCRL	=	0xfef1
                           00FEF2   786 _PWMB_ARRH	=	0xfef2
                           00FEF3   787 _PWMB_ARRL	=	0xfef3
                           00FEF4   788 _PWMB_RCR	=	0xfef4
                           00FEF5   789 _PWMB_CCR1H	=	0xfef5
                           00FEF6   790 _PWMB_CCR1L	=	0xfef6
                           00FEF7   791 _PWMB_CCR2H	=	0xfef7
                           00FEF8   792 _PWMB_CCR2L	=	0xfef8
                           00FEF9   793 _PWMB_CCR3H	=	0xfef9
                           00FEFA   794 _PWMB_CCR3L	=	0xfefa
                           00FEFB   795 _PWMB_CCR4H	=	0xfefb
                           00FEFC   796 _PWMB_CCR4L	=	0xfefc
                           00FEFD   797 _PWMB_BKR	=	0xfefd
                           00FEFE   798 _PWMB_DTR	=	0xfefe
                           00FEFF   799 _PWMB_OISR	=	0xfeff
                           00FE60   800 _RTCCR	=	0xfe60
                           00FE61   801 _RTCCFG	=	0xfe61
                           00FE62   802 _RTCIEN	=	0xfe62
                           00FE63   803 _RTCIF	=	0xfe63
                           00FE64   804 _ALAHOUR	=	0xfe64
                           00FE65   805 _ALAMIN	=	0xfe65
                           00FE66   806 _ALASEC	=	0xfe66
                           00FE67   807 _ALASSEC	=	0xfe67
                           00FE68   808 _INIYEAR	=	0xfe68
                           00FE69   809 _INIMONTH	=	0xfe69
                           00FE6A   810 _INIDAY	=	0xfe6a
                           00FE6B   811 _INIHOUR	=	0xfe6b
                           00FE6C   812 _INIMIN	=	0xfe6c
                           00FE6D   813 _INISEC	=	0xfe6d
                           00FE6E   814 _INISSEC	=	0xfe6e
                           00FE70   815 _YEAR	=	0xfe70
                           00FE71   816 _MONTH	=	0xfe71
                           00FE72   817 _DAY	=	0xfe72
                           00FE73   818 _HOUR	=	0xfe73
                           00FE74   819 _MIN	=	0xfe74
                           00FE75   820 _SEC	=	0xfe75
                           00FE76   821 _SSEC	=	0xfe76
                           00FA20   822 _DMA_SPI_CFG	=	0xfa20
                           00FA21   823 _DMA_SPI_CR	=	0xfa21
                           00FA22   824 _DMA_SPI_STA	=	0xfa22
                           00FA23   825 _DMA_SPI_AMT	=	0xfa23
                           00FA24   826 _DMA_SPI_DONE	=	0xfa24
                           00FA25   827 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   828 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   829 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   830 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   831 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   832 _CLKDIV	=	0xfe01
                           00FE02   833 _HIRCCR	=	0xfe02
                           00FE03   834 _XOSCCR	=	0xfe03
                           00FE04   835 _IRC32KCR	=	0xfe04
                           00FE00   836 _CKSEL	=	0xfe00
                           00FE05   837 _MCLKOCR	=	0xfe05
                           00FE06   838 _IRCDB	=	0xfe06
                           00FE07   839 _IRC48MCR	=	0xfe07
                           00FEA2   840 _TM2PS	=	0xfea2
                           00FEA3   841 _TM3PS	=	0xfea3
                           00FEA4   842 _TM4PS	=	0xfea4
                           00FA30   843 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   844 _DMA_UR1T_CR	=	0xfa31
                           00FA32   845 _DMA_UR1T_STA	=	0xfa32
                           00FA33   846 _DMA_URTX_AMT	=	0xfa33
                           00FA34   847 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   848 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   849 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   850 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   851 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   852 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   853 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   854 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   855 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   856 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   857 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   858 _DMA_UR2T_CR	=	0xfa31
                           00FA32   859 _DMA_UR2T_STA	=	0xfa32
                           00FA33   860 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   861 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   862 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   863 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   864 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   865 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   866 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   867 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   868 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   869 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   870 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   871 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   872 _DMA_UR3T_CR	=	0xfa31
                           00FA32   873 _DMA_UR3T_STA	=	0xfa32
                           00FA33   874 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   875 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   876 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   877 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   878 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   879 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   880 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   881 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   882 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   883 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   884 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   885 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   886 _DMA_UR4T_CR	=	0xfa31
                           00FA32   887 _DMA_UR4T_STA	=	0xfa32
                           00FA33   888 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   889 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   890 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   891 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   892 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   893 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   894 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   895 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   896 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   897 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   898 _DMA_UR4R_TXAL	=	0xfa3e
      0000DF                        899 _uartGetCharacter_result_65536_69:
      0000DF                        900 	.ds 1
      0000E0                        901 _fifoClear_buffer_65536_148:
      0000E0                        902 	.ds 3
      0000E3                        903 _fifoIsFull_fifo_65536_150:
      0000E3                        904 	.ds 3
      0000E6                        905 _fifoBytesFree_fifo_65536_155:
      0000E6                        906 	.ds 3
                                    907 ;--------------------------------------------------------
                                    908 ; absolute external ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area XABS    (ABS,XDATA)
                                    911 ;--------------------------------------------------------
                                    912 ; external initialized ram data
                                    913 ;--------------------------------------------------------
                                    914 	.area XISEG   (XDATA)
                                    915 	.area HOME    (CODE)
                                    916 	.area GSINIT0 (CODE)
                                    917 	.area GSINIT1 (CODE)
                                    918 	.area GSINIT2 (CODE)
                                    919 	.area GSINIT3 (CODE)
                                    920 	.area GSINIT4 (CODE)
                                    921 	.area GSINIT5 (CODE)
                                    922 	.area GSINIT  (CODE)
                                    923 	.area GSFINAL (CODE)
                                    924 	.area CSEG    (CODE)
                                    925 ;--------------------------------------------------------
                                    926 ; global & static initialisations
                                    927 ;--------------------------------------------------------
                                    928 	.area HOME    (CODE)
                                    929 	.area GSINIT  (CODE)
                                    930 	.area GSFINAL (CODE)
                                    931 	.area GSINIT  (CODE)
                                    932 ;--------------------------------------------------------
                                    933 ; Home
                                    934 ;--------------------------------------------------------
                                    935 	.area HOME    (CODE)
                                    936 	.area HOME    (CODE)
                                    937 ;--------------------------------------------------------
                                    938 ; code
                                    939 ;--------------------------------------------------------
                                    940 	.area CSEG    (CODE)
                                    941 ;------------------------------------------------------------
                                    942 ;Allocation info for local variables in function 'fifoClear'
                                    943 ;------------------------------------------------------------
                                    944 ;buffer                    Allocated with name '_fifoClear_buffer_65536_148'
                                    945 ;------------------------------------------------------------
                                    946 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:39: void fifoClear(FifoState *buffer) {
                                    947 ;	-----------------------------------------
                                    948 ;	 function fifoClear
                                    949 ;	-----------------------------------------
      0021A5                        950 _fifoClear:
                           000007   951 	ar7 = 0x07
                           000006   952 	ar6 = 0x06
                           000005   953 	ar5 = 0x05
                           000004   954 	ar4 = 0x04
                           000003   955 	ar3 = 0x03
                           000002   956 	ar2 = 0x02
                           000001   957 	ar1 = 0x01
                           000000   958 	ar0 = 0x00
      0021A5 AF F0            [24]  959 	mov	r7,b
      0021A7 AE 83            [24]  960 	mov	r6,dph
      0021A9 E5 82            [12]  961 	mov	a,dpl
      0021AB 90 00 E0         [24]  962 	mov	dptr,#_fifoClear_buffer_65536_148
      0021AE F0               [24]  963 	movx	@dptr,a
      0021AF EE               [12]  964 	mov	a,r6
      0021B0 A3               [24]  965 	inc	dptr
      0021B1 F0               [24]  966 	movx	@dptr,a
      0021B2 EF               [12]  967 	mov	a,r7
      0021B3 A3               [24]  968 	inc	dptr
      0021B4 F0               [24]  969 	movx	@dptr,a
                                    970 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:40: buffer->length = 0;
      0021B5 90 00 E0         [24]  971 	mov	dptr,#_fifoClear_buffer_65536_148
      0021B8 E0               [24]  972 	movx	a,@dptr
      0021B9 FD               [12]  973 	mov	r5,a
      0021BA A3               [24]  974 	inc	dptr
      0021BB E0               [24]  975 	movx	a,@dptr
      0021BC FE               [12]  976 	mov	r6,a
      0021BD A3               [24]  977 	inc	dptr
      0021BE E0               [24]  978 	movx	a,@dptr
      0021BF FF               [12]  979 	mov	r7,a
      0021C0 74 01            [12]  980 	mov	a,#0x01
      0021C2 2D               [12]  981 	add	a,r5
      0021C3 FA               [12]  982 	mov	r2,a
      0021C4 E4               [12]  983 	clr	a
      0021C5 3E               [12]  984 	addc	a,r6
      0021C6 FB               [12]  985 	mov	r3,a
      0021C7 8F 04            [24]  986 	mov	ar4,r7
      0021C9 8A 82            [24]  987 	mov	dpl,r2
      0021CB 8B 83            [24]  988 	mov	dph,r3
      0021CD 8C F0            [24]  989 	mov	b,r4
      0021CF E4               [12]  990 	clr	a
      0021D0 12 4B FA         [24]  991 	lcall	__gptrput
                                    992 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:41: buffer->rIndex = 0;
      0021D3 74 02            [12]  993 	mov	a,#0x02
      0021D5 2D               [12]  994 	add	a,r5
      0021D6 FA               [12]  995 	mov	r2,a
      0021D7 E4               [12]  996 	clr	a
      0021D8 3E               [12]  997 	addc	a,r6
      0021D9 FB               [12]  998 	mov	r3,a
      0021DA 8F 04            [24]  999 	mov	ar4,r7
      0021DC 8A 82            [24] 1000 	mov	dpl,r2
      0021DE 8B 83            [24] 1001 	mov	dph,r3
      0021E0 8C F0            [24] 1002 	mov	b,r4
      0021E2 E4               [12] 1003 	clr	a
      0021E3 12 4B FA         [24] 1004 	lcall	__gptrput
                                   1005 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:42: buffer->wIndex = 0;
      0021E6 74 03            [12] 1006 	mov	a,#0x03
      0021E8 2D               [12] 1007 	add	a,r5
      0021E9 FA               [12] 1008 	mov	r2,a
      0021EA E4               [12] 1009 	clr	a
      0021EB 3E               [12] 1010 	addc	a,r6
      0021EC FB               [12] 1011 	mov	r3,a
      0021ED 8F 04            [24] 1012 	mov	ar4,r7
      0021EF 8A 82            [24] 1013 	mov	dpl,r2
      0021F1 8B 83            [24] 1014 	mov	dph,r3
      0021F3 8C F0            [24] 1015 	mov	b,r4
      0021F5 E4               [12] 1016 	clr	a
      0021F6 12 4B FA         [24] 1017 	lcall	__gptrput
                                   1018 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:43: buffer->status = 0;
      0021F9 74 04            [12] 1019 	mov	a,#0x04
      0021FB 2D               [12] 1020 	add	a,r5
      0021FC FD               [12] 1021 	mov	r5,a
      0021FD E4               [12] 1022 	clr	a
      0021FE 3E               [12] 1023 	addc	a,r6
      0021FF FE               [12] 1024 	mov	r6,a
      002200 8D 82            [24] 1025 	mov	dpl,r5
      002202 8E 83            [24] 1026 	mov	dph,r6
      002204 8F F0            [24] 1027 	mov	b,r7
      002206 E4               [12] 1028 	clr	a
                                   1029 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:44: }
      002207 02 4B FA         [24] 1030 	ljmp	__gptrput
                                   1031 ;------------------------------------------------------------
                                   1032 ;Allocation info for local variables in function 'fifoIsFull'
                                   1033 ;------------------------------------------------------------
                                   1034 ;fifo                      Allocated with name '_fifoIsFull_fifo_65536_150'
                                   1035 ;__1310720013              Allocated with name '_fifoIsFull___1310720013_131072_151'
                                   1036 ;__1310720014              Allocated with name '_fifoIsFull___1310720014_131072_152'
                                   1037 ;buffer                    Allocated with name '_fifoIsFull_buffer_196608_153'
                                   1038 ;------------------------------------------------------------
                                   1039 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:46: bool fifoIsFull(FifoState *fifo) {
                                   1040 ;	-----------------------------------------
                                   1041 ;	 function fifoIsFull
                                   1042 ;	-----------------------------------------
      00220A                       1043 _fifoIsFull:
      00220A AF F0            [24] 1044 	mov	r7,b
      00220C AE 83            [24] 1045 	mov	r6,dph
      00220E E5 82            [12] 1046 	mov	a,dpl
      002210 90 00 E3         [24] 1047 	mov	dptr,#_fifoIsFull_fifo_65536_150
      002213 F0               [24] 1048 	movx	@dptr,a
      002214 EE               [12] 1049 	mov	a,r6
      002215 A3               [24] 1050 	inc	dptr
      002216 F0               [24] 1051 	movx	@dptr,a
      002217 EF               [12] 1052 	mov	a,r7
      002218 A3               [24] 1053 	inc	dptr
      002219 F0               [24] 1054 	movx	@dptr,a
                                   1055 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      00221A 90 00 E3         [24] 1056 	mov	dptr,#_fifoIsFull_fifo_65536_150
      00221D E0               [24] 1057 	movx	a,@dptr
      00221E FD               [12] 1058 	mov	r5,a
      00221F A3               [24] 1059 	inc	dptr
      002220 E0               [24] 1060 	movx	a,@dptr
      002221 FE               [12] 1061 	mov	r6,a
      002222 A3               [24] 1062 	inc	dptr
      002223 E0               [24] 1063 	movx	a,@dptr
      002224 FF               [12] 1064 	mov	r7,a
                                   1065 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      002225 74 01            [12] 1066 	mov	a,#0x01
      002227 2D               [12] 1067 	add	a,r5
      002228 FA               [12] 1068 	mov	r2,a
      002229 E4               [12] 1069 	clr	a
      00222A 3E               [12] 1070 	addc	a,r6
      00222B FB               [12] 1071 	mov	r3,a
      00222C 8F 04            [24] 1072 	mov	ar4,r7
      00222E 8A 82            [24] 1073 	mov	dpl,r2
      002230 8B 83            [24] 1074 	mov	dph,r3
      002232 8C F0            [24] 1075 	mov	b,r4
      002234 12 58 3E         [24] 1076 	lcall	__gptrget
      002237 FA               [12] 1077 	mov	r2,a
                                   1078 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:47: return fifoLength(fifo) == fifo->size;
      002238 8D 82            [24] 1079 	mov	dpl,r5
      00223A 8E 83            [24] 1080 	mov	dph,r6
      00223C 8F F0            [24] 1081 	mov	b,r7
      00223E 12 58 3E         [24] 1082 	lcall	__gptrget
      002241 FD               [12] 1083 	mov	r5,a
      002242 EA               [12] 1084 	mov	a,r2
      002243 B5 05 04         [24] 1085 	cjne	a,ar5,00104$
      002246 74 01            [12] 1086 	mov	a,#0x01
      002248 80 01            [24] 1087 	sjmp	00105$
      00224A                       1088 00104$:
      00224A E4               [12] 1089 	clr	a
      00224B                       1090 00105$:
                                   1091 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:48: }
      00224B F5 82            [12] 1092 	mov	dpl,a
      00224D 22               [24] 1093 	ret
                                   1094 ;------------------------------------------------------------
                                   1095 ;Allocation info for local variables in function 'fifoBytesFree'
                                   1096 ;------------------------------------------------------------
                                   1097 ;fifo                      Allocated with name '_fifoBytesFree_fifo_65536_155'
                                   1098 ;__1310720016              Allocated with name '_fifoBytesFree___1310720016_131072_156'
                                   1099 ;__1310720017              Allocated with name '_fifoBytesFree___1310720017_131072_157'
                                   1100 ;buffer                    Allocated with name '_fifoBytesFree_buffer_196608_158'
                                   1101 ;------------------------------------------------------------
                                   1102 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:50: uint8_t fifoBytesFree(FifoState *fifo) {
                                   1103 ;	-----------------------------------------
                                   1104 ;	 function fifoBytesFree
                                   1105 ;	-----------------------------------------
      00224E                       1106 _fifoBytesFree:
      00224E AF F0            [24] 1107 	mov	r7,b
      002250 AE 83            [24] 1108 	mov	r6,dph
      002252 E5 82            [12] 1109 	mov	a,dpl
      002254 90 00 E6         [24] 1110 	mov	dptr,#_fifoBytesFree_fifo_65536_155
      002257 F0               [24] 1111 	movx	@dptr,a
      002258 EE               [12] 1112 	mov	a,r6
      002259 A3               [24] 1113 	inc	dptr
      00225A F0               [24] 1114 	movx	@dptr,a
      00225B EF               [12] 1115 	mov	a,r7
      00225C A3               [24] 1116 	inc	dptr
      00225D F0               [24] 1117 	movx	@dptr,a
                                   1118 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      00225E 90 00 E6         [24] 1119 	mov	dptr,#_fifoBytesFree_fifo_65536_155
      002261 E0               [24] 1120 	movx	a,@dptr
      002262 FD               [12] 1121 	mov	r5,a
      002263 A3               [24] 1122 	inc	dptr
      002264 E0               [24] 1123 	movx	a,@dptr
      002265 FE               [12] 1124 	mov	r6,a
      002266 A3               [24] 1125 	inc	dptr
      002267 E0               [24] 1126 	movx	a,@dptr
      002268 FF               [12] 1127 	mov	r7,a
      002269 8D 82            [24] 1128 	mov	dpl,r5
      00226B 8E 83            [24] 1129 	mov	dph,r6
      00226D 8F F0            [24] 1130 	mov	b,r7
      00226F 12 58 3E         [24] 1131 	lcall	__gptrget
      002272 FC               [12] 1132 	mov	r4,a
                                   1133 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.h:78: return buffer->length;
      002273 0D               [12] 1134 	inc	r5
      002274 BD 00 01         [24] 1135 	cjne	r5,#0x00,00104$
      002277 0E               [12] 1136 	inc	r6
      002278                       1137 00104$:
      002278 8D 82            [24] 1138 	mov	dpl,r5
      00227A 8E 83            [24] 1139 	mov	dph,r6
      00227C 8F F0            [24] 1140 	mov	b,r7
      00227E 12 58 3E         [24] 1141 	lcall	__gptrget
      002281 FD               [12] 1142 	mov	r5,a
                                   1143 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:51: return fifo->size - fifoLength(fifo);
      002282 EC               [12] 1144 	mov	a,r4
      002283 C3               [12] 1145 	clr	c
      002284 9D               [12] 1146 	subb	a,r5
                                   1147 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:52: }
      002285 F5 82            [12] 1148 	mov	dpl,a
      002287 22               [24] 1149 	ret
                                   1150 ;------------------------------------------------------------
                                   1151 ;Allocation info for local variables in function 'fifoWrite'
                                   1152 ;------------------------------------------------------------
                                   1153 ;data                      Allocated to stack - _bp -5
                                   1154 ;count                     Allocated to stack - _bp -6
                                   1155 ;buffer                    Allocated to stack - _bp +1
                                   1156 ;rc                        Allocated to registers r4 
                                   1157 ;wIndex                    Allocated to stack - _bp +10
                                   1158 ;n                         Allocated to stack - _bp +11
                                   1159 ;sloc0                     Allocated to stack - _bp +4
                                   1160 ;sloc1                     Allocated to stack - _bp +7
                                   1161 ;------------------------------------------------------------
                                   1162 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:64: bool fifoWrite(FifoState *buffer, const void *data, uint8_t count) REENTRANT {
                                   1163 ;	-----------------------------------------
                                   1164 ;	 function fifoWrite
                                   1165 ;	-----------------------------------------
      002288                       1166 _fifoWrite:
      002288 C0 1F            [24] 1167 	push	_bp
      00228A 85 81 1F         [24] 1168 	mov	_bp,sp
      00228D C0 82            [24] 1169 	push	dpl
      00228F C0 83            [24] 1170 	push	dph
      002291 C0 F0            [24] 1171 	push	b
      002293 E5 81            [12] 1172 	mov	a,sp
      002295 24 08            [12] 1173 	add	a,#0x08
      002297 F5 81            [12] 1174 	mov	sp,a
                                   1175 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:65: bool rc = fifoBytesFree(buffer) >= count;
      002299 A8 1F            [24] 1176 	mov	r0,_bp
      00229B 08               [12] 1177 	inc	r0
      00229C 86 82            [24] 1178 	mov	dpl,@r0
      00229E 08               [12] 1179 	inc	r0
      00229F 86 83            [24] 1180 	mov	dph,@r0
      0022A1 08               [12] 1181 	inc	r0
      0022A2 86 F0            [24] 1182 	mov	b,@r0
      0022A4 12 22 4E         [24] 1183 	lcall	_fifoBytesFree
      0022A7 AC 82            [24] 1184 	mov	r4,dpl
      0022A9 E5 1F            [12] 1185 	mov	a,_bp
      0022AB 24 FA            [12] 1186 	add	a,#0xfa
      0022AD F8               [12] 1187 	mov	r0,a
      0022AE C3               [12] 1188 	clr	c
      0022AF EC               [12] 1189 	mov	a,r4
      0022B0 96               [12] 1190 	subb	a,@r0
      0022B1 B3               [12] 1191 	cpl	c
      0022B2 92 08            [24] 1192 	mov	b0,c
      0022B4 E4               [12] 1193 	clr	a
      0022B5 33               [12] 1194 	rlc	a
      0022B6 FC               [12] 1195 	mov	r4,a
                                   1196 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:67: if (rc) {
      0022B7 20 08 03         [24] 1197 	jb	b0,00128$
      0022BA 02 23 E2         [24] 1198 	ljmp	00105$
      0022BD                       1199 00128$:
                                   1200 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:68: uint8_t wIndex = buffer->wIndex;
      0022BD A8 1F            [24] 1201 	mov	r0,_bp
      0022BF 08               [12] 1202 	inc	r0
      0022C0 E5 1F            [12] 1203 	mov	a,_bp
      0022C2 24 04            [12] 1204 	add	a,#0x04
      0022C4 F9               [12] 1205 	mov	r1,a
      0022C5 74 03            [12] 1206 	mov	a,#0x03
      0022C7 26               [12] 1207 	add	a,@r0
      0022C8 F7               [12] 1208 	mov	@r1,a
      0022C9 E4               [12] 1209 	clr	a
      0022CA 08               [12] 1210 	inc	r0
      0022CB 36               [12] 1211 	addc	a,@r0
      0022CC 09               [12] 1212 	inc	r1
      0022CD F7               [12] 1213 	mov	@r1,a
      0022CE 08               [12] 1214 	inc	r0
      0022CF 09               [12] 1215 	inc	r1
      0022D0 E6               [12] 1216 	mov	a,@r0
      0022D1 F7               [12] 1217 	mov	@r1,a
      0022D2 E5 1F            [12] 1218 	mov	a,_bp
      0022D4 24 04            [12] 1219 	add	a,#0x04
      0022D6 F8               [12] 1220 	mov	r0,a
      0022D7 86 82            [24] 1221 	mov	dpl,@r0
      0022D9 08               [12] 1222 	inc	r0
      0022DA 86 83            [24] 1223 	mov	dph,@r0
      0022DC 08               [12] 1224 	inc	r0
      0022DD 86 F0            [24] 1225 	mov	b,@r0
      0022DF E5 1F            [12] 1226 	mov	a,_bp
      0022E1 24 0A            [12] 1227 	add	a,#0x0a
      0022E3 F9               [12] 1228 	mov	r1,a
      0022E4 12 58 3E         [24] 1229 	lcall	__gptrget
      0022E7 F7               [12] 1230 	mov	@r1,a
                                   1231 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      0022E8 A8 1F            [24] 1232 	mov	r0,_bp
      0022EA 08               [12] 1233 	inc	r0
      0022EB E5 1F            [12] 1234 	mov	a,_bp
      0022ED 24 07            [12] 1235 	add	a,#0x07
      0022EF F9               [12] 1236 	mov	r1,a
      0022F0 74 05            [12] 1237 	mov	a,#0x05
      0022F2 26               [12] 1238 	add	a,@r0
      0022F3 F7               [12] 1239 	mov	@r1,a
      0022F4 E4               [12] 1240 	clr	a
      0022F5 08               [12] 1241 	inc	r0
      0022F6 36               [12] 1242 	addc	a,@r0
      0022F7 09               [12] 1243 	inc	r1
      0022F8 F7               [12] 1244 	mov	@r1,a
      0022F9 08               [12] 1245 	inc	r0
      0022FA 09               [12] 1246 	inc	r1
      0022FB E6               [12] 1247 	mov	a,@r0
      0022FC F7               [12] 1248 	mov	@r1,a
      0022FD E5 1F            [12] 1249 	mov	a,_bp
      0022FF 24 0B            [12] 1250 	add	a,#0x0b
      002301 F8               [12] 1251 	mov	r0,a
      002302 76 00            [12] 1252 	mov	@r0,#0x00
      002304                       1253 00107$:
      002304 E5 1F            [12] 1254 	mov	a,_bp
      002306 24 0B            [12] 1255 	add	a,#0x0b
      002308 F8               [12] 1256 	mov	r0,a
      002309 E5 1F            [12] 1257 	mov	a,_bp
      00230B 24 FA            [12] 1258 	add	a,#0xfa
      00230D F9               [12] 1259 	mov	r1,a
      00230E C3               [12] 1260 	clr	c
      00230F E6               [12] 1261 	mov	a,@r0
      002310 97               [12] 1262 	subb	a,@r1
      002311 40 03            [24] 1263 	jc	00129$
      002313 02 23 A3         [24] 1264 	ljmp	00103$
      002316                       1265 00129$:
                                   1266 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:71: if (wIndex == buffer->size) {
      002316 C0 04            [24] 1267 	push	ar4
      002318 A8 1F            [24] 1268 	mov	r0,_bp
      00231A 08               [12] 1269 	inc	r0
      00231B 86 82            [24] 1270 	mov	dpl,@r0
      00231D 08               [12] 1271 	inc	r0
      00231E 86 83            [24] 1272 	mov	dph,@r0
      002320 08               [12] 1273 	inc	r0
      002321 86 F0            [24] 1274 	mov	b,@r0
      002323 12 58 3E         [24] 1275 	lcall	__gptrget
      002326 FC               [12] 1276 	mov	r4,a
      002327 E5 1F            [12] 1277 	mov	a,_bp
      002329 24 0A            [12] 1278 	add	a,#0x0a
      00232B F8               [12] 1279 	mov	r0,a
      00232C E6               [12] 1280 	mov	a,@r0
      00232D B5 04 02         [24] 1281 	cjne	a,ar4,00130$
      002330 80 04            [24] 1282 	sjmp	00131$
      002332                       1283 00130$:
      002332 D0 04            [24] 1284 	pop	ar4
      002334 80 09            [24] 1285 	sjmp	00102$
      002336                       1286 00131$:
      002336 D0 04            [24] 1287 	pop	ar4
                                   1288 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:72: wIndex = 0;
      002338 E5 1F            [12] 1289 	mov	a,_bp
      00233A 24 0A            [12] 1290 	add	a,#0x0a
      00233C F8               [12] 1291 	mov	r0,a
      00233D 76 00            [12] 1292 	mov	@r0,#0x00
      00233F                       1293 00102$:
                                   1294 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:75: buffer->data[wIndex] = ((const uint8_t *) data)[n];
      00233F C0 04            [24] 1295 	push	ar4
      002341 E5 1F            [12] 1296 	mov	a,_bp
      002343 24 07            [12] 1297 	add	a,#0x07
      002345 F8               [12] 1298 	mov	r0,a
      002346 86 82            [24] 1299 	mov	dpl,@r0
      002348 08               [12] 1300 	inc	r0
      002349 86 83            [24] 1301 	mov	dph,@r0
      00234B 08               [12] 1302 	inc	r0
      00234C 86 F0            [24] 1303 	mov	b,@r0
      00234E 12 58 3E         [24] 1304 	lcall	__gptrget
      002351 FA               [12] 1305 	mov	r2,a
      002352 A3               [24] 1306 	inc	dptr
      002353 12 58 3E         [24] 1307 	lcall	__gptrget
      002356 FB               [12] 1308 	mov	r3,a
      002357 A3               [24] 1309 	inc	dptr
      002358 12 58 3E         [24] 1310 	lcall	__gptrget
      00235B FC               [12] 1311 	mov	r4,a
      00235C E5 1F            [12] 1312 	mov	a,_bp
      00235E 24 0A            [12] 1313 	add	a,#0x0a
      002360 F8               [12] 1314 	mov	r0,a
      002361 E6               [12] 1315 	mov	a,@r0
      002362 2A               [12] 1316 	add	a,r2
      002363 FA               [12] 1317 	mov	r2,a
      002364 E4               [12] 1318 	clr	a
      002365 3B               [12] 1319 	addc	a,r3
      002366 FB               [12] 1320 	mov	r3,a
      002367 E5 1F            [12] 1321 	mov	a,_bp
      002369 24 FB            [12] 1322 	add	a,#0xfb
      00236B F8               [12] 1323 	mov	r0,a
      00236C 86 05            [24] 1324 	mov	ar5,@r0
      00236E 08               [12] 1325 	inc	r0
      00236F 86 06            [24] 1326 	mov	ar6,@r0
      002371 08               [12] 1327 	inc	r0
      002372 86 07            [24] 1328 	mov	ar7,@r0
      002374 E5 1F            [12] 1329 	mov	a,_bp
      002376 24 0B            [12] 1330 	add	a,#0x0b
      002378 F8               [12] 1331 	mov	r0,a
      002379 E6               [12] 1332 	mov	a,@r0
      00237A 2D               [12] 1333 	add	a,r5
      00237B FD               [12] 1334 	mov	r5,a
      00237C E4               [12] 1335 	clr	a
      00237D 3E               [12] 1336 	addc	a,r6
      00237E FE               [12] 1337 	mov	r6,a
      00237F 8D 82            [24] 1338 	mov	dpl,r5
      002381 8E 83            [24] 1339 	mov	dph,r6
      002383 8F F0            [24] 1340 	mov	b,r7
      002385 12 58 3E         [24] 1341 	lcall	__gptrget
      002388 FD               [12] 1342 	mov	r5,a
      002389 8A 82            [24] 1343 	mov	dpl,r2
      00238B 8B 83            [24] 1344 	mov	dph,r3
      00238D 8C F0            [24] 1345 	mov	b,r4
      00238F 12 4B FA         [24] 1346 	lcall	__gptrput
                                   1347 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:76: wIndex++;
      002392 E5 1F            [12] 1348 	mov	a,_bp
      002394 24 0A            [12] 1349 	add	a,#0x0a
      002396 F8               [12] 1350 	mov	r0,a
      002397 06               [12] 1351 	inc	@r0
                                   1352 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:70: for (uint8_t n = 0; n < count; n++) {
      002398 E5 1F            [12] 1353 	mov	a,_bp
      00239A 24 0B            [12] 1354 	add	a,#0x0b
      00239C F8               [12] 1355 	mov	r0,a
      00239D 06               [12] 1356 	inc	@r0
      00239E D0 04            [24] 1357 	pop	ar4
      0023A0 02 23 04         [24] 1358 	ljmp	00107$
      0023A3                       1359 00103$:
                                   1360 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:79: buffer->wIndex = wIndex;
      0023A3 E5 1F            [12] 1361 	mov	a,_bp
      0023A5 24 04            [12] 1362 	add	a,#0x04
      0023A7 F8               [12] 1363 	mov	r0,a
      0023A8 86 82            [24] 1364 	mov	dpl,@r0
      0023AA 08               [12] 1365 	inc	r0
      0023AB 86 83            [24] 1366 	mov	dph,@r0
      0023AD 08               [12] 1367 	inc	r0
      0023AE 86 F0            [24] 1368 	mov	b,@r0
      0023B0 E5 1F            [12] 1369 	mov	a,_bp
      0023B2 24 0A            [12] 1370 	add	a,#0x0a
      0023B4 F9               [12] 1371 	mov	r1,a
      0023B5 E7               [12] 1372 	mov	a,@r1
      0023B6 12 4B FA         [24] 1373 	lcall	__gptrput
                                   1374 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:80: buffer->length += count;
      0023B9 A8 1F            [24] 1375 	mov	r0,_bp
      0023BB 08               [12] 1376 	inc	r0
      0023BC 74 01            [12] 1377 	mov	a,#0x01
      0023BE 26               [12] 1378 	add	a,@r0
      0023BF FD               [12] 1379 	mov	r5,a
      0023C0 E4               [12] 1380 	clr	a
      0023C1 08               [12] 1381 	inc	r0
      0023C2 36               [12] 1382 	addc	a,@r0
      0023C3 FE               [12] 1383 	mov	r6,a
      0023C4 08               [12] 1384 	inc	r0
      0023C5 86 07            [24] 1385 	mov	ar7,@r0
      0023C7 8D 82            [24] 1386 	mov	dpl,r5
      0023C9 8E 83            [24] 1387 	mov	dph,r6
      0023CB 8F F0            [24] 1388 	mov	b,r7
      0023CD 12 58 3E         [24] 1389 	lcall	__gptrget
      0023D0 FB               [12] 1390 	mov	r3,a
      0023D1 E5 1F            [12] 1391 	mov	a,_bp
      0023D3 24 FA            [12] 1392 	add	a,#0xfa
      0023D5 F8               [12] 1393 	mov	r0,a
      0023D6 E6               [12] 1394 	mov	a,@r0
      0023D7 2B               [12] 1395 	add	a,r3
      0023D8 FB               [12] 1396 	mov	r3,a
      0023D9 8D 82            [24] 1397 	mov	dpl,r5
      0023DB 8E 83            [24] 1398 	mov	dph,r6
      0023DD 8F F0            [24] 1399 	mov	b,r7
      0023DF 12 4B FA         [24] 1400 	lcall	__gptrput
      0023E2                       1401 00105$:
                                   1402 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:83: return rc;
      0023E2 8C 82            [24] 1403 	mov	dpl,r4
                                   1404 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:84: }
      0023E4 85 1F 81         [24] 1405 	mov	sp,_bp
      0023E7 D0 1F            [24] 1406 	pop	_bp
      0023E9 22               [24] 1407 	ret
                                   1408 ;------------------------------------------------------------
                                   1409 ;Allocation info for local variables in function 'fifoRead'
                                   1410 ;------------------------------------------------------------
                                   1411 ;data                      Allocated to stack - _bp -5
                                   1412 ;count                     Allocated to stack - _bp -6
                                   1413 ;buffer                    Allocated to stack - _bp +1
                                   1414 ;__1310720019              Allocated to registers r7 
                                   1415 ;rc                        Allocated to stack - _bp +4
                                   1416 ;__1310720020              Allocated to registers 
                                   1417 ;buffer                    Allocated to registers 
                                   1418 ;rIndex                    Allocated to stack - _bp +11
                                   1419 ;n                         Allocated to stack - _bp +12
                                   1420 ;sloc0                     Allocated to stack - _bp +4
                                   1421 ;sloc1                     Allocated to stack - _bp +5
                                   1422 ;sloc2                     Allocated to stack - _bp +8
                                   1423 ;------------------------------------------------------------
                                   1424 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:86: bool fifoRead(FifoState *buffer, void *data, uint8_t count) REENTRANT {
                                   1425 ;	-----------------------------------------
                                   1426 ;	 function fifoRead
                                   1427 ;	-----------------------------------------
      0023EA                       1428 _fifoRead:
      0023EA C0 1F            [24] 1429 	push	_bp
      0023EC 85 81 1F         [24] 1430 	mov	_bp,sp
      0023EF C0 82            [24] 1431 	push	dpl
      0023F1 C0 83            [24] 1432 	push	dph
      0023F3 C0 F0            [24] 1433 	push	b
      0023F5 E5 81            [12] 1434 	mov	a,sp
      0023F7 24 09            [12] 1435 	add	a,#0x09
      0023F9 F5 81            [12] 1436 	mov	sp,a
                                   1437 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:87: bool rc = fifoLength(buffer) >= count;
      0023FB A8 1F            [24] 1438 	mov	r0,_bp
      0023FD 08               [12] 1439 	inc	r0
      0023FE 74 01            [12] 1440 	mov	a,#0x01
      002400 26               [12] 1441 	add	a,@r0
      002401 FA               [12] 1442 	mov	r2,a
      002402 E4               [12] 1443 	clr	a
      002403 08               [12] 1444 	inc	r0
      002404 36               [12] 1445 	addc	a,@r0
      002405 FB               [12] 1446 	mov	r3,a
      002406 08               [12] 1447 	inc	r0
      002407 86 04            [24] 1448 	mov	ar4,@r0
      002409 8A 82            [24] 1449 	mov	dpl,r2
      00240B 8B 83            [24] 1450 	mov	dph,r3
      00240D 8C F0            [24] 1451 	mov	b,r4
      00240F 12 58 3E         [24] 1452 	lcall	__gptrget
      002412 FF               [12] 1453 	mov	r7,a
      002413 E5 1F            [12] 1454 	mov	a,_bp
      002415 24 FA            [12] 1455 	add	a,#0xfa
      002417 F8               [12] 1456 	mov	r0,a
      002418 C3               [12] 1457 	clr	c
      002419 EF               [12] 1458 	mov	a,r7
      00241A 96               [12] 1459 	subb	a,@r0
      00241B B3               [12] 1460 	cpl	c
      00241C 92 08            [24] 1461 	mov	b0,c
      00241E E5 1F            [12] 1462 	mov	a,_bp
      002420 24 04            [12] 1463 	add	a,#0x04
      002422 F8               [12] 1464 	mov	r0,a
      002423 A2 08            [12] 1465 	mov	c,b0
      002425 E4               [12] 1466 	clr	a
      002426 33               [12] 1467 	rlc	a
      002427 F6               [12] 1468 	mov	@r0,a
                                   1469 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:89: if (rc) {
      002428 20 08 03         [24] 1470 	jb	b0,00129$
      00242B 02 25 43         [24] 1471 	ljmp	00105$
      00242E                       1472 00129$:
                                   1473 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:90: uint8_t rIndex = buffer->rIndex;
      00242E A8 1F            [24] 1474 	mov	r0,_bp
      002430 08               [12] 1475 	inc	r0
      002431 E5 1F            [12] 1476 	mov	a,_bp
      002433 24 05            [12] 1477 	add	a,#0x05
      002435 F9               [12] 1478 	mov	r1,a
      002436 74 02            [12] 1479 	mov	a,#0x02
      002438 26               [12] 1480 	add	a,@r0
      002439 F7               [12] 1481 	mov	@r1,a
      00243A E4               [12] 1482 	clr	a
      00243B 08               [12] 1483 	inc	r0
      00243C 36               [12] 1484 	addc	a,@r0
      00243D 09               [12] 1485 	inc	r1
      00243E F7               [12] 1486 	mov	@r1,a
      00243F 08               [12] 1487 	inc	r0
      002440 09               [12] 1488 	inc	r1
      002441 E6               [12] 1489 	mov	a,@r0
      002442 F7               [12] 1490 	mov	@r1,a
      002443 E5 1F            [12] 1491 	mov	a,_bp
      002445 24 05            [12] 1492 	add	a,#0x05
      002447 F8               [12] 1493 	mov	r0,a
      002448 86 82            [24] 1494 	mov	dpl,@r0
      00244A 08               [12] 1495 	inc	r0
      00244B 86 83            [24] 1496 	mov	dph,@r0
      00244D 08               [12] 1497 	inc	r0
      00244E 86 F0            [24] 1498 	mov	b,@r0
      002450 E5 1F            [12] 1499 	mov	a,_bp
      002452 24 0B            [12] 1500 	add	a,#0x0b
      002454 F9               [12] 1501 	mov	r1,a
      002455 12 58 3E         [24] 1502 	lcall	__gptrget
      002458 F7               [12] 1503 	mov	@r1,a
                                   1504 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      002459 A8 1F            [24] 1505 	mov	r0,_bp
      00245B 08               [12] 1506 	inc	r0
      00245C E5 1F            [12] 1507 	mov	a,_bp
      00245E 24 08            [12] 1508 	add	a,#0x08
      002460 F9               [12] 1509 	mov	r1,a
      002461 74 05            [12] 1510 	mov	a,#0x05
      002463 26               [12] 1511 	add	a,@r0
      002464 F7               [12] 1512 	mov	@r1,a
      002465 E4               [12] 1513 	clr	a
      002466 08               [12] 1514 	inc	r0
      002467 36               [12] 1515 	addc	a,@r0
      002468 09               [12] 1516 	inc	r1
      002469 F7               [12] 1517 	mov	@r1,a
      00246A 08               [12] 1518 	inc	r0
      00246B 09               [12] 1519 	inc	r1
      00246C E6               [12] 1520 	mov	a,@r0
      00246D F7               [12] 1521 	mov	@r1,a
      00246E E5 1F            [12] 1522 	mov	a,_bp
      002470 24 0C            [12] 1523 	add	a,#0x0c
      002472 F8               [12] 1524 	mov	r0,a
      002473 76 00            [12] 1525 	mov	@r0,#0x00
      002475                       1526 00108$:
      002475 E5 1F            [12] 1527 	mov	a,_bp
      002477 24 0C            [12] 1528 	add	a,#0x0c
      002479 F8               [12] 1529 	mov	r0,a
      00247A E5 1F            [12] 1530 	mov	a,_bp
      00247C 24 FA            [12] 1531 	add	a,#0xfa
      00247E F9               [12] 1532 	mov	r1,a
      00247F C3               [12] 1533 	clr	c
      002480 E6               [12] 1534 	mov	a,@r0
      002481 97               [12] 1535 	subb	a,@r1
      002482 40 03            [24] 1536 	jc	00130$
      002484 02 25 11         [24] 1537 	ljmp	00103$
      002487                       1538 00130$:
                                   1539 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:93: if (rIndex == buffer->size) {
      002487 A8 1F            [24] 1540 	mov	r0,_bp
      002489 08               [12] 1541 	inc	r0
      00248A 86 82            [24] 1542 	mov	dpl,@r0
      00248C 08               [12] 1543 	inc	r0
      00248D 86 83            [24] 1544 	mov	dph,@r0
      00248F 08               [12] 1545 	inc	r0
      002490 86 F0            [24] 1546 	mov	b,@r0
      002492 12 58 3E         [24] 1547 	lcall	__gptrget
      002495 FD               [12] 1548 	mov	r5,a
      002496 E5 1F            [12] 1549 	mov	a,_bp
      002498 24 0B            [12] 1550 	add	a,#0x0b
      00249A F8               [12] 1551 	mov	r0,a
      00249B E6               [12] 1552 	mov	a,@r0
      00249C B5 05 07         [24] 1553 	cjne	a,ar5,00102$
                                   1554 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:94: rIndex = 0;
      00249F E5 1F            [12] 1555 	mov	a,_bp
      0024A1 24 0B            [12] 1556 	add	a,#0x0b
      0024A3 F8               [12] 1557 	mov	r0,a
      0024A4 76 00            [12] 1558 	mov	@r0,#0x00
      0024A6                       1559 00102$:
                                   1560 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:98: ((uint8_t *) data)[n] = buffer->data[rIndex];
      0024A6 C0 02            [24] 1561 	push	ar2
      0024A8 C0 03            [24] 1562 	push	ar3
      0024AA C0 04            [24] 1563 	push	ar4
      0024AC E5 1F            [12] 1564 	mov	a,_bp
      0024AE 24 FB            [12] 1565 	add	a,#0xfb
      0024B0 F8               [12] 1566 	mov	r0,a
      0024B1 86 03            [24] 1567 	mov	ar3,@r0
      0024B3 08               [12] 1568 	inc	r0
      0024B4 86 04            [24] 1569 	mov	ar4,@r0
      0024B6 08               [12] 1570 	inc	r0
      0024B7 86 05            [24] 1571 	mov	ar5,@r0
      0024B9 E5 1F            [12] 1572 	mov	a,_bp
      0024BB 24 0C            [12] 1573 	add	a,#0x0c
      0024BD F8               [12] 1574 	mov	r0,a
      0024BE E6               [12] 1575 	mov	a,@r0
      0024BF 2B               [12] 1576 	add	a,r3
      0024C0 FB               [12] 1577 	mov	r3,a
      0024C1 E4               [12] 1578 	clr	a
      0024C2 3C               [12] 1579 	addc	a,r4
      0024C3 FC               [12] 1580 	mov	r4,a
      0024C4 E5 1F            [12] 1581 	mov	a,_bp
      0024C6 24 08            [12] 1582 	add	a,#0x08
      0024C8 F8               [12] 1583 	mov	r0,a
      0024C9 86 82            [24] 1584 	mov	dpl,@r0
      0024CB 08               [12] 1585 	inc	r0
      0024CC 86 83            [24] 1586 	mov	dph,@r0
      0024CE 08               [12] 1587 	inc	r0
      0024CF 86 F0            [24] 1588 	mov	b,@r0
      0024D1 12 58 3E         [24] 1589 	lcall	__gptrget
      0024D4 FA               [12] 1590 	mov	r2,a
      0024D5 A3               [24] 1591 	inc	dptr
      0024D6 12 58 3E         [24] 1592 	lcall	__gptrget
      0024D9 FE               [12] 1593 	mov	r6,a
      0024DA A3               [24] 1594 	inc	dptr
      0024DB 12 58 3E         [24] 1595 	lcall	__gptrget
      0024DE FF               [12] 1596 	mov	r7,a
      0024DF E5 1F            [12] 1597 	mov	a,_bp
      0024E1 24 0B            [12] 1598 	add	a,#0x0b
      0024E3 F8               [12] 1599 	mov	r0,a
      0024E4 E6               [12] 1600 	mov	a,@r0
      0024E5 2A               [12] 1601 	add	a,r2
      0024E6 FA               [12] 1602 	mov	r2,a
      0024E7 E4               [12] 1603 	clr	a
      0024E8 3E               [12] 1604 	addc	a,r6
      0024E9 FE               [12] 1605 	mov	r6,a
      0024EA 8A 82            [24] 1606 	mov	dpl,r2
      0024EC 8E 83            [24] 1607 	mov	dph,r6
      0024EE 8F F0            [24] 1608 	mov	b,r7
      0024F0 12 58 3E         [24] 1609 	lcall	__gptrget
      0024F3 8B 82            [24] 1610 	mov	dpl,r3
      0024F5 8C 83            [24] 1611 	mov	dph,r4
      0024F7 8D F0            [24] 1612 	mov	b,r5
      0024F9 12 4B FA         [24] 1613 	lcall	__gptrput
                                   1614 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:99: rIndex++;
      0024FC E5 1F            [12] 1615 	mov	a,_bp
      0024FE 24 0B            [12] 1616 	add	a,#0x0b
      002500 F8               [12] 1617 	mov	r0,a
      002501 06               [12] 1618 	inc	@r0
                                   1619 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:92: for (uint8_t n = 0; n < count; n++) {
      002502 E5 1F            [12] 1620 	mov	a,_bp
      002504 24 0C            [12] 1621 	add	a,#0x0c
      002506 F8               [12] 1622 	mov	r0,a
      002507 06               [12] 1623 	inc	@r0
      002508 D0 04            [24] 1624 	pop	ar4
      00250A D0 03            [24] 1625 	pop	ar3
      00250C D0 02            [24] 1626 	pop	ar2
      00250E 02 24 75         [24] 1627 	ljmp	00108$
      002511                       1628 00103$:
                                   1629 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:102: buffer->rIndex = rIndex;
      002511 E5 1F            [12] 1630 	mov	a,_bp
      002513 24 05            [12] 1631 	add	a,#0x05
      002515 F8               [12] 1632 	mov	r0,a
      002516 86 82            [24] 1633 	mov	dpl,@r0
      002518 08               [12] 1634 	inc	r0
      002519 86 83            [24] 1635 	mov	dph,@r0
      00251B 08               [12] 1636 	inc	r0
      00251C 86 F0            [24] 1637 	mov	b,@r0
      00251E E5 1F            [12] 1638 	mov	a,_bp
      002520 24 0B            [12] 1639 	add	a,#0x0b
      002522 F9               [12] 1640 	mov	r1,a
      002523 E7               [12] 1641 	mov	a,@r1
      002524 12 4B FA         [24] 1642 	lcall	__gptrput
                                   1643 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:103: buffer->length -= count;
      002527 8A 82            [24] 1644 	mov	dpl,r2
      002529 8B 83            [24] 1645 	mov	dph,r3
      00252B 8C F0            [24] 1646 	mov	b,r4
      00252D 12 58 3E         [24] 1647 	lcall	__gptrget
      002530 FF               [12] 1648 	mov	r7,a
      002531 E5 1F            [12] 1649 	mov	a,_bp
      002533 24 FA            [12] 1650 	add	a,#0xfa
      002535 F8               [12] 1651 	mov	r0,a
      002536 EF               [12] 1652 	mov	a,r7
      002537 C3               [12] 1653 	clr	c
      002538 96               [12] 1654 	subb	a,@r0
      002539 FF               [12] 1655 	mov	r7,a
      00253A 8A 82            [24] 1656 	mov	dpl,r2
      00253C 8B 83            [24] 1657 	mov	dph,r3
      00253E 8C F0            [24] 1658 	mov	b,r4
      002540 12 4B FA         [24] 1659 	lcall	__gptrput
      002543                       1660 00105$:
                                   1661 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:106: return rc;
      002543 E5 1F            [12] 1662 	mov	a,_bp
      002545 24 04            [12] 1663 	add	a,#0x04
      002547 F8               [12] 1664 	mov	r0,a
      002548 86 82            [24] 1665 	mov	dpl,@r0
                                   1666 ;	/home/mr-a-717/.stc/uni-stc/hal/fifo-buffer.c:107: }
      00254A 85 1F 81         [24] 1667 	mov	sp,_bp
      00254D D0 1F            [24] 1668 	pop	_bp
      00254F 22               [24] 1669 	ret
                                   1670 	.area CSEG    (CODE)
                                   1671 	.area CONST   (CODE)
      0061FA                       1672 _FONTS:
      0061FA 00                    1673 	.db #0x00	; 0
      0061FB 00                    1674 	.db #0x00	; 0
      0061FC 00                    1675 	.db #0x00	; 0
      0061FD 00                    1676 	.db #0x00	; 0
      0061FE 00                    1677 	.db #0x00	; 0
      0061FF 81                    1678 	.db #0x81	; 129
      006200 81                    1679 	.db #0x81	; 129
      006201 18                    1680 	.db #0x18	; 24
      006202 81                    1681 	.db #0x81	; 129
      006203 81                    1682 	.db #0x81	; 129
      006204 00                    1683 	.db #0x00	; 0
      006205 07                    1684 	.db #0x07	; 7
      006206 00                    1685 	.db #0x00	; 0
      006207 07                    1686 	.db #0x07	; 7
      006208 00                    1687 	.db #0x00	; 0
      006209 14                    1688 	.db #0x14	; 20
      00620A 7F                    1689 	.db #0x7f	; 127
      00620B 14                    1690 	.db #0x14	; 20
      00620C 7F                    1691 	.db #0x7f	; 127
      00620D 14                    1692 	.db #0x14	; 20
      00620E 24                    1693 	.db #0x24	; 36
      00620F 2A                    1694 	.db #0x2a	; 42
      006210 7F                    1695 	.db #0x7f	; 127
      006211 2A                    1696 	.db #0x2a	; 42
      006212 12                    1697 	.db #0x12	; 18
      006213 23                    1698 	.db #0x23	; 35
      006214 13                    1699 	.db #0x13	; 19
      006215 08                    1700 	.db #0x08	; 8
      006216 64                    1701 	.db #0x64	; 100	'd'
      006217 62                    1702 	.db #0x62	; 98	'b'
      006218 36                    1703 	.db #0x36	; 54	'6'
      006219 49                    1704 	.db #0x49	; 73	'I'
      00621A 55                    1705 	.db #0x55	; 85	'U'
      00621B 22                    1706 	.db #0x22	; 34
      00621C 50                    1707 	.db #0x50	; 80	'P'
      00621D 00                    1708 	.db #0x00	; 0
      00621E 05                    1709 	.db #0x05	; 5
      00621F 03                    1710 	.db #0x03	; 3
      006220 00                    1711 	.db #0x00	; 0
      006221 00                    1712 	.db #0x00	; 0
      006222 00                    1713 	.db #0x00	; 0
      006223 1C                    1714 	.db #0x1c	; 28
      006224 22                    1715 	.db #0x22	; 34
      006225 41                    1716 	.db #0x41	; 65	'A'
      006226 00                    1717 	.db #0x00	; 0
      006227 00                    1718 	.db #0x00	; 0
      006228 41                    1719 	.db #0x41	; 65	'A'
      006229 22                    1720 	.db #0x22	; 34
      00622A 1C                    1721 	.db #0x1c	; 28
      00622B 00                    1722 	.db #0x00	; 0
      00622C 14                    1723 	.db #0x14	; 20
      00622D 08                    1724 	.db #0x08	; 8
      00622E 3E                    1725 	.db #0x3e	; 62
      00622F 08                    1726 	.db #0x08	; 8
      006230 14                    1727 	.db #0x14	; 20
      006231 08                    1728 	.db #0x08	; 8
      006232 08                    1729 	.db #0x08	; 8
      006233 3E                    1730 	.db #0x3e	; 62
      006234 08                    1731 	.db #0x08	; 8
      006235 08                    1732 	.db #0x08	; 8
      006236 00                    1733 	.db #0x00	; 0
      006237 50                    1734 	.db #0x50	; 80	'P'
      006238 30                    1735 	.db #0x30	; 48	'0'
      006239 00                    1736 	.db #0x00	; 0
      00623A 00                    1737 	.db #0x00	; 0
      00623B 08                    1738 	.db #0x08	; 8
      00623C 08                    1739 	.db #0x08	; 8
      00623D 08                    1740 	.db #0x08	; 8
      00623E 08                    1741 	.db #0x08	; 8
      00623F 08                    1742 	.db #0x08	; 8
      006240 00                    1743 	.db #0x00	; 0
      006241 60                    1744 	.db #0x60	; 96
      006242 60                    1745 	.db #0x60	; 96
      006243 00                    1746 	.db #0x00	; 0
      006244 00                    1747 	.db #0x00	; 0
      006245 20                    1748 	.db #0x20	; 32
      006246 10                    1749 	.db #0x10	; 16
      006247 08                    1750 	.db #0x08	; 8
      006248 04                    1751 	.db #0x04	; 4
      006249 02                    1752 	.db #0x02	; 2
      00624A 3E                    1753 	.db #0x3e	; 62
      00624B 51                    1754 	.db #0x51	; 81	'Q'
      00624C 49                    1755 	.db #0x49	; 73	'I'
      00624D 45                    1756 	.db #0x45	; 69	'E'
      00624E 3E                    1757 	.db #0x3e	; 62
      00624F 00                    1758 	.db #0x00	; 0
      006250 42                    1759 	.db #0x42	; 66	'B'
      006251 7F                    1760 	.db #0x7f	; 127
      006252 40                    1761 	.db #0x40	; 64
      006253 00                    1762 	.db #0x00	; 0
      006254 42                    1763 	.db #0x42	; 66	'B'
      006255 61                    1764 	.db #0x61	; 97	'a'
      006256 51                    1765 	.db #0x51	; 81	'Q'
      006257 49                    1766 	.db #0x49	; 73	'I'
      006258 46                    1767 	.db #0x46	; 70	'F'
      006259 21                    1768 	.db #0x21	; 33
      00625A 41                    1769 	.db #0x41	; 65	'A'
      00625B 45                    1770 	.db #0x45	; 69	'E'
      00625C 4B                    1771 	.db #0x4b	; 75	'K'
      00625D 31                    1772 	.db #0x31	; 49	'1'
      00625E 18                    1773 	.db #0x18	; 24
      00625F 14                    1774 	.db #0x14	; 20
      006260 12                    1775 	.db #0x12	; 18
      006261 7F                    1776 	.db #0x7f	; 127
      006262 10                    1777 	.db #0x10	; 16
      006263 27                    1778 	.db #0x27	; 39
      006264 45                    1779 	.db #0x45	; 69	'E'
      006265 45                    1780 	.db #0x45	; 69	'E'
      006266 45                    1781 	.db #0x45	; 69	'E'
      006267 39                    1782 	.db #0x39	; 57	'9'
      006268 3C                    1783 	.db #0x3c	; 60
      006269 4A                    1784 	.db #0x4a	; 74	'J'
      00626A 49                    1785 	.db #0x49	; 73	'I'
      00626B 49                    1786 	.db #0x49	; 73	'I'
      00626C 30                    1787 	.db #0x30	; 48	'0'
      00626D 01                    1788 	.db #0x01	; 1
      00626E 71                    1789 	.db #0x71	; 113	'q'
      00626F 09                    1790 	.db #0x09	; 9
      006270 05                    1791 	.db #0x05	; 5
      006271 03                    1792 	.db #0x03	; 3
      006272 36                    1793 	.db #0x36	; 54	'6'
      006273 49                    1794 	.db #0x49	; 73	'I'
      006274 49                    1795 	.db #0x49	; 73	'I'
      006275 49                    1796 	.db #0x49	; 73	'I'
      006276 36                    1797 	.db #0x36	; 54	'6'
      006277 06                    1798 	.db #0x06	; 6
      006278 49                    1799 	.db #0x49	; 73	'I'
      006279 49                    1800 	.db #0x49	; 73	'I'
      00627A 29                    1801 	.db #0x29	; 41
      00627B 1E                    1802 	.db #0x1e	; 30
      00627C 00                    1803 	.db #0x00	; 0
      00627D 36                    1804 	.db #0x36	; 54	'6'
      00627E 36                    1805 	.db #0x36	; 54	'6'
      00627F 00                    1806 	.db #0x00	; 0
      006280 00                    1807 	.db #0x00	; 0
      006281 00                    1808 	.db #0x00	; 0
      006282 56                    1809 	.db #0x56	; 86	'V'
      006283 36                    1810 	.db #0x36	; 54	'6'
      006284 00                    1811 	.db #0x00	; 0
      006285 00                    1812 	.db #0x00	; 0
      006286 08                    1813 	.db #0x08	; 8
      006287 14                    1814 	.db #0x14	; 20
      006288 22                    1815 	.db #0x22	; 34
      006289 41                    1816 	.db #0x41	; 65	'A'
      00628A 00                    1817 	.db #0x00	; 0
      00628B 14                    1818 	.db #0x14	; 20
      00628C 14                    1819 	.db #0x14	; 20
      00628D 14                    1820 	.db #0x14	; 20
      00628E 14                    1821 	.db #0x14	; 20
      00628F 14                    1822 	.db #0x14	; 20
      006290 00                    1823 	.db #0x00	; 0
      006291 41                    1824 	.db #0x41	; 65	'A'
      006292 22                    1825 	.db #0x22	; 34
      006293 14                    1826 	.db #0x14	; 20
      006294 08                    1827 	.db #0x08	; 8
      006295 02                    1828 	.db #0x02	; 2
      006296 01                    1829 	.db #0x01	; 1
      006297 51                    1830 	.db #0x51	; 81	'Q'
      006298 09                    1831 	.db #0x09	; 9
      006299 06                    1832 	.db #0x06	; 6
      00629A 32                    1833 	.db #0x32	; 50	'2'
      00629B 49                    1834 	.db #0x49	; 73	'I'
      00629C 79                    1835 	.db #0x79	; 121	'y'
      00629D 41                    1836 	.db #0x41	; 65	'A'
      00629E 3E                    1837 	.db #0x3e	; 62
      00629F 7E                    1838 	.db #0x7e	; 126
      0062A0 11                    1839 	.db #0x11	; 17
      0062A1 11                    1840 	.db #0x11	; 17
      0062A2 11                    1841 	.db #0x11	; 17
      0062A3 7E                    1842 	.db #0x7e	; 126
      0062A4 7F                    1843 	.db #0x7f	; 127
      0062A5 49                    1844 	.db #0x49	; 73	'I'
      0062A6 49                    1845 	.db #0x49	; 73	'I'
      0062A7 49                    1846 	.db #0x49	; 73	'I'
      0062A8 36                    1847 	.db #0x36	; 54	'6'
      0062A9 3E                    1848 	.db #0x3e	; 62
      0062AA 41                    1849 	.db #0x41	; 65	'A'
      0062AB 41                    1850 	.db #0x41	; 65	'A'
      0062AC 41                    1851 	.db #0x41	; 65	'A'
      0062AD 22                    1852 	.db #0x22	; 34
      0062AE 7F                    1853 	.db #0x7f	; 127
      0062AF 41                    1854 	.db #0x41	; 65	'A'
      0062B0 41                    1855 	.db #0x41	; 65	'A'
      0062B1 22                    1856 	.db #0x22	; 34
      0062B2 1C                    1857 	.db #0x1c	; 28
      0062B3 7F                    1858 	.db #0x7f	; 127
      0062B4 49                    1859 	.db #0x49	; 73	'I'
      0062B5 49                    1860 	.db #0x49	; 73	'I'
      0062B6 49                    1861 	.db #0x49	; 73	'I'
      0062B7 41                    1862 	.db #0x41	; 65	'A'
      0062B8 7F                    1863 	.db #0x7f	; 127
      0062B9 09                    1864 	.db #0x09	; 9
      0062BA 09                    1865 	.db #0x09	; 9
      0062BB 09                    1866 	.db #0x09	; 9
      0062BC 01                    1867 	.db #0x01	; 1
      0062BD 3E                    1868 	.db #0x3e	; 62
      0062BE 41                    1869 	.db #0x41	; 65	'A'
      0062BF 49                    1870 	.db #0x49	; 73	'I'
      0062C0 49                    1871 	.db #0x49	; 73	'I'
      0062C1 7A                    1872 	.db #0x7a	; 122	'z'
      0062C2 7F                    1873 	.db #0x7f	; 127
      0062C3 08                    1874 	.db #0x08	; 8
      0062C4 08                    1875 	.db #0x08	; 8
      0062C5 08                    1876 	.db #0x08	; 8
      0062C6 7F                    1877 	.db #0x7f	; 127
      0062C7 00                    1878 	.db #0x00	; 0
      0062C8 41                    1879 	.db #0x41	; 65	'A'
      0062C9 7F                    1880 	.db #0x7f	; 127
      0062CA 41                    1881 	.db #0x41	; 65	'A'
      0062CB 00                    1882 	.db #0x00	; 0
      0062CC 20                    1883 	.db #0x20	; 32
      0062CD 40                    1884 	.db #0x40	; 64
      0062CE 41                    1885 	.db #0x41	; 65	'A'
      0062CF 3F                    1886 	.db #0x3f	; 63
      0062D0 01                    1887 	.db #0x01	; 1
      0062D1 7F                    1888 	.db #0x7f	; 127
      0062D2 08                    1889 	.db #0x08	; 8
      0062D3 14                    1890 	.db #0x14	; 20
      0062D4 22                    1891 	.db #0x22	; 34
      0062D5 41                    1892 	.db #0x41	; 65	'A'
      0062D6 7F                    1893 	.db #0x7f	; 127
      0062D7 40                    1894 	.db #0x40	; 64
      0062D8 40                    1895 	.db #0x40	; 64
      0062D9 40                    1896 	.db #0x40	; 64
      0062DA 40                    1897 	.db #0x40	; 64
      0062DB 7F                    1898 	.db #0x7f	; 127
      0062DC 02                    1899 	.db #0x02	; 2
      0062DD 0C                    1900 	.db #0x0c	; 12
      0062DE 02                    1901 	.db #0x02	; 2
      0062DF 7F                    1902 	.db #0x7f	; 127
      0062E0 7F                    1903 	.db #0x7f	; 127
      0062E1 04                    1904 	.db #0x04	; 4
      0062E2 08                    1905 	.db #0x08	; 8
      0062E3 10                    1906 	.db #0x10	; 16
      0062E4 7F                    1907 	.db #0x7f	; 127
      0062E5 3E                    1908 	.db #0x3e	; 62
      0062E6 41                    1909 	.db #0x41	; 65	'A'
      0062E7 41                    1910 	.db #0x41	; 65	'A'
      0062E8 41                    1911 	.db #0x41	; 65	'A'
      0062E9 3E                    1912 	.db #0x3e	; 62
      0062EA 7F                    1913 	.db #0x7f	; 127
      0062EB 09                    1914 	.db #0x09	; 9
      0062EC 09                    1915 	.db #0x09	; 9
      0062ED 09                    1916 	.db #0x09	; 9
      0062EE 06                    1917 	.db #0x06	; 6
      0062EF 3E                    1918 	.db #0x3e	; 62
      0062F0 41                    1919 	.db #0x41	; 65	'A'
      0062F1 51                    1920 	.db #0x51	; 81	'Q'
      0062F2 21                    1921 	.db #0x21	; 33
      0062F3 5E                    1922 	.db #0x5e	; 94
      0062F4 7F                    1923 	.db #0x7f	; 127
      0062F5 09                    1924 	.db #0x09	; 9
      0062F6 19                    1925 	.db #0x19	; 25
      0062F7 29                    1926 	.db #0x29	; 41
      0062F8 46                    1927 	.db #0x46	; 70	'F'
      0062F9 46                    1928 	.db #0x46	; 70	'F'
      0062FA 49                    1929 	.db #0x49	; 73	'I'
      0062FB 49                    1930 	.db #0x49	; 73	'I'
      0062FC 49                    1931 	.db #0x49	; 73	'I'
      0062FD 31                    1932 	.db #0x31	; 49	'1'
      0062FE 01                    1933 	.db #0x01	; 1
      0062FF 01                    1934 	.db #0x01	; 1
      006300 7F                    1935 	.db #0x7f	; 127
      006301 01                    1936 	.db #0x01	; 1
      006302 01                    1937 	.db #0x01	; 1
      006303 3F                    1938 	.db #0x3f	; 63
      006304 40                    1939 	.db #0x40	; 64
      006305 40                    1940 	.db #0x40	; 64
      006306 40                    1941 	.db #0x40	; 64
      006307 3F                    1942 	.db #0x3f	; 63
      006308 1F                    1943 	.db #0x1f	; 31
      006309 20                    1944 	.db #0x20	; 32
      00630A 40                    1945 	.db #0x40	; 64
      00630B 20                    1946 	.db #0x20	; 32
      00630C 1F                    1947 	.db #0x1f	; 31
      00630D 3F                    1948 	.db #0x3f	; 63
      00630E 40                    1949 	.db #0x40	; 64
      00630F 38                    1950 	.db #0x38	; 56	'8'
      006310 40                    1951 	.db #0x40	; 64
      006311 3F                    1952 	.db #0x3f	; 63
      006312 63                    1953 	.db #0x63	; 99	'c'
      006313 14                    1954 	.db #0x14	; 20
      006314 08                    1955 	.db #0x08	; 8
      006315 14                    1956 	.db #0x14	; 20
      006316 63                    1957 	.db #0x63	; 99	'c'
      006317 07                    1958 	.db #0x07	; 7
      006318 08                    1959 	.db #0x08	; 8
      006319 70                    1960 	.db #0x70	; 112	'p'
      00631A 08                    1961 	.db #0x08	; 8
      00631B 07                    1962 	.db #0x07	; 7
      00631C 61                    1963 	.db #0x61	; 97	'a'
      00631D 51                    1964 	.db #0x51	; 81	'Q'
      00631E 49                    1965 	.db #0x49	; 73	'I'
      00631F 45                    1966 	.db #0x45	; 69	'E'
      006320 43                    1967 	.db #0x43	; 67	'C'
      006321 00                    1968 	.db #0x00	; 0
      006322 7F                    1969 	.db #0x7f	; 127
      006323 41                    1970 	.db #0x41	; 65	'A'
      006324 41                    1971 	.db #0x41	; 65	'A'
      006325 00                    1972 	.db #0x00	; 0
      006326 02                    1973 	.db #0x02	; 2
      006327 04                    1974 	.db #0x04	; 4
      006328 08                    1975 	.db #0x08	; 8
      006329 10                    1976 	.db #0x10	; 16
      00632A 20                    1977 	.db #0x20	; 32
      00632B 00                    1978 	.db #0x00	; 0
      00632C 41                    1979 	.db #0x41	; 65	'A'
      00632D 41                    1980 	.db #0x41	; 65	'A'
      00632E 7F                    1981 	.db #0x7f	; 127
      00632F 00                    1982 	.db #0x00	; 0
      006330 04                    1983 	.db #0x04	; 4
      006331 02                    1984 	.db #0x02	; 2
      006332 01                    1985 	.db #0x01	; 1
      006333 02                    1986 	.db #0x02	; 2
      006334 04                    1987 	.db #0x04	; 4
      006335 40                    1988 	.db #0x40	; 64
      006336 40                    1989 	.db #0x40	; 64
      006337 40                    1990 	.db #0x40	; 64
      006338 40                    1991 	.db #0x40	; 64
      006339 40                    1992 	.db #0x40	; 64
      00633A 00                    1993 	.db #0x00	; 0
      00633B 01                    1994 	.db #0x01	; 1
      00633C 02                    1995 	.db #0x02	; 2
      00633D 04                    1996 	.db #0x04	; 4
      00633E 00                    1997 	.db #0x00	; 0
      00633F 20                    1998 	.db #0x20	; 32
      006340 54                    1999 	.db #0x54	; 84	'T'
      006341 54                    2000 	.db #0x54	; 84	'T'
      006342 54                    2001 	.db #0x54	; 84	'T'
      006343 78                    2002 	.db #0x78	; 120	'x'
      006344 7F                    2003 	.db #0x7f	; 127
      006345 48                    2004 	.db #0x48	; 72	'H'
      006346 44                    2005 	.db #0x44	; 68	'D'
      006347 44                    2006 	.db #0x44	; 68	'D'
      006348 38                    2007 	.db #0x38	; 56	'8'
      006349 38                    2008 	.db #0x38	; 56	'8'
      00634A 44                    2009 	.db #0x44	; 68	'D'
      00634B 44                    2010 	.db #0x44	; 68	'D'
      00634C 44                    2011 	.db #0x44	; 68	'D'
      00634D 20                    2012 	.db #0x20	; 32
      00634E 38                    2013 	.db #0x38	; 56	'8'
      00634F 44                    2014 	.db #0x44	; 68	'D'
      006350 44                    2015 	.db #0x44	; 68	'D'
      006351 48                    2016 	.db #0x48	; 72	'H'
      006352 7F                    2017 	.db #0x7f	; 127
      006353 38                    2018 	.db #0x38	; 56	'8'
      006354 54                    2019 	.db #0x54	; 84	'T'
      006355 54                    2020 	.db #0x54	; 84	'T'
      006356 54                    2021 	.db #0x54	; 84	'T'
      006357 18                    2022 	.db #0x18	; 24
      006358 08                    2023 	.db #0x08	; 8
      006359 7E                    2024 	.db #0x7e	; 126
      00635A 09                    2025 	.db #0x09	; 9
      00635B 01                    2026 	.db #0x01	; 1
      00635C 02                    2027 	.db #0x02	; 2
      00635D 0C                    2028 	.db #0x0c	; 12
      00635E 52                    2029 	.db #0x52	; 82	'R'
      00635F 52                    2030 	.db #0x52	; 82	'R'
      006360 52                    2031 	.db #0x52	; 82	'R'
      006361 3E                    2032 	.db #0x3e	; 62
      006362 7F                    2033 	.db #0x7f	; 127
      006363 08                    2034 	.db #0x08	; 8
      006364 04                    2035 	.db #0x04	; 4
      006365 04                    2036 	.db #0x04	; 4
      006366 78                    2037 	.db #0x78	; 120	'x'
      006367 00                    2038 	.db #0x00	; 0
      006368 44                    2039 	.db #0x44	; 68	'D'
      006369 7D                    2040 	.db #0x7d	; 125
      00636A 40                    2041 	.db #0x40	; 64
      00636B 00                    2042 	.db #0x00	; 0
      00636C 20                    2043 	.db #0x20	; 32
      00636D 40                    2044 	.db #0x40	; 64
      00636E 44                    2045 	.db #0x44	; 68	'D'
      00636F 3D                    2046 	.db #0x3d	; 61
      006370 00                    2047 	.db #0x00	; 0
      006371 7F                    2048 	.db #0x7f	; 127
      006372 10                    2049 	.db #0x10	; 16
      006373 28                    2050 	.db #0x28	; 40
      006374 44                    2051 	.db #0x44	; 68	'D'
      006375 00                    2052 	.db #0x00	; 0
      006376 00                    2053 	.db #0x00	; 0
      006377 41                    2054 	.db #0x41	; 65	'A'
      006378 7F                    2055 	.db #0x7f	; 127
      006379 40                    2056 	.db #0x40	; 64
      00637A 00                    2057 	.db #0x00	; 0
      00637B 7C                    2058 	.db #0x7c	; 124
      00637C 04                    2059 	.db #0x04	; 4
      00637D 18                    2060 	.db #0x18	; 24
      00637E 04                    2061 	.db #0x04	; 4
      00637F 78                    2062 	.db #0x78	; 120	'x'
      006380 7C                    2063 	.db #0x7c	; 124
      006381 08                    2064 	.db #0x08	; 8
      006382 04                    2065 	.db #0x04	; 4
      006383 04                    2066 	.db #0x04	; 4
      006384 78                    2067 	.db #0x78	; 120	'x'
      006385 38                    2068 	.db #0x38	; 56	'8'
      006386 44                    2069 	.db #0x44	; 68	'D'
      006387 44                    2070 	.db #0x44	; 68	'D'
      006388 44                    2071 	.db #0x44	; 68	'D'
      006389 38                    2072 	.db #0x38	; 56	'8'
      00638A 7C                    2073 	.db #0x7c	; 124
      00638B 14                    2074 	.db #0x14	; 20
      00638C 14                    2075 	.db #0x14	; 20
      00638D 14                    2076 	.db #0x14	; 20
      00638E 08                    2077 	.db #0x08	; 8
      00638F 08                    2078 	.db #0x08	; 8
      006390 14                    2079 	.db #0x14	; 20
      006391 14                    2080 	.db #0x14	; 20
      006392 14                    2081 	.db #0x14	; 20
      006393 7C                    2082 	.db #0x7c	; 124
      006394 7C                    2083 	.db #0x7c	; 124
      006395 08                    2084 	.db #0x08	; 8
      006396 04                    2085 	.db #0x04	; 4
      006397 04                    2086 	.db #0x04	; 4
      006398 08                    2087 	.db #0x08	; 8
      006399 48                    2088 	.db #0x48	; 72	'H'
      00639A 54                    2089 	.db #0x54	; 84	'T'
      00639B 54                    2090 	.db #0x54	; 84	'T'
      00639C 54                    2091 	.db #0x54	; 84	'T'
      00639D 20                    2092 	.db #0x20	; 32
      00639E 04                    2093 	.db #0x04	; 4
      00639F 3F                    2094 	.db #0x3f	; 63
      0063A0 44                    2095 	.db #0x44	; 68	'D'
      0063A1 40                    2096 	.db #0x40	; 64
      0063A2 20                    2097 	.db #0x20	; 32
      0063A3 3C                    2098 	.db #0x3c	; 60
      0063A4 40                    2099 	.db #0x40	; 64
      0063A5 40                    2100 	.db #0x40	; 64
      0063A6 20                    2101 	.db #0x20	; 32
      0063A7 7C                    2102 	.db #0x7c	; 124
      0063A8 1C                    2103 	.db #0x1c	; 28
      0063A9 20                    2104 	.db #0x20	; 32
      0063AA 40                    2105 	.db #0x40	; 64
      0063AB 20                    2106 	.db #0x20	; 32
      0063AC 1C                    2107 	.db #0x1c	; 28
      0063AD 3C                    2108 	.db #0x3c	; 60
      0063AE 40                    2109 	.db #0x40	; 64
      0063AF 30                    2110 	.db #0x30	; 48	'0'
      0063B0 40                    2111 	.db #0x40	; 64
      0063B1 3C                    2112 	.db #0x3c	; 60
      0063B2 44                    2113 	.db #0x44	; 68	'D'
      0063B3 28                    2114 	.db #0x28	; 40
      0063B4 10                    2115 	.db #0x10	; 16
      0063B5 28                    2116 	.db #0x28	; 40
      0063B6 44                    2117 	.db #0x44	; 68	'D'
      0063B7 0C                    2118 	.db #0x0c	; 12
      0063B8 50                    2119 	.db #0x50	; 80	'P'
      0063B9 50                    2120 	.db #0x50	; 80	'P'
      0063BA 50                    2121 	.db #0x50	; 80	'P'
      0063BB 3C                    2122 	.db #0x3c	; 60
      0063BC 44                    2123 	.db #0x44	; 68	'D'
      0063BD 64                    2124 	.db #0x64	; 100	'd'
      0063BE 54                    2125 	.db #0x54	; 84	'T'
      0063BF 4C                    2126 	.db #0x4c	; 76	'L'
      0063C0 44                    2127 	.db #0x44	; 68	'D'
      0063C1 00                    2128 	.db #0x00	; 0
      0063C2 08                    2129 	.db #0x08	; 8
      0063C3 36                    2130 	.db #0x36	; 54	'6'
      0063C4 41                    2131 	.db #0x41	; 65	'A'
      0063C5 00                    2132 	.db #0x00	; 0
      0063C6 00                    2133 	.db #0x00	; 0
      0063C7 00                    2134 	.db #0x00	; 0
      0063C8 7F                    2135 	.db #0x7f	; 127
      0063C9 00                    2136 	.db #0x00	; 0
      0063CA 00                    2137 	.db #0x00	; 0
      0063CB 00                    2138 	.db #0x00	; 0
      0063CC 41                    2139 	.db #0x41	; 65	'A'
      0063CD 36                    2140 	.db #0x36	; 54	'6'
      0063CE 08                    2141 	.db #0x08	; 8
      0063CF 00                    2142 	.db #0x00	; 0
      0063D0 10                    2143 	.db #0x10	; 16
      0063D1 08                    2144 	.db #0x08	; 8
      0063D2 08                    2145 	.db #0x08	; 8
      0063D3 10                    2146 	.db #0x10	; 16
      0063D4 08                    2147 	.db #0x08	; 8
      0063D5 00                    2148 	.db #0x00	; 0
      0063D6 00                    2149 	.db #0x00	; 0
      0063D7 00                    2150 	.db #0x00	; 0
      0063D8 00                    2151 	.db #0x00	; 0
      0063D9 00                    2152 	.db #0x00	; 0
                                   2153 	.area XINIT   (CODE)
                                   2154 	.area CABS    (ABS,CODE)
