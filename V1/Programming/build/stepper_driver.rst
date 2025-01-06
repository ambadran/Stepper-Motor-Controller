                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stepper_driver
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _timer2_isr
                                     12 	.globl _stopTimer
                                     13 	.globl _startTimer
                                     14 	.globl _gpioWrite
                                     15 	.globl _gpioRead
                                     16 	.globl _gpioConfigure
                                     17 	.globl _S1SM0_FE
                                     18 	.globl _T1IE
                                     19 	.globl _T0IE
                                     20 	.globl _T1RUN
                                     21 	.globl _T0RUN
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _EA
                                     31 	.globl _INT1IE
                                     32 	.globl _INT0IE
                                     33 	.globl _INT1TR
                                     34 	.globl _INT0TR
                                     35 	.globl _P5_5
                                     36 	.globl _P5_4
                                     37 	.globl _P5_3
                                     38 	.globl _P5_2
                                     39 	.globl _P5_1
                                     40 	.globl _P5_0
                                     41 	.globl _P3_7
                                     42 	.globl _P3_6
                                     43 	.globl _P3_5
                                     44 	.globl _P3_4
                                     45 	.globl _P3_3
                                     46 	.globl _P3_2
                                     47 	.globl _P3_1
                                     48 	.globl _P3_0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _P1_7
                                     58 	.globl _P1_6
                                     59 	.globl _P1_5
                                     60 	.globl _P1_4
                                     61 	.globl _P1_3
                                     62 	.globl _P1_2
                                     63 	.globl _P1_1
                                     64 	.globl _P1_0
                                     65 	.globl _USBADR
                                     66 	.globl _USBCON
                                     67 	.globl _USBDAT
                                     68 	.globl _USBCLK
                                     69 	.globl _S4BUF
                                     70 	.globl _S4CON
                                     71 	.globl _S3BUF
                                     72 	.globl _S3CON
                                     73 	.globl _S2BUF
                                     74 	.globl _S2CON
                                     75 	.globl _S1BUF
                                     76 	.globl _S1CON
                                     77 	.globl _SADEN
                                     78 	.globl _SADDR
                                     79 	.globl _AUXINTIF
                                     80 	.globl _T3
                                     81 	.globl _T3L
                                     82 	.globl _T3H
                                     83 	.globl _T4
                                     84 	.globl _T4L
                                     85 	.globl _T4H
                                     86 	.globl _T4T3M
                                     87 	.globl _WDT_CONTR
                                     88 	.globl _AUXR
                                     89 	.globl _T2
                                     90 	.globl _T2H
                                     91 	.globl _T2L
                                     92 	.globl _T1
                                     93 	.globl _T1H
                                     94 	.globl _T1L
                                     95 	.globl _T0
                                     96 	.globl _T0H
                                     97 	.globl _T0L
                                     98 	.globl _TMOD
                                     99 	.globl _TCON
                                    100 	.globl _IRTRIM
                                    101 	.globl _LIRTRIM
                                    102 	.globl _IRCBAND
                                    103 	.globl _SPDAT
                                    104 	.globl _SPCTL
                                    105 	.globl _SPSTAT
                                    106 	.globl _WKTC
                                    107 	.globl _WKTCH
                                    108 	.globl _WKTCL
                                    109 	.globl _BUS_SPEED
                                    110 	.globl _P_SW2
                                    111 	.globl _P_SW1
                                    112 	.globl _RSTCFG
                                    113 	.globl _PCON
                                    114 	.globl _B
                                    115 	.globl _ACC
                                    116 	.globl _PSW
                                    117 	.globl _SP
                                    118 	.globl _IP3H
                                    119 	.globl _IP3L
                                    120 	.globl _IP2H
                                    121 	.globl _IP2L
                                    122 	.globl _IE2
                                    123 	.globl _IP1H
                                    124 	.globl _IP1L
                                    125 	.globl _IE1
                                    126 	.globl _INT_CLKO
                                    127 	.globl _IAP_TPS
                                    128 	.globl _IAP_CONTR
                                    129 	.globl _IAP_TRIG
                                    130 	.globl _IAP_CMD
                                    131 	.globl _IAP_ADDR
                                    132 	.globl _IAP_ADDRL
                                    133 	.globl _IAP_ADDRH
                                    134 	.globl _IAP_DATA
                                    135 	.globl _P5M0
                                    136 	.globl _P5M1
                                    137 	.globl _P5
                                    138 	.globl _P3M0
                                    139 	.globl _P3M1
                                    140 	.globl _P3
                                    141 	.globl _P2M0
                                    142 	.globl _P2M1
                                    143 	.globl _P2
                                    144 	.globl _P1M0
                                    145 	.globl _P1M1
                                    146 	.globl _P1
                                    147 	.globl _TA
                                    148 	.globl _DPH1
                                    149 	.globl _DPL1
                                    150 	.globl _DPS
                                    151 	.globl _DP
                                    152 	.globl _DPH
                                    153 	.globl _DPL
                                    154 	.globl _CMPCR2
                                    155 	.globl _CMPCR1
                                    156 	.globl _DMA_ADC_AMT
                                    157 	.globl _ADCCFG
                                    158 	.globl _ADC_RES
                                    159 	.globl _ADC_RESL
                                    160 	.globl _ADC_RESH
                                    161 	.globl _ADC_CONTR
                                    162 	.globl _stepper_set_steps_from_float_digits_PARM_2
                                    163 	.globl _DMA_UR4R_TXAL
                                    164 	.globl _DMA_UR4R_TXAH
                                    165 	.globl _DMA_UR4R_DONE
                                    166 	.globl _DMA_UR4R_AMT
                                    167 	.globl _DMA_UR4R_STA
                                    168 	.globl _DMA_UR4R_CR
                                    169 	.globl _DMA_UR4R_CFG
                                    170 	.globl _DMA_UR4T_TXAL
                                    171 	.globl _DMA_UR4T_TXAH
                                    172 	.globl _DMA_UR4T_DONE
                                    173 	.globl _DMA_UR4T_AMT
                                    174 	.globl _DMA_UR4T_STA
                                    175 	.globl _DMA_UR4T_CR
                                    176 	.globl _DMA_UR4T_CFG
                                    177 	.globl _DMA_UR3R_TXAL
                                    178 	.globl _DMA_UR3R_TXAH
                                    179 	.globl _DMA_UR3R_DONE
                                    180 	.globl _DMA_UR3R_AMT
                                    181 	.globl _DMA_UR3R_STA
                                    182 	.globl _DMA_UR3R_CR
                                    183 	.globl _DMA_UR3R_CFG
                                    184 	.globl _DMA_UR3T_TXAL
                                    185 	.globl _DMA_UR3T_TXAH
                                    186 	.globl _DMA_UR3T_DONE
                                    187 	.globl _DMA_UR3T_AMT
                                    188 	.globl _DMA_UR3T_STA
                                    189 	.globl _DMA_UR3T_CR
                                    190 	.globl _DMA_UR3T_CFG
                                    191 	.globl _DMA_UR2R_TXAL
                                    192 	.globl _DMA_UR2R_TXAH
                                    193 	.globl _DMA_UR2R_DONE
                                    194 	.globl _DMA_UR2R_AMT
                                    195 	.globl _DMA_UR2R_STA
                                    196 	.globl _DMA_UR2R_CR
                                    197 	.globl _DMA_UR2R_CFG
                                    198 	.globl _DMA_UR2T_TXAL
                                    199 	.globl _DMA_UR2T_TXAH
                                    200 	.globl _DMA_UR2T_DONE
                                    201 	.globl _DMA_UR2T_AMT
                                    202 	.globl _DMA_UR2T_STA
                                    203 	.globl _DMA_UR2T_CR
                                    204 	.globl _DMA_UR2T_CFG
                                    205 	.globl _DMA_UR1R_TXAL
                                    206 	.globl _DMA_UR1R_TXAH
                                    207 	.globl _DMA_UR1R_DONE
                                    208 	.globl _DMA_UR1R_AMT
                                    209 	.globl _DMA_UR1R_STA
                                    210 	.globl _DMA_UR1R_CR
                                    211 	.globl _DMA_UR1R_CFG
                                    212 	.globl _DMA_UR1T_TXAL
                                    213 	.globl _DMA_UR1T_TXAH
                                    214 	.globl _DMA_UR1T_DONE
                                    215 	.globl _DMA_URTX_AMT
                                    216 	.globl _DMA_UR1T_STA
                                    217 	.globl _DMA_UR1T_CR
                                    218 	.globl _DMA_UR1T_CFG
                                    219 	.globl _TM4PS
                                    220 	.globl _TM3PS
                                    221 	.globl _TM2PS
                                    222 	.globl _IRC48MCR
                                    223 	.globl _IRCDB
                                    224 	.globl _MCLKOCR
                                    225 	.globl _CKSEL
                                    226 	.globl _IRC32KCR
                                    227 	.globl _XOSCCR
                                    228 	.globl _HIRCCR
                                    229 	.globl _CLKDIV
                                    230 	.globl _DMA_SPI_CFG2
                                    231 	.globl _DMA_SPI_RXAL
                                    232 	.globl _DMA_SPI_RXAH
                                    233 	.globl _DMA_SPI_TXAL
                                    234 	.globl _DMA_SPI_TXAH
                                    235 	.globl _DMA_SPI_DONE
                                    236 	.globl _DMA_SPI_AMT
                                    237 	.globl _DMA_SPI_STA
                                    238 	.globl _DMA_SPI_CR
                                    239 	.globl _DMA_SPI_CFG
                                    240 	.globl _SSEC
                                    241 	.globl _SEC
                                    242 	.globl _MIN
                                    243 	.globl _HOUR
                                    244 	.globl _DAY
                                    245 	.globl _MONTH
                                    246 	.globl _YEAR
                                    247 	.globl _INISSEC
                                    248 	.globl _INISEC
                                    249 	.globl _INIMIN
                                    250 	.globl _INIHOUR
                                    251 	.globl _INIDAY
                                    252 	.globl _INIMONTH
                                    253 	.globl _INIYEAR
                                    254 	.globl _ALASSEC
                                    255 	.globl _ALASEC
                                    256 	.globl _ALAMIN
                                    257 	.globl _ALAHOUR
                                    258 	.globl _RTCIF
                                    259 	.globl _RTCIEN
                                    260 	.globl _RTCCFG
                                    261 	.globl _RTCCR
                                    262 	.globl _PWMB_OISR
                                    263 	.globl _PWMB_DTR
                                    264 	.globl _PWMB_BKR
                                    265 	.globl _PWMB_CCR4L
                                    266 	.globl _PWMB_CCR4H
                                    267 	.globl _PWMB_CCR3L
                                    268 	.globl _PWMB_CCR3H
                                    269 	.globl _PWMB_CCR2L
                                    270 	.globl _PWMB_CCR2H
                                    271 	.globl _PWMB_CCR1L
                                    272 	.globl _PWMB_CCR1H
                                    273 	.globl _PWMB_RCR
                                    274 	.globl _PWMB_ARRL
                                    275 	.globl _PWMB_ARRH
                                    276 	.globl _PWMB_PSCRL
                                    277 	.globl _PWMB_PSCRH
                                    278 	.globl _PWMB_CNTRL
                                    279 	.globl _PWMB_CNTRH
                                    280 	.globl _PWMB_CCER2
                                    281 	.globl _PWMB_CCER1
                                    282 	.globl _PWMB_CCMR4
                                    283 	.globl _PWMB_CCMR3
                                    284 	.globl _PWMB_CCMR2
                                    285 	.globl _PWMB_CCMR1
                                    286 	.globl _PWMB_EGR
                                    287 	.globl _PWMB_SR2
                                    288 	.globl _PWMB_SR1
                                    289 	.globl _PWMB_IER
                                    290 	.globl _PWMB_ETR
                                    291 	.globl _PWMB_SMCR
                                    292 	.globl _PWMB_CR2
                                    293 	.globl _PWMB_CR1
                                    294 	.globl _PWMA_OISR
                                    295 	.globl _PWMA_DTR
                                    296 	.globl _PWMA_BKR
                                    297 	.globl _PWMA_CCR4L
                                    298 	.globl _PWMA_CCR4H
                                    299 	.globl _PWMA_CCR3L
                                    300 	.globl _PWMA_CCR3H
                                    301 	.globl _PWMA_CCR2L
                                    302 	.globl _PWMA_CCR2H
                                    303 	.globl _PWMA_CCR1L
                                    304 	.globl _PWMA_CCR1H
                                    305 	.globl _PWMA_RCR
                                    306 	.globl _PWMA_ARRL
                                    307 	.globl _PWMA_ARRH
                                    308 	.globl _PWMA_PSCRL
                                    309 	.globl _PWMA_PSCRH
                                    310 	.globl _PWMA_CNTRL
                                    311 	.globl _PWMA_CNTRH
                                    312 	.globl _PWMA_CCER2
                                    313 	.globl _PWMA_CCER1
                                    314 	.globl _PWMA_CCMR4
                                    315 	.globl _PWMA_CCMR3
                                    316 	.globl _PWMA_CCMR2
                                    317 	.globl _PWMA_CCMR1
                                    318 	.globl _PWMA_EGR
                                    319 	.globl _PWMA_SR2
                                    320 	.globl _PWMA_SR1
                                    321 	.globl _PWMA_IER
                                    322 	.globl _PWMA_ETR
                                    323 	.globl _PWMA_SMCR
                                    324 	.globl _PWMA_CR2
                                    325 	.globl _PWMA_CR1
                                    326 	.globl _PWMB_IOAUX
                                    327 	.globl _PWMB_PS
                                    328 	.globl _PWMB_ENO
                                    329 	.globl _PWMB_ETRPS
                                    330 	.globl _PWMA_IOAUX
                                    331 	.globl _PWMA_PS
                                    332 	.globl _PWMA_ENO
                                    333 	.globl _PWMA_ETRPS
                                    334 	.globl _RSTFLAG
                                    335 	.globl _SPFUNC
                                    336 	.globl _OPCON
                                    337 	.globl _ARCON
                                    338 	.globl _MD4
                                    339 	.globl _MD5
                                    340 	.globl _MD0
                                    341 	.globl _MD1
                                    342 	.globl _MD2
                                    343 	.globl _MD3
                                    344 	.globl _DMA_LCM_RXAL
                                    345 	.globl _DMA_LCM_RXAH
                                    346 	.globl _DMA_LCM_TXAL
                                    347 	.globl _DMA_LCM_TXAH
                                    348 	.globl _DMA_LCM_DONE
                                    349 	.globl _DMA_LCM_AMT
                                    350 	.globl _DMA_LCM_STA
                                    351 	.globl _DMA_LCM_CR
                                    352 	.globl _DMA_LCM_CFG
                                    353 	.globl _LCMIDDAT
                                    354 	.globl _LCMIDDATH
                                    355 	.globl _LCMIDDATL
                                    356 	.globl _LCMSTA
                                    357 	.globl _LCMCR
                                    358 	.globl _LCMCFG2
                                    359 	.globl _LCMCFG
                                    360 	.globl _I2CMSAUX
                                    361 	.globl _I2CRXD
                                    362 	.globl _I2CTXD
                                    363 	.globl _I2CSLADR
                                    364 	.globl _I2CSLST
                                    365 	.globl _I2CSLCR
                                    366 	.globl _I2CMSST
                                    367 	.globl _I2CMSCR
                                    368 	.globl _I2CCFG
                                    369 	.globl _PINIPH
                                    370 	.globl _PINIPL
                                    371 	.globl _P5IE
                                    372 	.globl _P5DR
                                    373 	.globl _P5SR
                                    374 	.globl _P5NCS
                                    375 	.globl _P5PU
                                    376 	.globl _P5WKUE
                                    377 	.globl _P5IM1
                                    378 	.globl _P5IM0
                                    379 	.globl _P5INTF
                                    380 	.globl _P5INTE
                                    381 	.globl _P3IE
                                    382 	.globl _P3DR
                                    383 	.globl _P3SR
                                    384 	.globl _P3NCS
                                    385 	.globl _P3PU
                                    386 	.globl _P3WKUE
                                    387 	.globl _P3IM1
                                    388 	.globl _P3IM0
                                    389 	.globl _P3INTF
                                    390 	.globl _P3INTE
                                    391 	.globl _P2IE
                                    392 	.globl _P2DR
                                    393 	.globl _P2SR
                                    394 	.globl _P2NCS
                                    395 	.globl _P2PU
                                    396 	.globl _P2WKUE
                                    397 	.globl _P2IM1
                                    398 	.globl _P2IM0
                                    399 	.globl _P2INTF
                                    400 	.globl _P2INTE
                                    401 	.globl _P1IE
                                    402 	.globl _P1DR
                                    403 	.globl _P1SR
                                    404 	.globl _P1NCS
                                    405 	.globl _P1PU
                                    406 	.globl _P1WKUE
                                    407 	.globl _P1IM1
                                    408 	.globl _P1IM0
                                    409 	.globl _P1INTF
                                    410 	.globl _P1INTE
                                    411 	.globl _DMA_M2M_RXAL
                                    412 	.globl _DMA_M2M_RXAH
                                    413 	.globl _DMA_M2M_TXAL
                                    414 	.globl _DMA_M2M_TXAH
                                    415 	.globl _DMA_M2M_DONE
                                    416 	.globl _DMA_M2M_AMT
                                    417 	.globl _DMA_M2M_STA
                                    418 	.globl _DMA_M2M_CR
                                    419 	.globl _DMA_M2M_CFG
                                    420 	.globl _CMPEXCFG
                                    421 	.globl _DMA_ADC_CHSW1
                                    422 	.globl _DMA_ADC_CHSW0
                                    423 	.globl _DMA_ADC_CFG2
                                    424 	.globl _DMA_ADC_RXAL
                                    425 	.globl _DMA_ADC_RXAH
                                    426 	.globl _DMA_ADC_STA
                                    427 	.globl _DMA_ADC_CR
                                    428 	.globl _DMA_ADC_CFG
                                    429 	.globl _ADCEXCFG
                                    430 	.globl _ADCTIM
                                    431 	.globl _stepper_motor_init
                                    432 	.globl _stepper_motor_set_freq
                                    433 	.globl _stepper_motor_move
                                    434 	.globl _get_stepper_state
                                    435 	.globl _stepper_set_microstep
                                    436 	.globl _stepper_set_enable
                                    437 	.globl _stepper_set_dir
                                    438 	.globl _stepper_set_steps_from_float_digits
                                    439 ;--------------------------------------------------------
                                    440 ; special function registers
                                    441 ;--------------------------------------------------------
                                    442 	.area RSEG    (ABS,DATA)
      000000                        443 	.org 0x0000
                           0000BC   444 _ADC_CONTR	=	0x00bc
                           0000BD   445 _ADC_RESH	=	0x00bd
                           0000BE   446 _ADC_RESL	=	0x00be
                           00BDBE   447 _ADC_RES	=	0xbdbe
                           0000DE   448 _ADCCFG	=	0x00de
                           0000FA   449 _DMA_ADC_AMT	=	0x00fa
                           0000E6   450 _CMPCR1	=	0x00e6
                           0000E7   451 _CMPCR2	=	0x00e7
                           000082   452 _DPL	=	0x0082
                           000083   453 _DPH	=	0x0083
                           008382   454 _DP	=	0x8382
                           0000E3   455 _DPS	=	0x00e3
                           0000E4   456 _DPL1	=	0x00e4
                           0000E5   457 _DPH1	=	0x00e5
                           0000AE   458 _TA	=	0x00ae
                           000090   459 _P1	=	0x0090
                           000091   460 _P1M1	=	0x0091
                           000092   461 _P1M0	=	0x0092
                           0000A0   462 _P2	=	0x00a0
                           000095   463 _P2M1	=	0x0095
                           000096   464 _P2M0	=	0x0096
                           0000B0   465 _P3	=	0x00b0
                           0000B1   466 _P3M1	=	0x00b1
                           0000B2   467 _P3M0	=	0x00b2
                           0000C8   468 _P5	=	0x00c8
                           0000C9   469 _P5M1	=	0x00c9
                           0000CA   470 _P5M0	=	0x00ca
                           0000C2   471 _IAP_DATA	=	0x00c2
                           0000C3   472 _IAP_ADDRH	=	0x00c3
                           0000C4   473 _IAP_ADDRL	=	0x00c4
                           00C3C4   474 _IAP_ADDR	=	0xc3c4
                           0000C5   475 _IAP_CMD	=	0x00c5
                           0000C6   476 _IAP_TRIG	=	0x00c6
                           0000C7   477 _IAP_CONTR	=	0x00c7
                           0000F5   478 _IAP_TPS	=	0x00f5
                           00008F   479 _INT_CLKO	=	0x008f
                           0000A8   480 _IE1	=	0x00a8
                           0000B8   481 _IP1L	=	0x00b8
                           0000B7   482 _IP1H	=	0x00b7
                           0000AF   483 _IE2	=	0x00af
                           0000B5   484 _IP2L	=	0x00b5
                           0000B6   485 _IP2H	=	0x00b6
                           0000DF   486 _IP3L	=	0x00df
                           0000EE   487 _IP3H	=	0x00ee
                           000081   488 _SP	=	0x0081
                           0000D0   489 _PSW	=	0x00d0
                           0000E0   490 _ACC	=	0x00e0
                           0000F0   491 _B	=	0x00f0
                           000087   492 _PCON	=	0x0087
                           0000FF   493 _RSTCFG	=	0x00ff
                           0000A2   494 _P_SW1	=	0x00a2
                           0000BA   495 _P_SW2	=	0x00ba
                           0000A1   496 _BUS_SPEED	=	0x00a1
                           0000AA   497 _WKTCL	=	0x00aa
                           0000AB   498 _WKTCH	=	0x00ab
                           00ABAA   499 _WKTC	=	0xabaa
                           0000CD   500 _SPSTAT	=	0x00cd
                           0000CE   501 _SPCTL	=	0x00ce
                           0000CF   502 _SPDAT	=	0x00cf
                           00009D   503 _IRCBAND	=	0x009d
                           00009E   504 _LIRTRIM	=	0x009e
                           00009F   505 _IRTRIM	=	0x009f
                           000088   506 _TCON	=	0x0088
                           000089   507 _TMOD	=	0x0089
                           00008A   508 _T0L	=	0x008a
                           00008C   509 _T0H	=	0x008c
                           008C8A   510 _T0	=	0x8c8a
                           00008B   511 _T1L	=	0x008b
                           00008D   512 _T1H	=	0x008d
                           008D8B   513 _T1	=	0x8d8b
                           0000D7   514 _T2L	=	0x00d7
                           0000D6   515 _T2H	=	0x00d6
                           00D6D7   516 _T2	=	0xd6d7
                           00008E   517 _AUXR	=	0x008e
                           0000C1   518 _WDT_CONTR	=	0x00c1
                           0000D1   519 _T4T3M	=	0x00d1
                           0000D2   520 _T4H	=	0x00d2
                           0000D3   521 _T4L	=	0x00d3
                           00D2D3   522 _T4	=	0xd2d3
                           0000D4   523 _T3H	=	0x00d4
                           0000D5   524 _T3L	=	0x00d5
                           00D4D5   525 _T3	=	0xd4d5
                           0000EF   526 _AUXINTIF	=	0x00ef
                           0000A9   527 _SADDR	=	0x00a9
                           0000B9   528 _SADEN	=	0x00b9
                           000098   529 _S1CON	=	0x0098
                           000099   530 _S1BUF	=	0x0099
                           00009A   531 _S2CON	=	0x009a
                           00009B   532 _S2BUF	=	0x009b
                           0000AC   533 _S3CON	=	0x00ac
                           0000AD   534 _S3BUF	=	0x00ad
                           000084   535 _S4CON	=	0x0084
                           000085   536 _S4BUF	=	0x0085
                           0000DC   537 _USBCLK	=	0x00dc
                           0000EC   538 _USBDAT	=	0x00ec
                           0000F4   539 _USBCON	=	0x00f4
                           0000FC   540 _USBADR	=	0x00fc
                                    541 ;--------------------------------------------------------
                                    542 ; special function bits
                                    543 ;--------------------------------------------------------
                                    544 	.area RSEG    (ABS,DATA)
      000000                        545 	.org 0x0000
                           000090   546 _P1_0	=	0x0090
                           000091   547 _P1_1	=	0x0091
                           000092   548 _P1_2	=	0x0092
                           000093   549 _P1_3	=	0x0093
                           000094   550 _P1_4	=	0x0094
                           000095   551 _P1_5	=	0x0095
                           000096   552 _P1_6	=	0x0096
                           000097   553 _P1_7	=	0x0097
                           0000A0   554 _P2_0	=	0x00a0
                           0000A1   555 _P2_1	=	0x00a1
                           0000A2   556 _P2_2	=	0x00a2
                           0000A3   557 _P2_3	=	0x00a3
                           0000A4   558 _P2_4	=	0x00a4
                           0000A5   559 _P2_5	=	0x00a5
                           0000A6   560 _P2_6	=	0x00a6
                           0000A7   561 _P2_7	=	0x00a7
                           0000B0   562 _P3_0	=	0x00b0
                           0000B1   563 _P3_1	=	0x00b1
                           0000B2   564 _P3_2	=	0x00b2
                           0000B3   565 _P3_3	=	0x00b3
                           0000B4   566 _P3_4	=	0x00b4
                           0000B5   567 _P3_5	=	0x00b5
                           0000B6   568 _P3_6	=	0x00b6
                           0000B7   569 _P3_7	=	0x00b7
                           0000C8   570 _P5_0	=	0x00c8
                           0000C9   571 _P5_1	=	0x00c9
                           0000CA   572 _P5_2	=	0x00ca
                           0000CB   573 _P5_3	=	0x00cb
                           0000CC   574 _P5_4	=	0x00cc
                           0000CD   575 _P5_5	=	0x00cd
                           000088   576 _INT0TR	=	0x0088
                           00008A   577 _INT1TR	=	0x008a
                           0000A8   578 _INT0IE	=	0x00a8
                           0000AA   579 _INT1IE	=	0x00aa
                           0000AF   580 _EA	=	0x00af
                           0000D0   581 _P	=	0x00d0
                           0000D1   582 _F1	=	0x00d1
                           0000D2   583 _OV	=	0x00d2
                           0000D3   584 _RS0	=	0x00d3
                           0000D4   585 _RS1	=	0x00d4
                           0000D5   586 _F0	=	0x00d5
                           0000D6   587 _AC	=	0x00d6
                           0000D7   588 _CY	=	0x00d7
                           00008C   589 _T0RUN	=	0x008c
                           00008E   590 _T1RUN	=	0x008e
                           0000A9   591 _T0IE	=	0x00a9
                           0000AB   592 _T1IE	=	0x00ab
                           00009F   593 _S1SM0_FE	=	0x009f
                                    594 ;--------------------------------------------------------
                                    595 ; overlayable register banks
                                    596 ;--------------------------------------------------------
                                    597 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        598 	.ds 8
                                    599 ;--------------------------------------------------------
                                    600 ; overlayable bit register bank
                                    601 ;--------------------------------------------------------
                                    602 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        603 bits:
      000021                        604 	.ds 1
                           008000   605 	b0 = bits[0]
                           008100   606 	b1 = bits[1]
                           008200   607 	b2 = bits[2]
                           008300   608 	b3 = bits[3]
                           008400   609 	b4 = bits[4]
                           008500   610 	b5 = bits[5]
                           008600   611 	b6 = bits[6]
                           008700   612 	b7 = bits[7]
                                    613 ;--------------------------------------------------------
                                    614 ; internal ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area DSEG    (DATA)
      000036                        617 _stepper_set_steps_from_float_digits_sloc0_1_0:
      000036                        618 	.ds 1
      000037                        619 _stepper_set_steps_from_float_digits_sloc1_1_0:
      000037                        620 	.ds 3
      00003A                        621 _stepper_set_steps_from_float_digits_sloc2_1_0:
      00003A                        622 	.ds 4
                                    623 ;--------------------------------------------------------
                                    624 ; overlayable items in internal ram 
                                    625 ;--------------------------------------------------------
                                    626 ;--------------------------------------------------------
                                    627 ; indirectly addressable internal ram data
                                    628 ;--------------------------------------------------------
                                    629 	.area ISEG    (DATA)
                                    630 ;--------------------------------------------------------
                                    631 ; absolute internal ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area IABS    (ABS,DATA)
                                    634 	.area IABS    (ABS,DATA)
                                    635 ;--------------------------------------------------------
                                    636 ; bit data
                                    637 ;--------------------------------------------------------
                                    638 	.area BSEG    (BIT)
      000002                        639 _stepper_active:
      000002                        640 	.ds 1
                                    641 ;--------------------------------------------------------
                                    642 ; paged external ram data
                                    643 ;--------------------------------------------------------
                                    644 	.area PSEG    (PAG,XDATA)
                                    645 ;--------------------------------------------------------
                                    646 ; external ram data
                                    647 ;--------------------------------------------------------
                                    648 	.area XSEG    (XDATA)
                           00FEA8   649 _ADCTIM	=	0xfea8
                           00FEAD   650 _ADCEXCFG	=	0xfead
                           00FA10   651 _DMA_ADC_CFG	=	0xfa10
                           00FA11   652 _DMA_ADC_CR	=	0xfa11
                           00FA12   653 _DMA_ADC_STA	=	0xfa12
                           00FA17   654 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   655 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   656 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   657 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   658 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   659 _CMPEXCFG	=	0xfeae
                           00FA00   660 _DMA_M2M_CFG	=	0xfa00
                           00FA01   661 _DMA_M2M_CR	=	0xfa01
                           00FA02   662 _DMA_M2M_STA	=	0xfa02
                           00FA03   663 _DMA_M2M_AMT	=	0xfa03
                           00FA04   664 _DMA_M2M_DONE	=	0xfa04
                           00FA05   665 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   666 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   667 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   668 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   669 _P1INTE	=	0xfd01
                           00FD11   670 _P1INTF	=	0xfd11
                           00FD21   671 _P1IM0	=	0xfd21
                           00FD31   672 _P1IM1	=	0xfd31
                           00FD41   673 _P1WKUE	=	0xfd41
                           00FE11   674 _P1PU	=	0xfe11
                           00FE19   675 _P1NCS	=	0xfe19
                           00FE21   676 _P1SR	=	0xfe21
                           00FE29   677 _P1DR	=	0xfe29
                           00FE31   678 _P1IE	=	0xfe31
                           00FD02   679 _P2INTE	=	0xfd02
                           00FD12   680 _P2INTF	=	0xfd12
                           00FD22   681 _P2IM0	=	0xfd22
                           00FD32   682 _P2IM1	=	0xfd32
                           00FD42   683 _P2WKUE	=	0xfd42
                           00FE12   684 _P2PU	=	0xfe12
                           00FE1A   685 _P2NCS	=	0xfe1a
                           00FE22   686 _P2SR	=	0xfe22
                           00FE2A   687 _P2DR	=	0xfe2a
                           00FE32   688 _P2IE	=	0xfe32
                           00FD03   689 _P3INTE	=	0xfd03
                           00FD13   690 _P3INTF	=	0xfd13
                           00FD23   691 _P3IM0	=	0xfd23
                           00FD33   692 _P3IM1	=	0xfd33
                           00FD43   693 _P3WKUE	=	0xfd43
                           00FE13   694 _P3PU	=	0xfe13
                           00FE1B   695 _P3NCS	=	0xfe1b
                           00FE23   696 _P3SR	=	0xfe23
                           00FE2B   697 _P3DR	=	0xfe2b
                           00FE33   698 _P3IE	=	0xfe33
                           00FD05   699 _P5INTE	=	0xfd05
                           00FD15   700 _P5INTF	=	0xfd15
                           00FD25   701 _P5IM0	=	0xfd25
                           00FD35   702 _P5IM1	=	0xfd35
                           00FD45   703 _P5WKUE	=	0xfd45
                           00FE15   704 _P5PU	=	0xfe15
                           00FE1D   705 _P5NCS	=	0xfe1d
                           00FE25   706 _P5SR	=	0xfe25
                           00FE2D   707 _P5DR	=	0xfe2d
                           00FE35   708 _P5IE	=	0xfe35
                           00FD60   709 _PINIPL	=	0xfd60
                           00FD61   710 _PINIPH	=	0xfd61
                           00FE80   711 _I2CCFG	=	0xfe80
                           00FE81   712 _I2CMSCR	=	0xfe81
                           00FE82   713 _I2CMSST	=	0xfe82
                           00FE83   714 _I2CSLCR	=	0xfe83
                           00FE84   715 _I2CSLST	=	0xfe84
                           00FE85   716 _I2CSLADR	=	0xfe85
                           00FE86   717 _I2CTXD	=	0xfe86
                           00FE87   718 _I2CRXD	=	0xfe87
                           00FE88   719 _I2CMSAUX	=	0xfe88
                           00FE50   720 _LCMCFG	=	0xfe50
                           00FE51   721 _LCMCFG2	=	0xfe51
                           00FE52   722 _LCMCR	=	0xfe52
                           00FE53   723 _LCMSTA	=	0xfe53
                           00FE54   724 _LCMIDDATL	=	0xfe54
                           00FE55   725 _LCMIDDATH	=	0xfe55
                           00FE54   726 _LCMIDDAT	=	0xfe54
                           00FA70   727 _DMA_LCM_CFG	=	0xfa70
                           00FA71   728 _DMA_LCM_CR	=	0xfa71
                           00FA72   729 _DMA_LCM_STA	=	0xfa72
                           00FA73   730 _DMA_LCM_AMT	=	0xfa73
                           00FA74   731 _DMA_LCM_DONE	=	0xfa74
                           00FA75   732 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   733 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   734 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   735 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   736 _MD3	=	0xfcf0
                           00FCF1   737 _MD2	=	0xfcf1
                           00FCF2   738 _MD1	=	0xfcf2
                           00FCF3   739 _MD0	=	0xfcf3
                           00FCF4   740 _MD5	=	0xfcf4
                           00FCF5   741 _MD4	=	0xfcf5
                           00FCF6   742 _ARCON	=	0xfcf6
                           00FCF7   743 _OPCON	=	0xfcf7
                           00FE08   744 _SPFUNC	=	0xfe08
                           00FE09   745 _RSTFLAG	=	0xfe09
                           00FEB0   746 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   747 _PWMA_ENO	=	0xfeb1
                           00FEB2   748 _PWMA_PS	=	0xfeb2
                           00FEB3   749 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   750 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   751 _PWMB_ENO	=	0xfeb5
                           00FEB6   752 _PWMB_PS	=	0xfeb6
                           00FEB7   753 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   754 _PWMA_CR1	=	0xfec0
                           00FEC1   755 _PWMA_CR2	=	0xfec1
                           00FEC2   756 _PWMA_SMCR	=	0xfec2
                           00FEC3   757 _PWMA_ETR	=	0xfec3
                           00FEC4   758 _PWMA_IER	=	0xfec4
                           00FEC5   759 _PWMA_SR1	=	0xfec5
                           00FEC6   760 _PWMA_SR2	=	0xfec6
                           00FEC7   761 _PWMA_EGR	=	0xfec7
                           00FEC8   762 _PWMA_CCMR1	=	0xfec8
                           00FEC9   763 _PWMA_CCMR2	=	0xfec9
                           00FECA   764 _PWMA_CCMR3	=	0xfeca
                           00FECB   765 _PWMA_CCMR4	=	0xfecb
                           00FECC   766 _PWMA_CCER1	=	0xfecc
                           00FECD   767 _PWMA_CCER2	=	0xfecd
                           00FECE   768 _PWMA_CNTRH	=	0xfece
                           00FECF   769 _PWMA_CNTRL	=	0xfecf
                           00FED0   770 _PWMA_PSCRH	=	0xfed0
                           00FED1   771 _PWMA_PSCRL	=	0xfed1
                           00FED2   772 _PWMA_ARRH	=	0xfed2
                           00FED3   773 _PWMA_ARRL	=	0xfed3
                           00FED4   774 _PWMA_RCR	=	0xfed4
                           00FED5   775 _PWMA_CCR1H	=	0xfed5
                           00FED6   776 _PWMA_CCR1L	=	0xfed6
                           00FED7   777 _PWMA_CCR2H	=	0xfed7
                           00FED8   778 _PWMA_CCR2L	=	0xfed8
                           00FED9   779 _PWMA_CCR3H	=	0xfed9
                           00FEDA   780 _PWMA_CCR3L	=	0xfeda
                           00FEDB   781 _PWMA_CCR4H	=	0xfedb
                           00FEDC   782 _PWMA_CCR4L	=	0xfedc
                           00FEDD   783 _PWMA_BKR	=	0xfedd
                           00FEDE   784 _PWMA_DTR	=	0xfede
                           00FEDF   785 _PWMA_OISR	=	0xfedf
                           00FEE0   786 _PWMB_CR1	=	0xfee0
                           00FEE1   787 _PWMB_CR2	=	0xfee1
                           00FEE2   788 _PWMB_SMCR	=	0xfee2
                           00FEE3   789 _PWMB_ETR	=	0xfee3
                           00FEE4   790 _PWMB_IER	=	0xfee4
                           00FEE5   791 _PWMB_SR1	=	0xfee5
                           00FEE6   792 _PWMB_SR2	=	0xfee6
                           00FEE7   793 _PWMB_EGR	=	0xfee7
                           00FEE8   794 _PWMB_CCMR1	=	0xfee8
                           00FEE9   795 _PWMB_CCMR2	=	0xfee9
                           00FEEA   796 _PWMB_CCMR3	=	0xfeea
                           00FEEB   797 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   798 _PWMB_CCER1	=	0xfeec
                           00FEED   799 _PWMB_CCER2	=	0xfeed
                           00FEEE   800 _PWMB_CNTRH	=	0xfeee
                           00FEEF   801 _PWMB_CNTRL	=	0xfeef
                           00FEF0   802 _PWMB_PSCRH	=	0xfef0
                           00FEF1   803 _PWMB_PSCRL	=	0xfef1
                           00FEF2   804 _PWMB_ARRH	=	0xfef2
                           00FEF3   805 _PWMB_ARRL	=	0xfef3
                           00FEF4   806 _PWMB_RCR	=	0xfef4
                           00FEF5   807 _PWMB_CCR1H	=	0xfef5
                           00FEF6   808 _PWMB_CCR1L	=	0xfef6
                           00FEF7   809 _PWMB_CCR2H	=	0xfef7
                           00FEF8   810 _PWMB_CCR2L	=	0xfef8
                           00FEF9   811 _PWMB_CCR3H	=	0xfef9
                           00FEFA   812 _PWMB_CCR3L	=	0xfefa
                           00FEFB   813 _PWMB_CCR4H	=	0xfefb
                           00FEFC   814 _PWMB_CCR4L	=	0xfefc
                           00FEFD   815 _PWMB_BKR	=	0xfefd
                           00FEFE   816 _PWMB_DTR	=	0xfefe
                           00FEFF   817 _PWMB_OISR	=	0xfeff
                           00FE60   818 _RTCCR	=	0xfe60
                           00FE61   819 _RTCCFG	=	0xfe61
                           00FE62   820 _RTCIEN	=	0xfe62
                           00FE63   821 _RTCIF	=	0xfe63
                           00FE64   822 _ALAHOUR	=	0xfe64
                           00FE65   823 _ALAMIN	=	0xfe65
                           00FE66   824 _ALASEC	=	0xfe66
                           00FE67   825 _ALASSEC	=	0xfe67
                           00FE68   826 _INIYEAR	=	0xfe68
                           00FE69   827 _INIMONTH	=	0xfe69
                           00FE6A   828 _INIDAY	=	0xfe6a
                           00FE6B   829 _INIHOUR	=	0xfe6b
                           00FE6C   830 _INIMIN	=	0xfe6c
                           00FE6D   831 _INISEC	=	0xfe6d
                           00FE6E   832 _INISSEC	=	0xfe6e
                           00FE70   833 _YEAR	=	0xfe70
                           00FE71   834 _MONTH	=	0xfe71
                           00FE72   835 _DAY	=	0xfe72
                           00FE73   836 _HOUR	=	0xfe73
                           00FE74   837 _MIN	=	0xfe74
                           00FE75   838 _SEC	=	0xfe75
                           00FE76   839 _SSEC	=	0xfe76
                           00FA20   840 _DMA_SPI_CFG	=	0xfa20
                           00FA21   841 _DMA_SPI_CR	=	0xfa21
                           00FA22   842 _DMA_SPI_STA	=	0xfa22
                           00FA23   843 _DMA_SPI_AMT	=	0xfa23
                           00FA24   844 _DMA_SPI_DONE	=	0xfa24
                           00FA25   845 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   846 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   847 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   848 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   849 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   850 _CLKDIV	=	0xfe01
                           00FE02   851 _HIRCCR	=	0xfe02
                           00FE03   852 _XOSCCR	=	0xfe03
                           00FE04   853 _IRC32KCR	=	0xfe04
                           00FE00   854 _CKSEL	=	0xfe00
                           00FE05   855 _MCLKOCR	=	0xfe05
                           00FE06   856 _IRCDB	=	0xfe06
                           00FE07   857 _IRC48MCR	=	0xfe07
                           00FEA2   858 _TM2PS	=	0xfea2
                           00FEA3   859 _TM3PS	=	0xfea3
                           00FEA4   860 _TM4PS	=	0xfea4
                           00FA30   861 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   862 _DMA_UR1T_CR	=	0xfa31
                           00FA32   863 _DMA_UR1T_STA	=	0xfa32
                           00FA33   864 _DMA_URTX_AMT	=	0xfa33
                           00FA34   865 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   866 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   867 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   868 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   869 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   870 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   871 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   872 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   873 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   874 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   875 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   876 _DMA_UR2T_CR	=	0xfa31
                           00FA32   877 _DMA_UR2T_STA	=	0xfa32
                           00FA33   878 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   879 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   880 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   881 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   882 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   883 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   884 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   885 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   886 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   887 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   888 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   889 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   890 _DMA_UR3T_CR	=	0xfa31
                           00FA32   891 _DMA_UR3T_STA	=	0xfa32
                           00FA33   892 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   893 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   894 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   895 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   896 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   897 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   898 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   899 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   900 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   901 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   902 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   903 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   904 _DMA_UR4T_CR	=	0xfa31
                           00FA32   905 _DMA_UR4T_STA	=	0xfa32
                           00FA33   906 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   907 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   908 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   909 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   910 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   911 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   912 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   913 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   914 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   915 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   916 _DMA_UR4R_TXAL	=	0xfa3e
      000551                        917 _uartGetCharacter_result_65536_69:
      000551                        918 	.ds 1
      000552                        919 _stepper_enable_after_move:
      000552                        920 	.ds 1
      000553                        921 _stepper_motor_set_freq_frequency_input_65536_150:
      000553                        922 	.ds 4
      000557                        923 _stepper_motor_move_stepper_movement_65536_152:
      000557                        924 	.ds 3
      00055A                        925 _stepper_set_microstep_microstepping_value_65536_156:
      00055A                        926 	.ds 1
      00055B                        927 _stepper_set_enable_stepper_enable_status_65536_158:
      00055B                        928 	.ds 1
      00055C                        929 _stepper_set_dir_stepper_direction_65536_161:
      00055C                        930 	.ds 1
      00055D                        931 _stepper_set_steps_from_float_digits_PARM_2:
      00055D                        932 	.ds 3
      000560                        933 _stepper_set_steps_from_float_digits_stepper_movement_65536_170:
      000560                        934 	.ds 3
                                    935 ;--------------------------------------------------------
                                    936 ; absolute external ram data
                                    937 ;--------------------------------------------------------
                                    938 	.area XABS    (ABS,XDATA)
                                    939 ;--------------------------------------------------------
                                    940 ; external initialized ram data
                                    941 ;--------------------------------------------------------
                                    942 	.area XISEG   (XDATA)
      000650                        943 _stepper_enable_pin:
      000650                        944 	.ds 13
      00065D                        945 _stepper_step_pin:
      00065D                        946 	.ds 13
      00066A                        947 _stepper_dir_pin:
      00066A                        948 	.ds 13
      000677                        949 _stepper_ms1_pin:
      000677                        950 	.ds 13
      000684                        951 _stepper_ms2_pin:
      000684                        952 	.ds 13
      000691                        953 _step_counter:
      000691                        954 	.ds 4
      000695                        955 _frequency:
      000695                        956 	.ds 4
                                    957 	.area HOME    (CODE)
                                    958 	.area GSINIT0 (CODE)
                                    959 	.area GSINIT1 (CODE)
                                    960 	.area GSINIT2 (CODE)
                                    961 	.area GSINIT3 (CODE)
                                    962 	.area GSINIT4 (CODE)
                                    963 	.area GSINIT5 (CODE)
                                    964 	.area GSINIT  (CODE)
                                    965 	.area GSFINAL (CODE)
                                    966 	.area CSEG    (CODE)
                                    967 ;--------------------------------------------------------
                                    968 ; global & static initialisations
                                    969 ;--------------------------------------------------------
                                    970 	.area HOME    (CODE)
                                    971 	.area GSINIT  (CODE)
                                    972 	.area GSFINAL (CODE)
                                    973 	.area GSINIT  (CODE)
                                    974 ;	stepper_driver.c:15: static volatile __bit stepper_active = 0;
                                    975 ;	assignBit
      00017B C2 02            [12]  976 	clr	_stepper_active
                                    977 ;--------------------------------------------------------
                                    978 ; Home
                                    979 ;--------------------------------------------------------
                                    980 	.area HOME    (CODE)
                                    981 	.area HOME    (CODE)
                                    982 ;--------------------------------------------------------
                                    983 ; code
                                    984 ;--------------------------------------------------------
                                    985 	.area CSEG    (CODE)
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'stepper_motor_init'
                                    988 ;------------------------------------------------------------
                                    989 ;	stepper_driver.c:19: void stepper_motor_init(void) {
                                    990 ;	-----------------------------------------
                                    991 ;	 function stepper_motor_init
                                    992 ;	-----------------------------------------
      00335C                        993 _stepper_motor_init:
                           000007   994 	ar7 = 0x07
                           000006   995 	ar6 = 0x06
                           000005   996 	ar5 = 0x05
                           000004   997 	ar4 = 0x04
                           000003   998 	ar3 = 0x03
                           000002   999 	ar2 = 0x02
                           000001  1000 	ar1 = 0x01
                           000000  1001 	ar0 = 0x00
                                   1002 ;	stepper_driver.c:22: gpioConfigure(&stepper_enable_pin);
      00335C 90 06 50         [24] 1003 	mov	dptr,#_stepper_enable_pin
      00335F 75 F0 00         [24] 1004 	mov	b,#0x00
      003362 12 18 44         [24] 1005 	lcall	_gpioConfigure
                                   1006 ;	stepper_driver.c:23: gpioWrite(&stepper_enable_pin, STEPPER_DISABLE);
      003365 90 00 D5         [24] 1007 	mov	dptr,#_gpioWrite_PARM_2
      003368 74 01            [12] 1008 	mov	a,#0x01
      00336A F0               [24] 1009 	movx	@dptr,a
      00336B 90 06 50         [24] 1010 	mov	dptr,#_stepper_enable_pin
      00336E 75 F0 00         [24] 1011 	mov	b,#0x00
      003371 12 20 44         [24] 1012 	lcall	_gpioWrite
                                   1013 ;	stepper_driver.c:24: gpioConfigure(&stepper_step_pin);
      003374 90 06 5D         [24] 1014 	mov	dptr,#_stepper_step_pin
      003377 75 F0 00         [24] 1015 	mov	b,#0x00
      00337A 12 18 44         [24] 1016 	lcall	_gpioConfigure
                                   1017 ;	stepper_driver.c:25: gpioConfigure(&stepper_dir_pin);
      00337D 90 06 6A         [24] 1018 	mov	dptr,#_stepper_dir_pin
      003380 75 F0 00         [24] 1019 	mov	b,#0x00
      003383 12 18 44         [24] 1020 	lcall	_gpioConfigure
                                   1021 ;	stepper_driver.c:26: gpioConfigure(&stepper_ms1_pin);
      003386 90 06 77         [24] 1022 	mov	dptr,#_stepper_ms1_pin
      003389 75 F0 00         [24] 1023 	mov	b,#0x00
      00338C 12 18 44         [24] 1024 	lcall	_gpioConfigure
                                   1025 ;	stepper_driver.c:27: gpioConfigure(&stepper_ms2_pin);
      00338F 90 06 84         [24] 1026 	mov	dptr,#_stepper_ms2_pin
      003392 75 F0 00         [24] 1027 	mov	b,#0x00
      003395 12 18 44         [24] 1028 	lcall	_gpioConfigure
                                   1029 ;	stepper_driver.c:29: stepper_set_microstep(STEP_1X8);
      003398 75 82 00         [24] 1030 	mov	dpl,#0x00
                                   1031 ;	stepper_driver.c:31: }
      00339B 02 35 08         [24] 1032 	ljmp	_stepper_set_microstep
                                   1033 ;------------------------------------------------------------
                                   1034 ;Allocation info for local variables in function 'stepper_motor_set_freq'
                                   1035 ;------------------------------------------------------------
                                   1036 ;frequency_input           Allocated with name '_stepper_motor_set_freq_frequency_input_65536_150'
                                   1037 ;------------------------------------------------------------
                                   1038 ;	stepper_driver.c:33: void stepper_motor_set_freq(uint32_t frequency_input) { frequency = frequency_input; }
                                   1039 ;	-----------------------------------------
                                   1040 ;	 function stepper_motor_set_freq
                                   1041 ;	-----------------------------------------
      00339E                       1042 _stepper_motor_set_freq:
      00339E AF 82            [24] 1043 	mov	r7,dpl
      0033A0 AE 83            [24] 1044 	mov	r6,dph
      0033A2 AD F0            [24] 1045 	mov	r5,b
      0033A4 FC               [12] 1046 	mov	r4,a
      0033A5 90 05 53         [24] 1047 	mov	dptr,#_stepper_motor_set_freq_frequency_input_65536_150
      0033A8 EF               [12] 1048 	mov	a,r7
      0033A9 F0               [24] 1049 	movx	@dptr,a
      0033AA EE               [12] 1050 	mov	a,r6
      0033AB A3               [24] 1051 	inc	dptr
      0033AC F0               [24] 1052 	movx	@dptr,a
      0033AD ED               [12] 1053 	mov	a,r5
      0033AE A3               [24] 1054 	inc	dptr
      0033AF F0               [24] 1055 	movx	@dptr,a
      0033B0 EC               [12] 1056 	mov	a,r4
      0033B1 A3               [24] 1057 	inc	dptr
      0033B2 F0               [24] 1058 	movx	@dptr,a
      0033B3 90 05 53         [24] 1059 	mov	dptr,#_stepper_motor_set_freq_frequency_input_65536_150
      0033B6 E0               [24] 1060 	movx	a,@dptr
      0033B7 FC               [12] 1061 	mov	r4,a
      0033B8 A3               [24] 1062 	inc	dptr
      0033B9 E0               [24] 1063 	movx	a,@dptr
      0033BA FD               [12] 1064 	mov	r5,a
      0033BB A3               [24] 1065 	inc	dptr
      0033BC E0               [24] 1066 	movx	a,@dptr
      0033BD FE               [12] 1067 	mov	r6,a
      0033BE A3               [24] 1068 	inc	dptr
      0033BF E0               [24] 1069 	movx	a,@dptr
      0033C0 FF               [12] 1070 	mov	r7,a
      0033C1 90 06 95         [24] 1071 	mov	dptr,#_frequency
      0033C4 EC               [12] 1072 	mov	a,r4
      0033C5 F0               [24] 1073 	movx	@dptr,a
      0033C6 ED               [12] 1074 	mov	a,r5
      0033C7 A3               [24] 1075 	inc	dptr
      0033C8 F0               [24] 1076 	movx	@dptr,a
      0033C9 EE               [12] 1077 	mov	a,r6
      0033CA A3               [24] 1078 	inc	dptr
      0033CB F0               [24] 1079 	movx	@dptr,a
      0033CC EF               [12] 1080 	mov	a,r7
      0033CD A3               [24] 1081 	inc	dptr
      0033CE F0               [24] 1082 	movx	@dptr,a
      0033CF 22               [24] 1083 	ret
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'stepper_motor_move'
                                   1086 ;------------------------------------------------------------
                                   1087 ;stepper_movement          Allocated with name '_stepper_motor_move_stepper_movement_65536_152'
                                   1088 ;------------------------------------------------------------
                                   1089 ;	stepper_driver.c:35: void stepper_motor_move(stepper_movement_t* stepper_movement) {
                                   1090 ;	-----------------------------------------
                                   1091 ;	 function stepper_motor_move
                                   1092 ;	-----------------------------------------
      0033D0                       1093 _stepper_motor_move:
      0033D0 AF F0            [24] 1094 	mov	r7,b
      0033D2 AE 83            [24] 1095 	mov	r6,dph
      0033D4 E5 82            [12] 1096 	mov	a,dpl
      0033D6 90 05 57         [24] 1097 	mov	dptr,#_stepper_motor_move_stepper_movement_65536_152
      0033D9 F0               [24] 1098 	movx	@dptr,a
      0033DA EE               [12] 1099 	mov	a,r6
      0033DB A3               [24] 1100 	inc	dptr
      0033DC F0               [24] 1101 	movx	@dptr,a
      0033DD EF               [12] 1102 	mov	a,r7
      0033DE A3               [24] 1103 	inc	dptr
      0033DF F0               [24] 1104 	movx	@dptr,a
                                   1105 ;	stepper_driver.c:37: stepper_enable_after_move = stepper_movement->stepper_enable_status;
      0033E0 90 05 57         [24] 1106 	mov	dptr,#_stepper_motor_move_stepper_movement_65536_152
      0033E3 E0               [24] 1107 	movx	a,@dptr
      0033E4 FD               [12] 1108 	mov	r5,a
      0033E5 A3               [24] 1109 	inc	dptr
      0033E6 E0               [24] 1110 	movx	a,@dptr
      0033E7 FE               [12] 1111 	mov	r6,a
      0033E8 A3               [24] 1112 	inc	dptr
      0033E9 E0               [24] 1113 	movx	a,@dptr
      0033EA FF               [12] 1114 	mov	r7,a
      0033EB 8D 82            [24] 1115 	mov	dpl,r5
      0033ED 8E 83            [24] 1116 	mov	dph,r6
      0033EF 8F F0            [24] 1117 	mov	b,r7
      0033F1 12 58 3E         [24] 1118 	lcall	__gptrget
      0033F4 90 05 52         [24] 1119 	mov	dptr,#_stepper_enable_after_move
      0033F7 F0               [24] 1120 	movx	@dptr,a
                                   1121 ;	stepper_driver.c:38: stepper_set_microstep(stepper_movement->microstepping_value);
      0033F8 74 02            [12] 1122 	mov	a,#0x02
      0033FA 2D               [12] 1123 	add	a,r5
      0033FB FA               [12] 1124 	mov	r2,a
      0033FC E4               [12] 1125 	clr	a
      0033FD 3E               [12] 1126 	addc	a,r6
      0033FE FB               [12] 1127 	mov	r3,a
      0033FF 8F 04            [24] 1128 	mov	ar4,r7
      003401 8A 82            [24] 1129 	mov	dpl,r2
      003403 8B 83            [24] 1130 	mov	dph,r3
      003405 8C F0            [24] 1131 	mov	b,r4
      003407 12 58 3E         [24] 1132 	lcall	__gptrget
      00340A F5 82            [12] 1133 	mov	dpl,a
      00340C C0 07            [24] 1134 	push	ar7
      00340E C0 06            [24] 1135 	push	ar6
      003410 C0 05            [24] 1136 	push	ar5
      003412 12 35 08         [24] 1137 	lcall	_stepper_set_microstep
      003415 D0 05            [24] 1138 	pop	ar5
      003417 D0 06            [24] 1139 	pop	ar6
      003419 D0 07            [24] 1140 	pop	ar7
                                   1141 ;	stepper_driver.c:39: gpioWrite(&stepper_dir_pin, stepper_movement->stepper_direction);
      00341B 74 01            [12] 1142 	mov	a,#0x01
      00341D 2D               [12] 1143 	add	a,r5
      00341E FA               [12] 1144 	mov	r2,a
      00341F E4               [12] 1145 	clr	a
      003420 3E               [12] 1146 	addc	a,r6
      003421 FB               [12] 1147 	mov	r3,a
      003422 8F 04            [24] 1148 	mov	ar4,r7
      003424 8A 82            [24] 1149 	mov	dpl,r2
      003426 8B 83            [24] 1150 	mov	dph,r3
      003428 8C F0            [24] 1151 	mov	b,r4
      00342A 12 58 3E         [24] 1152 	lcall	__gptrget
      00342D 90 00 D5         [24] 1153 	mov	dptr,#_gpioWrite_PARM_2
      003430 F0               [24] 1154 	movx	@dptr,a
      003431 90 06 6A         [24] 1155 	mov	dptr,#_stepper_dir_pin
      003434 75 F0 00         [24] 1156 	mov	b,#0x00
      003437 C0 07            [24] 1157 	push	ar7
      003439 C0 06            [24] 1158 	push	ar6
      00343B C0 05            [24] 1159 	push	ar5
      00343D 12 20 44         [24] 1160 	lcall	_gpioWrite
      003440 D0 05            [24] 1161 	pop	ar5
      003442 D0 06            [24] 1162 	pop	ar6
      003444 D0 07            [24] 1163 	pop	ar7
                                   1164 ;	stepper_driver.c:40: frequency = stepper_movement->frequency;
      003446 74 03            [12] 1165 	mov	a,#0x03
      003448 2D               [12] 1166 	add	a,r5
      003449 FC               [12] 1167 	mov	r4,a
      00344A E4               [12] 1168 	clr	a
      00344B 3E               [12] 1169 	addc	a,r6
      00344C FA               [12] 1170 	mov	r2,a
      00344D 8F 03            [24] 1171 	mov	ar3,r7
      00344F 8C 82            [24] 1172 	mov	dpl,r4
      003451 8A 83            [24] 1173 	mov	dph,r2
      003453 8B F0            [24] 1174 	mov	b,r3
      003455 12 58 3E         [24] 1175 	lcall	__gptrget
      003458 F9               [12] 1176 	mov	r1,a
      003459 A3               [24] 1177 	inc	dptr
      00345A 12 58 3E         [24] 1178 	lcall	__gptrget
      00345D FA               [12] 1179 	mov	r2,a
      00345E A3               [24] 1180 	inc	dptr
      00345F 12 58 3E         [24] 1181 	lcall	__gptrget
      003462 FB               [12] 1182 	mov	r3,a
      003463 A3               [24] 1183 	inc	dptr
      003464 12 58 3E         [24] 1184 	lcall	__gptrget
      003467 FC               [12] 1185 	mov	r4,a
      003468 90 06 95         [24] 1186 	mov	dptr,#_frequency
      00346B E9               [12] 1187 	mov	a,r1
      00346C F0               [24] 1188 	movx	@dptr,a
      00346D EA               [12] 1189 	mov	a,r2
      00346E A3               [24] 1190 	inc	dptr
      00346F F0               [24] 1191 	movx	@dptr,a
      003470 EB               [12] 1192 	mov	a,r3
      003471 A3               [24] 1193 	inc	dptr
      003472 F0               [24] 1194 	movx	@dptr,a
      003473 EC               [12] 1195 	mov	a,r4
      003474 A3               [24] 1196 	inc	dptr
      003475 F0               [24] 1197 	movx	@dptr,a
                                   1198 ;	stepper_driver.c:41: step_counter = stepper_movement->steps;
      003476 74 07            [12] 1199 	mov	a,#0x07
      003478 2D               [12] 1200 	add	a,r5
      003479 FD               [12] 1201 	mov	r5,a
      00347A E4               [12] 1202 	clr	a
      00347B 3E               [12] 1203 	addc	a,r6
      00347C FE               [12] 1204 	mov	r6,a
      00347D 8D 82            [24] 1205 	mov	dpl,r5
      00347F 8E 83            [24] 1206 	mov	dph,r6
      003481 8F F0            [24] 1207 	mov	b,r7
      003483 12 58 3E         [24] 1208 	lcall	__gptrget
      003486 FD               [12] 1209 	mov	r5,a
      003487 A3               [24] 1210 	inc	dptr
      003488 12 58 3E         [24] 1211 	lcall	__gptrget
      00348B FE               [12] 1212 	mov	r6,a
      00348C A3               [24] 1213 	inc	dptr
      00348D 12 58 3E         [24] 1214 	lcall	__gptrget
      003490 FF               [12] 1215 	mov	r7,a
      003491 A3               [24] 1216 	inc	dptr
      003492 12 58 3E         [24] 1217 	lcall	__gptrget
      003495 FC               [12] 1218 	mov	r4,a
      003496 90 06 91         [24] 1219 	mov	dptr,#_step_counter
      003499 ED               [12] 1220 	mov	a,r5
      00349A F0               [24] 1221 	movx	@dptr,a
      00349B EE               [12] 1222 	mov	a,r6
      00349C A3               [24] 1223 	inc	dptr
      00349D F0               [24] 1224 	movx	@dptr,a
      00349E EF               [12] 1225 	mov	a,r7
      00349F A3               [24] 1226 	inc	dptr
      0034A0 F0               [24] 1227 	movx	@dptr,a
      0034A1 EC               [12] 1228 	mov	a,r4
      0034A2 A3               [24] 1229 	inc	dptr
      0034A3 F0               [24] 1230 	movx	@dptr,a
                                   1231 ;	stepper_driver.c:43: stepper_active = 1;
                                   1232 ;	assignBit
      0034A4 D2 02            [12] 1233 	setb	_stepper_active
                                   1234 ;	stepper_driver.c:44: gpioWrite(&stepper_enable_pin, STEPPER_ENABLE);
      0034A6 90 00 D5         [24] 1235 	mov	dptr,#_gpioWrite_PARM_2
      0034A9 E4               [12] 1236 	clr	a
      0034AA F0               [24] 1237 	movx	@dptr,a
      0034AB 90 06 50         [24] 1238 	mov	dptr,#_stepper_enable_pin
      0034AE 75 F0 00         [24] 1239 	mov	b,#0x00
      0034B1 12 20 44         [24] 1240 	lcall	_gpioWrite
                                   1241 ;	stepper_driver.c:49: frequencyToSysclkDivisor(frequency),
      0034B4 90 06 95         [24] 1242 	mov	dptr,#_frequency
      0034B7 E0               [24] 1243 	movx	a,@dptr
      0034B8 FC               [12] 1244 	mov	r4,a
      0034B9 A3               [24] 1245 	inc	dptr
      0034BA E0               [24] 1246 	movx	a,@dptr
      0034BB FD               [12] 1247 	mov	r5,a
      0034BC A3               [24] 1248 	inc	dptr
      0034BD E0               [24] 1249 	movx	a,@dptr
      0034BE FE               [12] 1250 	mov	r6,a
      0034BF A3               [24] 1251 	inc	dptr
      0034C0 E0               [24] 1252 	movx	a,@dptr
      0034C1 FF               [12] 1253 	mov	r7,a
      0034C2 90 05 DC         [24] 1254 	mov	dptr,#__divulong_PARM_2
      0034C5 EC               [12] 1255 	mov	a,r4
      0034C6 F0               [24] 1256 	movx	@dptr,a
      0034C7 ED               [12] 1257 	mov	a,r5
      0034C8 A3               [24] 1258 	inc	dptr
      0034C9 F0               [24] 1259 	movx	@dptr,a
      0034CA EE               [12] 1260 	mov	a,r6
      0034CB A3               [24] 1261 	inc	dptr
      0034CC F0               [24] 1262 	movx	@dptr,a
      0034CD EF               [12] 1263 	mov	a,r7
      0034CE A3               [24] 1264 	inc	dptr
      0034CF F0               [24] 1265 	movx	@dptr,a
                                   1266 ;	stepper_driver.c:52: FREE_RUNNING
      0034D0 90 0E C0         [24] 1267 	mov	dptr,#0x0ec0
      0034D3 75 F0 16         [24] 1268 	mov	b,#0x16
      0034D6 74 02            [12] 1269 	mov	a,#0x02
      0034D8 12 4A DE         [24] 1270 	lcall	__divulong
      0034DB AC 82            [24] 1271 	mov	r4,dpl
      0034DD AD 83            [24] 1272 	mov	r5,dph
      0034DF AE F0            [24] 1273 	mov	r6,b
      0034E1 FF               [12] 1274 	mov	r7,a
      0034E2 90 00 A5         [24] 1275 	mov	dptr,#_startTimer_PARM_2
      0034E5 EC               [12] 1276 	mov	a,r4
      0034E6 F0               [24] 1277 	movx	@dptr,a
      0034E7 ED               [12] 1278 	mov	a,r5
      0034E8 A3               [24] 1279 	inc	dptr
      0034E9 F0               [24] 1280 	movx	@dptr,a
      0034EA EE               [12] 1281 	mov	a,r6
      0034EB A3               [24] 1282 	inc	dptr
      0034EC F0               [24] 1283 	movx	@dptr,a
      0034ED EF               [12] 1284 	mov	a,r7
      0034EE A3               [24] 1285 	inc	dptr
      0034EF F0               [24] 1286 	movx	@dptr,a
      0034F0 90 00 A9         [24] 1287 	mov	dptr,#_startTimer_PARM_3
      0034F3 E4               [12] 1288 	clr	a
      0034F4 F0               [24] 1289 	movx	@dptr,a
      0034F5 90 00 AA         [24] 1290 	mov	dptr,#_startTimer_PARM_4
      0034F8 04               [12] 1291 	inc	a
      0034F9 F0               [24] 1292 	movx	@dptr,a
      0034FA 90 00 AB         [24] 1293 	mov	dptr,#_startTimer_PARM_5
      0034FD E4               [12] 1294 	clr	a
      0034FE F0               [24] 1295 	movx	@dptr,a
      0034FF 75 82 02         [24] 1296 	mov	dpl,#0x02
                                   1297 ;	stepper_driver.c:55: }
      003502 02 13 2F         [24] 1298 	ljmp	_startTimer
                                   1299 ;------------------------------------------------------------
                                   1300 ;Allocation info for local variables in function 'get_stepper_state'
                                   1301 ;------------------------------------------------------------
                                   1302 ;	stepper_driver.c:57: __bit get_stepper_state(void) { return stepper_active; }
                                   1303 ;	-----------------------------------------
                                   1304 ;	 function get_stepper_state
                                   1305 ;	-----------------------------------------
      003505                       1306 _get_stepper_state:
      003505 A2 02            [12] 1307 	mov	c,_stepper_active
      003507 22               [24] 1308 	ret
                                   1309 ;------------------------------------------------------------
                                   1310 ;Allocation info for local variables in function 'stepper_set_microstep'
                                   1311 ;------------------------------------------------------------
                                   1312 ;microstepping_value       Allocated with name '_stepper_set_microstep_microstepping_value_65536_156'
                                   1313 ;------------------------------------------------------------
                                   1314 ;	stepper_driver.c:59: void stepper_set_microstep(microstepping_value_t microstepping_value) { 
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function stepper_set_microstep
                                   1317 ;	-----------------------------------------
      003508                       1318 _stepper_set_microstep:
      003508 E5 82            [12] 1319 	mov	a,dpl
      00350A 90 05 5A         [24] 1320 	mov	dptr,#_stepper_set_microstep_microstepping_value_65536_156
      00350D F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	stepper_driver.c:60: gpioWrite(&stepper_ms1_pin, MICROSTEP_TO_MS1_VALUE[microstepping_value]);
      00350E E0               [24] 1323 	movx	a,@dptr
      00350F FF               [12] 1324 	mov	r7,a
      003510 90 71 45         [24] 1325 	mov	dptr,#_MICROSTEP_TO_MS1_VALUE
      003513 93               [24] 1326 	movc	a,@a+dptr
      003514 90 00 D5         [24] 1327 	mov	dptr,#_gpioWrite_PARM_2
      003517 F0               [24] 1328 	movx	@dptr,a
      003518 90 06 77         [24] 1329 	mov	dptr,#_stepper_ms1_pin
      00351B 75 F0 00         [24] 1330 	mov	b,#0x00
      00351E C0 07            [24] 1331 	push	ar7
      003520 12 20 44         [24] 1332 	lcall	_gpioWrite
      003523 D0 07            [24] 1333 	pop	ar7
                                   1334 ;	stepper_driver.c:61: gpioWrite(&stepper_ms2_pin, MICROSTEP_TO_MS2_VALUE[microstepping_value]);
      003525 EF               [12] 1335 	mov	a,r7
      003526 90 71 49         [24] 1336 	mov	dptr,#_MICROSTEP_TO_MS2_VALUE
      003529 93               [24] 1337 	movc	a,@a+dptr
      00352A 90 00 D5         [24] 1338 	mov	dptr,#_gpioWrite_PARM_2
      00352D F0               [24] 1339 	movx	@dptr,a
      00352E 90 06 84         [24] 1340 	mov	dptr,#_stepper_ms2_pin
      003531 75 F0 00         [24] 1341 	mov	b,#0x00
                                   1342 ;	stepper_driver.c:62: }
      003534 02 20 44         [24] 1343 	ljmp	_gpioWrite
                                   1344 ;------------------------------------------------------------
                                   1345 ;Allocation info for local variables in function 'stepper_set_enable'
                                   1346 ;------------------------------------------------------------
                                   1347 ;stepper_enable_status     Allocated with name '_stepper_set_enable_stepper_enable_status_65536_158'
                                   1348 ;------------------------------------------------------------
                                   1349 ;	stepper_driver.c:64: void stepper_set_enable(stepper_enable_status_t stepper_enable_status) {
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function stepper_set_enable
                                   1352 ;	-----------------------------------------
      003537                       1353 _stepper_set_enable:
      003537 E5 82            [12] 1354 	mov	a,dpl
      003539 90 05 5B         [24] 1355 	mov	dptr,#_stepper_set_enable_stepper_enable_status_65536_158
      00353C F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	stepper_driver.c:65: if(!stepper_active) {
      00353D 20 02 11         [24] 1358 	jb	_stepper_active,00103$
                                   1359 ;	stepper_driver.c:66: gpioWrite(&stepper_enable_pin, stepper_enable_status);
      003540 90 05 5B         [24] 1360 	mov	dptr,#_stepper_set_enable_stepper_enable_status_65536_158
      003543 E0               [24] 1361 	movx	a,@dptr
      003544 90 00 D5         [24] 1362 	mov	dptr,#_gpioWrite_PARM_2
      003547 F0               [24] 1363 	movx	@dptr,a
      003548 90 06 50         [24] 1364 	mov	dptr,#_stepper_enable_pin
      00354B 75 F0 00         [24] 1365 	mov	b,#0x00
                                   1366 ;	stepper_driver.c:68: }
      00354E 02 20 44         [24] 1367 	ljmp	_gpioWrite
      003551                       1368 00103$:
      003551 22               [24] 1369 	ret
                                   1370 ;------------------------------------------------------------
                                   1371 ;Allocation info for local variables in function 'stepper_set_dir'
                                   1372 ;------------------------------------------------------------
                                   1373 ;stepper_direction         Allocated with name '_stepper_set_dir_stepper_direction_65536_161'
                                   1374 ;------------------------------------------------------------
                                   1375 ;	stepper_driver.c:70: void stepper_set_dir(stepper_direction_t stepper_direction) { 
                                   1376 ;	-----------------------------------------
                                   1377 ;	 function stepper_set_dir
                                   1378 ;	-----------------------------------------
      003552                       1379 _stepper_set_dir:
      003552 E5 82            [12] 1380 	mov	a,dpl
      003554 90 05 5C         [24] 1381 	mov	dptr,#_stepper_set_dir_stepper_direction_65536_161
      003557 F0               [24] 1382 	movx	@dptr,a
                                   1383 ;	stepper_driver.c:71: gpioWrite(&stepper_dir_pin, stepper_direction);
      003558 E0               [24] 1384 	movx	a,@dptr
      003559 90 00 D5         [24] 1385 	mov	dptr,#_gpioWrite_PARM_2
      00355C F0               [24] 1386 	movx	@dptr,a
      00355D 90 06 6A         [24] 1387 	mov	dptr,#_stepper_dir_pin
      003560 75 F0 00         [24] 1388 	mov	b,#0x00
                                   1389 ;	stepper_driver.c:72: }
      003563 02 20 44         [24] 1390 	ljmp	_gpioWrite
                                   1391 ;------------------------------------------------------------
                                   1392 ;Allocation info for local variables in function 'timer2_isr'
                                   1393 ;------------------------------------------------------------
                                   1394 ;__1966080013              Allocated with name '_timer2_isr___1966080013_196608_167'
                                   1395 ;config                    Allocated with name '_timer2_isr_config_262144_168'
                                   1396 ;------------------------------------------------------------
                                   1397 ;	stepper_driver.c:74: INTERRUPT(STEPPER_TIMER_ISR, STEPPER_TIMER_INTERRUPT) {
                                   1398 ;	-----------------------------------------
                                   1399 ;	 function timer2_isr
                                   1400 ;	-----------------------------------------
      003566                       1401 _timer2_isr:
      003566 C0 21            [24] 1402 	push	bits
      003568 C0 E0            [24] 1403 	push	acc
      00356A C0 F0            [24] 1404 	push	b
      00356C C0 82            [24] 1405 	push	dpl
      00356E C0 83            [24] 1406 	push	dph
      003570 C0 07            [24] 1407 	push	(0+7)
      003572 C0 06            [24] 1408 	push	(0+6)
      003574 C0 05            [24] 1409 	push	(0+5)
      003576 C0 04            [24] 1410 	push	(0+4)
      003578 C0 03            [24] 1411 	push	(0+3)
      00357A C0 02            [24] 1412 	push	(0+2)
      00357C C0 01            [24] 1413 	push	(0+1)
      00357E C0 00            [24] 1414 	push	(0+0)
      003580 C0 D0            [24] 1415 	push	psw
      003582 75 D0 00         [24] 1416 	mov	psw,#0x00
                                   1417 ;	stepper_driver.c:76: if (step_counter) {
      003585 90 06 91         [24] 1418 	mov	dptr,#_step_counter
      003588 E0               [24] 1419 	movx	a,@dptr
      003589 FC               [12] 1420 	mov	r4,a
      00358A A3               [24] 1421 	inc	dptr
      00358B E0               [24] 1422 	movx	a,@dptr
      00358C FD               [12] 1423 	mov	r5,a
      00358D A3               [24] 1424 	inc	dptr
      00358E E0               [24] 1425 	movx	a,@dptr
      00358F FE               [12] 1426 	mov	r6,a
      003590 A3               [24] 1427 	inc	dptr
      003591 E0               [24] 1428 	movx	a,@dptr
      003592 FF               [12] 1429 	mov	r7,a
      003593 EC               [12] 1430 	mov	a,r4
      003594 4D               [12] 1431 	orl	a,r5
      003595 4E               [12] 1432 	orl	a,r6
      003596 4F               [12] 1433 	orl	a,r7
      003597 60 48            [24] 1434 	jz	00104$
                                   1435 ;	stepper_driver.c:78: step_counter--;
      003599 90 06 91         [24] 1436 	mov	dptr,#_step_counter
      00359C E0               [24] 1437 	movx	a,@dptr
      00359D FC               [12] 1438 	mov	r4,a
      00359E A3               [24] 1439 	inc	dptr
      00359F E0               [24] 1440 	movx	a,@dptr
      0035A0 FD               [12] 1441 	mov	r5,a
      0035A1 A3               [24] 1442 	inc	dptr
      0035A2 E0               [24] 1443 	movx	a,@dptr
      0035A3 FE               [12] 1444 	mov	r6,a
      0035A4 A3               [24] 1445 	inc	dptr
      0035A5 E0               [24] 1446 	movx	a,@dptr
      0035A6 FF               [12] 1447 	mov	r7,a
      0035A7 1C               [12] 1448 	dec	r4
      0035A8 BC FF 09         [24] 1449 	cjne	r4,#0xff,00118$
      0035AB 1D               [12] 1450 	dec	r5
      0035AC BD FF 05         [24] 1451 	cjne	r5,#0xff,00118$
      0035AF 1E               [12] 1452 	dec	r6
      0035B0 BE FF 01         [24] 1453 	cjne	r6,#0xff,00118$
      0035B3 1F               [12] 1454 	dec	r7
      0035B4                       1455 00118$:
      0035B4 90 06 91         [24] 1456 	mov	dptr,#_step_counter
      0035B7 EC               [12] 1457 	mov	a,r4
      0035B8 F0               [24] 1458 	movx	@dptr,a
      0035B9 ED               [12] 1459 	mov	a,r5
      0035BA A3               [24] 1460 	inc	dptr
      0035BB F0               [24] 1461 	movx	@dptr,a
      0035BC EE               [12] 1462 	mov	a,r6
      0035BD A3               [24] 1463 	inc	dptr
      0035BE F0               [24] 1464 	movx	@dptr,a
      0035BF EF               [12] 1465 	mov	a,r7
      0035C0 A3               [24] 1466 	inc	dptr
      0035C1 F0               [24] 1467 	movx	@dptr,a
                                   1468 ;	stepper_driver.c:79: gpioToggle(&stepper_step_pin);
                                   1469 ;	/home/mr-a-717/.stc/uni-stc/hal/gpio-hal.h:206: gpioWrite(config, !gpioRead(config));
      0035C2 90 06 5D         [24] 1470 	mov	dptr,#_stepper_step_pin
      0035C5 75 F0 00         [24] 1471 	mov	b,#0x00
      0035C8 12 1F DB         [24] 1472 	lcall	_gpioRead
      0035CB E5 82            [12] 1473 	mov	a,dpl
      0035CD B4 01 00         [24] 1474 	cjne	a,#0x01,00119$
      0035D0                       1475 00119$:
      0035D0 E4               [12] 1476 	clr	a
      0035D1 33               [12] 1477 	rlc	a
      0035D2 90 00 D5         [24] 1478 	mov	dptr,#_gpioWrite_PARM_2
      0035D5 F0               [24] 1479 	movx	@dptr,a
      0035D6 90 06 5D         [24] 1480 	mov	dptr,#_stepper_step_pin
      0035D9 75 F0 00         [24] 1481 	mov	b,#0x00
      0035DC 12 20 44         [24] 1482 	lcall	_gpioWrite
                                   1483 ;	stepper_driver.c:79: gpioToggle(&stepper_step_pin);
      0035DF 80 1C            [24] 1484 	sjmp	00107$
      0035E1                       1485 00104$:
                                   1486 ;	stepper_driver.c:81: } else if (stepper_active) {
      0035E1 30 02 19         [24] 1487 	jnb	_stepper_active,00107$
                                   1488 ;	stepper_driver.c:83: gpioWrite(&stepper_enable_pin, stepper_enable_after_move);
      0035E4 90 05 52         [24] 1489 	mov	dptr,#_stepper_enable_after_move
      0035E7 E0               [24] 1490 	movx	a,@dptr
      0035E8 90 00 D5         [24] 1491 	mov	dptr,#_gpioWrite_PARM_2
      0035EB F0               [24] 1492 	movx	@dptr,a
      0035EC 90 06 50         [24] 1493 	mov	dptr,#_stepper_enable_pin
      0035EF 75 F0 00         [24] 1494 	mov	b,#0x00
      0035F2 12 20 44         [24] 1495 	lcall	_gpioWrite
                                   1496 ;	stepper_driver.c:84: stepper_active = 0;
                                   1497 ;	assignBit
      0035F5 C2 02            [12] 1498 	clr	_stepper_active
                                   1499 ;	stepper_driver.c:85: stopTimer(STEPPER_TIMER);
      0035F7 75 82 02         [24] 1500 	mov	dpl,#0x02
      0035FA 12 16 E8         [24] 1501 	lcall	_stopTimer
      0035FD                       1502 00107$:
                                   1503 ;	stepper_driver.c:89: }
      0035FD D0 D0            [24] 1504 	pop	psw
      0035FF D0 00            [24] 1505 	pop	(0+0)
      003601 D0 01            [24] 1506 	pop	(0+1)
      003603 D0 02            [24] 1507 	pop	(0+2)
      003605 D0 03            [24] 1508 	pop	(0+3)
      003607 D0 04            [24] 1509 	pop	(0+4)
      003609 D0 05            [24] 1510 	pop	(0+5)
      00360B D0 06            [24] 1511 	pop	(0+6)
      00360D D0 07            [24] 1512 	pop	(0+7)
      00360F D0 83            [24] 1513 	pop	dph
      003611 D0 82            [24] 1514 	pop	dpl
      003613 D0 F0            [24] 1515 	pop	b
      003615 D0 E0            [24] 1516 	pop	acc
      003617 D0 21            [24] 1517 	pop	bits
      003619 32               [24] 1518 	reti
                                   1519 ;------------------------------------------------------------
                                   1520 ;Allocation info for local variables in function 'stepper_set_steps_from_float_digits'
                                   1521 ;------------------------------------------------------------
                                   1522 ;sloc0                     Allocated with name '_stepper_set_steps_from_float_digits_sloc0_1_0'
                                   1523 ;sloc1                     Allocated with name '_stepper_set_steps_from_float_digits_sloc1_1_0'
                                   1524 ;sloc2                     Allocated with name '_stepper_set_steps_from_float_digits_sloc2_1_0'
                                   1525 ;float_digits              Allocated with name '_stepper_set_steps_from_float_digits_PARM_2'
                                   1526 ;stepper_movement          Allocated with name '_stepper_set_steps_from_float_digits_stepper_movement_65536_170'
                                   1527 ;hundreds                  Allocated with name '_stepper_set_steps_from_float_digits_hundreds_65537_173'
                                   1528 ;tens                      Allocated with name '_stepper_set_steps_from_float_digits_tens_65537_173'
                                   1529 ;ones                      Allocated with name '_stepper_set_steps_from_float_digits_ones_65537_173'
                                   1530 ;tenths                    Allocated with name '_stepper_set_steps_from_float_digits_tenths_65537_173'
                                   1531 ;hundredths                Allocated with name '_stepper_set_steps_from_float_digits_hundredths_65537_173'
                                   1532 ;whole_part                Allocated with name '_stepper_set_steps_from_float_digits_whole_part_65537_173'
                                   1533 ;fractional_part           Allocated with name '_stepper_set_steps_from_float_digits_fractional_part_65537_173'
                                   1534 ;fractional_steps          Allocated with name '_stepper_set_steps_from_float_digits_fractional_steps_65537_173'
                                   1535 ;------------------------------------------------------------
                                   1536 ;	stepper_driver.c:91: void stepper_set_steps_from_float_digits(stepper_movement_t* stepper_movement, uint8_t* float_digits) {
                                   1537 ;	-----------------------------------------
                                   1538 ;	 function stepper_set_steps_from_float_digits
                                   1539 ;	-----------------------------------------
      00361A                       1540 _stepper_set_steps_from_float_digits:
      00361A AF F0            [24] 1541 	mov	r7,b
      00361C AE 83            [24] 1542 	mov	r6,dph
      00361E E5 82            [12] 1543 	mov	a,dpl
      003620 90 05 60         [24] 1544 	mov	dptr,#_stepper_set_steps_from_float_digits_stepper_movement_65536_170
      003623 F0               [24] 1545 	movx	@dptr,a
      003624 EE               [12] 1546 	mov	a,r6
      003625 A3               [24] 1547 	inc	dptr
      003626 F0               [24] 1548 	movx	@dptr,a
      003627 EF               [12] 1549 	mov	a,r7
      003628 A3               [24] 1550 	inc	dptr
      003629 F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	stepper_driver.c:92: if (!stepper_movement || !float_digits) {
      00362A 90 05 60         [24] 1553 	mov	dptr,#_stepper_set_steps_from_float_digits_stepper_movement_65536_170
      00362D E0               [24] 1554 	movx	a,@dptr
      00362E F5 37            [12] 1555 	mov	_stepper_set_steps_from_float_digits_sloc1_1_0,a
      003630 A3               [24] 1556 	inc	dptr
      003631 E0               [24] 1557 	movx	a,@dptr
      003632 F5 38            [12] 1558 	mov	(_stepper_set_steps_from_float_digits_sloc1_1_0 + 1),a
      003634 A3               [24] 1559 	inc	dptr
      003635 E0               [24] 1560 	movx	a,@dptr
      003636 F5 39            [12] 1561 	mov	(_stepper_set_steps_from_float_digits_sloc1_1_0 + 2),a
      003638 90 05 60         [24] 1562 	mov	dptr,#_stepper_set_steps_from_float_digits_stepper_movement_65536_170
      00363B E0               [24] 1563 	movx	a,@dptr
      00363C F5 F0            [12] 1564 	mov	b,a
      00363E A3               [24] 1565 	inc	dptr
      00363F E0               [24] 1566 	movx	a,@dptr
      003640 45 F0            [12] 1567 	orl	a,b
      003642 60 0F            [24] 1568 	jz	00101$
      003644 90 05 5D         [24] 1569 	mov	dptr,#_stepper_set_steps_from_float_digits_PARM_2
      003647 E0               [24] 1570 	movx	a,@dptr
      003648 FA               [12] 1571 	mov	r2,a
      003649 A3               [24] 1572 	inc	dptr
      00364A E0               [24] 1573 	movx	a,@dptr
      00364B FB               [12] 1574 	mov	r3,a
      00364C A3               [24] 1575 	inc	dptr
      00364D E0               [24] 1576 	movx	a,@dptr
      00364E FC               [12] 1577 	mov	r4,a
      00364F EA               [12] 1578 	mov	a,r2
      003650 4B               [12] 1579 	orl	a,r3
      003651 70 01            [24] 1580 	jnz	00102$
      003653                       1581 00101$:
                                   1582 ;	stepper_driver.c:93: return; // Handle null pointers safely
      003653 22               [24] 1583 	ret
      003654                       1584 00102$:
                                   1585 ;	stepper_driver.c:97: uint8_t hundreds = float_digits[0];
      003654 8A 82            [24] 1586 	mov	dpl,r2
      003656 8B 83            [24] 1587 	mov	dph,r3
      003658 8C F0            [24] 1588 	mov	b,r4
      00365A 12 58 3E         [24] 1589 	lcall	__gptrget
      00365D F5 36            [12] 1590 	mov	_stepper_set_steps_from_float_digits_sloc0_1_0,a
                                   1591 ;	stepper_driver.c:98: uint8_t tens = float_digits[1];
      00365F 74 01            [12] 1592 	mov	a,#0x01
      003661 2A               [12] 1593 	add	a,r2
      003662 F8               [12] 1594 	mov	r0,a
      003663 E4               [12] 1595 	clr	a
      003664 3B               [12] 1596 	addc	a,r3
      003665 F9               [12] 1597 	mov	r1,a
      003666 8C 07            [24] 1598 	mov	ar7,r4
      003668 88 82            [24] 1599 	mov	dpl,r0
      00366A 89 83            [24] 1600 	mov	dph,r1
      00366C 8F F0            [24] 1601 	mov	b,r7
      00366E 12 58 3E         [24] 1602 	lcall	__gptrget
      003671 F8               [12] 1603 	mov	r0,a
                                   1604 ;	stepper_driver.c:99: uint8_t ones = float_digits[2];
      003672 74 02            [12] 1605 	mov	a,#0x02
      003674 2A               [12] 1606 	add	a,r2
      003675 FD               [12] 1607 	mov	r5,a
      003676 E4               [12] 1608 	clr	a
      003677 3B               [12] 1609 	addc	a,r3
      003678 FE               [12] 1610 	mov	r6,a
      003679 8C 07            [24] 1611 	mov	ar7,r4
      00367B 8D 82            [24] 1612 	mov	dpl,r5
      00367D 8E 83            [24] 1613 	mov	dph,r6
      00367F 8F F0            [24] 1614 	mov	b,r7
      003681 12 58 3E         [24] 1615 	lcall	__gptrget
      003684 FD               [12] 1616 	mov	r5,a
                                   1617 ;	stepper_driver.c:100: uint8_t tenths = float_digits[3];
      003685 74 03            [12] 1618 	mov	a,#0x03
      003687 2A               [12] 1619 	add	a,r2
      003688 F9               [12] 1620 	mov	r1,a
      003689 E4               [12] 1621 	clr	a
      00368A 3B               [12] 1622 	addc	a,r3
      00368B FE               [12] 1623 	mov	r6,a
      00368C 8C 07            [24] 1624 	mov	ar7,r4
      00368E 89 82            [24] 1625 	mov	dpl,r1
      003690 8E 83            [24] 1626 	mov	dph,r6
      003692 8F F0            [24] 1627 	mov	b,r7
      003694 12 58 3E         [24] 1628 	lcall	__gptrget
      003697 F9               [12] 1629 	mov	r1,a
                                   1630 ;	stepper_driver.c:101: uint8_t hundredths = float_digits[4];
      003698 74 04            [12] 1631 	mov	a,#0x04
      00369A 2A               [12] 1632 	add	a,r2
      00369B FA               [12] 1633 	mov	r2,a
      00369C E4               [12] 1634 	clr	a
      00369D 3B               [12] 1635 	addc	a,r3
      00369E FB               [12] 1636 	mov	r3,a
      00369F 8A 82            [24] 1637 	mov	dpl,r2
      0036A1 8B 83            [24] 1638 	mov	dph,r3
      0036A3 8C F0            [24] 1639 	mov	b,r4
      0036A5 12 58 3E         [24] 1640 	lcall	__gptrget
      0036A8 FA               [12] 1641 	mov	r2,a
                                   1642 ;	stepper_driver.c:104: uint32_t whole_part = (hundreds * 100) + (tens * 10) + ones; // Whole revolutions
      0036A9 90 05 ED         [24] 1643 	mov	dptr,#__mulint_PARM_2
      0036AC E5 36            [12] 1644 	mov	a,_stepper_set_steps_from_float_digits_sloc0_1_0
      0036AE F0               [24] 1645 	movx	@dptr,a
      0036AF E4               [12] 1646 	clr	a
      0036B0 A3               [24] 1647 	inc	dptr
      0036B1 F0               [24] 1648 	movx	@dptr,a
      0036B2 90 00 64         [24] 1649 	mov	dptr,#0x0064
      0036B5 C0 05            [24] 1650 	push	ar5
      0036B7 C0 02            [24] 1651 	push	ar2
      0036B9 C0 01            [24] 1652 	push	ar1
      0036BB C0 00            [24] 1653 	push	ar0
      0036BD 12 4C 15         [24] 1654 	lcall	__mulint
      0036C0 AE 82            [24] 1655 	mov	r6,dpl
      0036C2 AF 83            [24] 1656 	mov	r7,dph
      0036C4 D0 00            [24] 1657 	pop	ar0
      0036C6 D0 01            [24] 1658 	pop	ar1
      0036C8 D0 02            [24] 1659 	pop	ar2
      0036CA D0 05            [24] 1660 	pop	ar5
      0036CC 90 05 ED         [24] 1661 	mov	dptr,#__mulint_PARM_2
      0036CF E8               [12] 1662 	mov	a,r0
      0036D0 F0               [24] 1663 	movx	@dptr,a
      0036D1 E4               [12] 1664 	clr	a
      0036D2 A3               [24] 1665 	inc	dptr
      0036D3 F0               [24] 1666 	movx	@dptr,a
      0036D4 90 00 0A         [24] 1667 	mov	dptr,#0x000a
      0036D7 C0 07            [24] 1668 	push	ar7
      0036D9 C0 06            [24] 1669 	push	ar6
      0036DB C0 05            [24] 1670 	push	ar5
      0036DD C0 02            [24] 1671 	push	ar2
      0036DF C0 01            [24] 1672 	push	ar1
      0036E1 12 4C 15         [24] 1673 	lcall	__mulint
      0036E4 AB 82            [24] 1674 	mov	r3,dpl
      0036E6 AC 83            [24] 1675 	mov	r4,dph
      0036E8 D0 01            [24] 1676 	pop	ar1
      0036EA D0 02            [24] 1677 	pop	ar2
      0036EC D0 05            [24] 1678 	pop	ar5
      0036EE D0 06            [24] 1679 	pop	ar6
      0036F0 D0 07            [24] 1680 	pop	ar7
      0036F2 EB               [12] 1681 	mov	a,r3
      0036F3 2E               [12] 1682 	add	a,r6
      0036F4 FE               [12] 1683 	mov	r6,a
      0036F5 EC               [12] 1684 	mov	a,r4
      0036F6 3F               [12] 1685 	addc	a,r7
      0036F7 FF               [12] 1686 	mov	r7,a
      0036F8 7C 00            [12] 1687 	mov	r4,#0x00
      0036FA ED               [12] 1688 	mov	a,r5
      0036FB 2E               [12] 1689 	add	a,r6
      0036FC FE               [12] 1690 	mov	r6,a
      0036FD EC               [12] 1691 	mov	a,r4
      0036FE 3F               [12] 1692 	addc	a,r7
      0036FF FF               [12] 1693 	mov	r7,a
      003700 33               [12] 1694 	rlc	a
      003701 95 E0            [12] 1695 	subb	a,acc
      003703 FD               [12] 1696 	mov	r5,a
      003704 FC               [12] 1697 	mov	r4,a
                                   1698 ;	stepper_driver.c:105: uint32_t fractional_part = (tenths * 10) + hundredths;       // Fractional part in hundredths
      003705 90 05 ED         [24] 1699 	mov	dptr,#__mulint_PARM_2
      003708 E9               [12] 1700 	mov	a,r1
      003709 F0               [24] 1701 	movx	@dptr,a
      00370A E4               [12] 1702 	clr	a
      00370B A3               [24] 1703 	inc	dptr
      00370C F0               [24] 1704 	movx	@dptr,a
      00370D 90 00 0A         [24] 1705 	mov	dptr,#0x000a
      003710 C0 07            [24] 1706 	push	ar7
      003712 C0 06            [24] 1707 	push	ar6
      003714 C0 05            [24] 1708 	push	ar5
      003716 C0 04            [24] 1709 	push	ar4
      003718 C0 02            [24] 1710 	push	ar2
      00371A 12 4C 15         [24] 1711 	lcall	__mulint
      00371D A9 82            [24] 1712 	mov	r1,dpl
      00371F AB 83            [24] 1713 	mov	r3,dph
      003721 D0 02            [24] 1714 	pop	ar2
      003723 8A 00            [24] 1715 	mov	ar0,r2
      003725 7A 00            [12] 1716 	mov	r2,#0x00
      003727 E8               [12] 1717 	mov	a,r0
      003728 29               [12] 1718 	add	a,r1
      003729 F9               [12] 1719 	mov	r1,a
      00372A EA               [12] 1720 	mov	a,r2
      00372B 3B               [12] 1721 	addc	a,r3
      00372C FB               [12] 1722 	mov	r3,a
      00372D 90 05 EF         [24] 1723 	mov	dptr,#__mullong_PARM_2
      003730 E9               [12] 1724 	mov	a,r1
      003731 F0               [24] 1725 	movx	@dptr,a
      003732 EB               [12] 1726 	mov	a,r3
      003733 A3               [24] 1727 	inc	dptr
      003734 F0               [24] 1728 	movx	@dptr,a
      003735 EB               [12] 1729 	mov	a,r3
      003736 33               [12] 1730 	rlc	a
      003737 95 E0            [12] 1731 	subb	a,acc
      003739 A3               [24] 1732 	inc	dptr
      00373A F0               [24] 1733 	movx	@dptr,a
      00373B A3               [24] 1734 	inc	dptr
      00373C F0               [24] 1735 	movx	@dptr,a
                                   1736 ;	stepper_driver.c:109: uint32_t fractional_steps = (fractional_part * 3200) / 100;
      00373D 90 0C 80         [24] 1737 	mov	dptr,#0x0c80
      003740 E4               [12] 1738 	clr	a
      003741 F5 F0            [12] 1739 	mov	b,a
      003743 12 4C 35         [24] 1740 	lcall	__mullong
      003746 A8 82            [24] 1741 	mov	r0,dpl
      003748 A9 83            [24] 1742 	mov	r1,dph
      00374A AA F0            [24] 1743 	mov	r2,b
      00374C FB               [12] 1744 	mov	r3,a
      00374D 90 05 DC         [24] 1745 	mov	dptr,#__divulong_PARM_2
      003750 74 64            [12] 1746 	mov	a,#0x64
      003752 F0               [24] 1747 	movx	@dptr,a
      003753 E4               [12] 1748 	clr	a
      003754 A3               [24] 1749 	inc	dptr
      003755 F0               [24] 1750 	movx	@dptr,a
      003756 A3               [24] 1751 	inc	dptr
      003757 F0               [24] 1752 	movx	@dptr,a
      003758 A3               [24] 1753 	inc	dptr
      003759 F0               [24] 1754 	movx	@dptr,a
                                   1755 ;	stepper_driver.c:112: stepper_movement->steps = (whole_part * 3200) + fractional_steps;
      00375A 88 82            [24] 1756 	mov	dpl,r0
      00375C 89 83            [24] 1757 	mov	dph,r1
      00375E 8A F0            [24] 1758 	mov	b,r2
      003760 EB               [12] 1759 	mov	a,r3
      003761 12 4A DE         [24] 1760 	lcall	__divulong
      003764 85 82 3A         [24] 1761 	mov	_stepper_set_steps_from_float_digits_sloc2_1_0,dpl
      003767 85 83 3B         [24] 1762 	mov	(_stepper_set_steps_from_float_digits_sloc2_1_0 + 1),dph
      00376A 85 F0 3C         [24] 1763 	mov	(_stepper_set_steps_from_float_digits_sloc2_1_0 + 2),b
      00376D F5 3D            [12] 1764 	mov	(_stepper_set_steps_from_float_digits_sloc2_1_0 + 3),a
      00376F D0 04            [24] 1765 	pop	ar4
      003771 D0 05            [24] 1766 	pop	ar5
      003773 D0 06            [24] 1767 	pop	ar6
      003775 D0 07            [24] 1768 	pop	ar7
      003777 74 07            [12] 1769 	mov	a,#0x07
      003779 25 37            [12] 1770 	add	a,_stepper_set_steps_from_float_digits_sloc1_1_0
      00377B F9               [12] 1771 	mov	r1,a
      00377C E4               [12] 1772 	clr	a
      00377D 35 38            [12] 1773 	addc	a,(_stepper_set_steps_from_float_digits_sloc1_1_0 + 1)
      00377F FA               [12] 1774 	mov	r2,a
      003780 AB 39            [24] 1775 	mov	r3,(_stepper_set_steps_from_float_digits_sloc1_1_0 + 2)
      003782 90 05 EF         [24] 1776 	mov	dptr,#__mullong_PARM_2
      003785 EE               [12] 1777 	mov	a,r6
      003786 F0               [24] 1778 	movx	@dptr,a
      003787 EF               [12] 1779 	mov	a,r7
      003788 A3               [24] 1780 	inc	dptr
      003789 F0               [24] 1781 	movx	@dptr,a
      00378A ED               [12] 1782 	mov	a,r5
      00378B A3               [24] 1783 	inc	dptr
      00378C F0               [24] 1784 	movx	@dptr,a
      00378D EC               [12] 1785 	mov	a,r4
      00378E A3               [24] 1786 	inc	dptr
      00378F F0               [24] 1787 	movx	@dptr,a
      003790 90 0C 80         [24] 1788 	mov	dptr,#0x0c80
      003793 E4               [12] 1789 	clr	a
      003794 F5 F0            [12] 1790 	mov	b,a
      003796 C0 03            [24] 1791 	push	ar3
      003798 C0 02            [24] 1792 	push	ar2
      00379A C0 01            [24] 1793 	push	ar1
      00379C 12 4C 35         [24] 1794 	lcall	__mullong
      00379F AC 82            [24] 1795 	mov	r4,dpl
      0037A1 AD 83            [24] 1796 	mov	r5,dph
      0037A3 AE F0            [24] 1797 	mov	r6,b
      0037A5 FF               [12] 1798 	mov	r7,a
      0037A6 D0 01            [24] 1799 	pop	ar1
      0037A8 D0 02            [24] 1800 	pop	ar2
      0037AA D0 03            [24] 1801 	pop	ar3
      0037AC E5 3A            [12] 1802 	mov	a,_stepper_set_steps_from_float_digits_sloc2_1_0
      0037AE 2C               [12] 1803 	add	a,r4
      0037AF FC               [12] 1804 	mov	r4,a
      0037B0 E5 3B            [12] 1805 	mov	a,(_stepper_set_steps_from_float_digits_sloc2_1_0 + 1)
      0037B2 3D               [12] 1806 	addc	a,r5
      0037B3 FD               [12] 1807 	mov	r5,a
      0037B4 E5 3C            [12] 1808 	mov	a,(_stepper_set_steps_from_float_digits_sloc2_1_0 + 2)
      0037B6 3E               [12] 1809 	addc	a,r6
      0037B7 FE               [12] 1810 	mov	r6,a
      0037B8 E5 3D            [12] 1811 	mov	a,(_stepper_set_steps_from_float_digits_sloc2_1_0 + 3)
      0037BA 3F               [12] 1812 	addc	a,r7
      0037BB FF               [12] 1813 	mov	r7,a
      0037BC 89 82            [24] 1814 	mov	dpl,r1
      0037BE 8A 83            [24] 1815 	mov	dph,r2
      0037C0 8B F0            [24] 1816 	mov	b,r3
      0037C2 EC               [12] 1817 	mov	a,r4
      0037C3 12 4B FA         [24] 1818 	lcall	__gptrput
      0037C6 A3               [24] 1819 	inc	dptr
      0037C7 ED               [12] 1820 	mov	a,r5
      0037C8 12 4B FA         [24] 1821 	lcall	__gptrput
      0037CB A3               [24] 1822 	inc	dptr
      0037CC EE               [12] 1823 	mov	a,r6
      0037CD 12 4B FA         [24] 1824 	lcall	__gptrput
      0037D0 A3               [24] 1825 	inc	dptr
      0037D1 EF               [12] 1826 	mov	a,r7
                                   1827 ;	stepper_driver.c:114: }
      0037D2 02 4B FA         [24] 1828 	ljmp	__gptrput
                                   1829 	.area CSEG    (CODE)
                                   1830 	.area CONST   (CODE)
      006F65                       1831 _FONTS:
      006F65 00                    1832 	.db #0x00	; 0
      006F66 00                    1833 	.db #0x00	; 0
      006F67 00                    1834 	.db #0x00	; 0
      006F68 00                    1835 	.db #0x00	; 0
      006F69 00                    1836 	.db #0x00	; 0
      006F6A 81                    1837 	.db #0x81	; 129
      006F6B 81                    1838 	.db #0x81	; 129
      006F6C 18                    1839 	.db #0x18	; 24
      006F6D 81                    1840 	.db #0x81	; 129
      006F6E 81                    1841 	.db #0x81	; 129
      006F6F 00                    1842 	.db #0x00	; 0
      006F70 07                    1843 	.db #0x07	; 7
      006F71 00                    1844 	.db #0x00	; 0
      006F72 07                    1845 	.db #0x07	; 7
      006F73 00                    1846 	.db #0x00	; 0
      006F74 14                    1847 	.db #0x14	; 20
      006F75 7F                    1848 	.db #0x7f	; 127
      006F76 14                    1849 	.db #0x14	; 20
      006F77 7F                    1850 	.db #0x7f	; 127
      006F78 14                    1851 	.db #0x14	; 20
      006F79 24                    1852 	.db #0x24	; 36
      006F7A 2A                    1853 	.db #0x2a	; 42
      006F7B 7F                    1854 	.db #0x7f	; 127
      006F7C 2A                    1855 	.db #0x2a	; 42
      006F7D 12                    1856 	.db #0x12	; 18
      006F7E 23                    1857 	.db #0x23	; 35
      006F7F 13                    1858 	.db #0x13	; 19
      006F80 08                    1859 	.db #0x08	; 8
      006F81 64                    1860 	.db #0x64	; 100	'd'
      006F82 62                    1861 	.db #0x62	; 98	'b'
      006F83 36                    1862 	.db #0x36	; 54	'6'
      006F84 49                    1863 	.db #0x49	; 73	'I'
      006F85 55                    1864 	.db #0x55	; 85	'U'
      006F86 22                    1865 	.db #0x22	; 34
      006F87 50                    1866 	.db #0x50	; 80	'P'
      006F88 00                    1867 	.db #0x00	; 0
      006F89 05                    1868 	.db #0x05	; 5
      006F8A 03                    1869 	.db #0x03	; 3
      006F8B 00                    1870 	.db #0x00	; 0
      006F8C 00                    1871 	.db #0x00	; 0
      006F8D 00                    1872 	.db #0x00	; 0
      006F8E 1C                    1873 	.db #0x1c	; 28
      006F8F 22                    1874 	.db #0x22	; 34
      006F90 41                    1875 	.db #0x41	; 65	'A'
      006F91 00                    1876 	.db #0x00	; 0
      006F92 00                    1877 	.db #0x00	; 0
      006F93 41                    1878 	.db #0x41	; 65	'A'
      006F94 22                    1879 	.db #0x22	; 34
      006F95 1C                    1880 	.db #0x1c	; 28
      006F96 00                    1881 	.db #0x00	; 0
      006F97 14                    1882 	.db #0x14	; 20
      006F98 08                    1883 	.db #0x08	; 8
      006F99 3E                    1884 	.db #0x3e	; 62
      006F9A 08                    1885 	.db #0x08	; 8
      006F9B 14                    1886 	.db #0x14	; 20
      006F9C 08                    1887 	.db #0x08	; 8
      006F9D 08                    1888 	.db #0x08	; 8
      006F9E 3E                    1889 	.db #0x3e	; 62
      006F9F 08                    1890 	.db #0x08	; 8
      006FA0 08                    1891 	.db #0x08	; 8
      006FA1 00                    1892 	.db #0x00	; 0
      006FA2 50                    1893 	.db #0x50	; 80	'P'
      006FA3 30                    1894 	.db #0x30	; 48	'0'
      006FA4 00                    1895 	.db #0x00	; 0
      006FA5 00                    1896 	.db #0x00	; 0
      006FA6 08                    1897 	.db #0x08	; 8
      006FA7 08                    1898 	.db #0x08	; 8
      006FA8 08                    1899 	.db #0x08	; 8
      006FA9 08                    1900 	.db #0x08	; 8
      006FAA 08                    1901 	.db #0x08	; 8
      006FAB 00                    1902 	.db #0x00	; 0
      006FAC 60                    1903 	.db #0x60	; 96
      006FAD 60                    1904 	.db #0x60	; 96
      006FAE 00                    1905 	.db #0x00	; 0
      006FAF 00                    1906 	.db #0x00	; 0
      006FB0 20                    1907 	.db #0x20	; 32
      006FB1 10                    1908 	.db #0x10	; 16
      006FB2 08                    1909 	.db #0x08	; 8
      006FB3 04                    1910 	.db #0x04	; 4
      006FB4 02                    1911 	.db #0x02	; 2
      006FB5 3E                    1912 	.db #0x3e	; 62
      006FB6 51                    1913 	.db #0x51	; 81	'Q'
      006FB7 49                    1914 	.db #0x49	; 73	'I'
      006FB8 45                    1915 	.db #0x45	; 69	'E'
      006FB9 3E                    1916 	.db #0x3e	; 62
      006FBA 00                    1917 	.db #0x00	; 0
      006FBB 42                    1918 	.db #0x42	; 66	'B'
      006FBC 7F                    1919 	.db #0x7f	; 127
      006FBD 40                    1920 	.db #0x40	; 64
      006FBE 00                    1921 	.db #0x00	; 0
      006FBF 42                    1922 	.db #0x42	; 66	'B'
      006FC0 61                    1923 	.db #0x61	; 97	'a'
      006FC1 51                    1924 	.db #0x51	; 81	'Q'
      006FC2 49                    1925 	.db #0x49	; 73	'I'
      006FC3 46                    1926 	.db #0x46	; 70	'F'
      006FC4 21                    1927 	.db #0x21	; 33
      006FC5 41                    1928 	.db #0x41	; 65	'A'
      006FC6 45                    1929 	.db #0x45	; 69	'E'
      006FC7 4B                    1930 	.db #0x4b	; 75	'K'
      006FC8 31                    1931 	.db #0x31	; 49	'1'
      006FC9 18                    1932 	.db #0x18	; 24
      006FCA 14                    1933 	.db #0x14	; 20
      006FCB 12                    1934 	.db #0x12	; 18
      006FCC 7F                    1935 	.db #0x7f	; 127
      006FCD 10                    1936 	.db #0x10	; 16
      006FCE 27                    1937 	.db #0x27	; 39
      006FCF 45                    1938 	.db #0x45	; 69	'E'
      006FD0 45                    1939 	.db #0x45	; 69	'E'
      006FD1 45                    1940 	.db #0x45	; 69	'E'
      006FD2 39                    1941 	.db #0x39	; 57	'9'
      006FD3 3C                    1942 	.db #0x3c	; 60
      006FD4 4A                    1943 	.db #0x4a	; 74	'J'
      006FD5 49                    1944 	.db #0x49	; 73	'I'
      006FD6 49                    1945 	.db #0x49	; 73	'I'
      006FD7 30                    1946 	.db #0x30	; 48	'0'
      006FD8 01                    1947 	.db #0x01	; 1
      006FD9 71                    1948 	.db #0x71	; 113	'q'
      006FDA 09                    1949 	.db #0x09	; 9
      006FDB 05                    1950 	.db #0x05	; 5
      006FDC 03                    1951 	.db #0x03	; 3
      006FDD 36                    1952 	.db #0x36	; 54	'6'
      006FDE 49                    1953 	.db #0x49	; 73	'I'
      006FDF 49                    1954 	.db #0x49	; 73	'I'
      006FE0 49                    1955 	.db #0x49	; 73	'I'
      006FE1 36                    1956 	.db #0x36	; 54	'6'
      006FE2 06                    1957 	.db #0x06	; 6
      006FE3 49                    1958 	.db #0x49	; 73	'I'
      006FE4 49                    1959 	.db #0x49	; 73	'I'
      006FE5 29                    1960 	.db #0x29	; 41
      006FE6 1E                    1961 	.db #0x1e	; 30
      006FE7 00                    1962 	.db #0x00	; 0
      006FE8 36                    1963 	.db #0x36	; 54	'6'
      006FE9 36                    1964 	.db #0x36	; 54	'6'
      006FEA 00                    1965 	.db #0x00	; 0
      006FEB 00                    1966 	.db #0x00	; 0
      006FEC 00                    1967 	.db #0x00	; 0
      006FED 56                    1968 	.db #0x56	; 86	'V'
      006FEE 36                    1969 	.db #0x36	; 54	'6'
      006FEF 00                    1970 	.db #0x00	; 0
      006FF0 00                    1971 	.db #0x00	; 0
      006FF1 08                    1972 	.db #0x08	; 8
      006FF2 14                    1973 	.db #0x14	; 20
      006FF3 22                    1974 	.db #0x22	; 34
      006FF4 41                    1975 	.db #0x41	; 65	'A'
      006FF5 00                    1976 	.db #0x00	; 0
      006FF6 14                    1977 	.db #0x14	; 20
      006FF7 14                    1978 	.db #0x14	; 20
      006FF8 14                    1979 	.db #0x14	; 20
      006FF9 14                    1980 	.db #0x14	; 20
      006FFA 14                    1981 	.db #0x14	; 20
      006FFB 00                    1982 	.db #0x00	; 0
      006FFC 41                    1983 	.db #0x41	; 65	'A'
      006FFD 22                    1984 	.db #0x22	; 34
      006FFE 14                    1985 	.db #0x14	; 20
      006FFF 08                    1986 	.db #0x08	; 8
      007000 02                    1987 	.db #0x02	; 2
      007001 01                    1988 	.db #0x01	; 1
      007002 51                    1989 	.db #0x51	; 81	'Q'
      007003 09                    1990 	.db #0x09	; 9
      007004 06                    1991 	.db #0x06	; 6
      007005 32                    1992 	.db #0x32	; 50	'2'
      007006 49                    1993 	.db #0x49	; 73	'I'
      007007 79                    1994 	.db #0x79	; 121	'y'
      007008 41                    1995 	.db #0x41	; 65	'A'
      007009 3E                    1996 	.db #0x3e	; 62
      00700A 7E                    1997 	.db #0x7e	; 126
      00700B 11                    1998 	.db #0x11	; 17
      00700C 11                    1999 	.db #0x11	; 17
      00700D 11                    2000 	.db #0x11	; 17
      00700E 7E                    2001 	.db #0x7e	; 126
      00700F 7F                    2002 	.db #0x7f	; 127
      007010 49                    2003 	.db #0x49	; 73	'I'
      007011 49                    2004 	.db #0x49	; 73	'I'
      007012 49                    2005 	.db #0x49	; 73	'I'
      007013 36                    2006 	.db #0x36	; 54	'6'
      007014 3E                    2007 	.db #0x3e	; 62
      007015 41                    2008 	.db #0x41	; 65	'A'
      007016 41                    2009 	.db #0x41	; 65	'A'
      007017 41                    2010 	.db #0x41	; 65	'A'
      007018 22                    2011 	.db #0x22	; 34
      007019 7F                    2012 	.db #0x7f	; 127
      00701A 41                    2013 	.db #0x41	; 65	'A'
      00701B 41                    2014 	.db #0x41	; 65	'A'
      00701C 22                    2015 	.db #0x22	; 34
      00701D 1C                    2016 	.db #0x1c	; 28
      00701E 7F                    2017 	.db #0x7f	; 127
      00701F 49                    2018 	.db #0x49	; 73	'I'
      007020 49                    2019 	.db #0x49	; 73	'I'
      007021 49                    2020 	.db #0x49	; 73	'I'
      007022 41                    2021 	.db #0x41	; 65	'A'
      007023 7F                    2022 	.db #0x7f	; 127
      007024 09                    2023 	.db #0x09	; 9
      007025 09                    2024 	.db #0x09	; 9
      007026 09                    2025 	.db #0x09	; 9
      007027 01                    2026 	.db #0x01	; 1
      007028 3E                    2027 	.db #0x3e	; 62
      007029 41                    2028 	.db #0x41	; 65	'A'
      00702A 49                    2029 	.db #0x49	; 73	'I'
      00702B 49                    2030 	.db #0x49	; 73	'I'
      00702C 7A                    2031 	.db #0x7a	; 122	'z'
      00702D 7F                    2032 	.db #0x7f	; 127
      00702E 08                    2033 	.db #0x08	; 8
      00702F 08                    2034 	.db #0x08	; 8
      007030 08                    2035 	.db #0x08	; 8
      007031 7F                    2036 	.db #0x7f	; 127
      007032 00                    2037 	.db #0x00	; 0
      007033 41                    2038 	.db #0x41	; 65	'A'
      007034 7F                    2039 	.db #0x7f	; 127
      007035 41                    2040 	.db #0x41	; 65	'A'
      007036 00                    2041 	.db #0x00	; 0
      007037 20                    2042 	.db #0x20	; 32
      007038 40                    2043 	.db #0x40	; 64
      007039 41                    2044 	.db #0x41	; 65	'A'
      00703A 3F                    2045 	.db #0x3f	; 63
      00703B 01                    2046 	.db #0x01	; 1
      00703C 7F                    2047 	.db #0x7f	; 127
      00703D 08                    2048 	.db #0x08	; 8
      00703E 14                    2049 	.db #0x14	; 20
      00703F 22                    2050 	.db #0x22	; 34
      007040 41                    2051 	.db #0x41	; 65	'A'
      007041 7F                    2052 	.db #0x7f	; 127
      007042 40                    2053 	.db #0x40	; 64
      007043 40                    2054 	.db #0x40	; 64
      007044 40                    2055 	.db #0x40	; 64
      007045 40                    2056 	.db #0x40	; 64
      007046 7F                    2057 	.db #0x7f	; 127
      007047 02                    2058 	.db #0x02	; 2
      007048 0C                    2059 	.db #0x0c	; 12
      007049 02                    2060 	.db #0x02	; 2
      00704A 7F                    2061 	.db #0x7f	; 127
      00704B 7F                    2062 	.db #0x7f	; 127
      00704C 04                    2063 	.db #0x04	; 4
      00704D 08                    2064 	.db #0x08	; 8
      00704E 10                    2065 	.db #0x10	; 16
      00704F 7F                    2066 	.db #0x7f	; 127
      007050 3E                    2067 	.db #0x3e	; 62
      007051 41                    2068 	.db #0x41	; 65	'A'
      007052 41                    2069 	.db #0x41	; 65	'A'
      007053 41                    2070 	.db #0x41	; 65	'A'
      007054 3E                    2071 	.db #0x3e	; 62
      007055 7F                    2072 	.db #0x7f	; 127
      007056 09                    2073 	.db #0x09	; 9
      007057 09                    2074 	.db #0x09	; 9
      007058 09                    2075 	.db #0x09	; 9
      007059 06                    2076 	.db #0x06	; 6
      00705A 3E                    2077 	.db #0x3e	; 62
      00705B 41                    2078 	.db #0x41	; 65	'A'
      00705C 51                    2079 	.db #0x51	; 81	'Q'
      00705D 21                    2080 	.db #0x21	; 33
      00705E 5E                    2081 	.db #0x5e	; 94
      00705F 7F                    2082 	.db #0x7f	; 127
      007060 09                    2083 	.db #0x09	; 9
      007061 19                    2084 	.db #0x19	; 25
      007062 29                    2085 	.db #0x29	; 41
      007063 46                    2086 	.db #0x46	; 70	'F'
      007064 46                    2087 	.db #0x46	; 70	'F'
      007065 49                    2088 	.db #0x49	; 73	'I'
      007066 49                    2089 	.db #0x49	; 73	'I'
      007067 49                    2090 	.db #0x49	; 73	'I'
      007068 31                    2091 	.db #0x31	; 49	'1'
      007069 01                    2092 	.db #0x01	; 1
      00706A 01                    2093 	.db #0x01	; 1
      00706B 7F                    2094 	.db #0x7f	; 127
      00706C 01                    2095 	.db #0x01	; 1
      00706D 01                    2096 	.db #0x01	; 1
      00706E 3F                    2097 	.db #0x3f	; 63
      00706F 40                    2098 	.db #0x40	; 64
      007070 40                    2099 	.db #0x40	; 64
      007071 40                    2100 	.db #0x40	; 64
      007072 3F                    2101 	.db #0x3f	; 63
      007073 1F                    2102 	.db #0x1f	; 31
      007074 20                    2103 	.db #0x20	; 32
      007075 40                    2104 	.db #0x40	; 64
      007076 20                    2105 	.db #0x20	; 32
      007077 1F                    2106 	.db #0x1f	; 31
      007078 3F                    2107 	.db #0x3f	; 63
      007079 40                    2108 	.db #0x40	; 64
      00707A 38                    2109 	.db #0x38	; 56	'8'
      00707B 40                    2110 	.db #0x40	; 64
      00707C 3F                    2111 	.db #0x3f	; 63
      00707D 63                    2112 	.db #0x63	; 99	'c'
      00707E 14                    2113 	.db #0x14	; 20
      00707F 08                    2114 	.db #0x08	; 8
      007080 14                    2115 	.db #0x14	; 20
      007081 63                    2116 	.db #0x63	; 99	'c'
      007082 07                    2117 	.db #0x07	; 7
      007083 08                    2118 	.db #0x08	; 8
      007084 70                    2119 	.db #0x70	; 112	'p'
      007085 08                    2120 	.db #0x08	; 8
      007086 07                    2121 	.db #0x07	; 7
      007087 61                    2122 	.db #0x61	; 97	'a'
      007088 51                    2123 	.db #0x51	; 81	'Q'
      007089 49                    2124 	.db #0x49	; 73	'I'
      00708A 45                    2125 	.db #0x45	; 69	'E'
      00708B 43                    2126 	.db #0x43	; 67	'C'
      00708C 00                    2127 	.db #0x00	; 0
      00708D 7F                    2128 	.db #0x7f	; 127
      00708E 41                    2129 	.db #0x41	; 65	'A'
      00708F 41                    2130 	.db #0x41	; 65	'A'
      007090 00                    2131 	.db #0x00	; 0
      007091 02                    2132 	.db #0x02	; 2
      007092 04                    2133 	.db #0x04	; 4
      007093 08                    2134 	.db #0x08	; 8
      007094 10                    2135 	.db #0x10	; 16
      007095 20                    2136 	.db #0x20	; 32
      007096 00                    2137 	.db #0x00	; 0
      007097 41                    2138 	.db #0x41	; 65	'A'
      007098 41                    2139 	.db #0x41	; 65	'A'
      007099 7F                    2140 	.db #0x7f	; 127
      00709A 00                    2141 	.db #0x00	; 0
      00709B 04                    2142 	.db #0x04	; 4
      00709C 02                    2143 	.db #0x02	; 2
      00709D 01                    2144 	.db #0x01	; 1
      00709E 02                    2145 	.db #0x02	; 2
      00709F 04                    2146 	.db #0x04	; 4
      0070A0 40                    2147 	.db #0x40	; 64
      0070A1 40                    2148 	.db #0x40	; 64
      0070A2 40                    2149 	.db #0x40	; 64
      0070A3 40                    2150 	.db #0x40	; 64
      0070A4 40                    2151 	.db #0x40	; 64
      0070A5 00                    2152 	.db #0x00	; 0
      0070A6 01                    2153 	.db #0x01	; 1
      0070A7 02                    2154 	.db #0x02	; 2
      0070A8 04                    2155 	.db #0x04	; 4
      0070A9 00                    2156 	.db #0x00	; 0
      0070AA 20                    2157 	.db #0x20	; 32
      0070AB 54                    2158 	.db #0x54	; 84	'T'
      0070AC 54                    2159 	.db #0x54	; 84	'T'
      0070AD 54                    2160 	.db #0x54	; 84	'T'
      0070AE 78                    2161 	.db #0x78	; 120	'x'
      0070AF 7F                    2162 	.db #0x7f	; 127
      0070B0 48                    2163 	.db #0x48	; 72	'H'
      0070B1 44                    2164 	.db #0x44	; 68	'D'
      0070B2 44                    2165 	.db #0x44	; 68	'D'
      0070B3 38                    2166 	.db #0x38	; 56	'8'
      0070B4 38                    2167 	.db #0x38	; 56	'8'
      0070B5 44                    2168 	.db #0x44	; 68	'D'
      0070B6 44                    2169 	.db #0x44	; 68	'D'
      0070B7 44                    2170 	.db #0x44	; 68	'D'
      0070B8 20                    2171 	.db #0x20	; 32
      0070B9 38                    2172 	.db #0x38	; 56	'8'
      0070BA 44                    2173 	.db #0x44	; 68	'D'
      0070BB 44                    2174 	.db #0x44	; 68	'D'
      0070BC 48                    2175 	.db #0x48	; 72	'H'
      0070BD 7F                    2176 	.db #0x7f	; 127
      0070BE 38                    2177 	.db #0x38	; 56	'8'
      0070BF 54                    2178 	.db #0x54	; 84	'T'
      0070C0 54                    2179 	.db #0x54	; 84	'T'
      0070C1 54                    2180 	.db #0x54	; 84	'T'
      0070C2 18                    2181 	.db #0x18	; 24
      0070C3 08                    2182 	.db #0x08	; 8
      0070C4 7E                    2183 	.db #0x7e	; 126
      0070C5 09                    2184 	.db #0x09	; 9
      0070C6 01                    2185 	.db #0x01	; 1
      0070C7 02                    2186 	.db #0x02	; 2
      0070C8 0C                    2187 	.db #0x0c	; 12
      0070C9 52                    2188 	.db #0x52	; 82	'R'
      0070CA 52                    2189 	.db #0x52	; 82	'R'
      0070CB 52                    2190 	.db #0x52	; 82	'R'
      0070CC 3E                    2191 	.db #0x3e	; 62
      0070CD 7F                    2192 	.db #0x7f	; 127
      0070CE 08                    2193 	.db #0x08	; 8
      0070CF 04                    2194 	.db #0x04	; 4
      0070D0 04                    2195 	.db #0x04	; 4
      0070D1 78                    2196 	.db #0x78	; 120	'x'
      0070D2 00                    2197 	.db #0x00	; 0
      0070D3 44                    2198 	.db #0x44	; 68	'D'
      0070D4 7D                    2199 	.db #0x7d	; 125
      0070D5 40                    2200 	.db #0x40	; 64
      0070D6 00                    2201 	.db #0x00	; 0
      0070D7 20                    2202 	.db #0x20	; 32
      0070D8 40                    2203 	.db #0x40	; 64
      0070D9 44                    2204 	.db #0x44	; 68	'D'
      0070DA 3D                    2205 	.db #0x3d	; 61
      0070DB 00                    2206 	.db #0x00	; 0
      0070DC 7F                    2207 	.db #0x7f	; 127
      0070DD 10                    2208 	.db #0x10	; 16
      0070DE 28                    2209 	.db #0x28	; 40
      0070DF 44                    2210 	.db #0x44	; 68	'D'
      0070E0 00                    2211 	.db #0x00	; 0
      0070E1 00                    2212 	.db #0x00	; 0
      0070E2 41                    2213 	.db #0x41	; 65	'A'
      0070E3 7F                    2214 	.db #0x7f	; 127
      0070E4 40                    2215 	.db #0x40	; 64
      0070E5 00                    2216 	.db #0x00	; 0
      0070E6 7C                    2217 	.db #0x7c	; 124
      0070E7 04                    2218 	.db #0x04	; 4
      0070E8 18                    2219 	.db #0x18	; 24
      0070E9 04                    2220 	.db #0x04	; 4
      0070EA 78                    2221 	.db #0x78	; 120	'x'
      0070EB 7C                    2222 	.db #0x7c	; 124
      0070EC 08                    2223 	.db #0x08	; 8
      0070ED 04                    2224 	.db #0x04	; 4
      0070EE 04                    2225 	.db #0x04	; 4
      0070EF 78                    2226 	.db #0x78	; 120	'x'
      0070F0 38                    2227 	.db #0x38	; 56	'8'
      0070F1 44                    2228 	.db #0x44	; 68	'D'
      0070F2 44                    2229 	.db #0x44	; 68	'D'
      0070F3 44                    2230 	.db #0x44	; 68	'D'
      0070F4 38                    2231 	.db #0x38	; 56	'8'
      0070F5 7C                    2232 	.db #0x7c	; 124
      0070F6 14                    2233 	.db #0x14	; 20
      0070F7 14                    2234 	.db #0x14	; 20
      0070F8 14                    2235 	.db #0x14	; 20
      0070F9 08                    2236 	.db #0x08	; 8
      0070FA 08                    2237 	.db #0x08	; 8
      0070FB 14                    2238 	.db #0x14	; 20
      0070FC 14                    2239 	.db #0x14	; 20
      0070FD 14                    2240 	.db #0x14	; 20
      0070FE 7C                    2241 	.db #0x7c	; 124
      0070FF 7C                    2242 	.db #0x7c	; 124
      007100 08                    2243 	.db #0x08	; 8
      007101 04                    2244 	.db #0x04	; 4
      007102 04                    2245 	.db #0x04	; 4
      007103 08                    2246 	.db #0x08	; 8
      007104 48                    2247 	.db #0x48	; 72	'H'
      007105 54                    2248 	.db #0x54	; 84	'T'
      007106 54                    2249 	.db #0x54	; 84	'T'
      007107 54                    2250 	.db #0x54	; 84	'T'
      007108 20                    2251 	.db #0x20	; 32
      007109 04                    2252 	.db #0x04	; 4
      00710A 3F                    2253 	.db #0x3f	; 63
      00710B 44                    2254 	.db #0x44	; 68	'D'
      00710C 40                    2255 	.db #0x40	; 64
      00710D 20                    2256 	.db #0x20	; 32
      00710E 3C                    2257 	.db #0x3c	; 60
      00710F 40                    2258 	.db #0x40	; 64
      007110 40                    2259 	.db #0x40	; 64
      007111 20                    2260 	.db #0x20	; 32
      007112 7C                    2261 	.db #0x7c	; 124
      007113 1C                    2262 	.db #0x1c	; 28
      007114 20                    2263 	.db #0x20	; 32
      007115 40                    2264 	.db #0x40	; 64
      007116 20                    2265 	.db #0x20	; 32
      007117 1C                    2266 	.db #0x1c	; 28
      007118 3C                    2267 	.db #0x3c	; 60
      007119 40                    2268 	.db #0x40	; 64
      00711A 30                    2269 	.db #0x30	; 48	'0'
      00711B 40                    2270 	.db #0x40	; 64
      00711C 3C                    2271 	.db #0x3c	; 60
      00711D 44                    2272 	.db #0x44	; 68	'D'
      00711E 28                    2273 	.db #0x28	; 40
      00711F 10                    2274 	.db #0x10	; 16
      007120 28                    2275 	.db #0x28	; 40
      007121 44                    2276 	.db #0x44	; 68	'D'
      007122 0C                    2277 	.db #0x0c	; 12
      007123 50                    2278 	.db #0x50	; 80	'P'
      007124 50                    2279 	.db #0x50	; 80	'P'
      007125 50                    2280 	.db #0x50	; 80	'P'
      007126 3C                    2281 	.db #0x3c	; 60
      007127 44                    2282 	.db #0x44	; 68	'D'
      007128 64                    2283 	.db #0x64	; 100	'd'
      007129 54                    2284 	.db #0x54	; 84	'T'
      00712A 4C                    2285 	.db #0x4c	; 76	'L'
      00712B 44                    2286 	.db #0x44	; 68	'D'
      00712C 00                    2287 	.db #0x00	; 0
      00712D 08                    2288 	.db #0x08	; 8
      00712E 36                    2289 	.db #0x36	; 54	'6'
      00712F 41                    2290 	.db #0x41	; 65	'A'
      007130 00                    2291 	.db #0x00	; 0
      007131 00                    2292 	.db #0x00	; 0
      007132 00                    2293 	.db #0x00	; 0
      007133 7F                    2294 	.db #0x7f	; 127
      007134 00                    2295 	.db #0x00	; 0
      007135 00                    2296 	.db #0x00	; 0
      007136 00                    2297 	.db #0x00	; 0
      007137 41                    2298 	.db #0x41	; 65	'A'
      007138 36                    2299 	.db #0x36	; 54	'6'
      007139 08                    2300 	.db #0x08	; 8
      00713A 00                    2301 	.db #0x00	; 0
      00713B 10                    2302 	.db #0x10	; 16
      00713C 08                    2303 	.db #0x08	; 8
      00713D 08                    2304 	.db #0x08	; 8
      00713E 10                    2305 	.db #0x10	; 16
      00713F 08                    2306 	.db #0x08	; 8
      007140 00                    2307 	.db #0x00	; 0
      007141 00                    2308 	.db #0x00	; 0
      007142 00                    2309 	.db #0x00	; 0
      007143 00                    2310 	.db #0x00	; 0
      007144 00                    2311 	.db #0x00	; 0
      007145                       2312 _MICROSTEP_TO_MS1_VALUE:
      007145 00                    2313 	.db #0x00	; 0
      007146 01                    2314 	.db #0x01	; 1
      007147 00                    2315 	.db #0x00	; 0
      007148 01                    2316 	.db #0x01	; 1
      007149                       2317 _MICROSTEP_TO_MS2_VALUE:
      007149 00                    2318 	.db #0x00	; 0
      00714A 00                    2319 	.db #0x00	; 0
      00714B 01                    2320 	.db #0x01	; 1
      00714C 01                    2321 	.db #0x01	; 1
      00714D                       2322 _MICROSTEP_TO_1R_STEP_NUM:
      00714D 80 0C                 2323 	.byte #0x80, #0x0c	; 3200
      00714F 00 64                 2324 	.byte #0x00, #0x64	; 25600
      007151 00 32                 2325 	.byte #0x00, #0x32	; 12800
      007153 00 19                 2326 	.byte #0x00, #0x19	; 6400
                                   2327 	.area XINIT   (CODE)
      007BAA                       2328 __xinit__stepper_enable_pin:
      007BAA 02                    2329 	.db #0x02	; 2
      007BAB 04                    2330 	.db #0x04	; 4
      007BAC 01                    2331 	.db #0x01	; 1
      007BAD 01                    2332 	.db #0x01	; 1
      007BAE 00                    2333 	.db #0x00	; 0
      007BAF 00                    2334 	.db #0x00	; 0
      007BB0 03                    2335 	.db #0x03	; 3
      007BB1 01                    2336 	.db #0x01	; 1
      007BB2 00                    2337 	.db #0x00	; 0
      007BB3 00                    2338 	.db #0x00	; 0
      007BB4 00                    2339 	.db #0x00	; 0
      007BB5 00                    2340 	.db #0x00	; 0
      007BB6 00                    2341 	.db #0x00	; 0
      007BB7                       2342 __xinit__stepper_step_pin:
      007BB7 02                    2343 	.db #0x02	; 2
      007BB8 01                    2344 	.db #0x01	; 1
      007BB9 01                    2345 	.db #0x01	; 1
      007BBA 01                    2346 	.db #0x01	; 1
      007BBB 00                    2347 	.db #0x00	; 0
      007BBC 00                    2348 	.db #0x00	; 0
      007BBD 03                    2349 	.db #0x03	; 3
      007BBE 01                    2350 	.db #0x01	; 1
      007BBF 00                    2351 	.db #0x00	; 0
      007BC0 00                    2352 	.db #0x00	; 0
      007BC1 00                    2353 	.db #0x00	; 0
      007BC2 00                    2354 	.db #0x00	; 0
      007BC3 00                    2355 	.db #0x00	; 0
      007BC4                       2356 __xinit__stepper_dir_pin:
      007BC4 02                    2357 	.db #0x02	; 2
      007BC5 00                    2358 	.db #0x00	; 0
      007BC6 01                    2359 	.db #0x01	; 1
      007BC7 01                    2360 	.db #0x01	; 1
      007BC8 00                    2361 	.db #0x00	; 0
      007BC9 00                    2362 	.db #0x00	; 0
      007BCA 03                    2363 	.db #0x03	; 3
      007BCB 01                    2364 	.db #0x01	; 1
      007BCC 00                    2365 	.db #0x00	; 0
      007BCD 00                    2366 	.db #0x00	; 0
      007BCE 00                    2367 	.db #0x00	; 0
      007BCF 00                    2368 	.db #0x00	; 0
      007BD0 00                    2369 	.db #0x00	; 0
      007BD1                       2370 __xinit__stepper_ms1_pin:
      007BD1 02                    2371 	.db #0x02	; 2
      007BD2 03                    2372 	.db #0x03	; 3
      007BD3 01                    2373 	.db #0x01	; 1
      007BD4 01                    2374 	.db #0x01	; 1
      007BD5 00                    2375 	.db #0x00	; 0
      007BD6 00                    2376 	.db #0x00	; 0
      007BD7 03                    2377 	.db #0x03	; 3
      007BD8 01                    2378 	.db #0x01	; 1
      007BD9 00                    2379 	.db #0x00	; 0
      007BDA 00                    2380 	.db #0x00	; 0
      007BDB 00                    2381 	.db #0x00	; 0
      007BDC 00                    2382 	.db #0x00	; 0
      007BDD 00                    2383 	.db #0x00	; 0
      007BDE                       2384 __xinit__stepper_ms2_pin:
      007BDE 02                    2385 	.db #0x02	; 2
      007BDF 02                    2386 	.db #0x02	; 2
      007BE0 01                    2387 	.db #0x01	; 1
      007BE1 01                    2388 	.db #0x01	; 1
      007BE2 00                    2389 	.db #0x00	; 0
      007BE3 00                    2390 	.db #0x00	; 0
      007BE4 03                    2391 	.db #0x03	; 3
      007BE5 01                    2392 	.db #0x01	; 1
      007BE6 00                    2393 	.db #0x00	; 0
      007BE7 00                    2394 	.db #0x00	; 0
      007BE8 00                    2395 	.db #0x00	; 0
      007BE9 00                    2396 	.db #0x00	; 0
      007BEA 00                    2397 	.db #0x00	; 0
      007BEB                       2398 __xinit__step_counter:
      007BEB 00 00 00 00           2399 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      007BEF                       2400 __xinit__frequency:
      007BEF 32 00 00 00           2401 	.byte #0x32, #0x00, #0x00, #0x00	; 50
                                   2402 	.area CABS    (ABS,CODE)
