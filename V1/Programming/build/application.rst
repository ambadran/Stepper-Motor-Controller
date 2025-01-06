                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module application
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _display_update_stepper_enable
                                     12 	.globl _display_update_stepper_dir
                                     13 	.globl _display_encoder_control_page_first_time
                                     14 	.globl _display_distance_control_page_first_time
                                     15 	.globl _display_step_control_set_frequency_option
                                     16 	.globl _display_step_control_set_microstepping_option
                                     17 	.globl _display_step_control_set_steps_option
                                     18 	.globl _display_step_control_page
                                     19 	.globl _display_step_control_page_first_time
                                     20 	.globl _display_menu_page
                                     21 	.globl _stepper_set_steps_from_float_digits
                                     22 	.globl _stepper_set_dir
                                     23 	.globl _stepper_set_enable
                                     24 	.globl _get_stepper_state
                                     25 	.globl _stepper_motor_move
                                     26 	.globl _encoder_count_set
                                     27 	.globl _encoder_count_reset
                                     28 	.globl _printf
                                     29 	.globl _S1SM0_FE
                                     30 	.globl _T1IE
                                     31 	.globl _T0IE
                                     32 	.globl _T1RUN
                                     33 	.globl _T0RUN
                                     34 	.globl _CY
                                     35 	.globl _AC
                                     36 	.globl _F0
                                     37 	.globl _RS1
                                     38 	.globl _RS0
                                     39 	.globl _OV
                                     40 	.globl _F1
                                     41 	.globl _P
                                     42 	.globl _EA
                                     43 	.globl _INT1IE
                                     44 	.globl _INT0IE
                                     45 	.globl _INT1TR
                                     46 	.globl _INT0TR
                                     47 	.globl _P5_5
                                     48 	.globl _P5_4
                                     49 	.globl _P5_3
                                     50 	.globl _P5_2
                                     51 	.globl _P5_1
                                     52 	.globl _P5_0
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _P1_7
                                     70 	.globl _P1_6
                                     71 	.globl _P1_5
                                     72 	.globl _P1_4
                                     73 	.globl _P1_3
                                     74 	.globl _P1_2
                                     75 	.globl _P1_1
                                     76 	.globl _P1_0
                                     77 	.globl _USBADR
                                     78 	.globl _USBCON
                                     79 	.globl _USBDAT
                                     80 	.globl _USBCLK
                                     81 	.globl _S4BUF
                                     82 	.globl _S4CON
                                     83 	.globl _S3BUF
                                     84 	.globl _S3CON
                                     85 	.globl _S2BUF
                                     86 	.globl _S2CON
                                     87 	.globl _S1BUF
                                     88 	.globl _S1CON
                                     89 	.globl _SADEN
                                     90 	.globl _SADDR
                                     91 	.globl _AUXINTIF
                                     92 	.globl _T3
                                     93 	.globl _T3L
                                     94 	.globl _T3H
                                     95 	.globl _T4
                                     96 	.globl _T4L
                                     97 	.globl _T4H
                                     98 	.globl _T4T3M
                                     99 	.globl _WDT_CONTR
                                    100 	.globl _AUXR
                                    101 	.globl _T2
                                    102 	.globl _T2H
                                    103 	.globl _T2L
                                    104 	.globl _T1
                                    105 	.globl _T1H
                                    106 	.globl _T1L
                                    107 	.globl _T0
                                    108 	.globl _T0H
                                    109 	.globl _T0L
                                    110 	.globl _TMOD
                                    111 	.globl _TCON
                                    112 	.globl _IRTRIM
                                    113 	.globl _LIRTRIM
                                    114 	.globl _IRCBAND
                                    115 	.globl _SPDAT
                                    116 	.globl _SPCTL
                                    117 	.globl _SPSTAT
                                    118 	.globl _WKTC
                                    119 	.globl _WKTCH
                                    120 	.globl _WKTCL
                                    121 	.globl _BUS_SPEED
                                    122 	.globl _P_SW2
                                    123 	.globl _P_SW1
                                    124 	.globl _RSTCFG
                                    125 	.globl _PCON
                                    126 	.globl _B
                                    127 	.globl _ACC
                                    128 	.globl _PSW
                                    129 	.globl _SP
                                    130 	.globl _IP3H
                                    131 	.globl _IP3L
                                    132 	.globl _IP2H
                                    133 	.globl _IP2L
                                    134 	.globl _IE2
                                    135 	.globl _IP1H
                                    136 	.globl _IP1L
                                    137 	.globl _IE1
                                    138 	.globl _INT_CLKO
                                    139 	.globl _IAP_TPS
                                    140 	.globl _IAP_CONTR
                                    141 	.globl _IAP_TRIG
                                    142 	.globl _IAP_CMD
                                    143 	.globl _IAP_ADDR
                                    144 	.globl _IAP_ADDRL
                                    145 	.globl _IAP_ADDRH
                                    146 	.globl _IAP_DATA
                                    147 	.globl _P5M0
                                    148 	.globl _P5M1
                                    149 	.globl _P5
                                    150 	.globl _P3M0
                                    151 	.globl _P3M1
                                    152 	.globl _P3
                                    153 	.globl _P2M0
                                    154 	.globl _P2M1
                                    155 	.globl _P2
                                    156 	.globl _P1M0
                                    157 	.globl _P1M1
                                    158 	.globl _P1
                                    159 	.globl _TA
                                    160 	.globl _DPH1
                                    161 	.globl _DPL1
                                    162 	.globl _DPS
                                    163 	.globl _DP
                                    164 	.globl _DPH
                                    165 	.globl _DPL
                                    166 	.globl _CMPCR2
                                    167 	.globl _CMPCR1
                                    168 	.globl _DMA_ADC_AMT
                                    169 	.globl _ADCCFG
                                    170 	.globl _ADC_RES
                                    171 	.globl _ADC_RESL
                                    172 	.globl _ADC_RESH
                                    173 	.globl _ADC_CONTR
                                    174 	.globl _stepper_movement
                                    175 	.globl _inputs
                                    176 	.globl _float_digits
                                    177 	.globl _float_digit_pointer
                                    178 	.globl _application_process_func
                                    179 	.globl _current_page
                                    180 	.globl _DMA_UR4R_TXAL
                                    181 	.globl _DMA_UR4R_TXAH
                                    182 	.globl _DMA_UR4R_DONE
                                    183 	.globl _DMA_UR4R_AMT
                                    184 	.globl _DMA_UR4R_STA
                                    185 	.globl _DMA_UR4R_CR
                                    186 	.globl _DMA_UR4R_CFG
                                    187 	.globl _DMA_UR4T_TXAL
                                    188 	.globl _DMA_UR4T_TXAH
                                    189 	.globl _DMA_UR4T_DONE
                                    190 	.globl _DMA_UR4T_AMT
                                    191 	.globl _DMA_UR4T_STA
                                    192 	.globl _DMA_UR4T_CR
                                    193 	.globl _DMA_UR4T_CFG
                                    194 	.globl _DMA_UR3R_TXAL
                                    195 	.globl _DMA_UR3R_TXAH
                                    196 	.globl _DMA_UR3R_DONE
                                    197 	.globl _DMA_UR3R_AMT
                                    198 	.globl _DMA_UR3R_STA
                                    199 	.globl _DMA_UR3R_CR
                                    200 	.globl _DMA_UR3R_CFG
                                    201 	.globl _DMA_UR3T_TXAL
                                    202 	.globl _DMA_UR3T_TXAH
                                    203 	.globl _DMA_UR3T_DONE
                                    204 	.globl _DMA_UR3T_AMT
                                    205 	.globl _DMA_UR3T_STA
                                    206 	.globl _DMA_UR3T_CR
                                    207 	.globl _DMA_UR3T_CFG
                                    208 	.globl _DMA_UR2R_TXAL
                                    209 	.globl _DMA_UR2R_TXAH
                                    210 	.globl _DMA_UR2R_DONE
                                    211 	.globl _DMA_UR2R_AMT
                                    212 	.globl _DMA_UR2R_STA
                                    213 	.globl _DMA_UR2R_CR
                                    214 	.globl _DMA_UR2R_CFG
                                    215 	.globl _DMA_UR2T_TXAL
                                    216 	.globl _DMA_UR2T_TXAH
                                    217 	.globl _DMA_UR2T_DONE
                                    218 	.globl _DMA_UR2T_AMT
                                    219 	.globl _DMA_UR2T_STA
                                    220 	.globl _DMA_UR2T_CR
                                    221 	.globl _DMA_UR2T_CFG
                                    222 	.globl _DMA_UR1R_TXAL
                                    223 	.globl _DMA_UR1R_TXAH
                                    224 	.globl _DMA_UR1R_DONE
                                    225 	.globl _DMA_UR1R_AMT
                                    226 	.globl _DMA_UR1R_STA
                                    227 	.globl _DMA_UR1R_CR
                                    228 	.globl _DMA_UR1R_CFG
                                    229 	.globl _DMA_UR1T_TXAL
                                    230 	.globl _DMA_UR1T_TXAH
                                    231 	.globl _DMA_UR1T_DONE
                                    232 	.globl _DMA_URTX_AMT
                                    233 	.globl _DMA_UR1T_STA
                                    234 	.globl _DMA_UR1T_CR
                                    235 	.globl _DMA_UR1T_CFG
                                    236 	.globl _TM4PS
                                    237 	.globl _TM3PS
                                    238 	.globl _TM2PS
                                    239 	.globl _IRC48MCR
                                    240 	.globl _IRCDB
                                    241 	.globl _MCLKOCR
                                    242 	.globl _CKSEL
                                    243 	.globl _IRC32KCR
                                    244 	.globl _XOSCCR
                                    245 	.globl _HIRCCR
                                    246 	.globl _CLKDIV
                                    247 	.globl _DMA_SPI_CFG2
                                    248 	.globl _DMA_SPI_RXAL
                                    249 	.globl _DMA_SPI_RXAH
                                    250 	.globl _DMA_SPI_TXAL
                                    251 	.globl _DMA_SPI_TXAH
                                    252 	.globl _DMA_SPI_DONE
                                    253 	.globl _DMA_SPI_AMT
                                    254 	.globl _DMA_SPI_STA
                                    255 	.globl _DMA_SPI_CR
                                    256 	.globl _DMA_SPI_CFG
                                    257 	.globl _SSEC
                                    258 	.globl _SEC
                                    259 	.globl _MIN
                                    260 	.globl _HOUR
                                    261 	.globl _DAY
                                    262 	.globl _MONTH
                                    263 	.globl _YEAR
                                    264 	.globl _INISSEC
                                    265 	.globl _INISEC
                                    266 	.globl _INIMIN
                                    267 	.globl _INIHOUR
                                    268 	.globl _INIDAY
                                    269 	.globl _INIMONTH
                                    270 	.globl _INIYEAR
                                    271 	.globl _ALASSEC
                                    272 	.globl _ALASEC
                                    273 	.globl _ALAMIN
                                    274 	.globl _ALAHOUR
                                    275 	.globl _RTCIF
                                    276 	.globl _RTCIEN
                                    277 	.globl _RTCCFG
                                    278 	.globl _RTCCR
                                    279 	.globl _PWMB_OISR
                                    280 	.globl _PWMB_DTR
                                    281 	.globl _PWMB_BKR
                                    282 	.globl _PWMB_CCR4L
                                    283 	.globl _PWMB_CCR4H
                                    284 	.globl _PWMB_CCR3L
                                    285 	.globl _PWMB_CCR3H
                                    286 	.globl _PWMB_CCR2L
                                    287 	.globl _PWMB_CCR2H
                                    288 	.globl _PWMB_CCR1L
                                    289 	.globl _PWMB_CCR1H
                                    290 	.globl _PWMB_RCR
                                    291 	.globl _PWMB_ARRL
                                    292 	.globl _PWMB_ARRH
                                    293 	.globl _PWMB_PSCRL
                                    294 	.globl _PWMB_PSCRH
                                    295 	.globl _PWMB_CNTRL
                                    296 	.globl _PWMB_CNTRH
                                    297 	.globl _PWMB_CCER2
                                    298 	.globl _PWMB_CCER1
                                    299 	.globl _PWMB_CCMR4
                                    300 	.globl _PWMB_CCMR3
                                    301 	.globl _PWMB_CCMR2
                                    302 	.globl _PWMB_CCMR1
                                    303 	.globl _PWMB_EGR
                                    304 	.globl _PWMB_SR2
                                    305 	.globl _PWMB_SR1
                                    306 	.globl _PWMB_IER
                                    307 	.globl _PWMB_ETR
                                    308 	.globl _PWMB_SMCR
                                    309 	.globl _PWMB_CR2
                                    310 	.globl _PWMB_CR1
                                    311 	.globl _PWMA_OISR
                                    312 	.globl _PWMA_DTR
                                    313 	.globl _PWMA_BKR
                                    314 	.globl _PWMA_CCR4L
                                    315 	.globl _PWMA_CCR4H
                                    316 	.globl _PWMA_CCR3L
                                    317 	.globl _PWMA_CCR3H
                                    318 	.globl _PWMA_CCR2L
                                    319 	.globl _PWMA_CCR2H
                                    320 	.globl _PWMA_CCR1L
                                    321 	.globl _PWMA_CCR1H
                                    322 	.globl _PWMA_RCR
                                    323 	.globl _PWMA_ARRL
                                    324 	.globl _PWMA_ARRH
                                    325 	.globl _PWMA_PSCRL
                                    326 	.globl _PWMA_PSCRH
                                    327 	.globl _PWMA_CNTRL
                                    328 	.globl _PWMA_CNTRH
                                    329 	.globl _PWMA_CCER2
                                    330 	.globl _PWMA_CCER1
                                    331 	.globl _PWMA_CCMR4
                                    332 	.globl _PWMA_CCMR3
                                    333 	.globl _PWMA_CCMR2
                                    334 	.globl _PWMA_CCMR1
                                    335 	.globl _PWMA_EGR
                                    336 	.globl _PWMA_SR2
                                    337 	.globl _PWMA_SR1
                                    338 	.globl _PWMA_IER
                                    339 	.globl _PWMA_ETR
                                    340 	.globl _PWMA_SMCR
                                    341 	.globl _PWMA_CR2
                                    342 	.globl _PWMA_CR1
                                    343 	.globl _PWMB_IOAUX
                                    344 	.globl _PWMB_PS
                                    345 	.globl _PWMB_ENO
                                    346 	.globl _PWMB_ETRPS
                                    347 	.globl _PWMA_IOAUX
                                    348 	.globl _PWMA_PS
                                    349 	.globl _PWMA_ENO
                                    350 	.globl _PWMA_ETRPS
                                    351 	.globl _RSTFLAG
                                    352 	.globl _SPFUNC
                                    353 	.globl _OPCON
                                    354 	.globl _ARCON
                                    355 	.globl _MD4
                                    356 	.globl _MD5
                                    357 	.globl _MD0
                                    358 	.globl _MD1
                                    359 	.globl _MD2
                                    360 	.globl _MD3
                                    361 	.globl _DMA_LCM_RXAL
                                    362 	.globl _DMA_LCM_RXAH
                                    363 	.globl _DMA_LCM_TXAL
                                    364 	.globl _DMA_LCM_TXAH
                                    365 	.globl _DMA_LCM_DONE
                                    366 	.globl _DMA_LCM_AMT
                                    367 	.globl _DMA_LCM_STA
                                    368 	.globl _DMA_LCM_CR
                                    369 	.globl _DMA_LCM_CFG
                                    370 	.globl _LCMIDDAT
                                    371 	.globl _LCMIDDATH
                                    372 	.globl _LCMIDDATL
                                    373 	.globl _LCMSTA
                                    374 	.globl _LCMCR
                                    375 	.globl _LCMCFG2
                                    376 	.globl _LCMCFG
                                    377 	.globl _I2CMSAUX
                                    378 	.globl _I2CRXD
                                    379 	.globl _I2CTXD
                                    380 	.globl _I2CSLADR
                                    381 	.globl _I2CSLST
                                    382 	.globl _I2CSLCR
                                    383 	.globl _I2CMSST
                                    384 	.globl _I2CMSCR
                                    385 	.globl _I2CCFG
                                    386 	.globl _PINIPH
                                    387 	.globl _PINIPL
                                    388 	.globl _P5IE
                                    389 	.globl _P5DR
                                    390 	.globl _P5SR
                                    391 	.globl _P5NCS
                                    392 	.globl _P5PU
                                    393 	.globl _P5WKUE
                                    394 	.globl _P5IM1
                                    395 	.globl _P5IM0
                                    396 	.globl _P5INTF
                                    397 	.globl _P5INTE
                                    398 	.globl _P3IE
                                    399 	.globl _P3DR
                                    400 	.globl _P3SR
                                    401 	.globl _P3NCS
                                    402 	.globl _P3PU
                                    403 	.globl _P3WKUE
                                    404 	.globl _P3IM1
                                    405 	.globl _P3IM0
                                    406 	.globl _P3INTF
                                    407 	.globl _P3INTE
                                    408 	.globl _P2IE
                                    409 	.globl _P2DR
                                    410 	.globl _P2SR
                                    411 	.globl _P2NCS
                                    412 	.globl _P2PU
                                    413 	.globl _P2WKUE
                                    414 	.globl _P2IM1
                                    415 	.globl _P2IM0
                                    416 	.globl _P2INTF
                                    417 	.globl _P2INTE
                                    418 	.globl _P1IE
                                    419 	.globl _P1DR
                                    420 	.globl _P1SR
                                    421 	.globl _P1NCS
                                    422 	.globl _P1PU
                                    423 	.globl _P1WKUE
                                    424 	.globl _P1IM1
                                    425 	.globl _P1IM0
                                    426 	.globl _P1INTF
                                    427 	.globl _P1INTE
                                    428 	.globl _DMA_M2M_RXAL
                                    429 	.globl _DMA_M2M_RXAH
                                    430 	.globl _DMA_M2M_TXAL
                                    431 	.globl _DMA_M2M_TXAH
                                    432 	.globl _DMA_M2M_DONE
                                    433 	.globl _DMA_M2M_AMT
                                    434 	.globl _DMA_M2M_STA
                                    435 	.globl _DMA_M2M_CR
                                    436 	.globl _DMA_M2M_CFG
                                    437 	.globl _CMPEXCFG
                                    438 	.globl _DMA_ADC_CHSW1
                                    439 	.globl _DMA_ADC_CHSW0
                                    440 	.globl _DMA_ADC_CFG2
                                    441 	.globl _DMA_ADC_RXAL
                                    442 	.globl _DMA_ADC_RXAH
                                    443 	.globl _DMA_ADC_STA
                                    444 	.globl _DMA_ADC_CR
                                    445 	.globl _DMA_ADC_CFG
                                    446 	.globl _ADCEXCFG
                                    447 	.globl _ADCTIM
                                    448 	.globl _application_process_welcome_page
                                    449 	.globl _application_process_menu_page
                                    450 	.globl _application_process_step_control_page
                                    451 	.globl _application_process_step_control_set_frequency
                                    452 	.globl _application_process_step_control_set_microstepping
                                    453 	.globl _application_process_step_control_set_steps
                                    454 	.globl _application_process_distance_control_page
                                    455 	.globl _application_process_encoder_control_page
                                    456 	.globl _application_process_current_page
                                    457 ;--------------------------------------------------------
                                    458 ; special function registers
                                    459 ;--------------------------------------------------------
                                    460 	.area RSEG    (ABS,DATA)
      000000                        461 	.org 0x0000
                           0000BC   462 _ADC_CONTR	=	0x00bc
                           0000BD   463 _ADC_RESH	=	0x00bd
                           0000BE   464 _ADC_RESL	=	0x00be
                           00BDBE   465 _ADC_RES	=	0xbdbe
                           0000DE   466 _ADCCFG	=	0x00de
                           0000FA   467 _DMA_ADC_AMT	=	0x00fa
                           0000E6   468 _CMPCR1	=	0x00e6
                           0000E7   469 _CMPCR2	=	0x00e7
                           000082   470 _DPL	=	0x0082
                           000083   471 _DPH	=	0x0083
                           008382   472 _DP	=	0x8382
                           0000E3   473 _DPS	=	0x00e3
                           0000E4   474 _DPL1	=	0x00e4
                           0000E5   475 _DPH1	=	0x00e5
                           0000AE   476 _TA	=	0x00ae
                           000090   477 _P1	=	0x0090
                           000091   478 _P1M1	=	0x0091
                           000092   479 _P1M0	=	0x0092
                           0000A0   480 _P2	=	0x00a0
                           000095   481 _P2M1	=	0x0095
                           000096   482 _P2M0	=	0x0096
                           0000B0   483 _P3	=	0x00b0
                           0000B1   484 _P3M1	=	0x00b1
                           0000B2   485 _P3M0	=	0x00b2
                           0000C8   486 _P5	=	0x00c8
                           0000C9   487 _P5M1	=	0x00c9
                           0000CA   488 _P5M0	=	0x00ca
                           0000C2   489 _IAP_DATA	=	0x00c2
                           0000C3   490 _IAP_ADDRH	=	0x00c3
                           0000C4   491 _IAP_ADDRL	=	0x00c4
                           00C3C4   492 _IAP_ADDR	=	0xc3c4
                           0000C5   493 _IAP_CMD	=	0x00c5
                           0000C6   494 _IAP_TRIG	=	0x00c6
                           0000C7   495 _IAP_CONTR	=	0x00c7
                           0000F5   496 _IAP_TPS	=	0x00f5
                           00008F   497 _INT_CLKO	=	0x008f
                           0000A8   498 _IE1	=	0x00a8
                           0000B8   499 _IP1L	=	0x00b8
                           0000B7   500 _IP1H	=	0x00b7
                           0000AF   501 _IE2	=	0x00af
                           0000B5   502 _IP2L	=	0x00b5
                           0000B6   503 _IP2H	=	0x00b6
                           0000DF   504 _IP3L	=	0x00df
                           0000EE   505 _IP3H	=	0x00ee
                           000081   506 _SP	=	0x0081
                           0000D0   507 _PSW	=	0x00d0
                           0000E0   508 _ACC	=	0x00e0
                           0000F0   509 _B	=	0x00f0
                           000087   510 _PCON	=	0x0087
                           0000FF   511 _RSTCFG	=	0x00ff
                           0000A2   512 _P_SW1	=	0x00a2
                           0000BA   513 _P_SW2	=	0x00ba
                           0000A1   514 _BUS_SPEED	=	0x00a1
                           0000AA   515 _WKTCL	=	0x00aa
                           0000AB   516 _WKTCH	=	0x00ab
                           00ABAA   517 _WKTC	=	0xabaa
                           0000CD   518 _SPSTAT	=	0x00cd
                           0000CE   519 _SPCTL	=	0x00ce
                           0000CF   520 _SPDAT	=	0x00cf
                           00009D   521 _IRCBAND	=	0x009d
                           00009E   522 _LIRTRIM	=	0x009e
                           00009F   523 _IRTRIM	=	0x009f
                           000088   524 _TCON	=	0x0088
                           000089   525 _TMOD	=	0x0089
                           00008A   526 _T0L	=	0x008a
                           00008C   527 _T0H	=	0x008c
                           008C8A   528 _T0	=	0x8c8a
                           00008B   529 _T1L	=	0x008b
                           00008D   530 _T1H	=	0x008d
                           008D8B   531 _T1	=	0x8d8b
                           0000D7   532 _T2L	=	0x00d7
                           0000D6   533 _T2H	=	0x00d6
                           00D6D7   534 _T2	=	0xd6d7
                           00008E   535 _AUXR	=	0x008e
                           0000C1   536 _WDT_CONTR	=	0x00c1
                           0000D1   537 _T4T3M	=	0x00d1
                           0000D2   538 _T4H	=	0x00d2
                           0000D3   539 _T4L	=	0x00d3
                           00D2D3   540 _T4	=	0xd2d3
                           0000D4   541 _T3H	=	0x00d4
                           0000D5   542 _T3L	=	0x00d5
                           00D4D5   543 _T3	=	0xd4d5
                           0000EF   544 _AUXINTIF	=	0x00ef
                           0000A9   545 _SADDR	=	0x00a9
                           0000B9   546 _SADEN	=	0x00b9
                           000098   547 _S1CON	=	0x0098
                           000099   548 _S1BUF	=	0x0099
                           00009A   549 _S2CON	=	0x009a
                           00009B   550 _S2BUF	=	0x009b
                           0000AC   551 _S3CON	=	0x00ac
                           0000AD   552 _S3BUF	=	0x00ad
                           000084   553 _S4CON	=	0x0084
                           000085   554 _S4BUF	=	0x0085
                           0000DC   555 _USBCLK	=	0x00dc
                           0000EC   556 _USBDAT	=	0x00ec
                           0000F4   557 _USBCON	=	0x00f4
                           0000FC   558 _USBADR	=	0x00fc
                                    559 ;--------------------------------------------------------
                                    560 ; special function bits
                                    561 ;--------------------------------------------------------
                                    562 	.area RSEG    (ABS,DATA)
      000000                        563 	.org 0x0000
                           000090   564 _P1_0	=	0x0090
                           000091   565 _P1_1	=	0x0091
                           000092   566 _P1_2	=	0x0092
                           000093   567 _P1_3	=	0x0093
                           000094   568 _P1_4	=	0x0094
                           000095   569 _P1_5	=	0x0095
                           000096   570 _P1_6	=	0x0096
                           000097   571 _P1_7	=	0x0097
                           0000A0   572 _P2_0	=	0x00a0
                           0000A1   573 _P2_1	=	0x00a1
                           0000A2   574 _P2_2	=	0x00a2
                           0000A3   575 _P2_3	=	0x00a3
                           0000A4   576 _P2_4	=	0x00a4
                           0000A5   577 _P2_5	=	0x00a5
                           0000A6   578 _P2_6	=	0x00a6
                           0000A7   579 _P2_7	=	0x00a7
                           0000B0   580 _P3_0	=	0x00b0
                           0000B1   581 _P3_1	=	0x00b1
                           0000B2   582 _P3_2	=	0x00b2
                           0000B3   583 _P3_3	=	0x00b3
                           0000B4   584 _P3_4	=	0x00b4
                           0000B5   585 _P3_5	=	0x00b5
                           0000B6   586 _P3_6	=	0x00b6
                           0000B7   587 _P3_7	=	0x00b7
                           0000C8   588 _P5_0	=	0x00c8
                           0000C9   589 _P5_1	=	0x00c9
                           0000CA   590 _P5_2	=	0x00ca
                           0000CB   591 _P5_3	=	0x00cb
                           0000CC   592 _P5_4	=	0x00cc
                           0000CD   593 _P5_5	=	0x00cd
                           000088   594 _INT0TR	=	0x0088
                           00008A   595 _INT1TR	=	0x008a
                           0000A8   596 _INT0IE	=	0x00a8
                           0000AA   597 _INT1IE	=	0x00aa
                           0000AF   598 _EA	=	0x00af
                           0000D0   599 _P	=	0x00d0
                           0000D1   600 _F1	=	0x00d1
                           0000D2   601 _OV	=	0x00d2
                           0000D3   602 _RS0	=	0x00d3
                           0000D4   603 _RS1	=	0x00d4
                           0000D5   604 _F0	=	0x00d5
                           0000D6   605 _AC	=	0x00d6
                           0000D7   606 _CY	=	0x00d7
                           00008C   607 _T0RUN	=	0x008c
                           00008E   608 _T1RUN	=	0x008e
                           0000A9   609 _T0IE	=	0x00a9
                           0000AB   610 _T1IE	=	0x00ab
                           00009F   611 _S1SM0_FE	=	0x009f
                                    612 ;--------------------------------------------------------
                                    613 ; overlayable register banks
                                    614 ;--------------------------------------------------------
                                    615 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        616 	.ds 8
                                    617 ;--------------------------------------------------------
                                    618 ; internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area DSEG    (DATA)
                                    621 ;--------------------------------------------------------
                                    622 ; overlayable items in internal ram 
                                    623 ;--------------------------------------------------------
                                    624 ;--------------------------------------------------------
                                    625 ; indirectly addressable internal ram data
                                    626 ;--------------------------------------------------------
                                    627 	.area ISEG    (DATA)
                                    628 ;--------------------------------------------------------
                                    629 ; absolute internal ram data
                                    630 ;--------------------------------------------------------
                                    631 	.area IABS    (ABS,DATA)
                                    632 	.area IABS    (ABS,DATA)
                                    633 ;--------------------------------------------------------
                                    634 ; bit data
                                    635 ;--------------------------------------------------------
                                    636 	.area BSEG    (BIT)
                                    637 ;--------------------------------------------------------
                                    638 ; paged external ram data
                                    639 ;--------------------------------------------------------
                                    640 	.area PSEG    (PAG,XDATA)
                                    641 ;--------------------------------------------------------
                                    642 ; external ram data
                                    643 ;--------------------------------------------------------
                                    644 	.area XSEG    (XDATA)
                           00FEA8   645 _ADCTIM	=	0xfea8
                           00FEAD   646 _ADCEXCFG	=	0xfead
                           00FA10   647 _DMA_ADC_CFG	=	0xfa10
                           00FA11   648 _DMA_ADC_CR	=	0xfa11
                           00FA12   649 _DMA_ADC_STA	=	0xfa12
                           00FA17   650 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   651 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   652 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   653 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   654 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   655 _CMPEXCFG	=	0xfeae
                           00FA00   656 _DMA_M2M_CFG	=	0xfa00
                           00FA01   657 _DMA_M2M_CR	=	0xfa01
                           00FA02   658 _DMA_M2M_STA	=	0xfa02
                           00FA03   659 _DMA_M2M_AMT	=	0xfa03
                           00FA04   660 _DMA_M2M_DONE	=	0xfa04
                           00FA05   661 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   662 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   663 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   664 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   665 _P1INTE	=	0xfd01
                           00FD11   666 _P1INTF	=	0xfd11
                           00FD21   667 _P1IM0	=	0xfd21
                           00FD31   668 _P1IM1	=	0xfd31
                           00FD41   669 _P1WKUE	=	0xfd41
                           00FE11   670 _P1PU	=	0xfe11
                           00FE19   671 _P1NCS	=	0xfe19
                           00FE21   672 _P1SR	=	0xfe21
                           00FE29   673 _P1DR	=	0xfe29
                           00FE31   674 _P1IE	=	0xfe31
                           00FD02   675 _P2INTE	=	0xfd02
                           00FD12   676 _P2INTF	=	0xfd12
                           00FD22   677 _P2IM0	=	0xfd22
                           00FD32   678 _P2IM1	=	0xfd32
                           00FD42   679 _P2WKUE	=	0xfd42
                           00FE12   680 _P2PU	=	0xfe12
                           00FE1A   681 _P2NCS	=	0xfe1a
                           00FE22   682 _P2SR	=	0xfe22
                           00FE2A   683 _P2DR	=	0xfe2a
                           00FE32   684 _P2IE	=	0xfe32
                           00FD03   685 _P3INTE	=	0xfd03
                           00FD13   686 _P3INTF	=	0xfd13
                           00FD23   687 _P3IM0	=	0xfd23
                           00FD33   688 _P3IM1	=	0xfd33
                           00FD43   689 _P3WKUE	=	0xfd43
                           00FE13   690 _P3PU	=	0xfe13
                           00FE1B   691 _P3NCS	=	0xfe1b
                           00FE23   692 _P3SR	=	0xfe23
                           00FE2B   693 _P3DR	=	0xfe2b
                           00FE33   694 _P3IE	=	0xfe33
                           00FD05   695 _P5INTE	=	0xfd05
                           00FD15   696 _P5INTF	=	0xfd15
                           00FD25   697 _P5IM0	=	0xfd25
                           00FD35   698 _P5IM1	=	0xfd35
                           00FD45   699 _P5WKUE	=	0xfd45
                           00FE15   700 _P5PU	=	0xfe15
                           00FE1D   701 _P5NCS	=	0xfe1d
                           00FE25   702 _P5SR	=	0xfe25
                           00FE2D   703 _P5DR	=	0xfe2d
                           00FE35   704 _P5IE	=	0xfe35
                           00FD60   705 _PINIPL	=	0xfd60
                           00FD61   706 _PINIPH	=	0xfd61
                           00FE80   707 _I2CCFG	=	0xfe80
                           00FE81   708 _I2CMSCR	=	0xfe81
                           00FE82   709 _I2CMSST	=	0xfe82
                           00FE83   710 _I2CSLCR	=	0xfe83
                           00FE84   711 _I2CSLST	=	0xfe84
                           00FE85   712 _I2CSLADR	=	0xfe85
                           00FE86   713 _I2CTXD	=	0xfe86
                           00FE87   714 _I2CRXD	=	0xfe87
                           00FE88   715 _I2CMSAUX	=	0xfe88
                           00FE50   716 _LCMCFG	=	0xfe50
                           00FE51   717 _LCMCFG2	=	0xfe51
                           00FE52   718 _LCMCR	=	0xfe52
                           00FE53   719 _LCMSTA	=	0xfe53
                           00FE54   720 _LCMIDDATL	=	0xfe54
                           00FE55   721 _LCMIDDATH	=	0xfe55
                           00FE54   722 _LCMIDDAT	=	0xfe54
                           00FA70   723 _DMA_LCM_CFG	=	0xfa70
                           00FA71   724 _DMA_LCM_CR	=	0xfa71
                           00FA72   725 _DMA_LCM_STA	=	0xfa72
                           00FA73   726 _DMA_LCM_AMT	=	0xfa73
                           00FA74   727 _DMA_LCM_DONE	=	0xfa74
                           00FA75   728 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   729 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   730 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   731 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   732 _MD3	=	0xfcf0
                           00FCF1   733 _MD2	=	0xfcf1
                           00FCF2   734 _MD1	=	0xfcf2
                           00FCF3   735 _MD0	=	0xfcf3
                           00FCF4   736 _MD5	=	0xfcf4
                           00FCF5   737 _MD4	=	0xfcf5
                           00FCF6   738 _ARCON	=	0xfcf6
                           00FCF7   739 _OPCON	=	0xfcf7
                           00FE08   740 _SPFUNC	=	0xfe08
                           00FE09   741 _RSTFLAG	=	0xfe09
                           00FEB0   742 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   743 _PWMA_ENO	=	0xfeb1
                           00FEB2   744 _PWMA_PS	=	0xfeb2
                           00FEB3   745 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   746 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   747 _PWMB_ENO	=	0xfeb5
                           00FEB6   748 _PWMB_PS	=	0xfeb6
                           00FEB7   749 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   750 _PWMA_CR1	=	0xfec0
                           00FEC1   751 _PWMA_CR2	=	0xfec1
                           00FEC2   752 _PWMA_SMCR	=	0xfec2
                           00FEC3   753 _PWMA_ETR	=	0xfec3
                           00FEC4   754 _PWMA_IER	=	0xfec4
                           00FEC5   755 _PWMA_SR1	=	0xfec5
                           00FEC6   756 _PWMA_SR2	=	0xfec6
                           00FEC7   757 _PWMA_EGR	=	0xfec7
                           00FEC8   758 _PWMA_CCMR1	=	0xfec8
                           00FEC9   759 _PWMA_CCMR2	=	0xfec9
                           00FECA   760 _PWMA_CCMR3	=	0xfeca
                           00FECB   761 _PWMA_CCMR4	=	0xfecb
                           00FECC   762 _PWMA_CCER1	=	0xfecc
                           00FECD   763 _PWMA_CCER2	=	0xfecd
                           00FECE   764 _PWMA_CNTRH	=	0xfece
                           00FECF   765 _PWMA_CNTRL	=	0xfecf
                           00FED0   766 _PWMA_PSCRH	=	0xfed0
                           00FED1   767 _PWMA_PSCRL	=	0xfed1
                           00FED2   768 _PWMA_ARRH	=	0xfed2
                           00FED3   769 _PWMA_ARRL	=	0xfed3
                           00FED4   770 _PWMA_RCR	=	0xfed4
                           00FED5   771 _PWMA_CCR1H	=	0xfed5
                           00FED6   772 _PWMA_CCR1L	=	0xfed6
                           00FED7   773 _PWMA_CCR2H	=	0xfed7
                           00FED8   774 _PWMA_CCR2L	=	0xfed8
                           00FED9   775 _PWMA_CCR3H	=	0xfed9
                           00FEDA   776 _PWMA_CCR3L	=	0xfeda
                           00FEDB   777 _PWMA_CCR4H	=	0xfedb
                           00FEDC   778 _PWMA_CCR4L	=	0xfedc
                           00FEDD   779 _PWMA_BKR	=	0xfedd
                           00FEDE   780 _PWMA_DTR	=	0xfede
                           00FEDF   781 _PWMA_OISR	=	0xfedf
                           00FEE0   782 _PWMB_CR1	=	0xfee0
                           00FEE1   783 _PWMB_CR2	=	0xfee1
                           00FEE2   784 _PWMB_SMCR	=	0xfee2
                           00FEE3   785 _PWMB_ETR	=	0xfee3
                           00FEE4   786 _PWMB_IER	=	0xfee4
                           00FEE5   787 _PWMB_SR1	=	0xfee5
                           00FEE6   788 _PWMB_SR2	=	0xfee6
                           00FEE7   789 _PWMB_EGR	=	0xfee7
                           00FEE8   790 _PWMB_CCMR1	=	0xfee8
                           00FEE9   791 _PWMB_CCMR2	=	0xfee9
                           00FEEA   792 _PWMB_CCMR3	=	0xfeea
                           00FEEB   793 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   794 _PWMB_CCER1	=	0xfeec
                           00FEED   795 _PWMB_CCER2	=	0xfeed
                           00FEEE   796 _PWMB_CNTRH	=	0xfeee
                           00FEEF   797 _PWMB_CNTRL	=	0xfeef
                           00FEF0   798 _PWMB_PSCRH	=	0xfef0
                           00FEF1   799 _PWMB_PSCRL	=	0xfef1
                           00FEF2   800 _PWMB_ARRH	=	0xfef2
                           00FEF3   801 _PWMB_ARRL	=	0xfef3
                           00FEF4   802 _PWMB_RCR	=	0xfef4
                           00FEF5   803 _PWMB_CCR1H	=	0xfef5
                           00FEF6   804 _PWMB_CCR1L	=	0xfef6
                           00FEF7   805 _PWMB_CCR2H	=	0xfef7
                           00FEF8   806 _PWMB_CCR2L	=	0xfef8
                           00FEF9   807 _PWMB_CCR3H	=	0xfef9
                           00FEFA   808 _PWMB_CCR3L	=	0xfefa
                           00FEFB   809 _PWMB_CCR4H	=	0xfefb
                           00FEFC   810 _PWMB_CCR4L	=	0xfefc
                           00FEFD   811 _PWMB_BKR	=	0xfefd
                           00FEFE   812 _PWMB_DTR	=	0xfefe
                           00FEFF   813 _PWMB_OISR	=	0xfeff
                           00FE60   814 _RTCCR	=	0xfe60
                           00FE61   815 _RTCCFG	=	0xfe61
                           00FE62   816 _RTCIEN	=	0xfe62
                           00FE63   817 _RTCIF	=	0xfe63
                           00FE64   818 _ALAHOUR	=	0xfe64
                           00FE65   819 _ALAMIN	=	0xfe65
                           00FE66   820 _ALASEC	=	0xfe66
                           00FE67   821 _ALASSEC	=	0xfe67
                           00FE68   822 _INIYEAR	=	0xfe68
                           00FE69   823 _INIMONTH	=	0xfe69
                           00FE6A   824 _INIDAY	=	0xfe6a
                           00FE6B   825 _INIHOUR	=	0xfe6b
                           00FE6C   826 _INIMIN	=	0xfe6c
                           00FE6D   827 _INISEC	=	0xfe6d
                           00FE6E   828 _INISSEC	=	0xfe6e
                           00FE70   829 _YEAR	=	0xfe70
                           00FE71   830 _MONTH	=	0xfe71
                           00FE72   831 _DAY	=	0xfe72
                           00FE73   832 _HOUR	=	0xfe73
                           00FE74   833 _MIN	=	0xfe74
                           00FE75   834 _SEC	=	0xfe75
                           00FE76   835 _SSEC	=	0xfe76
                           00FA20   836 _DMA_SPI_CFG	=	0xfa20
                           00FA21   837 _DMA_SPI_CR	=	0xfa21
                           00FA22   838 _DMA_SPI_STA	=	0xfa22
                           00FA23   839 _DMA_SPI_AMT	=	0xfa23
                           00FA24   840 _DMA_SPI_DONE	=	0xfa24
                           00FA25   841 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   842 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   843 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   844 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   845 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   846 _CLKDIV	=	0xfe01
                           00FE02   847 _HIRCCR	=	0xfe02
                           00FE03   848 _XOSCCR	=	0xfe03
                           00FE04   849 _IRC32KCR	=	0xfe04
                           00FE00   850 _CKSEL	=	0xfe00
                           00FE05   851 _MCLKOCR	=	0xfe05
                           00FE06   852 _IRCDB	=	0xfe06
                           00FE07   853 _IRC48MCR	=	0xfe07
                           00FEA2   854 _TM2PS	=	0xfea2
                           00FEA3   855 _TM3PS	=	0xfea3
                           00FEA4   856 _TM4PS	=	0xfea4
                           00FA30   857 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   858 _DMA_UR1T_CR	=	0xfa31
                           00FA32   859 _DMA_UR1T_STA	=	0xfa32
                           00FA33   860 _DMA_URTX_AMT	=	0xfa33
                           00FA34   861 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   862 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   863 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   864 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   865 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   866 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   867 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   868 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   869 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   870 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   871 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   872 _DMA_UR2T_CR	=	0xfa31
                           00FA32   873 _DMA_UR2T_STA	=	0xfa32
                           00FA33   874 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   875 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   876 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   877 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   878 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   879 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   880 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   881 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   882 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   883 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   884 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   885 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   886 _DMA_UR3T_CR	=	0xfa31
                           00FA32   887 _DMA_UR3T_STA	=	0xfa32
                           00FA33   888 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   889 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   890 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   891 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   892 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   893 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   894 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   895 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   896 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   897 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   898 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   899 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   900 _DMA_UR4T_CR	=	0xfa31
                           00FA32   901 _DMA_UR4T_STA	=	0xfa32
                           00FA33   902 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   903 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   904 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   905 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   906 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   907 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   908 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   909 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   910 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   911 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   912 _DMA_UR4R_TXAL	=	0xfa3e
      000563                        913 _uartGetCharacter_result_65536_69:
      000563                        914 	.ds 1
                                    915 ;--------------------------------------------------------
                                    916 ; absolute external ram data
                                    917 ;--------------------------------------------------------
                                    918 	.area XABS    (ABS,XDATA)
                                    919 ;--------------------------------------------------------
                                    920 ; external initialized ram data
                                    921 ;--------------------------------------------------------
                                    922 	.area XISEG   (XDATA)
      000699                        923 _current_page::
      000699                        924 	.ds 1
      00069A                        925 _application_process_func::
      00069A                        926 	.ds 16
      0006AA                        927 _float_digit_pointer::
      0006AA                        928 	.ds 1
      0006AB                        929 _float_digits::
      0006AB                        930 	.ds 5
      0006B0                        931 _inputs::
      0006B0                        932 	.ds 16
      0006C0                        933 _stepper_movement::
      0006C0                        934 	.ds 11
                                    935 	.area HOME    (CODE)
                                    936 	.area GSINIT0 (CODE)
                                    937 	.area GSINIT1 (CODE)
                                    938 	.area GSINIT2 (CODE)
                                    939 	.area GSINIT3 (CODE)
                                    940 	.area GSINIT4 (CODE)
                                    941 	.area GSINIT5 (CODE)
                                    942 	.area GSINIT  (CODE)
                                    943 	.area GSFINAL (CODE)
                                    944 	.area CSEG    (CODE)
                                    945 ;--------------------------------------------------------
                                    946 ; global & static initialisations
                                    947 ;--------------------------------------------------------
                                    948 	.area HOME    (CODE)
                                    949 	.area GSINIT  (CODE)
                                    950 	.area GSFINAL (CODE)
                                    951 	.area GSINIT  (CODE)
                                    952 ;--------------------------------------------------------
                                    953 ; Home
                                    954 ;--------------------------------------------------------
                                    955 	.area HOME    (CODE)
                                    956 	.area HOME    (CODE)
                                    957 ;--------------------------------------------------------
                                    958 ; code
                                    959 ;--------------------------------------------------------
                                    960 	.area CSEG    (CODE)
                                    961 ;------------------------------------------------------------
                                    962 ;Allocation info for local variables in function 'application_process_welcome_page'
                                    963 ;------------------------------------------------------------
                                    964 ;	application.c:34: void application_process_welcome_page(void) {
                                    965 ;	-----------------------------------------
                                    966 ;	 function application_process_welcome_page
                                    967 ;	-----------------------------------------
      0037D5                        968 _application_process_welcome_page:
                           000007   969 	ar7 = 0x07
                           000006   970 	ar6 = 0x06
                           000005   971 	ar5 = 0x05
                           000004   972 	ar4 = 0x04
                           000003   973 	ar3 = 0x03
                           000002   974 	ar2 = 0x02
                           000001   975 	ar1 = 0x01
                           000000   976 	ar0 = 0x00
                                    977 ;	application.c:37: inputs.button1.current_val = inputs.button1.get_func();
      0037D5 90 06 B1         [24]  978 	mov	dptr,#(_inputs + 0x0001)
      0037D8 E0               [24]  979 	movx	a,@dptr
      0037D9 FE               [12]  980 	mov	r6,a
      0037DA A3               [24]  981 	inc	dptr
      0037DB E0               [24]  982 	movx	a,@dptr
      0037DC FF               [12]  983 	mov	r7,a
      0037DD C0 07            [24]  984 	push	ar7
      0037DF 8E 82            [24]  985 	mov	dpl,r6
      0037E1 8F 83            [24]  986 	mov	dph,r7
      0037E3 12 00 E1         [24]  987 	lcall	__sdcc_call_dptr
      0037E6 AE 82            [24]  988 	mov	r6,dpl
      0037E8 D0 07            [24]  989 	pop	ar7
      0037EA 90 06 B0         [24]  990 	mov	dptr,#_inputs
      0037ED EE               [12]  991 	mov	a,r6
      0037EE F0               [24]  992 	movx	@dptr,a
                                    993 ;	application.c:38: inputs.button2.current_val = inputs.button2.get_func();
      0037EF 90 06 B4         [24]  994 	mov	dptr,#(_inputs + 0x0004)
      0037F2 E0               [24]  995 	movx	a,@dptr
      0037F3 FE               [12]  996 	mov	r6,a
      0037F4 A3               [24]  997 	inc	dptr
      0037F5 E0               [24]  998 	movx	a,@dptr
      0037F6 FF               [12]  999 	mov	r7,a
      0037F7 C0 07            [24] 1000 	push	ar7
      0037F9 8E 82            [24] 1001 	mov	dpl,r6
      0037FB 8F 83            [24] 1002 	mov	dph,r7
      0037FD 12 00 E1         [24] 1003 	lcall	__sdcc_call_dptr
      003800 AE 82            [24] 1004 	mov	r6,dpl
      003802 D0 07            [24] 1005 	pop	ar7
      003804 90 06 B3         [24] 1006 	mov	dptr,#(_inputs + 0x0003)
      003807 EE               [12] 1007 	mov	a,r6
      003808 F0               [24] 1008 	movx	@dptr,a
                                   1009 ;	application.c:39: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003809 90 06 B7         [24] 1010 	mov	dptr,#(_inputs + 0x0007)
      00380C E0               [24] 1011 	movx	a,@dptr
      00380D FE               [12] 1012 	mov	r6,a
      00380E A3               [24] 1013 	inc	dptr
      00380F E0               [24] 1014 	movx	a,@dptr
      003810 FF               [12] 1015 	mov	r7,a
      003811 C0 07            [24] 1016 	push	ar7
      003813 8E 82            [24] 1017 	mov	dpl,r6
      003815 8F 83            [24] 1018 	mov	dph,r7
      003817 12 00 E1         [24] 1019 	lcall	__sdcc_call_dptr
      00381A AE 82            [24] 1020 	mov	r6,dpl
      00381C D0 07            [24] 1021 	pop	ar7
      00381E 90 06 B6         [24] 1022 	mov	dptr,#(_inputs + 0x0006)
      003821 EE               [12] 1023 	mov	a,r6
      003822 F0               [24] 1024 	movx	@dptr,a
                                   1025 ;	application.c:42: if (inputs.button1.current_val == BUTTON_PRESSED \
      003823 90 06 B0         [24] 1026 	mov	dptr,#_inputs
      003826 E0               [24] 1027 	movx	a,@dptr
      003827 FF               [12] 1028 	mov	r7,a
      003828 BF 01 02         [24] 1029 	cjne	r7,#0x01,00115$
      00382B 80 12            [24] 1030 	sjmp	00101$
      00382D                       1031 00115$:
      00382D 90 06 B3         [24] 1032 	mov	dptr,#(_inputs + 0x0003)
      003830 E0               [24] 1033 	movx	a,@dptr
      003831 FF               [12] 1034 	mov	r7,a
      003832 BF 01 02         [24] 1035 	cjne	r7,#0x01,00116$
      003835 80 08            [24] 1036 	sjmp	00101$
      003837                       1037 00116$:
      003837 90 06 B6         [24] 1038 	mov	dptr,#(_inputs + 0x0006)
      00383A E0               [24] 1039 	movx	a,@dptr
      00383B FF               [12] 1040 	mov	r7,a
      00383C BF 01 0C         [24] 1041 	cjne	r7,#0x01,00105$
      00383F                       1042 00101$:
                                   1043 ;	application.c:45: current_page = MENU_PAGE;
      00383F 90 06 99         [24] 1044 	mov	dptr,#_current_page
      003842 74 01            [12] 1045 	mov	a,#0x01
      003844 F0               [24] 1046 	movx	@dptr,a
                                   1047 ;	application.c:46: display_menu_page(STEP_CONTROL_PAGE_SELECTED);
      003845 75 82 00         [24] 1048 	mov	dpl,#0x00
                                   1049 ;	application.c:47: return;
                                   1050 ;	application.c:50: }
      003848 02 40 DE         [24] 1051 	ljmp	_display_menu_page
      00384B                       1052 00105$:
      00384B 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'application_process_menu_page'
                                   1056 ;------------------------------------------------------------
                                   1057 ;	application.c:52: void application_process_menu_page(void) {
                                   1058 ;	-----------------------------------------
                                   1059 ;	 function application_process_menu_page
                                   1060 ;	-----------------------------------------
      00384C                       1061 _application_process_menu_page:
                                   1062 ;	application.c:55: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      00384C 90 06 BE         [24] 1063 	mov	dptr,#(_inputs + 0x000e)
      00384F E0               [24] 1064 	movx	a,@dptr
      003850 FE               [12] 1065 	mov	r6,a
      003851 A3               [24] 1066 	inc	dptr
      003852 E0               [24] 1067 	movx	a,@dptr
      003853 FF               [12] 1068 	mov	r7,a
      003854 8E 82            [24] 1069 	mov	dpl,r6
      003856 8F 83            [24] 1070 	mov	dph,r7
      003858 12 00 E1         [24] 1071 	lcall	__sdcc_call_dptr
      00385B AE 82            [24] 1072 	mov	r6,dpl
      00385D AF 83            [24] 1073 	mov	r7,dph
      00385F 90 06 BC         [24] 1074 	mov	dptr,#(_inputs + 0x000c)
      003862 EE               [12] 1075 	mov	a,r6
      003863 F0               [24] 1076 	movx	@dptr,a
      003864 EF               [12] 1077 	mov	a,r7
      003865 A3               [24] 1078 	inc	dptr
      003866 F0               [24] 1079 	movx	@dptr,a
                                   1080 ;	application.c:56: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003867 90 06 B7         [24] 1081 	mov	dptr,#(_inputs + 0x0007)
      00386A E0               [24] 1082 	movx	a,@dptr
      00386B FE               [12] 1083 	mov	r6,a
      00386C A3               [24] 1084 	inc	dptr
      00386D E0               [24] 1085 	movx	a,@dptr
      00386E FF               [12] 1086 	mov	r7,a
      00386F C0 07            [24] 1087 	push	ar7
      003871 8E 82            [24] 1088 	mov	dpl,r6
      003873 8F 83            [24] 1089 	mov	dph,r7
      003875 12 00 E1         [24] 1090 	lcall	__sdcc_call_dptr
      003878 AE 82            [24] 1091 	mov	r6,dpl
      00387A D0 07            [24] 1092 	pop	ar7
      00387C 90 06 B6         [24] 1093 	mov	dptr,#(_inputs + 0x0006)
      00387F EE               [12] 1094 	mov	a,r6
      003880 F0               [24] 1095 	movx	@dptr,a
                                   1096 ;	application.c:60: if (inputs.encoder_value.current_val >= CONTROL_PAGE_NUM) {
      003881 90 06 BC         [24] 1097 	mov	dptr,#(_inputs + 0x000c)
      003884 E0               [24] 1098 	movx	a,@dptr
      003885 FE               [12] 1099 	mov	r6,a
      003886 A3               [24] 1100 	inc	dptr
      003887 E0               [24] 1101 	movx	a,@dptr
      003888 FF               [12] 1102 	mov	r7,a
      003889 C3               [12] 1103 	clr	c
      00388A EE               [12] 1104 	mov	a,r6
      00388B 94 03            [12] 1105 	subb	a,#0x03
      00388D EF               [12] 1106 	mov	a,r7
      00388E 64 80            [12] 1107 	xrl	a,#0x80
      003890 94 80            [12] 1108 	subb	a,#0x80
      003892 40 20            [24] 1109 	jc	00104$
                                   1110 ;	application.c:61: encoder_count_reset();
      003894 12 2C C7         [24] 1111 	lcall	_encoder_count_reset
                                   1112 ;	application.c:62: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003897 90 06 BE         [24] 1113 	mov	dptr,#(_inputs + 0x000e)
      00389A E0               [24] 1114 	movx	a,@dptr
      00389B FC               [12] 1115 	mov	r4,a
      00389C A3               [24] 1116 	inc	dptr
      00389D E0               [24] 1117 	movx	a,@dptr
      00389E FD               [12] 1118 	mov	r5,a
      00389F 8C 82            [24] 1119 	mov	dpl,r4
      0038A1 8D 83            [24] 1120 	mov	dph,r5
      0038A3 12 00 E1         [24] 1121 	lcall	__sdcc_call_dptr
      0038A6 AC 82            [24] 1122 	mov	r4,dpl
      0038A8 AD 83            [24] 1123 	mov	r5,dph
      0038AA 90 06 BC         [24] 1124 	mov	dptr,#(_inputs + 0x000c)
      0038AD EC               [12] 1125 	mov	a,r4
      0038AE F0               [24] 1126 	movx	@dptr,a
      0038AF ED               [12] 1127 	mov	a,r5
      0038B0 A3               [24] 1128 	inc	dptr
      0038B1 F0               [24] 1129 	movx	@dptr,a
      0038B2 80 25            [24] 1130 	sjmp	00105$
      0038B4                       1131 00104$:
                                   1132 ;	application.c:64: } else if (inputs.encoder_value.current_val < 0) {
      0038B4 EF               [12] 1133 	mov	a,r7
      0038B5 30 E7 21         [24] 1134 	jnb	acc.7,00105$
                                   1135 ;	application.c:65: encoder_count_set(CONTROL_PAGE_NUM-1);
      0038B8 90 00 02         [24] 1136 	mov	dptr,#0x0002
      0038BB 12 2C CF         [24] 1137 	lcall	_encoder_count_set
                                   1138 ;	application.c:66: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      0038BE 90 06 BE         [24] 1139 	mov	dptr,#(_inputs + 0x000e)
      0038C1 E0               [24] 1140 	movx	a,@dptr
      0038C2 FE               [12] 1141 	mov	r6,a
      0038C3 A3               [24] 1142 	inc	dptr
      0038C4 E0               [24] 1143 	movx	a,@dptr
      0038C5 FF               [12] 1144 	mov	r7,a
      0038C6 8E 82            [24] 1145 	mov	dpl,r6
      0038C8 8F 83            [24] 1146 	mov	dph,r7
      0038CA 12 00 E1         [24] 1147 	lcall	__sdcc_call_dptr
      0038CD AE 82            [24] 1148 	mov	r6,dpl
      0038CF AF 83            [24] 1149 	mov	r7,dph
      0038D1 90 06 BC         [24] 1150 	mov	dptr,#(_inputs + 0x000c)
      0038D4 EE               [12] 1151 	mov	a,r6
      0038D5 F0               [24] 1152 	movx	@dptr,a
      0038D6 EF               [12] 1153 	mov	a,r7
      0038D7 A3               [24] 1154 	inc	dptr
      0038D8 F0               [24] 1155 	movx	@dptr,a
      0038D9                       1156 00105$:
                                   1157 ;	application.c:69: if(inputs.encoder_button.current_val == BUTTON_PRESSED) {
      0038D9 90 06 B6         [24] 1158 	mov	dptr,#(_inputs + 0x0006)
      0038DC E0               [24] 1159 	movx	a,@dptr
      0038DD FF               [12] 1160 	mov	r7,a
      0038DE BF 01 44         [24] 1161 	cjne	r7,#0x01,00111$
                                   1162 ;	application.c:70: switch(inputs.encoder_value.current_val) {
      0038E1 90 06 BC         [24] 1163 	mov	dptr,#(_inputs + 0x000c)
      0038E4 E0               [24] 1164 	movx	a,@dptr
      0038E5 FE               [12] 1165 	mov	r6,a
      0038E6 A3               [24] 1166 	inc	dptr
      0038E7 E0               [24] 1167 	movx	a,@dptr
      0038E8 FF               [12] 1168 	mov	r7,a
      0038E9 BE 00 05         [24] 1169 	cjne	r6,#0x00,00142$
      0038EC BF 00 02         [24] 1170 	cjne	r7,#0x00,00142$
      0038EF 80 10            [24] 1171 	sjmp	00106$
      0038F1                       1172 00142$:
      0038F1 BE 01 05         [24] 1173 	cjne	r6,#0x01,00143$
      0038F4 BF 00 02         [24] 1174 	cjne	r7,#0x00,00143$
      0038F7 80 14            [24] 1175 	sjmp	00107$
      0038F9                       1176 00143$:
                                   1177 ;	application.c:71: case 0:
      0038F9 BE 02 29         [24] 1178 	cjne	r6,#0x02,00111$
      0038FC BF 00 26         [24] 1179 	cjne	r7,#0x00,00111$
      0038FF 80 18            [24] 1180 	sjmp	00108$
      003901                       1181 00106$:
                                   1182 ;	application.c:72: current_page = STEP_CONTROL_PAGE;
      003901 90 06 99         [24] 1183 	mov	dptr,#_current_page
      003904 74 02            [12] 1184 	mov	a,#0x02
      003906 F0               [24] 1185 	movx	@dptr,a
                                   1186 ;	application.c:73: encoder_count_reset();
      003907 12 2C C7         [24] 1187 	lcall	_encoder_count_reset
                                   1188 ;	application.c:74: display_step_control_page_first_time();
                                   1189 ;	application.c:75: return;
                                   1190 ;	application.c:77: case 1:
      00390A 02 42 2D         [24] 1191 	ljmp	_display_step_control_page_first_time
      00390D                       1192 00107$:
                                   1193 ;	application.c:78: current_page = DISTANCE_CONTROL_PAGE;
      00390D 90 06 99         [24] 1194 	mov	dptr,#_current_page
      003910 74 03            [12] 1195 	mov	a,#0x03
      003912 F0               [24] 1196 	movx	@dptr,a
                                   1197 ;	application.c:79: encoder_count_reset();
      003913 12 2C C7         [24] 1198 	lcall	_encoder_count_reset
                                   1199 ;	application.c:80: display_distance_control_page_first_time();
                                   1200 ;	application.c:81: return;
                                   1201 ;	application.c:83: case 2:
      003916 02 45 F0         [24] 1202 	ljmp	_display_distance_control_page_first_time
      003919                       1203 00108$:
                                   1204 ;	application.c:84: current_page = ENCODER_CONTROL_PAGE;
      003919 90 06 99         [24] 1205 	mov	dptr,#_current_page
      00391C 74 04            [12] 1206 	mov	a,#0x04
      00391E F0               [24] 1207 	movx	@dptr,a
                                   1208 ;	application.c:85: encoder_count_reset();
      00391F 12 2C C7         [24] 1209 	lcall	_encoder_count_reset
                                   1210 ;	application.c:86: display_encoder_control_page_first_time();
                                   1211 ;	application.c:87: return;
                                   1212 ;	application.c:88: }
      003922 02 46 0B         [24] 1213 	ljmp	_display_encoder_control_page_first_time
      003925                       1214 00111$:
                                   1215 ;	application.c:92: display_menu_page(inputs.encoder_value.current_val);
      003925 90 06 BC         [24] 1216 	mov	dptr,#(_inputs + 0x000c)
      003928 E0               [24] 1217 	movx	a,@dptr
      003929 F5 82            [12] 1218 	mov	dpl,a
                                   1219 ;	application.c:94: }
      00392B 02 40 DE         [24] 1220 	ljmp	_display_menu_page
                                   1221 ;------------------------------------------------------------
                                   1222 ;Allocation info for local variables in function 'application_process_step_control_page'
                                   1223 ;------------------------------------------------------------
                                   1224 ;	application.c:96: void application_process_step_control_page(void) {
                                   1225 ;	-----------------------------------------
                                   1226 ;	 function application_process_step_control_page
                                   1227 ;	-----------------------------------------
      00392E                       1228 _application_process_step_control_page:
                                   1229 ;	application.c:99: inputs.button1.current_val = inputs.button1.get_func();
      00392E 90 06 B1         [24] 1230 	mov	dptr,#(_inputs + 0x0001)
      003931 E0               [24] 1231 	movx	a,@dptr
      003932 FE               [12] 1232 	mov	r6,a
      003933 A3               [24] 1233 	inc	dptr
      003934 E0               [24] 1234 	movx	a,@dptr
      003935 FF               [12] 1235 	mov	r7,a
      003936 C0 07            [24] 1236 	push	ar7
      003938 8E 82            [24] 1237 	mov	dpl,r6
      00393A 8F 83            [24] 1238 	mov	dph,r7
      00393C 12 00 E1         [24] 1239 	lcall	__sdcc_call_dptr
      00393F AE 82            [24] 1240 	mov	r6,dpl
      003941 D0 07            [24] 1241 	pop	ar7
      003943 90 06 B0         [24] 1242 	mov	dptr,#_inputs
      003946 EE               [12] 1243 	mov	a,r6
      003947 F0               [24] 1244 	movx	@dptr,a
                                   1245 ;	application.c:100: inputs.button2.current_val = inputs.button2.get_func();
      003948 90 06 B4         [24] 1246 	mov	dptr,#(_inputs + 0x0004)
      00394B E0               [24] 1247 	movx	a,@dptr
      00394C FE               [12] 1248 	mov	r6,a
      00394D A3               [24] 1249 	inc	dptr
      00394E E0               [24] 1250 	movx	a,@dptr
      00394F FF               [12] 1251 	mov	r7,a
      003950 C0 07            [24] 1252 	push	ar7
      003952 8E 82            [24] 1253 	mov	dpl,r6
      003954 8F 83            [24] 1254 	mov	dph,r7
      003956 12 00 E1         [24] 1255 	lcall	__sdcc_call_dptr
      003959 AE 82            [24] 1256 	mov	r6,dpl
      00395B D0 07            [24] 1257 	pop	ar7
      00395D 90 06 B3         [24] 1258 	mov	dptr,#(_inputs + 0x0003)
      003960 EE               [12] 1259 	mov	a,r6
      003961 F0               [24] 1260 	movx	@dptr,a
                                   1261 ;	application.c:101: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003962 90 06 B7         [24] 1262 	mov	dptr,#(_inputs + 0x0007)
      003965 E0               [24] 1263 	movx	a,@dptr
      003966 FE               [12] 1264 	mov	r6,a
      003967 A3               [24] 1265 	inc	dptr
      003968 E0               [24] 1266 	movx	a,@dptr
      003969 FF               [12] 1267 	mov	r7,a
      00396A C0 07            [24] 1268 	push	ar7
      00396C 8E 82            [24] 1269 	mov	dpl,r6
      00396E 8F 83            [24] 1270 	mov	dph,r7
      003970 12 00 E1         [24] 1271 	lcall	__sdcc_call_dptr
      003973 AE 82            [24] 1272 	mov	r6,dpl
      003975 D0 07            [24] 1273 	pop	ar7
      003977 90 06 B6         [24] 1274 	mov	dptr,#(_inputs + 0x0006)
      00397A EE               [12] 1275 	mov	a,r6
      00397B F0               [24] 1276 	movx	@dptr,a
                                   1277 ;	application.c:102: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      00397C 90 06 BE         [24] 1278 	mov	dptr,#(_inputs + 0x000e)
      00397F E0               [24] 1279 	movx	a,@dptr
      003980 FE               [12] 1280 	mov	r6,a
      003981 A3               [24] 1281 	inc	dptr
      003982 E0               [24] 1282 	movx	a,@dptr
      003983 FF               [12] 1283 	mov	r7,a
      003984 8E 82            [24] 1284 	mov	dpl,r6
      003986 8F 83            [24] 1285 	mov	dph,r7
      003988 12 00 E1         [24] 1286 	lcall	__sdcc_call_dptr
      00398B AE 82            [24] 1287 	mov	r6,dpl
      00398D AF 83            [24] 1288 	mov	r7,dph
      00398F 90 06 BC         [24] 1289 	mov	dptr,#(_inputs + 0x000c)
      003992 EE               [12] 1290 	mov	a,r6
      003993 F0               [24] 1291 	movx	@dptr,a
      003994 EF               [12] 1292 	mov	a,r7
      003995 A3               [24] 1293 	inc	dptr
      003996 F0               [24] 1294 	movx	@dptr,a
                                   1295 ;	application.c:103: inputs.switch_.current_val = inputs.switch_.get_func();
      003997 90 06 BA         [24] 1296 	mov	dptr,#(_inputs + 0x000a)
      00399A E0               [24] 1297 	movx	a,@dptr
      00399B FE               [12] 1298 	mov	r6,a
      00399C A3               [24] 1299 	inc	dptr
      00399D E0               [24] 1300 	movx	a,@dptr
      00399E FF               [12] 1301 	mov	r7,a
      00399F C0 07            [24] 1302 	push	ar7
      0039A1 8E 82            [24] 1303 	mov	dpl,r6
      0039A3 8F 83            [24] 1304 	mov	dph,r7
      0039A5 12 00 E1         [24] 1305 	lcall	__sdcc_call_dptr
      0039A8 AE 82            [24] 1306 	mov	r6,dpl
      0039AA D0 07            [24] 1307 	pop	ar7
      0039AC 90 06 B9         [24] 1308 	mov	dptr,#(_inputs + 0x0009)
      0039AF EE               [12] 1309 	mov	a,r6
      0039B0 F0               [24] 1310 	movx	@dptr,a
                                   1311 ;	application.c:107: if (inputs.button2.current_val == BUTTON_PRESSED) {
      0039B1 90 06 B3         [24] 1312 	mov	dptr,#(_inputs + 0x0003)
      0039B4 E0               [24] 1313 	movx	a,@dptr
      0039B5 FF               [12] 1314 	mov	r7,a
      0039B6 BF 01 1C         [24] 1315 	cjne	r7,#0x01,00102$
                                   1316 ;	application.c:108: stepper_movement.stepper_direction = !stepper_movement.stepper_direction;
      0039B9 90 06 C1         [24] 1317 	mov	dptr,#(_stepper_movement + 0x0001)
      0039BC E0               [24] 1318 	movx	a,@dptr
      0039BD B4 01 00         [24] 1319 	cjne	a,#0x01,00180$
      0039C0                       1320 00180$:
      0039C0 E4               [12] 1321 	clr	a
      0039C1 33               [12] 1322 	rlc	a
      0039C2 FF               [12] 1323 	mov	r7,a
      0039C3 90 06 C1         [24] 1324 	mov	dptr,#(_stepper_movement + 0x0001)
      0039C6 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	application.c:109: stepper_set_dir(stepper_movement.stepper_direction);
      0039C7 8F 82            [24] 1327 	mov	dpl,r7
      0039C9 12 35 52         [24] 1328 	lcall	_stepper_set_dir
                                   1329 ;	application.c:110: display_update_stepper_dir(stepper_movement.stepper_direction);
      0039CC 90 06 C1         [24] 1330 	mov	dptr,#(_stepper_movement + 0x0001)
      0039CF E0               [24] 1331 	movx	a,@dptr
      0039D0 F5 82            [12] 1332 	mov	dpl,a
      0039D2 12 46 26         [24] 1333 	lcall	_display_update_stepper_dir
      0039D5                       1334 00102$:
                                   1335 ;	application.c:114: if (inputs.switch_.current_val != stepper_movement.stepper_enable_status) {
      0039D5 90 06 B9         [24] 1336 	mov	dptr,#(_inputs + 0x0009)
      0039D8 E0               [24] 1337 	movx	a,@dptr
      0039D9 FF               [12] 1338 	mov	r7,a
      0039DA 90 06 C0         [24] 1339 	mov	dptr,#_stepper_movement
      0039DD E0               [24] 1340 	movx	a,@dptr
      0039DE FE               [12] 1341 	mov	r6,a
      0039DF EF               [12] 1342 	mov	a,r7
      0039E0 B5 06 02         [24] 1343 	cjne	a,ar6,00181$
      0039E3 80 19            [24] 1344 	sjmp	00104$
      0039E5                       1345 00181$:
                                   1346 ;	application.c:115: stepper_movement.stepper_enable_status = !stepper_movement.stepper_enable_status;
      0039E5 EE               [12] 1347 	mov	a,r6
      0039E6 B4 01 00         [24] 1348 	cjne	a,#0x01,00182$
      0039E9                       1349 00182$:
      0039E9 E4               [12] 1350 	clr	a
      0039EA 33               [12] 1351 	rlc	a
      0039EB FF               [12] 1352 	mov	r7,a
      0039EC 90 06 C0         [24] 1353 	mov	dptr,#_stepper_movement
      0039EF F0               [24] 1354 	movx	@dptr,a
                                   1355 ;	application.c:116: stepper_set_enable(stepper_movement.stepper_enable_status);
      0039F0 8F 82            [24] 1356 	mov	dpl,r7
      0039F2 12 35 37         [24] 1357 	lcall	_stepper_set_enable
                                   1358 ;	application.c:117: display_update_stepper_enable(stepper_movement.stepper_enable_status);
      0039F5 90 06 C0         [24] 1359 	mov	dptr,#_stepper_movement
      0039F8 E0               [24] 1360 	movx	a,@dptr
      0039F9 F5 82            [12] 1361 	mov	dpl,a
      0039FB 12 46 55         [24] 1362 	lcall	_display_update_stepper_enable
      0039FE                       1363 00104$:
                                   1364 ;	application.c:121: if (inputs.encoder_value.current_val >= STEP_CONTROL_PAGE_OPTIONS_NUM) {
      0039FE 90 06 BC         [24] 1365 	mov	dptr,#(_inputs + 0x000c)
      003A01 E0               [24] 1366 	movx	a,@dptr
      003A02 FE               [12] 1367 	mov	r6,a
      003A03 A3               [24] 1368 	inc	dptr
      003A04 E0               [24] 1369 	movx	a,@dptr
      003A05 FF               [12] 1370 	mov	r7,a
      003A06 C3               [12] 1371 	clr	c
      003A07 EE               [12] 1372 	mov	a,r6
      003A08 94 05            [12] 1373 	subb	a,#0x05
      003A0A EF               [12] 1374 	mov	a,r7
      003A0B 64 80            [12] 1375 	xrl	a,#0x80
      003A0D 94 80            [12] 1376 	subb	a,#0x80
      003A0F 40 20            [24] 1377 	jc	00108$
                                   1378 ;	application.c:122: encoder_count_reset();
      003A11 12 2C C7         [24] 1379 	lcall	_encoder_count_reset
                                   1380 ;	application.c:123: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003A14 90 06 BE         [24] 1381 	mov	dptr,#(_inputs + 0x000e)
      003A17 E0               [24] 1382 	movx	a,@dptr
      003A18 FC               [12] 1383 	mov	r4,a
      003A19 A3               [24] 1384 	inc	dptr
      003A1A E0               [24] 1385 	movx	a,@dptr
      003A1B FD               [12] 1386 	mov	r5,a
      003A1C 8C 82            [24] 1387 	mov	dpl,r4
      003A1E 8D 83            [24] 1388 	mov	dph,r5
      003A20 12 00 E1         [24] 1389 	lcall	__sdcc_call_dptr
      003A23 AC 82            [24] 1390 	mov	r4,dpl
      003A25 AD 83            [24] 1391 	mov	r5,dph
      003A27 90 06 BC         [24] 1392 	mov	dptr,#(_inputs + 0x000c)
      003A2A EC               [12] 1393 	mov	a,r4
      003A2B F0               [24] 1394 	movx	@dptr,a
      003A2C ED               [12] 1395 	mov	a,r5
      003A2D A3               [24] 1396 	inc	dptr
      003A2E F0               [24] 1397 	movx	@dptr,a
      003A2F 80 25            [24] 1398 	sjmp	00109$
      003A31                       1399 00108$:
                                   1400 ;	application.c:124: } else if (inputs.encoder_value.current_val < 0) {
      003A31 EF               [12] 1401 	mov	a,r7
      003A32 30 E7 21         [24] 1402 	jnb	acc.7,00109$
                                   1403 ;	application.c:125: encoder_count_set(STEP_CONTROL_PAGE_OPTIONS_NUM-1);
      003A35 90 00 04         [24] 1404 	mov	dptr,#0x0004
      003A38 12 2C CF         [24] 1405 	lcall	_encoder_count_set
                                   1406 ;	application.c:126: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003A3B 90 06 BE         [24] 1407 	mov	dptr,#(_inputs + 0x000e)
      003A3E E0               [24] 1408 	movx	a,@dptr
      003A3F FE               [12] 1409 	mov	r6,a
      003A40 A3               [24] 1410 	inc	dptr
      003A41 E0               [24] 1411 	movx	a,@dptr
      003A42 FF               [12] 1412 	mov	r7,a
      003A43 8E 82            [24] 1413 	mov	dpl,r6
      003A45 8F 83            [24] 1414 	mov	dph,r7
      003A47 12 00 E1         [24] 1415 	lcall	__sdcc_call_dptr
      003A4A AE 82            [24] 1416 	mov	r6,dpl
      003A4C AF 83            [24] 1417 	mov	r7,dph
      003A4E 90 06 BC         [24] 1418 	mov	dptr,#(_inputs + 0x000c)
      003A51 EE               [12] 1419 	mov	a,r6
      003A52 F0               [24] 1420 	movx	@dptr,a
      003A53 EF               [12] 1421 	mov	a,r7
      003A54 A3               [24] 1422 	inc	dptr
      003A55 F0               [24] 1423 	movx	@dptr,a
      003A56                       1424 00109$:
                                   1425 ;	application.c:130: if (inputs.button1.current_val == BUTTON_PRESSED) {
      003A56 90 06 B0         [24] 1426 	mov	dptr,#_inputs
      003A59 E0               [24] 1427 	movx	a,@dptr
      003A5A FF               [12] 1428 	mov	r7,a
      003A5B BF 01 23         [24] 1429 	cjne	r7,#0x01,00113$
                                   1430 ;	application.c:131: if(!get_stepper_state()){
      003A5E 12 35 05         [24] 1431 	lcall	_get_stepper_state
      003A61 40 1E            [24] 1432 	jc	00113$
                                   1433 ;	application.c:132: stepper_motor_move(&stepper_movement);
      003A63 90 06 C0         [24] 1434 	mov	dptr,#_stepper_movement
      003A66 75 F0 00         [24] 1435 	mov	b,#0x00
      003A69 12 33 D0         [24] 1436 	lcall	_stepper_motor_move
                                   1437 ;	application.c:133: printf("Runing Stepper Motor!\n");
      003A6C 74 35            [12] 1438 	mov	a,#___str_0
      003A6E C0 E0            [24] 1439 	push	acc
      003A70 74 73            [12] 1440 	mov	a,#(___str_0 >> 8)
      003A72 C0 E0            [24] 1441 	push	acc
      003A74 74 80            [12] 1442 	mov	a,#0x80
      003A76 C0 E0            [24] 1443 	push	acc
      003A78 12 4E 1C         [24] 1444 	lcall	_printf
      003A7B 15 81            [12] 1445 	dec	sp
      003A7D 15 81            [12] 1446 	dec	sp
      003A7F 15 81            [12] 1447 	dec	sp
      003A81                       1448 00113$:
                                   1449 ;	application.c:138: if(inputs.encoder_button.current_val == BUTTON_PRESSED) {
      003A81 90 06 B6         [24] 1450 	mov	dptr,#(_inputs + 0x0006)
      003A84 E0               [24] 1451 	movx	a,@dptr
      003A85 FF               [12] 1452 	mov	r7,a
      003A86 BF 01 02         [24] 1453 	cjne	r7,#0x01,00188$
      003A89 80 03            [24] 1454 	sjmp	00189$
      003A8B                       1455 00188$:
      003A8B 02 3B 2E         [24] 1456 	ljmp	00123$
      003A8E                       1457 00189$:
                                   1458 ;	application.c:139: switch(inputs.encoder_value.current_val) {
      003A8E 90 06 BC         [24] 1459 	mov	dptr,#(_inputs + 0x000c)
      003A91 E0               [24] 1460 	movx	a,@dptr
      003A92 FE               [12] 1461 	mov	r6,a
      003A93 A3               [24] 1462 	inc	dptr
      003A94 E0               [24] 1463 	movx	a,@dptr
      003A95 FF               [12] 1464 	mov	r7,a
      003A96 BE 00 05         [24] 1465 	cjne	r6,#0x00,00190$
      003A99 BF 00 02         [24] 1466 	cjne	r7,#0x00,00190$
      003A9C 80 23            [24] 1467 	sjmp	00114$
      003A9E                       1468 00190$:
      003A9E BE 01 05         [24] 1469 	cjne	r6,#0x01,00191$
      003AA1 BF 00 02         [24] 1470 	cjne	r7,#0x00,00191$
      003AA4 80 30            [24] 1471 	sjmp	00115$
      003AA6                       1472 00191$:
      003AA6 BE 02 05         [24] 1473 	cjne	r6,#0x02,00192$
      003AA9 BF 00 02         [24] 1474 	cjne	r7,#0x00,00192$
      003AAC 80 3C            [24] 1475 	sjmp	00116$
      003AAE                       1476 00192$:
      003AAE BE 03 05         [24] 1477 	cjne	r6,#0x03,00193$
      003AB1 BF 00 02         [24] 1478 	cjne	r7,#0x00,00193$
      003AB4 80 49            [24] 1479 	sjmp	00117$
      003AB6                       1480 00193$:
      003AB6 BE 04 05         [24] 1481 	cjne	r6,#0x04,00194$
      003AB9 BF 00 02         [24] 1482 	cjne	r7,#0x00,00194$
      003ABC 80 4D            [24] 1483 	sjmp	00118$
      003ABE                       1484 00194$:
      003ABE 02 3B 2E         [24] 1485 	ljmp	00123$
                                   1486 ;	application.c:140: case 0:
      003AC1                       1487 00114$:
                                   1488 ;	application.c:141: current_page = STEP_CONTROL_SET_FREQUENCY_OPTION;
      003AC1 90 06 99         [24] 1489 	mov	dptr,#_current_page
      003AC4 74 05            [12] 1490 	mov	a,#0x05
      003AC6 F0               [24] 1491 	movx	@dptr,a
                                   1492 ;	application.c:142: encoder_count_set(stepper_movement.frequency);
      003AC7 90 06 C3         [24] 1493 	mov	dptr,#(_stepper_movement + 0x0003)
      003ACA E0               [24] 1494 	movx	a,@dptr
      003ACB FE               [12] 1495 	mov	r6,a
      003ACC A3               [24] 1496 	inc	dptr
      003ACD E0               [24] 1497 	movx	a,@dptr
      003ACE FF               [12] 1498 	mov	r7,a
      003ACF 8E 82            [24] 1499 	mov	dpl,r6
      003AD1 8F 83            [24] 1500 	mov	dph,r7
                                   1501 ;	application.c:143: return;
                                   1502 ;	application.c:145: case 1:
      003AD3 02 2C CF         [24] 1503 	ljmp	_encoder_count_set
      003AD6                       1504 00115$:
                                   1505 ;	application.c:146: current_page = STEP_CONTROL_SET_MICROSTEPPING_OPTION;
      003AD6 90 06 99         [24] 1506 	mov	dptr,#_current_page
      003AD9 74 06            [12] 1507 	mov	a,#0x06
      003ADB F0               [24] 1508 	movx	@dptr,a
                                   1509 ;	application.c:147: encoder_count_set(stepper_movement.microstepping_value);
      003ADC 90 06 C2         [24] 1510 	mov	dptr,#(_stepper_movement + 0x0002)
      003ADF E0               [24] 1511 	movx	a,@dptr
      003AE0 FF               [12] 1512 	mov	r7,a
      003AE1 7E 00            [12] 1513 	mov	r6,#0x00
      003AE3 8F 82            [24] 1514 	mov	dpl,r7
      003AE5 8E 83            [24] 1515 	mov	dph,r6
                                   1516 ;	application.c:148: return;
                                   1517 ;	application.c:150: case 2:
      003AE7 02 2C CF         [24] 1518 	ljmp	_encoder_count_set
      003AEA                       1519 00116$:
                                   1520 ;	application.c:151: current_page = STEP_CONTROL_SET_STEPS_OPTION;
      003AEA 90 06 99         [24] 1521 	mov	dptr,#_current_page
      003AED 74 07            [12] 1522 	mov	a,#0x07
      003AEF F0               [24] 1523 	movx	@dptr,a
                                   1524 ;	application.c:152: encoder_count_set(stepper_movement.steps);
      003AF0 90 06 C7         [24] 1525 	mov	dptr,#(_stepper_movement + 0x0007)
      003AF3 E0               [24] 1526 	movx	a,@dptr
      003AF4 FE               [12] 1527 	mov	r6,a
      003AF5 A3               [24] 1528 	inc	dptr
      003AF6 E0               [24] 1529 	movx	a,@dptr
      003AF7 FF               [12] 1530 	mov	r7,a
      003AF8 8E 82            [24] 1531 	mov	dpl,r6
      003AFA 8F 83            [24] 1532 	mov	dph,r7
                                   1533 ;	application.c:153: return;
                                   1534 ;	application.c:155: case 3:  // Go Back Option
      003AFC 02 2C CF         [24] 1535 	ljmp	_encoder_count_set
      003AFF                       1536 00117$:
                                   1537 ;	application.c:156: current_page = MENU_PAGE;
      003AFF 90 06 99         [24] 1538 	mov	dptr,#_current_page
      003B02 74 01            [12] 1539 	mov	a,#0x01
      003B04 F0               [24] 1540 	movx	@dptr,a
                                   1541 ;	application.c:157: display_menu_page(NOTHING_SELECTED);
      003B05 75 82 03         [24] 1542 	mov	dpl,#0x03
                                   1543 ;	application.c:158: return;
                                   1544 ;	application.c:160: case 4:
      003B08 02 40 DE         [24] 1545 	ljmp	_display_menu_page
      003B0B                       1546 00118$:
                                   1547 ;	application.c:162: if(!get_stepper_state()){
      003B0B 12 35 05         [24] 1548 	lcall	_get_stepper_state
      003B0E 40 1E            [24] 1549 	jc	00123$
                                   1550 ;	application.c:163: stepper_motor_move(&stepper_movement);
      003B10 90 06 C0         [24] 1551 	mov	dptr,#_stepper_movement
      003B13 75 F0 00         [24] 1552 	mov	b,#0x00
      003B16 12 33 D0         [24] 1553 	lcall	_stepper_motor_move
                                   1554 ;	application.c:164: printf("Runing Stepper Motor!\n");
      003B19 74 35            [12] 1555 	mov	a,#___str_0
      003B1B C0 E0            [24] 1556 	push	acc
      003B1D 74 73            [12] 1557 	mov	a,#(___str_0 >> 8)
      003B1F C0 E0            [24] 1558 	push	acc
      003B21 74 80            [12] 1559 	mov	a,#0x80
      003B23 C0 E0            [24] 1560 	push	acc
      003B25 12 4E 1C         [24] 1561 	lcall	_printf
      003B28 15 81            [12] 1562 	dec	sp
      003B2A 15 81            [12] 1563 	dec	sp
      003B2C 15 81            [12] 1564 	dec	sp
                                   1565 ;	application.c:167: }
      003B2E                       1566 00123$:
                                   1567 ;	application.c:171: display_step_control_page(inputs.encoder_value.current_val);
      003B2E 90 06 BC         [24] 1568 	mov	dptr,#(_inputs + 0x000c)
      003B31 E0               [24] 1569 	movx	a,@dptr
      003B32 F5 82            [12] 1570 	mov	dpl,a
                                   1571 ;	application.c:173: }
      003B34 02 42 C5         [24] 1572 	ljmp	_display_step_control_page
                                   1573 ;------------------------------------------------------------
                                   1574 ;Allocation info for local variables in function 'application_process_step_control_set_frequency'
                                   1575 ;------------------------------------------------------------
                                   1576 ;	application.c:175: void application_process_step_control_set_frequency(void) {
                                   1577 ;	-----------------------------------------
                                   1578 ;	 function application_process_step_control_set_frequency
                                   1579 ;	-----------------------------------------
      003B37                       1580 _application_process_step_control_set_frequency:
                                   1581 ;	application.c:177: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003B37 90 06 B7         [24] 1582 	mov	dptr,#(_inputs + 0x0007)
      003B3A E0               [24] 1583 	movx	a,@dptr
      003B3B FE               [12] 1584 	mov	r6,a
      003B3C A3               [24] 1585 	inc	dptr
      003B3D E0               [24] 1586 	movx	a,@dptr
      003B3E FF               [12] 1587 	mov	r7,a
      003B3F C0 07            [24] 1588 	push	ar7
      003B41 8E 82            [24] 1589 	mov	dpl,r6
      003B43 8F 83            [24] 1590 	mov	dph,r7
      003B45 12 00 E1         [24] 1591 	lcall	__sdcc_call_dptr
      003B48 AE 82            [24] 1592 	mov	r6,dpl
      003B4A D0 07            [24] 1593 	pop	ar7
      003B4C 90 06 B6         [24] 1594 	mov	dptr,#(_inputs + 0x0006)
      003B4F EE               [12] 1595 	mov	a,r6
      003B50 F0               [24] 1596 	movx	@dptr,a
                                   1597 ;	application.c:178: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003B51 90 06 BE         [24] 1598 	mov	dptr,#(_inputs + 0x000e)
      003B54 E0               [24] 1599 	movx	a,@dptr
      003B55 FE               [12] 1600 	mov	r6,a
      003B56 A3               [24] 1601 	inc	dptr
      003B57 E0               [24] 1602 	movx	a,@dptr
      003B58 FF               [12] 1603 	mov	r7,a
      003B59 8E 82            [24] 1604 	mov	dpl,r6
      003B5B 8F 83            [24] 1605 	mov	dph,r7
      003B5D 12 00 E1         [24] 1606 	lcall	__sdcc_call_dptr
      003B60 AE 82            [24] 1607 	mov	r6,dpl
      003B62 AF 83            [24] 1608 	mov	r7,dph
      003B64 90 06 BC         [24] 1609 	mov	dptr,#(_inputs + 0x000c)
      003B67 EE               [12] 1610 	mov	a,r6
      003B68 F0               [24] 1611 	movx	@dptr,a
      003B69 EF               [12] 1612 	mov	a,r7
      003B6A A3               [24] 1613 	inc	dptr
      003B6B F0               [24] 1614 	movx	@dptr,a
                                   1615 ;	application.c:181: if(inputs.encoder_value.current_val < 0) { 
      003B6C 90 06 BC         [24] 1616 	mov	dptr,#(_inputs + 0x000c)
      003B6F E0               [24] 1617 	movx	a,@dptr
      003B70 A3               [24] 1618 	inc	dptr
      003B71 E0               [24] 1619 	movx	a,@dptr
      003B72 30 E7 07         [24] 1620 	jnb	acc.7,00102$
                                   1621 ;	application.c:182: inputs.encoder_value.current_val = 0; 
      003B75 90 06 BC         [24] 1622 	mov	dptr,#(_inputs + 0x000c)
      003B78 E4               [12] 1623 	clr	a
      003B79 F0               [24] 1624 	movx	@dptr,a
      003B7A A3               [24] 1625 	inc	dptr
      003B7B F0               [24] 1626 	movx	@dptr,a
      003B7C                       1627 00102$:
                                   1628 ;	application.c:184: if(inputs.encoder_button.current_val == BUTTON_PRESSED) {
      003B7C 90 06 B6         [24] 1629 	mov	dptr,#(_inputs + 0x0006)
      003B7F E0               [24] 1630 	movx	a,@dptr
      003B80 FF               [12] 1631 	mov	r7,a
      003B81 BF 01 27         [24] 1632 	cjne	r7,#0x01,00104$
                                   1633 ;	application.c:186: stepper_movement.frequency = inputs.encoder_value.current_val;
      003B84 90 06 BC         [24] 1634 	mov	dptr,#(_inputs + 0x000c)
      003B87 E0               [24] 1635 	movx	a,@dptr
      003B88 FE               [12] 1636 	mov	r6,a
      003B89 A3               [24] 1637 	inc	dptr
      003B8A E0               [24] 1638 	movx	a,@dptr
      003B8B FF               [12] 1639 	mov	r7,a
      003B8C 33               [12] 1640 	rlc	a
      003B8D 95 E0            [12] 1641 	subb	a,acc
      003B8F FD               [12] 1642 	mov	r5,a
      003B90 FC               [12] 1643 	mov	r4,a
      003B91 90 06 C3         [24] 1644 	mov	dptr,#(_stepper_movement + 0x0003)
      003B94 EE               [12] 1645 	mov	a,r6
      003B95 F0               [24] 1646 	movx	@dptr,a
      003B96 EF               [12] 1647 	mov	a,r7
      003B97 A3               [24] 1648 	inc	dptr
      003B98 F0               [24] 1649 	movx	@dptr,a
      003B99 ED               [12] 1650 	mov	a,r5
      003B9A A3               [24] 1651 	inc	dptr
      003B9B F0               [24] 1652 	movx	@dptr,a
      003B9C EC               [12] 1653 	mov	a,r4
      003B9D A3               [24] 1654 	inc	dptr
      003B9E F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	application.c:189: current_page = STEP_CONTROL_PAGE;
      003B9F 90 06 99         [24] 1657 	mov	dptr,#_current_page
      003BA2 74 02            [12] 1658 	mov	a,#0x02
      003BA4 F0               [24] 1659 	movx	@dptr,a
                                   1660 ;	application.c:190: encoder_count_reset();
      003BA5 12 2C C7         [24] 1661 	lcall	_encoder_count_reset
                                   1662 ;	application.c:191: display_step_control_page_first_time();
                                   1663 ;	application.c:193: return;
      003BA8 02 42 2D         [24] 1664 	ljmp	_display_step_control_page_first_time
      003BAB                       1665 00104$:
                                   1666 ;	application.c:198: display_step_control_set_frequency_option(inputs.encoder_value.current_val);
      003BAB 90 06 BC         [24] 1667 	mov	dptr,#(_inputs + 0x000c)
      003BAE E0               [24] 1668 	movx	a,@dptr
      003BAF FE               [12] 1669 	mov	r6,a
      003BB0 A3               [24] 1670 	inc	dptr
      003BB1 E0               [24] 1671 	movx	a,@dptr
      003BB2 FF               [12] 1672 	mov	r7,a
      003BB3 8E 82            [24] 1673 	mov	dpl,r6
      003BB5 8F 83            [24] 1674 	mov	dph,r7
                                   1675 ;	application.c:199: }
      003BB7 02 48 AC         [24] 1676 	ljmp	_display_step_control_set_frequency_option
                                   1677 ;------------------------------------------------------------
                                   1678 ;Allocation info for local variables in function 'application_process_step_control_set_microstepping'
                                   1679 ;------------------------------------------------------------
                                   1680 ;	application.c:200: void application_process_step_control_set_microstepping(void) {
                                   1681 ;	-----------------------------------------
                                   1682 ;	 function application_process_step_control_set_microstepping
                                   1683 ;	-----------------------------------------
      003BBA                       1684 _application_process_step_control_set_microstepping:
                                   1685 ;	application.c:202: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003BBA 90 06 B7         [24] 1686 	mov	dptr,#(_inputs + 0x0007)
      003BBD E0               [24] 1687 	movx	a,@dptr
      003BBE FE               [12] 1688 	mov	r6,a
      003BBF A3               [24] 1689 	inc	dptr
      003BC0 E0               [24] 1690 	movx	a,@dptr
      003BC1 FF               [12] 1691 	mov	r7,a
      003BC2 C0 07            [24] 1692 	push	ar7
      003BC4 8E 82            [24] 1693 	mov	dpl,r6
      003BC6 8F 83            [24] 1694 	mov	dph,r7
      003BC8 12 00 E1         [24] 1695 	lcall	__sdcc_call_dptr
      003BCB AE 82            [24] 1696 	mov	r6,dpl
      003BCD D0 07            [24] 1697 	pop	ar7
      003BCF 90 06 B6         [24] 1698 	mov	dptr,#(_inputs + 0x0006)
      003BD2 EE               [12] 1699 	mov	a,r6
      003BD3 F0               [24] 1700 	movx	@dptr,a
                                   1701 ;	application.c:203: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003BD4 90 06 BE         [24] 1702 	mov	dptr,#(_inputs + 0x000e)
      003BD7 E0               [24] 1703 	movx	a,@dptr
      003BD8 FE               [12] 1704 	mov	r6,a
      003BD9 A3               [24] 1705 	inc	dptr
      003BDA E0               [24] 1706 	movx	a,@dptr
      003BDB FF               [12] 1707 	mov	r7,a
      003BDC 8E 82            [24] 1708 	mov	dpl,r6
      003BDE 8F 83            [24] 1709 	mov	dph,r7
      003BE0 12 00 E1         [24] 1710 	lcall	__sdcc_call_dptr
      003BE3 AE 82            [24] 1711 	mov	r6,dpl
      003BE5 AF 83            [24] 1712 	mov	r7,dph
      003BE7 90 06 BC         [24] 1713 	mov	dptr,#(_inputs + 0x000c)
      003BEA EE               [12] 1714 	mov	a,r6
      003BEB F0               [24] 1715 	movx	@dptr,a
      003BEC EF               [12] 1716 	mov	a,r7
      003BED A3               [24] 1717 	inc	dptr
      003BEE F0               [24] 1718 	movx	@dptr,a
                                   1719 ;	application.c:206: if(inputs.encoder_value.current_val < 0) { 
      003BEF 90 06 BC         [24] 1720 	mov	dptr,#(_inputs + 0x000c)
      003BF2 E0               [24] 1721 	movx	a,@dptr
      003BF3 A3               [24] 1722 	inc	dptr
      003BF4 E0               [24] 1723 	movx	a,@dptr
      003BF5 30 E7 07         [24] 1724 	jnb	acc.7,00102$
                                   1725 ;	application.c:207: inputs.encoder_value.current_val = 0; 
      003BF8 90 06 BC         [24] 1726 	mov	dptr,#(_inputs + 0x000c)
      003BFB E4               [12] 1727 	clr	a
      003BFC F0               [24] 1728 	movx	@dptr,a
      003BFD A3               [24] 1729 	inc	dptr
      003BFE F0               [24] 1730 	movx	@dptr,a
      003BFF                       1731 00102$:
                                   1732 ;	application.c:209: if(inputs.encoder_button.current_val == BUTTON_PRESSED) {
      003BFF 90 06 B6         [24] 1733 	mov	dptr,#(_inputs + 0x0006)
      003C02 E0               [24] 1734 	movx	a,@dptr
      003C03 FF               [12] 1735 	mov	r7,a
      003C04 BF 01 0C         [24] 1736 	cjne	r7,#0x01,00104$
                                   1737 ;	application.c:215: current_page = STEP_CONTROL_PAGE;
      003C07 90 06 99         [24] 1738 	mov	dptr,#_current_page
      003C0A 74 02            [12] 1739 	mov	a,#0x02
      003C0C F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	application.c:216: encoder_count_reset();
      003C0D 12 2C C7         [24] 1742 	lcall	_encoder_count_reset
                                   1743 ;	application.c:217: display_step_control_page_first_time();
                                   1744 ;	application.c:219: return;
      003C10 02 42 2D         [24] 1745 	ljmp	_display_step_control_page_first_time
      003C13                       1746 00104$:
                                   1747 ;	application.c:224: display_step_control_set_microstepping_option(inputs.encoder_value.current_val);
      003C13 90 06 BC         [24] 1748 	mov	dptr,#(_inputs + 0x000c)
      003C16 E0               [24] 1749 	movx	a,@dptr
      003C17 FE               [12] 1750 	mov	r6,a
      003C18 A3               [24] 1751 	inc	dptr
      003C19 E0               [24] 1752 	movx	a,@dptr
      003C1A FF               [12] 1753 	mov	r7,a
      003C1B 8E 82            [24] 1754 	mov	dpl,r6
      003C1D 8F 83            [24] 1755 	mov	dph,r7
                                   1756 ;	application.c:225: }
      003C1F 02 48 47         [24] 1757 	ljmp	_display_step_control_set_microstepping_option
                                   1758 ;------------------------------------------------------------
                                   1759 ;Allocation info for local variables in function 'application_process_step_control_set_steps'
                                   1760 ;------------------------------------------------------------
                                   1761 ;	application.c:226: void application_process_step_control_set_steps(void) {
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function application_process_step_control_set_steps
                                   1764 ;	-----------------------------------------
      003C22                       1765 _application_process_step_control_set_steps:
                                   1766 ;	application.c:229: inputs.encoder_button.current_val = inputs.encoder_button.get_func();
      003C22 90 06 B7         [24] 1767 	mov	dptr,#(_inputs + 0x0007)
      003C25 E0               [24] 1768 	movx	a,@dptr
      003C26 FE               [12] 1769 	mov	r6,a
      003C27 A3               [24] 1770 	inc	dptr
      003C28 E0               [24] 1771 	movx	a,@dptr
      003C29 FF               [12] 1772 	mov	r7,a
      003C2A C0 07            [24] 1773 	push	ar7
      003C2C 8E 82            [24] 1774 	mov	dpl,r6
      003C2E 8F 83            [24] 1775 	mov	dph,r7
      003C30 12 00 E1         [24] 1776 	lcall	__sdcc_call_dptr
      003C33 AE 82            [24] 1777 	mov	r6,dpl
      003C35 D0 07            [24] 1778 	pop	ar7
      003C37 90 06 B6         [24] 1779 	mov	dptr,#(_inputs + 0x0006)
      003C3A EE               [12] 1780 	mov	a,r6
      003C3B F0               [24] 1781 	movx	@dptr,a
                                   1782 ;	application.c:230: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003C3C 90 06 BE         [24] 1783 	mov	dptr,#(_inputs + 0x000e)
      003C3F E0               [24] 1784 	movx	a,@dptr
      003C40 FE               [12] 1785 	mov	r6,a
      003C41 A3               [24] 1786 	inc	dptr
      003C42 E0               [24] 1787 	movx	a,@dptr
      003C43 FF               [12] 1788 	mov	r7,a
      003C44 8E 82            [24] 1789 	mov	dpl,r6
      003C46 8F 83            [24] 1790 	mov	dph,r7
      003C48 12 00 E1         [24] 1791 	lcall	__sdcc_call_dptr
      003C4B AE 82            [24] 1792 	mov	r6,dpl
      003C4D AF 83            [24] 1793 	mov	r7,dph
      003C4F 90 06 BC         [24] 1794 	mov	dptr,#(_inputs + 0x000c)
      003C52 EE               [12] 1795 	mov	a,r6
      003C53 F0               [24] 1796 	movx	@dptr,a
      003C54 EF               [12] 1797 	mov	a,r7
      003C55 A3               [24] 1798 	inc	dptr
      003C56 F0               [24] 1799 	movx	@dptr,a
                                   1800 ;	application.c:234: if(inputs.encoder_value.current_val < 0) { 
      003C57 90 06 BC         [24] 1801 	mov	dptr,#(_inputs + 0x000c)
      003C5A E0               [24] 1802 	movx	a,@dptr
      003C5B FE               [12] 1803 	mov	r6,a
      003C5C A3               [24] 1804 	inc	dptr
      003C5D E0               [24] 1805 	movx	a,@dptr
      003C5E FF               [12] 1806 	mov	r7,a
      003C5F 30 E7 23         [24] 1807 	jnb	acc.7,00104$
                                   1808 ;	application.c:235: encoder_count_set(9);
      003C62 90 00 09         [24] 1809 	mov	dptr,#0x0009
      003C65 12 2C CF         [24] 1810 	lcall	_encoder_count_set
                                   1811 ;	application.c:236: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003C68 90 06 BE         [24] 1812 	mov	dptr,#(_inputs + 0x000e)
      003C6B E0               [24] 1813 	movx	a,@dptr
      003C6C FC               [12] 1814 	mov	r4,a
      003C6D A3               [24] 1815 	inc	dptr
      003C6E E0               [24] 1816 	movx	a,@dptr
      003C6F FD               [12] 1817 	mov	r5,a
      003C70 8C 82            [24] 1818 	mov	dpl,r4
      003C72 8D 83            [24] 1819 	mov	dph,r5
      003C74 12 00 E1         [24] 1820 	lcall	__sdcc_call_dptr
      003C77 AC 82            [24] 1821 	mov	r4,dpl
      003C79 AD 83            [24] 1822 	mov	r5,dph
      003C7B 90 06 BC         [24] 1823 	mov	dptr,#(_inputs + 0x000c)
      003C7E EC               [12] 1824 	mov	a,r4
      003C7F F0               [24] 1825 	movx	@dptr,a
      003C80 ED               [12] 1826 	mov	a,r5
      003C81 A3               [24] 1827 	inc	dptr
      003C82 F0               [24] 1828 	movx	@dptr,a
      003C83 80 29            [24] 1829 	sjmp	00105$
      003C85                       1830 00104$:
                                   1831 ;	application.c:237: } else if (inputs.encoder_value.current_val >= 10) {
      003C85 C3               [12] 1832 	clr	c
      003C86 EE               [12] 1833 	mov	a,r6
      003C87 94 0A            [12] 1834 	subb	a,#0x0a
      003C89 EF               [12] 1835 	mov	a,r7
      003C8A 64 80            [12] 1836 	xrl	a,#0x80
      003C8C 94 80            [12] 1837 	subb	a,#0x80
      003C8E 40 1E            [24] 1838 	jc	00105$
                                   1839 ;	application.c:238: encoder_count_reset();
      003C90 12 2C C7         [24] 1840 	lcall	_encoder_count_reset
                                   1841 ;	application.c:239: inputs.encoder_value.current_val = inputs.encoder_value.get_func();
      003C93 90 06 BE         [24] 1842 	mov	dptr,#(_inputs + 0x000e)
      003C96 E0               [24] 1843 	movx	a,@dptr
      003C97 FE               [12] 1844 	mov	r6,a
      003C98 A3               [24] 1845 	inc	dptr
      003C99 E0               [24] 1846 	movx	a,@dptr
      003C9A FF               [12] 1847 	mov	r7,a
      003C9B 8E 82            [24] 1848 	mov	dpl,r6
      003C9D 8F 83            [24] 1849 	mov	dph,r7
      003C9F 12 00 E1         [24] 1850 	lcall	__sdcc_call_dptr
      003CA2 AE 82            [24] 1851 	mov	r6,dpl
      003CA4 AF 83            [24] 1852 	mov	r7,dph
      003CA6 90 06 BC         [24] 1853 	mov	dptr,#(_inputs + 0x000c)
      003CA9 EE               [12] 1854 	mov	a,r6
      003CAA F0               [24] 1855 	movx	@dptr,a
      003CAB EF               [12] 1856 	mov	a,r7
      003CAC A3               [24] 1857 	inc	dptr
      003CAD F0               [24] 1858 	movx	@dptr,a
      003CAE                       1859 00105$:
                                   1860 ;	application.c:241: float_digits[float_digit_pointer] = inputs.encoder_value.current_val;
      003CAE 90 06 AA         [24] 1861 	mov	dptr,#_float_digit_pointer
      003CB1 E0               [24] 1862 	movx	a,@dptr
      003CB2 24 AB            [12] 1863 	add	a,#_float_digits
      003CB4 FF               [12] 1864 	mov	r7,a
      003CB5 E4               [12] 1865 	clr	a
      003CB6 34 06            [12] 1866 	addc	a,#(_float_digits >> 8)
      003CB8 FE               [12] 1867 	mov	r6,a
      003CB9 90 06 BC         [24] 1868 	mov	dptr,#(_inputs + 0x000c)
      003CBC E0               [24] 1869 	movx	a,@dptr
      003CBD 8F 82            [24] 1870 	mov	dpl,r7
      003CBF 8E 83            [24] 1871 	mov	dph,r6
      003CC1 F0               [24] 1872 	movx	@dptr,a
                                   1873 ;	application.c:244: if(inputs.encoder_button.current_val == BUTTON_PRESSED) {
      003CC2 90 06 B6         [24] 1874 	mov	dptr,#(_inputs + 0x0006)
      003CC5 E0               [24] 1875 	movx	a,@dptr
      003CC6 FF               [12] 1876 	mov	r7,a
      003CC7 BF 01 3A         [24] 1877 	cjne	r7,#0x01,00109$
                                   1878 ;	application.c:246: encoder_count_reset();
      003CCA 12 2C C7         [24] 1879 	lcall	_encoder_count_reset
                                   1880 ;	application.c:247: if(float_digit_pointer >= FLOAT_POINTER_MAX) {
      003CCD 90 06 AA         [24] 1881 	mov	dptr,#_float_digit_pointer
      003CD0 E0               [24] 1882 	movx	a,@dptr
      003CD1 FF               [12] 1883 	mov	r7,a
      003CD2 BF 04 00         [24] 1884 	cjne	r7,#0x04,00132$
      003CD5                       1885 00132$:
      003CD5 40 27            [24] 1886 	jc	00107$
                                   1887 ;	application.c:249: float_digit_pointer = 0;
      003CD7 90 06 AA         [24] 1888 	mov	dptr,#_float_digit_pointer
      003CDA E4               [12] 1889 	clr	a
      003CDB F0               [24] 1890 	movx	@dptr,a
                                   1891 ;	application.c:252: stepper_set_steps_from_float_digits(&stepper_movement, float_digits);
      003CDC 90 05 5D         [24] 1892 	mov	dptr,#_stepper_set_steps_from_float_digits_PARM_2
      003CDF 74 AB            [12] 1893 	mov	a,#_float_digits
      003CE1 F0               [24] 1894 	movx	@dptr,a
      003CE2 74 06            [12] 1895 	mov	a,#(_float_digits >> 8)
      003CE4 A3               [24] 1896 	inc	dptr
      003CE5 F0               [24] 1897 	movx	@dptr,a
      003CE6 E4               [12] 1898 	clr	a
      003CE7 A3               [24] 1899 	inc	dptr
      003CE8 F0               [24] 1900 	movx	@dptr,a
      003CE9 90 06 C0         [24] 1901 	mov	dptr,#_stepper_movement
      003CEC 75 F0 00         [24] 1902 	mov	b,#0x00
      003CEF 12 36 1A         [24] 1903 	lcall	_stepper_set_steps_from_float_digits
                                   1904 ;	application.c:255: current_page = STEP_CONTROL_PAGE;
      003CF2 90 06 99         [24] 1905 	mov	dptr,#_current_page
      003CF5 74 02            [12] 1906 	mov	a,#0x02
      003CF7 F0               [24] 1907 	movx	@dptr,a
                                   1908 ;	application.c:256: encoder_count_reset();
      003CF8 12 2C C7         [24] 1909 	lcall	_encoder_count_reset
                                   1910 ;	application.c:257: display_step_control_page_first_time();
                                   1911 ;	application.c:259: return;
      003CFB 02 42 2D         [24] 1912 	ljmp	_display_step_control_page_first_time
      003CFE                       1913 00107$:
                                   1914 ;	application.c:261: float_digit_pointer++;
      003CFE 90 06 AA         [24] 1915 	mov	dptr,#_float_digit_pointer
      003D01 EF               [12] 1916 	mov	a,r7
      003D02 04               [12] 1917 	inc	a
      003D03 F0               [24] 1918 	movx	@dptr,a
      003D04                       1919 00109$:
                                   1920 ;	application.c:265: display_step_control_set_steps_option(float_digits, float_digit_pointer);
      003D04 90 06 AA         [24] 1921 	mov	dptr,#_float_digit_pointer
      003D07 E0               [24] 1922 	movx	a,@dptr
      003D08 90 05 A6         [24] 1923 	mov	dptr,#_display_step_control_set_steps_option_PARM_2
      003D0B F0               [24] 1924 	movx	@dptr,a
      003D0C 90 06 AB         [24] 1925 	mov	dptr,#_float_digits
      003D0F 75 F0 00         [24] 1926 	mov	b,#0x00
                                   1927 ;	application.c:267: }
      003D12 02 46 84         [24] 1928 	ljmp	_display_step_control_set_steps_option
                                   1929 ;------------------------------------------------------------
                                   1930 ;Allocation info for local variables in function 'application_process_distance_control_page'
                                   1931 ;------------------------------------------------------------
                                   1932 ;	application.c:269: void application_process_distance_control_page(void) {
                                   1933 ;	-----------------------------------------
                                   1934 ;	 function application_process_distance_control_page
                                   1935 ;	-----------------------------------------
      003D15                       1936 _application_process_distance_control_page:
                                   1937 ;	application.c:271: printf("distance control page not implemented!\n");
      003D15 74 4C            [12] 1938 	mov	a,#___str_1
      003D17 C0 E0            [24] 1939 	push	acc
      003D19 74 73            [12] 1940 	mov	a,#(___str_1 >> 8)
      003D1B C0 E0            [24] 1941 	push	acc
      003D1D 74 80            [12] 1942 	mov	a,#0x80
      003D1F C0 E0            [24] 1943 	push	acc
      003D21 12 4E 1C         [24] 1944 	lcall	_printf
      003D24 15 81            [12] 1945 	dec	sp
      003D26 15 81            [12] 1946 	dec	sp
      003D28 15 81            [12] 1947 	dec	sp
                                   1948 ;	application.c:272: application_process_welcome_page();
                                   1949 ;	application.c:273: }
      003D2A 02 37 D5         [24] 1950 	ljmp	_application_process_welcome_page
                                   1951 ;------------------------------------------------------------
                                   1952 ;Allocation info for local variables in function 'application_process_encoder_control_page'
                                   1953 ;------------------------------------------------------------
                                   1954 ;	application.c:275: void application_process_encoder_control_page(void) {
                                   1955 ;	-----------------------------------------
                                   1956 ;	 function application_process_encoder_control_page
                                   1957 ;	-----------------------------------------
      003D2D                       1958 _application_process_encoder_control_page:
                                   1959 ;	application.c:276: printf("reached encoder control page not implemented!\n");
      003D2D 74 74            [12] 1960 	mov	a,#___str_2
      003D2F C0 E0            [24] 1961 	push	acc
      003D31 74 73            [12] 1962 	mov	a,#(___str_2 >> 8)
      003D33 C0 E0            [24] 1963 	push	acc
      003D35 74 80            [12] 1964 	mov	a,#0x80
      003D37 C0 E0            [24] 1965 	push	acc
      003D39 12 4E 1C         [24] 1966 	lcall	_printf
      003D3C 15 81            [12] 1967 	dec	sp
      003D3E 15 81            [12] 1968 	dec	sp
      003D40 15 81            [12] 1969 	dec	sp
                                   1970 ;	application.c:277: application_process_welcome_page();
                                   1971 ;	application.c:278: }
      003D42 02 37 D5         [24] 1972 	ljmp	_application_process_welcome_page
                                   1973 ;------------------------------------------------------------
                                   1974 ;Allocation info for local variables in function 'application_process_current_page'
                                   1975 ;------------------------------------------------------------
                                   1976 ;	application.c:282: void application_process_current_page(void) { application_process_func[current_page](); }
                                   1977 ;	-----------------------------------------
                                   1978 ;	 function application_process_current_page
                                   1979 ;	-----------------------------------------
      003D45                       1980 _application_process_current_page:
      003D45 90 06 99         [24] 1981 	mov	dptr,#_current_page
      003D48 E0               [24] 1982 	movx	a,@dptr
      003D49 75 F0 02         [24] 1983 	mov	b,#0x02
      003D4C A4               [48] 1984 	mul	ab
      003D4D 24 9A            [12] 1985 	add	a,#_application_process_func
      003D4F F5 82            [12] 1986 	mov	dpl,a
      003D51 74 06            [12] 1987 	mov	a,#(_application_process_func >> 8)
      003D53 35 F0            [12] 1988 	addc	a,b
      003D55 F5 83            [12] 1989 	mov	dph,a
      003D57 E0               [24] 1990 	movx	a,@dptr
      003D58 FE               [12] 1991 	mov	r6,a
      003D59 A3               [24] 1992 	inc	dptr
      003D5A E0               [24] 1993 	movx	a,@dptr
      003D5B FF               [12] 1994 	mov	r7,a
      003D5C C0 07            [24] 1995 	push	ar7
      003D5E C0 06            [24] 1996 	push	ar6
      003D60 8E 82            [24] 1997 	mov	dpl,r6
      003D62 8F 83            [24] 1998 	mov	dph,r7
      003D64 12 00 E1         [24] 1999 	lcall	__sdcc_call_dptr
      003D67 D0 06            [24] 2000 	pop	ar6
      003D69 D0 07            [24] 2001 	pop	ar7
      003D6B 22               [24] 2002 	ret
                                   2003 	.area CSEG    (CODE)
                                   2004 	.area CONST   (CODE)
      007155                       2005 _FONTS:
      007155 00                    2006 	.db #0x00	; 0
      007156 00                    2007 	.db #0x00	; 0
      007157 00                    2008 	.db #0x00	; 0
      007158 00                    2009 	.db #0x00	; 0
      007159 00                    2010 	.db #0x00	; 0
      00715A 81                    2011 	.db #0x81	; 129
      00715B 81                    2012 	.db #0x81	; 129
      00715C 18                    2013 	.db #0x18	; 24
      00715D 81                    2014 	.db #0x81	; 129
      00715E 81                    2015 	.db #0x81	; 129
      00715F 00                    2016 	.db #0x00	; 0
      007160 07                    2017 	.db #0x07	; 7
      007161 00                    2018 	.db #0x00	; 0
      007162 07                    2019 	.db #0x07	; 7
      007163 00                    2020 	.db #0x00	; 0
      007164 14                    2021 	.db #0x14	; 20
      007165 7F                    2022 	.db #0x7f	; 127
      007166 14                    2023 	.db #0x14	; 20
      007167 7F                    2024 	.db #0x7f	; 127
      007168 14                    2025 	.db #0x14	; 20
      007169 24                    2026 	.db #0x24	; 36
      00716A 2A                    2027 	.db #0x2a	; 42
      00716B 7F                    2028 	.db #0x7f	; 127
      00716C 2A                    2029 	.db #0x2a	; 42
      00716D 12                    2030 	.db #0x12	; 18
      00716E 23                    2031 	.db #0x23	; 35
      00716F 13                    2032 	.db #0x13	; 19
      007170 08                    2033 	.db #0x08	; 8
      007171 64                    2034 	.db #0x64	; 100	'd'
      007172 62                    2035 	.db #0x62	; 98	'b'
      007173 36                    2036 	.db #0x36	; 54	'6'
      007174 49                    2037 	.db #0x49	; 73	'I'
      007175 55                    2038 	.db #0x55	; 85	'U'
      007176 22                    2039 	.db #0x22	; 34
      007177 50                    2040 	.db #0x50	; 80	'P'
      007178 00                    2041 	.db #0x00	; 0
      007179 05                    2042 	.db #0x05	; 5
      00717A 03                    2043 	.db #0x03	; 3
      00717B 00                    2044 	.db #0x00	; 0
      00717C 00                    2045 	.db #0x00	; 0
      00717D 00                    2046 	.db #0x00	; 0
      00717E 1C                    2047 	.db #0x1c	; 28
      00717F 22                    2048 	.db #0x22	; 34
      007180 41                    2049 	.db #0x41	; 65	'A'
      007181 00                    2050 	.db #0x00	; 0
      007182 00                    2051 	.db #0x00	; 0
      007183 41                    2052 	.db #0x41	; 65	'A'
      007184 22                    2053 	.db #0x22	; 34
      007185 1C                    2054 	.db #0x1c	; 28
      007186 00                    2055 	.db #0x00	; 0
      007187 14                    2056 	.db #0x14	; 20
      007188 08                    2057 	.db #0x08	; 8
      007189 3E                    2058 	.db #0x3e	; 62
      00718A 08                    2059 	.db #0x08	; 8
      00718B 14                    2060 	.db #0x14	; 20
      00718C 08                    2061 	.db #0x08	; 8
      00718D 08                    2062 	.db #0x08	; 8
      00718E 3E                    2063 	.db #0x3e	; 62
      00718F 08                    2064 	.db #0x08	; 8
      007190 08                    2065 	.db #0x08	; 8
      007191 00                    2066 	.db #0x00	; 0
      007192 50                    2067 	.db #0x50	; 80	'P'
      007193 30                    2068 	.db #0x30	; 48	'0'
      007194 00                    2069 	.db #0x00	; 0
      007195 00                    2070 	.db #0x00	; 0
      007196 08                    2071 	.db #0x08	; 8
      007197 08                    2072 	.db #0x08	; 8
      007198 08                    2073 	.db #0x08	; 8
      007199 08                    2074 	.db #0x08	; 8
      00719A 08                    2075 	.db #0x08	; 8
      00719B 00                    2076 	.db #0x00	; 0
      00719C 60                    2077 	.db #0x60	; 96
      00719D 60                    2078 	.db #0x60	; 96
      00719E 00                    2079 	.db #0x00	; 0
      00719F 00                    2080 	.db #0x00	; 0
      0071A0 20                    2081 	.db #0x20	; 32
      0071A1 10                    2082 	.db #0x10	; 16
      0071A2 08                    2083 	.db #0x08	; 8
      0071A3 04                    2084 	.db #0x04	; 4
      0071A4 02                    2085 	.db #0x02	; 2
      0071A5 3E                    2086 	.db #0x3e	; 62
      0071A6 51                    2087 	.db #0x51	; 81	'Q'
      0071A7 49                    2088 	.db #0x49	; 73	'I'
      0071A8 45                    2089 	.db #0x45	; 69	'E'
      0071A9 3E                    2090 	.db #0x3e	; 62
      0071AA 00                    2091 	.db #0x00	; 0
      0071AB 42                    2092 	.db #0x42	; 66	'B'
      0071AC 7F                    2093 	.db #0x7f	; 127
      0071AD 40                    2094 	.db #0x40	; 64
      0071AE 00                    2095 	.db #0x00	; 0
      0071AF 42                    2096 	.db #0x42	; 66	'B'
      0071B0 61                    2097 	.db #0x61	; 97	'a'
      0071B1 51                    2098 	.db #0x51	; 81	'Q'
      0071B2 49                    2099 	.db #0x49	; 73	'I'
      0071B3 46                    2100 	.db #0x46	; 70	'F'
      0071B4 21                    2101 	.db #0x21	; 33
      0071B5 41                    2102 	.db #0x41	; 65	'A'
      0071B6 45                    2103 	.db #0x45	; 69	'E'
      0071B7 4B                    2104 	.db #0x4b	; 75	'K'
      0071B8 31                    2105 	.db #0x31	; 49	'1'
      0071B9 18                    2106 	.db #0x18	; 24
      0071BA 14                    2107 	.db #0x14	; 20
      0071BB 12                    2108 	.db #0x12	; 18
      0071BC 7F                    2109 	.db #0x7f	; 127
      0071BD 10                    2110 	.db #0x10	; 16
      0071BE 27                    2111 	.db #0x27	; 39
      0071BF 45                    2112 	.db #0x45	; 69	'E'
      0071C0 45                    2113 	.db #0x45	; 69	'E'
      0071C1 45                    2114 	.db #0x45	; 69	'E'
      0071C2 39                    2115 	.db #0x39	; 57	'9'
      0071C3 3C                    2116 	.db #0x3c	; 60
      0071C4 4A                    2117 	.db #0x4a	; 74	'J'
      0071C5 49                    2118 	.db #0x49	; 73	'I'
      0071C6 49                    2119 	.db #0x49	; 73	'I'
      0071C7 30                    2120 	.db #0x30	; 48	'0'
      0071C8 01                    2121 	.db #0x01	; 1
      0071C9 71                    2122 	.db #0x71	; 113	'q'
      0071CA 09                    2123 	.db #0x09	; 9
      0071CB 05                    2124 	.db #0x05	; 5
      0071CC 03                    2125 	.db #0x03	; 3
      0071CD 36                    2126 	.db #0x36	; 54	'6'
      0071CE 49                    2127 	.db #0x49	; 73	'I'
      0071CF 49                    2128 	.db #0x49	; 73	'I'
      0071D0 49                    2129 	.db #0x49	; 73	'I'
      0071D1 36                    2130 	.db #0x36	; 54	'6'
      0071D2 06                    2131 	.db #0x06	; 6
      0071D3 49                    2132 	.db #0x49	; 73	'I'
      0071D4 49                    2133 	.db #0x49	; 73	'I'
      0071D5 29                    2134 	.db #0x29	; 41
      0071D6 1E                    2135 	.db #0x1e	; 30
      0071D7 00                    2136 	.db #0x00	; 0
      0071D8 36                    2137 	.db #0x36	; 54	'6'
      0071D9 36                    2138 	.db #0x36	; 54	'6'
      0071DA 00                    2139 	.db #0x00	; 0
      0071DB 00                    2140 	.db #0x00	; 0
      0071DC 00                    2141 	.db #0x00	; 0
      0071DD 56                    2142 	.db #0x56	; 86	'V'
      0071DE 36                    2143 	.db #0x36	; 54	'6'
      0071DF 00                    2144 	.db #0x00	; 0
      0071E0 00                    2145 	.db #0x00	; 0
      0071E1 08                    2146 	.db #0x08	; 8
      0071E2 14                    2147 	.db #0x14	; 20
      0071E3 22                    2148 	.db #0x22	; 34
      0071E4 41                    2149 	.db #0x41	; 65	'A'
      0071E5 00                    2150 	.db #0x00	; 0
      0071E6 14                    2151 	.db #0x14	; 20
      0071E7 14                    2152 	.db #0x14	; 20
      0071E8 14                    2153 	.db #0x14	; 20
      0071E9 14                    2154 	.db #0x14	; 20
      0071EA 14                    2155 	.db #0x14	; 20
      0071EB 00                    2156 	.db #0x00	; 0
      0071EC 41                    2157 	.db #0x41	; 65	'A'
      0071ED 22                    2158 	.db #0x22	; 34
      0071EE 14                    2159 	.db #0x14	; 20
      0071EF 08                    2160 	.db #0x08	; 8
      0071F0 02                    2161 	.db #0x02	; 2
      0071F1 01                    2162 	.db #0x01	; 1
      0071F2 51                    2163 	.db #0x51	; 81	'Q'
      0071F3 09                    2164 	.db #0x09	; 9
      0071F4 06                    2165 	.db #0x06	; 6
      0071F5 32                    2166 	.db #0x32	; 50	'2'
      0071F6 49                    2167 	.db #0x49	; 73	'I'
      0071F7 79                    2168 	.db #0x79	; 121	'y'
      0071F8 41                    2169 	.db #0x41	; 65	'A'
      0071F9 3E                    2170 	.db #0x3e	; 62
      0071FA 7E                    2171 	.db #0x7e	; 126
      0071FB 11                    2172 	.db #0x11	; 17
      0071FC 11                    2173 	.db #0x11	; 17
      0071FD 11                    2174 	.db #0x11	; 17
      0071FE 7E                    2175 	.db #0x7e	; 126
      0071FF 7F                    2176 	.db #0x7f	; 127
      007200 49                    2177 	.db #0x49	; 73	'I'
      007201 49                    2178 	.db #0x49	; 73	'I'
      007202 49                    2179 	.db #0x49	; 73	'I'
      007203 36                    2180 	.db #0x36	; 54	'6'
      007204 3E                    2181 	.db #0x3e	; 62
      007205 41                    2182 	.db #0x41	; 65	'A'
      007206 41                    2183 	.db #0x41	; 65	'A'
      007207 41                    2184 	.db #0x41	; 65	'A'
      007208 22                    2185 	.db #0x22	; 34
      007209 7F                    2186 	.db #0x7f	; 127
      00720A 41                    2187 	.db #0x41	; 65	'A'
      00720B 41                    2188 	.db #0x41	; 65	'A'
      00720C 22                    2189 	.db #0x22	; 34
      00720D 1C                    2190 	.db #0x1c	; 28
      00720E 7F                    2191 	.db #0x7f	; 127
      00720F 49                    2192 	.db #0x49	; 73	'I'
      007210 49                    2193 	.db #0x49	; 73	'I'
      007211 49                    2194 	.db #0x49	; 73	'I'
      007212 41                    2195 	.db #0x41	; 65	'A'
      007213 7F                    2196 	.db #0x7f	; 127
      007214 09                    2197 	.db #0x09	; 9
      007215 09                    2198 	.db #0x09	; 9
      007216 09                    2199 	.db #0x09	; 9
      007217 01                    2200 	.db #0x01	; 1
      007218 3E                    2201 	.db #0x3e	; 62
      007219 41                    2202 	.db #0x41	; 65	'A'
      00721A 49                    2203 	.db #0x49	; 73	'I'
      00721B 49                    2204 	.db #0x49	; 73	'I'
      00721C 7A                    2205 	.db #0x7a	; 122	'z'
      00721D 7F                    2206 	.db #0x7f	; 127
      00721E 08                    2207 	.db #0x08	; 8
      00721F 08                    2208 	.db #0x08	; 8
      007220 08                    2209 	.db #0x08	; 8
      007221 7F                    2210 	.db #0x7f	; 127
      007222 00                    2211 	.db #0x00	; 0
      007223 41                    2212 	.db #0x41	; 65	'A'
      007224 7F                    2213 	.db #0x7f	; 127
      007225 41                    2214 	.db #0x41	; 65	'A'
      007226 00                    2215 	.db #0x00	; 0
      007227 20                    2216 	.db #0x20	; 32
      007228 40                    2217 	.db #0x40	; 64
      007229 41                    2218 	.db #0x41	; 65	'A'
      00722A 3F                    2219 	.db #0x3f	; 63
      00722B 01                    2220 	.db #0x01	; 1
      00722C 7F                    2221 	.db #0x7f	; 127
      00722D 08                    2222 	.db #0x08	; 8
      00722E 14                    2223 	.db #0x14	; 20
      00722F 22                    2224 	.db #0x22	; 34
      007230 41                    2225 	.db #0x41	; 65	'A'
      007231 7F                    2226 	.db #0x7f	; 127
      007232 40                    2227 	.db #0x40	; 64
      007233 40                    2228 	.db #0x40	; 64
      007234 40                    2229 	.db #0x40	; 64
      007235 40                    2230 	.db #0x40	; 64
      007236 7F                    2231 	.db #0x7f	; 127
      007237 02                    2232 	.db #0x02	; 2
      007238 0C                    2233 	.db #0x0c	; 12
      007239 02                    2234 	.db #0x02	; 2
      00723A 7F                    2235 	.db #0x7f	; 127
      00723B 7F                    2236 	.db #0x7f	; 127
      00723C 04                    2237 	.db #0x04	; 4
      00723D 08                    2238 	.db #0x08	; 8
      00723E 10                    2239 	.db #0x10	; 16
      00723F 7F                    2240 	.db #0x7f	; 127
      007240 3E                    2241 	.db #0x3e	; 62
      007241 41                    2242 	.db #0x41	; 65	'A'
      007242 41                    2243 	.db #0x41	; 65	'A'
      007243 41                    2244 	.db #0x41	; 65	'A'
      007244 3E                    2245 	.db #0x3e	; 62
      007245 7F                    2246 	.db #0x7f	; 127
      007246 09                    2247 	.db #0x09	; 9
      007247 09                    2248 	.db #0x09	; 9
      007248 09                    2249 	.db #0x09	; 9
      007249 06                    2250 	.db #0x06	; 6
      00724A 3E                    2251 	.db #0x3e	; 62
      00724B 41                    2252 	.db #0x41	; 65	'A'
      00724C 51                    2253 	.db #0x51	; 81	'Q'
      00724D 21                    2254 	.db #0x21	; 33
      00724E 5E                    2255 	.db #0x5e	; 94
      00724F 7F                    2256 	.db #0x7f	; 127
      007250 09                    2257 	.db #0x09	; 9
      007251 19                    2258 	.db #0x19	; 25
      007252 29                    2259 	.db #0x29	; 41
      007253 46                    2260 	.db #0x46	; 70	'F'
      007254 46                    2261 	.db #0x46	; 70	'F'
      007255 49                    2262 	.db #0x49	; 73	'I'
      007256 49                    2263 	.db #0x49	; 73	'I'
      007257 49                    2264 	.db #0x49	; 73	'I'
      007258 31                    2265 	.db #0x31	; 49	'1'
      007259 01                    2266 	.db #0x01	; 1
      00725A 01                    2267 	.db #0x01	; 1
      00725B 7F                    2268 	.db #0x7f	; 127
      00725C 01                    2269 	.db #0x01	; 1
      00725D 01                    2270 	.db #0x01	; 1
      00725E 3F                    2271 	.db #0x3f	; 63
      00725F 40                    2272 	.db #0x40	; 64
      007260 40                    2273 	.db #0x40	; 64
      007261 40                    2274 	.db #0x40	; 64
      007262 3F                    2275 	.db #0x3f	; 63
      007263 1F                    2276 	.db #0x1f	; 31
      007264 20                    2277 	.db #0x20	; 32
      007265 40                    2278 	.db #0x40	; 64
      007266 20                    2279 	.db #0x20	; 32
      007267 1F                    2280 	.db #0x1f	; 31
      007268 3F                    2281 	.db #0x3f	; 63
      007269 40                    2282 	.db #0x40	; 64
      00726A 38                    2283 	.db #0x38	; 56	'8'
      00726B 40                    2284 	.db #0x40	; 64
      00726C 3F                    2285 	.db #0x3f	; 63
      00726D 63                    2286 	.db #0x63	; 99	'c'
      00726E 14                    2287 	.db #0x14	; 20
      00726F 08                    2288 	.db #0x08	; 8
      007270 14                    2289 	.db #0x14	; 20
      007271 63                    2290 	.db #0x63	; 99	'c'
      007272 07                    2291 	.db #0x07	; 7
      007273 08                    2292 	.db #0x08	; 8
      007274 70                    2293 	.db #0x70	; 112	'p'
      007275 08                    2294 	.db #0x08	; 8
      007276 07                    2295 	.db #0x07	; 7
      007277 61                    2296 	.db #0x61	; 97	'a'
      007278 51                    2297 	.db #0x51	; 81	'Q'
      007279 49                    2298 	.db #0x49	; 73	'I'
      00727A 45                    2299 	.db #0x45	; 69	'E'
      00727B 43                    2300 	.db #0x43	; 67	'C'
      00727C 00                    2301 	.db #0x00	; 0
      00727D 7F                    2302 	.db #0x7f	; 127
      00727E 41                    2303 	.db #0x41	; 65	'A'
      00727F 41                    2304 	.db #0x41	; 65	'A'
      007280 00                    2305 	.db #0x00	; 0
      007281 02                    2306 	.db #0x02	; 2
      007282 04                    2307 	.db #0x04	; 4
      007283 08                    2308 	.db #0x08	; 8
      007284 10                    2309 	.db #0x10	; 16
      007285 20                    2310 	.db #0x20	; 32
      007286 00                    2311 	.db #0x00	; 0
      007287 41                    2312 	.db #0x41	; 65	'A'
      007288 41                    2313 	.db #0x41	; 65	'A'
      007289 7F                    2314 	.db #0x7f	; 127
      00728A 00                    2315 	.db #0x00	; 0
      00728B 04                    2316 	.db #0x04	; 4
      00728C 02                    2317 	.db #0x02	; 2
      00728D 01                    2318 	.db #0x01	; 1
      00728E 02                    2319 	.db #0x02	; 2
      00728F 04                    2320 	.db #0x04	; 4
      007290 40                    2321 	.db #0x40	; 64
      007291 40                    2322 	.db #0x40	; 64
      007292 40                    2323 	.db #0x40	; 64
      007293 40                    2324 	.db #0x40	; 64
      007294 40                    2325 	.db #0x40	; 64
      007295 00                    2326 	.db #0x00	; 0
      007296 01                    2327 	.db #0x01	; 1
      007297 02                    2328 	.db #0x02	; 2
      007298 04                    2329 	.db #0x04	; 4
      007299 00                    2330 	.db #0x00	; 0
      00729A 20                    2331 	.db #0x20	; 32
      00729B 54                    2332 	.db #0x54	; 84	'T'
      00729C 54                    2333 	.db #0x54	; 84	'T'
      00729D 54                    2334 	.db #0x54	; 84	'T'
      00729E 78                    2335 	.db #0x78	; 120	'x'
      00729F 7F                    2336 	.db #0x7f	; 127
      0072A0 48                    2337 	.db #0x48	; 72	'H'
      0072A1 44                    2338 	.db #0x44	; 68	'D'
      0072A2 44                    2339 	.db #0x44	; 68	'D'
      0072A3 38                    2340 	.db #0x38	; 56	'8'
      0072A4 38                    2341 	.db #0x38	; 56	'8'
      0072A5 44                    2342 	.db #0x44	; 68	'D'
      0072A6 44                    2343 	.db #0x44	; 68	'D'
      0072A7 44                    2344 	.db #0x44	; 68	'D'
      0072A8 20                    2345 	.db #0x20	; 32
      0072A9 38                    2346 	.db #0x38	; 56	'8'
      0072AA 44                    2347 	.db #0x44	; 68	'D'
      0072AB 44                    2348 	.db #0x44	; 68	'D'
      0072AC 48                    2349 	.db #0x48	; 72	'H'
      0072AD 7F                    2350 	.db #0x7f	; 127
      0072AE 38                    2351 	.db #0x38	; 56	'8'
      0072AF 54                    2352 	.db #0x54	; 84	'T'
      0072B0 54                    2353 	.db #0x54	; 84	'T'
      0072B1 54                    2354 	.db #0x54	; 84	'T'
      0072B2 18                    2355 	.db #0x18	; 24
      0072B3 08                    2356 	.db #0x08	; 8
      0072B4 7E                    2357 	.db #0x7e	; 126
      0072B5 09                    2358 	.db #0x09	; 9
      0072B6 01                    2359 	.db #0x01	; 1
      0072B7 02                    2360 	.db #0x02	; 2
      0072B8 0C                    2361 	.db #0x0c	; 12
      0072B9 52                    2362 	.db #0x52	; 82	'R'
      0072BA 52                    2363 	.db #0x52	; 82	'R'
      0072BB 52                    2364 	.db #0x52	; 82	'R'
      0072BC 3E                    2365 	.db #0x3e	; 62
      0072BD 7F                    2366 	.db #0x7f	; 127
      0072BE 08                    2367 	.db #0x08	; 8
      0072BF 04                    2368 	.db #0x04	; 4
      0072C0 04                    2369 	.db #0x04	; 4
      0072C1 78                    2370 	.db #0x78	; 120	'x'
      0072C2 00                    2371 	.db #0x00	; 0
      0072C3 44                    2372 	.db #0x44	; 68	'D'
      0072C4 7D                    2373 	.db #0x7d	; 125
      0072C5 40                    2374 	.db #0x40	; 64
      0072C6 00                    2375 	.db #0x00	; 0
      0072C7 20                    2376 	.db #0x20	; 32
      0072C8 40                    2377 	.db #0x40	; 64
      0072C9 44                    2378 	.db #0x44	; 68	'D'
      0072CA 3D                    2379 	.db #0x3d	; 61
      0072CB 00                    2380 	.db #0x00	; 0
      0072CC 7F                    2381 	.db #0x7f	; 127
      0072CD 10                    2382 	.db #0x10	; 16
      0072CE 28                    2383 	.db #0x28	; 40
      0072CF 44                    2384 	.db #0x44	; 68	'D'
      0072D0 00                    2385 	.db #0x00	; 0
      0072D1 00                    2386 	.db #0x00	; 0
      0072D2 41                    2387 	.db #0x41	; 65	'A'
      0072D3 7F                    2388 	.db #0x7f	; 127
      0072D4 40                    2389 	.db #0x40	; 64
      0072D5 00                    2390 	.db #0x00	; 0
      0072D6 7C                    2391 	.db #0x7c	; 124
      0072D7 04                    2392 	.db #0x04	; 4
      0072D8 18                    2393 	.db #0x18	; 24
      0072D9 04                    2394 	.db #0x04	; 4
      0072DA 78                    2395 	.db #0x78	; 120	'x'
      0072DB 7C                    2396 	.db #0x7c	; 124
      0072DC 08                    2397 	.db #0x08	; 8
      0072DD 04                    2398 	.db #0x04	; 4
      0072DE 04                    2399 	.db #0x04	; 4
      0072DF 78                    2400 	.db #0x78	; 120	'x'
      0072E0 38                    2401 	.db #0x38	; 56	'8'
      0072E1 44                    2402 	.db #0x44	; 68	'D'
      0072E2 44                    2403 	.db #0x44	; 68	'D'
      0072E3 44                    2404 	.db #0x44	; 68	'D'
      0072E4 38                    2405 	.db #0x38	; 56	'8'
      0072E5 7C                    2406 	.db #0x7c	; 124
      0072E6 14                    2407 	.db #0x14	; 20
      0072E7 14                    2408 	.db #0x14	; 20
      0072E8 14                    2409 	.db #0x14	; 20
      0072E9 08                    2410 	.db #0x08	; 8
      0072EA 08                    2411 	.db #0x08	; 8
      0072EB 14                    2412 	.db #0x14	; 20
      0072EC 14                    2413 	.db #0x14	; 20
      0072ED 14                    2414 	.db #0x14	; 20
      0072EE 7C                    2415 	.db #0x7c	; 124
      0072EF 7C                    2416 	.db #0x7c	; 124
      0072F0 08                    2417 	.db #0x08	; 8
      0072F1 04                    2418 	.db #0x04	; 4
      0072F2 04                    2419 	.db #0x04	; 4
      0072F3 08                    2420 	.db #0x08	; 8
      0072F4 48                    2421 	.db #0x48	; 72	'H'
      0072F5 54                    2422 	.db #0x54	; 84	'T'
      0072F6 54                    2423 	.db #0x54	; 84	'T'
      0072F7 54                    2424 	.db #0x54	; 84	'T'
      0072F8 20                    2425 	.db #0x20	; 32
      0072F9 04                    2426 	.db #0x04	; 4
      0072FA 3F                    2427 	.db #0x3f	; 63
      0072FB 44                    2428 	.db #0x44	; 68	'D'
      0072FC 40                    2429 	.db #0x40	; 64
      0072FD 20                    2430 	.db #0x20	; 32
      0072FE 3C                    2431 	.db #0x3c	; 60
      0072FF 40                    2432 	.db #0x40	; 64
      007300 40                    2433 	.db #0x40	; 64
      007301 20                    2434 	.db #0x20	; 32
      007302 7C                    2435 	.db #0x7c	; 124
      007303 1C                    2436 	.db #0x1c	; 28
      007304 20                    2437 	.db #0x20	; 32
      007305 40                    2438 	.db #0x40	; 64
      007306 20                    2439 	.db #0x20	; 32
      007307 1C                    2440 	.db #0x1c	; 28
      007308 3C                    2441 	.db #0x3c	; 60
      007309 40                    2442 	.db #0x40	; 64
      00730A 30                    2443 	.db #0x30	; 48	'0'
      00730B 40                    2444 	.db #0x40	; 64
      00730C 3C                    2445 	.db #0x3c	; 60
      00730D 44                    2446 	.db #0x44	; 68	'D'
      00730E 28                    2447 	.db #0x28	; 40
      00730F 10                    2448 	.db #0x10	; 16
      007310 28                    2449 	.db #0x28	; 40
      007311 44                    2450 	.db #0x44	; 68	'D'
      007312 0C                    2451 	.db #0x0c	; 12
      007313 50                    2452 	.db #0x50	; 80	'P'
      007314 50                    2453 	.db #0x50	; 80	'P'
      007315 50                    2454 	.db #0x50	; 80	'P'
      007316 3C                    2455 	.db #0x3c	; 60
      007317 44                    2456 	.db #0x44	; 68	'D'
      007318 64                    2457 	.db #0x64	; 100	'd'
      007319 54                    2458 	.db #0x54	; 84	'T'
      00731A 4C                    2459 	.db #0x4c	; 76	'L'
      00731B 44                    2460 	.db #0x44	; 68	'D'
      00731C 00                    2461 	.db #0x00	; 0
      00731D 08                    2462 	.db #0x08	; 8
      00731E 36                    2463 	.db #0x36	; 54	'6'
      00731F 41                    2464 	.db #0x41	; 65	'A'
      007320 00                    2465 	.db #0x00	; 0
      007321 00                    2466 	.db #0x00	; 0
      007322 00                    2467 	.db #0x00	; 0
      007323 7F                    2468 	.db #0x7f	; 127
      007324 00                    2469 	.db #0x00	; 0
      007325 00                    2470 	.db #0x00	; 0
      007326 00                    2471 	.db #0x00	; 0
      007327 41                    2472 	.db #0x41	; 65	'A'
      007328 36                    2473 	.db #0x36	; 54	'6'
      007329 08                    2474 	.db #0x08	; 8
      00732A 00                    2475 	.db #0x00	; 0
      00732B 10                    2476 	.db #0x10	; 16
      00732C 08                    2477 	.db #0x08	; 8
      00732D 08                    2478 	.db #0x08	; 8
      00732E 10                    2479 	.db #0x10	; 16
      00732F 08                    2480 	.db #0x08	; 8
      007330 00                    2481 	.db #0x00	; 0
      007331 00                    2482 	.db #0x00	; 0
      007332 00                    2483 	.db #0x00	; 0
      007333 00                    2484 	.db #0x00	; 0
      007334 00                    2485 	.db #0x00	; 0
                                   2486 	.area CONST   (CODE)
      007335                       2487 ___str_0:
      007335 52 75 6E 69 6E 67 20  2488 	.ascii "Runing Stepper Motor!"
             53 74 65 70 70 65 72
             20 4D 6F 74 6F 72 21
      00734A 0A                    2489 	.db 0x0a
      00734B 00                    2490 	.db 0x00
                                   2491 	.area CSEG    (CODE)
                                   2492 	.area CONST   (CODE)
      00734C                       2493 ___str_1:
      00734C 64 69 73 74 61 6E 63  2494 	.ascii "distance control page not implemented!"
             65 20 63 6F 6E 74 72
             6F 6C 20 70 61 67 65
             20 6E 6F 74 20 69 6D
             70 6C 65 6D 65 6E 74
             65 64 21
      007372 0A                    2495 	.db 0x0a
      007373 00                    2496 	.db 0x00
                                   2497 	.area CSEG    (CODE)
                                   2498 	.area CONST   (CODE)
      007374                       2499 ___str_2:
      007374 72 65 61 63 68 65 64  2500 	.ascii "reached encoder control page not implemented!"
             20 65 6E 63 6F 64 65
             72 20 63 6F 6E 74 72
             6F 6C 20 70 61 67 65
             20 6E 6F 74 20 69 6D
             70 6C 65 6D 65 6E 74
             65 64 21
      0073A1 0A                    2501 	.db 0x0a
      0073A2 00                    2502 	.db 0x00
                                   2503 	.area CSEG    (CODE)
                                   2504 	.area XINIT   (CODE)
      007BF3                       2505 __xinit__current_page:
      007BF3 00                    2506 	.db #0x00	; 0
      007BF4                       2507 __xinit__application_process_func:
      007BF4 D5 37                 2508 	.byte _application_process_welcome_page, (_application_process_welcome_page >> 8)
      007BF6 4C 38                 2509 	.byte _application_process_menu_page, (_application_process_menu_page >> 8)
      007BF8 2E 39                 2510 	.byte _application_process_step_control_page, (_application_process_step_control_page >> 8)
      007BFA 15 3D                 2511 	.byte _application_process_distance_control_page, (_application_process_distance_control_page >> 8)
      007BFC 2D 3D                 2512 	.byte _application_process_encoder_control_page, (_application_process_encoder_control_page >> 8)
      007BFE 37 3B                 2513 	.byte _application_process_step_control_set_frequency, (_application_process_step_control_set_frequency >> 8)
      007C00 BA 3B                 2514 	.byte _application_process_step_control_set_microstepping, (_application_process_step_control_set_microstepping >> 8)
      007C02 22 3C                 2515 	.byte _application_process_step_control_set_steps, (_application_process_step_control_set_steps >> 8)
      007C04                       2516 __xinit__float_digit_pointer:
      007C04 00                    2517 	.db #0x00	; 0
      007C05                       2518 __xinit__float_digits:
      007C05 00                    2519 	.db #0x00	; 0
      007C06 00                    2520 	.db #0x00	; 0
      007C07 00                    2521 	.db #0x00	; 0
      007C08 00                    2522 	.db #0x00	; 0
      007C09 00                    2523 	.db #0x00	; 0
      007C0A                       2524 __xinit__inputs:
      007C0A 00                    2525 	.db #0x00	; 0
      007C0B 63 40                 2526 	.byte _get_button1_status, (_get_button1_status >> 8)
      007C0D 00                    2527 	.db #0x00	; 0
      007C0E 69 40                 2528 	.byte _get_button2_status, (_get_button2_status >> 8)
      007C10 00                    2529 	.db #0x00	; 0
      007C11 5D 40                 2530 	.byte _get_encoder_button_status, (_get_encoder_button_status >> 8)
      007C13 00                    2531 	.db #0x00	; 0
      007C14 4A 33                 2532 	.byte _get_switch_status, (_get_switch_status >> 8)
      007C16 00 00                 2533 	.byte #0x00, #0x00	;  0
      007C18 A7 2C                 2534 	.byte _get_encoder_count, (_get_encoder_count >> 8)
      007C1A                       2535 __xinit__stepper_movement:
      007C1A 01                    2536 	.db #0x01	; 1
      007C1B 00                    2537 	.db #0x00	; 0
      007C1C 00                    2538 	.db #0x00	; 0
      007C1D 32 00 00 00           2539 	.byte #0x32, #0x00, #0x00, #0x00	; 50
      007C21 80 0C 00 00           2540 	.byte #0x80, #0x0c, #0x00, #0x00	; 3200
                                   2541 	.area CABS    (ABS,CODE)
