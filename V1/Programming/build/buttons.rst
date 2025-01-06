                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module buttons
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _get_current_time
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
                                    427 	.globl _buttons_init
                                    428 	.globl _buttons_process
                                    429 	.globl _get_button_status
                                    430 	.globl _get_encoder_button_status
                                    431 	.globl _get_button1_status
                                    432 	.globl _get_button2_status
                                    433 ;--------------------------------------------------------
                                    434 ; special function registers
                                    435 ;--------------------------------------------------------
                                    436 	.area RSEG    (ABS,DATA)
      000000                        437 	.org 0x0000
                           0000BC   438 _ADC_CONTR	=	0x00bc
                           0000BD   439 _ADC_RESH	=	0x00bd
                           0000BE   440 _ADC_RESL	=	0x00be
                           00BDBE   441 _ADC_RES	=	0xbdbe
                           0000DE   442 _ADCCFG	=	0x00de
                           0000FA   443 _DMA_ADC_AMT	=	0x00fa
                           0000E6   444 _CMPCR1	=	0x00e6
                           0000E7   445 _CMPCR2	=	0x00e7
                           000082   446 _DPL	=	0x0082
                           000083   447 _DPH	=	0x0083
                           008382   448 _DP	=	0x8382
                           0000E3   449 _DPS	=	0x00e3
                           0000E4   450 _DPL1	=	0x00e4
                           0000E5   451 _DPH1	=	0x00e5
                           0000AE   452 _TA	=	0x00ae
                           000090   453 _P1	=	0x0090
                           000091   454 _P1M1	=	0x0091
                           000092   455 _P1M0	=	0x0092
                           0000A0   456 _P2	=	0x00a0
                           000095   457 _P2M1	=	0x0095
                           000096   458 _P2M0	=	0x0096
                           0000B0   459 _P3	=	0x00b0
                           0000B1   460 _P3M1	=	0x00b1
                           0000B2   461 _P3M0	=	0x00b2
                           0000C8   462 _P5	=	0x00c8
                           0000C9   463 _P5M1	=	0x00c9
                           0000CA   464 _P5M0	=	0x00ca
                           0000C2   465 _IAP_DATA	=	0x00c2
                           0000C3   466 _IAP_ADDRH	=	0x00c3
                           0000C4   467 _IAP_ADDRL	=	0x00c4
                           00C3C4   468 _IAP_ADDR	=	0xc3c4
                           0000C5   469 _IAP_CMD	=	0x00c5
                           0000C6   470 _IAP_TRIG	=	0x00c6
                           0000C7   471 _IAP_CONTR	=	0x00c7
                           0000F5   472 _IAP_TPS	=	0x00f5
                           00008F   473 _INT_CLKO	=	0x008f
                           0000A8   474 _IE1	=	0x00a8
                           0000B8   475 _IP1L	=	0x00b8
                           0000B7   476 _IP1H	=	0x00b7
                           0000AF   477 _IE2	=	0x00af
                           0000B5   478 _IP2L	=	0x00b5
                           0000B6   479 _IP2H	=	0x00b6
                           0000DF   480 _IP3L	=	0x00df
                           0000EE   481 _IP3H	=	0x00ee
                           000081   482 _SP	=	0x0081
                           0000D0   483 _PSW	=	0x00d0
                           0000E0   484 _ACC	=	0x00e0
                           0000F0   485 _B	=	0x00f0
                           000087   486 _PCON	=	0x0087
                           0000FF   487 _RSTCFG	=	0x00ff
                           0000A2   488 _P_SW1	=	0x00a2
                           0000BA   489 _P_SW2	=	0x00ba
                           0000A1   490 _BUS_SPEED	=	0x00a1
                           0000AA   491 _WKTCL	=	0x00aa
                           0000AB   492 _WKTCH	=	0x00ab
                           00ABAA   493 _WKTC	=	0xabaa
                           0000CD   494 _SPSTAT	=	0x00cd
                           0000CE   495 _SPCTL	=	0x00ce
                           0000CF   496 _SPDAT	=	0x00cf
                           00009D   497 _IRCBAND	=	0x009d
                           00009E   498 _LIRTRIM	=	0x009e
                           00009F   499 _IRTRIM	=	0x009f
                           000088   500 _TCON	=	0x0088
                           000089   501 _TMOD	=	0x0089
                           00008A   502 _T0L	=	0x008a
                           00008C   503 _T0H	=	0x008c
                           008C8A   504 _T0	=	0x8c8a
                           00008B   505 _T1L	=	0x008b
                           00008D   506 _T1H	=	0x008d
                           008D8B   507 _T1	=	0x8d8b
                           0000D7   508 _T2L	=	0x00d7
                           0000D6   509 _T2H	=	0x00d6
                           00D6D7   510 _T2	=	0xd6d7
                           00008E   511 _AUXR	=	0x008e
                           0000C1   512 _WDT_CONTR	=	0x00c1
                           0000D1   513 _T4T3M	=	0x00d1
                           0000D2   514 _T4H	=	0x00d2
                           0000D3   515 _T4L	=	0x00d3
                           00D2D3   516 _T4	=	0xd2d3
                           0000D4   517 _T3H	=	0x00d4
                           0000D5   518 _T3L	=	0x00d5
                           00D4D5   519 _T3	=	0xd4d5
                           0000EF   520 _AUXINTIF	=	0x00ef
                           0000A9   521 _SADDR	=	0x00a9
                           0000B9   522 _SADEN	=	0x00b9
                           000098   523 _S1CON	=	0x0098
                           000099   524 _S1BUF	=	0x0099
                           00009A   525 _S2CON	=	0x009a
                           00009B   526 _S2BUF	=	0x009b
                           0000AC   527 _S3CON	=	0x00ac
                           0000AD   528 _S3BUF	=	0x00ad
                           000084   529 _S4CON	=	0x0084
                           000085   530 _S4BUF	=	0x0085
                           0000DC   531 _USBCLK	=	0x00dc
                           0000EC   532 _USBDAT	=	0x00ec
                           0000F4   533 _USBCON	=	0x00f4
                           0000FC   534 _USBADR	=	0x00fc
                                    535 ;--------------------------------------------------------
                                    536 ; special function bits
                                    537 ;--------------------------------------------------------
                                    538 	.area RSEG    (ABS,DATA)
      000000                        539 	.org 0x0000
                           000090   540 _P1_0	=	0x0090
                           000091   541 _P1_1	=	0x0091
                           000092   542 _P1_2	=	0x0092
                           000093   543 _P1_3	=	0x0093
                           000094   544 _P1_4	=	0x0094
                           000095   545 _P1_5	=	0x0095
                           000096   546 _P1_6	=	0x0096
                           000097   547 _P1_7	=	0x0097
                           0000A0   548 _P2_0	=	0x00a0
                           0000A1   549 _P2_1	=	0x00a1
                           0000A2   550 _P2_2	=	0x00a2
                           0000A3   551 _P2_3	=	0x00a3
                           0000A4   552 _P2_4	=	0x00a4
                           0000A5   553 _P2_5	=	0x00a5
                           0000A6   554 _P2_6	=	0x00a6
                           0000A7   555 _P2_7	=	0x00a7
                           0000B0   556 _P3_0	=	0x00b0
                           0000B1   557 _P3_1	=	0x00b1
                           0000B2   558 _P3_2	=	0x00b2
                           0000B3   559 _P3_3	=	0x00b3
                           0000B4   560 _P3_4	=	0x00b4
                           0000B5   561 _P3_5	=	0x00b5
                           0000B6   562 _P3_6	=	0x00b6
                           0000B7   563 _P3_7	=	0x00b7
                           0000C8   564 _P5_0	=	0x00c8
                           0000C9   565 _P5_1	=	0x00c9
                           0000CA   566 _P5_2	=	0x00ca
                           0000CB   567 _P5_3	=	0x00cb
                           0000CC   568 _P5_4	=	0x00cc
                           0000CD   569 _P5_5	=	0x00cd
                           000088   570 _INT0TR	=	0x0088
                           00008A   571 _INT1TR	=	0x008a
                           0000A8   572 _INT0IE	=	0x00a8
                           0000AA   573 _INT1IE	=	0x00aa
                           0000AF   574 _EA	=	0x00af
                           0000D0   575 _P	=	0x00d0
                           0000D1   576 _F1	=	0x00d1
                           0000D2   577 _OV	=	0x00d2
                           0000D3   578 _RS0	=	0x00d3
                           0000D4   579 _RS1	=	0x00d4
                           0000D5   580 _F0	=	0x00d5
                           0000D6   581 _AC	=	0x00d6
                           0000D7   582 _CY	=	0x00d7
                           00008C   583 _T0RUN	=	0x008c
                           00008E   584 _T1RUN	=	0x008e
                           0000A9   585 _T0IE	=	0x00a9
                           0000AB   586 _T1IE	=	0x00ab
                           00009F   587 _S1SM0_FE	=	0x009f
                                    588 ;--------------------------------------------------------
                                    589 ; overlayable register banks
                                    590 ;--------------------------------------------------------
                                    591 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        592 	.ds 8
                                    593 ;--------------------------------------------------------
                                    594 ; internal ram data
                                    595 ;--------------------------------------------------------
                                    596 	.area DSEG    (DATA)
      00003E                        597 _buttons_process_sloc0_1_0:
      00003E                        598 	.ds 3
      000041                        599 _buttons_process_sloc1_1_0:
      000041                        600 	.ds 4
                                    601 ;--------------------------------------------------------
                                    602 ; overlayable items in internal ram 
                                    603 ;--------------------------------------------------------
                                    604 ;--------------------------------------------------------
                                    605 ; indirectly addressable internal ram data
                                    606 ;--------------------------------------------------------
                                    607 	.area ISEG    (DATA)
                                    608 ;--------------------------------------------------------
                                    609 ; absolute internal ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area IABS    (ABS,DATA)
                                    612 	.area IABS    (ABS,DATA)
                                    613 ;--------------------------------------------------------
                                    614 ; bit data
                                    615 ;--------------------------------------------------------
                                    616 	.area BSEG    (BIT)
                                    617 ;--------------------------------------------------------
                                    618 ; paged external ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area PSEG    (PAG,XDATA)
                                    621 ;--------------------------------------------------------
                                    622 ; external ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area XSEG    (XDATA)
                           00FEA8   625 _ADCTIM	=	0xfea8
                           00FEAD   626 _ADCEXCFG	=	0xfead
                           00FA10   627 _DMA_ADC_CFG	=	0xfa10
                           00FA11   628 _DMA_ADC_CR	=	0xfa11
                           00FA12   629 _DMA_ADC_STA	=	0xfa12
                           00FA17   630 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   631 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   632 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   633 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   634 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   635 _CMPEXCFG	=	0xfeae
                           00FA00   636 _DMA_M2M_CFG	=	0xfa00
                           00FA01   637 _DMA_M2M_CR	=	0xfa01
                           00FA02   638 _DMA_M2M_STA	=	0xfa02
                           00FA03   639 _DMA_M2M_AMT	=	0xfa03
                           00FA04   640 _DMA_M2M_DONE	=	0xfa04
                           00FA05   641 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   642 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   643 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   644 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   645 _P1INTE	=	0xfd01
                           00FD11   646 _P1INTF	=	0xfd11
                           00FD21   647 _P1IM0	=	0xfd21
                           00FD31   648 _P1IM1	=	0xfd31
                           00FD41   649 _P1WKUE	=	0xfd41
                           00FE11   650 _P1PU	=	0xfe11
                           00FE19   651 _P1NCS	=	0xfe19
                           00FE21   652 _P1SR	=	0xfe21
                           00FE29   653 _P1DR	=	0xfe29
                           00FE31   654 _P1IE	=	0xfe31
                           00FD02   655 _P2INTE	=	0xfd02
                           00FD12   656 _P2INTF	=	0xfd12
                           00FD22   657 _P2IM0	=	0xfd22
                           00FD32   658 _P2IM1	=	0xfd32
                           00FD42   659 _P2WKUE	=	0xfd42
                           00FE12   660 _P2PU	=	0xfe12
                           00FE1A   661 _P2NCS	=	0xfe1a
                           00FE22   662 _P2SR	=	0xfe22
                           00FE2A   663 _P2DR	=	0xfe2a
                           00FE32   664 _P2IE	=	0xfe32
                           00FD03   665 _P3INTE	=	0xfd03
                           00FD13   666 _P3INTF	=	0xfd13
                           00FD23   667 _P3IM0	=	0xfd23
                           00FD33   668 _P3IM1	=	0xfd33
                           00FD43   669 _P3WKUE	=	0xfd43
                           00FE13   670 _P3PU	=	0xfe13
                           00FE1B   671 _P3NCS	=	0xfe1b
                           00FE23   672 _P3SR	=	0xfe23
                           00FE2B   673 _P3DR	=	0xfe2b
                           00FE33   674 _P3IE	=	0xfe33
                           00FD05   675 _P5INTE	=	0xfd05
                           00FD15   676 _P5INTF	=	0xfd15
                           00FD25   677 _P5IM0	=	0xfd25
                           00FD35   678 _P5IM1	=	0xfd35
                           00FD45   679 _P5WKUE	=	0xfd45
                           00FE15   680 _P5PU	=	0xfe15
                           00FE1D   681 _P5NCS	=	0xfe1d
                           00FE25   682 _P5SR	=	0xfe25
                           00FE2D   683 _P5DR	=	0xfe2d
                           00FE35   684 _P5IE	=	0xfe35
                           00FD60   685 _PINIPL	=	0xfd60
                           00FD61   686 _PINIPH	=	0xfd61
                           00FE80   687 _I2CCFG	=	0xfe80
                           00FE81   688 _I2CMSCR	=	0xfe81
                           00FE82   689 _I2CMSST	=	0xfe82
                           00FE83   690 _I2CSLCR	=	0xfe83
                           00FE84   691 _I2CSLST	=	0xfe84
                           00FE85   692 _I2CSLADR	=	0xfe85
                           00FE86   693 _I2CTXD	=	0xfe86
                           00FE87   694 _I2CRXD	=	0xfe87
                           00FE88   695 _I2CMSAUX	=	0xfe88
                           00FE50   696 _LCMCFG	=	0xfe50
                           00FE51   697 _LCMCFG2	=	0xfe51
                           00FE52   698 _LCMCR	=	0xfe52
                           00FE53   699 _LCMSTA	=	0xfe53
                           00FE54   700 _LCMIDDATL	=	0xfe54
                           00FE55   701 _LCMIDDATH	=	0xfe55
                           00FE54   702 _LCMIDDAT	=	0xfe54
                           00FA70   703 _DMA_LCM_CFG	=	0xfa70
                           00FA71   704 _DMA_LCM_CR	=	0xfa71
                           00FA72   705 _DMA_LCM_STA	=	0xfa72
                           00FA73   706 _DMA_LCM_AMT	=	0xfa73
                           00FA74   707 _DMA_LCM_DONE	=	0xfa74
                           00FA75   708 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   709 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   710 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   711 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   712 _MD3	=	0xfcf0
                           00FCF1   713 _MD2	=	0xfcf1
                           00FCF2   714 _MD1	=	0xfcf2
                           00FCF3   715 _MD0	=	0xfcf3
                           00FCF4   716 _MD5	=	0xfcf4
                           00FCF5   717 _MD4	=	0xfcf5
                           00FCF6   718 _ARCON	=	0xfcf6
                           00FCF7   719 _OPCON	=	0xfcf7
                           00FE08   720 _SPFUNC	=	0xfe08
                           00FE09   721 _RSTFLAG	=	0xfe09
                           00FEB0   722 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   723 _PWMA_ENO	=	0xfeb1
                           00FEB2   724 _PWMA_PS	=	0xfeb2
                           00FEB3   725 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   726 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   727 _PWMB_ENO	=	0xfeb5
                           00FEB6   728 _PWMB_PS	=	0xfeb6
                           00FEB7   729 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   730 _PWMA_CR1	=	0xfec0
                           00FEC1   731 _PWMA_CR2	=	0xfec1
                           00FEC2   732 _PWMA_SMCR	=	0xfec2
                           00FEC3   733 _PWMA_ETR	=	0xfec3
                           00FEC4   734 _PWMA_IER	=	0xfec4
                           00FEC5   735 _PWMA_SR1	=	0xfec5
                           00FEC6   736 _PWMA_SR2	=	0xfec6
                           00FEC7   737 _PWMA_EGR	=	0xfec7
                           00FEC8   738 _PWMA_CCMR1	=	0xfec8
                           00FEC9   739 _PWMA_CCMR2	=	0xfec9
                           00FECA   740 _PWMA_CCMR3	=	0xfeca
                           00FECB   741 _PWMA_CCMR4	=	0xfecb
                           00FECC   742 _PWMA_CCER1	=	0xfecc
                           00FECD   743 _PWMA_CCER2	=	0xfecd
                           00FECE   744 _PWMA_CNTRH	=	0xfece
                           00FECF   745 _PWMA_CNTRL	=	0xfecf
                           00FED0   746 _PWMA_PSCRH	=	0xfed0
                           00FED1   747 _PWMA_PSCRL	=	0xfed1
                           00FED2   748 _PWMA_ARRH	=	0xfed2
                           00FED3   749 _PWMA_ARRL	=	0xfed3
                           00FED4   750 _PWMA_RCR	=	0xfed4
                           00FED5   751 _PWMA_CCR1H	=	0xfed5
                           00FED6   752 _PWMA_CCR1L	=	0xfed6
                           00FED7   753 _PWMA_CCR2H	=	0xfed7
                           00FED8   754 _PWMA_CCR2L	=	0xfed8
                           00FED9   755 _PWMA_CCR3H	=	0xfed9
                           00FEDA   756 _PWMA_CCR3L	=	0xfeda
                           00FEDB   757 _PWMA_CCR4H	=	0xfedb
                           00FEDC   758 _PWMA_CCR4L	=	0xfedc
                           00FEDD   759 _PWMA_BKR	=	0xfedd
                           00FEDE   760 _PWMA_DTR	=	0xfede
                           00FEDF   761 _PWMA_OISR	=	0xfedf
                           00FEE0   762 _PWMB_CR1	=	0xfee0
                           00FEE1   763 _PWMB_CR2	=	0xfee1
                           00FEE2   764 _PWMB_SMCR	=	0xfee2
                           00FEE3   765 _PWMB_ETR	=	0xfee3
                           00FEE4   766 _PWMB_IER	=	0xfee4
                           00FEE5   767 _PWMB_SR1	=	0xfee5
                           00FEE6   768 _PWMB_SR2	=	0xfee6
                           00FEE7   769 _PWMB_EGR	=	0xfee7
                           00FEE8   770 _PWMB_CCMR1	=	0xfee8
                           00FEE9   771 _PWMB_CCMR2	=	0xfee9
                           00FEEA   772 _PWMB_CCMR3	=	0xfeea
                           00FEEB   773 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   774 _PWMB_CCER1	=	0xfeec
                           00FEED   775 _PWMB_CCER2	=	0xfeed
                           00FEEE   776 _PWMB_CNTRH	=	0xfeee
                           00FEEF   777 _PWMB_CNTRL	=	0xfeef
                           00FEF0   778 _PWMB_PSCRH	=	0xfef0
                           00FEF1   779 _PWMB_PSCRL	=	0xfef1
                           00FEF2   780 _PWMB_ARRH	=	0xfef2
                           00FEF3   781 _PWMB_ARRL	=	0xfef3
                           00FEF4   782 _PWMB_RCR	=	0xfef4
                           00FEF5   783 _PWMB_CCR1H	=	0xfef5
                           00FEF6   784 _PWMB_CCR1L	=	0xfef6
                           00FEF7   785 _PWMB_CCR2H	=	0xfef7
                           00FEF8   786 _PWMB_CCR2L	=	0xfef8
                           00FEF9   787 _PWMB_CCR3H	=	0xfef9
                           00FEFA   788 _PWMB_CCR3L	=	0xfefa
                           00FEFB   789 _PWMB_CCR4H	=	0xfefb
                           00FEFC   790 _PWMB_CCR4L	=	0xfefc
                           00FEFD   791 _PWMB_BKR	=	0xfefd
                           00FEFE   792 _PWMB_DTR	=	0xfefe
                           00FEFF   793 _PWMB_OISR	=	0xfeff
                           00FE60   794 _RTCCR	=	0xfe60
                           00FE61   795 _RTCCFG	=	0xfe61
                           00FE62   796 _RTCIEN	=	0xfe62
                           00FE63   797 _RTCIF	=	0xfe63
                           00FE64   798 _ALAHOUR	=	0xfe64
                           00FE65   799 _ALAMIN	=	0xfe65
                           00FE66   800 _ALASEC	=	0xfe66
                           00FE67   801 _ALASSEC	=	0xfe67
                           00FE68   802 _INIYEAR	=	0xfe68
                           00FE69   803 _INIMONTH	=	0xfe69
                           00FE6A   804 _INIDAY	=	0xfe6a
                           00FE6B   805 _INIHOUR	=	0xfe6b
                           00FE6C   806 _INIMIN	=	0xfe6c
                           00FE6D   807 _INISEC	=	0xfe6d
                           00FE6E   808 _INISSEC	=	0xfe6e
                           00FE70   809 _YEAR	=	0xfe70
                           00FE71   810 _MONTH	=	0xfe71
                           00FE72   811 _DAY	=	0xfe72
                           00FE73   812 _HOUR	=	0xfe73
                           00FE74   813 _MIN	=	0xfe74
                           00FE75   814 _SEC	=	0xfe75
                           00FE76   815 _SSEC	=	0xfe76
                           00FA20   816 _DMA_SPI_CFG	=	0xfa20
                           00FA21   817 _DMA_SPI_CR	=	0xfa21
                           00FA22   818 _DMA_SPI_STA	=	0xfa22
                           00FA23   819 _DMA_SPI_AMT	=	0xfa23
                           00FA24   820 _DMA_SPI_DONE	=	0xfa24
                           00FA25   821 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   822 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   823 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   824 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   825 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   826 _CLKDIV	=	0xfe01
                           00FE02   827 _HIRCCR	=	0xfe02
                           00FE03   828 _XOSCCR	=	0xfe03
                           00FE04   829 _IRC32KCR	=	0xfe04
                           00FE00   830 _CKSEL	=	0xfe00
                           00FE05   831 _MCLKOCR	=	0xfe05
                           00FE06   832 _IRCDB	=	0xfe06
                           00FE07   833 _IRC48MCR	=	0xfe07
                           00FEA2   834 _TM2PS	=	0xfea2
                           00FEA3   835 _TM3PS	=	0xfea3
                           00FEA4   836 _TM4PS	=	0xfea4
                           00FA30   837 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   838 _DMA_UR1T_CR	=	0xfa31
                           00FA32   839 _DMA_UR1T_STA	=	0xfa32
                           00FA33   840 _DMA_URTX_AMT	=	0xfa33
                           00FA34   841 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   842 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   843 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   844 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   845 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   846 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   847 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   848 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   849 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   850 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   851 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   852 _DMA_UR2T_CR	=	0xfa31
                           00FA32   853 _DMA_UR2T_STA	=	0xfa32
                           00FA33   854 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   855 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   856 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   857 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   858 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   859 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   860 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   861 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   862 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   863 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   864 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   865 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   866 _DMA_UR3T_CR	=	0xfa31
                           00FA32   867 _DMA_UR3T_STA	=	0xfa32
                           00FA33   868 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   869 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   870 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   871 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   872 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   873 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   874 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   875 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   876 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   877 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   878 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   879 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   880 _DMA_UR4T_CR	=	0xfa31
                           00FA32   881 _DMA_UR4T_STA	=	0xfa32
                           00FA33   882 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   883 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   884 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   885 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   886 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   887 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   888 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   889 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   890 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   891 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   892 _DMA_UR4R_TXAL	=	0xfa3e
      000569                        893 _uartGetCharacter_result_65536_69:
      000569                        894 	.ds 1
      00056A                        895 _button1:
      00056A                        896 	.ds 18
      00057C                        897 _button2:
      00057C                        898 	.ds 18
      00058E                        899 _encoder_button:
      00058E                        900 	.ds 18
      0005A0                        901 _get_button_status_button_ind_65536_158:
      0005A0                        902 	.ds 1
                                    903 ;--------------------------------------------------------
                                    904 ; absolute external ram data
                                    905 ;--------------------------------------------------------
                                    906 	.area XABS    (ABS,XDATA)
                                    907 ;--------------------------------------------------------
                                    908 ; external initialized ram data
                                    909 ;--------------------------------------------------------
                                    910 	.area XISEG   (XDATA)
      0006CB                        911 _buttons:
      0006CB                        912 	.ds 9
                                    913 	.area HOME    (CODE)
                                    914 	.area GSINIT0 (CODE)
                                    915 	.area GSINIT1 (CODE)
                                    916 	.area GSINIT2 (CODE)
                                    917 	.area GSINIT3 (CODE)
                                    918 	.area GSINIT4 (CODE)
                                    919 	.area GSINIT5 (CODE)
                                    920 	.area GSINIT  (CODE)
                                    921 	.area GSFINAL (CODE)
                                    922 	.area CSEG    (CODE)
                                    923 ;--------------------------------------------------------
                                    924 ; global & static initialisations
                                    925 ;--------------------------------------------------------
                                    926 	.area HOME    (CODE)
                                    927 	.area GSINIT  (CODE)
                                    928 	.area GSFINAL (CODE)
                                    929 	.area GSINIT  (CODE)
                                    930 ;--------------------------------------------------------
                                    931 ; Home
                                    932 ;--------------------------------------------------------
                                    933 	.area HOME    (CODE)
                                    934 	.area HOME    (CODE)
                                    935 ;--------------------------------------------------------
                                    936 ; code
                                    937 ;--------------------------------------------------------
                                    938 	.area CSEG    (CODE)
                                    939 ;------------------------------------------------------------
                                    940 ;Allocation info for local variables in function 'buttons_init'
                                    941 ;------------------------------------------------------------
                                    942 ;	buttons.c:8: void buttons_init(void) {
                                    943 ;	-----------------------------------------
                                    944 ;	 function buttons_init
                                    945 ;	-----------------------------------------
      003DE8                        946 _buttons_init:
                           000007   947 	ar7 = 0x07
                           000006   948 	ar6 = 0x06
                           000005   949 	ar5 = 0x05
                           000004   950 	ar4 = 0x04
                           000003   951 	ar3 = 0x03
                           000002   952 	ar2 = 0x02
                           000001   953 	ar1 = 0x01
                           000000   954 	ar0 = 0x00
                                    955 ;	buttons.c:10: button1.gpio.port = BUTTON1_PORT,
      003DE8 90 05 6A         [24]  956 	mov	dptr,#_button1
      003DEB 74 03            [12]  957 	mov	a,#0x03
      003DED F0               [24]  958 	movx	@dptr,a
                                    959 ;	buttons.c:11: button1.gpio.pin = BUTTON1_PIN, 
      003DEE 90 05 6B         [24]  960 	mov	dptr,#(_button1 + 0x0001)
      003DF1 23               [12]  961 	rl	a
      003DF2 F0               [24]  962 	movx	@dptr,a
                                    963 ;	buttons.c:12: button1.gpio.count = 1, 
      003DF3 90 05 6C         [24]  964 	mov	dptr,#(_button1 + 0x0002)
      003DF6 74 01            [12]  965 	mov	a,#0x01
      003DF8 F0               [24]  966 	movx	@dptr,a
                                    967 ;	buttons.c:13: button1.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
      003DF9 90 05 6D         [24]  968 	mov	dptr,#(_button1 + 0x0003)
      003DFC 04               [12]  969 	inc	a
      003DFD F0               [24]  970 	movx	@dptr,a
                                    971 ;	buttons.c:14: button1.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
      003DFE 90 05 72         [24]  972 	mov	dptr,#(_button1 + 0x0008)
      003E01 E4               [12]  973 	clr	a
      003E02 F0               [24]  974 	movx	@dptr,a
                                    975 ;	buttons.c:15: button1.gpio.interruptTrigger = GPIO_RISING_EDGE, 
      003E03 90 05 73         [24]  976 	mov	dptr,#(_button1 + 0x0009)
      003E06 04               [12]  977 	inc	a
      003E07 F0               [24]  978 	movx	@dptr,a
                                    979 ;	buttons.c:16: button1.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
      003E08 90 05 74         [24]  980 	mov	dptr,#(_button1 + 0x000a)
      003E0B E4               [12]  981 	clr	a
      003E0C F0               [24]  982 	movx	@dptr,a
                                    983 ;	buttons.c:17: button1.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
      003E0D 90 05 6E         [24]  984 	mov	dptr,#(_button1 + 0x0004)
      003E10 04               [12]  985 	inc	a
      003E11 F0               [24]  986 	movx	@dptr,a
                                    987 ;	buttons.c:18: button1.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
      003E12 90 05 6F         [24]  988 	mov	dptr,#(_button1 + 0x0005)
      003E15 F0               [24]  989 	movx	@dptr,a
                                    990 ;	buttons.c:19: button1.gpio.speed = GPIO_SPEED_SLOWEST,
      003E16 90 05 70         [24]  991 	mov	dptr,#(_button1 + 0x0006)
      003E19 74 03            [12]  992 	mov	a,#0x03
      003E1B F0               [24]  993 	movx	@dptr,a
                                    994 ;	buttons.c:20: button1.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
      003E1C 90 05 71         [24]  995 	mov	dptr,#(_button1 + 0x0007)
      003E1F 74 01            [12]  996 	mov	a,#0x01
      003E21 F0               [24]  997 	movx	@dptr,a
                                    998 ;	buttons.c:22: button2.gpio.port = BUTTON2_PORT, 
      003E22 90 05 7C         [24]  999 	mov	dptr,#_button2
      003E25 74 03            [12] 1000 	mov	a,#0x03
      003E27 F0               [24] 1001 	movx	@dptr,a
                                   1002 ;	buttons.c:23: button2.gpio.pin = BUTTON2_PIN, 
      003E28 90 05 7D         [24] 1003 	mov	dptr,#(_button2 + 0x0001)
      003E2B F0               [24] 1004 	movx	@dptr,a
                                   1005 ;	buttons.c:24: button2.gpio.count = 1, 
      003E2C 90 05 7E         [24] 1006 	mov	dptr,#(_button2 + 0x0002)
      003E2F 74 01            [12] 1007 	mov	a,#0x01
      003E31 F0               [24] 1008 	movx	@dptr,a
                                   1009 ;	buttons.c:25: button2.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
      003E32 90 05 7F         [24] 1010 	mov	dptr,#(_button2 + 0x0003)
      003E35 04               [12] 1011 	inc	a
      003E36 F0               [24] 1012 	movx	@dptr,a
                                   1013 ;	buttons.c:26: button2.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
      003E37 90 05 84         [24] 1014 	mov	dptr,#(_button2 + 0x0008)
      003E3A E4               [12] 1015 	clr	a
      003E3B F0               [24] 1016 	movx	@dptr,a
                                   1017 ;	buttons.c:27: button2.gpio.interruptTrigger = GPIO_RISING_EDGE, 
      003E3C 90 05 85         [24] 1018 	mov	dptr,#(_button2 + 0x0009)
      003E3F 04               [12] 1019 	inc	a
      003E40 F0               [24] 1020 	movx	@dptr,a
                                   1021 ;	buttons.c:28: button2.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
      003E41 90 05 86         [24] 1022 	mov	dptr,#(_button2 + 0x000a)
      003E44 E4               [12] 1023 	clr	a
      003E45 F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	buttons.c:29: button2.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
      003E46 90 05 80         [24] 1026 	mov	dptr,#(_button2 + 0x0004)
      003E49 04               [12] 1027 	inc	a
      003E4A F0               [24] 1028 	movx	@dptr,a
                                   1029 ;	buttons.c:30: button2.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
      003E4B 90 05 81         [24] 1030 	mov	dptr,#(_button2 + 0x0005)
      003E4E F0               [24] 1031 	movx	@dptr,a
                                   1032 ;	buttons.c:31: button2.gpio.speed = GPIO_SPEED_SLOWEST,
      003E4F 90 05 82         [24] 1033 	mov	dptr,#(_button2 + 0x0006)
      003E52 74 03            [12] 1034 	mov	a,#0x03
      003E54 F0               [24] 1035 	movx	@dptr,a
                                   1036 ;	buttons.c:32: button2.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
      003E55 90 05 83         [24] 1037 	mov	dptr,#(_button2 + 0x0007)
      003E58 74 01            [12] 1038 	mov	a,#0x01
      003E5A F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	buttons.c:34: encoder_button.gpio.port = ENCODER_BUTTON_PORT, 
      003E5B 90 05 8E         [24] 1041 	mov	dptr,#_encoder_button
      003E5E 74 03            [12] 1042 	mov	a,#0x03
      003E60 F0               [24] 1043 	movx	@dptr,a
                                   1044 ;	buttons.c:35: encoder_button.gpio.pin = ENCODER_BUTTON_PIN, 
      003E61 90 05 8F         [24] 1045 	mov	dptr,#(_encoder_button + 0x0001)
      003E64 14               [12] 1046 	dec	a
      003E65 F0               [24] 1047 	movx	@dptr,a
                                   1048 ;	buttons.c:36: encoder_button.gpio.count = 1, 
      003E66 90 05 90         [24] 1049 	mov	dptr,#(_encoder_button + 0x0002)
      003E69 14               [12] 1050 	dec	a
      003E6A F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	buttons.c:37: encoder_button.gpio.pinMode = GPIO_HIGH_IMPEDANCE_MODE,	
      003E6B 90 05 91         [24] 1053 	mov	dptr,#(_encoder_button + 0x0003)
      003E6E 04               [12] 1054 	inc	a
      003E6F F0               [24] 1055 	movx	@dptr,a
                                   1056 ;	buttons.c:38: encoder_button.gpio.pinInterrupt = DISABLE_GPIO_PIN_INTERRUPT, 
      003E70 90 05 96         [24] 1057 	mov	dptr,#(_encoder_button + 0x0008)
      003E73 E4               [12] 1058 	clr	a
      003E74 F0               [24] 1059 	movx	@dptr,a
                                   1060 ;	buttons.c:39: encoder_button.gpio.interruptTrigger = GPIO_RISING_EDGE, 
      003E75 90 05 97         [24] 1061 	mov	dptr,#(_encoder_button + 0x0009)
      003E78 04               [12] 1062 	inc	a
      003E79 F0               [24] 1063 	movx	@dptr,a
                                   1064 ;	buttons.c:40: encoder_button.gpio.wakeUpInterrupt = DISABLE_GPIO_PIN_WAKE_UP,
      003E7A 90 05 98         [24] 1065 	mov	dptr,#(_encoder_button + 0x000a)
      003E7D E4               [12] 1066 	clr	a
      003E7E F0               [24] 1067 	movx	@dptr,a
                                   1068 ;	buttons.c:41: encoder_button.gpio.schmidtTrigger = ENABLE_SCHMIDT_TRIGGER,
      003E7F 90 05 92         [24] 1069 	mov	dptr,#(_encoder_button + 0x0004)
      003E82 04               [12] 1070 	inc	a
      003E83 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	buttons.c:42: encoder_button.gpio.internalPullUp = ENABLE_INTERNAL_PULL_UP,
      003E84 90 05 93         [24] 1073 	mov	dptr,#(_encoder_button + 0x0005)
      003E87 F0               [24] 1074 	movx	@dptr,a
                                   1075 ;	buttons.c:43: encoder_button.gpio.speed = GPIO_SPEED_SLOWEST,
      003E88 90 05 94         [24] 1076 	mov	dptr,#(_encoder_button + 0x0006)
      003E8B 74 03            [12] 1077 	mov	a,#0x03
      003E8D F0               [24] 1078 	movx	@dptr,a
                                   1079 ;	buttons.c:44: encoder_button.gpio.digitalInput = ENABLE_GPIO_DIGITAL_INPUT,
      003E8E 90 05 95         [24] 1080 	mov	dptr,#(_encoder_button + 0x0007)
      003E91 74 01            [12] 1081 	mov	a,#0x01
      003E93 F0               [24] 1082 	movx	@dptr,a
                                   1083 ;	buttons.c:47: gpioConfigure(&button1.gpio);
      003E94 90 05 6A         [24] 1084 	mov	dptr,#_button1
      003E97 75 F0 00         [24] 1085 	mov	b,#0x00
      003E9A 12 18 44         [24] 1086 	lcall	_gpioConfigure
                                   1087 ;	buttons.c:48: gpioConfigure(&button2.gpio);
      003E9D 90 05 7C         [24] 1088 	mov	dptr,#_button2
      003EA0 75 F0 00         [24] 1089 	mov	b,#0x00
      003EA3 12 18 44         [24] 1090 	lcall	_gpioConfigure
                                   1091 ;	buttons.c:49: gpioConfigure(&encoder_button.gpio);
      003EA6 90 05 8E         [24] 1092 	mov	dptr,#_encoder_button
      003EA9 75 F0 00         [24] 1093 	mov	b,#0x00
      003EAC 12 18 44         [24] 1094 	lcall	_gpioConfigure
                                   1095 ;	buttons.c:51: button1.button_status = BUTTON_IDLE;
      003EAF 90 05 77         [24] 1096 	mov	dptr,#(_button1 + 0x000d)
      003EB2 E4               [12] 1097 	clr	a
      003EB3 F0               [24] 1098 	movx	@dptr,a
                                   1099 ;	buttons.c:52: button2.button_status = BUTTON_IDLE;
      003EB4 90 05 89         [24] 1100 	mov	dptr,#(_button2 + 0x000d)
      003EB7 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	buttons.c:53: encoder_button.button_status = BUTTON_IDLE;
      003EB8 90 05 9B         [24] 1103 	mov	dptr,#(_encoder_button + 0x000d)
      003EBB F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	buttons.c:55: button1.reactivation_time = 0;
      003EBC 90 05 78         [24] 1106 	mov	dptr,#(_button1 + 0x000e)
      003EBF F0               [24] 1107 	movx	@dptr,a
      003EC0 A3               [24] 1108 	inc	dptr
      003EC1 F0               [24] 1109 	movx	@dptr,a
      003EC2 A3               [24] 1110 	inc	dptr
      003EC3 F0               [24] 1111 	movx	@dptr,a
      003EC4 A3               [24] 1112 	inc	dptr
      003EC5 F0               [24] 1113 	movx	@dptr,a
                                   1114 ;	buttons.c:56: button2.reactivation_time = 0;
      003EC6 90 05 8A         [24] 1115 	mov	dptr,#(_button2 + 0x000e)
      003EC9 F0               [24] 1116 	movx	@dptr,a
      003ECA A3               [24] 1117 	inc	dptr
      003ECB F0               [24] 1118 	movx	@dptr,a
      003ECC A3               [24] 1119 	inc	dptr
      003ECD F0               [24] 1120 	movx	@dptr,a
      003ECE A3               [24] 1121 	inc	dptr
      003ECF F0               [24] 1122 	movx	@dptr,a
                                   1123 ;	buttons.c:57: encoder_button.reactivation_time = 0;
      003ED0 90 05 9C         [24] 1124 	mov	dptr,#(_encoder_button + 0x000e)
      003ED3 F0               [24] 1125 	movx	@dptr,a
      003ED4 A3               [24] 1126 	inc	dptr
      003ED5 F0               [24] 1127 	movx	@dptr,a
      003ED6 A3               [24] 1128 	inc	dptr
      003ED7 F0               [24] 1129 	movx	@dptr,a
      003ED8 A3               [24] 1130 	inc	dptr
      003ED9 F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	buttons.c:59: }
      003EDA 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'buttons_process'
                                   1136 ;------------------------------------------------------------
                                   1137 ;sloc0                     Allocated with name '_buttons_process_sloc0_1_0'
                                   1138 ;sloc1                     Allocated with name '_buttons_process_sloc1_1_0'
                                   1139 ;i                         Allocated with name '_buttons_process_i_131072_152'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	buttons.c:64: void buttons_process(void) {
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function buttons_process
                                   1144 ;	-----------------------------------------
      003EDB                       1145 _buttons_process:
                                   1146 ;	buttons.c:66: for (uint8_t i=0;i<BUTTON_COUNT;i++) {
      003EDB 7F 00            [12] 1147 	mov	r7,#0x00
      003EDD                       1148 00110$:
      003EDD BF 03 00         [24] 1149 	cjne	r7,#0x03,00135$
      003EE0                       1150 00135$:
      003EE0 40 01            [24] 1151 	jc	00136$
      003EE2 22               [24] 1152 	ret
      003EE3                       1153 00136$:
                                   1154 ;	buttons.c:68: if(buttons[i]->button_status == BUTTON_IDLE) {
      003EE3 EF               [12] 1155 	mov	a,r7
      003EE4 75 F0 03         [24] 1156 	mov	b,#0x03
      003EE7 A4               [48] 1157 	mul	ab
      003EE8 24 CB            [12] 1158 	add	a,#_buttons
      003EEA FE               [12] 1159 	mov	r6,a
      003EEB 74 06            [12] 1160 	mov	a,#(_buttons >> 8)
      003EED 35 F0            [12] 1161 	addc	a,b
      003EEF FD               [12] 1162 	mov	r5,a
      003EF0 8E 82            [24] 1163 	mov	dpl,r6
      003EF2 8D 83            [24] 1164 	mov	dph,r5
      003EF4 E0               [24] 1165 	movx	a,@dptr
      003EF5 FA               [12] 1166 	mov	r2,a
      003EF6 A3               [24] 1167 	inc	dptr
      003EF7 E0               [24] 1168 	movx	a,@dptr
      003EF8 FB               [12] 1169 	mov	r3,a
      003EF9 A3               [24] 1170 	inc	dptr
      003EFA E0               [24] 1171 	movx	a,@dptr
      003EFB FC               [12] 1172 	mov	r4,a
      003EFC C0 07            [24] 1173 	push	ar7
      003EFE 74 0D            [12] 1174 	mov	a,#0x0d
      003F00 2A               [12] 1175 	add	a,r2
      003F01 F8               [12] 1176 	mov	r0,a
      003F02 E4               [12] 1177 	clr	a
      003F03 3B               [12] 1178 	addc	a,r3
      003F04 F9               [12] 1179 	mov	r1,a
      003F05 8C 07            [24] 1180 	mov	ar7,r4
      003F07 88 82            [24] 1181 	mov	dpl,r0
      003F09 89 83            [24] 1182 	mov	dph,r1
      003F0B 8F F0            [24] 1183 	mov	b,r7
      003F0D 12 58 3E         [24] 1184 	lcall	__gptrget
      003F10 D0 07            [24] 1185 	pop	ar7
      003F12 60 03            [24] 1186 	jz	00137$
      003F14 02 3F AA         [24] 1187 	ljmp	00106$
      003F17                       1188 00137$:
                                   1189 ;	buttons.c:70: if(!gpioRead(&buttons[i]->gpio)) {
      003F17 8A 82            [24] 1190 	mov	dpl,r2
      003F19 8B 83            [24] 1191 	mov	dph,r3
      003F1B 8C F0            [24] 1192 	mov	b,r4
      003F1D C0 07            [24] 1193 	push	ar7
      003F1F C0 06            [24] 1194 	push	ar6
      003F21 C0 05            [24] 1195 	push	ar5
      003F23 12 1F DB         [24] 1196 	lcall	_gpioRead
      003F26 E5 82            [12] 1197 	mov	a,dpl
      003F28 D0 05            [24] 1198 	pop	ar5
      003F2A D0 06            [24] 1199 	pop	ar6
      003F2C D0 07            [24] 1200 	pop	ar7
      003F2E 60 03            [24] 1201 	jz	00138$
      003F30 02 40 16         [24] 1202 	ljmp	00111$
      003F33                       1203 00138$:
                                   1204 ;	buttons.c:71: buttons[i]->reactivation_time = get_current_time() + BUTTON_COOLDOWN_PERIOD;
      003F33 C0 07            [24] 1205 	push	ar7
      003F35 8E 82            [24] 1206 	mov	dpl,r6
      003F37 8D 83            [24] 1207 	mov	dph,r5
      003F39 E0               [24] 1208 	movx	a,@dptr
      003F3A FA               [12] 1209 	mov	r2,a
      003F3B A3               [24] 1210 	inc	dptr
      003F3C E0               [24] 1211 	movx	a,@dptr
      003F3D FB               [12] 1212 	mov	r3,a
      003F3E A3               [24] 1213 	inc	dptr
      003F3F E0               [24] 1214 	movx	a,@dptr
      003F40 FC               [12] 1215 	mov	r4,a
      003F41 74 0E            [12] 1216 	mov	a,#0x0e
      003F43 2A               [12] 1217 	add	a,r2
      003F44 F5 3E            [12] 1218 	mov	_buttons_process_sloc0_1_0,a
      003F46 E4               [12] 1219 	clr	a
      003F47 3B               [12] 1220 	addc	a,r3
      003F48 F5 3F            [12] 1221 	mov	(_buttons_process_sloc0_1_0 + 1),a
      003F4A 8C 40            [24] 1222 	mov	(_buttons_process_sloc0_1_0 + 2),r4
      003F4C C0 06            [24] 1223 	push	ar6
      003F4E C0 05            [24] 1224 	push	ar5
      003F50 12 3D 8F         [24] 1225 	lcall	_get_current_time
      003F53 A8 82            [24] 1226 	mov	r0,dpl
      003F55 A9 83            [24] 1227 	mov	r1,dph
      003F57 AC F0            [24] 1228 	mov	r4,b
      003F59 FF               [12] 1229 	mov	r7,a
      003F5A D0 05            [24] 1230 	pop	ar5
      003F5C D0 06            [24] 1231 	pop	ar6
      003F5E 74 90            [12] 1232 	mov	a,#0x90
      003F60 28               [12] 1233 	add	a,r0
      003F61 F8               [12] 1234 	mov	r0,a
      003F62 74 01            [12] 1235 	mov	a,#0x01
      003F64 39               [12] 1236 	addc	a,r1
      003F65 F9               [12] 1237 	mov	r1,a
      003F66 E4               [12] 1238 	clr	a
      003F67 3C               [12] 1239 	addc	a,r4
      003F68 FC               [12] 1240 	mov	r4,a
      003F69 E4               [12] 1241 	clr	a
      003F6A 3F               [12] 1242 	addc	a,r7
      003F6B FF               [12] 1243 	mov	r7,a
      003F6C 85 3E 82         [24] 1244 	mov	dpl,_buttons_process_sloc0_1_0
      003F6F 85 3F 83         [24] 1245 	mov	dph,(_buttons_process_sloc0_1_0 + 1)
      003F72 85 40 F0         [24] 1246 	mov	b,(_buttons_process_sloc0_1_0 + 2)
      003F75 E8               [12] 1247 	mov	a,r0
      003F76 12 4B FA         [24] 1248 	lcall	__gptrput
      003F79 A3               [24] 1249 	inc	dptr
      003F7A E9               [12] 1250 	mov	a,r1
      003F7B 12 4B FA         [24] 1251 	lcall	__gptrput
      003F7E A3               [24] 1252 	inc	dptr
      003F7F EC               [12] 1253 	mov	a,r4
      003F80 12 4B FA         [24] 1254 	lcall	__gptrput
      003F83 A3               [24] 1255 	inc	dptr
      003F84 EF               [12] 1256 	mov	a,r7
      003F85 12 4B FA         [24] 1257 	lcall	__gptrput
                                   1258 ;	buttons.c:72: buttons[i]->button_status = BUTTON_PRESSED;
      003F88 8E 82            [24] 1259 	mov	dpl,r6
      003F8A 8D 83            [24] 1260 	mov	dph,r5
      003F8C E0               [24] 1261 	movx	a,@dptr
      003F8D FB               [12] 1262 	mov	r3,a
      003F8E A3               [24] 1263 	inc	dptr
      003F8F E0               [24] 1264 	movx	a,@dptr
      003F90 FC               [12] 1265 	mov	r4,a
      003F91 A3               [24] 1266 	inc	dptr
      003F92 E0               [24] 1267 	movx	a,@dptr
      003F93 FF               [12] 1268 	mov	r7,a
      003F94 74 0D            [12] 1269 	mov	a,#0x0d
      003F96 2B               [12] 1270 	add	a,r3
      003F97 FB               [12] 1271 	mov	r3,a
      003F98 E4               [12] 1272 	clr	a
      003F99 3C               [12] 1273 	addc	a,r4
      003F9A FC               [12] 1274 	mov	r4,a
      003F9B 8B 82            [24] 1275 	mov	dpl,r3
      003F9D 8C 83            [24] 1276 	mov	dph,r4
      003F9F 8F F0            [24] 1277 	mov	b,r7
      003FA1 74 01            [12] 1278 	mov	a,#0x01
      003FA3 12 4B FA         [24] 1279 	lcall	__gptrput
      003FA6 D0 07            [24] 1280 	pop	ar7
      003FA8 80 6C            [24] 1281 	sjmp	00111$
      003FAA                       1282 00106$:
                                   1283 ;	buttons.c:76: if(get_current_time() >= buttons[i]->reactivation_time) {
      003FAA C0 07            [24] 1284 	push	ar7
      003FAC C0 07            [24] 1285 	push	ar7
      003FAE C0 06            [24] 1286 	push	ar6
      003FB0 C0 05            [24] 1287 	push	ar5
      003FB2 12 3D 8F         [24] 1288 	lcall	_get_current_time
      003FB5 85 82 41         [24] 1289 	mov	_buttons_process_sloc1_1_0,dpl
      003FB8 85 83 42         [24] 1290 	mov	(_buttons_process_sloc1_1_0 + 1),dph
      003FBB 85 F0 43         [24] 1291 	mov	(_buttons_process_sloc1_1_0 + 2),b
      003FBE F5 44            [12] 1292 	mov	(_buttons_process_sloc1_1_0 + 3),a
      003FC0 D0 05            [24] 1293 	pop	ar5
      003FC2 D0 06            [24] 1294 	pop	ar6
      003FC4 D0 07            [24] 1295 	pop	ar7
      003FC6 8E 82            [24] 1296 	mov	dpl,r6
      003FC8 8D 83            [24] 1297 	mov	dph,r5
      003FCA E0               [24] 1298 	movx	a,@dptr
      003FCB F8               [12] 1299 	mov	r0,a
      003FCC A3               [24] 1300 	inc	dptr
      003FCD E0               [24] 1301 	movx	a,@dptr
      003FCE FD               [12] 1302 	mov	r5,a
      003FCF A3               [24] 1303 	inc	dptr
      003FD0 E0               [24] 1304 	movx	a,@dptr
      003FD1 FE               [12] 1305 	mov	r6,a
      003FD2 74 0E            [12] 1306 	mov	a,#0x0e
      003FD4 28               [12] 1307 	add	a,r0
      003FD5 FB               [12] 1308 	mov	r3,a
      003FD6 E4               [12] 1309 	clr	a
      003FD7 3D               [12] 1310 	addc	a,r5
      003FD8 FC               [12] 1311 	mov	r4,a
      003FD9 8E 07            [24] 1312 	mov	ar7,r6
      003FDB 8B 82            [24] 1313 	mov	dpl,r3
      003FDD 8C 83            [24] 1314 	mov	dph,r4
      003FDF 8F F0            [24] 1315 	mov	b,r7
      003FE1 12 58 3E         [24] 1316 	lcall	__gptrget
      003FE4 FB               [12] 1317 	mov	r3,a
      003FE5 A3               [24] 1318 	inc	dptr
      003FE6 12 58 3E         [24] 1319 	lcall	__gptrget
      003FE9 FC               [12] 1320 	mov	r4,a
      003FEA A3               [24] 1321 	inc	dptr
      003FEB 12 58 3E         [24] 1322 	lcall	__gptrget
      003FEE FF               [12] 1323 	mov	r7,a
      003FEF A3               [24] 1324 	inc	dptr
      003FF0 12 58 3E         [24] 1325 	lcall	__gptrget
      003FF3 FA               [12] 1326 	mov	r2,a
      003FF4 C3               [12] 1327 	clr	c
      003FF5 E5 41            [12] 1328 	mov	a,_buttons_process_sloc1_1_0
      003FF7 9B               [12] 1329 	subb	a,r3
      003FF8 E5 42            [12] 1330 	mov	a,(_buttons_process_sloc1_1_0 + 1)
      003FFA 9C               [12] 1331 	subb	a,r4
      003FFB E5 43            [12] 1332 	mov	a,(_buttons_process_sloc1_1_0 + 2)
      003FFD 9F               [12] 1333 	subb	a,r7
      003FFE E5 44            [12] 1334 	mov	a,(_buttons_process_sloc1_1_0 + 3)
      004000 9A               [12] 1335 	subb	a,r2
      004001 D0 07            [24] 1336 	pop	ar7
      004003 40 11            [24] 1337 	jc	00111$
                                   1338 ;	buttons.c:77: buttons[i]->button_status = BUTTON_IDLE;
      004005 74 0D            [12] 1339 	mov	a,#0x0d
      004007 28               [12] 1340 	add	a,r0
      004008 F8               [12] 1341 	mov	r0,a
      004009 E4               [12] 1342 	clr	a
      00400A 3D               [12] 1343 	addc	a,r5
      00400B FD               [12] 1344 	mov	r5,a
      00400C 88 82            [24] 1345 	mov	dpl,r0
      00400E 8D 83            [24] 1346 	mov	dph,r5
      004010 8E F0            [24] 1347 	mov	b,r6
      004012 E4               [12] 1348 	clr	a
      004013 12 4B FA         [24] 1349 	lcall	__gptrput
      004016                       1350 00111$:
                                   1351 ;	buttons.c:66: for (uint8_t i=0;i<BUTTON_COUNT;i++) {
      004016 0F               [12] 1352 	inc	r7
                                   1353 ;	buttons.c:82: }
      004017 02 3E DD         [24] 1354 	ljmp	00110$
                                   1355 ;------------------------------------------------------------
                                   1356 ;Allocation info for local variables in function 'get_button_status'
                                   1357 ;------------------------------------------------------------
                                   1358 ;button_ind                Allocated with name '_get_button_status_button_ind_65536_158'
                                   1359 ;------------------------------------------------------------
                                   1360 ;	buttons.c:87: button_status_t get_button_status(uint8_t button_ind) {
                                   1361 ;	-----------------------------------------
                                   1362 ;	 function get_button_status
                                   1363 ;	-----------------------------------------
      00401A                       1364 _get_button_status:
      00401A E5 82            [12] 1365 	mov	a,dpl
      00401C 90 05 A0         [24] 1366 	mov	dptr,#_get_button_status_button_ind_65536_158
      00401F F0               [24] 1367 	movx	@dptr,a
                                   1368 ;	buttons.c:88: if (buttons[button_ind]->button_status == BUTTON_PRESSED) {
      004020 E0               [24] 1369 	movx	a,@dptr
      004021 75 F0 03         [24] 1370 	mov	b,#0x03
      004024 A4               [48] 1371 	mul	ab
      004025 24 CB            [12] 1372 	add	a,#_buttons
      004027 F5 82            [12] 1373 	mov	dpl,a
      004029 74 06            [12] 1374 	mov	a,#(_buttons >> 8)
      00402B 35 F0            [12] 1375 	addc	a,b
      00402D F5 83            [12] 1376 	mov	dph,a
      00402F E0               [24] 1377 	movx	a,@dptr
      004030 FD               [12] 1378 	mov	r5,a
      004031 A3               [24] 1379 	inc	dptr
      004032 E0               [24] 1380 	movx	a,@dptr
      004033 FE               [12] 1381 	mov	r6,a
      004034 A3               [24] 1382 	inc	dptr
      004035 E0               [24] 1383 	movx	a,@dptr
      004036 FF               [12] 1384 	mov	r7,a
      004037 74 0D            [12] 1385 	mov	a,#0x0d
      004039 2D               [12] 1386 	add	a,r5
      00403A FD               [12] 1387 	mov	r5,a
      00403B E4               [12] 1388 	clr	a
      00403C 3E               [12] 1389 	addc	a,r6
      00403D FE               [12] 1390 	mov	r6,a
      00403E 8D 82            [24] 1391 	mov	dpl,r5
      004040 8E 83            [24] 1392 	mov	dph,r6
      004042 8F F0            [24] 1393 	mov	b,r7
      004044 12 58 3E         [24] 1394 	lcall	__gptrget
      004047 FC               [12] 1395 	mov	r4,a
      004048 BC 01 0F         [24] 1396 	cjne	r4,#0x01,00102$
                                   1397 ;	buttons.c:89: buttons[button_ind]->button_status = BUTTON_COOLDOWN;
      00404B 8D 82            [24] 1398 	mov	dpl,r5
      00404D 8E 83            [24] 1399 	mov	dph,r6
      00404F 8F F0            [24] 1400 	mov	b,r7
      004051 74 02            [12] 1401 	mov	a,#0x02
      004053 12 4B FA         [24] 1402 	lcall	__gptrput
                                   1403 ;	buttons.c:90: return BUTTON_PRESSED;
      004056 75 82 01         [24] 1404 	mov	dpl,#0x01
      004059 22               [24] 1405 	ret
      00405A                       1406 00102$:
                                   1407 ;	buttons.c:92: return buttons[button_ind]->button_status;
      00405A 8C 82            [24] 1408 	mov	dpl,r4
                                   1409 ;	buttons.c:93: }
      00405C 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'get_encoder_button_status'
                                   1413 ;------------------------------------------------------------
                                   1414 ;	buttons.c:95: button_status_t get_encoder_button_status(void) { return get_button_status(ENCODER_BUTTON_IND); }
                                   1415 ;	-----------------------------------------
                                   1416 ;	 function get_encoder_button_status
                                   1417 ;	-----------------------------------------
      00405D                       1418 _get_encoder_button_status:
      00405D 75 82 02         [24] 1419 	mov	dpl,#0x02
      004060 02 40 1A         [24] 1420 	ljmp	_get_button_status
                                   1421 ;------------------------------------------------------------
                                   1422 ;Allocation info for local variables in function 'get_button1_status'
                                   1423 ;------------------------------------------------------------
                                   1424 ;	buttons.c:96: button_status_t get_button1_status(void) { return get_button_status(BUTTON1_IND); }
                                   1425 ;	-----------------------------------------
                                   1426 ;	 function get_button1_status
                                   1427 ;	-----------------------------------------
      004063                       1428 _get_button1_status:
      004063 75 82 00         [24] 1429 	mov	dpl,#0x00
      004066 02 40 1A         [24] 1430 	ljmp	_get_button_status
                                   1431 ;------------------------------------------------------------
                                   1432 ;Allocation info for local variables in function 'get_button2_status'
                                   1433 ;------------------------------------------------------------
                                   1434 ;	buttons.c:97: button_status_t get_button2_status(void) { return get_button_status(BUTTON2_IND); }
                                   1435 ;	-----------------------------------------
                                   1436 ;	 function get_button2_status
                                   1437 ;	-----------------------------------------
      004069                       1438 _get_button2_status:
      004069 75 82 01         [24] 1439 	mov	dpl,#0x01
      00406C 02 40 1A         [24] 1440 	ljmp	_get_button_status
                                   1441 	.area CSEG    (CODE)
                                   1442 	.area CONST   (CODE)
      007583                       1443 _FONTS:
      007583 00                    1444 	.db #0x00	; 0
      007584 00                    1445 	.db #0x00	; 0
      007585 00                    1446 	.db #0x00	; 0
      007586 00                    1447 	.db #0x00	; 0
      007587 00                    1448 	.db #0x00	; 0
      007588 81                    1449 	.db #0x81	; 129
      007589 81                    1450 	.db #0x81	; 129
      00758A 18                    1451 	.db #0x18	; 24
      00758B 81                    1452 	.db #0x81	; 129
      00758C 81                    1453 	.db #0x81	; 129
      00758D 00                    1454 	.db #0x00	; 0
      00758E 07                    1455 	.db #0x07	; 7
      00758F 00                    1456 	.db #0x00	; 0
      007590 07                    1457 	.db #0x07	; 7
      007591 00                    1458 	.db #0x00	; 0
      007592 14                    1459 	.db #0x14	; 20
      007593 7F                    1460 	.db #0x7f	; 127
      007594 14                    1461 	.db #0x14	; 20
      007595 7F                    1462 	.db #0x7f	; 127
      007596 14                    1463 	.db #0x14	; 20
      007597 24                    1464 	.db #0x24	; 36
      007598 2A                    1465 	.db #0x2a	; 42
      007599 7F                    1466 	.db #0x7f	; 127
      00759A 2A                    1467 	.db #0x2a	; 42
      00759B 12                    1468 	.db #0x12	; 18
      00759C 23                    1469 	.db #0x23	; 35
      00759D 13                    1470 	.db #0x13	; 19
      00759E 08                    1471 	.db #0x08	; 8
      00759F 64                    1472 	.db #0x64	; 100	'd'
      0075A0 62                    1473 	.db #0x62	; 98	'b'
      0075A1 36                    1474 	.db #0x36	; 54	'6'
      0075A2 49                    1475 	.db #0x49	; 73	'I'
      0075A3 55                    1476 	.db #0x55	; 85	'U'
      0075A4 22                    1477 	.db #0x22	; 34
      0075A5 50                    1478 	.db #0x50	; 80	'P'
      0075A6 00                    1479 	.db #0x00	; 0
      0075A7 05                    1480 	.db #0x05	; 5
      0075A8 03                    1481 	.db #0x03	; 3
      0075A9 00                    1482 	.db #0x00	; 0
      0075AA 00                    1483 	.db #0x00	; 0
      0075AB 00                    1484 	.db #0x00	; 0
      0075AC 1C                    1485 	.db #0x1c	; 28
      0075AD 22                    1486 	.db #0x22	; 34
      0075AE 41                    1487 	.db #0x41	; 65	'A'
      0075AF 00                    1488 	.db #0x00	; 0
      0075B0 00                    1489 	.db #0x00	; 0
      0075B1 41                    1490 	.db #0x41	; 65	'A'
      0075B2 22                    1491 	.db #0x22	; 34
      0075B3 1C                    1492 	.db #0x1c	; 28
      0075B4 00                    1493 	.db #0x00	; 0
      0075B5 14                    1494 	.db #0x14	; 20
      0075B6 08                    1495 	.db #0x08	; 8
      0075B7 3E                    1496 	.db #0x3e	; 62
      0075B8 08                    1497 	.db #0x08	; 8
      0075B9 14                    1498 	.db #0x14	; 20
      0075BA 08                    1499 	.db #0x08	; 8
      0075BB 08                    1500 	.db #0x08	; 8
      0075BC 3E                    1501 	.db #0x3e	; 62
      0075BD 08                    1502 	.db #0x08	; 8
      0075BE 08                    1503 	.db #0x08	; 8
      0075BF 00                    1504 	.db #0x00	; 0
      0075C0 50                    1505 	.db #0x50	; 80	'P'
      0075C1 30                    1506 	.db #0x30	; 48	'0'
      0075C2 00                    1507 	.db #0x00	; 0
      0075C3 00                    1508 	.db #0x00	; 0
      0075C4 08                    1509 	.db #0x08	; 8
      0075C5 08                    1510 	.db #0x08	; 8
      0075C6 08                    1511 	.db #0x08	; 8
      0075C7 08                    1512 	.db #0x08	; 8
      0075C8 08                    1513 	.db #0x08	; 8
      0075C9 00                    1514 	.db #0x00	; 0
      0075CA 60                    1515 	.db #0x60	; 96
      0075CB 60                    1516 	.db #0x60	; 96
      0075CC 00                    1517 	.db #0x00	; 0
      0075CD 00                    1518 	.db #0x00	; 0
      0075CE 20                    1519 	.db #0x20	; 32
      0075CF 10                    1520 	.db #0x10	; 16
      0075D0 08                    1521 	.db #0x08	; 8
      0075D1 04                    1522 	.db #0x04	; 4
      0075D2 02                    1523 	.db #0x02	; 2
      0075D3 3E                    1524 	.db #0x3e	; 62
      0075D4 51                    1525 	.db #0x51	; 81	'Q'
      0075D5 49                    1526 	.db #0x49	; 73	'I'
      0075D6 45                    1527 	.db #0x45	; 69	'E'
      0075D7 3E                    1528 	.db #0x3e	; 62
      0075D8 00                    1529 	.db #0x00	; 0
      0075D9 42                    1530 	.db #0x42	; 66	'B'
      0075DA 7F                    1531 	.db #0x7f	; 127
      0075DB 40                    1532 	.db #0x40	; 64
      0075DC 00                    1533 	.db #0x00	; 0
      0075DD 42                    1534 	.db #0x42	; 66	'B'
      0075DE 61                    1535 	.db #0x61	; 97	'a'
      0075DF 51                    1536 	.db #0x51	; 81	'Q'
      0075E0 49                    1537 	.db #0x49	; 73	'I'
      0075E1 46                    1538 	.db #0x46	; 70	'F'
      0075E2 21                    1539 	.db #0x21	; 33
      0075E3 41                    1540 	.db #0x41	; 65	'A'
      0075E4 45                    1541 	.db #0x45	; 69	'E'
      0075E5 4B                    1542 	.db #0x4b	; 75	'K'
      0075E6 31                    1543 	.db #0x31	; 49	'1'
      0075E7 18                    1544 	.db #0x18	; 24
      0075E8 14                    1545 	.db #0x14	; 20
      0075E9 12                    1546 	.db #0x12	; 18
      0075EA 7F                    1547 	.db #0x7f	; 127
      0075EB 10                    1548 	.db #0x10	; 16
      0075EC 27                    1549 	.db #0x27	; 39
      0075ED 45                    1550 	.db #0x45	; 69	'E'
      0075EE 45                    1551 	.db #0x45	; 69	'E'
      0075EF 45                    1552 	.db #0x45	; 69	'E'
      0075F0 39                    1553 	.db #0x39	; 57	'9'
      0075F1 3C                    1554 	.db #0x3c	; 60
      0075F2 4A                    1555 	.db #0x4a	; 74	'J'
      0075F3 49                    1556 	.db #0x49	; 73	'I'
      0075F4 49                    1557 	.db #0x49	; 73	'I'
      0075F5 30                    1558 	.db #0x30	; 48	'0'
      0075F6 01                    1559 	.db #0x01	; 1
      0075F7 71                    1560 	.db #0x71	; 113	'q'
      0075F8 09                    1561 	.db #0x09	; 9
      0075F9 05                    1562 	.db #0x05	; 5
      0075FA 03                    1563 	.db #0x03	; 3
      0075FB 36                    1564 	.db #0x36	; 54	'6'
      0075FC 49                    1565 	.db #0x49	; 73	'I'
      0075FD 49                    1566 	.db #0x49	; 73	'I'
      0075FE 49                    1567 	.db #0x49	; 73	'I'
      0075FF 36                    1568 	.db #0x36	; 54	'6'
      007600 06                    1569 	.db #0x06	; 6
      007601 49                    1570 	.db #0x49	; 73	'I'
      007602 49                    1571 	.db #0x49	; 73	'I'
      007603 29                    1572 	.db #0x29	; 41
      007604 1E                    1573 	.db #0x1e	; 30
      007605 00                    1574 	.db #0x00	; 0
      007606 36                    1575 	.db #0x36	; 54	'6'
      007607 36                    1576 	.db #0x36	; 54	'6'
      007608 00                    1577 	.db #0x00	; 0
      007609 00                    1578 	.db #0x00	; 0
      00760A 00                    1579 	.db #0x00	; 0
      00760B 56                    1580 	.db #0x56	; 86	'V'
      00760C 36                    1581 	.db #0x36	; 54	'6'
      00760D 00                    1582 	.db #0x00	; 0
      00760E 00                    1583 	.db #0x00	; 0
      00760F 08                    1584 	.db #0x08	; 8
      007610 14                    1585 	.db #0x14	; 20
      007611 22                    1586 	.db #0x22	; 34
      007612 41                    1587 	.db #0x41	; 65	'A'
      007613 00                    1588 	.db #0x00	; 0
      007614 14                    1589 	.db #0x14	; 20
      007615 14                    1590 	.db #0x14	; 20
      007616 14                    1591 	.db #0x14	; 20
      007617 14                    1592 	.db #0x14	; 20
      007618 14                    1593 	.db #0x14	; 20
      007619 00                    1594 	.db #0x00	; 0
      00761A 41                    1595 	.db #0x41	; 65	'A'
      00761B 22                    1596 	.db #0x22	; 34
      00761C 14                    1597 	.db #0x14	; 20
      00761D 08                    1598 	.db #0x08	; 8
      00761E 02                    1599 	.db #0x02	; 2
      00761F 01                    1600 	.db #0x01	; 1
      007620 51                    1601 	.db #0x51	; 81	'Q'
      007621 09                    1602 	.db #0x09	; 9
      007622 06                    1603 	.db #0x06	; 6
      007623 32                    1604 	.db #0x32	; 50	'2'
      007624 49                    1605 	.db #0x49	; 73	'I'
      007625 79                    1606 	.db #0x79	; 121	'y'
      007626 41                    1607 	.db #0x41	; 65	'A'
      007627 3E                    1608 	.db #0x3e	; 62
      007628 7E                    1609 	.db #0x7e	; 126
      007629 11                    1610 	.db #0x11	; 17
      00762A 11                    1611 	.db #0x11	; 17
      00762B 11                    1612 	.db #0x11	; 17
      00762C 7E                    1613 	.db #0x7e	; 126
      00762D 7F                    1614 	.db #0x7f	; 127
      00762E 49                    1615 	.db #0x49	; 73	'I'
      00762F 49                    1616 	.db #0x49	; 73	'I'
      007630 49                    1617 	.db #0x49	; 73	'I'
      007631 36                    1618 	.db #0x36	; 54	'6'
      007632 3E                    1619 	.db #0x3e	; 62
      007633 41                    1620 	.db #0x41	; 65	'A'
      007634 41                    1621 	.db #0x41	; 65	'A'
      007635 41                    1622 	.db #0x41	; 65	'A'
      007636 22                    1623 	.db #0x22	; 34
      007637 7F                    1624 	.db #0x7f	; 127
      007638 41                    1625 	.db #0x41	; 65	'A'
      007639 41                    1626 	.db #0x41	; 65	'A'
      00763A 22                    1627 	.db #0x22	; 34
      00763B 1C                    1628 	.db #0x1c	; 28
      00763C 7F                    1629 	.db #0x7f	; 127
      00763D 49                    1630 	.db #0x49	; 73	'I'
      00763E 49                    1631 	.db #0x49	; 73	'I'
      00763F 49                    1632 	.db #0x49	; 73	'I'
      007640 41                    1633 	.db #0x41	; 65	'A'
      007641 7F                    1634 	.db #0x7f	; 127
      007642 09                    1635 	.db #0x09	; 9
      007643 09                    1636 	.db #0x09	; 9
      007644 09                    1637 	.db #0x09	; 9
      007645 01                    1638 	.db #0x01	; 1
      007646 3E                    1639 	.db #0x3e	; 62
      007647 41                    1640 	.db #0x41	; 65	'A'
      007648 49                    1641 	.db #0x49	; 73	'I'
      007649 49                    1642 	.db #0x49	; 73	'I'
      00764A 7A                    1643 	.db #0x7a	; 122	'z'
      00764B 7F                    1644 	.db #0x7f	; 127
      00764C 08                    1645 	.db #0x08	; 8
      00764D 08                    1646 	.db #0x08	; 8
      00764E 08                    1647 	.db #0x08	; 8
      00764F 7F                    1648 	.db #0x7f	; 127
      007650 00                    1649 	.db #0x00	; 0
      007651 41                    1650 	.db #0x41	; 65	'A'
      007652 7F                    1651 	.db #0x7f	; 127
      007653 41                    1652 	.db #0x41	; 65	'A'
      007654 00                    1653 	.db #0x00	; 0
      007655 20                    1654 	.db #0x20	; 32
      007656 40                    1655 	.db #0x40	; 64
      007657 41                    1656 	.db #0x41	; 65	'A'
      007658 3F                    1657 	.db #0x3f	; 63
      007659 01                    1658 	.db #0x01	; 1
      00765A 7F                    1659 	.db #0x7f	; 127
      00765B 08                    1660 	.db #0x08	; 8
      00765C 14                    1661 	.db #0x14	; 20
      00765D 22                    1662 	.db #0x22	; 34
      00765E 41                    1663 	.db #0x41	; 65	'A'
      00765F 7F                    1664 	.db #0x7f	; 127
      007660 40                    1665 	.db #0x40	; 64
      007661 40                    1666 	.db #0x40	; 64
      007662 40                    1667 	.db #0x40	; 64
      007663 40                    1668 	.db #0x40	; 64
      007664 7F                    1669 	.db #0x7f	; 127
      007665 02                    1670 	.db #0x02	; 2
      007666 0C                    1671 	.db #0x0c	; 12
      007667 02                    1672 	.db #0x02	; 2
      007668 7F                    1673 	.db #0x7f	; 127
      007669 7F                    1674 	.db #0x7f	; 127
      00766A 04                    1675 	.db #0x04	; 4
      00766B 08                    1676 	.db #0x08	; 8
      00766C 10                    1677 	.db #0x10	; 16
      00766D 7F                    1678 	.db #0x7f	; 127
      00766E 3E                    1679 	.db #0x3e	; 62
      00766F 41                    1680 	.db #0x41	; 65	'A'
      007670 41                    1681 	.db #0x41	; 65	'A'
      007671 41                    1682 	.db #0x41	; 65	'A'
      007672 3E                    1683 	.db #0x3e	; 62
      007673 7F                    1684 	.db #0x7f	; 127
      007674 09                    1685 	.db #0x09	; 9
      007675 09                    1686 	.db #0x09	; 9
      007676 09                    1687 	.db #0x09	; 9
      007677 06                    1688 	.db #0x06	; 6
      007678 3E                    1689 	.db #0x3e	; 62
      007679 41                    1690 	.db #0x41	; 65	'A'
      00767A 51                    1691 	.db #0x51	; 81	'Q'
      00767B 21                    1692 	.db #0x21	; 33
      00767C 5E                    1693 	.db #0x5e	; 94
      00767D 7F                    1694 	.db #0x7f	; 127
      00767E 09                    1695 	.db #0x09	; 9
      00767F 19                    1696 	.db #0x19	; 25
      007680 29                    1697 	.db #0x29	; 41
      007681 46                    1698 	.db #0x46	; 70	'F'
      007682 46                    1699 	.db #0x46	; 70	'F'
      007683 49                    1700 	.db #0x49	; 73	'I'
      007684 49                    1701 	.db #0x49	; 73	'I'
      007685 49                    1702 	.db #0x49	; 73	'I'
      007686 31                    1703 	.db #0x31	; 49	'1'
      007687 01                    1704 	.db #0x01	; 1
      007688 01                    1705 	.db #0x01	; 1
      007689 7F                    1706 	.db #0x7f	; 127
      00768A 01                    1707 	.db #0x01	; 1
      00768B 01                    1708 	.db #0x01	; 1
      00768C 3F                    1709 	.db #0x3f	; 63
      00768D 40                    1710 	.db #0x40	; 64
      00768E 40                    1711 	.db #0x40	; 64
      00768F 40                    1712 	.db #0x40	; 64
      007690 3F                    1713 	.db #0x3f	; 63
      007691 1F                    1714 	.db #0x1f	; 31
      007692 20                    1715 	.db #0x20	; 32
      007693 40                    1716 	.db #0x40	; 64
      007694 20                    1717 	.db #0x20	; 32
      007695 1F                    1718 	.db #0x1f	; 31
      007696 3F                    1719 	.db #0x3f	; 63
      007697 40                    1720 	.db #0x40	; 64
      007698 38                    1721 	.db #0x38	; 56	'8'
      007699 40                    1722 	.db #0x40	; 64
      00769A 3F                    1723 	.db #0x3f	; 63
      00769B 63                    1724 	.db #0x63	; 99	'c'
      00769C 14                    1725 	.db #0x14	; 20
      00769D 08                    1726 	.db #0x08	; 8
      00769E 14                    1727 	.db #0x14	; 20
      00769F 63                    1728 	.db #0x63	; 99	'c'
      0076A0 07                    1729 	.db #0x07	; 7
      0076A1 08                    1730 	.db #0x08	; 8
      0076A2 70                    1731 	.db #0x70	; 112	'p'
      0076A3 08                    1732 	.db #0x08	; 8
      0076A4 07                    1733 	.db #0x07	; 7
      0076A5 61                    1734 	.db #0x61	; 97	'a'
      0076A6 51                    1735 	.db #0x51	; 81	'Q'
      0076A7 49                    1736 	.db #0x49	; 73	'I'
      0076A8 45                    1737 	.db #0x45	; 69	'E'
      0076A9 43                    1738 	.db #0x43	; 67	'C'
      0076AA 00                    1739 	.db #0x00	; 0
      0076AB 7F                    1740 	.db #0x7f	; 127
      0076AC 41                    1741 	.db #0x41	; 65	'A'
      0076AD 41                    1742 	.db #0x41	; 65	'A'
      0076AE 00                    1743 	.db #0x00	; 0
      0076AF 02                    1744 	.db #0x02	; 2
      0076B0 04                    1745 	.db #0x04	; 4
      0076B1 08                    1746 	.db #0x08	; 8
      0076B2 10                    1747 	.db #0x10	; 16
      0076B3 20                    1748 	.db #0x20	; 32
      0076B4 00                    1749 	.db #0x00	; 0
      0076B5 41                    1750 	.db #0x41	; 65	'A'
      0076B6 41                    1751 	.db #0x41	; 65	'A'
      0076B7 7F                    1752 	.db #0x7f	; 127
      0076B8 00                    1753 	.db #0x00	; 0
      0076B9 04                    1754 	.db #0x04	; 4
      0076BA 02                    1755 	.db #0x02	; 2
      0076BB 01                    1756 	.db #0x01	; 1
      0076BC 02                    1757 	.db #0x02	; 2
      0076BD 04                    1758 	.db #0x04	; 4
      0076BE 40                    1759 	.db #0x40	; 64
      0076BF 40                    1760 	.db #0x40	; 64
      0076C0 40                    1761 	.db #0x40	; 64
      0076C1 40                    1762 	.db #0x40	; 64
      0076C2 40                    1763 	.db #0x40	; 64
      0076C3 00                    1764 	.db #0x00	; 0
      0076C4 01                    1765 	.db #0x01	; 1
      0076C5 02                    1766 	.db #0x02	; 2
      0076C6 04                    1767 	.db #0x04	; 4
      0076C7 00                    1768 	.db #0x00	; 0
      0076C8 20                    1769 	.db #0x20	; 32
      0076C9 54                    1770 	.db #0x54	; 84	'T'
      0076CA 54                    1771 	.db #0x54	; 84	'T'
      0076CB 54                    1772 	.db #0x54	; 84	'T'
      0076CC 78                    1773 	.db #0x78	; 120	'x'
      0076CD 7F                    1774 	.db #0x7f	; 127
      0076CE 48                    1775 	.db #0x48	; 72	'H'
      0076CF 44                    1776 	.db #0x44	; 68	'D'
      0076D0 44                    1777 	.db #0x44	; 68	'D'
      0076D1 38                    1778 	.db #0x38	; 56	'8'
      0076D2 38                    1779 	.db #0x38	; 56	'8'
      0076D3 44                    1780 	.db #0x44	; 68	'D'
      0076D4 44                    1781 	.db #0x44	; 68	'D'
      0076D5 44                    1782 	.db #0x44	; 68	'D'
      0076D6 20                    1783 	.db #0x20	; 32
      0076D7 38                    1784 	.db #0x38	; 56	'8'
      0076D8 44                    1785 	.db #0x44	; 68	'D'
      0076D9 44                    1786 	.db #0x44	; 68	'D'
      0076DA 48                    1787 	.db #0x48	; 72	'H'
      0076DB 7F                    1788 	.db #0x7f	; 127
      0076DC 38                    1789 	.db #0x38	; 56	'8'
      0076DD 54                    1790 	.db #0x54	; 84	'T'
      0076DE 54                    1791 	.db #0x54	; 84	'T'
      0076DF 54                    1792 	.db #0x54	; 84	'T'
      0076E0 18                    1793 	.db #0x18	; 24
      0076E1 08                    1794 	.db #0x08	; 8
      0076E2 7E                    1795 	.db #0x7e	; 126
      0076E3 09                    1796 	.db #0x09	; 9
      0076E4 01                    1797 	.db #0x01	; 1
      0076E5 02                    1798 	.db #0x02	; 2
      0076E6 0C                    1799 	.db #0x0c	; 12
      0076E7 52                    1800 	.db #0x52	; 82	'R'
      0076E8 52                    1801 	.db #0x52	; 82	'R'
      0076E9 52                    1802 	.db #0x52	; 82	'R'
      0076EA 3E                    1803 	.db #0x3e	; 62
      0076EB 7F                    1804 	.db #0x7f	; 127
      0076EC 08                    1805 	.db #0x08	; 8
      0076ED 04                    1806 	.db #0x04	; 4
      0076EE 04                    1807 	.db #0x04	; 4
      0076EF 78                    1808 	.db #0x78	; 120	'x'
      0076F0 00                    1809 	.db #0x00	; 0
      0076F1 44                    1810 	.db #0x44	; 68	'D'
      0076F2 7D                    1811 	.db #0x7d	; 125
      0076F3 40                    1812 	.db #0x40	; 64
      0076F4 00                    1813 	.db #0x00	; 0
      0076F5 20                    1814 	.db #0x20	; 32
      0076F6 40                    1815 	.db #0x40	; 64
      0076F7 44                    1816 	.db #0x44	; 68	'D'
      0076F8 3D                    1817 	.db #0x3d	; 61
      0076F9 00                    1818 	.db #0x00	; 0
      0076FA 7F                    1819 	.db #0x7f	; 127
      0076FB 10                    1820 	.db #0x10	; 16
      0076FC 28                    1821 	.db #0x28	; 40
      0076FD 44                    1822 	.db #0x44	; 68	'D'
      0076FE 00                    1823 	.db #0x00	; 0
      0076FF 00                    1824 	.db #0x00	; 0
      007700 41                    1825 	.db #0x41	; 65	'A'
      007701 7F                    1826 	.db #0x7f	; 127
      007702 40                    1827 	.db #0x40	; 64
      007703 00                    1828 	.db #0x00	; 0
      007704 7C                    1829 	.db #0x7c	; 124
      007705 04                    1830 	.db #0x04	; 4
      007706 18                    1831 	.db #0x18	; 24
      007707 04                    1832 	.db #0x04	; 4
      007708 78                    1833 	.db #0x78	; 120	'x'
      007709 7C                    1834 	.db #0x7c	; 124
      00770A 08                    1835 	.db #0x08	; 8
      00770B 04                    1836 	.db #0x04	; 4
      00770C 04                    1837 	.db #0x04	; 4
      00770D 78                    1838 	.db #0x78	; 120	'x'
      00770E 38                    1839 	.db #0x38	; 56	'8'
      00770F 44                    1840 	.db #0x44	; 68	'D'
      007710 44                    1841 	.db #0x44	; 68	'D'
      007711 44                    1842 	.db #0x44	; 68	'D'
      007712 38                    1843 	.db #0x38	; 56	'8'
      007713 7C                    1844 	.db #0x7c	; 124
      007714 14                    1845 	.db #0x14	; 20
      007715 14                    1846 	.db #0x14	; 20
      007716 14                    1847 	.db #0x14	; 20
      007717 08                    1848 	.db #0x08	; 8
      007718 08                    1849 	.db #0x08	; 8
      007719 14                    1850 	.db #0x14	; 20
      00771A 14                    1851 	.db #0x14	; 20
      00771B 14                    1852 	.db #0x14	; 20
      00771C 7C                    1853 	.db #0x7c	; 124
      00771D 7C                    1854 	.db #0x7c	; 124
      00771E 08                    1855 	.db #0x08	; 8
      00771F 04                    1856 	.db #0x04	; 4
      007720 04                    1857 	.db #0x04	; 4
      007721 08                    1858 	.db #0x08	; 8
      007722 48                    1859 	.db #0x48	; 72	'H'
      007723 54                    1860 	.db #0x54	; 84	'T'
      007724 54                    1861 	.db #0x54	; 84	'T'
      007725 54                    1862 	.db #0x54	; 84	'T'
      007726 20                    1863 	.db #0x20	; 32
      007727 04                    1864 	.db #0x04	; 4
      007728 3F                    1865 	.db #0x3f	; 63
      007729 44                    1866 	.db #0x44	; 68	'D'
      00772A 40                    1867 	.db #0x40	; 64
      00772B 20                    1868 	.db #0x20	; 32
      00772C 3C                    1869 	.db #0x3c	; 60
      00772D 40                    1870 	.db #0x40	; 64
      00772E 40                    1871 	.db #0x40	; 64
      00772F 20                    1872 	.db #0x20	; 32
      007730 7C                    1873 	.db #0x7c	; 124
      007731 1C                    1874 	.db #0x1c	; 28
      007732 20                    1875 	.db #0x20	; 32
      007733 40                    1876 	.db #0x40	; 64
      007734 20                    1877 	.db #0x20	; 32
      007735 1C                    1878 	.db #0x1c	; 28
      007736 3C                    1879 	.db #0x3c	; 60
      007737 40                    1880 	.db #0x40	; 64
      007738 30                    1881 	.db #0x30	; 48	'0'
      007739 40                    1882 	.db #0x40	; 64
      00773A 3C                    1883 	.db #0x3c	; 60
      00773B 44                    1884 	.db #0x44	; 68	'D'
      00773C 28                    1885 	.db #0x28	; 40
      00773D 10                    1886 	.db #0x10	; 16
      00773E 28                    1887 	.db #0x28	; 40
      00773F 44                    1888 	.db #0x44	; 68	'D'
      007740 0C                    1889 	.db #0x0c	; 12
      007741 50                    1890 	.db #0x50	; 80	'P'
      007742 50                    1891 	.db #0x50	; 80	'P'
      007743 50                    1892 	.db #0x50	; 80	'P'
      007744 3C                    1893 	.db #0x3c	; 60
      007745 44                    1894 	.db #0x44	; 68	'D'
      007746 64                    1895 	.db #0x64	; 100	'd'
      007747 54                    1896 	.db #0x54	; 84	'T'
      007748 4C                    1897 	.db #0x4c	; 76	'L'
      007749 44                    1898 	.db #0x44	; 68	'D'
      00774A 00                    1899 	.db #0x00	; 0
      00774B 08                    1900 	.db #0x08	; 8
      00774C 36                    1901 	.db #0x36	; 54	'6'
      00774D 41                    1902 	.db #0x41	; 65	'A'
      00774E 00                    1903 	.db #0x00	; 0
      00774F 00                    1904 	.db #0x00	; 0
      007750 00                    1905 	.db #0x00	; 0
      007751 7F                    1906 	.db #0x7f	; 127
      007752 00                    1907 	.db #0x00	; 0
      007753 00                    1908 	.db #0x00	; 0
      007754 00                    1909 	.db #0x00	; 0
      007755 41                    1910 	.db #0x41	; 65	'A'
      007756 36                    1911 	.db #0x36	; 54	'6'
      007757 08                    1912 	.db #0x08	; 8
      007758 00                    1913 	.db #0x00	; 0
      007759 10                    1914 	.db #0x10	; 16
      00775A 08                    1915 	.db #0x08	; 8
      00775B 08                    1916 	.db #0x08	; 8
      00775C 10                    1917 	.db #0x10	; 16
      00775D 08                    1918 	.db #0x08	; 8
      00775E 00                    1919 	.db #0x00	; 0
      00775F 00                    1920 	.db #0x00	; 0
      007760 00                    1921 	.db #0x00	; 0
      007761 00                    1922 	.db #0x00	; 0
      007762 00                    1923 	.db #0x00	; 0
                                   1924 	.area XINIT   (CODE)
      007C25                       1925 __xinit__buttons:
      007C25 6A 05 00              1926 	.byte _button1, (_button1 >> 8),#0x00
      007C28 7C 05 00              1927 	.byte _button2, (_button2 >> 8),#0x00
      007C2B 8E 05 00              1928 	.byte _encoder_button, (_encoder_button >> 8),#0x00
                                   1929 	.area CABS    (ABS,CODE)
