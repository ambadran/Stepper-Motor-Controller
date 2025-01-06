                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _gpioConfigure
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
                                    157 	.globl _i2cStartCommand_PARM_2
                                    158 	.globl _i2cInitialiseMaster_PARM_2
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
                                    427 	.globl _i2cInitialiseMaster
                                    428 	.globl _i2cStart
                                    429 	.globl _i2cStop
                                    430 	.globl _i2cSendAck
                                    431 	.globl _i2cSendData
                                    432 	.globl _i2cReceiveAck
                                    433 	.globl _i2cReceiveData
                                    434 	.globl _i2cStartCommand
                                    435 	.globl _i2cSendByte
                                    436 	.globl _i2cReadByteSendAck
                                    437 ;--------------------------------------------------------
                                    438 ; special function registers
                                    439 ;--------------------------------------------------------
                                    440 	.area RSEG    (ABS,DATA)
      000000                        441 	.org 0x0000
                           0000BC   442 _ADC_CONTR	=	0x00bc
                           0000BD   443 _ADC_RESH	=	0x00bd
                           0000BE   444 _ADC_RESL	=	0x00be
                           00BDBE   445 _ADC_RES	=	0xbdbe
                           0000DE   446 _ADCCFG	=	0x00de
                           0000FA   447 _DMA_ADC_AMT	=	0x00fa
                           0000E6   448 _CMPCR1	=	0x00e6
                           0000E7   449 _CMPCR2	=	0x00e7
                           000082   450 _DPL	=	0x0082
                           000083   451 _DPH	=	0x0083
                           008382   452 _DP	=	0x8382
                           0000E3   453 _DPS	=	0x00e3
                           0000E4   454 _DPL1	=	0x00e4
                           0000E5   455 _DPH1	=	0x00e5
                           0000AE   456 _TA	=	0x00ae
                           000090   457 _P1	=	0x0090
                           000091   458 _P1M1	=	0x0091
                           000092   459 _P1M0	=	0x0092
                           0000A0   460 _P2	=	0x00a0
                           000095   461 _P2M1	=	0x0095
                           000096   462 _P2M0	=	0x0096
                           0000B0   463 _P3	=	0x00b0
                           0000B1   464 _P3M1	=	0x00b1
                           0000B2   465 _P3M0	=	0x00b2
                           0000C8   466 _P5	=	0x00c8
                           0000C9   467 _P5M1	=	0x00c9
                           0000CA   468 _P5M0	=	0x00ca
                           0000C2   469 _IAP_DATA	=	0x00c2
                           0000C3   470 _IAP_ADDRH	=	0x00c3
                           0000C4   471 _IAP_ADDRL	=	0x00c4
                           00C3C4   472 _IAP_ADDR	=	0xc3c4
                           0000C5   473 _IAP_CMD	=	0x00c5
                           0000C6   474 _IAP_TRIG	=	0x00c6
                           0000C7   475 _IAP_CONTR	=	0x00c7
                           0000F5   476 _IAP_TPS	=	0x00f5
                           00008F   477 _INT_CLKO	=	0x008f
                           0000A8   478 _IE1	=	0x00a8
                           0000B8   479 _IP1L	=	0x00b8
                           0000B7   480 _IP1H	=	0x00b7
                           0000AF   481 _IE2	=	0x00af
                           0000B5   482 _IP2L	=	0x00b5
                           0000B6   483 _IP2H	=	0x00b6
                           0000DF   484 _IP3L	=	0x00df
                           0000EE   485 _IP3H	=	0x00ee
                           000081   486 _SP	=	0x0081
                           0000D0   487 _PSW	=	0x00d0
                           0000E0   488 _ACC	=	0x00e0
                           0000F0   489 _B	=	0x00f0
                           000087   490 _PCON	=	0x0087
                           0000FF   491 _RSTCFG	=	0x00ff
                           0000A2   492 _P_SW1	=	0x00a2
                           0000BA   493 _P_SW2	=	0x00ba
                           0000A1   494 _BUS_SPEED	=	0x00a1
                           0000AA   495 _WKTCL	=	0x00aa
                           0000AB   496 _WKTCH	=	0x00ab
                           00ABAA   497 _WKTC	=	0xabaa
                           0000CD   498 _SPSTAT	=	0x00cd
                           0000CE   499 _SPCTL	=	0x00ce
                           0000CF   500 _SPDAT	=	0x00cf
                           00009D   501 _IRCBAND	=	0x009d
                           00009E   502 _LIRTRIM	=	0x009e
                           00009F   503 _IRTRIM	=	0x009f
                           000088   504 _TCON	=	0x0088
                           000089   505 _TMOD	=	0x0089
                           00008A   506 _T0L	=	0x008a
                           00008C   507 _T0H	=	0x008c
                           008C8A   508 _T0	=	0x8c8a
                           00008B   509 _T1L	=	0x008b
                           00008D   510 _T1H	=	0x008d
                           008D8B   511 _T1	=	0x8d8b
                           0000D7   512 _T2L	=	0x00d7
                           0000D6   513 _T2H	=	0x00d6
                           00D6D7   514 _T2	=	0xd6d7
                           00008E   515 _AUXR	=	0x008e
                           0000C1   516 _WDT_CONTR	=	0x00c1
                           0000D1   517 _T4T3M	=	0x00d1
                           0000D2   518 _T4H	=	0x00d2
                           0000D3   519 _T4L	=	0x00d3
                           00D2D3   520 _T4	=	0xd2d3
                           0000D4   521 _T3H	=	0x00d4
                           0000D5   522 _T3L	=	0x00d5
                           00D4D5   523 _T3	=	0xd4d5
                           0000EF   524 _AUXINTIF	=	0x00ef
                           0000A9   525 _SADDR	=	0x00a9
                           0000B9   526 _SADEN	=	0x00b9
                           000098   527 _S1CON	=	0x0098
                           000099   528 _S1BUF	=	0x0099
                           00009A   529 _S2CON	=	0x009a
                           00009B   530 _S2BUF	=	0x009b
                           0000AC   531 _S3CON	=	0x00ac
                           0000AD   532 _S3BUF	=	0x00ad
                           000084   533 _S4CON	=	0x0084
                           000085   534 _S4BUF	=	0x0085
                           0000DC   535 _USBCLK	=	0x00dc
                           0000EC   536 _USBDAT	=	0x00ec
                           0000F4   537 _USBCON	=	0x00f4
                           0000FC   538 _USBADR	=	0x00fc
                                    539 ;--------------------------------------------------------
                                    540 ; special function bits
                                    541 ;--------------------------------------------------------
                                    542 	.area RSEG    (ABS,DATA)
      000000                        543 	.org 0x0000
                           000090   544 _P1_0	=	0x0090
                           000091   545 _P1_1	=	0x0091
                           000092   546 _P1_2	=	0x0092
                           000093   547 _P1_3	=	0x0093
                           000094   548 _P1_4	=	0x0094
                           000095   549 _P1_5	=	0x0095
                           000096   550 _P1_6	=	0x0096
                           000097   551 _P1_7	=	0x0097
                           0000A0   552 _P2_0	=	0x00a0
                           0000A1   553 _P2_1	=	0x00a1
                           0000A2   554 _P2_2	=	0x00a2
                           0000A3   555 _P2_3	=	0x00a3
                           0000A4   556 _P2_4	=	0x00a4
                           0000A5   557 _P2_5	=	0x00a5
                           0000A6   558 _P2_6	=	0x00a6
                           0000A7   559 _P2_7	=	0x00a7
                           0000B0   560 _P3_0	=	0x00b0
                           0000B1   561 _P3_1	=	0x00b1
                           0000B2   562 _P3_2	=	0x00b2
                           0000B3   563 _P3_3	=	0x00b3
                           0000B4   564 _P3_4	=	0x00b4
                           0000B5   565 _P3_5	=	0x00b5
                           0000B6   566 _P3_6	=	0x00b6
                           0000B7   567 _P3_7	=	0x00b7
                           0000C8   568 _P5_0	=	0x00c8
                           0000C9   569 _P5_1	=	0x00c9
                           0000CA   570 _P5_2	=	0x00ca
                           0000CB   571 _P5_3	=	0x00cb
                           0000CC   572 _P5_4	=	0x00cc
                           0000CD   573 _P5_5	=	0x00cd
                           000088   574 _INT0TR	=	0x0088
                           00008A   575 _INT1TR	=	0x008a
                           0000A8   576 _INT0IE	=	0x00a8
                           0000AA   577 _INT1IE	=	0x00aa
                           0000AF   578 _EA	=	0x00af
                           0000D0   579 _P	=	0x00d0
                           0000D1   580 _F1	=	0x00d1
                           0000D2   581 _OV	=	0x00d2
                           0000D3   582 _RS0	=	0x00d3
                           0000D4   583 _RS1	=	0x00d4
                           0000D5   584 _F0	=	0x00d5
                           0000D6   585 _AC	=	0x00d6
                           0000D7   586 _CY	=	0x00d7
                           00008C   587 _T0RUN	=	0x008c
                           00008E   588 _T1RUN	=	0x008e
                           0000A9   589 _T0IE	=	0x00a9
                           0000AB   590 _T1IE	=	0x00ab
                           00009F   591 _S1SM0_FE	=	0x009f
                                    592 ;--------------------------------------------------------
                                    593 ; overlayable register banks
                                    594 ;--------------------------------------------------------
                                    595 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        596 	.ds 8
                                    597 ;--------------------------------------------------------
                                    598 ; internal ram data
                                    599 ;--------------------------------------------------------
                                    600 	.area DSEG    (DATA)
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
      0000E9                        893 _uartGetCharacter_result_65536_69:
      0000E9                        894 	.ds 1
      0000EA                        895 ___i2c_configurePins_pinSwitch_65536_148:
      0000EA                        896 	.ds 1
      0000EB                        897 ___i2c_configurePins_pinConfig_262145_153:
      0000EB                        898 	.ds 13
      0000F8                        899 _i2cInitialiseMaster_PARM_2:
      0000F8                        900 	.ds 4
      0000FC                        901 _i2cInitialiseMaster_pinSwitch_65536_154:
      0000FC                        902 	.ds 1
      0000FD                        903 _i2cInitialiseMaster_msSpeed_65537_156:
      0000FD                        904 	.ds 1
      0000FE                        905 _i2cSendAck_value_65536_161:
      0000FE                        906 	.ds 1
      0000FF                        907 _i2cSendData_byte_65536_165:
      0000FF                        908 	.ds 1
      000100                        909 _i2cStartCommand_PARM_2:
      000100                        910 	.ds 1
      000101                        911 _i2cStartCommand_slaveAddress_65536_171:
      000101                        912 	.ds 1
      000102                        913 _i2cSendByte_byte_65536_174:
      000102                        914 	.ds 1
      000103                        915 _i2cReadByteSendAck_value_65536_177:
      000103                        916 	.ds 1
                                    917 ;--------------------------------------------------------
                                    918 ; absolute external ram data
                                    919 ;--------------------------------------------------------
                                    920 	.area XABS    (ABS,XDATA)
                                    921 ;--------------------------------------------------------
                                    922 ; external initialized ram data
                                    923 ;--------------------------------------------------------
                                    924 	.area XISEG   (XDATA)
                                    925 	.area HOME    (CODE)
                                    926 	.area GSINIT0 (CODE)
                                    927 	.area GSINIT1 (CODE)
                                    928 	.area GSINIT2 (CODE)
                                    929 	.area GSINIT3 (CODE)
                                    930 	.area GSINIT4 (CODE)
                                    931 	.area GSINIT5 (CODE)
                                    932 	.area GSINIT  (CODE)
                                    933 	.area GSFINAL (CODE)
                                    934 	.area CSEG    (CODE)
                                    935 ;--------------------------------------------------------
                                    936 ; global & static initialisations
                                    937 ;--------------------------------------------------------
                                    938 	.area HOME    (CODE)
                                    939 	.area GSINIT  (CODE)
                                    940 	.area GSFINAL (CODE)
                                    941 	.area GSINIT  (CODE)
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
                                    952 ;Allocation info for local variables in function '__i2c_configurePins'
                                    953 ;------------------------------------------------------------
                                    954 ;pinSwitch                 Allocated with name '___i2c_configurePins_pinSwitch_65536_148'
                                    955 ;i                         Allocated with name '___i2c_configurePins_i_131072_150'
                                    956 ;pinConfig                 Allocated with name '___i2c_configurePins_pinConfig_262145_153'
                                    957 ;pinDefinition             Allocated with name '___i2c_configurePins_pinDefinition_262145_153'
                                    958 ;------------------------------------------------------------
                                    959 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:82: static void __i2c_configurePins(uint8_t pinSwitch) {
                                    960 ;	-----------------------------------------
                                    961 ;	 function __i2c_configurePins
                                    962 ;	-----------------------------------------
      002550                        963 ___i2c_configurePins:
                           000007   964 	ar7 = 0x07
                           000006   965 	ar6 = 0x06
                           000005   966 	ar5 = 0x05
                           000004   967 	ar4 = 0x04
                           000003   968 	ar3 = 0x03
                           000002   969 	ar2 = 0x02
                           000001   970 	ar1 = 0x01
                           000000   971 	ar0 = 0x00
      002550 E5 82            [12]  972 	mov	a,dpl
      002552 90 00 EA         [24]  973 	mov	dptr,#___i2c_configurePins_pinSwitch_65536_148
      002555 F0               [24]  974 	movx	@dptr,a
                                    975 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:83: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / I2C_ROW_SIZE); i++) {
      002556 7F 00            [12]  976 	mov	r7,#0x00
      002558                        977 00105$:
      002558 BF 03 00         [24]  978 	cjne	r7,#0x03,00121$
      00255B                        979 00121$:
      00255B 40 01            [24]  980 	jc	00122$
      00255D 22               [24]  981 	ret
      00255E                        982 00122$:
                                    983 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:84: if (__pinConfigurations[i][I2C_PIN_SWITCH] == pinSwitch) {
      00255E EF               [12]  984 	mov	a,r7
      00255F 75 F0 03         [24]  985 	mov	b,#0x03
      002562 A4               [48]  986 	mul	ab
      002563 FD               [12]  987 	mov	r5,a
      002564 AE F0            [24]  988 	mov	r6,b
      002566 24 BA            [12]  989 	add	a,#___pinConfigurations
      002568 F5 82            [12]  990 	mov	dpl,a
      00256A EE               [12]  991 	mov	a,r6
      00256B 34 65            [12]  992 	addc	a,#(___pinConfigurations >> 8)
      00256D F5 83            [12]  993 	mov	dph,a
      00256F E4               [12]  994 	clr	a
      002570 93               [24]  995 	movc	a,@a+dptr
      002571 FC               [12]  996 	mov	r4,a
      002572 90 00 EA         [24]  997 	mov	dptr,#___i2c_configurePins_pinSwitch_65536_148
      002575 E0               [24]  998 	movx	a,@dptr
      002576 FB               [12]  999 	mov	r3,a
      002577 EC               [12] 1000 	mov	a,r4
      002578 B5 03 02         [24] 1001 	cjne	a,ar3,00123$
      00257B 80 03            [24] 1002 	sjmp	00124$
      00257D                       1003 00123$:
      00257D 02 26 21         [24] 1004 	ljmp	00106$
      002580                       1005 00124$:
                                   1006 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:85: P_SW2 = (P_SW2 & ~M_I2C_S) | ((pinSwitch << P_I2C_S) & M_I2C_S);
      002580 74 CF            [12] 1007 	mov	a,#0xcf
      002582 55 BA            [12] 1008 	anl	a,_P_SW2
      002584 FC               [12] 1009 	mov	r4,a
      002585 EB               [12] 1010 	mov	a,r3
      002586 C4               [12] 1011 	swap	a
      002587 54 F0            [12] 1012 	anl	a,#0xf0
      002589 FB               [12] 1013 	mov	r3,a
      00258A 74 30            [12] 1014 	mov	a,#0x30
      00258C 5B               [12] 1015 	anl	a,r3
      00258D 4C               [12] 1016 	orl	a,r4
      00258E F5 BA            [12] 1017 	mov	_P_SW2,a
                                   1018 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:86: GpioConfig pinConfig = GPIO_PIN_CONFIG(GPIO_PORT3, GPIO_PIN0, GPIO_OPEN_DRAIN_MODE);
      002590 90 00 EB         [24] 1019 	mov	dptr,#___i2c_configurePins_pinConfig_262145_153
      002593 74 03            [12] 1020 	mov	a,#0x03
      002595 F0               [24] 1021 	movx	@dptr,a
      002596 90 00 EC         [24] 1022 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0001)
      002599 E4               [12] 1023 	clr	a
      00259A F0               [24] 1024 	movx	@dptr,a
      00259B 90 00 ED         [24] 1025 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0002)
      00259E 04               [12] 1026 	inc	a
      00259F F0               [24] 1027 	movx	@dptr,a
      0025A0 90 00 EE         [24] 1028 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0003)
      0025A3 74 03            [12] 1029 	mov	a,#0x03
      0025A5 F0               [24] 1030 	movx	@dptr,a
      0025A6 90 00 EF         [24] 1031 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0004)
      0025A9 E4               [12] 1032 	clr	a
      0025AA F0               [24] 1033 	movx	@dptr,a
      0025AB 90 00 F0         [24] 1034 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0005)
      0025AE F0               [24] 1035 	movx	@dptr,a
      0025AF 90 00 F1         [24] 1036 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0006)
      0025B2 74 03            [12] 1037 	mov	a,#0x03
      0025B4 F0               [24] 1038 	movx	@dptr,a
      0025B5 90 00 F2         [24] 1039 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0007)
      0025B8 74 01            [12] 1040 	mov	a,#0x01
      0025BA F0               [24] 1041 	movx	@dptr,a
      0025BB 90 00 F3         [24] 1042 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0008)
      0025BE E4               [12] 1043 	clr	a
      0025BF F0               [24] 1044 	movx	@dptr,a
      0025C0 90 00 F4         [24] 1045 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0009)
      0025C3 F0               [24] 1046 	movx	@dptr,a
      0025C4 90 00 F5         [24] 1047 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x000a)
      0025C7 F0               [24] 1048 	movx	@dptr,a
      0025C8 90 00 F6         [24] 1049 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x000b)
      0025CB F0               [24] 1050 	movx	@dptr,a
      0025CC 90 00 F7         [24] 1051 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x000c)
      0025CF F0               [24] 1052 	movx	@dptr,a
                                   1053 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:89: pinDefinition = __pinConfigurations[i][I2C_SDA_PIN];
      0025D0 ED               [12] 1054 	mov	a,r5
      0025D1 24 BA            [12] 1055 	add	a,#___pinConfigurations
      0025D3 FD               [12] 1056 	mov	r5,a
      0025D4 EE               [12] 1057 	mov	a,r6
      0025D5 34 65            [12] 1058 	addc	a,#(___pinConfigurations >> 8)
      0025D7 FE               [12] 1059 	mov	r6,a
      0025D8 8D 82            [24] 1060 	mov	dpl,r5
      0025DA 8E 83            [24] 1061 	mov	dph,r6
      0025DC A3               [24] 1062 	inc	dptr
      0025DD A3               [24] 1063 	inc	dptr
      0025DE E4               [12] 1064 	clr	a
      0025DF 93               [24] 1065 	movc	a,@a+dptr
                                   1066 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:90: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      0025E0 FC               [12] 1067 	mov	r4,a
      0025E1 C4               [12] 1068 	swap	a
      0025E2 54 0F            [12] 1069 	anl	a,#0x0f
      0025E4 90 00 EB         [24] 1070 	mov	dptr,#___i2c_configurePins_pinConfig_262145_153
      0025E7 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:91: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      0025E8 53 04 0F         [24] 1073 	anl	ar4,#0x0f
      0025EB 90 00 EC         [24] 1074 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0001)
      0025EE EC               [12] 1075 	mov	a,r4
      0025EF F0               [24] 1076 	movx	@dptr,a
                                   1077 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:92: gpioConfigure(&pinConfig);
      0025F0 90 00 EB         [24] 1078 	mov	dptr,#___i2c_configurePins_pinConfig_262145_153
      0025F3 75 F0 00         [24] 1079 	mov	b,#0x00
      0025F6 C0 06            [24] 1080 	push	ar6
      0025F8 C0 05            [24] 1081 	push	ar5
      0025FA 12 18 44         [24] 1082 	lcall	_gpioConfigure
      0025FD D0 05            [24] 1083 	pop	ar5
      0025FF D0 06            [24] 1084 	pop	ar6
                                   1085 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:94: pinDefinition = __pinConfigurations[i][I2C_SCL_PIN];
      002601 8D 82            [24] 1086 	mov	dpl,r5
      002603 8E 83            [24] 1087 	mov	dph,r6
      002605 A3               [24] 1088 	inc	dptr
      002606 E4               [12] 1089 	clr	a
      002607 93               [24] 1090 	movc	a,@a+dptr
                                   1091 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:95: pinConfig.port = (GpioPort) (pinDefinition >> 4);
      002608 FE               [12] 1092 	mov	r6,a
      002609 C4               [12] 1093 	swap	a
      00260A 54 0F            [12] 1094 	anl	a,#0x0f
      00260C 90 00 EB         [24] 1095 	mov	dptr,#___i2c_configurePins_pinConfig_262145_153
      00260F F0               [24] 1096 	movx	@dptr,a
                                   1097 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:96: pinConfig.pin = (GpioPin) (pinDefinition & 0x0f);
      002610 53 06 0F         [24] 1098 	anl	ar6,#0x0f
      002613 90 00 EC         [24] 1099 	mov	dptr,#(___i2c_configurePins_pinConfig_262145_153 + 0x0001)
      002616 EE               [12] 1100 	mov	a,r6
      002617 F0               [24] 1101 	movx	@dptr,a
                                   1102 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:100: gpioConfigure(&pinConfig);
      002618 90 00 EB         [24] 1103 	mov	dptr,#___i2c_configurePins_pinConfig_262145_153
      00261B 75 F0 00         [24] 1104 	mov	b,#0x00
                                   1105 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:101: break;
      00261E 02 18 44         [24] 1106 	ljmp	_gpioConfigure
      002621                       1107 00106$:
                                   1108 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:83: for (uint8_t i = 0; i < (sizeof(__pinConfigurations) / I2C_ROW_SIZE); i++) {
      002621 0F               [12] 1109 	inc	r7
                                   1110 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:104: }
      002622 02 25 58         [24] 1111 	ljmp	00105$
                                   1112 ;------------------------------------------------------------
                                   1113 ;Allocation info for local variables in function 'i2cInitialiseMaster'
                                   1114 ;------------------------------------------------------------
                                   1115 ;i2cFreq                   Allocated with name '_i2cInitialiseMaster_PARM_2'
                                   1116 ;pinSwitch                 Allocated with name '_i2cInitialiseMaster_pinSwitch_65536_154'
                                   1117 ;msSpeed                   Allocated with name '_i2cInitialiseMaster_msSpeed_65537_156'
                                   1118 ;------------------------------------------------------------
                                   1119 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:186: void i2cInitialiseMaster(uint8_t pinSwitch, uint32_t i2cFreq) {
                                   1120 ;	-----------------------------------------
                                   1121 ;	 function i2cInitialiseMaster
                                   1122 ;	-----------------------------------------
      002625                       1123 _i2cInitialiseMaster:
      002625 E5 82            [12] 1124 	mov	a,dpl
      002627 90 00 FC         [24] 1125 	mov	dptr,#_i2cInitialiseMaster_pinSwitch_65536_154
      00262A F0               [24] 1126 	movx	@dptr,a
                                   1127 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:187: __i2c_configurePins(pinSwitch);
      00262B E0               [24] 1128 	movx	a,@dptr
      00262C F5 82            [12] 1129 	mov	dpl,a
      00262E 12 25 50         [24] 1130 	lcall	___i2c_configurePins
                                   1131 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:189: uint8_t msSpeed = MCU_FREQ / i2cFreq / 4 - 2;
      002631 90 00 F8         [24] 1132 	mov	dptr,#_i2cInitialiseMaster_PARM_2
      002634 E0               [24] 1133 	movx	a,@dptr
      002635 FC               [12] 1134 	mov	r4,a
      002636 A3               [24] 1135 	inc	dptr
      002637 E0               [24] 1136 	movx	a,@dptr
      002638 FD               [12] 1137 	mov	r5,a
      002639 A3               [24] 1138 	inc	dptr
      00263A E0               [24] 1139 	movx	a,@dptr
      00263B FE               [12] 1140 	mov	r6,a
      00263C A3               [24] 1141 	inc	dptr
      00263D E0               [24] 1142 	movx	a,@dptr
      00263E FF               [12] 1143 	mov	r7,a
      00263F 90 05 DC         [24] 1144 	mov	dptr,#__divulong_PARM_2
      002642 EC               [12] 1145 	mov	a,r4
      002643 F0               [24] 1146 	movx	@dptr,a
      002644 ED               [12] 1147 	mov	a,r5
      002645 A3               [24] 1148 	inc	dptr
      002646 F0               [24] 1149 	movx	@dptr,a
      002647 EE               [12] 1150 	mov	a,r6
      002648 A3               [24] 1151 	inc	dptr
      002649 F0               [24] 1152 	movx	@dptr,a
      00264A EF               [12] 1153 	mov	a,r7
      00264B A3               [24] 1154 	inc	dptr
      00264C F0               [24] 1155 	movx	@dptr,a
      00264D 90 0E C0         [24] 1156 	mov	dptr,#0x0ec0
      002650 75 F0 16         [24] 1157 	mov	b,#0x16
      002653 74 02            [12] 1158 	mov	a,#0x02
      002655 12 4A DE         [24] 1159 	lcall	__divulong
      002658 AC 82            [24] 1160 	mov	r4,dpl
      00265A AD 83            [24] 1161 	mov	r5,dph
      00265C ED               [12] 1162 	mov	a,r5
      00265D C3               [12] 1163 	clr	c
      00265E 13               [12] 1164 	rrc	a
      00265F CC               [12] 1165 	xch	a,r4
      002660 13               [12] 1166 	rrc	a
      002661 CC               [12] 1167 	xch	a,r4
      002662 C3               [12] 1168 	clr	c
      002663 13               [12] 1169 	rrc	a
      002664 CC               [12] 1170 	xch	a,r4
      002665 13               [12] 1171 	rrc	a
      002666 CC               [12] 1172 	xch	a,r4
      002667 1C               [12] 1173 	dec	r4
      002668 1C               [12] 1174 	dec	r4
      002669 90 00 FD         [24] 1175 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_156
      00266C EC               [12] 1176 	mov	a,r4
      00266D F0               [24] 1177 	movx	@dptr,a
                                   1178 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:191: if (msSpeed > 63) {
      00266E EC               [12] 1179 	mov	a,r4
      00266F 24 C0            [12] 1180 	add	a,#0xff - 0x3f
      002671 50 06            [24] 1181 	jnc	00102$
                                   1182 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:192: msSpeed = 63;
      002673 90 00 FD         [24] 1183 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_156
      002676 74 3F            [12] 1184 	mov	a,#0x3f
      002678 F0               [24] 1185 	movx	@dptr,a
      002679                       1186 00102$:
                                   1187 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:196: I2CMSCR = I2C_standby;
      002679 90 FE 81         [24] 1188 	mov	dptr,#_I2CMSCR
      00267C E4               [12] 1189 	clr	a
      00267D F0               [24] 1190 	movx	@dptr,a
                                   1191 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:198: I2CMSST = 0;
      00267E 90 FE 82         [24] 1192 	mov	dptr,#_I2CMSST
      002681 F0               [24] 1193 	movx	@dptr,a
                                   1194 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:200: I2CCFG = M_ENI2C | M_MSSL | msSpeed;
      002682 90 00 FD         [24] 1195 	mov	dptr,#_i2cInitialiseMaster_msSpeed_65537_156
      002685 E0               [24] 1196 	movx	a,@dptr
      002686 90 FE 80         [24] 1197 	mov	dptr,#_I2CCFG
      002689 44 C0            [12] 1198 	orl	a,#0xc0
      00268B F0               [24] 1199 	movx	@dptr,a
                                   1200 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:201: }
      00268C 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function '__waitForCompletion'
                                   1204 ;------------------------------------------------------------
                                   1205 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:203: static void __waitForCompletion() {
                                   1206 ;	-----------------------------------------
                                   1207 ;	 function __waitForCompletion
                                   1208 ;	-----------------------------------------
      00268D                       1209 ___waitForCompletion:
                                   1210 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:204: while (!(I2CMSST & M_MSIF));
      00268D                       1211 00101$:
      00268D 90 FE 82         [24] 1212 	mov	dptr,#_I2CMSST
      002690 E0               [24] 1213 	movx	a,@dptr
      002691 30 E6 F9         [24] 1214 	jnb	acc.6,00101$
                                   1215 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:206: I2CMSST &= ~M_MSIF;
      002694 90 FE 82         [24] 1216 	mov	dptr,#_I2CMSST
      002697 E0               [24] 1217 	movx	a,@dptr
      002698 53 E0 BF         [24] 1218 	anl	acc,#0xbf
      00269B F0               [24] 1219 	movx	@dptr,a
                                   1220 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:207: }
      00269C 22               [24] 1221 	ret
                                   1222 ;------------------------------------------------------------
                                   1223 ;Allocation info for local variables in function 'i2cStart'
                                   1224 ;------------------------------------------------------------
                                   1225 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:209: void i2cStart() {
                                   1226 ;	-----------------------------------------
                                   1227 ;	 function i2cStart
                                   1228 ;	-----------------------------------------
      00269D                       1229 _i2cStart:
                                   1230 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:210: I2CMSCR = I2C_start;
      00269D 90 FE 81         [24] 1231 	mov	dptr,#_I2CMSCR
      0026A0 74 01            [12] 1232 	mov	a,#0x01
      0026A2 F0               [24] 1233 	movx	@dptr,a
                                   1234 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:211: __waitForCompletion();
                                   1235 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:212: }
      0026A3 02 26 8D         [24] 1236 	ljmp	___waitForCompletion
                                   1237 ;------------------------------------------------------------
                                   1238 ;Allocation info for local variables in function 'i2cStop'
                                   1239 ;------------------------------------------------------------
                                   1240 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:214: void i2cStop() {
                                   1241 ;	-----------------------------------------
                                   1242 ;	 function i2cStop
                                   1243 ;	-----------------------------------------
      0026A6                       1244 _i2cStop:
                                   1245 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:215: I2CMSCR = I2C_stop;
      0026A6 90 FE 81         [24] 1246 	mov	dptr,#_I2CMSCR
      0026A9 74 06            [12] 1247 	mov	a,#0x06
      0026AB F0               [24] 1248 	movx	@dptr,a
                                   1249 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:216: __waitForCompletion();
                                   1250 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:217: }
      0026AC 02 26 8D         [24] 1251 	ljmp	___waitForCompletion
                                   1252 ;------------------------------------------------------------
                                   1253 ;Allocation info for local variables in function 'i2cSendAck'
                                   1254 ;------------------------------------------------------------
                                   1255 ;value                     Allocated with name '_i2cSendAck_value_65536_161'
                                   1256 ;------------------------------------------------------------
                                   1257 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:219: void i2cSendAck(I2C_AckNak value) {
                                   1258 ;	-----------------------------------------
                                   1259 ;	 function i2cSendAck
                                   1260 ;	-----------------------------------------
      0026AF                       1261 _i2cSendAck:
      0026AF E5 82            [12] 1262 	mov	a,dpl
      0026B1 90 00 FE         [24] 1263 	mov	dptr,#_i2cSendAck_value_65536_161
      0026B4 F0               [24] 1264 	movx	@dptr,a
                                   1265 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:220: if (value) {
      0026B5 E0               [24] 1266 	movx	a,@dptr
      0026B6 60 0A            [24] 1267 	jz	00102$
                                   1268 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:221: I2CMSST |= M_MSACKO;
      0026B8 90 FE 82         [24] 1269 	mov	dptr,#_I2CMSST
      0026BB E0               [24] 1270 	movx	a,@dptr
      0026BC 43 E0 01         [24] 1271 	orl	acc,#0x01
      0026BF F0               [24] 1272 	movx	@dptr,a
      0026C0 80 08            [24] 1273 	sjmp	00103$
      0026C2                       1274 00102$:
                                   1275 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:223: I2CMSST &= ~M_MSACKO;
      0026C2 90 FE 82         [24] 1276 	mov	dptr,#_I2CMSST
      0026C5 E0               [24] 1277 	movx	a,@dptr
      0026C6 53 E0 FE         [24] 1278 	anl	acc,#0xfe
      0026C9 F0               [24] 1279 	movx	@dptr,a
      0026CA                       1280 00103$:
                                   1281 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:226: I2CMSCR = I2C_sendAck;
      0026CA 90 FE 81         [24] 1282 	mov	dptr,#_I2CMSCR
      0026CD 74 05            [12] 1283 	mov	a,#0x05
      0026CF F0               [24] 1284 	movx	@dptr,a
                                   1285 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:227: __waitForCompletion();
                                   1286 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:228: }
      0026D0 02 26 8D         [24] 1287 	ljmp	___waitForCompletion
                                   1288 ;------------------------------------------------------------
                                   1289 ;Allocation info for local variables in function 'i2cSendData'
                                   1290 ;------------------------------------------------------------
                                   1291 ;byte                      Allocated with name '_i2cSendData_byte_65536_165'
                                   1292 ;------------------------------------------------------------
                                   1293 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:230: void i2cSendData(uint8_t byte) {
                                   1294 ;	-----------------------------------------
                                   1295 ;	 function i2cSendData
                                   1296 ;	-----------------------------------------
      0026D3                       1297 _i2cSendData:
      0026D3 E5 82            [12] 1298 	mov	a,dpl
      0026D5 90 00 FF         [24] 1299 	mov	dptr,#_i2cSendData_byte_65536_165
      0026D8 F0               [24] 1300 	movx	@dptr,a
                                   1301 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:231: I2CTXD = byte;
      0026D9 E0               [24] 1302 	movx	a,@dptr
      0026DA 90 FE 86         [24] 1303 	mov	dptr,#_I2CTXD
      0026DD F0               [24] 1304 	movx	@dptr,a
                                   1305 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:232: I2CMSCR = I2C_sendData;
      0026DE 90 FE 81         [24] 1306 	mov	dptr,#_I2CMSCR
      0026E1 74 02            [12] 1307 	mov	a,#0x02
      0026E3 F0               [24] 1308 	movx	@dptr,a
                                   1309 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:233: __waitForCompletion();
                                   1310 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:234: }
      0026E4 02 26 8D         [24] 1311 	ljmp	___waitForCompletion
                                   1312 ;------------------------------------------------------------
                                   1313 ;Allocation info for local variables in function 'i2cReceiveAck'
                                   1314 ;------------------------------------------------------------
                                   1315 ;result                    Allocated with name '_i2cReceiveAck_result_65537_168'
                                   1316 ;------------------------------------------------------------
                                   1317 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:236: I2C_AckNak i2cReceiveAck() {
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function i2cReceiveAck
                                   1320 ;	-----------------------------------------
      0026E7                       1321 _i2cReceiveAck:
                                   1322 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:237: I2CMSCR = I2C_receiveAck;
      0026E7 90 FE 81         [24] 1323 	mov	dptr,#_I2CMSCR
      0026EA 74 03            [12] 1324 	mov	a,#0x03
      0026EC F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:238: __waitForCompletion();
      0026ED 12 26 8D         [24] 1327 	lcall	___waitForCompletion
                                   1328 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:239: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      0026F0 90 FE 82         [24] 1329 	mov	dptr,#_I2CMSST
      0026F3 E0               [24] 1330 	movx	a,@dptr
      0026F4 FF               [12] 1331 	mov	r7,a
      0026F5 53 07 02         [24] 1332 	anl	ar7,#0x02
      0026F8 E4               [12] 1333 	clr	a
      0026F9 A2 E7            [12] 1334 	mov	c,acc.7
      0026FB 13               [12] 1335 	rrc	a
      0026FC CF               [12] 1336 	xch	a,r7
      0026FD 13               [12] 1337 	rrc	a
      0026FE CF               [12] 1338 	xch	a,r7
                                   1339 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:241: return result;
      0026FF 8F 82            [24] 1340 	mov	dpl,r7
                                   1341 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:242: }
      002701 22               [24] 1342 	ret
                                   1343 ;------------------------------------------------------------
                                   1344 ;Allocation info for local variables in function 'i2cReceiveData'
                                   1345 ;------------------------------------------------------------
                                   1346 ;result                    Allocated with name '_i2cReceiveData_result_65537_170'
                                   1347 ;------------------------------------------------------------
                                   1348 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:244: uint8_t i2cReceiveData() {
                                   1349 ;	-----------------------------------------
                                   1350 ;	 function i2cReceiveData
                                   1351 ;	-----------------------------------------
      002702                       1352 _i2cReceiveData:
                                   1353 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:245: I2CMSCR = I2C_receiveData;
      002702 90 FE 81         [24] 1354 	mov	dptr,#_I2CMSCR
      002705 74 04            [12] 1355 	mov	a,#0x04
      002707 F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:246: __waitForCompletion();
      002708 12 26 8D         [24] 1358 	lcall	___waitForCompletion
                                   1359 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:247: uint8_t result = I2CRXD;
      00270B 90 FE 87         [24] 1360 	mov	dptr,#_I2CRXD
      00270E E0               [24] 1361 	movx	a,@dptr
                                   1362 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:249: return result;
                                   1363 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:250: }
      00270F F5 82            [12] 1364 	mov	dpl,a
      002711 22               [24] 1365 	ret
                                   1366 ;------------------------------------------------------------
                                   1367 ;Allocation info for local variables in function 'i2cStartCommand'
                                   1368 ;------------------------------------------------------------
                                   1369 ;command                   Allocated with name '_i2cStartCommand_PARM_2'
                                   1370 ;slaveAddress              Allocated with name '_i2cStartCommand_slaveAddress_65536_171'
                                   1371 ;result                    Allocated with name '_i2cStartCommand_result_65537_173'
                                   1372 ;------------------------------------------------------------
                                   1373 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:252: I2C_AckNak i2cStartCommand(uint8_t slaveAddress, I2C_Command command) {
                                   1374 ;	-----------------------------------------
                                   1375 ;	 function i2cStartCommand
                                   1376 ;	-----------------------------------------
      002712                       1377 _i2cStartCommand:
      002712 E5 82            [12] 1378 	mov	a,dpl
      002714 90 01 01         [24] 1379 	mov	dptr,#_i2cStartCommand_slaveAddress_65536_171
      002717 F0               [24] 1380 	movx	@dptr,a
                                   1381 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:253: I2CTXD = (slaveAddress << 1) | command;
      002718 E0               [24] 1382 	movx	a,@dptr
      002719 25 E0            [12] 1383 	add	a,acc
      00271B FF               [12] 1384 	mov	r7,a
      00271C 90 01 00         [24] 1385 	mov	dptr,#_i2cStartCommand_PARM_2
      00271F E0               [24] 1386 	movx	a,@dptr
      002720 90 FE 86         [24] 1387 	mov	dptr,#_I2CTXD
      002723 4F               [12] 1388 	orl	a,r7
      002724 F0               [24] 1389 	movx	@dptr,a
                                   1390 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:254: I2CMSCR = I2C_start_sendData_receiveAck;
      002725 90 FE 81         [24] 1391 	mov	dptr,#_I2CMSCR
      002728 74 09            [12] 1392 	mov	a,#0x09
      00272A F0               [24] 1393 	movx	@dptr,a
                                   1394 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:255: __waitForCompletion();
      00272B 12 26 8D         [24] 1395 	lcall	___waitForCompletion
                                   1396 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:256: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      00272E 90 FE 82         [24] 1397 	mov	dptr,#_I2CMSST
      002731 E0               [24] 1398 	movx	a,@dptr
      002732 FF               [12] 1399 	mov	r7,a
      002733 53 07 02         [24] 1400 	anl	ar7,#0x02
      002736 E4               [12] 1401 	clr	a
      002737 A2 E7            [12] 1402 	mov	c,acc.7
      002739 13               [12] 1403 	rrc	a
      00273A CF               [12] 1404 	xch	a,r7
      00273B 13               [12] 1405 	rrc	a
      00273C CF               [12] 1406 	xch	a,r7
                                   1407 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:258: return result;
      00273D 8F 82            [24] 1408 	mov	dpl,r7
                                   1409 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:259: }
      00273F 22               [24] 1410 	ret
                                   1411 ;------------------------------------------------------------
                                   1412 ;Allocation info for local variables in function 'i2cSendByte'
                                   1413 ;------------------------------------------------------------
                                   1414 ;byte                      Allocated with name '_i2cSendByte_byte_65536_174'
                                   1415 ;result                    Allocated with name '_i2cSendByte_result_65537_176'
                                   1416 ;------------------------------------------------------------
                                   1417 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:261: I2C_AckNak i2cSendByte(uint8_t byte) {
                                   1418 ;	-----------------------------------------
                                   1419 ;	 function i2cSendByte
                                   1420 ;	-----------------------------------------
      002740                       1421 _i2cSendByte:
      002740 E5 82            [12] 1422 	mov	a,dpl
      002742 90 01 02         [24] 1423 	mov	dptr,#_i2cSendByte_byte_65536_174
      002745 F0               [24] 1424 	movx	@dptr,a
                                   1425 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:262: I2CTXD = byte;
      002746 E0               [24] 1426 	movx	a,@dptr
      002747 90 FE 86         [24] 1427 	mov	dptr,#_I2CTXD
      00274A F0               [24] 1428 	movx	@dptr,a
                                   1429 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:263: I2CMSCR = I2C_sendData_receiveAck;
      00274B 90 FE 81         [24] 1430 	mov	dptr,#_I2CMSCR
      00274E 74 0A            [12] 1431 	mov	a,#0x0a
      002750 F0               [24] 1432 	movx	@dptr,a
                                   1433 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:264: __waitForCompletion();
      002751 12 26 8D         [24] 1434 	lcall	___waitForCompletion
                                   1435 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:265: I2C_AckNak result = (I2C_AckNak) ((I2CMSST & M_MSACKI) >> P_MSACKI);
      002754 90 FE 82         [24] 1436 	mov	dptr,#_I2CMSST
      002757 E0               [24] 1437 	movx	a,@dptr
      002758 FF               [12] 1438 	mov	r7,a
      002759 53 07 02         [24] 1439 	anl	ar7,#0x02
      00275C E4               [12] 1440 	clr	a
      00275D A2 E7            [12] 1441 	mov	c,acc.7
      00275F 13               [12] 1442 	rrc	a
      002760 CF               [12] 1443 	xch	a,r7
      002761 13               [12] 1444 	rrc	a
      002762 CF               [12] 1445 	xch	a,r7
                                   1446 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:267: return result;
      002763 8F 82            [24] 1447 	mov	dpl,r7
                                   1448 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:268: }
      002765 22               [24] 1449 	ret
                                   1450 ;------------------------------------------------------------
                                   1451 ;Allocation info for local variables in function 'i2cReadByteSendAck'
                                   1452 ;------------------------------------------------------------
                                   1453 ;value                     Allocated with name '_i2cReadByteSendAck_value_65536_177'
                                   1454 ;result                    Allocated with name '_i2cReadByteSendAck_result_65537_179'
                                   1455 ;------------------------------------------------------------
                                   1456 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:270: uint8_t i2cReadByteSendAck(I2C_AckNak value) {
                                   1457 ;	-----------------------------------------
                                   1458 ;	 function i2cReadByteSendAck
                                   1459 ;	-----------------------------------------
      002766                       1460 _i2cReadByteSendAck:
      002766 E5 82            [12] 1461 	mov	a,dpl
      002768 90 01 03         [24] 1462 	mov	dptr,#_i2cReadByteSendAck_value_65536_177
      00276B F0               [24] 1463 	movx	@dptr,a
                                   1464 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:271: I2CMSCR = value ? I2C_receiveData_sendAck1 : I2C_receiveData_sendAck0;
      00276C E0               [24] 1465 	movx	a,@dptr
      00276D 60 06            [24] 1466 	jz	00103$
      00276F 7E 0C            [12] 1467 	mov	r6,#0x0c
      002771 7F 00            [12] 1468 	mov	r7,#0x00
      002773 80 04            [24] 1469 	sjmp	00104$
      002775                       1470 00103$:
      002775 7E 0B            [12] 1471 	mov	r6,#0x0b
      002777 7F 00            [12] 1472 	mov	r7,#0x00
      002779                       1473 00104$:
      002779 90 FE 81         [24] 1474 	mov	dptr,#_I2CMSCR
      00277C EE               [12] 1475 	mov	a,r6
      00277D F0               [24] 1476 	movx	@dptr,a
                                   1477 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:272: __waitForCompletion();
      00277E 12 26 8D         [24] 1478 	lcall	___waitForCompletion
                                   1479 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:273: uint8_t result = I2CRXD;
      002781 90 FE 87         [24] 1480 	mov	dptr,#_I2CRXD
      002784 E0               [24] 1481 	movx	a,@dptr
                                   1482 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:275: return result;
                                   1483 ;	/home/mr-a-717/.stc/uni-stc/hal/i2c-hal.c:276: }
      002785 F5 82            [12] 1484 	mov	dpl,a
      002787 22               [24] 1485 	ret
                                   1486 	.area CSEG    (CODE)
                                   1487 	.area CONST   (CODE)
      0063DA                       1488 _FONTS:
      0063DA 00                    1489 	.db #0x00	; 0
      0063DB 00                    1490 	.db #0x00	; 0
      0063DC 00                    1491 	.db #0x00	; 0
      0063DD 00                    1492 	.db #0x00	; 0
      0063DE 00                    1493 	.db #0x00	; 0
      0063DF 81                    1494 	.db #0x81	; 129
      0063E0 81                    1495 	.db #0x81	; 129
      0063E1 18                    1496 	.db #0x18	; 24
      0063E2 81                    1497 	.db #0x81	; 129
      0063E3 81                    1498 	.db #0x81	; 129
      0063E4 00                    1499 	.db #0x00	; 0
      0063E5 07                    1500 	.db #0x07	; 7
      0063E6 00                    1501 	.db #0x00	; 0
      0063E7 07                    1502 	.db #0x07	; 7
      0063E8 00                    1503 	.db #0x00	; 0
      0063E9 14                    1504 	.db #0x14	; 20
      0063EA 7F                    1505 	.db #0x7f	; 127
      0063EB 14                    1506 	.db #0x14	; 20
      0063EC 7F                    1507 	.db #0x7f	; 127
      0063ED 14                    1508 	.db #0x14	; 20
      0063EE 24                    1509 	.db #0x24	; 36
      0063EF 2A                    1510 	.db #0x2a	; 42
      0063F0 7F                    1511 	.db #0x7f	; 127
      0063F1 2A                    1512 	.db #0x2a	; 42
      0063F2 12                    1513 	.db #0x12	; 18
      0063F3 23                    1514 	.db #0x23	; 35
      0063F4 13                    1515 	.db #0x13	; 19
      0063F5 08                    1516 	.db #0x08	; 8
      0063F6 64                    1517 	.db #0x64	; 100	'd'
      0063F7 62                    1518 	.db #0x62	; 98	'b'
      0063F8 36                    1519 	.db #0x36	; 54	'6'
      0063F9 49                    1520 	.db #0x49	; 73	'I'
      0063FA 55                    1521 	.db #0x55	; 85	'U'
      0063FB 22                    1522 	.db #0x22	; 34
      0063FC 50                    1523 	.db #0x50	; 80	'P'
      0063FD 00                    1524 	.db #0x00	; 0
      0063FE 05                    1525 	.db #0x05	; 5
      0063FF 03                    1526 	.db #0x03	; 3
      006400 00                    1527 	.db #0x00	; 0
      006401 00                    1528 	.db #0x00	; 0
      006402 00                    1529 	.db #0x00	; 0
      006403 1C                    1530 	.db #0x1c	; 28
      006404 22                    1531 	.db #0x22	; 34
      006405 41                    1532 	.db #0x41	; 65	'A'
      006406 00                    1533 	.db #0x00	; 0
      006407 00                    1534 	.db #0x00	; 0
      006408 41                    1535 	.db #0x41	; 65	'A'
      006409 22                    1536 	.db #0x22	; 34
      00640A 1C                    1537 	.db #0x1c	; 28
      00640B 00                    1538 	.db #0x00	; 0
      00640C 14                    1539 	.db #0x14	; 20
      00640D 08                    1540 	.db #0x08	; 8
      00640E 3E                    1541 	.db #0x3e	; 62
      00640F 08                    1542 	.db #0x08	; 8
      006410 14                    1543 	.db #0x14	; 20
      006411 08                    1544 	.db #0x08	; 8
      006412 08                    1545 	.db #0x08	; 8
      006413 3E                    1546 	.db #0x3e	; 62
      006414 08                    1547 	.db #0x08	; 8
      006415 08                    1548 	.db #0x08	; 8
      006416 00                    1549 	.db #0x00	; 0
      006417 50                    1550 	.db #0x50	; 80	'P'
      006418 30                    1551 	.db #0x30	; 48	'0'
      006419 00                    1552 	.db #0x00	; 0
      00641A 00                    1553 	.db #0x00	; 0
      00641B 08                    1554 	.db #0x08	; 8
      00641C 08                    1555 	.db #0x08	; 8
      00641D 08                    1556 	.db #0x08	; 8
      00641E 08                    1557 	.db #0x08	; 8
      00641F 08                    1558 	.db #0x08	; 8
      006420 00                    1559 	.db #0x00	; 0
      006421 60                    1560 	.db #0x60	; 96
      006422 60                    1561 	.db #0x60	; 96
      006423 00                    1562 	.db #0x00	; 0
      006424 00                    1563 	.db #0x00	; 0
      006425 20                    1564 	.db #0x20	; 32
      006426 10                    1565 	.db #0x10	; 16
      006427 08                    1566 	.db #0x08	; 8
      006428 04                    1567 	.db #0x04	; 4
      006429 02                    1568 	.db #0x02	; 2
      00642A 3E                    1569 	.db #0x3e	; 62
      00642B 51                    1570 	.db #0x51	; 81	'Q'
      00642C 49                    1571 	.db #0x49	; 73	'I'
      00642D 45                    1572 	.db #0x45	; 69	'E'
      00642E 3E                    1573 	.db #0x3e	; 62
      00642F 00                    1574 	.db #0x00	; 0
      006430 42                    1575 	.db #0x42	; 66	'B'
      006431 7F                    1576 	.db #0x7f	; 127
      006432 40                    1577 	.db #0x40	; 64
      006433 00                    1578 	.db #0x00	; 0
      006434 42                    1579 	.db #0x42	; 66	'B'
      006435 61                    1580 	.db #0x61	; 97	'a'
      006436 51                    1581 	.db #0x51	; 81	'Q'
      006437 49                    1582 	.db #0x49	; 73	'I'
      006438 46                    1583 	.db #0x46	; 70	'F'
      006439 21                    1584 	.db #0x21	; 33
      00643A 41                    1585 	.db #0x41	; 65	'A'
      00643B 45                    1586 	.db #0x45	; 69	'E'
      00643C 4B                    1587 	.db #0x4b	; 75	'K'
      00643D 31                    1588 	.db #0x31	; 49	'1'
      00643E 18                    1589 	.db #0x18	; 24
      00643F 14                    1590 	.db #0x14	; 20
      006440 12                    1591 	.db #0x12	; 18
      006441 7F                    1592 	.db #0x7f	; 127
      006442 10                    1593 	.db #0x10	; 16
      006443 27                    1594 	.db #0x27	; 39
      006444 45                    1595 	.db #0x45	; 69	'E'
      006445 45                    1596 	.db #0x45	; 69	'E'
      006446 45                    1597 	.db #0x45	; 69	'E'
      006447 39                    1598 	.db #0x39	; 57	'9'
      006448 3C                    1599 	.db #0x3c	; 60
      006449 4A                    1600 	.db #0x4a	; 74	'J'
      00644A 49                    1601 	.db #0x49	; 73	'I'
      00644B 49                    1602 	.db #0x49	; 73	'I'
      00644C 30                    1603 	.db #0x30	; 48	'0'
      00644D 01                    1604 	.db #0x01	; 1
      00644E 71                    1605 	.db #0x71	; 113	'q'
      00644F 09                    1606 	.db #0x09	; 9
      006450 05                    1607 	.db #0x05	; 5
      006451 03                    1608 	.db #0x03	; 3
      006452 36                    1609 	.db #0x36	; 54	'6'
      006453 49                    1610 	.db #0x49	; 73	'I'
      006454 49                    1611 	.db #0x49	; 73	'I'
      006455 49                    1612 	.db #0x49	; 73	'I'
      006456 36                    1613 	.db #0x36	; 54	'6'
      006457 06                    1614 	.db #0x06	; 6
      006458 49                    1615 	.db #0x49	; 73	'I'
      006459 49                    1616 	.db #0x49	; 73	'I'
      00645A 29                    1617 	.db #0x29	; 41
      00645B 1E                    1618 	.db #0x1e	; 30
      00645C 00                    1619 	.db #0x00	; 0
      00645D 36                    1620 	.db #0x36	; 54	'6'
      00645E 36                    1621 	.db #0x36	; 54	'6'
      00645F 00                    1622 	.db #0x00	; 0
      006460 00                    1623 	.db #0x00	; 0
      006461 00                    1624 	.db #0x00	; 0
      006462 56                    1625 	.db #0x56	; 86	'V'
      006463 36                    1626 	.db #0x36	; 54	'6'
      006464 00                    1627 	.db #0x00	; 0
      006465 00                    1628 	.db #0x00	; 0
      006466 08                    1629 	.db #0x08	; 8
      006467 14                    1630 	.db #0x14	; 20
      006468 22                    1631 	.db #0x22	; 34
      006469 41                    1632 	.db #0x41	; 65	'A'
      00646A 00                    1633 	.db #0x00	; 0
      00646B 14                    1634 	.db #0x14	; 20
      00646C 14                    1635 	.db #0x14	; 20
      00646D 14                    1636 	.db #0x14	; 20
      00646E 14                    1637 	.db #0x14	; 20
      00646F 14                    1638 	.db #0x14	; 20
      006470 00                    1639 	.db #0x00	; 0
      006471 41                    1640 	.db #0x41	; 65	'A'
      006472 22                    1641 	.db #0x22	; 34
      006473 14                    1642 	.db #0x14	; 20
      006474 08                    1643 	.db #0x08	; 8
      006475 02                    1644 	.db #0x02	; 2
      006476 01                    1645 	.db #0x01	; 1
      006477 51                    1646 	.db #0x51	; 81	'Q'
      006478 09                    1647 	.db #0x09	; 9
      006479 06                    1648 	.db #0x06	; 6
      00647A 32                    1649 	.db #0x32	; 50	'2'
      00647B 49                    1650 	.db #0x49	; 73	'I'
      00647C 79                    1651 	.db #0x79	; 121	'y'
      00647D 41                    1652 	.db #0x41	; 65	'A'
      00647E 3E                    1653 	.db #0x3e	; 62
      00647F 7E                    1654 	.db #0x7e	; 126
      006480 11                    1655 	.db #0x11	; 17
      006481 11                    1656 	.db #0x11	; 17
      006482 11                    1657 	.db #0x11	; 17
      006483 7E                    1658 	.db #0x7e	; 126
      006484 7F                    1659 	.db #0x7f	; 127
      006485 49                    1660 	.db #0x49	; 73	'I'
      006486 49                    1661 	.db #0x49	; 73	'I'
      006487 49                    1662 	.db #0x49	; 73	'I'
      006488 36                    1663 	.db #0x36	; 54	'6'
      006489 3E                    1664 	.db #0x3e	; 62
      00648A 41                    1665 	.db #0x41	; 65	'A'
      00648B 41                    1666 	.db #0x41	; 65	'A'
      00648C 41                    1667 	.db #0x41	; 65	'A'
      00648D 22                    1668 	.db #0x22	; 34
      00648E 7F                    1669 	.db #0x7f	; 127
      00648F 41                    1670 	.db #0x41	; 65	'A'
      006490 41                    1671 	.db #0x41	; 65	'A'
      006491 22                    1672 	.db #0x22	; 34
      006492 1C                    1673 	.db #0x1c	; 28
      006493 7F                    1674 	.db #0x7f	; 127
      006494 49                    1675 	.db #0x49	; 73	'I'
      006495 49                    1676 	.db #0x49	; 73	'I'
      006496 49                    1677 	.db #0x49	; 73	'I'
      006497 41                    1678 	.db #0x41	; 65	'A'
      006498 7F                    1679 	.db #0x7f	; 127
      006499 09                    1680 	.db #0x09	; 9
      00649A 09                    1681 	.db #0x09	; 9
      00649B 09                    1682 	.db #0x09	; 9
      00649C 01                    1683 	.db #0x01	; 1
      00649D 3E                    1684 	.db #0x3e	; 62
      00649E 41                    1685 	.db #0x41	; 65	'A'
      00649F 49                    1686 	.db #0x49	; 73	'I'
      0064A0 49                    1687 	.db #0x49	; 73	'I'
      0064A1 7A                    1688 	.db #0x7a	; 122	'z'
      0064A2 7F                    1689 	.db #0x7f	; 127
      0064A3 08                    1690 	.db #0x08	; 8
      0064A4 08                    1691 	.db #0x08	; 8
      0064A5 08                    1692 	.db #0x08	; 8
      0064A6 7F                    1693 	.db #0x7f	; 127
      0064A7 00                    1694 	.db #0x00	; 0
      0064A8 41                    1695 	.db #0x41	; 65	'A'
      0064A9 7F                    1696 	.db #0x7f	; 127
      0064AA 41                    1697 	.db #0x41	; 65	'A'
      0064AB 00                    1698 	.db #0x00	; 0
      0064AC 20                    1699 	.db #0x20	; 32
      0064AD 40                    1700 	.db #0x40	; 64
      0064AE 41                    1701 	.db #0x41	; 65	'A'
      0064AF 3F                    1702 	.db #0x3f	; 63
      0064B0 01                    1703 	.db #0x01	; 1
      0064B1 7F                    1704 	.db #0x7f	; 127
      0064B2 08                    1705 	.db #0x08	; 8
      0064B3 14                    1706 	.db #0x14	; 20
      0064B4 22                    1707 	.db #0x22	; 34
      0064B5 41                    1708 	.db #0x41	; 65	'A'
      0064B6 7F                    1709 	.db #0x7f	; 127
      0064B7 40                    1710 	.db #0x40	; 64
      0064B8 40                    1711 	.db #0x40	; 64
      0064B9 40                    1712 	.db #0x40	; 64
      0064BA 40                    1713 	.db #0x40	; 64
      0064BB 7F                    1714 	.db #0x7f	; 127
      0064BC 02                    1715 	.db #0x02	; 2
      0064BD 0C                    1716 	.db #0x0c	; 12
      0064BE 02                    1717 	.db #0x02	; 2
      0064BF 7F                    1718 	.db #0x7f	; 127
      0064C0 7F                    1719 	.db #0x7f	; 127
      0064C1 04                    1720 	.db #0x04	; 4
      0064C2 08                    1721 	.db #0x08	; 8
      0064C3 10                    1722 	.db #0x10	; 16
      0064C4 7F                    1723 	.db #0x7f	; 127
      0064C5 3E                    1724 	.db #0x3e	; 62
      0064C6 41                    1725 	.db #0x41	; 65	'A'
      0064C7 41                    1726 	.db #0x41	; 65	'A'
      0064C8 41                    1727 	.db #0x41	; 65	'A'
      0064C9 3E                    1728 	.db #0x3e	; 62
      0064CA 7F                    1729 	.db #0x7f	; 127
      0064CB 09                    1730 	.db #0x09	; 9
      0064CC 09                    1731 	.db #0x09	; 9
      0064CD 09                    1732 	.db #0x09	; 9
      0064CE 06                    1733 	.db #0x06	; 6
      0064CF 3E                    1734 	.db #0x3e	; 62
      0064D0 41                    1735 	.db #0x41	; 65	'A'
      0064D1 51                    1736 	.db #0x51	; 81	'Q'
      0064D2 21                    1737 	.db #0x21	; 33
      0064D3 5E                    1738 	.db #0x5e	; 94
      0064D4 7F                    1739 	.db #0x7f	; 127
      0064D5 09                    1740 	.db #0x09	; 9
      0064D6 19                    1741 	.db #0x19	; 25
      0064D7 29                    1742 	.db #0x29	; 41
      0064D8 46                    1743 	.db #0x46	; 70	'F'
      0064D9 46                    1744 	.db #0x46	; 70	'F'
      0064DA 49                    1745 	.db #0x49	; 73	'I'
      0064DB 49                    1746 	.db #0x49	; 73	'I'
      0064DC 49                    1747 	.db #0x49	; 73	'I'
      0064DD 31                    1748 	.db #0x31	; 49	'1'
      0064DE 01                    1749 	.db #0x01	; 1
      0064DF 01                    1750 	.db #0x01	; 1
      0064E0 7F                    1751 	.db #0x7f	; 127
      0064E1 01                    1752 	.db #0x01	; 1
      0064E2 01                    1753 	.db #0x01	; 1
      0064E3 3F                    1754 	.db #0x3f	; 63
      0064E4 40                    1755 	.db #0x40	; 64
      0064E5 40                    1756 	.db #0x40	; 64
      0064E6 40                    1757 	.db #0x40	; 64
      0064E7 3F                    1758 	.db #0x3f	; 63
      0064E8 1F                    1759 	.db #0x1f	; 31
      0064E9 20                    1760 	.db #0x20	; 32
      0064EA 40                    1761 	.db #0x40	; 64
      0064EB 20                    1762 	.db #0x20	; 32
      0064EC 1F                    1763 	.db #0x1f	; 31
      0064ED 3F                    1764 	.db #0x3f	; 63
      0064EE 40                    1765 	.db #0x40	; 64
      0064EF 38                    1766 	.db #0x38	; 56	'8'
      0064F0 40                    1767 	.db #0x40	; 64
      0064F1 3F                    1768 	.db #0x3f	; 63
      0064F2 63                    1769 	.db #0x63	; 99	'c'
      0064F3 14                    1770 	.db #0x14	; 20
      0064F4 08                    1771 	.db #0x08	; 8
      0064F5 14                    1772 	.db #0x14	; 20
      0064F6 63                    1773 	.db #0x63	; 99	'c'
      0064F7 07                    1774 	.db #0x07	; 7
      0064F8 08                    1775 	.db #0x08	; 8
      0064F9 70                    1776 	.db #0x70	; 112	'p'
      0064FA 08                    1777 	.db #0x08	; 8
      0064FB 07                    1778 	.db #0x07	; 7
      0064FC 61                    1779 	.db #0x61	; 97	'a'
      0064FD 51                    1780 	.db #0x51	; 81	'Q'
      0064FE 49                    1781 	.db #0x49	; 73	'I'
      0064FF 45                    1782 	.db #0x45	; 69	'E'
      006500 43                    1783 	.db #0x43	; 67	'C'
      006501 00                    1784 	.db #0x00	; 0
      006502 7F                    1785 	.db #0x7f	; 127
      006503 41                    1786 	.db #0x41	; 65	'A'
      006504 41                    1787 	.db #0x41	; 65	'A'
      006505 00                    1788 	.db #0x00	; 0
      006506 02                    1789 	.db #0x02	; 2
      006507 04                    1790 	.db #0x04	; 4
      006508 08                    1791 	.db #0x08	; 8
      006509 10                    1792 	.db #0x10	; 16
      00650A 20                    1793 	.db #0x20	; 32
      00650B 00                    1794 	.db #0x00	; 0
      00650C 41                    1795 	.db #0x41	; 65	'A'
      00650D 41                    1796 	.db #0x41	; 65	'A'
      00650E 7F                    1797 	.db #0x7f	; 127
      00650F 00                    1798 	.db #0x00	; 0
      006510 04                    1799 	.db #0x04	; 4
      006511 02                    1800 	.db #0x02	; 2
      006512 01                    1801 	.db #0x01	; 1
      006513 02                    1802 	.db #0x02	; 2
      006514 04                    1803 	.db #0x04	; 4
      006515 40                    1804 	.db #0x40	; 64
      006516 40                    1805 	.db #0x40	; 64
      006517 40                    1806 	.db #0x40	; 64
      006518 40                    1807 	.db #0x40	; 64
      006519 40                    1808 	.db #0x40	; 64
      00651A 00                    1809 	.db #0x00	; 0
      00651B 01                    1810 	.db #0x01	; 1
      00651C 02                    1811 	.db #0x02	; 2
      00651D 04                    1812 	.db #0x04	; 4
      00651E 00                    1813 	.db #0x00	; 0
      00651F 20                    1814 	.db #0x20	; 32
      006520 54                    1815 	.db #0x54	; 84	'T'
      006521 54                    1816 	.db #0x54	; 84	'T'
      006522 54                    1817 	.db #0x54	; 84	'T'
      006523 78                    1818 	.db #0x78	; 120	'x'
      006524 7F                    1819 	.db #0x7f	; 127
      006525 48                    1820 	.db #0x48	; 72	'H'
      006526 44                    1821 	.db #0x44	; 68	'D'
      006527 44                    1822 	.db #0x44	; 68	'D'
      006528 38                    1823 	.db #0x38	; 56	'8'
      006529 38                    1824 	.db #0x38	; 56	'8'
      00652A 44                    1825 	.db #0x44	; 68	'D'
      00652B 44                    1826 	.db #0x44	; 68	'D'
      00652C 44                    1827 	.db #0x44	; 68	'D'
      00652D 20                    1828 	.db #0x20	; 32
      00652E 38                    1829 	.db #0x38	; 56	'8'
      00652F 44                    1830 	.db #0x44	; 68	'D'
      006530 44                    1831 	.db #0x44	; 68	'D'
      006531 48                    1832 	.db #0x48	; 72	'H'
      006532 7F                    1833 	.db #0x7f	; 127
      006533 38                    1834 	.db #0x38	; 56	'8'
      006534 54                    1835 	.db #0x54	; 84	'T'
      006535 54                    1836 	.db #0x54	; 84	'T'
      006536 54                    1837 	.db #0x54	; 84	'T'
      006537 18                    1838 	.db #0x18	; 24
      006538 08                    1839 	.db #0x08	; 8
      006539 7E                    1840 	.db #0x7e	; 126
      00653A 09                    1841 	.db #0x09	; 9
      00653B 01                    1842 	.db #0x01	; 1
      00653C 02                    1843 	.db #0x02	; 2
      00653D 0C                    1844 	.db #0x0c	; 12
      00653E 52                    1845 	.db #0x52	; 82	'R'
      00653F 52                    1846 	.db #0x52	; 82	'R'
      006540 52                    1847 	.db #0x52	; 82	'R'
      006541 3E                    1848 	.db #0x3e	; 62
      006542 7F                    1849 	.db #0x7f	; 127
      006543 08                    1850 	.db #0x08	; 8
      006544 04                    1851 	.db #0x04	; 4
      006545 04                    1852 	.db #0x04	; 4
      006546 78                    1853 	.db #0x78	; 120	'x'
      006547 00                    1854 	.db #0x00	; 0
      006548 44                    1855 	.db #0x44	; 68	'D'
      006549 7D                    1856 	.db #0x7d	; 125
      00654A 40                    1857 	.db #0x40	; 64
      00654B 00                    1858 	.db #0x00	; 0
      00654C 20                    1859 	.db #0x20	; 32
      00654D 40                    1860 	.db #0x40	; 64
      00654E 44                    1861 	.db #0x44	; 68	'D'
      00654F 3D                    1862 	.db #0x3d	; 61
      006550 00                    1863 	.db #0x00	; 0
      006551 7F                    1864 	.db #0x7f	; 127
      006552 10                    1865 	.db #0x10	; 16
      006553 28                    1866 	.db #0x28	; 40
      006554 44                    1867 	.db #0x44	; 68	'D'
      006555 00                    1868 	.db #0x00	; 0
      006556 00                    1869 	.db #0x00	; 0
      006557 41                    1870 	.db #0x41	; 65	'A'
      006558 7F                    1871 	.db #0x7f	; 127
      006559 40                    1872 	.db #0x40	; 64
      00655A 00                    1873 	.db #0x00	; 0
      00655B 7C                    1874 	.db #0x7c	; 124
      00655C 04                    1875 	.db #0x04	; 4
      00655D 18                    1876 	.db #0x18	; 24
      00655E 04                    1877 	.db #0x04	; 4
      00655F 78                    1878 	.db #0x78	; 120	'x'
      006560 7C                    1879 	.db #0x7c	; 124
      006561 08                    1880 	.db #0x08	; 8
      006562 04                    1881 	.db #0x04	; 4
      006563 04                    1882 	.db #0x04	; 4
      006564 78                    1883 	.db #0x78	; 120	'x'
      006565 38                    1884 	.db #0x38	; 56	'8'
      006566 44                    1885 	.db #0x44	; 68	'D'
      006567 44                    1886 	.db #0x44	; 68	'D'
      006568 44                    1887 	.db #0x44	; 68	'D'
      006569 38                    1888 	.db #0x38	; 56	'8'
      00656A 7C                    1889 	.db #0x7c	; 124
      00656B 14                    1890 	.db #0x14	; 20
      00656C 14                    1891 	.db #0x14	; 20
      00656D 14                    1892 	.db #0x14	; 20
      00656E 08                    1893 	.db #0x08	; 8
      00656F 08                    1894 	.db #0x08	; 8
      006570 14                    1895 	.db #0x14	; 20
      006571 14                    1896 	.db #0x14	; 20
      006572 14                    1897 	.db #0x14	; 20
      006573 7C                    1898 	.db #0x7c	; 124
      006574 7C                    1899 	.db #0x7c	; 124
      006575 08                    1900 	.db #0x08	; 8
      006576 04                    1901 	.db #0x04	; 4
      006577 04                    1902 	.db #0x04	; 4
      006578 08                    1903 	.db #0x08	; 8
      006579 48                    1904 	.db #0x48	; 72	'H'
      00657A 54                    1905 	.db #0x54	; 84	'T'
      00657B 54                    1906 	.db #0x54	; 84	'T'
      00657C 54                    1907 	.db #0x54	; 84	'T'
      00657D 20                    1908 	.db #0x20	; 32
      00657E 04                    1909 	.db #0x04	; 4
      00657F 3F                    1910 	.db #0x3f	; 63
      006580 44                    1911 	.db #0x44	; 68	'D'
      006581 40                    1912 	.db #0x40	; 64
      006582 20                    1913 	.db #0x20	; 32
      006583 3C                    1914 	.db #0x3c	; 60
      006584 40                    1915 	.db #0x40	; 64
      006585 40                    1916 	.db #0x40	; 64
      006586 20                    1917 	.db #0x20	; 32
      006587 7C                    1918 	.db #0x7c	; 124
      006588 1C                    1919 	.db #0x1c	; 28
      006589 20                    1920 	.db #0x20	; 32
      00658A 40                    1921 	.db #0x40	; 64
      00658B 20                    1922 	.db #0x20	; 32
      00658C 1C                    1923 	.db #0x1c	; 28
      00658D 3C                    1924 	.db #0x3c	; 60
      00658E 40                    1925 	.db #0x40	; 64
      00658F 30                    1926 	.db #0x30	; 48	'0'
      006590 40                    1927 	.db #0x40	; 64
      006591 3C                    1928 	.db #0x3c	; 60
      006592 44                    1929 	.db #0x44	; 68	'D'
      006593 28                    1930 	.db #0x28	; 40
      006594 10                    1931 	.db #0x10	; 16
      006595 28                    1932 	.db #0x28	; 40
      006596 44                    1933 	.db #0x44	; 68	'D'
      006597 0C                    1934 	.db #0x0c	; 12
      006598 50                    1935 	.db #0x50	; 80	'P'
      006599 50                    1936 	.db #0x50	; 80	'P'
      00659A 50                    1937 	.db #0x50	; 80	'P'
      00659B 3C                    1938 	.db #0x3c	; 60
      00659C 44                    1939 	.db #0x44	; 68	'D'
      00659D 64                    1940 	.db #0x64	; 100	'd'
      00659E 54                    1941 	.db #0x54	; 84	'T'
      00659F 4C                    1942 	.db #0x4c	; 76	'L'
      0065A0 44                    1943 	.db #0x44	; 68	'D'
      0065A1 00                    1944 	.db #0x00	; 0
      0065A2 08                    1945 	.db #0x08	; 8
      0065A3 36                    1946 	.db #0x36	; 54	'6'
      0065A4 41                    1947 	.db #0x41	; 65	'A'
      0065A5 00                    1948 	.db #0x00	; 0
      0065A6 00                    1949 	.db #0x00	; 0
      0065A7 00                    1950 	.db #0x00	; 0
      0065A8 7F                    1951 	.db #0x7f	; 127
      0065A9 00                    1952 	.db #0x00	; 0
      0065AA 00                    1953 	.db #0x00	; 0
      0065AB 00                    1954 	.db #0x00	; 0
      0065AC 41                    1955 	.db #0x41	; 65	'A'
      0065AD 36                    1956 	.db #0x36	; 54	'6'
      0065AE 08                    1957 	.db #0x08	; 8
      0065AF 00                    1958 	.db #0x00	; 0
      0065B0 10                    1959 	.db #0x10	; 16
      0065B1 08                    1960 	.db #0x08	; 8
      0065B2 08                    1961 	.db #0x08	; 8
      0065B3 10                    1962 	.db #0x10	; 16
      0065B4 08                    1963 	.db #0x08	; 8
      0065B5 00                    1964 	.db #0x00	; 0
      0065B6 00                    1965 	.db #0x00	; 0
      0065B7 00                    1966 	.db #0x00	; 0
      0065B8 00                    1967 	.db #0x00	; 0
      0065B9 00                    1968 	.db #0x00	; 0
      0065BA                       1969 ___pinConfigurations:
      0065BA 00                    1970 	.db #0x00	; 0
      0065BB 15                    1971 	.db #0x15	; 21
      0065BC 14                    1972 	.db #0x14	; 20
      0065BD 01                    1973 	.db #0x01	; 1
      0065BE 25                    1974 	.db #0x25	; 37
      0065BF 24                    1975 	.db #0x24	; 36
      0065C0 03                    1976 	.db #0x03	; 3
      0065C1 32                    1977 	.db #0x32	; 50	'2'
      0065C2 33                    1978 	.db #0x33	; 51	'3'
                                   1979 	.area XINIT   (CODE)
                                   1980 	.area CABS    (ABS,CODE)
