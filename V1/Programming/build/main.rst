                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _application_process_current_page
                                     13 	.globl _display_welcome_page
                                     14 	.globl _SSD1306_Init
                                     15 	.globl _get_stepper_state
                                     16 	.globl _stepper_motor_init
                                     17 	.globl _encoder_process
                                     18 	.globl _encoder_init
                                     19 	.globl _switch_init
                                     20 	.globl _buttons_process
                                     21 	.globl _buttons_init
                                     22 	.globl _global_timer_init
                                     23 	.globl _serialConsoleInitialise
                                     24 	.globl _delay1ms
                                     25 	.globl _printf
                                     26 	.globl _S1SM0_FE
                                     27 	.globl _T1IE
                                     28 	.globl _T0IE
                                     29 	.globl _T1RUN
                                     30 	.globl _T0RUN
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _EA
                                     40 	.globl _INT1IE
                                     41 	.globl _INT0IE
                                     42 	.globl _INT1TR
                                     43 	.globl _INT0TR
                                     44 	.globl _P5_5
                                     45 	.globl _P5_4
                                     46 	.globl _P5_3
                                     47 	.globl _P5_2
                                     48 	.globl _P5_1
                                     49 	.globl _P5_0
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _P2_7
                                     59 	.globl _P2_6
                                     60 	.globl _P2_5
                                     61 	.globl _P2_4
                                     62 	.globl _P2_3
                                     63 	.globl _P2_2
                                     64 	.globl _P2_1
                                     65 	.globl _P2_0
                                     66 	.globl _P1_7
                                     67 	.globl _P1_6
                                     68 	.globl _P1_5
                                     69 	.globl _P1_4
                                     70 	.globl _P1_3
                                     71 	.globl _P1_2
                                     72 	.globl _P1_1
                                     73 	.globl _P1_0
                                     74 	.globl _USBADR
                                     75 	.globl _USBCON
                                     76 	.globl _USBDAT
                                     77 	.globl _USBCLK
                                     78 	.globl _S4BUF
                                     79 	.globl _S4CON
                                     80 	.globl _S3BUF
                                     81 	.globl _S3CON
                                     82 	.globl _S2BUF
                                     83 	.globl _S2CON
                                     84 	.globl _S1BUF
                                     85 	.globl _S1CON
                                     86 	.globl _SADEN
                                     87 	.globl _SADDR
                                     88 	.globl _AUXINTIF
                                     89 	.globl _T3
                                     90 	.globl _T3L
                                     91 	.globl _T3H
                                     92 	.globl _T4
                                     93 	.globl _T4L
                                     94 	.globl _T4H
                                     95 	.globl _T4T3M
                                     96 	.globl _WDT_CONTR
                                     97 	.globl _AUXR
                                     98 	.globl _T2
                                     99 	.globl _T2H
                                    100 	.globl _T2L
                                    101 	.globl _T1
                                    102 	.globl _T1H
                                    103 	.globl _T1L
                                    104 	.globl _T0
                                    105 	.globl _T0H
                                    106 	.globl _T0L
                                    107 	.globl _TMOD
                                    108 	.globl _TCON
                                    109 	.globl _IRTRIM
                                    110 	.globl _LIRTRIM
                                    111 	.globl _IRCBAND
                                    112 	.globl _SPDAT
                                    113 	.globl _SPCTL
                                    114 	.globl _SPSTAT
                                    115 	.globl _WKTC
                                    116 	.globl _WKTCH
                                    117 	.globl _WKTCL
                                    118 	.globl _BUS_SPEED
                                    119 	.globl _P_SW2
                                    120 	.globl _P_SW1
                                    121 	.globl _RSTCFG
                                    122 	.globl _PCON
                                    123 	.globl _B
                                    124 	.globl _ACC
                                    125 	.globl _PSW
                                    126 	.globl _SP
                                    127 	.globl _IP3H
                                    128 	.globl _IP3L
                                    129 	.globl _IP2H
                                    130 	.globl _IP2L
                                    131 	.globl _IE2
                                    132 	.globl _IP1H
                                    133 	.globl _IP1L
                                    134 	.globl _IE1
                                    135 	.globl _INT_CLKO
                                    136 	.globl _IAP_TPS
                                    137 	.globl _IAP_CONTR
                                    138 	.globl _IAP_TRIG
                                    139 	.globl _IAP_CMD
                                    140 	.globl _IAP_ADDR
                                    141 	.globl _IAP_ADDRL
                                    142 	.globl _IAP_ADDRH
                                    143 	.globl _IAP_DATA
                                    144 	.globl _P5M0
                                    145 	.globl _P5M1
                                    146 	.globl _P5
                                    147 	.globl _P3M0
                                    148 	.globl _P3M1
                                    149 	.globl _P3
                                    150 	.globl _P2M0
                                    151 	.globl _P2M1
                                    152 	.globl _P2
                                    153 	.globl _P1M0
                                    154 	.globl _P1M1
                                    155 	.globl _P1
                                    156 	.globl _TA
                                    157 	.globl _DPH1
                                    158 	.globl _DPL1
                                    159 	.globl _DPS
                                    160 	.globl _DP
                                    161 	.globl _DPH
                                    162 	.globl _DPL
                                    163 	.globl _CMPCR2
                                    164 	.globl _CMPCR1
                                    165 	.globl _DMA_ADC_AMT
                                    166 	.globl _ADCCFG
                                    167 	.globl _ADC_RES
                                    168 	.globl _ADC_RESL
                                    169 	.globl _ADC_RESH
                                    170 	.globl _ADC_CONTR
                                    171 	.globl _DMA_UR4R_TXAL
                                    172 	.globl _DMA_UR4R_TXAH
                                    173 	.globl _DMA_UR4R_DONE
                                    174 	.globl _DMA_UR4R_AMT
                                    175 	.globl _DMA_UR4R_STA
                                    176 	.globl _DMA_UR4R_CR
                                    177 	.globl _DMA_UR4R_CFG
                                    178 	.globl _DMA_UR4T_TXAL
                                    179 	.globl _DMA_UR4T_TXAH
                                    180 	.globl _DMA_UR4T_DONE
                                    181 	.globl _DMA_UR4T_AMT
                                    182 	.globl _DMA_UR4T_STA
                                    183 	.globl _DMA_UR4T_CR
                                    184 	.globl _DMA_UR4T_CFG
                                    185 	.globl _DMA_UR3R_TXAL
                                    186 	.globl _DMA_UR3R_TXAH
                                    187 	.globl _DMA_UR3R_DONE
                                    188 	.globl _DMA_UR3R_AMT
                                    189 	.globl _DMA_UR3R_STA
                                    190 	.globl _DMA_UR3R_CR
                                    191 	.globl _DMA_UR3R_CFG
                                    192 	.globl _DMA_UR3T_TXAL
                                    193 	.globl _DMA_UR3T_TXAH
                                    194 	.globl _DMA_UR3T_DONE
                                    195 	.globl _DMA_UR3T_AMT
                                    196 	.globl _DMA_UR3T_STA
                                    197 	.globl _DMA_UR3T_CR
                                    198 	.globl _DMA_UR3T_CFG
                                    199 	.globl _DMA_UR2R_TXAL
                                    200 	.globl _DMA_UR2R_TXAH
                                    201 	.globl _DMA_UR2R_DONE
                                    202 	.globl _DMA_UR2R_AMT
                                    203 	.globl _DMA_UR2R_STA
                                    204 	.globl _DMA_UR2R_CR
                                    205 	.globl _DMA_UR2R_CFG
                                    206 	.globl _DMA_UR2T_TXAL
                                    207 	.globl _DMA_UR2T_TXAH
                                    208 	.globl _DMA_UR2T_DONE
                                    209 	.globl _DMA_UR2T_AMT
                                    210 	.globl _DMA_UR2T_STA
                                    211 	.globl _DMA_UR2T_CR
                                    212 	.globl _DMA_UR2T_CFG
                                    213 	.globl _DMA_UR1R_TXAL
                                    214 	.globl _DMA_UR1R_TXAH
                                    215 	.globl _DMA_UR1R_DONE
                                    216 	.globl _DMA_UR1R_AMT
                                    217 	.globl _DMA_UR1R_STA
                                    218 	.globl _DMA_UR1R_CR
                                    219 	.globl _DMA_UR1R_CFG
                                    220 	.globl _DMA_UR1T_TXAL
                                    221 	.globl _DMA_UR1T_TXAH
                                    222 	.globl _DMA_UR1T_DONE
                                    223 	.globl _DMA_URTX_AMT
                                    224 	.globl _DMA_UR1T_STA
                                    225 	.globl _DMA_UR1T_CR
                                    226 	.globl _DMA_UR1T_CFG
                                    227 	.globl _TM4PS
                                    228 	.globl _TM3PS
                                    229 	.globl _TM2PS
                                    230 	.globl _IRC48MCR
                                    231 	.globl _IRCDB
                                    232 	.globl _MCLKOCR
                                    233 	.globl _CKSEL
                                    234 	.globl _IRC32KCR
                                    235 	.globl _XOSCCR
                                    236 	.globl _HIRCCR
                                    237 	.globl _CLKDIV
                                    238 	.globl _DMA_SPI_CFG2
                                    239 	.globl _DMA_SPI_RXAL
                                    240 	.globl _DMA_SPI_RXAH
                                    241 	.globl _DMA_SPI_TXAL
                                    242 	.globl _DMA_SPI_TXAH
                                    243 	.globl _DMA_SPI_DONE
                                    244 	.globl _DMA_SPI_AMT
                                    245 	.globl _DMA_SPI_STA
                                    246 	.globl _DMA_SPI_CR
                                    247 	.globl _DMA_SPI_CFG
                                    248 	.globl _SSEC
                                    249 	.globl _SEC
                                    250 	.globl _MIN
                                    251 	.globl _HOUR
                                    252 	.globl _DAY
                                    253 	.globl _MONTH
                                    254 	.globl _YEAR
                                    255 	.globl _INISSEC
                                    256 	.globl _INISEC
                                    257 	.globl _INIMIN
                                    258 	.globl _INIHOUR
                                    259 	.globl _INIDAY
                                    260 	.globl _INIMONTH
                                    261 	.globl _INIYEAR
                                    262 	.globl _ALASSEC
                                    263 	.globl _ALASEC
                                    264 	.globl _ALAMIN
                                    265 	.globl _ALAHOUR
                                    266 	.globl _RTCIF
                                    267 	.globl _RTCIEN
                                    268 	.globl _RTCCFG
                                    269 	.globl _RTCCR
                                    270 	.globl _PWMB_OISR
                                    271 	.globl _PWMB_DTR
                                    272 	.globl _PWMB_BKR
                                    273 	.globl _PWMB_CCR4L
                                    274 	.globl _PWMB_CCR4H
                                    275 	.globl _PWMB_CCR3L
                                    276 	.globl _PWMB_CCR3H
                                    277 	.globl _PWMB_CCR2L
                                    278 	.globl _PWMB_CCR2H
                                    279 	.globl _PWMB_CCR1L
                                    280 	.globl _PWMB_CCR1H
                                    281 	.globl _PWMB_RCR
                                    282 	.globl _PWMB_ARRL
                                    283 	.globl _PWMB_ARRH
                                    284 	.globl _PWMB_PSCRL
                                    285 	.globl _PWMB_PSCRH
                                    286 	.globl _PWMB_CNTRL
                                    287 	.globl _PWMB_CNTRH
                                    288 	.globl _PWMB_CCER2
                                    289 	.globl _PWMB_CCER1
                                    290 	.globl _PWMB_CCMR4
                                    291 	.globl _PWMB_CCMR3
                                    292 	.globl _PWMB_CCMR2
                                    293 	.globl _PWMB_CCMR1
                                    294 	.globl _PWMB_EGR
                                    295 	.globl _PWMB_SR2
                                    296 	.globl _PWMB_SR1
                                    297 	.globl _PWMB_IER
                                    298 	.globl _PWMB_ETR
                                    299 	.globl _PWMB_SMCR
                                    300 	.globl _PWMB_CR2
                                    301 	.globl _PWMB_CR1
                                    302 	.globl _PWMA_OISR
                                    303 	.globl _PWMA_DTR
                                    304 	.globl _PWMA_BKR
                                    305 	.globl _PWMA_CCR4L
                                    306 	.globl _PWMA_CCR4H
                                    307 	.globl _PWMA_CCR3L
                                    308 	.globl _PWMA_CCR3H
                                    309 	.globl _PWMA_CCR2L
                                    310 	.globl _PWMA_CCR2H
                                    311 	.globl _PWMA_CCR1L
                                    312 	.globl _PWMA_CCR1H
                                    313 	.globl _PWMA_RCR
                                    314 	.globl _PWMA_ARRL
                                    315 	.globl _PWMA_ARRH
                                    316 	.globl _PWMA_PSCRL
                                    317 	.globl _PWMA_PSCRH
                                    318 	.globl _PWMA_CNTRL
                                    319 	.globl _PWMA_CNTRH
                                    320 	.globl _PWMA_CCER2
                                    321 	.globl _PWMA_CCER1
                                    322 	.globl _PWMA_CCMR4
                                    323 	.globl _PWMA_CCMR3
                                    324 	.globl _PWMA_CCMR2
                                    325 	.globl _PWMA_CCMR1
                                    326 	.globl _PWMA_EGR
                                    327 	.globl _PWMA_SR2
                                    328 	.globl _PWMA_SR1
                                    329 	.globl _PWMA_IER
                                    330 	.globl _PWMA_ETR
                                    331 	.globl _PWMA_SMCR
                                    332 	.globl _PWMA_CR2
                                    333 	.globl _PWMA_CR1
                                    334 	.globl _PWMB_IOAUX
                                    335 	.globl _PWMB_PS
                                    336 	.globl _PWMB_ENO
                                    337 	.globl _PWMB_ETRPS
                                    338 	.globl _PWMA_IOAUX
                                    339 	.globl _PWMA_PS
                                    340 	.globl _PWMA_ENO
                                    341 	.globl _PWMA_ETRPS
                                    342 	.globl _RSTFLAG
                                    343 	.globl _SPFUNC
                                    344 	.globl _OPCON
                                    345 	.globl _ARCON
                                    346 	.globl _MD4
                                    347 	.globl _MD5
                                    348 	.globl _MD0
                                    349 	.globl _MD1
                                    350 	.globl _MD2
                                    351 	.globl _MD3
                                    352 	.globl _DMA_LCM_RXAL
                                    353 	.globl _DMA_LCM_RXAH
                                    354 	.globl _DMA_LCM_TXAL
                                    355 	.globl _DMA_LCM_TXAH
                                    356 	.globl _DMA_LCM_DONE
                                    357 	.globl _DMA_LCM_AMT
                                    358 	.globl _DMA_LCM_STA
                                    359 	.globl _DMA_LCM_CR
                                    360 	.globl _DMA_LCM_CFG
                                    361 	.globl _LCMIDDAT
                                    362 	.globl _LCMIDDATH
                                    363 	.globl _LCMIDDATL
                                    364 	.globl _LCMSTA
                                    365 	.globl _LCMCR
                                    366 	.globl _LCMCFG2
                                    367 	.globl _LCMCFG
                                    368 	.globl _I2CMSAUX
                                    369 	.globl _I2CRXD
                                    370 	.globl _I2CTXD
                                    371 	.globl _I2CSLADR
                                    372 	.globl _I2CSLST
                                    373 	.globl _I2CSLCR
                                    374 	.globl _I2CMSST
                                    375 	.globl _I2CMSCR
                                    376 	.globl _I2CCFG
                                    377 	.globl _PINIPH
                                    378 	.globl _PINIPL
                                    379 	.globl _P5IE
                                    380 	.globl _P5DR
                                    381 	.globl _P5SR
                                    382 	.globl _P5NCS
                                    383 	.globl _P5PU
                                    384 	.globl _P5WKUE
                                    385 	.globl _P5IM1
                                    386 	.globl _P5IM0
                                    387 	.globl _P5INTF
                                    388 	.globl _P5INTE
                                    389 	.globl _P3IE
                                    390 	.globl _P3DR
                                    391 	.globl _P3SR
                                    392 	.globl _P3NCS
                                    393 	.globl _P3PU
                                    394 	.globl _P3WKUE
                                    395 	.globl _P3IM1
                                    396 	.globl _P3IM0
                                    397 	.globl _P3INTF
                                    398 	.globl _P3INTE
                                    399 	.globl _P2IE
                                    400 	.globl _P2DR
                                    401 	.globl _P2SR
                                    402 	.globl _P2NCS
                                    403 	.globl _P2PU
                                    404 	.globl _P2WKUE
                                    405 	.globl _P2IM1
                                    406 	.globl _P2IM0
                                    407 	.globl _P2INTF
                                    408 	.globl _P2INTE
                                    409 	.globl _P1IE
                                    410 	.globl _P1DR
                                    411 	.globl _P1SR
                                    412 	.globl _P1NCS
                                    413 	.globl _P1PU
                                    414 	.globl _P1WKUE
                                    415 	.globl _P1IM1
                                    416 	.globl _P1IM0
                                    417 	.globl _P1INTF
                                    418 	.globl _P1INTE
                                    419 	.globl _DMA_M2M_RXAL
                                    420 	.globl _DMA_M2M_RXAH
                                    421 	.globl _DMA_M2M_TXAL
                                    422 	.globl _DMA_M2M_TXAH
                                    423 	.globl _DMA_M2M_DONE
                                    424 	.globl _DMA_M2M_AMT
                                    425 	.globl _DMA_M2M_STA
                                    426 	.globl _DMA_M2M_CR
                                    427 	.globl _DMA_M2M_CFG
                                    428 	.globl _CMPEXCFG
                                    429 	.globl _DMA_ADC_CHSW1
                                    430 	.globl _DMA_ADC_CHSW0
                                    431 	.globl _DMA_ADC_CFG2
                                    432 	.globl _DMA_ADC_RXAL
                                    433 	.globl _DMA_ADC_RXAH
                                    434 	.globl _DMA_ADC_STA
                                    435 	.globl _DMA_ADC_CR
                                    436 	.globl _DMA_ADC_CFG
                                    437 	.globl _ADCEXCFG
                                    438 	.globl _ADCTIM
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
                                    600 ; internal ram data
                                    601 ;--------------------------------------------------------
                                    602 	.area DSEG    (DATA)
                                    603 ;--------------------------------------------------------
                                    604 ; overlayable items in internal ram 
                                    605 ;--------------------------------------------------------
                                    606 ;--------------------------------------------------------
                                    607 ; Stack segment in internal ram 
                                    608 ;--------------------------------------------------------
                                    609 	.area	SSEG
      000087                        610 __start__stack:
      000087                        611 	.ds	1
                                    612 
                                    613 ;--------------------------------------------------------
                                    614 ; indirectly addressable internal ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area ISEG    (DATA)
                                    617 ;--------------------------------------------------------
                                    618 ; absolute internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area IABS    (ABS,DATA)
                                    621 	.area IABS    (ABS,DATA)
                                    622 ;--------------------------------------------------------
                                    623 ; bit data
                                    624 ;--------------------------------------------------------
                                    625 	.area BSEG    (BIT)
                                    626 ;--------------------------------------------------------
                                    627 ; paged external ram data
                                    628 ;--------------------------------------------------------
                                    629 	.area PSEG    (PAG,XDATA)
                                    630 ;--------------------------------------------------------
                                    631 ; external ram data
                                    632 ;--------------------------------------------------------
                                    633 	.area XSEG    (XDATA)
                           00FEA8   634 _ADCTIM	=	0xfea8
                           00FEAD   635 _ADCEXCFG	=	0xfead
                           00FA10   636 _DMA_ADC_CFG	=	0xfa10
                           00FA11   637 _DMA_ADC_CR	=	0xfa11
                           00FA12   638 _DMA_ADC_STA	=	0xfa12
                           00FA17   639 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   640 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   641 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   642 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   643 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   644 _CMPEXCFG	=	0xfeae
                           00FA00   645 _DMA_M2M_CFG	=	0xfa00
                           00FA01   646 _DMA_M2M_CR	=	0xfa01
                           00FA02   647 _DMA_M2M_STA	=	0xfa02
                           00FA03   648 _DMA_M2M_AMT	=	0xfa03
                           00FA04   649 _DMA_M2M_DONE	=	0xfa04
                           00FA05   650 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   651 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   652 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   653 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   654 _P1INTE	=	0xfd01
                           00FD11   655 _P1INTF	=	0xfd11
                           00FD21   656 _P1IM0	=	0xfd21
                           00FD31   657 _P1IM1	=	0xfd31
                           00FD41   658 _P1WKUE	=	0xfd41
                           00FE11   659 _P1PU	=	0xfe11
                           00FE19   660 _P1NCS	=	0xfe19
                           00FE21   661 _P1SR	=	0xfe21
                           00FE29   662 _P1DR	=	0xfe29
                           00FE31   663 _P1IE	=	0xfe31
                           00FD02   664 _P2INTE	=	0xfd02
                           00FD12   665 _P2INTF	=	0xfd12
                           00FD22   666 _P2IM0	=	0xfd22
                           00FD32   667 _P2IM1	=	0xfd32
                           00FD42   668 _P2WKUE	=	0xfd42
                           00FE12   669 _P2PU	=	0xfe12
                           00FE1A   670 _P2NCS	=	0xfe1a
                           00FE22   671 _P2SR	=	0xfe22
                           00FE2A   672 _P2DR	=	0xfe2a
                           00FE32   673 _P2IE	=	0xfe32
                           00FD03   674 _P3INTE	=	0xfd03
                           00FD13   675 _P3INTF	=	0xfd13
                           00FD23   676 _P3IM0	=	0xfd23
                           00FD33   677 _P3IM1	=	0xfd33
                           00FD43   678 _P3WKUE	=	0xfd43
                           00FE13   679 _P3PU	=	0xfe13
                           00FE1B   680 _P3NCS	=	0xfe1b
                           00FE23   681 _P3SR	=	0xfe23
                           00FE2B   682 _P3DR	=	0xfe2b
                           00FE33   683 _P3IE	=	0xfe33
                           00FD05   684 _P5INTE	=	0xfd05
                           00FD15   685 _P5INTF	=	0xfd15
                           00FD25   686 _P5IM0	=	0xfd25
                           00FD35   687 _P5IM1	=	0xfd35
                           00FD45   688 _P5WKUE	=	0xfd45
                           00FE15   689 _P5PU	=	0xfe15
                           00FE1D   690 _P5NCS	=	0xfe1d
                           00FE25   691 _P5SR	=	0xfe25
                           00FE2D   692 _P5DR	=	0xfe2d
                           00FE35   693 _P5IE	=	0xfe35
                           00FD60   694 _PINIPL	=	0xfd60
                           00FD61   695 _PINIPH	=	0xfd61
                           00FE80   696 _I2CCFG	=	0xfe80
                           00FE81   697 _I2CMSCR	=	0xfe81
                           00FE82   698 _I2CMSST	=	0xfe82
                           00FE83   699 _I2CSLCR	=	0xfe83
                           00FE84   700 _I2CSLST	=	0xfe84
                           00FE85   701 _I2CSLADR	=	0xfe85
                           00FE86   702 _I2CTXD	=	0xfe86
                           00FE87   703 _I2CRXD	=	0xfe87
                           00FE88   704 _I2CMSAUX	=	0xfe88
                           00FE50   705 _LCMCFG	=	0xfe50
                           00FE51   706 _LCMCFG2	=	0xfe51
                           00FE52   707 _LCMCR	=	0xfe52
                           00FE53   708 _LCMSTA	=	0xfe53
                           00FE54   709 _LCMIDDATL	=	0xfe54
                           00FE55   710 _LCMIDDATH	=	0xfe55
                           00FE54   711 _LCMIDDAT	=	0xfe54
                           00FA70   712 _DMA_LCM_CFG	=	0xfa70
                           00FA71   713 _DMA_LCM_CR	=	0xfa71
                           00FA72   714 _DMA_LCM_STA	=	0xfa72
                           00FA73   715 _DMA_LCM_AMT	=	0xfa73
                           00FA74   716 _DMA_LCM_DONE	=	0xfa74
                           00FA75   717 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   718 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   719 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   720 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   721 _MD3	=	0xfcf0
                           00FCF1   722 _MD2	=	0xfcf1
                           00FCF2   723 _MD1	=	0xfcf2
                           00FCF3   724 _MD0	=	0xfcf3
                           00FCF4   725 _MD5	=	0xfcf4
                           00FCF5   726 _MD4	=	0xfcf5
                           00FCF6   727 _ARCON	=	0xfcf6
                           00FCF7   728 _OPCON	=	0xfcf7
                           00FE08   729 _SPFUNC	=	0xfe08
                           00FE09   730 _RSTFLAG	=	0xfe09
                           00FEB0   731 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   732 _PWMA_ENO	=	0xfeb1
                           00FEB2   733 _PWMA_PS	=	0xfeb2
                           00FEB3   734 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   735 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   736 _PWMB_ENO	=	0xfeb5
                           00FEB6   737 _PWMB_PS	=	0xfeb6
                           00FEB7   738 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   739 _PWMA_CR1	=	0xfec0
                           00FEC1   740 _PWMA_CR2	=	0xfec1
                           00FEC2   741 _PWMA_SMCR	=	0xfec2
                           00FEC3   742 _PWMA_ETR	=	0xfec3
                           00FEC4   743 _PWMA_IER	=	0xfec4
                           00FEC5   744 _PWMA_SR1	=	0xfec5
                           00FEC6   745 _PWMA_SR2	=	0xfec6
                           00FEC7   746 _PWMA_EGR	=	0xfec7
                           00FEC8   747 _PWMA_CCMR1	=	0xfec8
                           00FEC9   748 _PWMA_CCMR2	=	0xfec9
                           00FECA   749 _PWMA_CCMR3	=	0xfeca
                           00FECB   750 _PWMA_CCMR4	=	0xfecb
                           00FECC   751 _PWMA_CCER1	=	0xfecc
                           00FECD   752 _PWMA_CCER2	=	0xfecd
                           00FECE   753 _PWMA_CNTRH	=	0xfece
                           00FECF   754 _PWMA_CNTRL	=	0xfecf
                           00FED0   755 _PWMA_PSCRH	=	0xfed0
                           00FED1   756 _PWMA_PSCRL	=	0xfed1
                           00FED2   757 _PWMA_ARRH	=	0xfed2
                           00FED3   758 _PWMA_ARRL	=	0xfed3
                           00FED4   759 _PWMA_RCR	=	0xfed4
                           00FED5   760 _PWMA_CCR1H	=	0xfed5
                           00FED6   761 _PWMA_CCR1L	=	0xfed6
                           00FED7   762 _PWMA_CCR2H	=	0xfed7
                           00FED8   763 _PWMA_CCR2L	=	0xfed8
                           00FED9   764 _PWMA_CCR3H	=	0xfed9
                           00FEDA   765 _PWMA_CCR3L	=	0xfeda
                           00FEDB   766 _PWMA_CCR4H	=	0xfedb
                           00FEDC   767 _PWMA_CCR4L	=	0xfedc
                           00FEDD   768 _PWMA_BKR	=	0xfedd
                           00FEDE   769 _PWMA_DTR	=	0xfede
                           00FEDF   770 _PWMA_OISR	=	0xfedf
                           00FEE0   771 _PWMB_CR1	=	0xfee0
                           00FEE1   772 _PWMB_CR2	=	0xfee1
                           00FEE2   773 _PWMB_SMCR	=	0xfee2
                           00FEE3   774 _PWMB_ETR	=	0xfee3
                           00FEE4   775 _PWMB_IER	=	0xfee4
                           00FEE5   776 _PWMB_SR1	=	0xfee5
                           00FEE6   777 _PWMB_SR2	=	0xfee6
                           00FEE7   778 _PWMB_EGR	=	0xfee7
                           00FEE8   779 _PWMB_CCMR1	=	0xfee8
                           00FEE9   780 _PWMB_CCMR2	=	0xfee9
                           00FEEA   781 _PWMB_CCMR3	=	0xfeea
                           00FEEB   782 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   783 _PWMB_CCER1	=	0xfeec
                           00FEED   784 _PWMB_CCER2	=	0xfeed
                           00FEEE   785 _PWMB_CNTRH	=	0xfeee
                           00FEEF   786 _PWMB_CNTRL	=	0xfeef
                           00FEF0   787 _PWMB_PSCRH	=	0xfef0
                           00FEF1   788 _PWMB_PSCRL	=	0xfef1
                           00FEF2   789 _PWMB_ARRH	=	0xfef2
                           00FEF3   790 _PWMB_ARRL	=	0xfef3
                           00FEF4   791 _PWMB_RCR	=	0xfef4
                           00FEF5   792 _PWMB_CCR1H	=	0xfef5
                           00FEF6   793 _PWMB_CCR1L	=	0xfef6
                           00FEF7   794 _PWMB_CCR2H	=	0xfef7
                           00FEF8   795 _PWMB_CCR2L	=	0xfef8
                           00FEF9   796 _PWMB_CCR3H	=	0xfef9
                           00FEFA   797 _PWMB_CCR3L	=	0xfefa
                           00FEFB   798 _PWMB_CCR4H	=	0xfefb
                           00FEFC   799 _PWMB_CCR4L	=	0xfefc
                           00FEFD   800 _PWMB_BKR	=	0xfefd
                           00FEFE   801 _PWMB_DTR	=	0xfefe
                           00FEFF   802 _PWMB_OISR	=	0xfeff
                           00FE60   803 _RTCCR	=	0xfe60
                           00FE61   804 _RTCCFG	=	0xfe61
                           00FE62   805 _RTCIEN	=	0xfe62
                           00FE63   806 _RTCIF	=	0xfe63
                           00FE64   807 _ALAHOUR	=	0xfe64
                           00FE65   808 _ALAMIN	=	0xfe65
                           00FE66   809 _ALASEC	=	0xfe66
                           00FE67   810 _ALASSEC	=	0xfe67
                           00FE68   811 _INIYEAR	=	0xfe68
                           00FE69   812 _INIMONTH	=	0xfe69
                           00FE6A   813 _INIDAY	=	0xfe6a
                           00FE6B   814 _INIHOUR	=	0xfe6b
                           00FE6C   815 _INIMIN	=	0xfe6c
                           00FE6D   816 _INISEC	=	0xfe6d
                           00FE6E   817 _INISSEC	=	0xfe6e
                           00FE70   818 _YEAR	=	0xfe70
                           00FE71   819 _MONTH	=	0xfe71
                           00FE72   820 _DAY	=	0xfe72
                           00FE73   821 _HOUR	=	0xfe73
                           00FE74   822 _MIN	=	0xfe74
                           00FE75   823 _SEC	=	0xfe75
                           00FE76   824 _SSEC	=	0xfe76
                           00FA20   825 _DMA_SPI_CFG	=	0xfa20
                           00FA21   826 _DMA_SPI_CR	=	0xfa21
                           00FA22   827 _DMA_SPI_STA	=	0xfa22
                           00FA23   828 _DMA_SPI_AMT	=	0xfa23
                           00FA24   829 _DMA_SPI_DONE	=	0xfa24
                           00FA25   830 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   831 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   832 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   833 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   834 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   835 _CLKDIV	=	0xfe01
                           00FE02   836 _HIRCCR	=	0xfe02
                           00FE03   837 _XOSCCR	=	0xfe03
                           00FE04   838 _IRC32KCR	=	0xfe04
                           00FE00   839 _CKSEL	=	0xfe00
                           00FE05   840 _MCLKOCR	=	0xfe05
                           00FE06   841 _IRCDB	=	0xfe06
                           00FE07   842 _IRC48MCR	=	0xfe07
                           00FEA2   843 _TM2PS	=	0xfea2
                           00FEA3   844 _TM3PS	=	0xfea3
                           00FEA4   845 _TM4PS	=	0xfea4
                           00FA30   846 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   847 _DMA_UR1T_CR	=	0xfa31
                           00FA32   848 _DMA_UR1T_STA	=	0xfa32
                           00FA33   849 _DMA_URTX_AMT	=	0xfa33
                           00FA34   850 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   851 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   852 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   853 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   854 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   855 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   856 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   857 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   858 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   859 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   860 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   861 _DMA_UR2T_CR	=	0xfa31
                           00FA32   862 _DMA_UR2T_STA	=	0xfa32
                           00FA33   863 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   864 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   865 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   866 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   867 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   868 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   869 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   870 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   871 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   872 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   873 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   874 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   875 _DMA_UR3T_CR	=	0xfa31
                           00FA32   876 _DMA_UR3T_STA	=	0xfa32
                           00FA33   877 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   878 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   879 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   880 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   881 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   882 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   883 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   884 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   885 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   886 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   887 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   888 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   889 _DMA_UR4T_CR	=	0xfa31
                           00FA32   890 _DMA_UR4T_STA	=	0xfa32
                           00FA33   891 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   892 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   893 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   894 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   895 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   896 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   897 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   898 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   899 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   900 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   901 _DMA_UR4R_TXAL	=	0xfa3e
      00054F                        902 _uartGetCharacter_result_65536_69:
      00054F                        903 	.ds 1
                                    904 ;--------------------------------------------------------
                                    905 ; absolute external ram data
                                    906 ;--------------------------------------------------------
                                    907 	.area XABS    (ABS,XDATA)
                                    908 ;--------------------------------------------------------
                                    909 ; external initialized ram data
                                    910 ;--------------------------------------------------------
                                    911 	.area XISEG   (XDATA)
                                    912 	.area HOME    (CODE)
                                    913 	.area GSINIT0 (CODE)
                                    914 	.area GSINIT1 (CODE)
                                    915 	.area GSINIT2 (CODE)
                                    916 	.area GSINIT3 (CODE)
                                    917 	.area GSINIT4 (CODE)
                                    918 	.area GSINIT5 (CODE)
                                    919 	.area GSINIT  (CODE)
                                    920 	.area GSFINAL (CODE)
                                    921 	.area CSEG    (CODE)
                                    922 ;--------------------------------------------------------
                                    923 ; interrupt vector 
                                    924 ;--------------------------------------------------------
                                    925 	.area HOME    (CODE)
      000000                        926 __interrupt_vect:
      000000 02 00 E3         [24]  927 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  928 	reti
      000004                        929 	.ds	7
      00000B 32               [24]  930 	reti
      00000C                        931 	.ds	7
      000013 32               [24]  932 	reti
      000014                        933 	.ds	7
      00001B 32               [24]  934 	reti
      00001C                        935 	.ds	7
      000023 02 2A 78         [24]  936 	ljmp	_uart1_isr
      000026                        937 	.ds	5
      00002B 32               [24]  938 	reti
      00002C                        939 	.ds	7
      000033 32               [24]  940 	reti
      000034                        941 	.ds	7
      00003B 32               [24]  942 	reti
      00003C                        943 	.ds	7
      000043 32               [24]  944 	reti
      000044                        945 	.ds	7
      00004B 32               [24]  946 	reti
      00004C                        947 	.ds	7
      000053 32               [24]  948 	reti
      000054                        949 	.ds	7
      00005B 32               [24]  950 	reti
      00005C                        951 	.ds	7
      000063 02 35 66         [24]  952 	ljmp	_timer2_isr
      000066                        953 	.ds	5
      00006B 32               [24]  954 	reti
      00006C                        955 	.ds	7
      000073 32               [24]  956 	reti
      000074                        957 	.ds	7
      00007B 32               [24]  958 	reti
      00007C                        959 	.ds	7
      000083 32               [24]  960 	reti
      000084                        961 	.ds	7
      00008B 32               [24]  962 	reti
      00008C                        963 	.ds	7
      000093 32               [24]  964 	reti
      000094                        965 	.ds	7
      00009B 02 3D A3         [24]  966 	ljmp	_timer3_isr
      00009E                        967 	.ds	5
      0000A3 32               [24]  968 	reti
      0000A4                        969 	.ds	7
      0000AB 32               [24]  970 	reti
      0000AC                        971 	.ds	7
      0000B3 32               [24]  972 	reti
      0000B4                        973 	.ds	7
      0000BB 32               [24]  974 	reti
      0000BC                        975 	.ds	7
      0000C3 32               [24]  976 	reti
      0000C4                        977 	.ds	7
      0000CB 32               [24]  978 	reti
      0000CC                        979 	.ds	7
      0000D3 02 0D B2         [24]  980 	ljmp	_pwmA_isr
      0000D6                        981 	.ds	5
      0000DB 02 10 6E         [24]  982 	ljmp	_pwmB_isr
                                    983 ;--------------------------------------------------------
                                    984 ; global & static initialisations
                                    985 ;--------------------------------------------------------
                                    986 	.area HOME    (CODE)
                                    987 	.area GSINIT  (CODE)
                                    988 	.area GSFINAL (CODE)
                                    989 	.area GSINIT  (CODE)
                                    990 	.globl __sdcc_gsinit_startup
                                    991 	.globl __sdcc_program_startup
                                    992 	.globl __start__stack
                                    993 	.globl __mcs51_genXINIT
                                    994 	.globl __mcs51_genXRAMCLEAR
                                    995 	.globl __mcs51_genRAMCLEAR
                                    996 	.area GSFINAL (CODE)
      00017F 02 00 DE         [24]  997 	ljmp	__sdcc_program_startup
                                    998 ;--------------------------------------------------------
                                    999 ; Home
                                   1000 ;--------------------------------------------------------
                                   1001 	.area HOME    (CODE)
                                   1002 	.area HOME    (CODE)
      0000DE                       1003 __sdcc_program_startup:
      0000DE 02 32 DB         [24] 1004 	ljmp	_main
                                   1005 ;	return from main will return to caller
                                   1006 ;--------------------------------------------------------
                                   1007 ; code
                                   1008 ;--------------------------------------------------------
                                   1009 	.area CSEG    (CODE)
                                   1010 ;------------------------------------------------------------
                                   1011 ;Allocation info for local variables in function 'main'
                                   1012 ;------------------------------------------------------------
                                   1013 ;	main.c:7: void main(void) {
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function main
                                   1016 ;	-----------------------------------------
      0032DB                       1017 _main:
                           000007  1018 	ar7 = 0x07
                           000006  1019 	ar6 = 0x06
                           000005  1020 	ar5 = 0x05
                           000004  1021 	ar4 = 0x04
                           000003  1022 	ar3 = 0x03
                           000002  1023 	ar2 = 0x02
                           000001  1024 	ar1 = 0x01
                           000000  1025 	ar0 = 0x00
                                   1026 ;	main.c:10: INIT_EXTENDED_SFR();
      0032DB 43 BA 80         [24] 1027 	orl	_P_SW2,#0x80
                                   1028 ;	main.c:14: CONSOLE_PIN_CONFIG
      0032DE 90 00 02         [24] 1029 	mov	dptr,#_serialConsoleInitialise_PARM_2
      0032E1 E4               [12] 1030 	clr	a
      0032E2 F0               [24] 1031 	movx	@dptr,a
      0032E3 74 C2            [12] 1032 	mov	a,#0xc2
      0032E5 A3               [24] 1033 	inc	dptr
      0032E6 F0               [24] 1034 	movx	@dptr,a
      0032E7 74 01            [12] 1035 	mov	a,#0x01
      0032E9 A3               [24] 1036 	inc	dptr
      0032EA F0               [24] 1037 	movx	@dptr,a
      0032EB E4               [12] 1038 	clr	a
      0032EC A3               [24] 1039 	inc	dptr
      0032ED F0               [24] 1040 	movx	@dptr,a
      0032EE 90 00 06         [24] 1041 	mov	dptr,#_serialConsoleInitialise_PARM_3
      0032F1 F0               [24] 1042 	movx	@dptr,a
      0032F2 75 82 01         [24] 1043 	mov	dpl,#0x01
      0032F5 12 01 82         [24] 1044 	lcall	_serialConsoleInitialise
                                   1045 ;	main.c:16: global_timer_init();
      0032F8 12 3D 6C         [24] 1046 	lcall	_global_timer_init
                                   1047 ;	main.c:17: buttons_init();
      0032FB 12 3D E8         [24] 1048 	lcall	_buttons_init
                                   1049 ;	main.c:18: switch_init();
      0032FE 12 33 41         [24] 1050 	lcall	_switch_init
                                   1051 ;	main.c:19: encoder_init();
      003301 12 2C 5B         [24] 1052 	lcall	_encoder_init
                                   1053 ;	main.c:20: stepper_motor_init();
      003304 12 33 5C         [24] 1054 	lcall	_stepper_motor_init
                                   1055 ;	main.c:21: SSD1306_Init();
      003307 12 2C EB         [24] 1056 	lcall	_SSD1306_Init
                                   1057 ;	main.c:23: display_welcome_page();
      00330A 12 40 6F         [24] 1058 	lcall	_display_welcome_page
                                   1059 ;	main.c:25: EA = 1; // enable interrupts
                                   1060 ;	assignBit
      00330D D2 AF            [12] 1061 	setb	_EA
                                   1062 ;	main.c:26: delay1ms(500);
      00330F 90 01 F4         [24] 1063 	mov	dptr,#0x01f4
      003312 12 21 35         [24] 1064 	lcall	_delay1ms
                                   1065 ;	main.c:29: while(1) {
      003315                       1066 00102$:
                                   1067 ;	main.c:30: encoder_process();  // getting latest encoder readings
      003315 12 2C 70         [24] 1068 	lcall	_encoder_process
                                   1069 ;	main.c:31: buttons_process();  // getting latest button readings
      003318 12 3E DB         [24] 1070 	lcall	_buttons_process
                                   1071 ;	main.c:34: application_process_current_page();
      00331B 12 3D 45         [24] 1072 	lcall	_application_process_current_page
                                   1073 ;	main.c:35: printf("Stepper State: %d \r", get_stepper_state());
      00331E 12 35 05         [24] 1074 	lcall	_get_stepper_state
      003321 E4               [12] 1075 	clr	a
      003322 33               [12] 1076 	rlc	a
      003323 FE               [12] 1077 	mov	r6,a
      003324 7F 00            [12] 1078 	mov	r7,#0x00
      003326 C0 06            [24] 1079 	push	ar6
      003328 C0 07            [24] 1080 	push	ar7
      00332A 74 6F            [12] 1081 	mov	a,#___str_0
      00332C C0 E0            [24] 1082 	push	acc
      00332E 74 6D            [12] 1083 	mov	a,#(___str_0 >> 8)
      003330 C0 E0            [24] 1084 	push	acc
      003332 74 80            [12] 1085 	mov	a,#0x80
      003334 C0 E0            [24] 1086 	push	acc
      003336 12 4E 1C         [24] 1087 	lcall	_printf
      003339 E5 81            [12] 1088 	mov	a,sp
      00333B 24 FB            [12] 1089 	add	a,#0xfb
      00333D F5 81            [12] 1090 	mov	sp,a
                                   1091 ;	main.c:37: }
      00333F 80 D4            [24] 1092 	sjmp	00102$
                                   1093 	.area CSEG    (CODE)
                                   1094 	.area CONST   (CODE)
      006B8F                       1095 _FONTS:
      006B8F 00                    1096 	.db #0x00	; 0
      006B90 00                    1097 	.db #0x00	; 0
      006B91 00                    1098 	.db #0x00	; 0
      006B92 00                    1099 	.db #0x00	; 0
      006B93 00                    1100 	.db #0x00	; 0
      006B94 81                    1101 	.db #0x81	; 129
      006B95 81                    1102 	.db #0x81	; 129
      006B96 18                    1103 	.db #0x18	; 24
      006B97 81                    1104 	.db #0x81	; 129
      006B98 81                    1105 	.db #0x81	; 129
      006B99 00                    1106 	.db #0x00	; 0
      006B9A 07                    1107 	.db #0x07	; 7
      006B9B 00                    1108 	.db #0x00	; 0
      006B9C 07                    1109 	.db #0x07	; 7
      006B9D 00                    1110 	.db #0x00	; 0
      006B9E 14                    1111 	.db #0x14	; 20
      006B9F 7F                    1112 	.db #0x7f	; 127
      006BA0 14                    1113 	.db #0x14	; 20
      006BA1 7F                    1114 	.db #0x7f	; 127
      006BA2 14                    1115 	.db #0x14	; 20
      006BA3 24                    1116 	.db #0x24	; 36
      006BA4 2A                    1117 	.db #0x2a	; 42
      006BA5 7F                    1118 	.db #0x7f	; 127
      006BA6 2A                    1119 	.db #0x2a	; 42
      006BA7 12                    1120 	.db #0x12	; 18
      006BA8 23                    1121 	.db #0x23	; 35
      006BA9 13                    1122 	.db #0x13	; 19
      006BAA 08                    1123 	.db #0x08	; 8
      006BAB 64                    1124 	.db #0x64	; 100	'd'
      006BAC 62                    1125 	.db #0x62	; 98	'b'
      006BAD 36                    1126 	.db #0x36	; 54	'6'
      006BAE 49                    1127 	.db #0x49	; 73	'I'
      006BAF 55                    1128 	.db #0x55	; 85	'U'
      006BB0 22                    1129 	.db #0x22	; 34
      006BB1 50                    1130 	.db #0x50	; 80	'P'
      006BB2 00                    1131 	.db #0x00	; 0
      006BB3 05                    1132 	.db #0x05	; 5
      006BB4 03                    1133 	.db #0x03	; 3
      006BB5 00                    1134 	.db #0x00	; 0
      006BB6 00                    1135 	.db #0x00	; 0
      006BB7 00                    1136 	.db #0x00	; 0
      006BB8 1C                    1137 	.db #0x1c	; 28
      006BB9 22                    1138 	.db #0x22	; 34
      006BBA 41                    1139 	.db #0x41	; 65	'A'
      006BBB 00                    1140 	.db #0x00	; 0
      006BBC 00                    1141 	.db #0x00	; 0
      006BBD 41                    1142 	.db #0x41	; 65	'A'
      006BBE 22                    1143 	.db #0x22	; 34
      006BBF 1C                    1144 	.db #0x1c	; 28
      006BC0 00                    1145 	.db #0x00	; 0
      006BC1 14                    1146 	.db #0x14	; 20
      006BC2 08                    1147 	.db #0x08	; 8
      006BC3 3E                    1148 	.db #0x3e	; 62
      006BC4 08                    1149 	.db #0x08	; 8
      006BC5 14                    1150 	.db #0x14	; 20
      006BC6 08                    1151 	.db #0x08	; 8
      006BC7 08                    1152 	.db #0x08	; 8
      006BC8 3E                    1153 	.db #0x3e	; 62
      006BC9 08                    1154 	.db #0x08	; 8
      006BCA 08                    1155 	.db #0x08	; 8
      006BCB 00                    1156 	.db #0x00	; 0
      006BCC 50                    1157 	.db #0x50	; 80	'P'
      006BCD 30                    1158 	.db #0x30	; 48	'0'
      006BCE 00                    1159 	.db #0x00	; 0
      006BCF 00                    1160 	.db #0x00	; 0
      006BD0 08                    1161 	.db #0x08	; 8
      006BD1 08                    1162 	.db #0x08	; 8
      006BD2 08                    1163 	.db #0x08	; 8
      006BD3 08                    1164 	.db #0x08	; 8
      006BD4 08                    1165 	.db #0x08	; 8
      006BD5 00                    1166 	.db #0x00	; 0
      006BD6 60                    1167 	.db #0x60	; 96
      006BD7 60                    1168 	.db #0x60	; 96
      006BD8 00                    1169 	.db #0x00	; 0
      006BD9 00                    1170 	.db #0x00	; 0
      006BDA 20                    1171 	.db #0x20	; 32
      006BDB 10                    1172 	.db #0x10	; 16
      006BDC 08                    1173 	.db #0x08	; 8
      006BDD 04                    1174 	.db #0x04	; 4
      006BDE 02                    1175 	.db #0x02	; 2
      006BDF 3E                    1176 	.db #0x3e	; 62
      006BE0 51                    1177 	.db #0x51	; 81	'Q'
      006BE1 49                    1178 	.db #0x49	; 73	'I'
      006BE2 45                    1179 	.db #0x45	; 69	'E'
      006BE3 3E                    1180 	.db #0x3e	; 62
      006BE4 00                    1181 	.db #0x00	; 0
      006BE5 42                    1182 	.db #0x42	; 66	'B'
      006BE6 7F                    1183 	.db #0x7f	; 127
      006BE7 40                    1184 	.db #0x40	; 64
      006BE8 00                    1185 	.db #0x00	; 0
      006BE9 42                    1186 	.db #0x42	; 66	'B'
      006BEA 61                    1187 	.db #0x61	; 97	'a'
      006BEB 51                    1188 	.db #0x51	; 81	'Q'
      006BEC 49                    1189 	.db #0x49	; 73	'I'
      006BED 46                    1190 	.db #0x46	; 70	'F'
      006BEE 21                    1191 	.db #0x21	; 33
      006BEF 41                    1192 	.db #0x41	; 65	'A'
      006BF0 45                    1193 	.db #0x45	; 69	'E'
      006BF1 4B                    1194 	.db #0x4b	; 75	'K'
      006BF2 31                    1195 	.db #0x31	; 49	'1'
      006BF3 18                    1196 	.db #0x18	; 24
      006BF4 14                    1197 	.db #0x14	; 20
      006BF5 12                    1198 	.db #0x12	; 18
      006BF6 7F                    1199 	.db #0x7f	; 127
      006BF7 10                    1200 	.db #0x10	; 16
      006BF8 27                    1201 	.db #0x27	; 39
      006BF9 45                    1202 	.db #0x45	; 69	'E'
      006BFA 45                    1203 	.db #0x45	; 69	'E'
      006BFB 45                    1204 	.db #0x45	; 69	'E'
      006BFC 39                    1205 	.db #0x39	; 57	'9'
      006BFD 3C                    1206 	.db #0x3c	; 60
      006BFE 4A                    1207 	.db #0x4a	; 74	'J'
      006BFF 49                    1208 	.db #0x49	; 73	'I'
      006C00 49                    1209 	.db #0x49	; 73	'I'
      006C01 30                    1210 	.db #0x30	; 48	'0'
      006C02 01                    1211 	.db #0x01	; 1
      006C03 71                    1212 	.db #0x71	; 113	'q'
      006C04 09                    1213 	.db #0x09	; 9
      006C05 05                    1214 	.db #0x05	; 5
      006C06 03                    1215 	.db #0x03	; 3
      006C07 36                    1216 	.db #0x36	; 54	'6'
      006C08 49                    1217 	.db #0x49	; 73	'I'
      006C09 49                    1218 	.db #0x49	; 73	'I'
      006C0A 49                    1219 	.db #0x49	; 73	'I'
      006C0B 36                    1220 	.db #0x36	; 54	'6'
      006C0C 06                    1221 	.db #0x06	; 6
      006C0D 49                    1222 	.db #0x49	; 73	'I'
      006C0E 49                    1223 	.db #0x49	; 73	'I'
      006C0F 29                    1224 	.db #0x29	; 41
      006C10 1E                    1225 	.db #0x1e	; 30
      006C11 00                    1226 	.db #0x00	; 0
      006C12 36                    1227 	.db #0x36	; 54	'6'
      006C13 36                    1228 	.db #0x36	; 54	'6'
      006C14 00                    1229 	.db #0x00	; 0
      006C15 00                    1230 	.db #0x00	; 0
      006C16 00                    1231 	.db #0x00	; 0
      006C17 56                    1232 	.db #0x56	; 86	'V'
      006C18 36                    1233 	.db #0x36	; 54	'6'
      006C19 00                    1234 	.db #0x00	; 0
      006C1A 00                    1235 	.db #0x00	; 0
      006C1B 08                    1236 	.db #0x08	; 8
      006C1C 14                    1237 	.db #0x14	; 20
      006C1D 22                    1238 	.db #0x22	; 34
      006C1E 41                    1239 	.db #0x41	; 65	'A'
      006C1F 00                    1240 	.db #0x00	; 0
      006C20 14                    1241 	.db #0x14	; 20
      006C21 14                    1242 	.db #0x14	; 20
      006C22 14                    1243 	.db #0x14	; 20
      006C23 14                    1244 	.db #0x14	; 20
      006C24 14                    1245 	.db #0x14	; 20
      006C25 00                    1246 	.db #0x00	; 0
      006C26 41                    1247 	.db #0x41	; 65	'A'
      006C27 22                    1248 	.db #0x22	; 34
      006C28 14                    1249 	.db #0x14	; 20
      006C29 08                    1250 	.db #0x08	; 8
      006C2A 02                    1251 	.db #0x02	; 2
      006C2B 01                    1252 	.db #0x01	; 1
      006C2C 51                    1253 	.db #0x51	; 81	'Q'
      006C2D 09                    1254 	.db #0x09	; 9
      006C2E 06                    1255 	.db #0x06	; 6
      006C2F 32                    1256 	.db #0x32	; 50	'2'
      006C30 49                    1257 	.db #0x49	; 73	'I'
      006C31 79                    1258 	.db #0x79	; 121	'y'
      006C32 41                    1259 	.db #0x41	; 65	'A'
      006C33 3E                    1260 	.db #0x3e	; 62
      006C34 7E                    1261 	.db #0x7e	; 126
      006C35 11                    1262 	.db #0x11	; 17
      006C36 11                    1263 	.db #0x11	; 17
      006C37 11                    1264 	.db #0x11	; 17
      006C38 7E                    1265 	.db #0x7e	; 126
      006C39 7F                    1266 	.db #0x7f	; 127
      006C3A 49                    1267 	.db #0x49	; 73	'I'
      006C3B 49                    1268 	.db #0x49	; 73	'I'
      006C3C 49                    1269 	.db #0x49	; 73	'I'
      006C3D 36                    1270 	.db #0x36	; 54	'6'
      006C3E 3E                    1271 	.db #0x3e	; 62
      006C3F 41                    1272 	.db #0x41	; 65	'A'
      006C40 41                    1273 	.db #0x41	; 65	'A'
      006C41 41                    1274 	.db #0x41	; 65	'A'
      006C42 22                    1275 	.db #0x22	; 34
      006C43 7F                    1276 	.db #0x7f	; 127
      006C44 41                    1277 	.db #0x41	; 65	'A'
      006C45 41                    1278 	.db #0x41	; 65	'A'
      006C46 22                    1279 	.db #0x22	; 34
      006C47 1C                    1280 	.db #0x1c	; 28
      006C48 7F                    1281 	.db #0x7f	; 127
      006C49 49                    1282 	.db #0x49	; 73	'I'
      006C4A 49                    1283 	.db #0x49	; 73	'I'
      006C4B 49                    1284 	.db #0x49	; 73	'I'
      006C4C 41                    1285 	.db #0x41	; 65	'A'
      006C4D 7F                    1286 	.db #0x7f	; 127
      006C4E 09                    1287 	.db #0x09	; 9
      006C4F 09                    1288 	.db #0x09	; 9
      006C50 09                    1289 	.db #0x09	; 9
      006C51 01                    1290 	.db #0x01	; 1
      006C52 3E                    1291 	.db #0x3e	; 62
      006C53 41                    1292 	.db #0x41	; 65	'A'
      006C54 49                    1293 	.db #0x49	; 73	'I'
      006C55 49                    1294 	.db #0x49	; 73	'I'
      006C56 7A                    1295 	.db #0x7a	; 122	'z'
      006C57 7F                    1296 	.db #0x7f	; 127
      006C58 08                    1297 	.db #0x08	; 8
      006C59 08                    1298 	.db #0x08	; 8
      006C5A 08                    1299 	.db #0x08	; 8
      006C5B 7F                    1300 	.db #0x7f	; 127
      006C5C 00                    1301 	.db #0x00	; 0
      006C5D 41                    1302 	.db #0x41	; 65	'A'
      006C5E 7F                    1303 	.db #0x7f	; 127
      006C5F 41                    1304 	.db #0x41	; 65	'A'
      006C60 00                    1305 	.db #0x00	; 0
      006C61 20                    1306 	.db #0x20	; 32
      006C62 40                    1307 	.db #0x40	; 64
      006C63 41                    1308 	.db #0x41	; 65	'A'
      006C64 3F                    1309 	.db #0x3f	; 63
      006C65 01                    1310 	.db #0x01	; 1
      006C66 7F                    1311 	.db #0x7f	; 127
      006C67 08                    1312 	.db #0x08	; 8
      006C68 14                    1313 	.db #0x14	; 20
      006C69 22                    1314 	.db #0x22	; 34
      006C6A 41                    1315 	.db #0x41	; 65	'A'
      006C6B 7F                    1316 	.db #0x7f	; 127
      006C6C 40                    1317 	.db #0x40	; 64
      006C6D 40                    1318 	.db #0x40	; 64
      006C6E 40                    1319 	.db #0x40	; 64
      006C6F 40                    1320 	.db #0x40	; 64
      006C70 7F                    1321 	.db #0x7f	; 127
      006C71 02                    1322 	.db #0x02	; 2
      006C72 0C                    1323 	.db #0x0c	; 12
      006C73 02                    1324 	.db #0x02	; 2
      006C74 7F                    1325 	.db #0x7f	; 127
      006C75 7F                    1326 	.db #0x7f	; 127
      006C76 04                    1327 	.db #0x04	; 4
      006C77 08                    1328 	.db #0x08	; 8
      006C78 10                    1329 	.db #0x10	; 16
      006C79 7F                    1330 	.db #0x7f	; 127
      006C7A 3E                    1331 	.db #0x3e	; 62
      006C7B 41                    1332 	.db #0x41	; 65	'A'
      006C7C 41                    1333 	.db #0x41	; 65	'A'
      006C7D 41                    1334 	.db #0x41	; 65	'A'
      006C7E 3E                    1335 	.db #0x3e	; 62
      006C7F 7F                    1336 	.db #0x7f	; 127
      006C80 09                    1337 	.db #0x09	; 9
      006C81 09                    1338 	.db #0x09	; 9
      006C82 09                    1339 	.db #0x09	; 9
      006C83 06                    1340 	.db #0x06	; 6
      006C84 3E                    1341 	.db #0x3e	; 62
      006C85 41                    1342 	.db #0x41	; 65	'A'
      006C86 51                    1343 	.db #0x51	; 81	'Q'
      006C87 21                    1344 	.db #0x21	; 33
      006C88 5E                    1345 	.db #0x5e	; 94
      006C89 7F                    1346 	.db #0x7f	; 127
      006C8A 09                    1347 	.db #0x09	; 9
      006C8B 19                    1348 	.db #0x19	; 25
      006C8C 29                    1349 	.db #0x29	; 41
      006C8D 46                    1350 	.db #0x46	; 70	'F'
      006C8E 46                    1351 	.db #0x46	; 70	'F'
      006C8F 49                    1352 	.db #0x49	; 73	'I'
      006C90 49                    1353 	.db #0x49	; 73	'I'
      006C91 49                    1354 	.db #0x49	; 73	'I'
      006C92 31                    1355 	.db #0x31	; 49	'1'
      006C93 01                    1356 	.db #0x01	; 1
      006C94 01                    1357 	.db #0x01	; 1
      006C95 7F                    1358 	.db #0x7f	; 127
      006C96 01                    1359 	.db #0x01	; 1
      006C97 01                    1360 	.db #0x01	; 1
      006C98 3F                    1361 	.db #0x3f	; 63
      006C99 40                    1362 	.db #0x40	; 64
      006C9A 40                    1363 	.db #0x40	; 64
      006C9B 40                    1364 	.db #0x40	; 64
      006C9C 3F                    1365 	.db #0x3f	; 63
      006C9D 1F                    1366 	.db #0x1f	; 31
      006C9E 20                    1367 	.db #0x20	; 32
      006C9F 40                    1368 	.db #0x40	; 64
      006CA0 20                    1369 	.db #0x20	; 32
      006CA1 1F                    1370 	.db #0x1f	; 31
      006CA2 3F                    1371 	.db #0x3f	; 63
      006CA3 40                    1372 	.db #0x40	; 64
      006CA4 38                    1373 	.db #0x38	; 56	'8'
      006CA5 40                    1374 	.db #0x40	; 64
      006CA6 3F                    1375 	.db #0x3f	; 63
      006CA7 63                    1376 	.db #0x63	; 99	'c'
      006CA8 14                    1377 	.db #0x14	; 20
      006CA9 08                    1378 	.db #0x08	; 8
      006CAA 14                    1379 	.db #0x14	; 20
      006CAB 63                    1380 	.db #0x63	; 99	'c'
      006CAC 07                    1381 	.db #0x07	; 7
      006CAD 08                    1382 	.db #0x08	; 8
      006CAE 70                    1383 	.db #0x70	; 112	'p'
      006CAF 08                    1384 	.db #0x08	; 8
      006CB0 07                    1385 	.db #0x07	; 7
      006CB1 61                    1386 	.db #0x61	; 97	'a'
      006CB2 51                    1387 	.db #0x51	; 81	'Q'
      006CB3 49                    1388 	.db #0x49	; 73	'I'
      006CB4 45                    1389 	.db #0x45	; 69	'E'
      006CB5 43                    1390 	.db #0x43	; 67	'C'
      006CB6 00                    1391 	.db #0x00	; 0
      006CB7 7F                    1392 	.db #0x7f	; 127
      006CB8 41                    1393 	.db #0x41	; 65	'A'
      006CB9 41                    1394 	.db #0x41	; 65	'A'
      006CBA 00                    1395 	.db #0x00	; 0
      006CBB 02                    1396 	.db #0x02	; 2
      006CBC 04                    1397 	.db #0x04	; 4
      006CBD 08                    1398 	.db #0x08	; 8
      006CBE 10                    1399 	.db #0x10	; 16
      006CBF 20                    1400 	.db #0x20	; 32
      006CC0 00                    1401 	.db #0x00	; 0
      006CC1 41                    1402 	.db #0x41	; 65	'A'
      006CC2 41                    1403 	.db #0x41	; 65	'A'
      006CC3 7F                    1404 	.db #0x7f	; 127
      006CC4 00                    1405 	.db #0x00	; 0
      006CC5 04                    1406 	.db #0x04	; 4
      006CC6 02                    1407 	.db #0x02	; 2
      006CC7 01                    1408 	.db #0x01	; 1
      006CC8 02                    1409 	.db #0x02	; 2
      006CC9 04                    1410 	.db #0x04	; 4
      006CCA 40                    1411 	.db #0x40	; 64
      006CCB 40                    1412 	.db #0x40	; 64
      006CCC 40                    1413 	.db #0x40	; 64
      006CCD 40                    1414 	.db #0x40	; 64
      006CCE 40                    1415 	.db #0x40	; 64
      006CCF 00                    1416 	.db #0x00	; 0
      006CD0 01                    1417 	.db #0x01	; 1
      006CD1 02                    1418 	.db #0x02	; 2
      006CD2 04                    1419 	.db #0x04	; 4
      006CD3 00                    1420 	.db #0x00	; 0
      006CD4 20                    1421 	.db #0x20	; 32
      006CD5 54                    1422 	.db #0x54	; 84	'T'
      006CD6 54                    1423 	.db #0x54	; 84	'T'
      006CD7 54                    1424 	.db #0x54	; 84	'T'
      006CD8 78                    1425 	.db #0x78	; 120	'x'
      006CD9 7F                    1426 	.db #0x7f	; 127
      006CDA 48                    1427 	.db #0x48	; 72	'H'
      006CDB 44                    1428 	.db #0x44	; 68	'D'
      006CDC 44                    1429 	.db #0x44	; 68	'D'
      006CDD 38                    1430 	.db #0x38	; 56	'8'
      006CDE 38                    1431 	.db #0x38	; 56	'8'
      006CDF 44                    1432 	.db #0x44	; 68	'D'
      006CE0 44                    1433 	.db #0x44	; 68	'D'
      006CE1 44                    1434 	.db #0x44	; 68	'D'
      006CE2 20                    1435 	.db #0x20	; 32
      006CE3 38                    1436 	.db #0x38	; 56	'8'
      006CE4 44                    1437 	.db #0x44	; 68	'D'
      006CE5 44                    1438 	.db #0x44	; 68	'D'
      006CE6 48                    1439 	.db #0x48	; 72	'H'
      006CE7 7F                    1440 	.db #0x7f	; 127
      006CE8 38                    1441 	.db #0x38	; 56	'8'
      006CE9 54                    1442 	.db #0x54	; 84	'T'
      006CEA 54                    1443 	.db #0x54	; 84	'T'
      006CEB 54                    1444 	.db #0x54	; 84	'T'
      006CEC 18                    1445 	.db #0x18	; 24
      006CED 08                    1446 	.db #0x08	; 8
      006CEE 7E                    1447 	.db #0x7e	; 126
      006CEF 09                    1448 	.db #0x09	; 9
      006CF0 01                    1449 	.db #0x01	; 1
      006CF1 02                    1450 	.db #0x02	; 2
      006CF2 0C                    1451 	.db #0x0c	; 12
      006CF3 52                    1452 	.db #0x52	; 82	'R'
      006CF4 52                    1453 	.db #0x52	; 82	'R'
      006CF5 52                    1454 	.db #0x52	; 82	'R'
      006CF6 3E                    1455 	.db #0x3e	; 62
      006CF7 7F                    1456 	.db #0x7f	; 127
      006CF8 08                    1457 	.db #0x08	; 8
      006CF9 04                    1458 	.db #0x04	; 4
      006CFA 04                    1459 	.db #0x04	; 4
      006CFB 78                    1460 	.db #0x78	; 120	'x'
      006CFC 00                    1461 	.db #0x00	; 0
      006CFD 44                    1462 	.db #0x44	; 68	'D'
      006CFE 7D                    1463 	.db #0x7d	; 125
      006CFF 40                    1464 	.db #0x40	; 64
      006D00 00                    1465 	.db #0x00	; 0
      006D01 20                    1466 	.db #0x20	; 32
      006D02 40                    1467 	.db #0x40	; 64
      006D03 44                    1468 	.db #0x44	; 68	'D'
      006D04 3D                    1469 	.db #0x3d	; 61
      006D05 00                    1470 	.db #0x00	; 0
      006D06 7F                    1471 	.db #0x7f	; 127
      006D07 10                    1472 	.db #0x10	; 16
      006D08 28                    1473 	.db #0x28	; 40
      006D09 44                    1474 	.db #0x44	; 68	'D'
      006D0A 00                    1475 	.db #0x00	; 0
      006D0B 00                    1476 	.db #0x00	; 0
      006D0C 41                    1477 	.db #0x41	; 65	'A'
      006D0D 7F                    1478 	.db #0x7f	; 127
      006D0E 40                    1479 	.db #0x40	; 64
      006D0F 00                    1480 	.db #0x00	; 0
      006D10 7C                    1481 	.db #0x7c	; 124
      006D11 04                    1482 	.db #0x04	; 4
      006D12 18                    1483 	.db #0x18	; 24
      006D13 04                    1484 	.db #0x04	; 4
      006D14 78                    1485 	.db #0x78	; 120	'x'
      006D15 7C                    1486 	.db #0x7c	; 124
      006D16 08                    1487 	.db #0x08	; 8
      006D17 04                    1488 	.db #0x04	; 4
      006D18 04                    1489 	.db #0x04	; 4
      006D19 78                    1490 	.db #0x78	; 120	'x'
      006D1A 38                    1491 	.db #0x38	; 56	'8'
      006D1B 44                    1492 	.db #0x44	; 68	'D'
      006D1C 44                    1493 	.db #0x44	; 68	'D'
      006D1D 44                    1494 	.db #0x44	; 68	'D'
      006D1E 38                    1495 	.db #0x38	; 56	'8'
      006D1F 7C                    1496 	.db #0x7c	; 124
      006D20 14                    1497 	.db #0x14	; 20
      006D21 14                    1498 	.db #0x14	; 20
      006D22 14                    1499 	.db #0x14	; 20
      006D23 08                    1500 	.db #0x08	; 8
      006D24 08                    1501 	.db #0x08	; 8
      006D25 14                    1502 	.db #0x14	; 20
      006D26 14                    1503 	.db #0x14	; 20
      006D27 14                    1504 	.db #0x14	; 20
      006D28 7C                    1505 	.db #0x7c	; 124
      006D29 7C                    1506 	.db #0x7c	; 124
      006D2A 08                    1507 	.db #0x08	; 8
      006D2B 04                    1508 	.db #0x04	; 4
      006D2C 04                    1509 	.db #0x04	; 4
      006D2D 08                    1510 	.db #0x08	; 8
      006D2E 48                    1511 	.db #0x48	; 72	'H'
      006D2F 54                    1512 	.db #0x54	; 84	'T'
      006D30 54                    1513 	.db #0x54	; 84	'T'
      006D31 54                    1514 	.db #0x54	; 84	'T'
      006D32 20                    1515 	.db #0x20	; 32
      006D33 04                    1516 	.db #0x04	; 4
      006D34 3F                    1517 	.db #0x3f	; 63
      006D35 44                    1518 	.db #0x44	; 68	'D'
      006D36 40                    1519 	.db #0x40	; 64
      006D37 20                    1520 	.db #0x20	; 32
      006D38 3C                    1521 	.db #0x3c	; 60
      006D39 40                    1522 	.db #0x40	; 64
      006D3A 40                    1523 	.db #0x40	; 64
      006D3B 20                    1524 	.db #0x20	; 32
      006D3C 7C                    1525 	.db #0x7c	; 124
      006D3D 1C                    1526 	.db #0x1c	; 28
      006D3E 20                    1527 	.db #0x20	; 32
      006D3F 40                    1528 	.db #0x40	; 64
      006D40 20                    1529 	.db #0x20	; 32
      006D41 1C                    1530 	.db #0x1c	; 28
      006D42 3C                    1531 	.db #0x3c	; 60
      006D43 40                    1532 	.db #0x40	; 64
      006D44 30                    1533 	.db #0x30	; 48	'0'
      006D45 40                    1534 	.db #0x40	; 64
      006D46 3C                    1535 	.db #0x3c	; 60
      006D47 44                    1536 	.db #0x44	; 68	'D'
      006D48 28                    1537 	.db #0x28	; 40
      006D49 10                    1538 	.db #0x10	; 16
      006D4A 28                    1539 	.db #0x28	; 40
      006D4B 44                    1540 	.db #0x44	; 68	'D'
      006D4C 0C                    1541 	.db #0x0c	; 12
      006D4D 50                    1542 	.db #0x50	; 80	'P'
      006D4E 50                    1543 	.db #0x50	; 80	'P'
      006D4F 50                    1544 	.db #0x50	; 80	'P'
      006D50 3C                    1545 	.db #0x3c	; 60
      006D51 44                    1546 	.db #0x44	; 68	'D'
      006D52 64                    1547 	.db #0x64	; 100	'd'
      006D53 54                    1548 	.db #0x54	; 84	'T'
      006D54 4C                    1549 	.db #0x4c	; 76	'L'
      006D55 44                    1550 	.db #0x44	; 68	'D'
      006D56 00                    1551 	.db #0x00	; 0
      006D57 08                    1552 	.db #0x08	; 8
      006D58 36                    1553 	.db #0x36	; 54	'6'
      006D59 41                    1554 	.db #0x41	; 65	'A'
      006D5A 00                    1555 	.db #0x00	; 0
      006D5B 00                    1556 	.db #0x00	; 0
      006D5C 00                    1557 	.db #0x00	; 0
      006D5D 7F                    1558 	.db #0x7f	; 127
      006D5E 00                    1559 	.db #0x00	; 0
      006D5F 00                    1560 	.db #0x00	; 0
      006D60 00                    1561 	.db #0x00	; 0
      006D61 41                    1562 	.db #0x41	; 65	'A'
      006D62 36                    1563 	.db #0x36	; 54	'6'
      006D63 08                    1564 	.db #0x08	; 8
      006D64 00                    1565 	.db #0x00	; 0
      006D65 10                    1566 	.db #0x10	; 16
      006D66 08                    1567 	.db #0x08	; 8
      006D67 08                    1568 	.db #0x08	; 8
      006D68 10                    1569 	.db #0x10	; 16
      006D69 08                    1570 	.db #0x08	; 8
      006D6A 00                    1571 	.db #0x00	; 0
      006D6B 00                    1572 	.db #0x00	; 0
      006D6C 00                    1573 	.db #0x00	; 0
      006D6D 00                    1574 	.db #0x00	; 0
      006D6E 00                    1575 	.db #0x00	; 0
                                   1576 	.area CONST   (CODE)
      006D6F                       1577 ___str_0:
      006D6F 53 74 65 70 70 65 72  1578 	.ascii "Stepper State: %d "
             20 53 74 61 74 65 3A
             20 25 64 20
      006D81 0D                    1579 	.db 0x0d
      006D82 00                    1580 	.db 0x00
                                   1581 	.area CSEG    (CODE)
                                   1582 	.area XINIT   (CODE)
                                   1583 	.area CABS    (ABS,CODE)
