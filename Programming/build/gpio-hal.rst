                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module gpio_hal
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
                                    156 	.globl _gpioWrite_PARM_2
                                    157 	.globl _DMA_UR4R_TXAL
                                    158 	.globl _DMA_UR4R_TXAH
                                    159 	.globl _DMA_UR4R_DONE
                                    160 	.globl _DMA_UR4R_AMT
                                    161 	.globl _DMA_UR4R_STA
                                    162 	.globl _DMA_UR4R_CR
                                    163 	.globl _DMA_UR4R_CFG
                                    164 	.globl _DMA_UR4T_TXAL
                                    165 	.globl _DMA_UR4T_TXAH
                                    166 	.globl _DMA_UR4T_DONE
                                    167 	.globl _DMA_UR4T_AMT
                                    168 	.globl _DMA_UR4T_STA
                                    169 	.globl _DMA_UR4T_CR
                                    170 	.globl _DMA_UR4T_CFG
                                    171 	.globl _DMA_UR3R_TXAL
                                    172 	.globl _DMA_UR3R_TXAH
                                    173 	.globl _DMA_UR3R_DONE
                                    174 	.globl _DMA_UR3R_AMT
                                    175 	.globl _DMA_UR3R_STA
                                    176 	.globl _DMA_UR3R_CR
                                    177 	.globl _DMA_UR3R_CFG
                                    178 	.globl _DMA_UR3T_TXAL
                                    179 	.globl _DMA_UR3T_TXAH
                                    180 	.globl _DMA_UR3T_DONE
                                    181 	.globl _DMA_UR3T_AMT
                                    182 	.globl _DMA_UR3T_STA
                                    183 	.globl _DMA_UR3T_CR
                                    184 	.globl _DMA_UR3T_CFG
                                    185 	.globl _DMA_UR2R_TXAL
                                    186 	.globl _DMA_UR2R_TXAH
                                    187 	.globl _DMA_UR2R_DONE
                                    188 	.globl _DMA_UR2R_AMT
                                    189 	.globl _DMA_UR2R_STA
                                    190 	.globl _DMA_UR2R_CR
                                    191 	.globl _DMA_UR2R_CFG
                                    192 	.globl _DMA_UR2T_TXAL
                                    193 	.globl _DMA_UR2T_TXAH
                                    194 	.globl _DMA_UR2T_DONE
                                    195 	.globl _DMA_UR2T_AMT
                                    196 	.globl _DMA_UR2T_STA
                                    197 	.globl _DMA_UR2T_CR
                                    198 	.globl _DMA_UR2T_CFG
                                    199 	.globl _DMA_UR1R_TXAL
                                    200 	.globl _DMA_UR1R_TXAH
                                    201 	.globl _DMA_UR1R_DONE
                                    202 	.globl _DMA_UR1R_AMT
                                    203 	.globl _DMA_UR1R_STA
                                    204 	.globl _DMA_UR1R_CR
                                    205 	.globl _DMA_UR1R_CFG
                                    206 	.globl _DMA_UR1T_TXAL
                                    207 	.globl _DMA_UR1T_TXAH
                                    208 	.globl _DMA_UR1T_DONE
                                    209 	.globl _DMA_URTX_AMT
                                    210 	.globl _DMA_UR1T_STA
                                    211 	.globl _DMA_UR1T_CR
                                    212 	.globl _DMA_UR1T_CFG
                                    213 	.globl _TM4PS
                                    214 	.globl _TM3PS
                                    215 	.globl _TM2PS
                                    216 	.globl _IRC48MCR
                                    217 	.globl _IRCDB
                                    218 	.globl _MCLKOCR
                                    219 	.globl _CKSEL
                                    220 	.globl _IRC32KCR
                                    221 	.globl _XOSCCR
                                    222 	.globl _HIRCCR
                                    223 	.globl _CLKDIV
                                    224 	.globl _DMA_SPI_CFG2
                                    225 	.globl _DMA_SPI_RXAL
                                    226 	.globl _DMA_SPI_RXAH
                                    227 	.globl _DMA_SPI_TXAL
                                    228 	.globl _DMA_SPI_TXAH
                                    229 	.globl _DMA_SPI_DONE
                                    230 	.globl _DMA_SPI_AMT
                                    231 	.globl _DMA_SPI_STA
                                    232 	.globl _DMA_SPI_CR
                                    233 	.globl _DMA_SPI_CFG
                                    234 	.globl _SSEC
                                    235 	.globl _SEC
                                    236 	.globl _MIN
                                    237 	.globl _HOUR
                                    238 	.globl _DAY
                                    239 	.globl _MONTH
                                    240 	.globl _YEAR
                                    241 	.globl _INISSEC
                                    242 	.globl _INISEC
                                    243 	.globl _INIMIN
                                    244 	.globl _INIHOUR
                                    245 	.globl _INIDAY
                                    246 	.globl _INIMONTH
                                    247 	.globl _INIYEAR
                                    248 	.globl _ALASSEC
                                    249 	.globl _ALASEC
                                    250 	.globl _ALAMIN
                                    251 	.globl _ALAHOUR
                                    252 	.globl _RTCIF
                                    253 	.globl _RTCIEN
                                    254 	.globl _RTCCFG
                                    255 	.globl _RTCCR
                                    256 	.globl _PWMB_OISR
                                    257 	.globl _PWMB_DTR
                                    258 	.globl _PWMB_BKR
                                    259 	.globl _PWMB_CCR4L
                                    260 	.globl _PWMB_CCR4H
                                    261 	.globl _PWMB_CCR3L
                                    262 	.globl _PWMB_CCR3H
                                    263 	.globl _PWMB_CCR2L
                                    264 	.globl _PWMB_CCR2H
                                    265 	.globl _PWMB_CCR1L
                                    266 	.globl _PWMB_CCR1H
                                    267 	.globl _PWMB_RCR
                                    268 	.globl _PWMB_ARRL
                                    269 	.globl _PWMB_ARRH
                                    270 	.globl _PWMB_PSCRL
                                    271 	.globl _PWMB_PSCRH
                                    272 	.globl _PWMB_CNTRL
                                    273 	.globl _PWMB_CNTRH
                                    274 	.globl _PWMB_CCER2
                                    275 	.globl _PWMB_CCER1
                                    276 	.globl _PWMB_CCMR4
                                    277 	.globl _PWMB_CCMR3
                                    278 	.globl _PWMB_CCMR2
                                    279 	.globl _PWMB_CCMR1
                                    280 	.globl _PWMB_EGR
                                    281 	.globl _PWMB_SR2
                                    282 	.globl _PWMB_SR1
                                    283 	.globl _PWMB_IER
                                    284 	.globl _PWMB_ETR
                                    285 	.globl _PWMB_SMCR
                                    286 	.globl _PWMB_CR2
                                    287 	.globl _PWMB_CR1
                                    288 	.globl _PWMA_OISR
                                    289 	.globl _PWMA_DTR
                                    290 	.globl _PWMA_BKR
                                    291 	.globl _PWMA_CCR4L
                                    292 	.globl _PWMA_CCR4H
                                    293 	.globl _PWMA_CCR3L
                                    294 	.globl _PWMA_CCR3H
                                    295 	.globl _PWMA_CCR2L
                                    296 	.globl _PWMA_CCR2H
                                    297 	.globl _PWMA_CCR1L
                                    298 	.globl _PWMA_CCR1H
                                    299 	.globl _PWMA_RCR
                                    300 	.globl _PWMA_ARRL
                                    301 	.globl _PWMA_ARRH
                                    302 	.globl _PWMA_PSCRL
                                    303 	.globl _PWMA_PSCRH
                                    304 	.globl _PWMA_CNTRL
                                    305 	.globl _PWMA_CNTRH
                                    306 	.globl _PWMA_CCER2
                                    307 	.globl _PWMA_CCER1
                                    308 	.globl _PWMA_CCMR4
                                    309 	.globl _PWMA_CCMR3
                                    310 	.globl _PWMA_CCMR2
                                    311 	.globl _PWMA_CCMR1
                                    312 	.globl _PWMA_EGR
                                    313 	.globl _PWMA_SR2
                                    314 	.globl _PWMA_SR1
                                    315 	.globl _PWMA_IER
                                    316 	.globl _PWMA_ETR
                                    317 	.globl _PWMA_SMCR
                                    318 	.globl _PWMA_CR2
                                    319 	.globl _PWMA_CR1
                                    320 	.globl _PWMB_IOAUX
                                    321 	.globl _PWMB_PS
                                    322 	.globl _PWMB_ENO
                                    323 	.globl _PWMB_ETRPS
                                    324 	.globl _PWMA_IOAUX
                                    325 	.globl _PWMA_PS
                                    326 	.globl _PWMA_ENO
                                    327 	.globl _PWMA_ETRPS
                                    328 	.globl _RSTFLAG
                                    329 	.globl _SPFUNC
                                    330 	.globl _OPCON
                                    331 	.globl _ARCON
                                    332 	.globl _MD4
                                    333 	.globl _MD5
                                    334 	.globl _MD0
                                    335 	.globl _MD1
                                    336 	.globl _MD2
                                    337 	.globl _MD3
                                    338 	.globl _DMA_LCM_RXAL
                                    339 	.globl _DMA_LCM_RXAH
                                    340 	.globl _DMA_LCM_TXAL
                                    341 	.globl _DMA_LCM_TXAH
                                    342 	.globl _DMA_LCM_DONE
                                    343 	.globl _DMA_LCM_AMT
                                    344 	.globl _DMA_LCM_STA
                                    345 	.globl _DMA_LCM_CR
                                    346 	.globl _DMA_LCM_CFG
                                    347 	.globl _LCMIDDAT
                                    348 	.globl _LCMIDDATH
                                    349 	.globl _LCMIDDATL
                                    350 	.globl _LCMSTA
                                    351 	.globl _LCMCR
                                    352 	.globl _LCMCFG2
                                    353 	.globl _LCMCFG
                                    354 	.globl _I2CMSAUX
                                    355 	.globl _I2CRXD
                                    356 	.globl _I2CTXD
                                    357 	.globl _I2CSLADR
                                    358 	.globl _I2CSLST
                                    359 	.globl _I2CSLCR
                                    360 	.globl _I2CMSST
                                    361 	.globl _I2CMSCR
                                    362 	.globl _I2CCFG
                                    363 	.globl _PINIPH
                                    364 	.globl _PINIPL
                                    365 	.globl _P5IE
                                    366 	.globl _P5DR
                                    367 	.globl _P5SR
                                    368 	.globl _P5NCS
                                    369 	.globl _P5PU
                                    370 	.globl _P5WKUE
                                    371 	.globl _P5IM1
                                    372 	.globl _P5IM0
                                    373 	.globl _P5INTF
                                    374 	.globl _P5INTE
                                    375 	.globl _P3IE
                                    376 	.globl _P3DR
                                    377 	.globl _P3SR
                                    378 	.globl _P3NCS
                                    379 	.globl _P3PU
                                    380 	.globl _P3WKUE
                                    381 	.globl _P3IM1
                                    382 	.globl _P3IM0
                                    383 	.globl _P3INTF
                                    384 	.globl _P3INTE
                                    385 	.globl _P2IE
                                    386 	.globl _P2DR
                                    387 	.globl _P2SR
                                    388 	.globl _P2NCS
                                    389 	.globl _P2PU
                                    390 	.globl _P2WKUE
                                    391 	.globl _P2IM1
                                    392 	.globl _P2IM0
                                    393 	.globl _P2INTF
                                    394 	.globl _P2INTE
                                    395 	.globl _P1IE
                                    396 	.globl _P1DR
                                    397 	.globl _P1SR
                                    398 	.globl _P1NCS
                                    399 	.globl _P1PU
                                    400 	.globl _P1WKUE
                                    401 	.globl _P1IM1
                                    402 	.globl _P1IM0
                                    403 	.globl _P1INTF
                                    404 	.globl _P1INTE
                                    405 	.globl _DMA_M2M_RXAL
                                    406 	.globl _DMA_M2M_RXAH
                                    407 	.globl _DMA_M2M_TXAL
                                    408 	.globl _DMA_M2M_TXAH
                                    409 	.globl _DMA_M2M_DONE
                                    410 	.globl _DMA_M2M_AMT
                                    411 	.globl _DMA_M2M_STA
                                    412 	.globl _DMA_M2M_CR
                                    413 	.globl _DMA_M2M_CFG
                                    414 	.globl _CMPEXCFG
                                    415 	.globl _DMA_ADC_CHSW1
                                    416 	.globl _DMA_ADC_CHSW0
                                    417 	.globl _DMA_ADC_CFG2
                                    418 	.globl _DMA_ADC_RXAL
                                    419 	.globl _DMA_ADC_RXAH
                                    420 	.globl _DMA_ADC_STA
                                    421 	.globl _DMA_ADC_CR
                                    422 	.globl _DMA_ADC_CFG
                                    423 	.globl _ADCEXCFG
                                    424 	.globl _ADCTIM
                                    425 	.globl _gpioConfigure
                                    426 	.globl _gpioRead
                                    427 	.globl _gpioWrite
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
      000012                        592 _gpioConfigure_sloc0_1_0:
      000012                        593 	.ds 3
      000015                        594 _gpioConfigure_sloc1_1_0:
      000015                        595 	.ds 3
      000018                        596 _gpioConfigure_sloc2_1_0:
      000018                        597 	.ds 3
      00001B                        598 _gpioConfigure_sloc3_1_0:
      00001B                        599 	.ds 1
      00001C                        600 _gpioConfigure_sloc4_1_0:
      00001C                        601 	.ds 3
                                    602 ;--------------------------------------------------------
                                    603 ; overlayable items in internal ram 
                                    604 ;--------------------------------------------------------
                                    605 ;--------------------------------------------------------
                                    606 ; indirectly addressable internal ram data
                                    607 ;--------------------------------------------------------
                                    608 	.area ISEG    (DATA)
                                    609 ;--------------------------------------------------------
                                    610 ; absolute internal ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area IABS    (ABS,DATA)
                                    613 	.area IABS    (ABS,DATA)
                                    614 ;--------------------------------------------------------
                                    615 ; bit data
                                    616 ;--------------------------------------------------------
                                    617 	.area BSEG    (BIT)
                                    618 ;--------------------------------------------------------
                                    619 ; paged external ram data
                                    620 ;--------------------------------------------------------
                                    621 	.area PSEG    (PAG,XDATA)
                                    622 ;--------------------------------------------------------
                                    623 ; external ram data
                                    624 ;--------------------------------------------------------
                                    625 	.area XSEG    (XDATA)
                           00FEA8   626 _ADCTIM	=	0xfea8
                           00FEAD   627 _ADCEXCFG	=	0xfead
                           00FA10   628 _DMA_ADC_CFG	=	0xfa10
                           00FA11   629 _DMA_ADC_CR	=	0xfa11
                           00FA12   630 _DMA_ADC_STA	=	0xfa12
                           00FA17   631 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   632 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   633 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   634 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   635 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   636 _CMPEXCFG	=	0xfeae
                           00FA00   637 _DMA_M2M_CFG	=	0xfa00
                           00FA01   638 _DMA_M2M_CR	=	0xfa01
                           00FA02   639 _DMA_M2M_STA	=	0xfa02
                           00FA03   640 _DMA_M2M_AMT	=	0xfa03
                           00FA04   641 _DMA_M2M_DONE	=	0xfa04
                           00FA05   642 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   643 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   644 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   645 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   646 _P1INTE	=	0xfd01
                           00FD11   647 _P1INTF	=	0xfd11
                           00FD21   648 _P1IM0	=	0xfd21
                           00FD31   649 _P1IM1	=	0xfd31
                           00FD41   650 _P1WKUE	=	0xfd41
                           00FE11   651 _P1PU	=	0xfe11
                           00FE19   652 _P1NCS	=	0xfe19
                           00FE21   653 _P1SR	=	0xfe21
                           00FE29   654 _P1DR	=	0xfe29
                           00FE31   655 _P1IE	=	0xfe31
                           00FD02   656 _P2INTE	=	0xfd02
                           00FD12   657 _P2INTF	=	0xfd12
                           00FD22   658 _P2IM0	=	0xfd22
                           00FD32   659 _P2IM1	=	0xfd32
                           00FD42   660 _P2WKUE	=	0xfd42
                           00FE12   661 _P2PU	=	0xfe12
                           00FE1A   662 _P2NCS	=	0xfe1a
                           00FE22   663 _P2SR	=	0xfe22
                           00FE2A   664 _P2DR	=	0xfe2a
                           00FE32   665 _P2IE	=	0xfe32
                           00FD03   666 _P3INTE	=	0xfd03
                           00FD13   667 _P3INTF	=	0xfd13
                           00FD23   668 _P3IM0	=	0xfd23
                           00FD33   669 _P3IM1	=	0xfd33
                           00FD43   670 _P3WKUE	=	0xfd43
                           00FE13   671 _P3PU	=	0xfe13
                           00FE1B   672 _P3NCS	=	0xfe1b
                           00FE23   673 _P3SR	=	0xfe23
                           00FE2B   674 _P3DR	=	0xfe2b
                           00FE33   675 _P3IE	=	0xfe33
                           00FD05   676 _P5INTE	=	0xfd05
                           00FD15   677 _P5INTF	=	0xfd15
                           00FD25   678 _P5IM0	=	0xfd25
                           00FD35   679 _P5IM1	=	0xfd35
                           00FD45   680 _P5WKUE	=	0xfd45
                           00FE15   681 _P5PU	=	0xfe15
                           00FE1D   682 _P5NCS	=	0xfe1d
                           00FE25   683 _P5SR	=	0xfe25
                           00FE2D   684 _P5DR	=	0xfe2d
                           00FE35   685 _P5IE	=	0xfe35
                           00FD60   686 _PINIPL	=	0xfd60
                           00FD61   687 _PINIPH	=	0xfd61
                           00FE80   688 _I2CCFG	=	0xfe80
                           00FE81   689 _I2CMSCR	=	0xfe81
                           00FE82   690 _I2CMSST	=	0xfe82
                           00FE83   691 _I2CSLCR	=	0xfe83
                           00FE84   692 _I2CSLST	=	0xfe84
                           00FE85   693 _I2CSLADR	=	0xfe85
                           00FE86   694 _I2CTXD	=	0xfe86
                           00FE87   695 _I2CRXD	=	0xfe87
                           00FE88   696 _I2CMSAUX	=	0xfe88
                           00FE50   697 _LCMCFG	=	0xfe50
                           00FE51   698 _LCMCFG2	=	0xfe51
                           00FE52   699 _LCMCR	=	0xfe52
                           00FE53   700 _LCMSTA	=	0xfe53
                           00FE54   701 _LCMIDDATL	=	0xfe54
                           00FE55   702 _LCMIDDATH	=	0xfe55
                           00FE54   703 _LCMIDDAT	=	0xfe54
                           00FA70   704 _DMA_LCM_CFG	=	0xfa70
                           00FA71   705 _DMA_LCM_CR	=	0xfa71
                           00FA72   706 _DMA_LCM_STA	=	0xfa72
                           00FA73   707 _DMA_LCM_AMT	=	0xfa73
                           00FA74   708 _DMA_LCM_DONE	=	0xfa74
                           00FA75   709 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   710 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   711 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   712 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   713 _MD3	=	0xfcf0
                           00FCF1   714 _MD2	=	0xfcf1
                           00FCF2   715 _MD1	=	0xfcf2
                           00FCF3   716 _MD0	=	0xfcf3
                           00FCF4   717 _MD5	=	0xfcf4
                           00FCF5   718 _MD4	=	0xfcf5
                           00FCF6   719 _ARCON	=	0xfcf6
                           00FCF7   720 _OPCON	=	0xfcf7
                           00FE08   721 _SPFUNC	=	0xfe08
                           00FE09   722 _RSTFLAG	=	0xfe09
                           00FEB0   723 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   724 _PWMA_ENO	=	0xfeb1
                           00FEB2   725 _PWMA_PS	=	0xfeb2
                           00FEB3   726 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   727 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   728 _PWMB_ENO	=	0xfeb5
                           00FEB6   729 _PWMB_PS	=	0xfeb6
                           00FEB7   730 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   731 _PWMA_CR1	=	0xfec0
                           00FEC1   732 _PWMA_CR2	=	0xfec1
                           00FEC2   733 _PWMA_SMCR	=	0xfec2
                           00FEC3   734 _PWMA_ETR	=	0xfec3
                           00FEC4   735 _PWMA_IER	=	0xfec4
                           00FEC5   736 _PWMA_SR1	=	0xfec5
                           00FEC6   737 _PWMA_SR2	=	0xfec6
                           00FEC7   738 _PWMA_EGR	=	0xfec7
                           00FEC8   739 _PWMA_CCMR1	=	0xfec8
                           00FEC9   740 _PWMA_CCMR2	=	0xfec9
                           00FECA   741 _PWMA_CCMR3	=	0xfeca
                           00FECB   742 _PWMA_CCMR4	=	0xfecb
                           00FECC   743 _PWMA_CCER1	=	0xfecc
                           00FECD   744 _PWMA_CCER2	=	0xfecd
                           00FECE   745 _PWMA_CNTRH	=	0xfece
                           00FECF   746 _PWMA_CNTRL	=	0xfecf
                           00FED0   747 _PWMA_PSCRH	=	0xfed0
                           00FED1   748 _PWMA_PSCRL	=	0xfed1
                           00FED2   749 _PWMA_ARRH	=	0xfed2
                           00FED3   750 _PWMA_ARRL	=	0xfed3
                           00FED4   751 _PWMA_RCR	=	0xfed4
                           00FED5   752 _PWMA_CCR1H	=	0xfed5
                           00FED6   753 _PWMA_CCR1L	=	0xfed6
                           00FED7   754 _PWMA_CCR2H	=	0xfed7
                           00FED8   755 _PWMA_CCR2L	=	0xfed8
                           00FED9   756 _PWMA_CCR3H	=	0xfed9
                           00FEDA   757 _PWMA_CCR3L	=	0xfeda
                           00FEDB   758 _PWMA_CCR4H	=	0xfedb
                           00FEDC   759 _PWMA_CCR4L	=	0xfedc
                           00FEDD   760 _PWMA_BKR	=	0xfedd
                           00FEDE   761 _PWMA_DTR	=	0xfede
                           00FEDF   762 _PWMA_OISR	=	0xfedf
                           00FEE0   763 _PWMB_CR1	=	0xfee0
                           00FEE1   764 _PWMB_CR2	=	0xfee1
                           00FEE2   765 _PWMB_SMCR	=	0xfee2
                           00FEE3   766 _PWMB_ETR	=	0xfee3
                           00FEE4   767 _PWMB_IER	=	0xfee4
                           00FEE5   768 _PWMB_SR1	=	0xfee5
                           00FEE6   769 _PWMB_SR2	=	0xfee6
                           00FEE7   770 _PWMB_EGR	=	0xfee7
                           00FEE8   771 _PWMB_CCMR1	=	0xfee8
                           00FEE9   772 _PWMB_CCMR2	=	0xfee9
                           00FEEA   773 _PWMB_CCMR3	=	0xfeea
                           00FEEB   774 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   775 _PWMB_CCER1	=	0xfeec
                           00FEED   776 _PWMB_CCER2	=	0xfeed
                           00FEEE   777 _PWMB_CNTRH	=	0xfeee
                           00FEEF   778 _PWMB_CNTRL	=	0xfeef
                           00FEF0   779 _PWMB_PSCRH	=	0xfef0
                           00FEF1   780 _PWMB_PSCRL	=	0xfef1
                           00FEF2   781 _PWMB_ARRH	=	0xfef2
                           00FEF3   782 _PWMB_ARRL	=	0xfef3
                           00FEF4   783 _PWMB_RCR	=	0xfef4
                           00FEF5   784 _PWMB_CCR1H	=	0xfef5
                           00FEF6   785 _PWMB_CCR1L	=	0xfef6
                           00FEF7   786 _PWMB_CCR2H	=	0xfef7
                           00FEF8   787 _PWMB_CCR2L	=	0xfef8
                           00FEF9   788 _PWMB_CCR3H	=	0xfef9
                           00FEFA   789 _PWMB_CCR3L	=	0xfefa
                           00FEFB   790 _PWMB_CCR4H	=	0xfefb
                           00FEFC   791 _PWMB_CCR4L	=	0xfefc
                           00FEFD   792 _PWMB_BKR	=	0xfefd
                           00FEFE   793 _PWMB_DTR	=	0xfefe
                           00FEFF   794 _PWMB_OISR	=	0xfeff
                           00FE60   795 _RTCCR	=	0xfe60
                           00FE61   796 _RTCCFG	=	0xfe61
                           00FE62   797 _RTCIEN	=	0xfe62
                           00FE63   798 _RTCIF	=	0xfe63
                           00FE64   799 _ALAHOUR	=	0xfe64
                           00FE65   800 _ALAMIN	=	0xfe65
                           00FE66   801 _ALASEC	=	0xfe66
                           00FE67   802 _ALASSEC	=	0xfe67
                           00FE68   803 _INIYEAR	=	0xfe68
                           00FE69   804 _INIMONTH	=	0xfe69
                           00FE6A   805 _INIDAY	=	0xfe6a
                           00FE6B   806 _INIHOUR	=	0xfe6b
                           00FE6C   807 _INIMIN	=	0xfe6c
                           00FE6D   808 _INISEC	=	0xfe6d
                           00FE6E   809 _INISSEC	=	0xfe6e
                           00FE70   810 _YEAR	=	0xfe70
                           00FE71   811 _MONTH	=	0xfe71
                           00FE72   812 _DAY	=	0xfe72
                           00FE73   813 _HOUR	=	0xfe73
                           00FE74   814 _MIN	=	0xfe74
                           00FE75   815 _SEC	=	0xfe75
                           00FE76   816 _SSEC	=	0xfe76
                           00FA20   817 _DMA_SPI_CFG	=	0xfa20
                           00FA21   818 _DMA_SPI_CR	=	0xfa21
                           00FA22   819 _DMA_SPI_STA	=	0xfa22
                           00FA23   820 _DMA_SPI_AMT	=	0xfa23
                           00FA24   821 _DMA_SPI_DONE	=	0xfa24
                           00FA25   822 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   823 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   824 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   825 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   826 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   827 _CLKDIV	=	0xfe01
                           00FE02   828 _HIRCCR	=	0xfe02
                           00FE03   829 _XOSCCR	=	0xfe03
                           00FE04   830 _IRC32KCR	=	0xfe04
                           00FE00   831 _CKSEL	=	0xfe00
                           00FE05   832 _MCLKOCR	=	0xfe05
                           00FE06   833 _IRCDB	=	0xfe06
                           00FE07   834 _IRC48MCR	=	0xfe07
                           00FEA2   835 _TM2PS	=	0xfea2
                           00FEA3   836 _TM3PS	=	0xfea3
                           00FEA4   837 _TM4PS	=	0xfea4
                           00FA30   838 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   839 _DMA_UR1T_CR	=	0xfa31
                           00FA32   840 _DMA_UR1T_STA	=	0xfa32
                           00FA33   841 _DMA_URTX_AMT	=	0xfa33
                           00FA34   842 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   843 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   844 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   845 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   846 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   847 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   848 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   849 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   850 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   851 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   852 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   853 _DMA_UR2T_CR	=	0xfa31
                           00FA32   854 _DMA_UR2T_STA	=	0xfa32
                           00FA33   855 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   856 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   857 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   858 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   859 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   860 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   861 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   862 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   863 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   864 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   865 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   866 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   867 _DMA_UR3T_CR	=	0xfa31
                           00FA32   868 _DMA_UR3T_STA	=	0xfa32
                           00FA33   869 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   870 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   871 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   872 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   873 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   874 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   875 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   876 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   877 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   878 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   879 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   880 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   881 _DMA_UR4T_CR	=	0xfa31
                           00FA32   882 _DMA_UR4T_STA	=	0xfa32
                           00FA33   883 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   884 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   885 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   886 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   887 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   888 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   889 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   890 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   891 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   892 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   893 _DMA_UR4R_TXAL	=	0xfa3e
      0000B4                        894 _uartGetCharacter_result_65536_69:
      0000B4                        895 	.ds 1
      0000B5                        896 ___gpio_setBits_PARM_2:
      0000B5                        897 	.ds 1
      0000B6                        898 ___gpio_setBits_PARM_3:
      0000B6                        899 	.ds 3
      0000B9                        900 ___gpio_setBits_portValue_65536_148:
      0000B9                        901 	.ds 1
      0000BA                        902 ___isOutput_gpioConfig_65536_150:
      0000BA                        903 	.ds 3
      0000BD                        904 ___isInput_gpioConfig_65536_152:
      0000BD                        905 	.ds 3
      0000C0                        906 _gpioConfigure_gpioConfig_65536_154:
      0000C0                        907 	.ds 3
      0000C3                        908 _gpioConfigure_mask_65536_155:
      0000C3                        909 	.ds 1
      0000C4                        910 _gpioConfigure_pm1_65537_158:
      0000C4                        911 	.ds 1
      0000C5                        912 _gpioConfigure_pm0_65537_158:
      0000C5                        913 	.ds 1
      0000C6                        914 _gpioConfigure_pncs_65537_158:
      0000C6                        915 	.ds 1
      0000C7                        916 _gpioConfigure_ppu_65537_158:
      0000C7                        917 	.ds 1
      0000C8                        918 _gpioConfigure_pdr_65537_158:
      0000C8                        919 	.ds 1
      0000C9                        920 _gpioConfigure_psr_65537_158:
      0000C9                        921 	.ds 1
      0000CA                        922 _gpioConfigure_pie_65537_158:
      0000CA                        923 	.ds 1
      0000CB                        924 _gpioConfigure_pim1_65537_158:
      0000CB                        925 	.ds 1
      0000CC                        926 _gpioConfigure_pim0_65537_158:
      0000CC                        927 	.ds 1
      0000CD                        928 _gpioConfigure_pintf_65537_158:
      0000CD                        929 	.ds 1
      0000CE                        930 _gpioConfigure_pinte_65537_158:
      0000CE                        931 	.ds 1
      0000CF                        932 _gpioConfigure_pwkue_65537_158:
      0000CF                        933 	.ds 1
      0000D0                        934 ___getPort_port_65536_163:
      0000D0                        935 	.ds 1
      0000D1                        936 ___getPort_value_65536_164:
      0000D1                        937 	.ds 1
      0000D2                        938 _gpioRead_gpioConfig_65536_166:
      0000D2                        939 	.ds 3
      0000D5                        940 _gpioWrite_PARM_2:
      0000D5                        941 	.ds 1
      0000D6                        942 _gpioWrite_gpioConfig_65536_168:
      0000D6                        943 	.ds 3
                                    944 ;--------------------------------------------------------
                                    945 ; absolute external ram data
                                    946 ;--------------------------------------------------------
                                    947 	.area XABS    (ABS,XDATA)
                                    948 ;--------------------------------------------------------
                                    949 ; external initialized ram data
                                    950 ;--------------------------------------------------------
                                    951 	.area XISEG   (XDATA)
                                    952 	.area HOME    (CODE)
                                    953 	.area GSINIT0 (CODE)
                                    954 	.area GSINIT1 (CODE)
                                    955 	.area GSINIT2 (CODE)
                                    956 	.area GSINIT3 (CODE)
                                    957 	.area GSINIT4 (CODE)
                                    958 	.area GSINIT5 (CODE)
                                    959 	.area GSINIT  (CODE)
                                    960 	.area GSFINAL (CODE)
                                    961 	.area CSEG    (CODE)
                                    962 ;--------------------------------------------------------
                                    963 ; global & static initialisations
                                    964 ;--------------------------------------------------------
                                    965 	.area HOME    (CODE)
                                    966 	.area GSINIT  (CODE)
                                    967 	.area GSFINAL (CODE)
                                    968 	.area GSINIT  (CODE)
                                    969 ;--------------------------------------------------------
                                    970 ; Home
                                    971 ;--------------------------------------------------------
                                    972 	.area HOME    (CODE)
                                    973 	.area HOME    (CODE)
                                    974 ;--------------------------------------------------------
                                    975 ; code
                                    976 ;--------------------------------------------------------
                                    977 	.area CSEG    (CODE)
                                    978 ;------------------------------------------------------------
                                    979 ;Allocation info for local variables in function '__gpio_setBits'
                                    980 ;------------------------------------------------------------
                                    981 ;cfgValue                  Allocated with name '___gpio_setBits_PARM_2'
                                    982 ;gpioConfig                Allocated with name '___gpio_setBits_PARM_3'
                                    983 ;portValue                 Allocated with name '___gpio_setBits_portValue_65536_148'
                                    984 ;------------------------------------------------------------
                                    985 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:39: static uint8_t __gpio_setBits(uint8_t portValue, uint8_t cfgValue, GpioConfig *gpioConfig) {
                                    986 ;	-----------------------------------------
                                    987 ;	 function __gpio_setBits
                                    988 ;	-----------------------------------------
      001772                        989 ___gpio_setBits:
                           000007   990 	ar7 = 0x07
                           000006   991 	ar6 = 0x06
                           000005   992 	ar5 = 0x05
                           000004   993 	ar4 = 0x04
                           000003   994 	ar3 = 0x03
                           000002   995 	ar2 = 0x02
                           000001   996 	ar1 = 0x01
                           000000   997 	ar0 = 0x00
      001772 E5 82            [12]  998 	mov	a,dpl
      001774 90 00 B9         [24]  999 	mov	dptr,#___gpio_setBits_portValue_65536_148
      001777 F0               [24] 1000 	movx	@dptr,a
                                   1001 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:40: return cfgValue ? (portValue | gpioConfig->__setMask) : (portValue & gpioConfig->__clearMask);
      001778 90 00 B5         [24] 1002 	mov	dptr,#___gpio_setBits_PARM_2
      00177B E0               [24] 1003 	movx	a,@dptr
      00177C 60 24            [24] 1004 	jz	00103$
      00177E 90 00 B6         [24] 1005 	mov	dptr,#___gpio_setBits_PARM_3
      001781 E0               [24] 1006 	movx	a,@dptr
      001782 FD               [12] 1007 	mov	r5,a
      001783 A3               [24] 1008 	inc	dptr
      001784 E0               [24] 1009 	movx	a,@dptr
      001785 FE               [12] 1010 	mov	r6,a
      001786 A3               [24] 1011 	inc	dptr
      001787 E0               [24] 1012 	movx	a,@dptr
      001788 FF               [12] 1013 	mov	r7,a
      001789 74 0B            [12] 1014 	mov	a,#0x0b
      00178B 2D               [12] 1015 	add	a,r5
      00178C FD               [12] 1016 	mov	r5,a
      00178D E4               [12] 1017 	clr	a
      00178E 3E               [12] 1018 	addc	a,r6
      00178F FE               [12] 1019 	mov	r6,a
      001790 8D 82            [24] 1020 	mov	dpl,r5
      001792 8E 83            [24] 1021 	mov	dph,r6
      001794 8F F0            [24] 1022 	mov	b,r7
      001796 12 58 3E         [24] 1023 	lcall	__gptrget
      001799 FD               [12] 1024 	mov	r5,a
      00179A 90 00 B9         [24] 1025 	mov	dptr,#___gpio_setBits_portValue_65536_148
      00179D E0               [24] 1026 	movx	a,@dptr
      00179E 4D               [12] 1027 	orl	a,r5
      00179F FF               [12] 1028 	mov	r7,a
      0017A0 80 22            [24] 1029 	sjmp	00104$
      0017A2                       1030 00103$:
      0017A2 90 00 B6         [24] 1031 	mov	dptr,#___gpio_setBits_PARM_3
      0017A5 E0               [24] 1032 	movx	a,@dptr
      0017A6 FC               [12] 1033 	mov	r4,a
      0017A7 A3               [24] 1034 	inc	dptr
      0017A8 E0               [24] 1035 	movx	a,@dptr
      0017A9 FD               [12] 1036 	mov	r5,a
      0017AA A3               [24] 1037 	inc	dptr
      0017AB E0               [24] 1038 	movx	a,@dptr
      0017AC FE               [12] 1039 	mov	r6,a
      0017AD 74 0C            [12] 1040 	mov	a,#0x0c
      0017AF 2C               [12] 1041 	add	a,r4
      0017B0 FC               [12] 1042 	mov	r4,a
      0017B1 E4               [12] 1043 	clr	a
      0017B2 3D               [12] 1044 	addc	a,r5
      0017B3 FD               [12] 1045 	mov	r5,a
      0017B4 8C 82            [24] 1046 	mov	dpl,r4
      0017B6 8D 83            [24] 1047 	mov	dph,r5
      0017B8 8E F0            [24] 1048 	mov	b,r6
      0017BA 12 58 3E         [24] 1049 	lcall	__gptrget
      0017BD FC               [12] 1050 	mov	r4,a
      0017BE 90 00 B9         [24] 1051 	mov	dptr,#___gpio_setBits_portValue_65536_148
      0017C1 E0               [24] 1052 	movx	a,@dptr
      0017C2 5C               [12] 1053 	anl	a,r4
      0017C3 FF               [12] 1054 	mov	r7,a
      0017C4                       1055 00104$:
      0017C4 8F 82            [24] 1056 	mov	dpl,r7
                                   1057 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:41: }
      0017C6 22               [24] 1058 	ret
                                   1059 ;------------------------------------------------------------
                                   1060 ;Allocation info for local variables in function '__isOutput'
                                   1061 ;------------------------------------------------------------
                                   1062 ;gpioConfig                Allocated with name '___isOutput_gpioConfig_65536_150'
                                   1063 ;------------------------------------------------------------
                                   1064 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:43: static uint8_t __isOutput(GpioConfig *gpioConfig) {
                                   1065 ;	-----------------------------------------
                                   1066 ;	 function __isOutput
                                   1067 ;	-----------------------------------------
      0017C7                       1068 ___isOutput:
      0017C7 AF F0            [24] 1069 	mov	r7,b
      0017C9 AE 83            [24] 1070 	mov	r6,dph
      0017CB E5 82            [12] 1071 	mov	a,dpl
      0017CD 90 00 BA         [24] 1072 	mov	dptr,#___isOutput_gpioConfig_65536_150
      0017D0 F0               [24] 1073 	movx	@dptr,a
      0017D1 EE               [12] 1074 	mov	a,r6
      0017D2 A3               [24] 1075 	inc	dptr
      0017D3 F0               [24] 1076 	movx	@dptr,a
      0017D4 EF               [12] 1077 	mov	a,r7
      0017D5 A3               [24] 1078 	inc	dptr
      0017D6 F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:44: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_PUSH_PULL_MODE || gpioConfig->pinMode == GPIO_OPEN_DRAIN_MODE;
      0017D7 90 00 BA         [24] 1081 	mov	dptr,#___isOutput_gpioConfig_65536_150
      0017DA E0               [24] 1082 	movx	a,@dptr
      0017DB FD               [12] 1083 	mov	r5,a
      0017DC A3               [24] 1084 	inc	dptr
      0017DD E0               [24] 1085 	movx	a,@dptr
      0017DE FE               [12] 1086 	mov	r6,a
      0017DF A3               [24] 1087 	inc	dptr
      0017E0 E0               [24] 1088 	movx	a,@dptr
      0017E1 FF               [12] 1089 	mov	r7,a
      0017E2 74 03            [12] 1090 	mov	a,#0x03
      0017E4 2D               [12] 1091 	add	a,r5
      0017E5 FD               [12] 1092 	mov	r5,a
      0017E6 E4               [12] 1093 	clr	a
      0017E7 3E               [12] 1094 	addc	a,r6
      0017E8 FE               [12] 1095 	mov	r6,a
      0017E9 8D 82            [24] 1096 	mov	dpl,r5
      0017EB 8E 83            [24] 1097 	mov	dph,r6
      0017ED 8F F0            [24] 1098 	mov	b,r7
      0017EF 12 58 3E         [24] 1099 	lcall	__gptrget
      0017F2 FF               [12] 1100 	mov	r7,a
      0017F3 60 0E            [24] 1101 	jz	00104$
      0017F5 BF 01 02         [24] 1102 	cjne	r7,#0x01,00122$
      0017F8 80 09            [24] 1103 	sjmp	00104$
      0017FA                       1104 00122$:
      0017FA BF 03 02         [24] 1105 	cjne	r7,#0x03,00123$
      0017FD 80 04            [24] 1106 	sjmp	00104$
      0017FF                       1107 00123$:
      0017FF 7F 00            [12] 1108 	mov	r7,#0x00
      001801 80 02            [24] 1109 	sjmp	00105$
      001803                       1110 00104$:
      001803 7F 01            [12] 1111 	mov	r7,#0x01
      001805                       1112 00105$:
      001805 8F 82            [24] 1113 	mov	dpl,r7
                                   1114 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:45: }
      001807 22               [24] 1115 	ret
                                   1116 ;------------------------------------------------------------
                                   1117 ;Allocation info for local variables in function '__isInput'
                                   1118 ;------------------------------------------------------------
                                   1119 ;gpioConfig                Allocated with name '___isInput_gpioConfig_65536_152'
                                   1120 ;------------------------------------------------------------
                                   1121 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:47: static uint8_t __isInput(GpioConfig *gpioConfig) {
                                   1122 ;	-----------------------------------------
                                   1123 ;	 function __isInput
                                   1124 ;	-----------------------------------------
      001808                       1125 ___isInput:
      001808 AF F0            [24] 1126 	mov	r7,b
      00180A AE 83            [24] 1127 	mov	r6,dph
      00180C E5 82            [12] 1128 	mov	a,dpl
      00180E 90 00 BD         [24] 1129 	mov	dptr,#___isInput_gpioConfig_65536_152
      001811 F0               [24] 1130 	movx	@dptr,a
      001812 EE               [12] 1131 	mov	a,r6
      001813 A3               [24] 1132 	inc	dptr
      001814 F0               [24] 1133 	movx	@dptr,a
      001815 EF               [12] 1134 	mov	a,r7
      001816 A3               [24] 1135 	inc	dptr
      001817 F0               [24] 1136 	movx	@dptr,a
                                   1137 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:48: return gpioConfig->pinMode == GPIO_BIDIRECTIONAL_MODE || gpioConfig->pinMode == GPIO_HIGH_IMPEDANCE_MODE;
      001818 90 00 BD         [24] 1138 	mov	dptr,#___isInput_gpioConfig_65536_152
      00181B E0               [24] 1139 	movx	a,@dptr
      00181C FD               [12] 1140 	mov	r5,a
      00181D A3               [24] 1141 	inc	dptr
      00181E E0               [24] 1142 	movx	a,@dptr
      00181F FE               [12] 1143 	mov	r6,a
      001820 A3               [24] 1144 	inc	dptr
      001821 E0               [24] 1145 	movx	a,@dptr
      001822 FF               [12] 1146 	mov	r7,a
      001823 74 03            [12] 1147 	mov	a,#0x03
      001825 2D               [12] 1148 	add	a,r5
      001826 FD               [12] 1149 	mov	r5,a
      001827 E4               [12] 1150 	clr	a
      001828 3E               [12] 1151 	addc	a,r6
      001829 FE               [12] 1152 	mov	r6,a
      00182A 8D 82            [24] 1153 	mov	dpl,r5
      00182C 8E 83            [24] 1154 	mov	dph,r6
      00182E 8F F0            [24] 1155 	mov	b,r7
      001830 12 58 3E         [24] 1156 	lcall	__gptrget
      001833 FF               [12] 1157 	mov	r7,a
      001834 60 09            [24] 1158 	jz	00104$
      001836 BF 02 02         [24] 1159 	cjne	r7,#0x02,00115$
      001839 80 04            [24] 1160 	sjmp	00104$
      00183B                       1161 00115$:
      00183B 7F 00            [12] 1162 	mov	r7,#0x00
      00183D 80 02            [24] 1163 	sjmp	00105$
      00183F                       1164 00104$:
      00183F 7F 01            [12] 1165 	mov	r7,#0x01
      001841                       1166 00105$:
      001841 8F 82            [24] 1167 	mov	dpl,r7
                                   1168 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:49: }
      001843 22               [24] 1169 	ret
                                   1170 ;------------------------------------------------------------
                                   1171 ;Allocation info for local variables in function 'gpioConfigure'
                                   1172 ;------------------------------------------------------------
                                   1173 ;sloc0                     Allocated with name '_gpioConfigure_sloc0_1_0'
                                   1174 ;sloc1                     Allocated with name '_gpioConfigure_sloc1_1_0'
                                   1175 ;sloc2                     Allocated with name '_gpioConfigure_sloc2_1_0'
                                   1176 ;sloc3                     Allocated with name '_gpioConfigure_sloc3_1_0'
                                   1177 ;sloc4                     Allocated with name '_gpioConfigure_sloc4_1_0'
                                   1178 ;gpioConfig                Allocated with name '_gpioConfigure_gpioConfig_65536_154'
                                   1179 ;mask                      Allocated with name '_gpioConfigure_mask_65536_155'
                                   1180 ;n                         Allocated with name '_gpioConfigure_n_131072_156'
                                   1181 ;pm1                       Allocated with name '_gpioConfigure_pm1_65537_158'
                                   1182 ;pm0                       Allocated with name '_gpioConfigure_pm0_65537_158'
                                   1183 ;pncs                      Allocated with name '_gpioConfigure_pncs_65537_158'
                                   1184 ;ppu                       Allocated with name '_gpioConfigure_ppu_65537_158'
                                   1185 ;pdr                       Allocated with name '_gpioConfigure_pdr_65537_158'
                                   1186 ;psr                       Allocated with name '_gpioConfigure_psr_65537_158'
                                   1187 ;pie                       Allocated with name '_gpioConfigure_pie_65537_158'
                                   1188 ;pim1                      Allocated with name '_gpioConfigure_pim1_65537_158'
                                   1189 ;pim0                      Allocated with name '_gpioConfigure_pim0_65537_158'
                                   1190 ;pintf                     Allocated with name '_gpioConfigure_pintf_65537_158'
                                   1191 ;pinte                     Allocated with name '_gpioConfigure_pinte_65537_158'
                                   1192 ;pwkue                     Allocated with name '_gpioConfigure_pwkue_65537_158'
                                   1193 ;------------------------------------------------------------
                                   1194 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:51: void gpioConfigure(GpioConfig *gpioConfig) {
                                   1195 ;	-----------------------------------------
                                   1196 ;	 function gpioConfigure
                                   1197 ;	-----------------------------------------
      001844                       1198 _gpioConfigure:
      001844 AF F0            [24] 1199 	mov	r7,b
      001846 AE 83            [24] 1200 	mov	r6,dph
      001848 E5 82            [12] 1201 	mov	a,dpl
      00184A 90 00 C0         [24] 1202 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      00184D F0               [24] 1203 	movx	@dptr,a
      00184E EE               [12] 1204 	mov	a,r6
      00184F A3               [24] 1205 	inc	dptr
      001850 F0               [24] 1206 	movx	@dptr,a
      001851 EF               [12] 1207 	mov	a,r7
      001852 A3               [24] 1208 	inc	dptr
      001853 F0               [24] 1209 	movx	@dptr,a
                                   1210 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:53: uint8_t mask = 0;
      001854 90 00 C3         [24] 1211 	mov	dptr,#_gpioConfigure_mask_65536_155
      001857 E4               [12] 1212 	clr	a
      001858 F0               [24] 1213 	movx	@dptr,a
                                   1214 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      001859 90 00 C0         [24] 1215 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      00185C E0               [24] 1216 	movx	a,@dptr
      00185D FD               [12] 1217 	mov	r5,a
      00185E A3               [24] 1218 	inc	dptr
      00185F E0               [24] 1219 	movx	a,@dptr
      001860 FE               [12] 1220 	mov	r6,a
      001861 A3               [24] 1221 	inc	dptr
      001862 E0               [24] 1222 	movx	a,@dptr
      001863 FF               [12] 1223 	mov	r7,a
      001864 74 02            [12] 1224 	mov	a,#0x02
      001866 2D               [12] 1225 	add	a,r5
      001867 FA               [12] 1226 	mov	r2,a
      001868 E4               [12] 1227 	clr	a
      001869 3E               [12] 1228 	addc	a,r6
      00186A FB               [12] 1229 	mov	r3,a
      00186B 8F 04            [24] 1230 	mov	ar4,r7
      00186D 8A 82            [24] 1231 	mov	dpl,r2
      00186F 8B 83            [24] 1232 	mov	dph,r3
      001871 8C F0            [24] 1233 	mov	b,r4
      001873 12 58 3E         [24] 1234 	lcall	__gptrget
      001876 FC               [12] 1235 	mov	r4,a
      001877                       1236 00117$:
      001877 EC               [12] 1237 	mov	a,r4
      001878 60 10            [24] 1238 	jz	00101$
                                   1239 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:56: mask = mask << 1;
      00187A 90 00 C3         [24] 1240 	mov	dptr,#_gpioConfigure_mask_65536_155
      00187D E0               [24] 1241 	movx	a,@dptr
      00187E 25 E0            [12] 1242 	add	a,acc
      001880 FB               [12] 1243 	mov	r3,a
      001881 F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:57: mask |= 1;
      001882 E0               [24] 1246 	movx	a,@dptr
      001883 43 E0 01         [24] 1247 	orl	acc,#0x01
      001886 F0               [24] 1248 	movx	@dptr,a
                                   1249 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:55: for (uint8_t n = gpioConfig->count; n > 0; n--) {
      001887 1C               [12] 1250 	dec	r4
      001888 80 ED            [24] 1251 	sjmp	00117$
      00188A                       1252 00101$:
                                   1253 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:60: gpioConfig->__setMask = mask << gpioConfig->pin;
      00188A 74 0B            [12] 1254 	mov	a,#0x0b
      00188C 2D               [12] 1255 	add	a,r5
      00188D F5 12            [12] 1256 	mov	_gpioConfigure_sloc0_1_0,a
      00188F E4               [12] 1257 	clr	a
      001890 3E               [12] 1258 	addc	a,r6
      001891 F5 13            [12] 1259 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001893 8F 14            [24] 1260 	mov	(_gpioConfigure_sloc0_1_0 + 2),r7
      001895 74 01            [12] 1261 	mov	a,#0x01
      001897 2D               [12] 1262 	add	a,r5
      001898 F8               [12] 1263 	mov	r0,a
      001899 E4               [12] 1264 	clr	a
      00189A 3E               [12] 1265 	addc	a,r6
      00189B F9               [12] 1266 	mov	r1,a
      00189C 8F 04            [24] 1267 	mov	ar4,r7
      00189E 88 82            [24] 1268 	mov	dpl,r0
      0018A0 89 83            [24] 1269 	mov	dph,r1
      0018A2 8C F0            [24] 1270 	mov	b,r4
      0018A4 12 58 3E         [24] 1271 	lcall	__gptrget
      0018A7 F8               [12] 1272 	mov	r0,a
      0018A8 90 00 C3         [24] 1273 	mov	dptr,#_gpioConfigure_mask_65536_155
      0018AB E0               [24] 1274 	movx	a,@dptr
      0018AC 88 F0            [24] 1275 	mov	b,r0
      0018AE 05 F0            [12] 1276 	inc	b
      0018B0 80 02            [24] 1277 	sjmp	00175$
      0018B2                       1278 00173$:
      0018B2 25 E0            [12] 1279 	add	a,acc
      0018B4                       1280 00175$:
      0018B4 D5 F0 FB         [24] 1281 	djnz	b,00173$
      0018B7 F8               [12] 1282 	mov	r0,a
      0018B8 85 12 82         [24] 1283 	mov	dpl,_gpioConfigure_sloc0_1_0
      0018BB 85 13 83         [24] 1284 	mov	dph,(_gpioConfigure_sloc0_1_0 + 1)
      0018BE 85 14 F0         [24] 1285 	mov	b,(_gpioConfigure_sloc0_1_0 + 2)
      0018C1 12 4B FA         [24] 1286 	lcall	__gptrput
                                   1287 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:61: gpioConfig->__clearMask = ~gpioConfig->__setMask;
      0018C4 74 0C            [12] 1288 	mov	a,#0x0c
      0018C6 2D               [12] 1289 	add	a,r5
      0018C7 FA               [12] 1290 	mov	r2,a
      0018C8 E4               [12] 1291 	clr	a
      0018C9 3E               [12] 1292 	addc	a,r6
      0018CA FB               [12] 1293 	mov	r3,a
      0018CB 8F 04            [24] 1294 	mov	ar4,r7
      0018CD E8               [12] 1295 	mov	a,r0
      0018CE F4               [12] 1296 	cpl	a
      0018CF F8               [12] 1297 	mov	r0,a
      0018D0 8A 82            [24] 1298 	mov	dpl,r2
      0018D2 8B 83            [24] 1299 	mov	dph,r3
      0018D4 8C F0            [24] 1300 	mov	b,r4
      0018D6 12 4B FA         [24] 1301 	lcall	__gptrput
                                   1302 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:63: uint8_t pm1 = 0;
      0018D9 90 00 C4         [24] 1303 	mov	dptr,#_gpioConfigure_pm1_65537_158
      0018DC E4               [12] 1304 	clr	a
      0018DD F0               [24] 1305 	movx	@dptr,a
                                   1306 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:64: uint8_t pm0 = 0;
      0018DE 90 00 C5         [24] 1307 	mov	dptr,#_gpioConfigure_pm0_65537_158
      0018E1 F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:67: uint8_t pncs = 0;
      0018E2 90 00 C6         [24] 1310 	mov	dptr,#_gpioConfigure_pncs_65537_158
      0018E5 F0               [24] 1311 	movx	@dptr,a
                                   1312 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:68: uint8_t ppu = 0;
      0018E6 90 00 C7         [24] 1313 	mov	dptr,#_gpioConfigure_ppu_65537_158
      0018E9 F0               [24] 1314 	movx	@dptr,a
                                   1315 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:72: uint8_t pdr = 0;
      0018EA 90 00 C8         [24] 1316 	mov	dptr,#_gpioConfigure_pdr_65537_158
      0018ED F0               [24] 1317 	movx	@dptr,a
                                   1318 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:73: uint8_t psr = 0;
      0018EE 90 00 C9         [24] 1319 	mov	dptr,#_gpioConfigure_psr_65537_158
      0018F1 F0               [24] 1320 	movx	@dptr,a
                                   1321 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:74: uint8_t pie = 0;
      0018F2 90 00 CA         [24] 1322 	mov	dptr,#_gpioConfigure_pie_65537_158
      0018F5 F0               [24] 1323 	movx	@dptr,a
                                   1324 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:78: uint8_t pim1 = 0;
      0018F6 90 00 CB         [24] 1325 	mov	dptr,#_gpioConfigure_pim1_65537_158
      0018F9 F0               [24] 1326 	movx	@dptr,a
                                   1327 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:79: uint8_t pim0 = 0;
      0018FA 90 00 CC         [24] 1328 	mov	dptr,#_gpioConfigure_pim0_65537_158
      0018FD F0               [24] 1329 	movx	@dptr,a
                                   1330 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:80: uint8_t pintf = 0;
      0018FE 90 00 CD         [24] 1331 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001901 F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:81: uint8_t pinte = 0;
      001902 90 00 CE         [24] 1334 	mov	dptr,#_gpioConfigure_pinte_65537_158
      001905 F0               [24] 1335 	movx	@dptr,a
                                   1336 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:82: uint8_t pwkue = 0;
      001906 90 00 CF         [24] 1337 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      001909 F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:85: switch (gpioConfig->port) {
      00190A 8D 82            [24] 1340 	mov	dpl,r5
      00190C 8E 83            [24] 1341 	mov	dph,r6
      00190E 8F F0            [24] 1342 	mov	b,r7
      001910 12 58 3E         [24] 1343 	lcall	__gptrget
      001913 FF               [12] 1344 	mov	r7,a
      001914 BF 01 02         [24] 1345 	cjne	r7,#0x01,00176$
      001917 80 14            [24] 1346 	sjmp	00102$
      001919                       1347 00176$:
      001919 BF 02 02         [24] 1348 	cjne	r7,#0x02,00177$
      00191C 80 6E            [24] 1349 	sjmp	00103$
      00191E                       1350 00177$:
      00191E BF 03 03         [24] 1351 	cjne	r7,#0x03,00178$
      001921 02 19 EB         [24] 1352 	ljmp	00104$
      001924                       1353 00178$:
      001924 BF 05 03         [24] 1354 	cjne	r7,#0x05,00179$
      001927 02 1A 49         [24] 1355 	ljmp	00105$
      00192A                       1356 00179$:
      00192A 02 1A A5         [24] 1357 	ljmp	00106$
                                   1358 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:117: case GPIO_PORT1:
      00192D                       1359 00102$:
                                   1360 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:118: pm1 = P1M1;
      00192D 90 00 C4         [24] 1361 	mov	dptr,#_gpioConfigure_pm1_65537_158
      001930 E5 91            [12] 1362 	mov	a,_P1M1
      001932 F0               [24] 1363 	movx	@dptr,a
                                   1364 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:119: pm0 = P1M0;
      001933 90 00 C5         [24] 1365 	mov	dptr,#_gpioConfigure_pm0_65537_158
      001936 E5 92            [12] 1366 	mov	a,_P1M0
      001938 F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:122: pncs = P1NCS;
      001939 90 FE 19         [24] 1369 	mov	dptr,#_P1NCS
      00193C E0               [24] 1370 	movx	a,@dptr
      00193D 90 00 C6         [24] 1371 	mov	dptr,#_gpioConfigure_pncs_65537_158
      001940 F0               [24] 1372 	movx	@dptr,a
                                   1373 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:123: ppu = P1PU;
      001941 90 FE 11         [24] 1374 	mov	dptr,#_P1PU
      001944 E0               [24] 1375 	movx	a,@dptr
      001945 90 00 C7         [24] 1376 	mov	dptr,#_gpioConfigure_ppu_65537_158
      001948 F0               [24] 1377 	movx	@dptr,a
                                   1378 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:127: pdr = P1DR;
      001949 90 FE 29         [24] 1379 	mov	dptr,#_P1DR
      00194C E0               [24] 1380 	movx	a,@dptr
      00194D 90 00 C8         [24] 1381 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001950 F0               [24] 1382 	movx	@dptr,a
                                   1383 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:128: psr = P1SR;
      001951 90 FE 21         [24] 1384 	mov	dptr,#_P1SR
      001954 E0               [24] 1385 	movx	a,@dptr
      001955 90 00 C9         [24] 1386 	mov	dptr,#_gpioConfigure_psr_65537_158
      001958 F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:129: pie = P1IE;
      001959 90 FE 31         [24] 1389 	mov	dptr,#_P1IE
      00195C E0               [24] 1390 	movx	a,@dptr
      00195D 90 00 CA         [24] 1391 	mov	dptr,#_gpioConfigure_pie_65537_158
      001960 F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:133: pim1 = P1IM1;
      001961 90 FD 31         [24] 1394 	mov	dptr,#_P1IM1
      001964 E0               [24] 1395 	movx	a,@dptr
      001965 90 00 CB         [24] 1396 	mov	dptr,#_gpioConfigure_pim1_65537_158
      001968 F0               [24] 1397 	movx	@dptr,a
                                   1398 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:134: pim0 = P1IM0;
      001969 90 FD 21         [24] 1399 	mov	dptr,#_P1IM0
      00196C E0               [24] 1400 	movx	a,@dptr
      00196D 90 00 CC         [24] 1401 	mov	dptr,#_gpioConfigure_pim0_65537_158
      001970 F0               [24] 1402 	movx	@dptr,a
                                   1403 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:135: pintf = P1INTF;
      001971 90 FD 11         [24] 1404 	mov	dptr,#_P1INTF
      001974 E0               [24] 1405 	movx	a,@dptr
      001975 90 00 CD         [24] 1406 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001978 F0               [24] 1407 	movx	@dptr,a
                                   1408 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:136: pinte = P1INTE;
      001979 90 FD 01         [24] 1409 	mov	dptr,#_P1INTE
      00197C E0               [24] 1410 	movx	a,@dptr
      00197D 90 00 CE         [24] 1411 	mov	dptr,#_gpioConfigure_pinte_65537_158
      001980 F0               [24] 1412 	movx	@dptr,a
                                   1413 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:137: pwkue = P1WKUE;
      001981 90 FD 41         [24] 1414 	mov	dptr,#_P1WKUE
      001984 E0               [24] 1415 	movx	a,@dptr
      001985 90 00 CF         [24] 1416 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      001988 F0               [24] 1417 	movx	@dptr,a
                                   1418 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:139: break;
      001989 02 1A A5         [24] 1419 	ljmp	00106$
                                   1420 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:145: case GPIO_PORT2:
      00198C                       1421 00103$:
                                   1422 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:146: pm1 = P2M1;
      00198C 90 00 C4         [24] 1423 	mov	dptr,#_gpioConfigure_pm1_65537_158
      00198F E5 95            [12] 1424 	mov	a,_P2M1
      001991 F0               [24] 1425 	movx	@dptr,a
                                   1426 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:147: pm0 = P2M0;
      001992 90 00 C5         [24] 1427 	mov	dptr,#_gpioConfigure_pm0_65537_158
      001995 E5 96            [12] 1428 	mov	a,_P2M0
      001997 F0               [24] 1429 	movx	@dptr,a
                                   1430 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:150: pncs = P2NCS;
      001998 90 FE 1A         [24] 1431 	mov	dptr,#_P2NCS
      00199B E0               [24] 1432 	movx	a,@dptr
      00199C 90 00 C6         [24] 1433 	mov	dptr,#_gpioConfigure_pncs_65537_158
      00199F F0               [24] 1434 	movx	@dptr,a
                                   1435 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:151: ppu = P2PU;
      0019A0 90 FE 12         [24] 1436 	mov	dptr,#_P2PU
      0019A3 E0               [24] 1437 	movx	a,@dptr
      0019A4 90 00 C7         [24] 1438 	mov	dptr,#_gpioConfigure_ppu_65537_158
      0019A7 F0               [24] 1439 	movx	@dptr,a
                                   1440 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:155: pdr = P2DR;
      0019A8 90 FE 2A         [24] 1441 	mov	dptr,#_P2DR
      0019AB E0               [24] 1442 	movx	a,@dptr
      0019AC 90 00 C8         [24] 1443 	mov	dptr,#_gpioConfigure_pdr_65537_158
      0019AF F0               [24] 1444 	movx	@dptr,a
                                   1445 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:156: psr = P2SR;
      0019B0 90 FE 22         [24] 1446 	mov	dptr,#_P2SR
      0019B3 E0               [24] 1447 	movx	a,@dptr
      0019B4 90 00 C9         [24] 1448 	mov	dptr,#_gpioConfigure_psr_65537_158
      0019B7 F0               [24] 1449 	movx	@dptr,a
                                   1450 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:157: pie = P2IE;
      0019B8 90 FE 32         [24] 1451 	mov	dptr,#_P2IE
      0019BB E0               [24] 1452 	movx	a,@dptr
      0019BC 90 00 CA         [24] 1453 	mov	dptr,#_gpioConfigure_pie_65537_158
      0019BF F0               [24] 1454 	movx	@dptr,a
                                   1455 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:161: pim1 = P2IM1;
      0019C0 90 FD 32         [24] 1456 	mov	dptr,#_P2IM1
      0019C3 E0               [24] 1457 	movx	a,@dptr
      0019C4 90 00 CB         [24] 1458 	mov	dptr,#_gpioConfigure_pim1_65537_158
      0019C7 F0               [24] 1459 	movx	@dptr,a
                                   1460 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:162: pim0 = P2IM0;
      0019C8 90 FD 22         [24] 1461 	mov	dptr,#_P2IM0
      0019CB E0               [24] 1462 	movx	a,@dptr
      0019CC 90 00 CC         [24] 1463 	mov	dptr,#_gpioConfigure_pim0_65537_158
      0019CF F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:163: pintf = P2INTF;
      0019D0 90 FD 12         [24] 1466 	mov	dptr,#_P2INTF
      0019D3 E0               [24] 1467 	movx	a,@dptr
      0019D4 90 00 CD         [24] 1468 	mov	dptr,#_gpioConfigure_pintf_65537_158
      0019D7 F0               [24] 1469 	movx	@dptr,a
                                   1470 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:164: pinte = P2INTE;
      0019D8 90 FD 02         [24] 1471 	mov	dptr,#_P2INTE
      0019DB E0               [24] 1472 	movx	a,@dptr
      0019DC 90 00 CE         [24] 1473 	mov	dptr,#_gpioConfigure_pinte_65537_158
      0019DF F0               [24] 1474 	movx	@dptr,a
                                   1475 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:165: pwkue = P2WKUE;
      0019E0 90 FD 42         [24] 1476 	mov	dptr,#_P2WKUE
      0019E3 E0               [24] 1477 	movx	a,@dptr
      0019E4 90 00 CF         [24] 1478 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      0019E7 F0               [24] 1479 	movx	@dptr,a
                                   1480 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:167: break;
      0019E8 02 1A A5         [24] 1481 	ljmp	00106$
                                   1482 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:172: case GPIO_PORT3:
      0019EB                       1483 00104$:
                                   1484 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:173: pm1 = P3M1;
      0019EB 90 00 C4         [24] 1485 	mov	dptr,#_gpioConfigure_pm1_65537_158
      0019EE E5 B1            [12] 1486 	mov	a,_P3M1
      0019F0 F0               [24] 1487 	movx	@dptr,a
                                   1488 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:174: pm0 = P3M0;
      0019F1 90 00 C5         [24] 1489 	mov	dptr,#_gpioConfigure_pm0_65537_158
      0019F4 E5 B2            [12] 1490 	mov	a,_P3M0
      0019F6 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:177: pncs = P3NCS;
      0019F7 90 FE 1B         [24] 1493 	mov	dptr,#_P3NCS
      0019FA E0               [24] 1494 	movx	a,@dptr
      0019FB 90 00 C6         [24] 1495 	mov	dptr,#_gpioConfigure_pncs_65537_158
      0019FE F0               [24] 1496 	movx	@dptr,a
                                   1497 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:178: ppu = P3PU;
      0019FF 90 FE 13         [24] 1498 	mov	dptr,#_P3PU
      001A02 E0               [24] 1499 	movx	a,@dptr
      001A03 90 00 C7         [24] 1500 	mov	dptr,#_gpioConfigure_ppu_65537_158
      001A06 F0               [24] 1501 	movx	@dptr,a
                                   1502 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:182: pdr = P3DR;
      001A07 90 FE 2B         [24] 1503 	mov	dptr,#_P3DR
      001A0A E0               [24] 1504 	movx	a,@dptr
      001A0B 90 00 C8         [24] 1505 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001A0E F0               [24] 1506 	movx	@dptr,a
                                   1507 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:183: psr = P3SR;
      001A0F 90 FE 23         [24] 1508 	mov	dptr,#_P3SR
      001A12 E0               [24] 1509 	movx	a,@dptr
      001A13 90 00 C9         [24] 1510 	mov	dptr,#_gpioConfigure_psr_65537_158
      001A16 F0               [24] 1511 	movx	@dptr,a
                                   1512 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:184: pie = P3IE;
      001A17 90 FE 33         [24] 1513 	mov	dptr,#_P3IE
      001A1A E0               [24] 1514 	movx	a,@dptr
      001A1B 90 00 CA         [24] 1515 	mov	dptr,#_gpioConfigure_pie_65537_158
      001A1E F0               [24] 1516 	movx	@dptr,a
                                   1517 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:188: pim1 = P3IM1;
      001A1F 90 FD 33         [24] 1518 	mov	dptr,#_P3IM1
      001A22 E0               [24] 1519 	movx	a,@dptr
      001A23 90 00 CB         [24] 1520 	mov	dptr,#_gpioConfigure_pim1_65537_158
      001A26 F0               [24] 1521 	movx	@dptr,a
                                   1522 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:189: pim0 = P3IM0;
      001A27 90 FD 23         [24] 1523 	mov	dptr,#_P3IM0
      001A2A E0               [24] 1524 	movx	a,@dptr
      001A2B 90 00 CC         [24] 1525 	mov	dptr,#_gpioConfigure_pim0_65537_158
      001A2E F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:190: pintf = P3INTF;
      001A2F 90 FD 13         [24] 1528 	mov	dptr,#_P3INTF
      001A32 E0               [24] 1529 	movx	a,@dptr
      001A33 90 00 CD         [24] 1530 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001A36 F0               [24] 1531 	movx	@dptr,a
                                   1532 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:191: pinte = P3INTE;
      001A37 90 FD 03         [24] 1533 	mov	dptr,#_P3INTE
      001A3A E0               [24] 1534 	movx	a,@dptr
      001A3B 90 00 CE         [24] 1535 	mov	dptr,#_gpioConfigure_pinte_65537_158
      001A3E F0               [24] 1536 	movx	@dptr,a
                                   1537 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:192: pwkue = P3WKUE;
      001A3F 90 FD 43         [24] 1538 	mov	dptr,#_P3WKUE
      001A42 E0               [24] 1539 	movx	a,@dptr
      001A43 90 00 CF         [24] 1540 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      001A46 F0               [24] 1541 	movx	@dptr,a
                                   1542 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:194: break;
                                   1543 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:227: case GPIO_PORT5:
      001A47 80 5C            [24] 1544 	sjmp	00106$
      001A49                       1545 00105$:
                                   1546 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:228: pm1 = P5M1;
      001A49 90 00 C4         [24] 1547 	mov	dptr,#_gpioConfigure_pm1_65537_158
      001A4C E5 C9            [12] 1548 	mov	a,_P5M1
      001A4E F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:229: pm0 = P5M0;
      001A4F 90 00 C5         [24] 1551 	mov	dptr,#_gpioConfigure_pm0_65537_158
      001A52 E5 CA            [12] 1552 	mov	a,_P5M0
      001A54 F0               [24] 1553 	movx	@dptr,a
                                   1554 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:232: pncs = P5NCS;
      001A55 90 FE 1D         [24] 1555 	mov	dptr,#_P5NCS
      001A58 E0               [24] 1556 	movx	a,@dptr
      001A59 90 00 C6         [24] 1557 	mov	dptr,#_gpioConfigure_pncs_65537_158
      001A5C F0               [24] 1558 	movx	@dptr,a
                                   1559 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:233: ppu = P5PU;
      001A5D 90 FE 15         [24] 1560 	mov	dptr,#_P5PU
      001A60 E0               [24] 1561 	movx	a,@dptr
      001A61 90 00 C7         [24] 1562 	mov	dptr,#_gpioConfigure_ppu_65537_158
      001A64 F0               [24] 1563 	movx	@dptr,a
                                   1564 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:237: pdr = P5DR;
      001A65 90 FE 2D         [24] 1565 	mov	dptr,#_P5DR
      001A68 E0               [24] 1566 	movx	a,@dptr
      001A69 90 00 C8         [24] 1567 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001A6C F0               [24] 1568 	movx	@dptr,a
                                   1569 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:238: psr = P5SR;
      001A6D 90 FE 25         [24] 1570 	mov	dptr,#_P5SR
      001A70 E0               [24] 1571 	movx	a,@dptr
      001A71 90 00 C9         [24] 1572 	mov	dptr,#_gpioConfigure_psr_65537_158
      001A74 F0               [24] 1573 	movx	@dptr,a
                                   1574 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:239: pie = P5IE;
      001A75 90 FE 35         [24] 1575 	mov	dptr,#_P5IE
      001A78 E0               [24] 1576 	movx	a,@dptr
      001A79 90 00 CA         [24] 1577 	mov	dptr,#_gpioConfigure_pie_65537_158
      001A7C F0               [24] 1578 	movx	@dptr,a
                                   1579 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:243: pim1 = P5IM1;
      001A7D 90 FD 35         [24] 1580 	mov	dptr,#_P5IM1
      001A80 E0               [24] 1581 	movx	a,@dptr
      001A81 90 00 CB         [24] 1582 	mov	dptr,#_gpioConfigure_pim1_65537_158
      001A84 F0               [24] 1583 	movx	@dptr,a
                                   1584 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:244: pim0 = P5IM0;
      001A85 90 FD 25         [24] 1585 	mov	dptr,#_P5IM0
      001A88 E0               [24] 1586 	movx	a,@dptr
      001A89 90 00 CC         [24] 1587 	mov	dptr,#_gpioConfigure_pim0_65537_158
      001A8C F0               [24] 1588 	movx	@dptr,a
                                   1589 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:245: pintf = P5INTF;
      001A8D 90 FD 15         [24] 1590 	mov	dptr,#_P5INTF
      001A90 E0               [24] 1591 	movx	a,@dptr
      001A91 90 00 CD         [24] 1592 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001A94 F0               [24] 1593 	movx	@dptr,a
                                   1594 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:246: pinte = P5INTE;
      001A95 90 FD 05         [24] 1595 	mov	dptr,#_P5INTE
      001A98 E0               [24] 1596 	movx	a,@dptr
      001A99 90 00 CE         [24] 1597 	mov	dptr,#_gpioConfigure_pinte_65537_158
      001A9C F0               [24] 1598 	movx	@dptr,a
                                   1599 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:247: pwkue = P5WKUE;
      001A9D 90 FD 45         [24] 1600 	mov	dptr,#_P5WKUE
      001AA0 E0               [24] 1601 	movx	a,@dptr
      001AA1 90 00 CF         [24] 1602 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      001AA4 F0               [24] 1603 	movx	@dptr,a
                                   1604 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:307: }
      001AA5                       1605 00106$:
                                   1606 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:309: pm1 = __gpio_setBits(pm1, gpioConfig->pinMode & 2, gpioConfig);
      001AA5 90 00 C4         [24] 1607 	mov	dptr,#_gpioConfigure_pm1_65537_158
      001AA8 E0               [24] 1608 	movx	a,@dptr
      001AA9 FF               [12] 1609 	mov	r7,a
      001AAA 90 00 C0         [24] 1610 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001AAD E0               [24] 1611 	movx	a,@dptr
      001AAE FC               [12] 1612 	mov	r4,a
      001AAF A3               [24] 1613 	inc	dptr
      001AB0 E0               [24] 1614 	movx	a,@dptr
      001AB1 FD               [12] 1615 	mov	r5,a
      001AB2 A3               [24] 1616 	inc	dptr
      001AB3 E0               [24] 1617 	movx	a,@dptr
      001AB4 FE               [12] 1618 	mov	r6,a
      001AB5 74 03            [12] 1619 	mov	a,#0x03
      001AB7 2C               [12] 1620 	add	a,r4
      001AB8 F9               [12] 1621 	mov	r1,a
      001AB9 E4               [12] 1622 	clr	a
      001ABA 3D               [12] 1623 	addc	a,r5
      001ABB FA               [12] 1624 	mov	r2,a
      001ABC 8E 03            [24] 1625 	mov	ar3,r6
      001ABE 89 82            [24] 1626 	mov	dpl,r1
      001AC0 8A 83            [24] 1627 	mov	dph,r2
      001AC2 8B F0            [24] 1628 	mov	b,r3
      001AC4 12 58 3E         [24] 1629 	lcall	__gptrget
      001AC7 F9               [12] 1630 	mov	r1,a
      001AC8 90 00 B5         [24] 1631 	mov	dptr,#___gpio_setBits_PARM_2
      001ACB 74 02            [12] 1632 	mov	a,#0x02
      001ACD 59               [12] 1633 	anl	a,r1
      001ACE F0               [24] 1634 	movx	@dptr,a
      001ACF 90 00 B6         [24] 1635 	mov	dptr,#___gpio_setBits_PARM_3
      001AD2 EC               [12] 1636 	mov	a,r4
      001AD3 F0               [24] 1637 	movx	@dptr,a
      001AD4 ED               [12] 1638 	mov	a,r5
      001AD5 A3               [24] 1639 	inc	dptr
      001AD6 F0               [24] 1640 	movx	@dptr,a
      001AD7 EE               [12] 1641 	mov	a,r6
      001AD8 A3               [24] 1642 	inc	dptr
      001AD9 F0               [24] 1643 	movx	@dptr,a
      001ADA 8F 82            [24] 1644 	mov	dpl,r7
      001ADC 12 17 72         [24] 1645 	lcall	___gpio_setBits
      001ADF AF 82            [24] 1646 	mov	r7,dpl
                                   1647 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:310: pm0 = __gpio_setBits(pm0, gpioConfig->pinMode & 1, gpioConfig);
      001AE1 90 00 C5         [24] 1648 	mov	dptr,#_gpioConfigure_pm0_65537_158
      001AE4 E0               [24] 1649 	movx	a,@dptr
      001AE5 FE               [12] 1650 	mov	r6,a
      001AE6 90 00 C0         [24] 1651 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001AE9 E0               [24] 1652 	movx	a,@dptr
      001AEA FB               [12] 1653 	mov	r3,a
      001AEB A3               [24] 1654 	inc	dptr
      001AEC E0               [24] 1655 	movx	a,@dptr
      001AED FC               [12] 1656 	mov	r4,a
      001AEE A3               [24] 1657 	inc	dptr
      001AEF E0               [24] 1658 	movx	a,@dptr
      001AF0 FD               [12] 1659 	mov	r5,a
      001AF1 74 03            [12] 1660 	mov	a,#0x03
      001AF3 2B               [12] 1661 	add	a,r3
      001AF4 F8               [12] 1662 	mov	r0,a
      001AF5 E4               [12] 1663 	clr	a
      001AF6 3C               [12] 1664 	addc	a,r4
      001AF7 F9               [12] 1665 	mov	r1,a
      001AF8 8D 02            [24] 1666 	mov	ar2,r5
      001AFA 88 82            [24] 1667 	mov	dpl,r0
      001AFC 89 83            [24] 1668 	mov	dph,r1
      001AFE 8A F0            [24] 1669 	mov	b,r2
      001B00 12 58 3E         [24] 1670 	lcall	__gptrget
      001B03 F8               [12] 1671 	mov	r0,a
      001B04 90 00 B5         [24] 1672 	mov	dptr,#___gpio_setBits_PARM_2
      001B07 74 01            [12] 1673 	mov	a,#0x01
      001B09 58               [12] 1674 	anl	a,r0
      001B0A F0               [24] 1675 	movx	@dptr,a
      001B0B 90 00 B6         [24] 1676 	mov	dptr,#___gpio_setBits_PARM_3
      001B0E EB               [12] 1677 	mov	a,r3
      001B0F F0               [24] 1678 	movx	@dptr,a
      001B10 EC               [12] 1679 	mov	a,r4
      001B11 A3               [24] 1680 	inc	dptr
      001B12 F0               [24] 1681 	movx	@dptr,a
      001B13 ED               [12] 1682 	mov	a,r5
      001B14 A3               [24] 1683 	inc	dptr
      001B15 F0               [24] 1684 	movx	@dptr,a
      001B16 8E 82            [24] 1685 	mov	dpl,r6
      001B18 C0 07            [24] 1686 	push	ar7
      001B1A 12 17 72         [24] 1687 	lcall	___gpio_setBits
      001B1D AE 82            [24] 1688 	mov	r6,dpl
                                   1689 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:313: pncs = __gpio_setBits(pncs, gpioConfig->schmidtTrigger, gpioConfig);
      001B1F 90 00 C6         [24] 1690 	mov	dptr,#_gpioConfigure_pncs_65537_158
      001B22 E0               [24] 1691 	movx	a,@dptr
      001B23 F5 12            [12] 1692 	mov	_gpioConfigure_sloc0_1_0,a
      001B25 90 00 C0         [24] 1693 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001B28 E0               [24] 1694 	movx	a,@dptr
      001B29 FA               [12] 1695 	mov	r2,a
      001B2A A3               [24] 1696 	inc	dptr
      001B2B E0               [24] 1697 	movx	a,@dptr
      001B2C FB               [12] 1698 	mov	r3,a
      001B2D A3               [24] 1699 	inc	dptr
      001B2E E0               [24] 1700 	movx	a,@dptr
      001B2F FC               [12] 1701 	mov	r4,a
      001B30 74 04            [12] 1702 	mov	a,#0x04
      001B32 2A               [12] 1703 	add	a,r2
      001B33 F8               [12] 1704 	mov	r0,a
      001B34 E4               [12] 1705 	clr	a
      001B35 3B               [12] 1706 	addc	a,r3
      001B36 F9               [12] 1707 	mov	r1,a
      001B37 8C 05            [24] 1708 	mov	ar5,r4
      001B39 88 82            [24] 1709 	mov	dpl,r0
      001B3B 89 83            [24] 1710 	mov	dph,r1
      001B3D 8D F0            [24] 1711 	mov	b,r5
      001B3F 12 58 3E         [24] 1712 	lcall	__gptrget
      001B42 90 00 B5         [24] 1713 	mov	dptr,#___gpio_setBits_PARM_2
      001B45 F0               [24] 1714 	movx	@dptr,a
      001B46 90 00 B6         [24] 1715 	mov	dptr,#___gpio_setBits_PARM_3
      001B49 EA               [12] 1716 	mov	a,r2
      001B4A F0               [24] 1717 	movx	@dptr,a
      001B4B EB               [12] 1718 	mov	a,r3
      001B4C A3               [24] 1719 	inc	dptr
      001B4D F0               [24] 1720 	movx	@dptr,a
      001B4E EC               [12] 1721 	mov	a,r4
      001B4F A3               [24] 1722 	inc	dptr
      001B50 F0               [24] 1723 	movx	@dptr,a
      001B51 85 12 82         [24] 1724 	mov	dpl,_gpioConfigure_sloc0_1_0
      001B54 C0 06            [24] 1725 	push	ar6
      001B56 12 17 72         [24] 1726 	lcall	___gpio_setBits
      001B59 AD 82            [24] 1727 	mov	r5,dpl
                                   1728 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:314: ppu = __gpio_setBits(ppu, gpioConfig->internalPullUp, gpioConfig);
      001B5B 90 00 C7         [24] 1729 	mov	dptr,#_gpioConfigure_ppu_65537_158
      001B5E E0               [24] 1730 	movx	a,@dptr
      001B5F F5 12            [12] 1731 	mov	_gpioConfigure_sloc0_1_0,a
      001B61 90 00 C0         [24] 1732 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001B64 E0               [24] 1733 	movx	a,@dptr
      001B65 F5 15            [12] 1734 	mov	_gpioConfigure_sloc1_1_0,a
      001B67 A3               [24] 1735 	inc	dptr
      001B68 E0               [24] 1736 	movx	a,@dptr
      001B69 F5 16            [12] 1737 	mov	(_gpioConfigure_sloc1_1_0 + 1),a
      001B6B A3               [24] 1738 	inc	dptr
      001B6C E0               [24] 1739 	movx	a,@dptr
      001B6D F5 17            [12] 1740 	mov	(_gpioConfigure_sloc1_1_0 + 2),a
      001B6F 74 05            [12] 1741 	mov	a,#0x05
      001B71 25 15            [12] 1742 	add	a,_gpioConfigure_sloc1_1_0
      001B73 F8               [12] 1743 	mov	r0,a
      001B74 E4               [12] 1744 	clr	a
      001B75 35 16            [12] 1745 	addc	a,(_gpioConfigure_sloc1_1_0 + 1)
      001B77 FB               [12] 1746 	mov	r3,a
      001B78 AC 17            [24] 1747 	mov	r4,(_gpioConfigure_sloc1_1_0 + 2)
      001B7A 88 82            [24] 1748 	mov	dpl,r0
      001B7C 8B 83            [24] 1749 	mov	dph,r3
      001B7E 8C F0            [24] 1750 	mov	b,r4
      001B80 12 58 3E         [24] 1751 	lcall	__gptrget
      001B83 90 00 B5         [24] 1752 	mov	dptr,#___gpio_setBits_PARM_2
      001B86 F0               [24] 1753 	movx	@dptr,a
      001B87 90 00 B6         [24] 1754 	mov	dptr,#___gpio_setBits_PARM_3
      001B8A E5 15            [12] 1755 	mov	a,_gpioConfigure_sloc1_1_0
      001B8C F0               [24] 1756 	movx	@dptr,a
      001B8D E5 16            [12] 1757 	mov	a,(_gpioConfigure_sloc1_1_0 + 1)
      001B8F A3               [24] 1758 	inc	dptr
      001B90 F0               [24] 1759 	movx	@dptr,a
      001B91 E5 17            [12] 1760 	mov	a,(_gpioConfigure_sloc1_1_0 + 2)
      001B93 A3               [24] 1761 	inc	dptr
      001B94 F0               [24] 1762 	movx	@dptr,a
      001B95 85 12 82         [24] 1763 	mov	dpl,_gpioConfigure_sloc0_1_0
      001B98 C0 05            [24] 1764 	push	ar5
      001B9A 12 17 72         [24] 1765 	lcall	___gpio_setBits
      001B9D AC 82            [24] 1766 	mov	r4,dpl
                                   1767 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:318: if (__isOutput(gpioConfig)) {
      001B9F 90 00 C0         [24] 1768 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001BA2 E0               [24] 1769 	movx	a,@dptr
      001BA3 F9               [12] 1770 	mov	r1,a
      001BA4 A3               [24] 1771 	inc	dptr
      001BA5 E0               [24] 1772 	movx	a,@dptr
      001BA6 FA               [12] 1773 	mov	r2,a
      001BA7 A3               [24] 1774 	inc	dptr
      001BA8 E0               [24] 1775 	movx	a,@dptr
      001BA9 FB               [12] 1776 	mov	r3,a
      001BAA 89 82            [24] 1777 	mov	dpl,r1
      001BAC 8A 83            [24] 1778 	mov	dph,r2
      001BAE 8B F0            [24] 1779 	mov	b,r3
      001BB0 C0 04            [24] 1780 	push	ar4
      001BB2 12 17 C7         [24] 1781 	lcall	___isOutput
      001BB5 E5 82            [12] 1782 	mov	a,dpl
      001BB7 D0 04            [24] 1783 	pop	ar4
      001BB9 D0 05            [24] 1784 	pop	ar5
      001BBB D0 06            [24] 1785 	pop	ar6
      001BBD D0 07            [24] 1786 	pop	ar7
      001BBF 70 03            [24] 1787 	jnz	00180$
      001BC1 02 1C 70         [24] 1788 	ljmp	00108$
      001BC4                       1789 00180$:
                                   1790 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:319: pdr = __gpio_setBits(pdr, gpioConfig->speed & 1, gpioConfig);
      001BC4 C0 04            [24] 1791 	push	ar4
      001BC6 90 00 C8         [24] 1792 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001BC9 E0               [24] 1793 	movx	a,@dptr
      001BCA F5 15            [12] 1794 	mov	_gpioConfigure_sloc1_1_0,a
      001BCC 90 00 C0         [24] 1795 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001BCF E0               [24] 1796 	movx	a,@dptr
      001BD0 F5 12            [12] 1797 	mov	_gpioConfigure_sloc0_1_0,a
      001BD2 A3               [24] 1798 	inc	dptr
      001BD3 E0               [24] 1799 	movx	a,@dptr
      001BD4 F5 13            [12] 1800 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001BD6 A3               [24] 1801 	inc	dptr
      001BD7 E0               [24] 1802 	movx	a,@dptr
      001BD8 F5 14            [12] 1803 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001BDA 74 06            [12] 1804 	mov	a,#0x06
      001BDC 25 12            [12] 1805 	add	a,_gpioConfigure_sloc0_1_0
      001BDE FA               [12] 1806 	mov	r2,a
      001BDF E4               [12] 1807 	clr	a
      001BE0 35 13            [12] 1808 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001BE2 FB               [12] 1809 	mov	r3,a
      001BE3 AC 14            [24] 1810 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001BE5 8A 82            [24] 1811 	mov	dpl,r2
      001BE7 8B 83            [24] 1812 	mov	dph,r3
      001BE9 8C F0            [24] 1813 	mov	b,r4
      001BEB 12 58 3E         [24] 1814 	lcall	__gptrget
      001BEE FA               [12] 1815 	mov	r2,a
      001BEF 90 00 B5         [24] 1816 	mov	dptr,#___gpio_setBits_PARM_2
      001BF2 74 01            [12] 1817 	mov	a,#0x01
      001BF4 5A               [12] 1818 	anl	a,r2
      001BF5 F0               [24] 1819 	movx	@dptr,a
      001BF6 90 00 B6         [24] 1820 	mov	dptr,#___gpio_setBits_PARM_3
      001BF9 E5 12            [12] 1821 	mov	a,_gpioConfigure_sloc0_1_0
      001BFB F0               [24] 1822 	movx	@dptr,a
      001BFC E5 13            [12] 1823 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001BFE A3               [24] 1824 	inc	dptr
      001BFF F0               [24] 1825 	movx	@dptr,a
      001C00 E5 14            [12] 1826 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001C02 A3               [24] 1827 	inc	dptr
      001C03 F0               [24] 1828 	movx	@dptr,a
      001C04 85 15 82         [24] 1829 	mov	dpl,_gpioConfigure_sloc1_1_0
      001C07 C0 07            [24] 1830 	push	ar7
      001C09 C0 06            [24] 1831 	push	ar6
      001C0B C0 05            [24] 1832 	push	ar5
      001C0D C0 04            [24] 1833 	push	ar4
      001C0F 12 17 72         [24] 1834 	lcall	___gpio_setBits
      001C12 E5 82            [12] 1835 	mov	a,dpl
      001C14 D0 04            [24] 1836 	pop	ar4
      001C16 90 00 C8         [24] 1837 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001C19 F0               [24] 1838 	movx	@dptr,a
                                   1839 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:320: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      001C1A 90 00 C9         [24] 1840 	mov	dptr,#_gpioConfigure_psr_65537_158
      001C1D E0               [24] 1841 	movx	a,@dptr
      001C1E F5 15            [12] 1842 	mov	_gpioConfigure_sloc1_1_0,a
      001C20 90 00 C0         [24] 1843 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001C23 E0               [24] 1844 	movx	a,@dptr
      001C24 F5 12            [12] 1845 	mov	_gpioConfigure_sloc0_1_0,a
      001C26 A3               [24] 1846 	inc	dptr
      001C27 E0               [24] 1847 	movx	a,@dptr
      001C28 F5 13            [12] 1848 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001C2A A3               [24] 1849 	inc	dptr
      001C2B E0               [24] 1850 	movx	a,@dptr
      001C2C F5 14            [12] 1851 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001C2E 74 06            [12] 1852 	mov	a,#0x06
      001C30 25 12            [12] 1853 	add	a,_gpioConfigure_sloc0_1_0
      001C32 F8               [12] 1854 	mov	r0,a
      001C33 E4               [12] 1855 	clr	a
      001C34 35 13            [12] 1856 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001C36 FB               [12] 1857 	mov	r3,a
      001C37 AC 14            [24] 1858 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001C39 88 82            [24] 1859 	mov	dpl,r0
      001C3B 8B 83            [24] 1860 	mov	dph,r3
      001C3D 8C F0            [24] 1861 	mov	b,r4
      001C3F 12 58 3E         [24] 1862 	lcall	__gptrget
      001C42 F8               [12] 1863 	mov	r0,a
      001C43 90 00 B5         [24] 1864 	mov	dptr,#___gpio_setBits_PARM_2
      001C46 74 02            [12] 1865 	mov	a,#0x02
      001C48 58               [12] 1866 	anl	a,r0
      001C49 F0               [24] 1867 	movx	@dptr,a
      001C4A 90 00 B6         [24] 1868 	mov	dptr,#___gpio_setBits_PARM_3
      001C4D E5 12            [12] 1869 	mov	a,_gpioConfigure_sloc0_1_0
      001C4F F0               [24] 1870 	movx	@dptr,a
      001C50 E5 13            [12] 1871 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001C52 A3               [24] 1872 	inc	dptr
      001C53 F0               [24] 1873 	movx	@dptr,a
      001C54 E5 14            [12] 1874 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001C56 A3               [24] 1875 	inc	dptr
      001C57 F0               [24] 1876 	movx	@dptr,a
      001C58 85 15 82         [24] 1877 	mov	dpl,_gpioConfigure_sloc1_1_0
      001C5B C0 04            [24] 1878 	push	ar4
      001C5D 12 17 72         [24] 1879 	lcall	___gpio_setBits
      001C60 E5 82            [12] 1880 	mov	a,dpl
      001C62 D0 04            [24] 1881 	pop	ar4
      001C64 D0 05            [24] 1882 	pop	ar5
      001C66 D0 06            [24] 1883 	pop	ar6
      001C68 D0 07            [24] 1884 	pop	ar7
      001C6A 90 00 C9         [24] 1885 	mov	dptr,#_gpioConfigure_psr_65537_158
      001C6D F0               [24] 1886 	movx	@dptr,a
                                   1887 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:558: }
      001C6E D0 04            [24] 1888 	pop	ar4
                                   1889 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:320: psr = __gpio_setBits(psr, gpioConfig->speed & 2, gpioConfig);
      001C70                       1890 00108$:
                                   1891 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:323: if (__isInput(gpioConfig)) {
      001C70 90 00 C0         [24] 1892 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001C73 E0               [24] 1893 	movx	a,@dptr
      001C74 F9               [12] 1894 	mov	r1,a
      001C75 A3               [24] 1895 	inc	dptr
      001C76 E0               [24] 1896 	movx	a,@dptr
      001C77 FA               [12] 1897 	mov	r2,a
      001C78 A3               [24] 1898 	inc	dptr
      001C79 E0               [24] 1899 	movx	a,@dptr
      001C7A FB               [12] 1900 	mov	r3,a
      001C7B 89 82            [24] 1901 	mov	dpl,r1
      001C7D 8A 83            [24] 1902 	mov	dph,r2
      001C7F 8B F0            [24] 1903 	mov	b,r3
      001C81 C0 07            [24] 1904 	push	ar7
      001C83 C0 06            [24] 1905 	push	ar6
      001C85 C0 05            [24] 1906 	push	ar5
      001C87 C0 04            [24] 1907 	push	ar4
      001C89 12 18 08         [24] 1908 	lcall	___isInput
      001C8C E5 82            [12] 1909 	mov	a,dpl
      001C8E D0 04            [24] 1910 	pop	ar4
      001C90 D0 05            [24] 1911 	pop	ar5
      001C92 D0 06            [24] 1912 	pop	ar6
      001C94 D0 07            [24] 1913 	pop	ar7
      001C96 60 5A            [24] 1914 	jz	00110$
                                   1915 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:324: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      001C98 C0 04            [24] 1916 	push	ar4
      001C9A 90 00 CA         [24] 1917 	mov	dptr,#_gpioConfigure_pie_65537_158
      001C9D E0               [24] 1918 	movx	a,@dptr
      001C9E F5 15            [12] 1919 	mov	_gpioConfigure_sloc1_1_0,a
      001CA0 90 00 C0         [24] 1920 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001CA3 E0               [24] 1921 	movx	a,@dptr
      001CA4 F5 12            [12] 1922 	mov	_gpioConfigure_sloc0_1_0,a
      001CA6 A3               [24] 1923 	inc	dptr
      001CA7 E0               [24] 1924 	movx	a,@dptr
      001CA8 F5 13            [12] 1925 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001CAA A3               [24] 1926 	inc	dptr
      001CAB E0               [24] 1927 	movx	a,@dptr
      001CAC F5 14            [12] 1928 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001CAE 74 07            [12] 1929 	mov	a,#0x07
      001CB0 25 12            [12] 1930 	add	a,_gpioConfigure_sloc0_1_0
      001CB2 FA               [12] 1931 	mov	r2,a
      001CB3 E4               [12] 1932 	clr	a
      001CB4 35 13            [12] 1933 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001CB6 FB               [12] 1934 	mov	r3,a
      001CB7 AC 14            [24] 1935 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001CB9 8A 82            [24] 1936 	mov	dpl,r2
      001CBB 8B 83            [24] 1937 	mov	dph,r3
      001CBD 8C F0            [24] 1938 	mov	b,r4
      001CBF 12 58 3E         [24] 1939 	lcall	__gptrget
      001CC2 90 00 B5         [24] 1940 	mov	dptr,#___gpio_setBits_PARM_2
      001CC5 F0               [24] 1941 	movx	@dptr,a
      001CC6 90 00 B6         [24] 1942 	mov	dptr,#___gpio_setBits_PARM_3
      001CC9 E5 12            [12] 1943 	mov	a,_gpioConfigure_sloc0_1_0
      001CCB F0               [24] 1944 	movx	@dptr,a
      001CCC E5 13            [12] 1945 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001CCE A3               [24] 1946 	inc	dptr
      001CCF F0               [24] 1947 	movx	@dptr,a
      001CD0 E5 14            [12] 1948 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001CD2 A3               [24] 1949 	inc	dptr
      001CD3 F0               [24] 1950 	movx	@dptr,a
      001CD4 85 15 82         [24] 1951 	mov	dpl,_gpioConfigure_sloc1_1_0
      001CD7 C0 07            [24] 1952 	push	ar7
      001CD9 C0 06            [24] 1953 	push	ar6
      001CDB C0 05            [24] 1954 	push	ar5
      001CDD C0 04            [24] 1955 	push	ar4
      001CDF 12 17 72         [24] 1956 	lcall	___gpio_setBits
      001CE2 E5 82            [12] 1957 	mov	a,dpl
      001CE4 D0 04            [24] 1958 	pop	ar4
      001CE6 D0 05            [24] 1959 	pop	ar5
      001CE8 D0 06            [24] 1960 	pop	ar6
      001CEA D0 07            [24] 1961 	pop	ar7
      001CEC 90 00 CA         [24] 1962 	mov	dptr,#_gpioConfigure_pie_65537_158
      001CEF F0               [24] 1963 	movx	@dptr,a
                                   1964 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:558: }
      001CF0 D0 04            [24] 1965 	pop	ar4
                                   1966 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:324: pie = __gpio_setBits(pie, gpioConfig->digitalInput, gpioConfig);
      001CF2                       1967 00110$:
                                   1968 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:329: pim1 = __gpio_setBits(pim1, gpioConfig->interruptTrigger & 2, gpioConfig);
      001CF2 C0 04            [24] 1969 	push	ar4
      001CF4 90 00 CB         [24] 1970 	mov	dptr,#_gpioConfigure_pim1_65537_158
      001CF7 E0               [24] 1971 	movx	a,@dptr
      001CF8 F5 15            [12] 1972 	mov	_gpioConfigure_sloc1_1_0,a
      001CFA 90 00 C0         [24] 1973 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001CFD E0               [24] 1974 	movx	a,@dptr
      001CFE F5 12            [12] 1975 	mov	_gpioConfigure_sloc0_1_0,a
      001D00 A3               [24] 1976 	inc	dptr
      001D01 E0               [24] 1977 	movx	a,@dptr
      001D02 F5 13            [12] 1978 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001D04 A3               [24] 1979 	inc	dptr
      001D05 E0               [24] 1980 	movx	a,@dptr
      001D06 F5 14            [12] 1981 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001D08 74 09            [12] 1982 	mov	a,#0x09
      001D0A 25 12            [12] 1983 	add	a,_gpioConfigure_sloc0_1_0
      001D0C FA               [12] 1984 	mov	r2,a
      001D0D E4               [12] 1985 	clr	a
      001D0E 35 13            [12] 1986 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001D10 FB               [12] 1987 	mov	r3,a
      001D11 AC 14            [24] 1988 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001D13 8A 82            [24] 1989 	mov	dpl,r2
      001D15 8B 83            [24] 1990 	mov	dph,r3
      001D17 8C F0            [24] 1991 	mov	b,r4
      001D19 12 58 3E         [24] 1992 	lcall	__gptrget
      001D1C FA               [12] 1993 	mov	r2,a
      001D1D 90 00 B5         [24] 1994 	mov	dptr,#___gpio_setBits_PARM_2
      001D20 74 02            [12] 1995 	mov	a,#0x02
      001D22 5A               [12] 1996 	anl	a,r2
      001D23 F0               [24] 1997 	movx	@dptr,a
      001D24 90 00 B6         [24] 1998 	mov	dptr,#___gpio_setBits_PARM_3
      001D27 E5 12            [12] 1999 	mov	a,_gpioConfigure_sloc0_1_0
      001D29 F0               [24] 2000 	movx	@dptr,a
      001D2A E5 13            [12] 2001 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001D2C A3               [24] 2002 	inc	dptr
      001D2D F0               [24] 2003 	movx	@dptr,a
      001D2E E5 14            [12] 2004 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001D30 A3               [24] 2005 	inc	dptr
      001D31 F0               [24] 2006 	movx	@dptr,a
      001D32 85 15 82         [24] 2007 	mov	dpl,_gpioConfigure_sloc1_1_0
      001D35 C0 07            [24] 2008 	push	ar7
      001D37 C0 06            [24] 2009 	push	ar6
      001D39 C0 05            [24] 2010 	push	ar5
      001D3B C0 04            [24] 2011 	push	ar4
      001D3D 12 17 72         [24] 2012 	lcall	___gpio_setBits
      001D40 85 82 15         [24] 2013 	mov	_gpioConfigure_sloc1_1_0,dpl
      001D43 D0 04            [24] 2014 	pop	ar4
                                   2015 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:330: pim0 = __gpio_setBits(pim0, gpioConfig->interruptTrigger & 1, gpioConfig);
      001D45 90 00 CC         [24] 2016 	mov	dptr,#_gpioConfigure_pim0_65537_158
      001D48 E0               [24] 2017 	movx	a,@dptr
      001D49 F5 12            [12] 2018 	mov	_gpioConfigure_sloc0_1_0,a
      001D4B 90 00 C0         [24] 2019 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001D4E E0               [24] 2020 	movx	a,@dptr
      001D4F F5 18            [12] 2021 	mov	_gpioConfigure_sloc2_1_0,a
      001D51 A3               [24] 2022 	inc	dptr
      001D52 E0               [24] 2023 	movx	a,@dptr
      001D53 F5 19            [12] 2024 	mov	(_gpioConfigure_sloc2_1_0 + 1),a
      001D55 A3               [24] 2025 	inc	dptr
      001D56 E0               [24] 2026 	movx	a,@dptr
      001D57 F5 1A            [12] 2027 	mov	(_gpioConfigure_sloc2_1_0 + 2),a
      001D59 74 09            [12] 2028 	mov	a,#0x09
      001D5B 25 18            [12] 2029 	add	a,_gpioConfigure_sloc2_1_0
      001D5D F8               [12] 2030 	mov	r0,a
      001D5E E4               [12] 2031 	clr	a
      001D5F 35 19            [12] 2032 	addc	a,(_gpioConfigure_sloc2_1_0 + 1)
      001D61 FB               [12] 2033 	mov	r3,a
      001D62 AC 1A            [24] 2034 	mov	r4,(_gpioConfigure_sloc2_1_0 + 2)
      001D64 88 82            [24] 2035 	mov	dpl,r0
      001D66 8B 83            [24] 2036 	mov	dph,r3
      001D68 8C F0            [24] 2037 	mov	b,r4
      001D6A 12 58 3E         [24] 2038 	lcall	__gptrget
      001D6D F8               [12] 2039 	mov	r0,a
      001D6E 90 00 B5         [24] 2040 	mov	dptr,#___gpio_setBits_PARM_2
      001D71 74 01            [12] 2041 	mov	a,#0x01
      001D73 58               [12] 2042 	anl	a,r0
      001D74 F0               [24] 2043 	movx	@dptr,a
      001D75 90 00 B6         [24] 2044 	mov	dptr,#___gpio_setBits_PARM_3
      001D78 E5 18            [12] 2045 	mov	a,_gpioConfigure_sloc2_1_0
      001D7A F0               [24] 2046 	movx	@dptr,a
      001D7B E5 19            [12] 2047 	mov	a,(_gpioConfigure_sloc2_1_0 + 1)
      001D7D A3               [24] 2048 	inc	dptr
      001D7E F0               [24] 2049 	movx	@dptr,a
      001D7F E5 1A            [12] 2050 	mov	a,(_gpioConfigure_sloc2_1_0 + 2)
      001D81 A3               [24] 2051 	inc	dptr
      001D82 F0               [24] 2052 	movx	@dptr,a
      001D83 85 12 82         [24] 2053 	mov	dpl,_gpioConfigure_sloc0_1_0
      001D86 C0 04            [24] 2054 	push	ar4
      001D88 12 17 72         [24] 2055 	lcall	___gpio_setBits
      001D8B 85 82 18         [24] 2056 	mov	_gpioConfigure_sloc2_1_0,dpl
      001D8E D0 04            [24] 2057 	pop	ar4
                                   2058 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:331: pintf &= gpioConfig->__clearMask;
      001D90 90 00 C0         [24] 2059 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001D93 E0               [24] 2060 	movx	a,@dptr
      001D94 F5 12            [12] 2061 	mov	_gpioConfigure_sloc0_1_0,a
      001D96 A3               [24] 2062 	inc	dptr
      001D97 E0               [24] 2063 	movx	a,@dptr
      001D98 F5 13            [12] 2064 	mov	(_gpioConfigure_sloc0_1_0 + 1),a
      001D9A A3               [24] 2065 	inc	dptr
      001D9B E0               [24] 2066 	movx	a,@dptr
      001D9C F5 14            [12] 2067 	mov	(_gpioConfigure_sloc0_1_0 + 2),a
      001D9E 74 0C            [12] 2068 	mov	a,#0x0c
      001DA0 25 12            [12] 2069 	add	a,_gpioConfigure_sloc0_1_0
      001DA2 F8               [12] 2070 	mov	r0,a
      001DA3 E4               [12] 2071 	clr	a
      001DA4 35 13            [12] 2072 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001DA6 F9               [12] 2073 	mov	r1,a
      001DA7 AC 14            [24] 2074 	mov	r4,(_gpioConfigure_sloc0_1_0 + 2)
      001DA9 88 82            [24] 2075 	mov	dpl,r0
      001DAB 89 83            [24] 2076 	mov	dph,r1
      001DAD 8C F0            [24] 2077 	mov	b,r4
      001DAF 12 58 3E         [24] 2078 	lcall	__gptrget
      001DB2 F8               [12] 2079 	mov	r0,a
      001DB3 90 00 CD         [24] 2080 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001DB6 E0               [24] 2081 	movx	a,@dptr
      001DB7 58               [12] 2082 	anl	a,r0
      001DB8 F0               [24] 2083 	movx	@dptr,a
                                   2084 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:332: pinte = __gpio_setBits(pinte, gpioConfig->pinInterrupt, gpioConfig);
      001DB9 90 00 CE         [24] 2085 	mov	dptr,#_gpioConfigure_pinte_65537_158
      001DBC E0               [24] 2086 	movx	a,@dptr
      001DBD FC               [12] 2087 	mov	r4,a
      001DBE 74 08            [12] 2088 	mov	a,#0x08
      001DC0 25 12            [12] 2089 	add	a,_gpioConfigure_sloc0_1_0
      001DC2 F9               [12] 2090 	mov	r1,a
      001DC3 E4               [12] 2091 	clr	a
      001DC4 35 13            [12] 2092 	addc	a,(_gpioConfigure_sloc0_1_0 + 1)
      001DC6 FA               [12] 2093 	mov	r2,a
      001DC7 AB 14            [24] 2094 	mov	r3,(_gpioConfigure_sloc0_1_0 + 2)
      001DC9 89 82            [24] 2095 	mov	dpl,r1
      001DCB 8A 83            [24] 2096 	mov	dph,r2
      001DCD 8B F0            [24] 2097 	mov	b,r3
      001DCF 12 58 3E         [24] 2098 	lcall	__gptrget
      001DD2 90 00 B5         [24] 2099 	mov	dptr,#___gpio_setBits_PARM_2
      001DD5 F0               [24] 2100 	movx	@dptr,a
      001DD6 90 00 B6         [24] 2101 	mov	dptr,#___gpio_setBits_PARM_3
      001DD9 E5 12            [12] 2102 	mov	a,_gpioConfigure_sloc0_1_0
      001DDB F0               [24] 2103 	movx	@dptr,a
      001DDC E5 13            [12] 2104 	mov	a,(_gpioConfigure_sloc0_1_0 + 1)
      001DDE A3               [24] 2105 	inc	dptr
      001DDF F0               [24] 2106 	movx	@dptr,a
      001DE0 E5 14            [12] 2107 	mov	a,(_gpioConfigure_sloc0_1_0 + 2)
      001DE2 A3               [24] 2108 	inc	dptr
      001DE3 F0               [24] 2109 	movx	@dptr,a
      001DE4 8C 82            [24] 2110 	mov	dpl,r4
      001DE6 C0 04            [24] 2111 	push	ar4
      001DE8 12 17 72         [24] 2112 	lcall	___gpio_setBits
      001DEB 85 82 12         [24] 2113 	mov	_gpioConfigure_sloc0_1_0,dpl
      001DEE D0 04            [24] 2114 	pop	ar4
                                   2115 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:333: pwkue = __gpio_setBits(pwkue, gpioConfig->wakeUpInterrupt, gpioConfig);
      001DF0 90 00 CF         [24] 2116 	mov	dptr,#_gpioConfigure_pwkue_65537_158
      001DF3 E0               [24] 2117 	movx	a,@dptr
      001DF4 F5 1B            [12] 2118 	mov	_gpioConfigure_sloc3_1_0,a
      001DF6 90 00 C0         [24] 2119 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001DF9 E0               [24] 2120 	movx	a,@dptr
      001DFA F5 1C            [12] 2121 	mov	_gpioConfigure_sloc4_1_0,a
      001DFC A3               [24] 2122 	inc	dptr
      001DFD E0               [24] 2123 	movx	a,@dptr
      001DFE F5 1D            [12] 2124 	mov	(_gpioConfigure_sloc4_1_0 + 1),a
      001E00 A3               [24] 2125 	inc	dptr
      001E01 E0               [24] 2126 	movx	a,@dptr
      001E02 F5 1E            [12] 2127 	mov	(_gpioConfigure_sloc4_1_0 + 2),a
      001E04 74 0A            [12] 2128 	mov	a,#0x0a
      001E06 25 1C            [12] 2129 	add	a,_gpioConfigure_sloc4_1_0
      001E08 F8               [12] 2130 	mov	r0,a
      001E09 E4               [12] 2131 	clr	a
      001E0A 35 1D            [12] 2132 	addc	a,(_gpioConfigure_sloc4_1_0 + 1)
      001E0C FB               [12] 2133 	mov	r3,a
      001E0D AC 1E            [24] 2134 	mov	r4,(_gpioConfigure_sloc4_1_0 + 2)
      001E0F 88 82            [24] 2135 	mov	dpl,r0
      001E11 8B 83            [24] 2136 	mov	dph,r3
      001E13 8C F0            [24] 2137 	mov	b,r4
      001E15 12 58 3E         [24] 2138 	lcall	__gptrget
      001E18 90 00 B5         [24] 2139 	mov	dptr,#___gpio_setBits_PARM_2
      001E1B F0               [24] 2140 	movx	@dptr,a
      001E1C 90 00 B6         [24] 2141 	mov	dptr,#___gpio_setBits_PARM_3
      001E1F E5 1C            [12] 2142 	mov	a,_gpioConfigure_sloc4_1_0
      001E21 F0               [24] 2143 	movx	@dptr,a
      001E22 E5 1D            [12] 2144 	mov	a,(_gpioConfigure_sloc4_1_0 + 1)
      001E24 A3               [24] 2145 	inc	dptr
      001E25 F0               [24] 2146 	movx	@dptr,a
      001E26 E5 1E            [12] 2147 	mov	a,(_gpioConfigure_sloc4_1_0 + 2)
      001E28 A3               [24] 2148 	inc	dptr
      001E29 F0               [24] 2149 	movx	@dptr,a
      001E2A 85 1B 82         [24] 2150 	mov	dpl,_gpioConfigure_sloc3_1_0
      001E2D C0 04            [24] 2151 	push	ar4
      001E2F 12 17 72         [24] 2152 	lcall	___gpio_setBits
      001E32 85 82 1C         [24] 2153 	mov	_gpioConfigure_sloc4_1_0,dpl
      001E35 D0 04            [24] 2154 	pop	ar4
      001E37 D0 05            [24] 2155 	pop	ar5
      001E39 D0 06            [24] 2156 	pop	ar6
      001E3B D0 07            [24] 2157 	pop	ar7
                                   2158 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:336: switch (gpioConfig->port) {
      001E3D 90 00 C0         [24] 2159 	mov	dptr,#_gpioConfigure_gpioConfig_65536_154
      001E40 E0               [24] 2160 	movx	a,@dptr
      001E41 FA               [12] 2161 	mov	r2,a
      001E42 A3               [24] 2162 	inc	dptr
      001E43 E0               [24] 2163 	movx	a,@dptr
      001E44 FB               [12] 2164 	mov	r3,a
      001E45 A3               [24] 2165 	inc	dptr
      001E46 E0               [24] 2166 	movx	a,@dptr
      001E47 FC               [12] 2167 	mov	r4,a
      001E48 8A 82            [24] 2168 	mov	dpl,r2
      001E4A 8B 83            [24] 2169 	mov	dph,r3
      001E4C 8C F0            [24] 2170 	mov	b,r4
      001E4E 12 58 3E         [24] 2171 	lcall	__gptrget
      001E51 F5 1B            [12] 2172 	mov	_gpioConfigure_sloc3_1_0,a
      001E53 74 01            [12] 2173 	mov	a,#0x01
      001E55 B5 1B 04         [24] 2174 	cjne	a,_gpioConfigure_sloc3_1_0,00182$
      001E58 D0 04            [24] 2175 	pop	ar4
      001E5A 80 1A            [24] 2176 	sjmp	00111$
      001E5C                       2177 00182$:
      001E5C D0 04            [24] 2178 	pop	ar4
      001E5E 74 02            [12] 2179 	mov	a,#0x02
      001E60 B5 1B 02         [24] 2180 	cjne	a,_gpioConfigure_sloc3_1_0,00183$
      001E63 80 58            [24] 2181 	sjmp	00112$
      001E65                       2182 00183$:
      001E65 74 03            [12] 2183 	mov	a,#0x03
      001E67 B5 1B 03         [24] 2184 	cjne	a,_gpioConfigure_sloc3_1_0,00184$
      001E6A 02 1F 04         [24] 2185 	ljmp	00113$
      001E6D                       2186 00184$:
      001E6D 74 05            [12] 2187 	mov	a,#0x05
      001E6F B5 1B 03         [24] 2188 	cjne	a,_gpioConfigure_sloc3_1_0,00185$
      001E72 02 1F 4B         [24] 2189 	ljmp	00114$
      001E75                       2190 00185$:
      001E75 22               [24] 2191 	ret
                                   2192 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:368: case GPIO_PORT1:
      001E76                       2193 00111$:
                                   2194 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:369: P1M1 = pm1;
      001E76 8F 91            [24] 2195 	mov	_P1M1,r7
                                   2196 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:370: P1M0 = pm0;
      001E78 8E 92            [24] 2197 	mov	_P1M0,r6
                                   2198 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:373: P1NCS = pncs;
      001E7A 90 FE 19         [24] 2199 	mov	dptr,#_P1NCS
      001E7D ED               [12] 2200 	mov	a,r5
      001E7E F0               [24] 2201 	movx	@dptr,a
                                   2202 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:374: P1PU = ppu;
      001E7F 90 FE 11         [24] 2203 	mov	dptr,#_P1PU
      001E82 EC               [12] 2204 	mov	a,r4
      001E83 F0               [24] 2205 	movx	@dptr,a
                                   2206 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:378: P1DR = pdr;
      001E84 90 00 C8         [24] 2207 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001E87 E0               [24] 2208 	movx	a,@dptr
      001E88 90 FE 29         [24] 2209 	mov	dptr,#_P1DR
      001E8B F0               [24] 2210 	movx	@dptr,a
                                   2211 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:379: P1SR = psr;
      001E8C 90 00 C9         [24] 2212 	mov	dptr,#_gpioConfigure_psr_65537_158
      001E8F E0               [24] 2213 	movx	a,@dptr
      001E90 90 FE 21         [24] 2214 	mov	dptr,#_P1SR
      001E93 F0               [24] 2215 	movx	@dptr,a
                                   2216 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:380: P1IE = pie;
      001E94 90 00 CA         [24] 2217 	mov	dptr,#_gpioConfigure_pie_65537_158
      001E97 E0               [24] 2218 	movx	a,@dptr
      001E98 90 FE 31         [24] 2219 	mov	dptr,#_P1IE
      001E9B F0               [24] 2220 	movx	@dptr,a
                                   2221 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:384: P1IM1 = pim1;
      001E9C 90 FD 31         [24] 2222 	mov	dptr,#_P1IM1
      001E9F E5 15            [12] 2223 	mov	a,_gpioConfigure_sloc1_1_0
      001EA1 F0               [24] 2224 	movx	@dptr,a
                                   2225 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:385: P1IM0 = pim0;
      001EA2 90 FD 21         [24] 2226 	mov	dptr,#_P1IM0
      001EA5 E5 18            [12] 2227 	mov	a,_gpioConfigure_sloc2_1_0
      001EA7 F0               [24] 2228 	movx	@dptr,a
                                   2229 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:386: P1INTF = pintf;
      001EA8 90 00 CD         [24] 2230 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001EAB E0               [24] 2231 	movx	a,@dptr
      001EAC 90 FD 11         [24] 2232 	mov	dptr,#_P1INTF
      001EAF F0               [24] 2233 	movx	@dptr,a
                                   2234 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:387: P1INTE = pinte;
      001EB0 90 FD 01         [24] 2235 	mov	dptr,#_P1INTE
      001EB3 E5 12            [12] 2236 	mov	a,_gpioConfigure_sloc0_1_0
      001EB5 F0               [24] 2237 	movx	@dptr,a
                                   2238 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:388: P1WKUE = pwkue;
      001EB6 90 FD 41         [24] 2239 	mov	dptr,#_P1WKUE
      001EB9 E5 1C            [12] 2240 	mov	a,_gpioConfigure_sloc4_1_0
      001EBB F0               [24] 2241 	movx	@dptr,a
                                   2242 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:390: break;
      001EBC 22               [24] 2243 	ret
                                   2244 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:396: case GPIO_PORT2:
      001EBD                       2245 00112$:
                                   2246 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:397: P2M1 = pm1;
      001EBD 8F 95            [24] 2247 	mov	_P2M1,r7
                                   2248 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:398: P2M0 = pm0;
      001EBF 8E 96            [24] 2249 	mov	_P2M0,r6
                                   2250 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:401: P2NCS = pncs;
      001EC1 90 FE 1A         [24] 2251 	mov	dptr,#_P2NCS
      001EC4 ED               [12] 2252 	mov	a,r5
      001EC5 F0               [24] 2253 	movx	@dptr,a
                                   2254 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:402: P2PU = ppu;
      001EC6 90 FE 12         [24] 2255 	mov	dptr,#_P2PU
      001EC9 EC               [12] 2256 	mov	a,r4
      001ECA F0               [24] 2257 	movx	@dptr,a
                                   2258 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:406: P2DR = pdr;
      001ECB 90 00 C8         [24] 2259 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001ECE E0               [24] 2260 	movx	a,@dptr
      001ECF 90 FE 2A         [24] 2261 	mov	dptr,#_P2DR
      001ED2 F0               [24] 2262 	movx	@dptr,a
                                   2263 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:407: P2SR = psr;
      001ED3 90 00 C9         [24] 2264 	mov	dptr,#_gpioConfigure_psr_65537_158
      001ED6 E0               [24] 2265 	movx	a,@dptr
      001ED7 90 FE 22         [24] 2266 	mov	dptr,#_P2SR
      001EDA F0               [24] 2267 	movx	@dptr,a
                                   2268 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:408: P2IE = pie;
      001EDB 90 00 CA         [24] 2269 	mov	dptr,#_gpioConfigure_pie_65537_158
      001EDE E0               [24] 2270 	movx	a,@dptr
      001EDF 90 FE 32         [24] 2271 	mov	dptr,#_P2IE
      001EE2 F0               [24] 2272 	movx	@dptr,a
                                   2273 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:412: P2IM1 = pim1;
      001EE3 90 FD 32         [24] 2274 	mov	dptr,#_P2IM1
      001EE6 E5 15            [12] 2275 	mov	a,_gpioConfigure_sloc1_1_0
      001EE8 F0               [24] 2276 	movx	@dptr,a
                                   2277 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:413: P2IM0 = pim0;
      001EE9 90 FD 22         [24] 2278 	mov	dptr,#_P2IM0
      001EEC E5 18            [12] 2279 	mov	a,_gpioConfigure_sloc2_1_0
      001EEE F0               [24] 2280 	movx	@dptr,a
                                   2281 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:414: P2INTF = pintf;
      001EEF 90 00 CD         [24] 2282 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001EF2 E0               [24] 2283 	movx	a,@dptr
      001EF3 90 FD 12         [24] 2284 	mov	dptr,#_P2INTF
      001EF6 F0               [24] 2285 	movx	@dptr,a
                                   2286 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:415: P2INTE = pinte;
      001EF7 90 FD 02         [24] 2287 	mov	dptr,#_P2INTE
      001EFA E5 12            [12] 2288 	mov	a,_gpioConfigure_sloc0_1_0
      001EFC F0               [24] 2289 	movx	@dptr,a
                                   2290 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:416: P2WKUE = pwkue;
      001EFD 90 FD 42         [24] 2291 	mov	dptr,#_P2WKUE
      001F00 E5 1C            [12] 2292 	mov	a,_gpioConfigure_sloc4_1_0
      001F02 F0               [24] 2293 	movx	@dptr,a
                                   2294 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:418: break;
      001F03 22               [24] 2295 	ret
                                   2296 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:423: case GPIO_PORT3:
      001F04                       2297 00113$:
                                   2298 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:424: P3M1 = pm1;
      001F04 8F B1            [24] 2299 	mov	_P3M1,r7
                                   2300 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:425: P3M0 = pm0;
      001F06 8E B2            [24] 2301 	mov	_P3M0,r6
                                   2302 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:428: P3NCS = pncs;
      001F08 90 FE 1B         [24] 2303 	mov	dptr,#_P3NCS
      001F0B ED               [12] 2304 	mov	a,r5
      001F0C F0               [24] 2305 	movx	@dptr,a
                                   2306 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:429: P3PU = ppu;
      001F0D 90 FE 13         [24] 2307 	mov	dptr,#_P3PU
      001F10 EC               [12] 2308 	mov	a,r4
      001F11 F0               [24] 2309 	movx	@dptr,a
                                   2310 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:433: P3DR = pdr;
      001F12 90 00 C8         [24] 2311 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001F15 E0               [24] 2312 	movx	a,@dptr
      001F16 90 FE 2B         [24] 2313 	mov	dptr,#_P3DR
      001F19 F0               [24] 2314 	movx	@dptr,a
                                   2315 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:434: P3SR = psr;
      001F1A 90 00 C9         [24] 2316 	mov	dptr,#_gpioConfigure_psr_65537_158
      001F1D E0               [24] 2317 	movx	a,@dptr
      001F1E 90 FE 23         [24] 2318 	mov	dptr,#_P3SR
      001F21 F0               [24] 2319 	movx	@dptr,a
                                   2320 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:435: P3IE = pie;
      001F22 90 00 CA         [24] 2321 	mov	dptr,#_gpioConfigure_pie_65537_158
      001F25 E0               [24] 2322 	movx	a,@dptr
      001F26 90 FE 33         [24] 2323 	mov	dptr,#_P3IE
      001F29 F0               [24] 2324 	movx	@dptr,a
                                   2325 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:439: P3IM1 = pim1;
      001F2A 90 FD 33         [24] 2326 	mov	dptr,#_P3IM1
      001F2D E5 15            [12] 2327 	mov	a,_gpioConfigure_sloc1_1_0
      001F2F F0               [24] 2328 	movx	@dptr,a
                                   2329 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:440: P3IM0 = pim0;
      001F30 90 FD 23         [24] 2330 	mov	dptr,#_P3IM0
      001F33 E5 18            [12] 2331 	mov	a,_gpioConfigure_sloc2_1_0
      001F35 F0               [24] 2332 	movx	@dptr,a
                                   2333 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:441: P3INTF = pintf;
      001F36 90 00 CD         [24] 2334 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001F39 E0               [24] 2335 	movx	a,@dptr
      001F3A 90 FD 13         [24] 2336 	mov	dptr,#_P3INTF
      001F3D F0               [24] 2337 	movx	@dptr,a
                                   2338 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:442: P3INTE = pinte;
      001F3E 90 FD 03         [24] 2339 	mov	dptr,#_P3INTE
      001F41 E5 12            [12] 2340 	mov	a,_gpioConfigure_sloc0_1_0
      001F43 F0               [24] 2341 	movx	@dptr,a
                                   2342 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:443: P3WKUE = pwkue;
      001F44 90 FD 43         [24] 2343 	mov	dptr,#_P3WKUE
      001F47 E5 1C            [12] 2344 	mov	a,_gpioConfigure_sloc4_1_0
      001F49 F0               [24] 2345 	movx	@dptr,a
                                   2346 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:445: break;
                                   2347 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:478: case GPIO_PORT5:
      001F4A 22               [24] 2348 	ret
      001F4B                       2349 00114$:
                                   2350 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:479: P5M1 = pm1;
      001F4B 8F C9            [24] 2351 	mov	_P5M1,r7
                                   2352 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:480: P5M0 = pm0;
      001F4D 8E CA            [24] 2353 	mov	_P5M0,r6
                                   2354 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:483: P5NCS = pncs;
      001F4F 90 FE 1D         [24] 2355 	mov	dptr,#_P5NCS
      001F52 ED               [12] 2356 	mov	a,r5
      001F53 F0               [24] 2357 	movx	@dptr,a
                                   2358 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:484: P5PU = ppu;
      001F54 90 FE 15         [24] 2359 	mov	dptr,#_P5PU
      001F57 EC               [12] 2360 	mov	a,r4
      001F58 F0               [24] 2361 	movx	@dptr,a
                                   2362 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:488: P5DR = pdr;
      001F59 90 00 C8         [24] 2363 	mov	dptr,#_gpioConfigure_pdr_65537_158
      001F5C E0               [24] 2364 	movx	a,@dptr
      001F5D 90 FE 2D         [24] 2365 	mov	dptr,#_P5DR
      001F60 F0               [24] 2366 	movx	@dptr,a
                                   2367 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:489: P5SR = psr;
      001F61 90 00 C9         [24] 2368 	mov	dptr,#_gpioConfigure_psr_65537_158
      001F64 E0               [24] 2369 	movx	a,@dptr
      001F65 90 FE 25         [24] 2370 	mov	dptr,#_P5SR
      001F68 F0               [24] 2371 	movx	@dptr,a
                                   2372 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:490: P5IE = pie;
      001F69 90 00 CA         [24] 2373 	mov	dptr,#_gpioConfigure_pie_65537_158
      001F6C E0               [24] 2374 	movx	a,@dptr
      001F6D 90 FE 35         [24] 2375 	mov	dptr,#_P5IE
      001F70 F0               [24] 2376 	movx	@dptr,a
                                   2377 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:494: P5IM1 = pim1;
      001F71 90 FD 35         [24] 2378 	mov	dptr,#_P5IM1
      001F74 E5 15            [12] 2379 	mov	a,_gpioConfigure_sloc1_1_0
      001F76 F0               [24] 2380 	movx	@dptr,a
                                   2381 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:495: P5IM0 = pim0;
      001F77 90 FD 25         [24] 2382 	mov	dptr,#_P5IM0
      001F7A E5 18            [12] 2383 	mov	a,_gpioConfigure_sloc2_1_0
      001F7C F0               [24] 2384 	movx	@dptr,a
                                   2385 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:496: P5INTF = pintf;
      001F7D 90 00 CD         [24] 2386 	mov	dptr,#_gpioConfigure_pintf_65537_158
      001F80 E0               [24] 2387 	movx	a,@dptr
      001F81 90 FD 15         [24] 2388 	mov	dptr,#_P5INTF
      001F84 F0               [24] 2389 	movx	@dptr,a
                                   2390 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:497: P5INTE = pinte;
      001F85 90 FD 05         [24] 2391 	mov	dptr,#_P5INTE
      001F88 E5 12            [12] 2392 	mov	a,_gpioConfigure_sloc0_1_0
      001F8A F0               [24] 2393 	movx	@dptr,a
                                   2394 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:498: P5WKUE = pwkue;
      001F8B 90 FD 45         [24] 2395 	mov	dptr,#_P5WKUE
      001F8E E5 1C            [12] 2396 	mov	a,_gpioConfigure_sloc4_1_0
      001F90 F0               [24] 2397 	movx	@dptr,a
                                   2398 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:558: }
                                   2399 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:559: }
      001F91 22               [24] 2400 	ret
                                   2401 ;------------------------------------------------------------
                                   2402 ;Allocation info for local variables in function '__getPort'
                                   2403 ;------------------------------------------------------------
                                   2404 ;port                      Allocated with name '___getPort_port_65536_163'
                                   2405 ;value                     Allocated with name '___getPort_value_65536_164'
                                   2406 ;------------------------------------------------------------
                                   2407 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:561: static uint8_t __getPort(GpioPort port) {
                                   2408 ;	-----------------------------------------
                                   2409 ;	 function __getPort
                                   2410 ;	-----------------------------------------
      001F92                       2411 ___getPort:
      001F92 E5 82            [12] 2412 	mov	a,dpl
      001F94 90 00 D0         [24] 2413 	mov	dptr,#___getPort_port_65536_163
      001F97 F0               [24] 2414 	movx	@dptr,a
                                   2415 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:562: uint8_t value = 0;
      001F98 90 00 D1         [24] 2416 	mov	dptr,#___getPort_value_65536_164
      001F9B E4               [12] 2417 	clr	a
      001F9C F0               [24] 2418 	movx	@dptr,a
                                   2419 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:564: switch (port) {
      001F9D 90 00 D0         [24] 2420 	mov	dptr,#___getPort_port_65536_163
      001FA0 E0               [24] 2421 	movx	a,@dptr
      001FA1 FF               [12] 2422 	mov	r7,a
      001FA2 BF 01 02         [24] 2423 	cjne	r7,#0x01,00124$
      001FA5 80 0F            [24] 2424 	sjmp	00101$
      001FA7                       2425 00124$:
      001FA7 BF 02 02         [24] 2426 	cjne	r7,#0x02,00125$
      001FAA 80 12            [24] 2427 	sjmp	00102$
      001FAC                       2428 00125$:
      001FAC BF 03 02         [24] 2429 	cjne	r7,#0x03,00126$
      001FAF 80 15            [24] 2430 	sjmp	00103$
      001FB1                       2431 00126$:
                                   2432 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:574: case GPIO_PORT1:
      001FB1 BF 05 20         [24] 2433 	cjne	r7,#0x05,00105$
      001FB4 80 18            [24] 2434 	sjmp	00104$
      001FB6                       2435 00101$:
                                   2436 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:575: value = P1;
      001FB6 90 00 D1         [24] 2437 	mov	dptr,#___getPort_value_65536_164
      001FB9 E5 90            [12] 2438 	mov	a,_P1
      001FBB F0               [24] 2439 	movx	@dptr,a
                                   2440 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:576: break;
                                   2441 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:581: case GPIO_PORT2:
      001FBC 80 16            [24] 2442 	sjmp	00105$
      001FBE                       2443 00102$:
                                   2444 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:582: value = P2;
      001FBE 90 00 D1         [24] 2445 	mov	dptr,#___getPort_value_65536_164
      001FC1 E5 A0            [12] 2446 	mov	a,_P2
      001FC3 F0               [24] 2447 	movx	@dptr,a
                                   2448 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:583: break;
                                   2449 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:587: case GPIO_PORT3:
      001FC4 80 0E            [24] 2450 	sjmp	00105$
      001FC6                       2451 00103$:
                                   2452 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:588: value = P3;
      001FC6 90 00 D1         [24] 2453 	mov	dptr,#___getPort_value_65536_164
      001FC9 E5 B0            [12] 2454 	mov	a,_P3
      001FCB F0               [24] 2455 	movx	@dptr,a
                                   2456 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:589: break;
                                   2457 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:600: case GPIO_PORT5:
      001FCC 80 06            [24] 2458 	sjmp	00105$
      001FCE                       2459 00104$:
                                   2460 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:601: value = P5;
      001FCE 90 00 D1         [24] 2461 	mov	dptr,#___getPort_value_65536_164
      001FD1 E5 C8            [12] 2462 	mov	a,_P5
      001FD3 F0               [24] 2463 	movx	@dptr,a
                                   2464 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:619: }
      001FD4                       2465 00105$:
                                   2466 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:621: return value;
      001FD4 90 00 D1         [24] 2467 	mov	dptr,#___getPort_value_65536_164
      001FD7 E0               [24] 2468 	movx	a,@dptr
                                   2469 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:622: }
      001FD8 F5 82            [12] 2470 	mov	dpl,a
      001FDA 22               [24] 2471 	ret
                                   2472 ;------------------------------------------------------------
                                   2473 ;Allocation info for local variables in function 'gpioRead'
                                   2474 ;------------------------------------------------------------
                                   2475 ;gpioConfig                Allocated with name '_gpioRead_gpioConfig_65536_166'
                                   2476 ;------------------------------------------------------------
                                   2477 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:624: uint8_t gpioRead(GpioConfig *gpioConfig) {
                                   2478 ;	-----------------------------------------
                                   2479 ;	 function gpioRead
                                   2480 ;	-----------------------------------------
      001FDB                       2481 _gpioRead:
      001FDB AF F0            [24] 2482 	mov	r7,b
      001FDD AE 83            [24] 2483 	mov	r6,dph
      001FDF E5 82            [12] 2484 	mov	a,dpl
      001FE1 90 00 D2         [24] 2485 	mov	dptr,#_gpioRead_gpioConfig_65536_166
      001FE4 F0               [24] 2486 	movx	@dptr,a
      001FE5 EE               [12] 2487 	mov	a,r6
      001FE6 A3               [24] 2488 	inc	dptr
      001FE7 F0               [24] 2489 	movx	@dptr,a
      001FE8 EF               [12] 2490 	mov	a,r7
      001FE9 A3               [24] 2491 	inc	dptr
      001FEA F0               [24] 2492 	movx	@dptr,a
                                   2493 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:625: return (__getPort(gpioConfig->port) & gpioConfig->__setMask) >> gpioConfig->pin;
      001FEB 90 00 D2         [24] 2494 	mov	dptr,#_gpioRead_gpioConfig_65536_166
      001FEE E0               [24] 2495 	movx	a,@dptr
      001FEF FD               [12] 2496 	mov	r5,a
      001FF0 A3               [24] 2497 	inc	dptr
      001FF1 E0               [24] 2498 	movx	a,@dptr
      001FF2 FE               [12] 2499 	mov	r6,a
      001FF3 A3               [24] 2500 	inc	dptr
      001FF4 E0               [24] 2501 	movx	a,@dptr
      001FF5 FF               [12] 2502 	mov	r7,a
      001FF6 8D 82            [24] 2503 	mov	dpl,r5
      001FF8 8E 83            [24] 2504 	mov	dph,r6
      001FFA 8F F0            [24] 2505 	mov	b,r7
      001FFC 12 58 3E         [24] 2506 	lcall	__gptrget
      001FFF F5 82            [12] 2507 	mov	dpl,a
      002001 C0 07            [24] 2508 	push	ar7
      002003 C0 06            [24] 2509 	push	ar6
      002005 C0 05            [24] 2510 	push	ar5
      002007 12 1F 92         [24] 2511 	lcall	___getPort
      00200A AC 82            [24] 2512 	mov	r4,dpl
      00200C D0 05            [24] 2513 	pop	ar5
      00200E D0 06            [24] 2514 	pop	ar6
      002010 D0 07            [24] 2515 	pop	ar7
      002012 74 0B            [12] 2516 	mov	a,#0x0b
      002014 2D               [12] 2517 	add	a,r5
      002015 F9               [12] 2518 	mov	r1,a
      002016 E4               [12] 2519 	clr	a
      002017 3E               [12] 2520 	addc	a,r6
      002018 FA               [12] 2521 	mov	r2,a
      002019 8F 03            [24] 2522 	mov	ar3,r7
      00201B 89 82            [24] 2523 	mov	dpl,r1
      00201D 8A 83            [24] 2524 	mov	dph,r2
      00201F 8B F0            [24] 2525 	mov	b,r3
      002021 12 58 3E         [24] 2526 	lcall	__gptrget
      002024 52 04            [12] 2527 	anl	ar4,a
      002026 0D               [12] 2528 	inc	r5
      002027 BD 00 01         [24] 2529 	cjne	r5,#0x00,00103$
      00202A 0E               [12] 2530 	inc	r6
      00202B                       2531 00103$:
      00202B 8D 82            [24] 2532 	mov	dpl,r5
      00202D 8E 83            [24] 2533 	mov	dph,r6
      00202F 8F F0            [24] 2534 	mov	b,r7
      002031 12 58 3E         [24] 2535 	lcall	__gptrget
      002034 FD               [12] 2536 	mov	r5,a
      002035 8D F0            [24] 2537 	mov	b,r5
      002037 05 F0            [12] 2538 	inc	b
      002039 EC               [12] 2539 	mov	a,r4
      00203A 80 02            [24] 2540 	sjmp	00105$
      00203C                       2541 00104$:
      00203C C3               [12] 2542 	clr	c
      00203D 13               [12] 2543 	rrc	a
      00203E                       2544 00105$:
      00203E D5 F0 FB         [24] 2545 	djnz	b,00104$
                                   2546 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:626: }
      002041 F5 82            [12] 2547 	mov	dpl,a
      002043 22               [24] 2548 	ret
                                   2549 ;------------------------------------------------------------
                                   2550 ;Allocation info for local variables in function 'gpioWrite'
                                   2551 ;------------------------------------------------------------
                                   2552 ;value                     Allocated with name '_gpioWrite_PARM_2'
                                   2553 ;gpioConfig                Allocated with name '_gpioWrite_gpioConfig_65536_168'
                                   2554 ;------------------------------------------------------------
                                   2555 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:628: void gpioWrite(GpioConfig *gpioConfig, uint8_t value) {
                                   2556 ;	-----------------------------------------
                                   2557 ;	 function gpioWrite
                                   2558 ;	-----------------------------------------
      002044                       2559 _gpioWrite:
      002044 AF F0            [24] 2560 	mov	r7,b
      002046 AE 83            [24] 2561 	mov	r6,dph
      002048 E5 82            [12] 2562 	mov	a,dpl
      00204A 90 00 D6         [24] 2563 	mov	dptr,#_gpioWrite_gpioConfig_65536_168
      00204D F0               [24] 2564 	movx	@dptr,a
      00204E EE               [12] 2565 	mov	a,r6
      00204F A3               [24] 2566 	inc	dptr
      002050 F0               [24] 2567 	movx	@dptr,a
      002051 EF               [12] 2568 	mov	a,r7
      002052 A3               [24] 2569 	inc	dptr
      002053 F0               [24] 2570 	movx	@dptr,a
                                   2571 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:629: if (gpioConfig->count == 1) {
      002054 90 00 D6         [24] 2572 	mov	dptr,#_gpioWrite_gpioConfig_65536_168
      002057 E0               [24] 2573 	movx	a,@dptr
      002058 FD               [12] 2574 	mov	r5,a
      002059 A3               [24] 2575 	inc	dptr
      00205A E0               [24] 2576 	movx	a,@dptr
      00205B FE               [12] 2577 	mov	r6,a
      00205C A3               [24] 2578 	inc	dptr
      00205D E0               [24] 2579 	movx	a,@dptr
      00205E FF               [12] 2580 	mov	r7,a
      00205F 74 02            [12] 2581 	mov	a,#0x02
      002061 2D               [12] 2582 	add	a,r5
      002062 FA               [12] 2583 	mov	r2,a
      002063 E4               [12] 2584 	clr	a
      002064 3E               [12] 2585 	addc	a,r6
      002065 FB               [12] 2586 	mov	r3,a
      002066 8F 04            [24] 2587 	mov	ar4,r7
      002068 8A 82            [24] 2588 	mov	dpl,r2
      00206A 8B 83            [24] 2589 	mov	dph,r3
      00206C 8C F0            [24] 2590 	mov	b,r4
      00206E 12 58 3E         [24] 2591 	lcall	__gptrget
      002071 FA               [12] 2592 	mov	r2,a
      002072 BA 01 15         [24] 2593 	cjne	r2,#0x01,00102$
                                   2594 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:633: value = value ? 1 : 0;
      002075 90 00 D5         [24] 2595 	mov	dptr,#_gpioWrite_PARM_2
      002078 E0               [24] 2596 	movx	a,@dptr
      002079 60 06            [24] 2597 	jz	00110$
      00207B 7B 01            [12] 2598 	mov	r3,#0x01
      00207D 7C 00            [12] 2599 	mov	r4,#0x00
      00207F 80 04            [24] 2600 	sjmp	00111$
      002081                       2601 00110$:
      002081 7B 00            [12] 2602 	mov	r3,#0x00
      002083 7C 00            [12] 2603 	mov	r4,#0x00
      002085                       2604 00111$:
      002085 90 00 D5         [24] 2605 	mov	dptr,#_gpioWrite_PARM_2
      002088 EB               [12] 2606 	mov	a,r3
      002089 F0               [24] 2607 	movx	@dptr,a
      00208A                       2608 00102$:
                                   2609 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:636: value = (value << gpioConfig->pin) & gpioConfig->__setMask;
      00208A 74 01            [12] 2610 	mov	a,#0x01
      00208C 2D               [12] 2611 	add	a,r5
      00208D FA               [12] 2612 	mov	r2,a
      00208E E4               [12] 2613 	clr	a
      00208F 3E               [12] 2614 	addc	a,r6
      002090 FB               [12] 2615 	mov	r3,a
      002091 8F 04            [24] 2616 	mov	ar4,r7
      002093 8A 82            [24] 2617 	mov	dpl,r2
      002095 8B 83            [24] 2618 	mov	dph,r3
      002097 8C F0            [24] 2619 	mov	b,r4
      002099 12 58 3E         [24] 2620 	lcall	__gptrget
      00209C FA               [12] 2621 	mov	r2,a
      00209D 90 00 D5         [24] 2622 	mov	dptr,#_gpioWrite_PARM_2
      0020A0 E0               [24] 2623 	movx	a,@dptr
      0020A1 8A F0            [24] 2624 	mov	b,r2
      0020A3 05 F0            [12] 2625 	inc	b
      0020A5 80 02            [24] 2626 	sjmp	00141$
      0020A7                       2627 00139$:
      0020A7 25 E0            [12] 2628 	add	a,acc
      0020A9                       2629 00141$:
      0020A9 D5 F0 FB         [24] 2630 	djnz	b,00139$
      0020AC FA               [12] 2631 	mov	r2,a
      0020AD 74 0B            [12] 2632 	mov	a,#0x0b
      0020AF 2D               [12] 2633 	add	a,r5
      0020B0 F9               [12] 2634 	mov	r1,a
      0020B1 E4               [12] 2635 	clr	a
      0020B2 3E               [12] 2636 	addc	a,r6
      0020B3 FB               [12] 2637 	mov	r3,a
      0020B4 8F 04            [24] 2638 	mov	ar4,r7
      0020B6 89 82            [24] 2639 	mov	dpl,r1
      0020B8 8B 83            [24] 2640 	mov	dph,r3
      0020BA 8C F0            [24] 2641 	mov	b,r4
      0020BC 12 58 3E         [24] 2642 	lcall	__gptrget
      0020BF 90 00 D5         [24] 2643 	mov	dptr,#_gpioWrite_PARM_2
      0020C2 5A               [12] 2644 	anl	a,r2
      0020C3 F0               [24] 2645 	movx	@dptr,a
                                   2646 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:637: value |= __getPort(gpioConfig->port) & gpioConfig->__clearMask;
      0020C4 8D 82            [24] 2647 	mov	dpl,r5
      0020C6 8E 83            [24] 2648 	mov	dph,r6
      0020C8 8F F0            [24] 2649 	mov	b,r7
      0020CA 12 58 3E         [24] 2650 	lcall	__gptrget
      0020CD F5 82            [12] 2651 	mov	dpl,a
      0020CF C0 07            [24] 2652 	push	ar7
      0020D1 C0 06            [24] 2653 	push	ar6
      0020D3 C0 05            [24] 2654 	push	ar5
      0020D5 12 1F 92         [24] 2655 	lcall	___getPort
      0020D8 AC 82            [24] 2656 	mov	r4,dpl
      0020DA D0 05            [24] 2657 	pop	ar5
      0020DC D0 06            [24] 2658 	pop	ar6
      0020DE D0 07            [24] 2659 	pop	ar7
      0020E0 74 0C            [12] 2660 	mov	a,#0x0c
      0020E2 2D               [12] 2661 	add	a,r5
      0020E3 F9               [12] 2662 	mov	r1,a
      0020E4 E4               [12] 2663 	clr	a
      0020E5 3E               [12] 2664 	addc	a,r6
      0020E6 FA               [12] 2665 	mov	r2,a
      0020E7 8F 03            [24] 2666 	mov	ar3,r7
      0020E9 89 82            [24] 2667 	mov	dpl,r1
      0020EB 8A 83            [24] 2668 	mov	dph,r2
      0020ED 8B F0            [24] 2669 	mov	b,r3
      0020EF 12 58 3E         [24] 2670 	lcall	__gptrget
      0020F2 F9               [12] 2671 	mov	r1,a
      0020F3 52 04            [12] 2672 	anl	ar4,a
      0020F5 90 00 D5         [24] 2673 	mov	dptr,#_gpioWrite_PARM_2
      0020F8 E0               [24] 2674 	movx	a,@dptr
      0020F9 4C               [12] 2675 	orl	a,r4
      0020FA F0               [24] 2676 	movx	@dptr,a
                                   2677 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:639: switch (gpioConfig->port) {
      0020FB 8D 82            [24] 2678 	mov	dpl,r5
      0020FD 8E 83            [24] 2679 	mov	dph,r6
      0020FF 8F F0            [24] 2680 	mov	b,r7
      002101 12 58 3E         [24] 2681 	lcall	__gptrget
      002104 FF               [12] 2682 	mov	r7,a
      002105 BF 01 02         [24] 2683 	cjne	r7,#0x01,00142$
      002108 80 0F            [24] 2684 	sjmp	00103$
      00210A                       2685 00142$:
      00210A BF 02 02         [24] 2686 	cjne	r7,#0x02,00143$
      00210D 80 11            [24] 2687 	sjmp	00104$
      00210F                       2688 00143$:
      00210F BF 03 02         [24] 2689 	cjne	r7,#0x03,00144$
      002112 80 13            [24] 2690 	sjmp	00105$
      002114                       2691 00144$:
                                   2692 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:649: case GPIO_PORT1:
      002114 BF 05 1D         [24] 2693 	cjne	r7,#0x05,00108$
      002117 80 15            [24] 2694 	sjmp	00106$
      002119                       2695 00103$:
                                   2696 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:650: P1 = value;
      002119 90 00 D5         [24] 2697 	mov	dptr,#_gpioWrite_PARM_2
      00211C E0               [24] 2698 	movx	a,@dptr
      00211D F5 90            [12] 2699 	mov	_P1,a
                                   2700 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:651: break;
                                   2701 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:656: case GPIO_PORT2:
      00211F 22               [24] 2702 	ret
      002120                       2703 00104$:
                                   2704 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:657: P2 = value;
      002120 90 00 D5         [24] 2705 	mov	dptr,#_gpioWrite_PARM_2
      002123 E0               [24] 2706 	movx	a,@dptr
      002124 F5 A0            [12] 2707 	mov	_P2,a
                                   2708 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:658: break;
                                   2709 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:662: case GPIO_PORT3:
      002126 22               [24] 2710 	ret
      002127                       2711 00105$:
                                   2712 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:663: P3 = value;
      002127 90 00 D5         [24] 2713 	mov	dptr,#_gpioWrite_PARM_2
      00212A E0               [24] 2714 	movx	a,@dptr
      00212B F5 B0            [12] 2715 	mov	_P3,a
                                   2716 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:664: break;
                                   2717 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:675: case GPIO_PORT5:
      00212D 22               [24] 2718 	ret
      00212E                       2719 00106$:
                                   2720 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:676: P5 = value;
      00212E 90 00 D5         [24] 2721 	mov	dptr,#_gpioWrite_PARM_2
      002131 E0               [24] 2722 	movx	a,@dptr
      002132 F5 C8            [12] 2723 	mov	_P5,a
                                   2724 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:693: }
      002134                       2725 00108$:
                                   2726 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.c:694: }
      002134 22               [24] 2727 	ret
                                   2728 	.area CSEG    (CODE)
                                   2729 	.area CONST   (CODE)
      005E3A                       2730 _FONTS:
      005E3A 00                    2731 	.db #0x00	; 0
      005E3B 00                    2732 	.db #0x00	; 0
      005E3C 00                    2733 	.db #0x00	; 0
      005E3D 00                    2734 	.db #0x00	; 0
      005E3E 00                    2735 	.db #0x00	; 0
      005E3F 81                    2736 	.db #0x81	; 129
      005E40 81                    2737 	.db #0x81	; 129
      005E41 18                    2738 	.db #0x18	; 24
      005E42 81                    2739 	.db #0x81	; 129
      005E43 81                    2740 	.db #0x81	; 129
      005E44 00                    2741 	.db #0x00	; 0
      005E45 07                    2742 	.db #0x07	; 7
      005E46 00                    2743 	.db #0x00	; 0
      005E47 07                    2744 	.db #0x07	; 7
      005E48 00                    2745 	.db #0x00	; 0
      005E49 14                    2746 	.db #0x14	; 20
      005E4A 7F                    2747 	.db #0x7f	; 127
      005E4B 14                    2748 	.db #0x14	; 20
      005E4C 7F                    2749 	.db #0x7f	; 127
      005E4D 14                    2750 	.db #0x14	; 20
      005E4E 24                    2751 	.db #0x24	; 36
      005E4F 2A                    2752 	.db #0x2a	; 42
      005E50 7F                    2753 	.db #0x7f	; 127
      005E51 2A                    2754 	.db #0x2a	; 42
      005E52 12                    2755 	.db #0x12	; 18
      005E53 23                    2756 	.db #0x23	; 35
      005E54 13                    2757 	.db #0x13	; 19
      005E55 08                    2758 	.db #0x08	; 8
      005E56 64                    2759 	.db #0x64	; 100	'd'
      005E57 62                    2760 	.db #0x62	; 98	'b'
      005E58 36                    2761 	.db #0x36	; 54	'6'
      005E59 49                    2762 	.db #0x49	; 73	'I'
      005E5A 55                    2763 	.db #0x55	; 85	'U'
      005E5B 22                    2764 	.db #0x22	; 34
      005E5C 50                    2765 	.db #0x50	; 80	'P'
      005E5D 00                    2766 	.db #0x00	; 0
      005E5E 05                    2767 	.db #0x05	; 5
      005E5F 03                    2768 	.db #0x03	; 3
      005E60 00                    2769 	.db #0x00	; 0
      005E61 00                    2770 	.db #0x00	; 0
      005E62 00                    2771 	.db #0x00	; 0
      005E63 1C                    2772 	.db #0x1c	; 28
      005E64 22                    2773 	.db #0x22	; 34
      005E65 41                    2774 	.db #0x41	; 65	'A'
      005E66 00                    2775 	.db #0x00	; 0
      005E67 00                    2776 	.db #0x00	; 0
      005E68 41                    2777 	.db #0x41	; 65	'A'
      005E69 22                    2778 	.db #0x22	; 34
      005E6A 1C                    2779 	.db #0x1c	; 28
      005E6B 00                    2780 	.db #0x00	; 0
      005E6C 14                    2781 	.db #0x14	; 20
      005E6D 08                    2782 	.db #0x08	; 8
      005E6E 3E                    2783 	.db #0x3e	; 62
      005E6F 08                    2784 	.db #0x08	; 8
      005E70 14                    2785 	.db #0x14	; 20
      005E71 08                    2786 	.db #0x08	; 8
      005E72 08                    2787 	.db #0x08	; 8
      005E73 3E                    2788 	.db #0x3e	; 62
      005E74 08                    2789 	.db #0x08	; 8
      005E75 08                    2790 	.db #0x08	; 8
      005E76 00                    2791 	.db #0x00	; 0
      005E77 50                    2792 	.db #0x50	; 80	'P'
      005E78 30                    2793 	.db #0x30	; 48	'0'
      005E79 00                    2794 	.db #0x00	; 0
      005E7A 00                    2795 	.db #0x00	; 0
      005E7B 08                    2796 	.db #0x08	; 8
      005E7C 08                    2797 	.db #0x08	; 8
      005E7D 08                    2798 	.db #0x08	; 8
      005E7E 08                    2799 	.db #0x08	; 8
      005E7F 08                    2800 	.db #0x08	; 8
      005E80 00                    2801 	.db #0x00	; 0
      005E81 60                    2802 	.db #0x60	; 96
      005E82 60                    2803 	.db #0x60	; 96
      005E83 00                    2804 	.db #0x00	; 0
      005E84 00                    2805 	.db #0x00	; 0
      005E85 20                    2806 	.db #0x20	; 32
      005E86 10                    2807 	.db #0x10	; 16
      005E87 08                    2808 	.db #0x08	; 8
      005E88 04                    2809 	.db #0x04	; 4
      005E89 02                    2810 	.db #0x02	; 2
      005E8A 3E                    2811 	.db #0x3e	; 62
      005E8B 51                    2812 	.db #0x51	; 81	'Q'
      005E8C 49                    2813 	.db #0x49	; 73	'I'
      005E8D 45                    2814 	.db #0x45	; 69	'E'
      005E8E 3E                    2815 	.db #0x3e	; 62
      005E8F 00                    2816 	.db #0x00	; 0
      005E90 42                    2817 	.db #0x42	; 66	'B'
      005E91 7F                    2818 	.db #0x7f	; 127
      005E92 40                    2819 	.db #0x40	; 64
      005E93 00                    2820 	.db #0x00	; 0
      005E94 42                    2821 	.db #0x42	; 66	'B'
      005E95 61                    2822 	.db #0x61	; 97	'a'
      005E96 51                    2823 	.db #0x51	; 81	'Q'
      005E97 49                    2824 	.db #0x49	; 73	'I'
      005E98 46                    2825 	.db #0x46	; 70	'F'
      005E99 21                    2826 	.db #0x21	; 33
      005E9A 41                    2827 	.db #0x41	; 65	'A'
      005E9B 45                    2828 	.db #0x45	; 69	'E'
      005E9C 4B                    2829 	.db #0x4b	; 75	'K'
      005E9D 31                    2830 	.db #0x31	; 49	'1'
      005E9E 18                    2831 	.db #0x18	; 24
      005E9F 14                    2832 	.db #0x14	; 20
      005EA0 12                    2833 	.db #0x12	; 18
      005EA1 7F                    2834 	.db #0x7f	; 127
      005EA2 10                    2835 	.db #0x10	; 16
      005EA3 27                    2836 	.db #0x27	; 39
      005EA4 45                    2837 	.db #0x45	; 69	'E'
      005EA5 45                    2838 	.db #0x45	; 69	'E'
      005EA6 45                    2839 	.db #0x45	; 69	'E'
      005EA7 39                    2840 	.db #0x39	; 57	'9'
      005EA8 3C                    2841 	.db #0x3c	; 60
      005EA9 4A                    2842 	.db #0x4a	; 74	'J'
      005EAA 49                    2843 	.db #0x49	; 73	'I'
      005EAB 49                    2844 	.db #0x49	; 73	'I'
      005EAC 30                    2845 	.db #0x30	; 48	'0'
      005EAD 01                    2846 	.db #0x01	; 1
      005EAE 71                    2847 	.db #0x71	; 113	'q'
      005EAF 09                    2848 	.db #0x09	; 9
      005EB0 05                    2849 	.db #0x05	; 5
      005EB1 03                    2850 	.db #0x03	; 3
      005EB2 36                    2851 	.db #0x36	; 54	'6'
      005EB3 49                    2852 	.db #0x49	; 73	'I'
      005EB4 49                    2853 	.db #0x49	; 73	'I'
      005EB5 49                    2854 	.db #0x49	; 73	'I'
      005EB6 36                    2855 	.db #0x36	; 54	'6'
      005EB7 06                    2856 	.db #0x06	; 6
      005EB8 49                    2857 	.db #0x49	; 73	'I'
      005EB9 49                    2858 	.db #0x49	; 73	'I'
      005EBA 29                    2859 	.db #0x29	; 41
      005EBB 1E                    2860 	.db #0x1e	; 30
      005EBC 00                    2861 	.db #0x00	; 0
      005EBD 36                    2862 	.db #0x36	; 54	'6'
      005EBE 36                    2863 	.db #0x36	; 54	'6'
      005EBF 00                    2864 	.db #0x00	; 0
      005EC0 00                    2865 	.db #0x00	; 0
      005EC1 00                    2866 	.db #0x00	; 0
      005EC2 56                    2867 	.db #0x56	; 86	'V'
      005EC3 36                    2868 	.db #0x36	; 54	'6'
      005EC4 00                    2869 	.db #0x00	; 0
      005EC5 00                    2870 	.db #0x00	; 0
      005EC6 08                    2871 	.db #0x08	; 8
      005EC7 14                    2872 	.db #0x14	; 20
      005EC8 22                    2873 	.db #0x22	; 34
      005EC9 41                    2874 	.db #0x41	; 65	'A'
      005ECA 00                    2875 	.db #0x00	; 0
      005ECB 14                    2876 	.db #0x14	; 20
      005ECC 14                    2877 	.db #0x14	; 20
      005ECD 14                    2878 	.db #0x14	; 20
      005ECE 14                    2879 	.db #0x14	; 20
      005ECF 14                    2880 	.db #0x14	; 20
      005ED0 00                    2881 	.db #0x00	; 0
      005ED1 41                    2882 	.db #0x41	; 65	'A'
      005ED2 22                    2883 	.db #0x22	; 34
      005ED3 14                    2884 	.db #0x14	; 20
      005ED4 08                    2885 	.db #0x08	; 8
      005ED5 02                    2886 	.db #0x02	; 2
      005ED6 01                    2887 	.db #0x01	; 1
      005ED7 51                    2888 	.db #0x51	; 81	'Q'
      005ED8 09                    2889 	.db #0x09	; 9
      005ED9 06                    2890 	.db #0x06	; 6
      005EDA 32                    2891 	.db #0x32	; 50	'2'
      005EDB 49                    2892 	.db #0x49	; 73	'I'
      005EDC 79                    2893 	.db #0x79	; 121	'y'
      005EDD 41                    2894 	.db #0x41	; 65	'A'
      005EDE 3E                    2895 	.db #0x3e	; 62
      005EDF 7E                    2896 	.db #0x7e	; 126
      005EE0 11                    2897 	.db #0x11	; 17
      005EE1 11                    2898 	.db #0x11	; 17
      005EE2 11                    2899 	.db #0x11	; 17
      005EE3 7E                    2900 	.db #0x7e	; 126
      005EE4 7F                    2901 	.db #0x7f	; 127
      005EE5 49                    2902 	.db #0x49	; 73	'I'
      005EE6 49                    2903 	.db #0x49	; 73	'I'
      005EE7 49                    2904 	.db #0x49	; 73	'I'
      005EE8 36                    2905 	.db #0x36	; 54	'6'
      005EE9 3E                    2906 	.db #0x3e	; 62
      005EEA 41                    2907 	.db #0x41	; 65	'A'
      005EEB 41                    2908 	.db #0x41	; 65	'A'
      005EEC 41                    2909 	.db #0x41	; 65	'A'
      005EED 22                    2910 	.db #0x22	; 34
      005EEE 7F                    2911 	.db #0x7f	; 127
      005EEF 41                    2912 	.db #0x41	; 65	'A'
      005EF0 41                    2913 	.db #0x41	; 65	'A'
      005EF1 22                    2914 	.db #0x22	; 34
      005EF2 1C                    2915 	.db #0x1c	; 28
      005EF3 7F                    2916 	.db #0x7f	; 127
      005EF4 49                    2917 	.db #0x49	; 73	'I'
      005EF5 49                    2918 	.db #0x49	; 73	'I'
      005EF6 49                    2919 	.db #0x49	; 73	'I'
      005EF7 41                    2920 	.db #0x41	; 65	'A'
      005EF8 7F                    2921 	.db #0x7f	; 127
      005EF9 09                    2922 	.db #0x09	; 9
      005EFA 09                    2923 	.db #0x09	; 9
      005EFB 09                    2924 	.db #0x09	; 9
      005EFC 01                    2925 	.db #0x01	; 1
      005EFD 3E                    2926 	.db #0x3e	; 62
      005EFE 41                    2927 	.db #0x41	; 65	'A'
      005EFF 49                    2928 	.db #0x49	; 73	'I'
      005F00 49                    2929 	.db #0x49	; 73	'I'
      005F01 7A                    2930 	.db #0x7a	; 122	'z'
      005F02 7F                    2931 	.db #0x7f	; 127
      005F03 08                    2932 	.db #0x08	; 8
      005F04 08                    2933 	.db #0x08	; 8
      005F05 08                    2934 	.db #0x08	; 8
      005F06 7F                    2935 	.db #0x7f	; 127
      005F07 00                    2936 	.db #0x00	; 0
      005F08 41                    2937 	.db #0x41	; 65	'A'
      005F09 7F                    2938 	.db #0x7f	; 127
      005F0A 41                    2939 	.db #0x41	; 65	'A'
      005F0B 00                    2940 	.db #0x00	; 0
      005F0C 20                    2941 	.db #0x20	; 32
      005F0D 40                    2942 	.db #0x40	; 64
      005F0E 41                    2943 	.db #0x41	; 65	'A'
      005F0F 3F                    2944 	.db #0x3f	; 63
      005F10 01                    2945 	.db #0x01	; 1
      005F11 7F                    2946 	.db #0x7f	; 127
      005F12 08                    2947 	.db #0x08	; 8
      005F13 14                    2948 	.db #0x14	; 20
      005F14 22                    2949 	.db #0x22	; 34
      005F15 41                    2950 	.db #0x41	; 65	'A'
      005F16 7F                    2951 	.db #0x7f	; 127
      005F17 40                    2952 	.db #0x40	; 64
      005F18 40                    2953 	.db #0x40	; 64
      005F19 40                    2954 	.db #0x40	; 64
      005F1A 40                    2955 	.db #0x40	; 64
      005F1B 7F                    2956 	.db #0x7f	; 127
      005F1C 02                    2957 	.db #0x02	; 2
      005F1D 0C                    2958 	.db #0x0c	; 12
      005F1E 02                    2959 	.db #0x02	; 2
      005F1F 7F                    2960 	.db #0x7f	; 127
      005F20 7F                    2961 	.db #0x7f	; 127
      005F21 04                    2962 	.db #0x04	; 4
      005F22 08                    2963 	.db #0x08	; 8
      005F23 10                    2964 	.db #0x10	; 16
      005F24 7F                    2965 	.db #0x7f	; 127
      005F25 3E                    2966 	.db #0x3e	; 62
      005F26 41                    2967 	.db #0x41	; 65	'A'
      005F27 41                    2968 	.db #0x41	; 65	'A'
      005F28 41                    2969 	.db #0x41	; 65	'A'
      005F29 3E                    2970 	.db #0x3e	; 62
      005F2A 7F                    2971 	.db #0x7f	; 127
      005F2B 09                    2972 	.db #0x09	; 9
      005F2C 09                    2973 	.db #0x09	; 9
      005F2D 09                    2974 	.db #0x09	; 9
      005F2E 06                    2975 	.db #0x06	; 6
      005F2F 3E                    2976 	.db #0x3e	; 62
      005F30 41                    2977 	.db #0x41	; 65	'A'
      005F31 51                    2978 	.db #0x51	; 81	'Q'
      005F32 21                    2979 	.db #0x21	; 33
      005F33 5E                    2980 	.db #0x5e	; 94
      005F34 7F                    2981 	.db #0x7f	; 127
      005F35 09                    2982 	.db #0x09	; 9
      005F36 19                    2983 	.db #0x19	; 25
      005F37 29                    2984 	.db #0x29	; 41
      005F38 46                    2985 	.db #0x46	; 70	'F'
      005F39 46                    2986 	.db #0x46	; 70	'F'
      005F3A 49                    2987 	.db #0x49	; 73	'I'
      005F3B 49                    2988 	.db #0x49	; 73	'I'
      005F3C 49                    2989 	.db #0x49	; 73	'I'
      005F3D 31                    2990 	.db #0x31	; 49	'1'
      005F3E 01                    2991 	.db #0x01	; 1
      005F3F 01                    2992 	.db #0x01	; 1
      005F40 7F                    2993 	.db #0x7f	; 127
      005F41 01                    2994 	.db #0x01	; 1
      005F42 01                    2995 	.db #0x01	; 1
      005F43 3F                    2996 	.db #0x3f	; 63
      005F44 40                    2997 	.db #0x40	; 64
      005F45 40                    2998 	.db #0x40	; 64
      005F46 40                    2999 	.db #0x40	; 64
      005F47 3F                    3000 	.db #0x3f	; 63
      005F48 1F                    3001 	.db #0x1f	; 31
      005F49 20                    3002 	.db #0x20	; 32
      005F4A 40                    3003 	.db #0x40	; 64
      005F4B 20                    3004 	.db #0x20	; 32
      005F4C 1F                    3005 	.db #0x1f	; 31
      005F4D 3F                    3006 	.db #0x3f	; 63
      005F4E 40                    3007 	.db #0x40	; 64
      005F4F 38                    3008 	.db #0x38	; 56	'8'
      005F50 40                    3009 	.db #0x40	; 64
      005F51 3F                    3010 	.db #0x3f	; 63
      005F52 63                    3011 	.db #0x63	; 99	'c'
      005F53 14                    3012 	.db #0x14	; 20
      005F54 08                    3013 	.db #0x08	; 8
      005F55 14                    3014 	.db #0x14	; 20
      005F56 63                    3015 	.db #0x63	; 99	'c'
      005F57 07                    3016 	.db #0x07	; 7
      005F58 08                    3017 	.db #0x08	; 8
      005F59 70                    3018 	.db #0x70	; 112	'p'
      005F5A 08                    3019 	.db #0x08	; 8
      005F5B 07                    3020 	.db #0x07	; 7
      005F5C 61                    3021 	.db #0x61	; 97	'a'
      005F5D 51                    3022 	.db #0x51	; 81	'Q'
      005F5E 49                    3023 	.db #0x49	; 73	'I'
      005F5F 45                    3024 	.db #0x45	; 69	'E'
      005F60 43                    3025 	.db #0x43	; 67	'C'
      005F61 00                    3026 	.db #0x00	; 0
      005F62 7F                    3027 	.db #0x7f	; 127
      005F63 41                    3028 	.db #0x41	; 65	'A'
      005F64 41                    3029 	.db #0x41	; 65	'A'
      005F65 00                    3030 	.db #0x00	; 0
      005F66 02                    3031 	.db #0x02	; 2
      005F67 04                    3032 	.db #0x04	; 4
      005F68 08                    3033 	.db #0x08	; 8
      005F69 10                    3034 	.db #0x10	; 16
      005F6A 20                    3035 	.db #0x20	; 32
      005F6B 00                    3036 	.db #0x00	; 0
      005F6C 41                    3037 	.db #0x41	; 65	'A'
      005F6D 41                    3038 	.db #0x41	; 65	'A'
      005F6E 7F                    3039 	.db #0x7f	; 127
      005F6F 00                    3040 	.db #0x00	; 0
      005F70 04                    3041 	.db #0x04	; 4
      005F71 02                    3042 	.db #0x02	; 2
      005F72 01                    3043 	.db #0x01	; 1
      005F73 02                    3044 	.db #0x02	; 2
      005F74 04                    3045 	.db #0x04	; 4
      005F75 40                    3046 	.db #0x40	; 64
      005F76 40                    3047 	.db #0x40	; 64
      005F77 40                    3048 	.db #0x40	; 64
      005F78 40                    3049 	.db #0x40	; 64
      005F79 40                    3050 	.db #0x40	; 64
      005F7A 00                    3051 	.db #0x00	; 0
      005F7B 01                    3052 	.db #0x01	; 1
      005F7C 02                    3053 	.db #0x02	; 2
      005F7D 04                    3054 	.db #0x04	; 4
      005F7E 00                    3055 	.db #0x00	; 0
      005F7F 20                    3056 	.db #0x20	; 32
      005F80 54                    3057 	.db #0x54	; 84	'T'
      005F81 54                    3058 	.db #0x54	; 84	'T'
      005F82 54                    3059 	.db #0x54	; 84	'T'
      005F83 78                    3060 	.db #0x78	; 120	'x'
      005F84 7F                    3061 	.db #0x7f	; 127
      005F85 48                    3062 	.db #0x48	; 72	'H'
      005F86 44                    3063 	.db #0x44	; 68	'D'
      005F87 44                    3064 	.db #0x44	; 68	'D'
      005F88 38                    3065 	.db #0x38	; 56	'8'
      005F89 38                    3066 	.db #0x38	; 56	'8'
      005F8A 44                    3067 	.db #0x44	; 68	'D'
      005F8B 44                    3068 	.db #0x44	; 68	'D'
      005F8C 44                    3069 	.db #0x44	; 68	'D'
      005F8D 20                    3070 	.db #0x20	; 32
      005F8E 38                    3071 	.db #0x38	; 56	'8'
      005F8F 44                    3072 	.db #0x44	; 68	'D'
      005F90 44                    3073 	.db #0x44	; 68	'D'
      005F91 48                    3074 	.db #0x48	; 72	'H'
      005F92 7F                    3075 	.db #0x7f	; 127
      005F93 38                    3076 	.db #0x38	; 56	'8'
      005F94 54                    3077 	.db #0x54	; 84	'T'
      005F95 54                    3078 	.db #0x54	; 84	'T'
      005F96 54                    3079 	.db #0x54	; 84	'T'
      005F97 18                    3080 	.db #0x18	; 24
      005F98 08                    3081 	.db #0x08	; 8
      005F99 7E                    3082 	.db #0x7e	; 126
      005F9A 09                    3083 	.db #0x09	; 9
      005F9B 01                    3084 	.db #0x01	; 1
      005F9C 02                    3085 	.db #0x02	; 2
      005F9D 0C                    3086 	.db #0x0c	; 12
      005F9E 52                    3087 	.db #0x52	; 82	'R'
      005F9F 52                    3088 	.db #0x52	; 82	'R'
      005FA0 52                    3089 	.db #0x52	; 82	'R'
      005FA1 3E                    3090 	.db #0x3e	; 62
      005FA2 7F                    3091 	.db #0x7f	; 127
      005FA3 08                    3092 	.db #0x08	; 8
      005FA4 04                    3093 	.db #0x04	; 4
      005FA5 04                    3094 	.db #0x04	; 4
      005FA6 78                    3095 	.db #0x78	; 120	'x'
      005FA7 00                    3096 	.db #0x00	; 0
      005FA8 44                    3097 	.db #0x44	; 68	'D'
      005FA9 7D                    3098 	.db #0x7d	; 125
      005FAA 40                    3099 	.db #0x40	; 64
      005FAB 00                    3100 	.db #0x00	; 0
      005FAC 20                    3101 	.db #0x20	; 32
      005FAD 40                    3102 	.db #0x40	; 64
      005FAE 44                    3103 	.db #0x44	; 68	'D'
      005FAF 3D                    3104 	.db #0x3d	; 61
      005FB0 00                    3105 	.db #0x00	; 0
      005FB1 7F                    3106 	.db #0x7f	; 127
      005FB2 10                    3107 	.db #0x10	; 16
      005FB3 28                    3108 	.db #0x28	; 40
      005FB4 44                    3109 	.db #0x44	; 68	'D'
      005FB5 00                    3110 	.db #0x00	; 0
      005FB6 00                    3111 	.db #0x00	; 0
      005FB7 41                    3112 	.db #0x41	; 65	'A'
      005FB8 7F                    3113 	.db #0x7f	; 127
      005FB9 40                    3114 	.db #0x40	; 64
      005FBA 00                    3115 	.db #0x00	; 0
      005FBB 7C                    3116 	.db #0x7c	; 124
      005FBC 04                    3117 	.db #0x04	; 4
      005FBD 18                    3118 	.db #0x18	; 24
      005FBE 04                    3119 	.db #0x04	; 4
      005FBF 78                    3120 	.db #0x78	; 120	'x'
      005FC0 7C                    3121 	.db #0x7c	; 124
      005FC1 08                    3122 	.db #0x08	; 8
      005FC2 04                    3123 	.db #0x04	; 4
      005FC3 04                    3124 	.db #0x04	; 4
      005FC4 78                    3125 	.db #0x78	; 120	'x'
      005FC5 38                    3126 	.db #0x38	; 56	'8'
      005FC6 44                    3127 	.db #0x44	; 68	'D'
      005FC7 44                    3128 	.db #0x44	; 68	'D'
      005FC8 44                    3129 	.db #0x44	; 68	'D'
      005FC9 38                    3130 	.db #0x38	; 56	'8'
      005FCA 7C                    3131 	.db #0x7c	; 124
      005FCB 14                    3132 	.db #0x14	; 20
      005FCC 14                    3133 	.db #0x14	; 20
      005FCD 14                    3134 	.db #0x14	; 20
      005FCE 08                    3135 	.db #0x08	; 8
      005FCF 08                    3136 	.db #0x08	; 8
      005FD0 14                    3137 	.db #0x14	; 20
      005FD1 14                    3138 	.db #0x14	; 20
      005FD2 14                    3139 	.db #0x14	; 20
      005FD3 7C                    3140 	.db #0x7c	; 124
      005FD4 7C                    3141 	.db #0x7c	; 124
      005FD5 08                    3142 	.db #0x08	; 8
      005FD6 04                    3143 	.db #0x04	; 4
      005FD7 04                    3144 	.db #0x04	; 4
      005FD8 08                    3145 	.db #0x08	; 8
      005FD9 48                    3146 	.db #0x48	; 72	'H'
      005FDA 54                    3147 	.db #0x54	; 84	'T'
      005FDB 54                    3148 	.db #0x54	; 84	'T'
      005FDC 54                    3149 	.db #0x54	; 84	'T'
      005FDD 20                    3150 	.db #0x20	; 32
      005FDE 04                    3151 	.db #0x04	; 4
      005FDF 3F                    3152 	.db #0x3f	; 63
      005FE0 44                    3153 	.db #0x44	; 68	'D'
      005FE1 40                    3154 	.db #0x40	; 64
      005FE2 20                    3155 	.db #0x20	; 32
      005FE3 3C                    3156 	.db #0x3c	; 60
      005FE4 40                    3157 	.db #0x40	; 64
      005FE5 40                    3158 	.db #0x40	; 64
      005FE6 20                    3159 	.db #0x20	; 32
      005FE7 7C                    3160 	.db #0x7c	; 124
      005FE8 1C                    3161 	.db #0x1c	; 28
      005FE9 20                    3162 	.db #0x20	; 32
      005FEA 40                    3163 	.db #0x40	; 64
      005FEB 20                    3164 	.db #0x20	; 32
      005FEC 1C                    3165 	.db #0x1c	; 28
      005FED 3C                    3166 	.db #0x3c	; 60
      005FEE 40                    3167 	.db #0x40	; 64
      005FEF 30                    3168 	.db #0x30	; 48	'0'
      005FF0 40                    3169 	.db #0x40	; 64
      005FF1 3C                    3170 	.db #0x3c	; 60
      005FF2 44                    3171 	.db #0x44	; 68	'D'
      005FF3 28                    3172 	.db #0x28	; 40
      005FF4 10                    3173 	.db #0x10	; 16
      005FF5 28                    3174 	.db #0x28	; 40
      005FF6 44                    3175 	.db #0x44	; 68	'D'
      005FF7 0C                    3176 	.db #0x0c	; 12
      005FF8 50                    3177 	.db #0x50	; 80	'P'
      005FF9 50                    3178 	.db #0x50	; 80	'P'
      005FFA 50                    3179 	.db #0x50	; 80	'P'
      005FFB 3C                    3180 	.db #0x3c	; 60
      005FFC 44                    3181 	.db #0x44	; 68	'D'
      005FFD 64                    3182 	.db #0x64	; 100	'd'
      005FFE 54                    3183 	.db #0x54	; 84	'T'
      005FFF 4C                    3184 	.db #0x4c	; 76	'L'
      006000 44                    3185 	.db #0x44	; 68	'D'
      006001 00                    3186 	.db #0x00	; 0
      006002 08                    3187 	.db #0x08	; 8
      006003 36                    3188 	.db #0x36	; 54	'6'
      006004 41                    3189 	.db #0x41	; 65	'A'
      006005 00                    3190 	.db #0x00	; 0
      006006 00                    3191 	.db #0x00	; 0
      006007 00                    3192 	.db #0x00	; 0
      006008 7F                    3193 	.db #0x7f	; 127
      006009 00                    3194 	.db #0x00	; 0
      00600A 00                    3195 	.db #0x00	; 0
      00600B 00                    3196 	.db #0x00	; 0
      00600C 41                    3197 	.db #0x41	; 65	'A'
      00600D 36                    3198 	.db #0x36	; 54	'6'
      00600E 08                    3199 	.db #0x08	; 8
      00600F 00                    3200 	.db #0x00	; 0
      006010 10                    3201 	.db #0x10	; 16
      006011 08                    3202 	.db #0x08	; 8
      006012 08                    3203 	.db #0x08	; 8
      006013 10                    3204 	.db #0x10	; 16
      006014 08                    3205 	.db #0x08	; 8
      006015 00                    3206 	.db #0x00	; 0
      006016 00                    3207 	.db #0x00	; 0
      006017 00                    3208 	.db #0x00	; 0
      006018 00                    3209 	.db #0x00	; 0
      006019 00                    3210 	.db #0x00	; 0
                                   3211 	.area XINIT   (CODE)
                                   3212 	.area CABS    (ABS,CODE)
