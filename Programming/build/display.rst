                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module display
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _SSD1306_DrawString
                                     12 	.globl _SSD1306_SetPosition
                                     13 	.globl _SSD1306_UpdateScreen
                                     14 	.globl _SSD1306_ClearScreen
                                     15 	.globl _get_stepper_state
                                     16 	.globl _sprintf
                                     17 	.globl _printf
                                     18 	.globl _S1SM0_FE
                                     19 	.globl _T1IE
                                     20 	.globl _T0IE
                                     21 	.globl _T1RUN
                                     22 	.globl _T0RUN
                                     23 	.globl _CY
                                     24 	.globl _AC
                                     25 	.globl _F0
                                     26 	.globl _RS1
                                     27 	.globl _RS0
                                     28 	.globl _OV
                                     29 	.globl _F1
                                     30 	.globl _P
                                     31 	.globl _EA
                                     32 	.globl _INT1IE
                                     33 	.globl _INT0IE
                                     34 	.globl _INT1TR
                                     35 	.globl _INT0TR
                                     36 	.globl _P5_5
                                     37 	.globl _P5_4
                                     38 	.globl _P5_3
                                     39 	.globl _P5_2
                                     40 	.globl _P5_1
                                     41 	.globl _P5_0
                                     42 	.globl _P3_7
                                     43 	.globl _P3_6
                                     44 	.globl _P3_5
                                     45 	.globl _P3_4
                                     46 	.globl _P3_3
                                     47 	.globl _P3_2
                                     48 	.globl _P3_1
                                     49 	.globl _P3_0
                                     50 	.globl _P2_7
                                     51 	.globl _P2_6
                                     52 	.globl _P2_5
                                     53 	.globl _P2_4
                                     54 	.globl _P2_3
                                     55 	.globl _P2_2
                                     56 	.globl _P2_1
                                     57 	.globl _P2_0
                                     58 	.globl _P1_7
                                     59 	.globl _P1_6
                                     60 	.globl _P1_5
                                     61 	.globl _P1_4
                                     62 	.globl _P1_3
                                     63 	.globl _P1_2
                                     64 	.globl _P1_1
                                     65 	.globl _P1_0
                                     66 	.globl _USBADR
                                     67 	.globl _USBCON
                                     68 	.globl _USBDAT
                                     69 	.globl _USBCLK
                                     70 	.globl _S4BUF
                                     71 	.globl _S4CON
                                     72 	.globl _S3BUF
                                     73 	.globl _S3CON
                                     74 	.globl _S2BUF
                                     75 	.globl _S2CON
                                     76 	.globl _S1BUF
                                     77 	.globl _S1CON
                                     78 	.globl _SADEN
                                     79 	.globl _SADDR
                                     80 	.globl _AUXINTIF
                                     81 	.globl _T3
                                     82 	.globl _T3L
                                     83 	.globl _T3H
                                     84 	.globl _T4
                                     85 	.globl _T4L
                                     86 	.globl _T4H
                                     87 	.globl _T4T3M
                                     88 	.globl _WDT_CONTR
                                     89 	.globl _AUXR
                                     90 	.globl _T2
                                     91 	.globl _T2H
                                     92 	.globl _T2L
                                     93 	.globl _T1
                                     94 	.globl _T1H
                                     95 	.globl _T1L
                                     96 	.globl _T0
                                     97 	.globl _T0H
                                     98 	.globl _T0L
                                     99 	.globl _TMOD
                                    100 	.globl _TCON
                                    101 	.globl _IRTRIM
                                    102 	.globl _LIRTRIM
                                    103 	.globl _IRCBAND
                                    104 	.globl _SPDAT
                                    105 	.globl _SPCTL
                                    106 	.globl _SPSTAT
                                    107 	.globl _WKTC
                                    108 	.globl _WKTCH
                                    109 	.globl _WKTCL
                                    110 	.globl _BUS_SPEED
                                    111 	.globl _P_SW2
                                    112 	.globl _P_SW1
                                    113 	.globl _RSTCFG
                                    114 	.globl _PCON
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _SP
                                    119 	.globl _IP3H
                                    120 	.globl _IP3L
                                    121 	.globl _IP2H
                                    122 	.globl _IP2L
                                    123 	.globl _IE2
                                    124 	.globl _IP1H
                                    125 	.globl _IP1L
                                    126 	.globl _IE1
                                    127 	.globl _INT_CLKO
                                    128 	.globl _IAP_TPS
                                    129 	.globl _IAP_CONTR
                                    130 	.globl _IAP_TRIG
                                    131 	.globl _IAP_CMD
                                    132 	.globl _IAP_ADDR
                                    133 	.globl _IAP_ADDRL
                                    134 	.globl _IAP_ADDRH
                                    135 	.globl _IAP_DATA
                                    136 	.globl _P5M0
                                    137 	.globl _P5M1
                                    138 	.globl _P5
                                    139 	.globl _P3M0
                                    140 	.globl _P3M1
                                    141 	.globl _P3
                                    142 	.globl _P2M0
                                    143 	.globl _P2M1
                                    144 	.globl _P2
                                    145 	.globl _P1M0
                                    146 	.globl _P1M1
                                    147 	.globl _P1
                                    148 	.globl _TA
                                    149 	.globl _DPH1
                                    150 	.globl _DPL1
                                    151 	.globl _DPS
                                    152 	.globl _DP
                                    153 	.globl _DPH
                                    154 	.globl _DPL
                                    155 	.globl _CMPCR2
                                    156 	.globl _CMPCR1
                                    157 	.globl _DMA_ADC_AMT
                                    158 	.globl _ADCCFG
                                    159 	.globl _ADC_RES
                                    160 	.globl _ADC_RESL
                                    161 	.globl _ADC_RESH
                                    162 	.globl _ADC_CONTR
                                    163 	.globl _step_control_page_options_last
                                    164 	.globl _menu_page_selected_page
                                    165 	.globl _display_step_control_set_steps_option_PARM_2
                                    166 	.globl _DMA_UR4R_TXAL
                                    167 	.globl _DMA_UR4R_TXAH
                                    168 	.globl _DMA_UR4R_DONE
                                    169 	.globl _DMA_UR4R_AMT
                                    170 	.globl _DMA_UR4R_STA
                                    171 	.globl _DMA_UR4R_CR
                                    172 	.globl _DMA_UR4R_CFG
                                    173 	.globl _DMA_UR4T_TXAL
                                    174 	.globl _DMA_UR4T_TXAH
                                    175 	.globl _DMA_UR4T_DONE
                                    176 	.globl _DMA_UR4T_AMT
                                    177 	.globl _DMA_UR4T_STA
                                    178 	.globl _DMA_UR4T_CR
                                    179 	.globl _DMA_UR4T_CFG
                                    180 	.globl _DMA_UR3R_TXAL
                                    181 	.globl _DMA_UR3R_TXAH
                                    182 	.globl _DMA_UR3R_DONE
                                    183 	.globl _DMA_UR3R_AMT
                                    184 	.globl _DMA_UR3R_STA
                                    185 	.globl _DMA_UR3R_CR
                                    186 	.globl _DMA_UR3R_CFG
                                    187 	.globl _DMA_UR3T_TXAL
                                    188 	.globl _DMA_UR3T_TXAH
                                    189 	.globl _DMA_UR3T_DONE
                                    190 	.globl _DMA_UR3T_AMT
                                    191 	.globl _DMA_UR3T_STA
                                    192 	.globl _DMA_UR3T_CR
                                    193 	.globl _DMA_UR3T_CFG
                                    194 	.globl _DMA_UR2R_TXAL
                                    195 	.globl _DMA_UR2R_TXAH
                                    196 	.globl _DMA_UR2R_DONE
                                    197 	.globl _DMA_UR2R_AMT
                                    198 	.globl _DMA_UR2R_STA
                                    199 	.globl _DMA_UR2R_CR
                                    200 	.globl _DMA_UR2R_CFG
                                    201 	.globl _DMA_UR2T_TXAL
                                    202 	.globl _DMA_UR2T_TXAH
                                    203 	.globl _DMA_UR2T_DONE
                                    204 	.globl _DMA_UR2T_AMT
                                    205 	.globl _DMA_UR2T_STA
                                    206 	.globl _DMA_UR2T_CR
                                    207 	.globl _DMA_UR2T_CFG
                                    208 	.globl _DMA_UR1R_TXAL
                                    209 	.globl _DMA_UR1R_TXAH
                                    210 	.globl _DMA_UR1R_DONE
                                    211 	.globl _DMA_UR1R_AMT
                                    212 	.globl _DMA_UR1R_STA
                                    213 	.globl _DMA_UR1R_CR
                                    214 	.globl _DMA_UR1R_CFG
                                    215 	.globl _DMA_UR1T_TXAL
                                    216 	.globl _DMA_UR1T_TXAH
                                    217 	.globl _DMA_UR1T_DONE
                                    218 	.globl _DMA_URTX_AMT
                                    219 	.globl _DMA_UR1T_STA
                                    220 	.globl _DMA_UR1T_CR
                                    221 	.globl _DMA_UR1T_CFG
                                    222 	.globl _TM4PS
                                    223 	.globl _TM3PS
                                    224 	.globl _TM2PS
                                    225 	.globl _IRC48MCR
                                    226 	.globl _IRCDB
                                    227 	.globl _MCLKOCR
                                    228 	.globl _CKSEL
                                    229 	.globl _IRC32KCR
                                    230 	.globl _XOSCCR
                                    231 	.globl _HIRCCR
                                    232 	.globl _CLKDIV
                                    233 	.globl _DMA_SPI_CFG2
                                    234 	.globl _DMA_SPI_RXAL
                                    235 	.globl _DMA_SPI_RXAH
                                    236 	.globl _DMA_SPI_TXAL
                                    237 	.globl _DMA_SPI_TXAH
                                    238 	.globl _DMA_SPI_DONE
                                    239 	.globl _DMA_SPI_AMT
                                    240 	.globl _DMA_SPI_STA
                                    241 	.globl _DMA_SPI_CR
                                    242 	.globl _DMA_SPI_CFG
                                    243 	.globl _SSEC
                                    244 	.globl _SEC
                                    245 	.globl _MIN
                                    246 	.globl _HOUR
                                    247 	.globl _DAY
                                    248 	.globl _MONTH
                                    249 	.globl _YEAR
                                    250 	.globl _INISSEC
                                    251 	.globl _INISEC
                                    252 	.globl _INIMIN
                                    253 	.globl _INIHOUR
                                    254 	.globl _INIDAY
                                    255 	.globl _INIMONTH
                                    256 	.globl _INIYEAR
                                    257 	.globl _ALASSEC
                                    258 	.globl _ALASEC
                                    259 	.globl _ALAMIN
                                    260 	.globl _ALAHOUR
                                    261 	.globl _RTCIF
                                    262 	.globl _RTCIEN
                                    263 	.globl _RTCCFG
                                    264 	.globl _RTCCR
                                    265 	.globl _PWMB_OISR
                                    266 	.globl _PWMB_DTR
                                    267 	.globl _PWMB_BKR
                                    268 	.globl _PWMB_CCR4L
                                    269 	.globl _PWMB_CCR4H
                                    270 	.globl _PWMB_CCR3L
                                    271 	.globl _PWMB_CCR3H
                                    272 	.globl _PWMB_CCR2L
                                    273 	.globl _PWMB_CCR2H
                                    274 	.globl _PWMB_CCR1L
                                    275 	.globl _PWMB_CCR1H
                                    276 	.globl _PWMB_RCR
                                    277 	.globl _PWMB_ARRL
                                    278 	.globl _PWMB_ARRH
                                    279 	.globl _PWMB_PSCRL
                                    280 	.globl _PWMB_PSCRH
                                    281 	.globl _PWMB_CNTRL
                                    282 	.globl _PWMB_CNTRH
                                    283 	.globl _PWMB_CCER2
                                    284 	.globl _PWMB_CCER1
                                    285 	.globl _PWMB_CCMR4
                                    286 	.globl _PWMB_CCMR3
                                    287 	.globl _PWMB_CCMR2
                                    288 	.globl _PWMB_CCMR1
                                    289 	.globl _PWMB_EGR
                                    290 	.globl _PWMB_SR2
                                    291 	.globl _PWMB_SR1
                                    292 	.globl _PWMB_IER
                                    293 	.globl _PWMB_ETR
                                    294 	.globl _PWMB_SMCR
                                    295 	.globl _PWMB_CR2
                                    296 	.globl _PWMB_CR1
                                    297 	.globl _PWMA_OISR
                                    298 	.globl _PWMA_DTR
                                    299 	.globl _PWMA_BKR
                                    300 	.globl _PWMA_CCR4L
                                    301 	.globl _PWMA_CCR4H
                                    302 	.globl _PWMA_CCR3L
                                    303 	.globl _PWMA_CCR3H
                                    304 	.globl _PWMA_CCR2L
                                    305 	.globl _PWMA_CCR2H
                                    306 	.globl _PWMA_CCR1L
                                    307 	.globl _PWMA_CCR1H
                                    308 	.globl _PWMA_RCR
                                    309 	.globl _PWMA_ARRL
                                    310 	.globl _PWMA_ARRH
                                    311 	.globl _PWMA_PSCRL
                                    312 	.globl _PWMA_PSCRH
                                    313 	.globl _PWMA_CNTRL
                                    314 	.globl _PWMA_CNTRH
                                    315 	.globl _PWMA_CCER2
                                    316 	.globl _PWMA_CCER1
                                    317 	.globl _PWMA_CCMR4
                                    318 	.globl _PWMA_CCMR3
                                    319 	.globl _PWMA_CCMR2
                                    320 	.globl _PWMA_CCMR1
                                    321 	.globl _PWMA_EGR
                                    322 	.globl _PWMA_SR2
                                    323 	.globl _PWMA_SR1
                                    324 	.globl _PWMA_IER
                                    325 	.globl _PWMA_ETR
                                    326 	.globl _PWMA_SMCR
                                    327 	.globl _PWMA_CR2
                                    328 	.globl _PWMA_CR1
                                    329 	.globl _PWMB_IOAUX
                                    330 	.globl _PWMB_PS
                                    331 	.globl _PWMB_ENO
                                    332 	.globl _PWMB_ETRPS
                                    333 	.globl _PWMA_IOAUX
                                    334 	.globl _PWMA_PS
                                    335 	.globl _PWMA_ENO
                                    336 	.globl _PWMA_ETRPS
                                    337 	.globl _RSTFLAG
                                    338 	.globl _SPFUNC
                                    339 	.globl _OPCON
                                    340 	.globl _ARCON
                                    341 	.globl _MD4
                                    342 	.globl _MD5
                                    343 	.globl _MD0
                                    344 	.globl _MD1
                                    345 	.globl _MD2
                                    346 	.globl _MD3
                                    347 	.globl _DMA_LCM_RXAL
                                    348 	.globl _DMA_LCM_RXAH
                                    349 	.globl _DMA_LCM_TXAL
                                    350 	.globl _DMA_LCM_TXAH
                                    351 	.globl _DMA_LCM_DONE
                                    352 	.globl _DMA_LCM_AMT
                                    353 	.globl _DMA_LCM_STA
                                    354 	.globl _DMA_LCM_CR
                                    355 	.globl _DMA_LCM_CFG
                                    356 	.globl _LCMIDDAT
                                    357 	.globl _LCMIDDATH
                                    358 	.globl _LCMIDDATL
                                    359 	.globl _LCMSTA
                                    360 	.globl _LCMCR
                                    361 	.globl _LCMCFG2
                                    362 	.globl _LCMCFG
                                    363 	.globl _I2CMSAUX
                                    364 	.globl _I2CRXD
                                    365 	.globl _I2CTXD
                                    366 	.globl _I2CSLADR
                                    367 	.globl _I2CSLST
                                    368 	.globl _I2CSLCR
                                    369 	.globl _I2CMSST
                                    370 	.globl _I2CMSCR
                                    371 	.globl _I2CCFG
                                    372 	.globl _PINIPH
                                    373 	.globl _PINIPL
                                    374 	.globl _P5IE
                                    375 	.globl _P5DR
                                    376 	.globl _P5SR
                                    377 	.globl _P5NCS
                                    378 	.globl _P5PU
                                    379 	.globl _P5WKUE
                                    380 	.globl _P5IM1
                                    381 	.globl _P5IM0
                                    382 	.globl _P5INTF
                                    383 	.globl _P5INTE
                                    384 	.globl _P3IE
                                    385 	.globl _P3DR
                                    386 	.globl _P3SR
                                    387 	.globl _P3NCS
                                    388 	.globl _P3PU
                                    389 	.globl _P3WKUE
                                    390 	.globl _P3IM1
                                    391 	.globl _P3IM0
                                    392 	.globl _P3INTF
                                    393 	.globl _P3INTE
                                    394 	.globl _P2IE
                                    395 	.globl _P2DR
                                    396 	.globl _P2SR
                                    397 	.globl _P2NCS
                                    398 	.globl _P2PU
                                    399 	.globl _P2WKUE
                                    400 	.globl _P2IM1
                                    401 	.globl _P2IM0
                                    402 	.globl _P2INTF
                                    403 	.globl _P2INTE
                                    404 	.globl _P1IE
                                    405 	.globl _P1DR
                                    406 	.globl _P1SR
                                    407 	.globl _P1NCS
                                    408 	.globl _P1PU
                                    409 	.globl _P1WKUE
                                    410 	.globl _P1IM1
                                    411 	.globl _P1IM0
                                    412 	.globl _P1INTF
                                    413 	.globl _P1INTE
                                    414 	.globl _DMA_M2M_RXAL
                                    415 	.globl _DMA_M2M_RXAH
                                    416 	.globl _DMA_M2M_TXAL
                                    417 	.globl _DMA_M2M_TXAH
                                    418 	.globl _DMA_M2M_DONE
                                    419 	.globl _DMA_M2M_AMT
                                    420 	.globl _DMA_M2M_STA
                                    421 	.globl _DMA_M2M_CR
                                    422 	.globl _DMA_M2M_CFG
                                    423 	.globl _CMPEXCFG
                                    424 	.globl _DMA_ADC_CHSW1
                                    425 	.globl _DMA_ADC_CHSW0
                                    426 	.globl _DMA_ADC_CFG2
                                    427 	.globl _DMA_ADC_RXAL
                                    428 	.globl _DMA_ADC_RXAH
                                    429 	.globl _DMA_ADC_STA
                                    430 	.globl _DMA_ADC_CR
                                    431 	.globl _DMA_ADC_CFG
                                    432 	.globl _ADCEXCFG
                                    433 	.globl _ADCTIM
                                    434 	.globl _stepper_state_last
                                    435 	.globl _display_welcome_page
                                    436 	.globl _display_menu_page
                                    437 	.globl _display_step_control_page_first_time
                                    438 	.globl _display_step_control_page
                                    439 	.globl _display_distance_control_page_first_time
                                    440 	.globl _display_encoder_control_page_first_time
                                    441 	.globl _display_update_stepper_dir
                                    442 	.globl _display_update_stepper_enable
                                    443 	.globl _display_step_control_set_steps_option
                                    444 	.globl _display_step_control_set_microstepping_option
                                    445 	.globl _display_step_control_set_frequency_option
                                    446 ;--------------------------------------------------------
                                    447 ; special function registers
                                    448 ;--------------------------------------------------------
                                    449 	.area RSEG    (ABS,DATA)
      000000                        450 	.org 0x0000
                           0000BC   451 _ADC_CONTR	=	0x00bc
                           0000BD   452 _ADC_RESH	=	0x00bd
                           0000BE   453 _ADC_RESL	=	0x00be
                           00BDBE   454 _ADC_RES	=	0xbdbe
                           0000DE   455 _ADCCFG	=	0x00de
                           0000FA   456 _DMA_ADC_AMT	=	0x00fa
                           0000E6   457 _CMPCR1	=	0x00e6
                           0000E7   458 _CMPCR2	=	0x00e7
                           000082   459 _DPL	=	0x0082
                           000083   460 _DPH	=	0x0083
                           008382   461 _DP	=	0x8382
                           0000E3   462 _DPS	=	0x00e3
                           0000E4   463 _DPL1	=	0x00e4
                           0000E5   464 _DPH1	=	0x00e5
                           0000AE   465 _TA	=	0x00ae
                           000090   466 _P1	=	0x0090
                           000091   467 _P1M1	=	0x0091
                           000092   468 _P1M0	=	0x0092
                           0000A0   469 _P2	=	0x00a0
                           000095   470 _P2M1	=	0x0095
                           000096   471 _P2M0	=	0x0096
                           0000B0   472 _P3	=	0x00b0
                           0000B1   473 _P3M1	=	0x00b1
                           0000B2   474 _P3M0	=	0x00b2
                           0000C8   475 _P5	=	0x00c8
                           0000C9   476 _P5M1	=	0x00c9
                           0000CA   477 _P5M0	=	0x00ca
                           0000C2   478 _IAP_DATA	=	0x00c2
                           0000C3   479 _IAP_ADDRH	=	0x00c3
                           0000C4   480 _IAP_ADDRL	=	0x00c4
                           00C3C4   481 _IAP_ADDR	=	0xc3c4
                           0000C5   482 _IAP_CMD	=	0x00c5
                           0000C6   483 _IAP_TRIG	=	0x00c6
                           0000C7   484 _IAP_CONTR	=	0x00c7
                           0000F5   485 _IAP_TPS	=	0x00f5
                           00008F   486 _INT_CLKO	=	0x008f
                           0000A8   487 _IE1	=	0x00a8
                           0000B8   488 _IP1L	=	0x00b8
                           0000B7   489 _IP1H	=	0x00b7
                           0000AF   490 _IE2	=	0x00af
                           0000B5   491 _IP2L	=	0x00b5
                           0000B6   492 _IP2H	=	0x00b6
                           0000DF   493 _IP3L	=	0x00df
                           0000EE   494 _IP3H	=	0x00ee
                           000081   495 _SP	=	0x0081
                           0000D0   496 _PSW	=	0x00d0
                           0000E0   497 _ACC	=	0x00e0
                           0000F0   498 _B	=	0x00f0
                           000087   499 _PCON	=	0x0087
                           0000FF   500 _RSTCFG	=	0x00ff
                           0000A2   501 _P_SW1	=	0x00a2
                           0000BA   502 _P_SW2	=	0x00ba
                           0000A1   503 _BUS_SPEED	=	0x00a1
                           0000AA   504 _WKTCL	=	0x00aa
                           0000AB   505 _WKTCH	=	0x00ab
                           00ABAA   506 _WKTC	=	0xabaa
                           0000CD   507 _SPSTAT	=	0x00cd
                           0000CE   508 _SPCTL	=	0x00ce
                           0000CF   509 _SPDAT	=	0x00cf
                           00009D   510 _IRCBAND	=	0x009d
                           00009E   511 _LIRTRIM	=	0x009e
                           00009F   512 _IRTRIM	=	0x009f
                           000088   513 _TCON	=	0x0088
                           000089   514 _TMOD	=	0x0089
                           00008A   515 _T0L	=	0x008a
                           00008C   516 _T0H	=	0x008c
                           008C8A   517 _T0	=	0x8c8a
                           00008B   518 _T1L	=	0x008b
                           00008D   519 _T1H	=	0x008d
                           008D8B   520 _T1	=	0x8d8b
                           0000D7   521 _T2L	=	0x00d7
                           0000D6   522 _T2H	=	0x00d6
                           00D6D7   523 _T2	=	0xd6d7
                           00008E   524 _AUXR	=	0x008e
                           0000C1   525 _WDT_CONTR	=	0x00c1
                           0000D1   526 _T4T3M	=	0x00d1
                           0000D2   527 _T4H	=	0x00d2
                           0000D3   528 _T4L	=	0x00d3
                           00D2D3   529 _T4	=	0xd2d3
                           0000D4   530 _T3H	=	0x00d4
                           0000D5   531 _T3L	=	0x00d5
                           00D4D5   532 _T3	=	0xd4d5
                           0000EF   533 _AUXINTIF	=	0x00ef
                           0000A9   534 _SADDR	=	0x00a9
                           0000B9   535 _SADEN	=	0x00b9
                           000098   536 _S1CON	=	0x0098
                           000099   537 _S1BUF	=	0x0099
                           00009A   538 _S2CON	=	0x009a
                           00009B   539 _S2BUF	=	0x009b
                           0000AC   540 _S3CON	=	0x00ac
                           0000AD   541 _S3BUF	=	0x00ad
                           000084   542 _S4CON	=	0x0084
                           000085   543 _S4BUF	=	0x0085
                           0000DC   544 _USBCLK	=	0x00dc
                           0000EC   545 _USBDAT	=	0x00ec
                           0000F4   546 _USBCON	=	0x00f4
                           0000FC   547 _USBADR	=	0x00fc
                                    548 ;--------------------------------------------------------
                                    549 ; special function bits
                                    550 ;--------------------------------------------------------
                                    551 	.area RSEG    (ABS,DATA)
      000000                        552 	.org 0x0000
                           000090   553 _P1_0	=	0x0090
                           000091   554 _P1_1	=	0x0091
                           000092   555 _P1_2	=	0x0092
                           000093   556 _P1_3	=	0x0093
                           000094   557 _P1_4	=	0x0094
                           000095   558 _P1_5	=	0x0095
                           000096   559 _P1_6	=	0x0096
                           000097   560 _P1_7	=	0x0097
                           0000A0   561 _P2_0	=	0x00a0
                           0000A1   562 _P2_1	=	0x00a1
                           0000A2   563 _P2_2	=	0x00a2
                           0000A3   564 _P2_3	=	0x00a3
                           0000A4   565 _P2_4	=	0x00a4
                           0000A5   566 _P2_5	=	0x00a5
                           0000A6   567 _P2_6	=	0x00a6
                           0000A7   568 _P2_7	=	0x00a7
                           0000B0   569 _P3_0	=	0x00b0
                           0000B1   570 _P3_1	=	0x00b1
                           0000B2   571 _P3_2	=	0x00b2
                           0000B3   572 _P3_3	=	0x00b3
                           0000B4   573 _P3_4	=	0x00b4
                           0000B5   574 _P3_5	=	0x00b5
                           0000B6   575 _P3_6	=	0x00b6
                           0000B7   576 _P3_7	=	0x00b7
                           0000C8   577 _P5_0	=	0x00c8
                           0000C9   578 _P5_1	=	0x00c9
                           0000CA   579 _P5_2	=	0x00ca
                           0000CB   580 _P5_3	=	0x00cb
                           0000CC   581 _P5_4	=	0x00cc
                           0000CD   582 _P5_5	=	0x00cd
                           000088   583 _INT0TR	=	0x0088
                           00008A   584 _INT1TR	=	0x008a
                           0000A8   585 _INT0IE	=	0x00a8
                           0000AA   586 _INT1IE	=	0x00aa
                           0000AF   587 _EA	=	0x00af
                           0000D0   588 _P	=	0x00d0
                           0000D1   589 _F1	=	0x00d1
                           0000D2   590 _OV	=	0x00d2
                           0000D3   591 _RS0	=	0x00d3
                           0000D4   592 _RS1	=	0x00d4
                           0000D5   593 _F0	=	0x00d5
                           0000D6   594 _AC	=	0x00d6
                           0000D7   595 _CY	=	0x00d7
                           00008C   596 _T0RUN	=	0x008c
                           00008E   597 _T1RUN	=	0x008e
                           0000A9   598 _T0IE	=	0x00a9
                           0000AB   599 _T1IE	=	0x00ab
                           00009F   600 _S1SM0_FE	=	0x009f
                                    601 ;--------------------------------------------------------
                                    602 ; overlayable register banks
                                    603 ;--------------------------------------------------------
                                    604 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        605 	.ds 8
                                    606 ;--------------------------------------------------------
                                    607 ; internal ram data
                                    608 ;--------------------------------------------------------
                                    609 	.area DSEG    (DATA)
      000045                        610 _display_step_control_set_steps_option_sloc0_1_0:
      000045                        611 	.ds 2
      000047                        612 _display_step_control_set_steps_option_sloc1_1_0:
      000047                        613 	.ds 2
                                    614 ;--------------------------------------------------------
                                    615 ; overlayable items in internal ram 
                                    616 ;--------------------------------------------------------
                                    617 ;--------------------------------------------------------
                                    618 ; indirectly addressable internal ram data
                                    619 ;--------------------------------------------------------
                                    620 	.area ISEG    (DATA)
                                    621 ;--------------------------------------------------------
                                    622 ; absolute internal ram data
                                    623 ;--------------------------------------------------------
                                    624 	.area IABS    (ABS,DATA)
                                    625 	.area IABS    (ABS,DATA)
                                    626 ;--------------------------------------------------------
                                    627 ; bit data
                                    628 ;--------------------------------------------------------
                                    629 	.area BSEG    (BIT)
      000003                        630 _stepper_state_last::
      000003                        631 	.ds 1
                                    632 ;--------------------------------------------------------
                                    633 ; paged external ram data
                                    634 ;--------------------------------------------------------
                                    635 	.area PSEG    (PAG,XDATA)
                                    636 ;--------------------------------------------------------
                                    637 ; external ram data
                                    638 ;--------------------------------------------------------
                                    639 	.area XSEG    (XDATA)
                           00FEA8   640 _ADCTIM	=	0xfea8
                           00FEAD   641 _ADCEXCFG	=	0xfead
                           00FA10   642 _DMA_ADC_CFG	=	0xfa10
                           00FA11   643 _DMA_ADC_CR	=	0xfa11
                           00FA12   644 _DMA_ADC_STA	=	0xfa12
                           00FA17   645 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   646 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   647 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   648 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   649 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   650 _CMPEXCFG	=	0xfeae
                           00FA00   651 _DMA_M2M_CFG	=	0xfa00
                           00FA01   652 _DMA_M2M_CR	=	0xfa01
                           00FA02   653 _DMA_M2M_STA	=	0xfa02
                           00FA03   654 _DMA_M2M_AMT	=	0xfa03
                           00FA04   655 _DMA_M2M_DONE	=	0xfa04
                           00FA05   656 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   657 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   658 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   659 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   660 _P1INTE	=	0xfd01
                           00FD11   661 _P1INTF	=	0xfd11
                           00FD21   662 _P1IM0	=	0xfd21
                           00FD31   663 _P1IM1	=	0xfd31
                           00FD41   664 _P1WKUE	=	0xfd41
                           00FE11   665 _P1PU	=	0xfe11
                           00FE19   666 _P1NCS	=	0xfe19
                           00FE21   667 _P1SR	=	0xfe21
                           00FE29   668 _P1DR	=	0xfe29
                           00FE31   669 _P1IE	=	0xfe31
                           00FD02   670 _P2INTE	=	0xfd02
                           00FD12   671 _P2INTF	=	0xfd12
                           00FD22   672 _P2IM0	=	0xfd22
                           00FD32   673 _P2IM1	=	0xfd32
                           00FD42   674 _P2WKUE	=	0xfd42
                           00FE12   675 _P2PU	=	0xfe12
                           00FE1A   676 _P2NCS	=	0xfe1a
                           00FE22   677 _P2SR	=	0xfe22
                           00FE2A   678 _P2DR	=	0xfe2a
                           00FE32   679 _P2IE	=	0xfe32
                           00FD03   680 _P3INTE	=	0xfd03
                           00FD13   681 _P3INTF	=	0xfd13
                           00FD23   682 _P3IM0	=	0xfd23
                           00FD33   683 _P3IM1	=	0xfd33
                           00FD43   684 _P3WKUE	=	0xfd43
                           00FE13   685 _P3PU	=	0xfe13
                           00FE1B   686 _P3NCS	=	0xfe1b
                           00FE23   687 _P3SR	=	0xfe23
                           00FE2B   688 _P3DR	=	0xfe2b
                           00FE33   689 _P3IE	=	0xfe33
                           00FD05   690 _P5INTE	=	0xfd05
                           00FD15   691 _P5INTF	=	0xfd15
                           00FD25   692 _P5IM0	=	0xfd25
                           00FD35   693 _P5IM1	=	0xfd35
                           00FD45   694 _P5WKUE	=	0xfd45
                           00FE15   695 _P5PU	=	0xfe15
                           00FE1D   696 _P5NCS	=	0xfe1d
                           00FE25   697 _P5SR	=	0xfe25
                           00FE2D   698 _P5DR	=	0xfe2d
                           00FE35   699 _P5IE	=	0xfe35
                           00FD60   700 _PINIPL	=	0xfd60
                           00FD61   701 _PINIPH	=	0xfd61
                           00FE80   702 _I2CCFG	=	0xfe80
                           00FE81   703 _I2CMSCR	=	0xfe81
                           00FE82   704 _I2CMSST	=	0xfe82
                           00FE83   705 _I2CSLCR	=	0xfe83
                           00FE84   706 _I2CSLST	=	0xfe84
                           00FE85   707 _I2CSLADR	=	0xfe85
                           00FE86   708 _I2CTXD	=	0xfe86
                           00FE87   709 _I2CRXD	=	0xfe87
                           00FE88   710 _I2CMSAUX	=	0xfe88
                           00FE50   711 _LCMCFG	=	0xfe50
                           00FE51   712 _LCMCFG2	=	0xfe51
                           00FE52   713 _LCMCR	=	0xfe52
                           00FE53   714 _LCMSTA	=	0xfe53
                           00FE54   715 _LCMIDDATL	=	0xfe54
                           00FE55   716 _LCMIDDATH	=	0xfe55
                           00FE54   717 _LCMIDDAT	=	0xfe54
                           00FA70   718 _DMA_LCM_CFG	=	0xfa70
                           00FA71   719 _DMA_LCM_CR	=	0xfa71
                           00FA72   720 _DMA_LCM_STA	=	0xfa72
                           00FA73   721 _DMA_LCM_AMT	=	0xfa73
                           00FA74   722 _DMA_LCM_DONE	=	0xfa74
                           00FA75   723 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   724 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   725 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   726 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   727 _MD3	=	0xfcf0
                           00FCF1   728 _MD2	=	0xfcf1
                           00FCF2   729 _MD1	=	0xfcf2
                           00FCF3   730 _MD0	=	0xfcf3
                           00FCF4   731 _MD5	=	0xfcf4
                           00FCF5   732 _MD4	=	0xfcf5
                           00FCF6   733 _ARCON	=	0xfcf6
                           00FCF7   734 _OPCON	=	0xfcf7
                           00FE08   735 _SPFUNC	=	0xfe08
                           00FE09   736 _RSTFLAG	=	0xfe09
                           00FEB0   737 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   738 _PWMA_ENO	=	0xfeb1
                           00FEB2   739 _PWMA_PS	=	0xfeb2
                           00FEB3   740 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   741 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   742 _PWMB_ENO	=	0xfeb5
                           00FEB6   743 _PWMB_PS	=	0xfeb6
                           00FEB7   744 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   745 _PWMA_CR1	=	0xfec0
                           00FEC1   746 _PWMA_CR2	=	0xfec1
                           00FEC2   747 _PWMA_SMCR	=	0xfec2
                           00FEC3   748 _PWMA_ETR	=	0xfec3
                           00FEC4   749 _PWMA_IER	=	0xfec4
                           00FEC5   750 _PWMA_SR1	=	0xfec5
                           00FEC6   751 _PWMA_SR2	=	0xfec6
                           00FEC7   752 _PWMA_EGR	=	0xfec7
                           00FEC8   753 _PWMA_CCMR1	=	0xfec8
                           00FEC9   754 _PWMA_CCMR2	=	0xfec9
                           00FECA   755 _PWMA_CCMR3	=	0xfeca
                           00FECB   756 _PWMA_CCMR4	=	0xfecb
                           00FECC   757 _PWMA_CCER1	=	0xfecc
                           00FECD   758 _PWMA_CCER2	=	0xfecd
                           00FECE   759 _PWMA_CNTRH	=	0xfece
                           00FECF   760 _PWMA_CNTRL	=	0xfecf
                           00FED0   761 _PWMA_PSCRH	=	0xfed0
                           00FED1   762 _PWMA_PSCRL	=	0xfed1
                           00FED2   763 _PWMA_ARRH	=	0xfed2
                           00FED3   764 _PWMA_ARRL	=	0xfed3
                           00FED4   765 _PWMA_RCR	=	0xfed4
                           00FED5   766 _PWMA_CCR1H	=	0xfed5
                           00FED6   767 _PWMA_CCR1L	=	0xfed6
                           00FED7   768 _PWMA_CCR2H	=	0xfed7
                           00FED8   769 _PWMA_CCR2L	=	0xfed8
                           00FED9   770 _PWMA_CCR3H	=	0xfed9
                           00FEDA   771 _PWMA_CCR3L	=	0xfeda
                           00FEDB   772 _PWMA_CCR4H	=	0xfedb
                           00FEDC   773 _PWMA_CCR4L	=	0xfedc
                           00FEDD   774 _PWMA_BKR	=	0xfedd
                           00FEDE   775 _PWMA_DTR	=	0xfede
                           00FEDF   776 _PWMA_OISR	=	0xfedf
                           00FEE0   777 _PWMB_CR1	=	0xfee0
                           00FEE1   778 _PWMB_CR2	=	0xfee1
                           00FEE2   779 _PWMB_SMCR	=	0xfee2
                           00FEE3   780 _PWMB_ETR	=	0xfee3
                           00FEE4   781 _PWMB_IER	=	0xfee4
                           00FEE5   782 _PWMB_SR1	=	0xfee5
                           00FEE6   783 _PWMB_SR2	=	0xfee6
                           00FEE7   784 _PWMB_EGR	=	0xfee7
                           00FEE8   785 _PWMB_CCMR1	=	0xfee8
                           00FEE9   786 _PWMB_CCMR2	=	0xfee9
                           00FEEA   787 _PWMB_CCMR3	=	0xfeea
                           00FEEB   788 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   789 _PWMB_CCER1	=	0xfeec
                           00FEED   790 _PWMB_CCER2	=	0xfeed
                           00FEEE   791 _PWMB_CNTRH	=	0xfeee
                           00FEEF   792 _PWMB_CNTRL	=	0xfeef
                           00FEF0   793 _PWMB_PSCRH	=	0xfef0
                           00FEF1   794 _PWMB_PSCRL	=	0xfef1
                           00FEF2   795 _PWMB_ARRH	=	0xfef2
                           00FEF3   796 _PWMB_ARRL	=	0xfef3
                           00FEF4   797 _PWMB_RCR	=	0xfef4
                           00FEF5   798 _PWMB_CCR1H	=	0xfef5
                           00FEF6   799 _PWMB_CCR1L	=	0xfef6
                           00FEF7   800 _PWMB_CCR2H	=	0xfef7
                           00FEF8   801 _PWMB_CCR2L	=	0xfef8
                           00FEF9   802 _PWMB_CCR3H	=	0xfef9
                           00FEFA   803 _PWMB_CCR3L	=	0xfefa
                           00FEFB   804 _PWMB_CCR4H	=	0xfefb
                           00FEFC   805 _PWMB_CCR4L	=	0xfefc
                           00FEFD   806 _PWMB_BKR	=	0xfefd
                           00FEFE   807 _PWMB_DTR	=	0xfefe
                           00FEFF   808 _PWMB_OISR	=	0xfeff
                           00FE60   809 _RTCCR	=	0xfe60
                           00FE61   810 _RTCCFG	=	0xfe61
                           00FE62   811 _RTCIEN	=	0xfe62
                           00FE63   812 _RTCIF	=	0xfe63
                           00FE64   813 _ALAHOUR	=	0xfe64
                           00FE65   814 _ALAMIN	=	0xfe65
                           00FE66   815 _ALASEC	=	0xfe66
                           00FE67   816 _ALASSEC	=	0xfe67
                           00FE68   817 _INIYEAR	=	0xfe68
                           00FE69   818 _INIMONTH	=	0xfe69
                           00FE6A   819 _INIDAY	=	0xfe6a
                           00FE6B   820 _INIHOUR	=	0xfe6b
                           00FE6C   821 _INIMIN	=	0xfe6c
                           00FE6D   822 _INISEC	=	0xfe6d
                           00FE6E   823 _INISSEC	=	0xfe6e
                           00FE70   824 _YEAR	=	0xfe70
                           00FE71   825 _MONTH	=	0xfe71
                           00FE72   826 _DAY	=	0xfe72
                           00FE73   827 _HOUR	=	0xfe73
                           00FE74   828 _MIN	=	0xfe74
                           00FE75   829 _SEC	=	0xfe75
                           00FE76   830 _SSEC	=	0xfe76
                           00FA20   831 _DMA_SPI_CFG	=	0xfa20
                           00FA21   832 _DMA_SPI_CR	=	0xfa21
                           00FA22   833 _DMA_SPI_STA	=	0xfa22
                           00FA23   834 _DMA_SPI_AMT	=	0xfa23
                           00FA24   835 _DMA_SPI_DONE	=	0xfa24
                           00FA25   836 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   837 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   838 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   839 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   840 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   841 _CLKDIV	=	0xfe01
                           00FE02   842 _HIRCCR	=	0xfe02
                           00FE03   843 _XOSCCR	=	0xfe03
                           00FE04   844 _IRC32KCR	=	0xfe04
                           00FE00   845 _CKSEL	=	0xfe00
                           00FE05   846 _MCLKOCR	=	0xfe05
                           00FE06   847 _IRCDB	=	0xfe06
                           00FE07   848 _IRC48MCR	=	0xfe07
                           00FEA2   849 _TM2PS	=	0xfea2
                           00FEA3   850 _TM3PS	=	0xfea3
                           00FEA4   851 _TM4PS	=	0xfea4
                           00FA30   852 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   853 _DMA_UR1T_CR	=	0xfa31
                           00FA32   854 _DMA_UR1T_STA	=	0xfa32
                           00FA33   855 _DMA_URTX_AMT	=	0xfa33
                           00FA34   856 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   857 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   858 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   859 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   860 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   861 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   862 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   863 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   864 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   865 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   866 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   867 _DMA_UR2T_CR	=	0xfa31
                           00FA32   868 _DMA_UR2T_STA	=	0xfa32
                           00FA33   869 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   870 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   871 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   872 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   873 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   874 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   875 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   876 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   877 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   878 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   879 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   880 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   881 _DMA_UR3T_CR	=	0xfa31
                           00FA32   882 _DMA_UR3T_STA	=	0xfa32
                           00FA33   883 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   884 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   885 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   886 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   887 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   888 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   889 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   890 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   891 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   892 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   893 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   894 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   895 _DMA_UR4T_CR	=	0xfa31
                           00FA32   896 _DMA_UR4T_STA	=	0xfa32
                           00FA33   897 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   898 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   899 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   900 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   901 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   902 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   903 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   904 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   905 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   906 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   907 _DMA_UR4R_TXAL	=	0xfa3e
      0005A1                        908 _uartGetCharacter_result_65536_69:
      0005A1                        909 	.ds 1
      0005A2                        910 _display_menu_page_selected_page_65536_150:
      0005A2                        911 	.ds 1
      0005A3                        912 _display_step_control_page_step_control_page_options_65536_156:
      0005A3                        913 	.ds 1
      0005A4                        914 _display_update_stepper_dir_stepper_direction_65536_169:
      0005A4                        915 	.ds 1
      0005A5                        916 _display_update_stepper_enable_stepper_enable_status_65536_173:
      0005A5                        917 	.ds 1
      0005A6                        918 _display_step_control_set_steps_option_PARM_2:
      0005A6                        919 	.ds 1
      0005A7                        920 _display_step_control_set_steps_option_float_digits_65536_177:
      0005A7                        921 	.ds 3
      0005AA                        922 _display_step_control_set_steps_option_buffer_65537_179:
      0005AA                        923 	.ds 20
      0005BE                        924 _display_step_control_set_microstepping_option_encoder_value_65536_181:
      0005BE                        925 	.ds 2
      0005C0                        926 _display_step_control_set_microstepping_option_buffer_65537_183:
      0005C0                        927 	.ds 5
      0005C5                        928 _display_step_control_set_frequency_option_encoder_value_65536_184:
      0005C5                        929 	.ds 2
      0005C7                        930 _display_step_control_set_frequency_option_buffer_65537_186:
      0005C7                        931 	.ds 5
                                    932 ;--------------------------------------------------------
                                    933 ; absolute external ram data
                                    934 ;--------------------------------------------------------
                                    935 	.area XABS    (ABS,XDATA)
                                    936 ;--------------------------------------------------------
                                    937 ; external initialized ram data
                                    938 ;--------------------------------------------------------
                                    939 	.area XISEG   (XDATA)
      0006D4                        940 _menu_page_selected_page::
      0006D4                        941 	.ds 1
      0006D5                        942 _step_control_page_options_last::
      0006D5                        943 	.ds 1
                                    944 	.area HOME    (CODE)
                                    945 	.area GSINIT0 (CODE)
                                    946 	.area GSINIT1 (CODE)
                                    947 	.area GSINIT2 (CODE)
                                    948 	.area GSINIT3 (CODE)
                                    949 	.area GSINIT4 (CODE)
                                    950 	.area GSINIT5 (CODE)
                                    951 	.area GSINIT  (CODE)
                                    952 	.area GSFINAL (CODE)
                                    953 	.area CSEG    (CODE)
                                    954 ;--------------------------------------------------------
                                    955 ; global & static initialisations
                                    956 ;--------------------------------------------------------
                                    957 	.area HOME    (CODE)
                                    958 	.area GSINIT  (CODE)
                                    959 	.area GSFINAL (CODE)
                                    960 	.area GSINIT  (CODE)
                                    961 ;	display.c:99: __bit stepper_state_last = 0;
                                    962 ;	assignBit
      00017D C2 03            [12]  963 	clr	_stepper_state_last
                                    964 ;--------------------------------------------------------
                                    965 ; Home
                                    966 ;--------------------------------------------------------
                                    967 	.area HOME    (CODE)
                                    968 	.area HOME    (CODE)
                                    969 ;--------------------------------------------------------
                                    970 ; code
                                    971 ;--------------------------------------------------------
                                    972 	.area CSEG    (CODE)
                                    973 ;------------------------------------------------------------
                                    974 ;Allocation info for local variables in function 'display_welcome_page'
                                    975 ;------------------------------------------------------------
                                    976 ;	display.c:4: void display_welcome_page(void) {
                                    977 ;	-----------------------------------------
                                    978 ;	 function display_welcome_page
                                    979 ;	-----------------------------------------
      00406F                        980 _display_welcome_page:
                           000007   981 	ar7 = 0x07
                           000006   982 	ar6 = 0x06
                           000005   983 	ar5 = 0x05
                           000004   984 	ar4 = 0x04
                           000003   985 	ar3 = 0x03
                           000002   986 	ar2 = 0x02
                           000001   987 	ar1 = 0x01
                           000000   988 	ar0 = 0x00
                                    989 ;	display.c:5: SSD1306_ClearScreen();
      00406F 12 2E 5A         [24]  990 	lcall	_SSD1306_ClearScreen
                                    991 ;	display.c:6: SSD1306_SetPosition(1, 1);
      004072 90 05 39         [24]  992 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004075 74 01            [12]  993 	mov	a,#0x01
      004077 F0               [24]  994 	movx	@dptr,a
      004078 75 82 01         [24]  995 	mov	dpl,#0x01
      00407B 12 2E 70         [24]  996 	lcall	_SSD1306_SetPosition
                                    997 ;	display.c:7: SSD1306_DrawString("      Bipolar");
      00407E 90 79 43         [24]  998 	mov	dptr,#___str_0
      004081 75 F0 80         [24]  999 	mov	b,#0x80
      004084 12 2F 6E         [24] 1000 	lcall	_SSD1306_DrawString
                                   1001 ;	display.c:8: SSD1306_SetPosition(1, 2);
      004087 90 05 39         [24] 1002 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00408A 74 02            [12] 1003 	mov	a,#0x02
      00408C F0               [24] 1004 	movx	@dptr,a
      00408D 75 82 01         [24] 1005 	mov	dpl,#0x01
      004090 12 2E 70         [24] 1006 	lcall	_SSD1306_SetPosition
                                   1007 ;	display.c:9: SSD1306_DrawString("   Stepper Motor");
      004093 90 79 51         [24] 1008 	mov	dptr,#___str_1
      004096 75 F0 80         [24] 1009 	mov	b,#0x80
      004099 12 2F 6E         [24] 1010 	lcall	_SSD1306_DrawString
                                   1011 ;	display.c:10: SSD1306_SetPosition(1, 3);
      00409C 90 05 39         [24] 1012 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00409F 74 03            [12] 1013 	mov	a,#0x03
      0040A1 F0               [24] 1014 	movx	@dptr,a
      0040A2 75 82 01         [24] 1015 	mov	dpl,#0x01
      0040A5 12 2E 70         [24] 1016 	lcall	_SSD1306_SetPosition
                                   1017 ;	display.c:11: SSD1306_DrawString("     Controller");
      0040A8 90 79 62         [24] 1018 	mov	dptr,#___str_2
      0040AB 75 F0 80         [24] 1019 	mov	b,#0x80
      0040AE 12 2F 6E         [24] 1020 	lcall	_SSD1306_DrawString
                                   1021 ;	display.c:12: SSD1306_SetPosition(1, 4);
      0040B1 90 05 39         [24] 1022 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0040B4 74 04            [12] 1023 	mov	a,#0x04
      0040B6 F0               [24] 1024 	movx	@dptr,a
      0040B7 75 82 01         [24] 1025 	mov	dpl,#0x01
      0040BA 12 2E 70         [24] 1026 	lcall	_SSD1306_SetPosition
                                   1027 ;	display.c:13: SSD1306_DrawString("        V1.0");
      0040BD 90 79 72         [24] 1028 	mov	dptr,#___str_3
      0040C0 75 F0 80         [24] 1029 	mov	b,#0x80
      0040C3 12 2F 6E         [24] 1030 	lcall	_SSD1306_DrawString
                                   1031 ;	display.c:15: SSD1306_SetPosition(1, 6);
      0040C6 90 05 39         [24] 1032 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0040C9 74 06            [12] 1033 	mov	a,#0x06
      0040CB F0               [24] 1034 	movx	@dptr,a
      0040CC 75 82 01         [24] 1035 	mov	dpl,#0x01
      0040CF 12 2E 70         [24] 1036 	lcall	_SSD1306_SetPosition
                                   1037 ;	display.c:16: SSD1306_DrawString("       Press..");
      0040D2 90 79 7F         [24] 1038 	mov	dptr,#___str_4
      0040D5 75 F0 80         [24] 1039 	mov	b,#0x80
      0040D8 12 2F 6E         [24] 1040 	lcall	_SSD1306_DrawString
                                   1041 ;	display.c:18: SSD1306_UpdateScreen();
                                   1042 ;	display.c:19: }
      0040DB 02 2E 16         [24] 1043 	ljmp	_SSD1306_UpdateScreen
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'display_menu_page'
                                   1046 ;------------------------------------------------------------
                                   1047 ;selected_page             Allocated with name '_display_menu_page_selected_page_65536_150'
                                   1048 ;------------------------------------------------------------
                                   1049 ;	display.c:23: void display_menu_page(menu_page_selected_page_t selected_page) {
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function display_menu_page
                                   1052 ;	-----------------------------------------
      0040DE                       1053 _display_menu_page:
      0040DE E5 82            [12] 1054 	mov	a,dpl
      0040E0 90 05 A2         [24] 1055 	mov	dptr,#_display_menu_page_selected_page_65536_150
      0040E3 F0               [24] 1056 	movx	@dptr,a
                                   1057 ;	display.c:24: if(menu_page_selected_page != selected_page) {
      0040E4 90 06 D4         [24] 1058 	mov	dptr,#_menu_page_selected_page
      0040E7 E0               [24] 1059 	movx	a,@dptr
      0040E8 FF               [12] 1060 	mov	r7,a
      0040E9 90 05 A2         [24] 1061 	mov	dptr,#_display_menu_page_selected_page_65536_150
      0040EC E0               [24] 1062 	movx	a,@dptr
      0040ED FE               [12] 1063 	mov	r6,a
      0040EE EF               [12] 1064 	mov	a,r7
      0040EF B5 06 01         [24] 1065 	cjne	a,ar6,00126$
      0040F2 22               [24] 1066 	ret
      0040F3                       1067 00126$:
                                   1068 ;	display.c:25: menu_page_selected_page = selected_page;
      0040F3 90 06 D4         [24] 1069 	mov	dptr,#_menu_page_selected_page
      0040F6 EE               [12] 1070 	mov	a,r6
      0040F7 F0               [24] 1071 	movx	@dptr,a
                                   1072 ;	display.c:27: SSD1306_ClearScreen();
      0040F8 C0 06            [24] 1073 	push	ar6
      0040FA 12 2E 5A         [24] 1074 	lcall	_SSD1306_ClearScreen
                                   1075 ;	display.c:28: SSD1306_SetPosition(1, 0);
      0040FD 90 05 39         [24] 1076 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004100 E4               [12] 1077 	clr	a
      004101 F0               [24] 1078 	movx	@dptr,a
      004102 75 82 01         [24] 1079 	mov	dpl,#0x01
      004105 12 2E 70         [24] 1080 	lcall	_SSD1306_SetPosition
                                   1081 ;	display.c:29: SSD1306_DrawString("      Main Menu");
      004108 90 79 8E         [24] 1082 	mov	dptr,#___str_5
      00410B 75 F0 80         [24] 1083 	mov	b,#0x80
      00410E 12 2F 6E         [24] 1084 	lcall	_SSD1306_DrawString
      004111 D0 06            [24] 1085 	pop	ar6
                                   1086 ;	display.c:31: switch(selected_page) {
      004113 BE 00 02         [24] 1087 	cjne	r6,#0x00,00127$
      004116 80 0E            [24] 1088 	sjmp	00101$
      004118                       1089 00127$:
      004118 BE 01 02         [24] 1090 	cjne	r6,#0x01,00128$
      00411B 80 4B            [24] 1091 	sjmp	00102$
      00411D                       1092 00128$:
      00411D BE 02 03         [24] 1093 	cjne	r6,#0x02,00129$
      004120 02 41 AA         [24] 1094 	ljmp	00103$
      004123                       1095 00129$:
      004123 02 41 EB         [24] 1096 	ljmp	00104$
                                   1097 ;	display.c:33: case STEP_CONTROL_PAGE_SELECTED:
      004126                       1098 00101$:
                                   1099 ;	display.c:34: SSD1306_SetPosition(1, 2);
      004126 90 05 39         [24] 1100 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004129 74 02            [12] 1101 	mov	a,#0x02
      00412B F0               [24] 1102 	movx	@dptr,a
      00412C 75 82 01         [24] 1103 	mov	dpl,#0x01
      00412F 12 2E 70         [24] 1104 	lcall	_SSD1306_SetPosition
                                   1105 ;	display.c:35: SSD1306_DrawString("> Step Control");
      004132 90 79 9E         [24] 1106 	mov	dptr,#___str_6
      004135 75 F0 80         [24] 1107 	mov	b,#0x80
      004138 12 2F 6E         [24] 1108 	lcall	_SSD1306_DrawString
                                   1109 ;	display.c:36: SSD1306_SetPosition(1, 3);
      00413B 90 05 39         [24] 1110 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00413E 74 03            [12] 1111 	mov	a,#0x03
      004140 F0               [24] 1112 	movx	@dptr,a
      004141 75 82 01         [24] 1113 	mov	dpl,#0x01
      004144 12 2E 70         [24] 1114 	lcall	_SSD1306_SetPosition
                                   1115 ;	display.c:37: SSD1306_DrawString("  Distance Control");
      004147 90 79 AD         [24] 1116 	mov	dptr,#___str_7
      00414A 75 F0 80         [24] 1117 	mov	b,#0x80
      00414D 12 2F 6E         [24] 1118 	lcall	_SSD1306_DrawString
                                   1119 ;	display.c:38: SSD1306_SetPosition(1, 4);
      004150 90 05 39         [24] 1120 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004153 74 04            [12] 1121 	mov	a,#0x04
      004155 F0               [24] 1122 	movx	@dptr,a
      004156 75 82 01         [24] 1123 	mov	dpl,#0x01
      004159 12 2E 70         [24] 1124 	lcall	_SSD1306_SetPosition
                                   1125 ;	display.c:39: SSD1306_DrawString("  Encoder Control");
      00415C 90 79 C0         [24] 1126 	mov	dptr,#___str_8
      00415F 75 F0 80         [24] 1127 	mov	b,#0x80
      004162 12 2F 6E         [24] 1128 	lcall	_SSD1306_DrawString
                                   1129 ;	display.c:40: break;
      004165 02 2E 16         [24] 1130 	ljmp	_SSD1306_UpdateScreen
                                   1131 ;	display.c:42: case DISTANCE_CONTROL_PAGE_SELECTED:
      004168                       1132 00102$:
                                   1133 ;	display.c:43: SSD1306_SetPosition(1, 2);
      004168 90 05 39         [24] 1134 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00416B 74 02            [12] 1135 	mov	a,#0x02
      00416D F0               [24] 1136 	movx	@dptr,a
      00416E 75 82 01         [24] 1137 	mov	dpl,#0x01
      004171 12 2E 70         [24] 1138 	lcall	_SSD1306_SetPosition
                                   1139 ;	display.c:44: SSD1306_DrawString("  Step Control");
      004174 90 79 D2         [24] 1140 	mov	dptr,#___str_9
      004177 75 F0 80         [24] 1141 	mov	b,#0x80
      00417A 12 2F 6E         [24] 1142 	lcall	_SSD1306_DrawString
                                   1143 ;	display.c:45: SSD1306_SetPosition(1, 3);
      00417D 90 05 39         [24] 1144 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004180 74 03            [12] 1145 	mov	a,#0x03
      004182 F0               [24] 1146 	movx	@dptr,a
      004183 75 82 01         [24] 1147 	mov	dpl,#0x01
      004186 12 2E 70         [24] 1148 	lcall	_SSD1306_SetPosition
                                   1149 ;	display.c:46: SSD1306_DrawString("> Distance Control");
      004189 90 79 E1         [24] 1150 	mov	dptr,#___str_10
      00418C 75 F0 80         [24] 1151 	mov	b,#0x80
      00418F 12 2F 6E         [24] 1152 	lcall	_SSD1306_DrawString
                                   1153 ;	display.c:47: SSD1306_SetPosition(1, 4);
      004192 90 05 39         [24] 1154 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004195 74 04            [12] 1155 	mov	a,#0x04
      004197 F0               [24] 1156 	movx	@dptr,a
      004198 75 82 01         [24] 1157 	mov	dpl,#0x01
      00419B 12 2E 70         [24] 1158 	lcall	_SSD1306_SetPosition
                                   1159 ;	display.c:48: SSD1306_DrawString("  Encoder Control");
      00419E 90 79 C0         [24] 1160 	mov	dptr,#___str_8
      0041A1 75 F0 80         [24] 1161 	mov	b,#0x80
      0041A4 12 2F 6E         [24] 1162 	lcall	_SSD1306_DrawString
                                   1163 ;	display.c:49: break;
      0041A7 02 2E 16         [24] 1164 	ljmp	_SSD1306_UpdateScreen
                                   1165 ;	display.c:51: case ENCODER_CONTROL_PAGE_SELECTED:
      0041AA                       1166 00103$:
                                   1167 ;	display.c:52: SSD1306_SetPosition(1, 2);
      0041AA 90 05 39         [24] 1168 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0041AD 74 02            [12] 1169 	mov	a,#0x02
      0041AF F0               [24] 1170 	movx	@dptr,a
      0041B0 75 82 01         [24] 1171 	mov	dpl,#0x01
      0041B3 12 2E 70         [24] 1172 	lcall	_SSD1306_SetPosition
                                   1173 ;	display.c:53: SSD1306_DrawString("  Step Control");
      0041B6 90 79 D2         [24] 1174 	mov	dptr,#___str_9
      0041B9 75 F0 80         [24] 1175 	mov	b,#0x80
      0041BC 12 2F 6E         [24] 1176 	lcall	_SSD1306_DrawString
                                   1177 ;	display.c:54: SSD1306_SetPosition(1, 3);
      0041BF 90 05 39         [24] 1178 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0041C2 74 03            [12] 1179 	mov	a,#0x03
      0041C4 F0               [24] 1180 	movx	@dptr,a
      0041C5 75 82 01         [24] 1181 	mov	dpl,#0x01
      0041C8 12 2E 70         [24] 1182 	lcall	_SSD1306_SetPosition
                                   1183 ;	display.c:55: SSD1306_DrawString("  Distance Control");
      0041CB 90 79 AD         [24] 1184 	mov	dptr,#___str_7
      0041CE 75 F0 80         [24] 1185 	mov	b,#0x80
      0041D1 12 2F 6E         [24] 1186 	lcall	_SSD1306_DrawString
                                   1187 ;	display.c:56: SSD1306_SetPosition(1, 4);
      0041D4 90 05 39         [24] 1188 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0041D7 74 04            [12] 1189 	mov	a,#0x04
      0041D9 F0               [24] 1190 	movx	@dptr,a
      0041DA 75 82 01         [24] 1191 	mov	dpl,#0x01
      0041DD 12 2E 70         [24] 1192 	lcall	_SSD1306_SetPosition
                                   1193 ;	display.c:57: SSD1306_DrawString("> Encoder Control");
      0041E0 90 79 F4         [24] 1194 	mov	dptr,#___str_11
      0041E3 75 F0 80         [24] 1195 	mov	b,#0x80
      0041E6 12 2F 6E         [24] 1196 	lcall	_SSD1306_DrawString
                                   1197 ;	display.c:58: break;
                                   1198 ;	display.c:60: default:
      0041E9 80 3F            [24] 1199 	sjmp	00105$
      0041EB                       1200 00104$:
                                   1201 ;	display.c:61: SSD1306_SetPosition(1, 2);
      0041EB 90 05 39         [24] 1202 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0041EE 74 02            [12] 1203 	mov	a,#0x02
      0041F0 F0               [24] 1204 	movx	@dptr,a
      0041F1 75 82 01         [24] 1205 	mov	dpl,#0x01
      0041F4 12 2E 70         [24] 1206 	lcall	_SSD1306_SetPosition
                                   1207 ;	display.c:62: SSD1306_DrawString("  Step Control");
      0041F7 90 79 D2         [24] 1208 	mov	dptr,#___str_9
      0041FA 75 F0 80         [24] 1209 	mov	b,#0x80
      0041FD 12 2F 6E         [24] 1210 	lcall	_SSD1306_DrawString
                                   1211 ;	display.c:63: SSD1306_SetPosition(1, 3);
      004200 90 05 39         [24] 1212 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004203 74 03            [12] 1213 	mov	a,#0x03
      004205 F0               [24] 1214 	movx	@dptr,a
      004206 75 82 01         [24] 1215 	mov	dpl,#0x01
      004209 12 2E 70         [24] 1216 	lcall	_SSD1306_SetPosition
                                   1217 ;	display.c:64: SSD1306_DrawString("  Distance Control");
      00420C 90 79 AD         [24] 1218 	mov	dptr,#___str_7
      00420F 75 F0 80         [24] 1219 	mov	b,#0x80
      004212 12 2F 6E         [24] 1220 	lcall	_SSD1306_DrawString
                                   1221 ;	display.c:65: SSD1306_SetPosition(1, 4);
      004215 90 05 39         [24] 1222 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004218 74 04            [12] 1223 	mov	a,#0x04
      00421A F0               [24] 1224 	movx	@dptr,a
      00421B 75 82 01         [24] 1225 	mov	dpl,#0x01
      00421E 12 2E 70         [24] 1226 	lcall	_SSD1306_SetPosition
                                   1227 ;	display.c:66: SSD1306_DrawString("  Encoder Control");
      004221 90 79 C0         [24] 1228 	mov	dptr,#___str_8
      004224 75 F0 80         [24] 1229 	mov	b,#0x80
      004227 12 2F 6E         [24] 1230 	lcall	_SSD1306_DrawString
                                   1231 ;	display.c:71: } 
      00422A                       1232 00105$:
                                   1233 ;	display.c:72: SSD1306_UpdateScreen();
                                   1234 ;	display.c:74: }
      00422A 02 2E 16         [24] 1235 	ljmp	_SSD1306_UpdateScreen
                                   1236 ;------------------------------------------------------------
                                   1237 ;Allocation info for local variables in function 'display_step_control_page_first_time'
                                   1238 ;------------------------------------------------------------
                                   1239 ;	display.c:76: void display_step_control_page_first_time(void) {
                                   1240 ;	-----------------------------------------
                                   1241 ;	 function display_step_control_page_first_time
                                   1242 ;	-----------------------------------------
      00422D                       1243 _display_step_control_page_first_time:
                                   1244 ;	display.c:78: SSD1306_ClearScreen();
      00422D 12 2E 5A         [24] 1245 	lcall	_SSD1306_ClearScreen
                                   1246 ;	display.c:79: SSD1306_SetPosition(1, 0);
      004230 90 05 39         [24] 1247 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004233 E4               [12] 1248 	clr	a
      004234 F0               [24] 1249 	movx	@dptr,a
      004235 75 82 01         [24] 1250 	mov	dpl,#0x01
      004238 12 2E 70         [24] 1251 	lcall	_SSD1306_SetPosition
                                   1252 ;	display.c:80: SSD1306_DrawString("     Step Control");
      00423B 90 7A 06         [24] 1253 	mov	dptr,#___str_12
      00423E 75 F0 80         [24] 1254 	mov	b,#0x80
      004241 12 2F 6E         [24] 1255 	lcall	_SSD1306_DrawString
                                   1256 ;	display.c:81: SSD1306_SetPosition(1, 1);
      004244 90 05 39         [24] 1257 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004247 74 01            [12] 1258 	mov	a,#0x01
      004249 F0               [24] 1259 	movx	@dptr,a
      00424A 75 82 01         [24] 1260 	mov	dpl,#0x01
      00424D 12 2E 70         [24] 1261 	lcall	_SSD1306_SetPosition
                                   1262 ;	display.c:82: SSD1306_DrawString("Dir: CCW         FREE");
      004250 90 7A 18         [24] 1263 	mov	dptr,#___str_13
      004253 75 F0 80         [24] 1264 	mov	b,#0x80
      004256 12 2F 6E         [24] 1265 	lcall	_SSD1306_DrawString
                                   1266 ;	display.c:83: SSD1306_SetPosition(1, 2);
      004259 90 05 39         [24] 1267 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00425C 74 02            [12] 1268 	mov	a,#0x02
      00425E F0               [24] 1269 	movx	@dptr,a
      00425F 75 82 01         [24] 1270 	mov	dpl,#0x01
      004262 12 2E 70         [24] 1271 	lcall	_SSD1306_SetPosition
                                   1272 ;	display.c:84: SSD1306_DrawString("> Frequency");
      004265 90 7A 2E         [24] 1273 	mov	dptr,#___str_14
      004268 75 F0 80         [24] 1274 	mov	b,#0x80
      00426B 12 2F 6E         [24] 1275 	lcall	_SSD1306_DrawString
                                   1276 ;	display.c:85: SSD1306_SetPosition(1, 3);
      00426E 90 05 39         [24] 1277 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004271 74 03            [12] 1278 	mov	a,#0x03
      004273 F0               [24] 1279 	movx	@dptr,a
      004274 75 82 01         [24] 1280 	mov	dpl,#0x01
      004277 12 2E 70         [24] 1281 	lcall	_SSD1306_SetPosition
                                   1282 ;	display.c:86: SSD1306_DrawString("  Microstepping");
      00427A 90 7A 3A         [24] 1283 	mov	dptr,#___str_15
      00427D 75 F0 80         [24] 1284 	mov	b,#0x80
      004280 12 2F 6E         [24] 1285 	lcall	_SSD1306_DrawString
                                   1286 ;	display.c:87: SSD1306_SetPosition(1, 4);
      004283 90 05 39         [24] 1287 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004286 74 04            [12] 1288 	mov	a,#0x04
      004288 F0               [24] 1289 	movx	@dptr,a
      004289 75 82 01         [24] 1290 	mov	dpl,#0x01
      00428C 12 2E 70         [24] 1291 	lcall	_SSD1306_SetPosition
                                   1292 ;	display.c:88: SSD1306_DrawString("  Steps");
      00428F 90 7A 4A         [24] 1293 	mov	dptr,#___str_16
      004292 75 F0 80         [24] 1294 	mov	b,#0x80
      004295 12 2F 6E         [24] 1295 	lcall	_SSD1306_DrawString
                                   1296 ;	display.c:89: SSD1306_SetPosition(1, 5);
      004298 90 05 39         [24] 1297 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00429B 74 05            [12] 1298 	mov	a,#0x05
      00429D F0               [24] 1299 	movx	@dptr,a
      00429E 75 82 01         [24] 1300 	mov	dpl,#0x01
      0042A1 12 2E 70         [24] 1301 	lcall	_SSD1306_SetPosition
                                   1302 ;	display.c:90: SSD1306_DrawString("  Go Back");
      0042A4 90 7A 52         [24] 1303 	mov	dptr,#___str_17
      0042A7 75 F0 80         [24] 1304 	mov	b,#0x80
      0042AA 12 2F 6E         [24] 1305 	lcall	_SSD1306_DrawString
                                   1306 ;	display.c:93: SSD1306_SetPosition(1, 7);
      0042AD 90 05 39         [24] 1307 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0042B0 74 07            [12] 1308 	mov	a,#0x07
      0042B2 F0               [24] 1309 	movx	@dptr,a
      0042B3 75 82 01         [24] 1310 	mov	dpl,#0x01
      0042B6 12 2E 70         [24] 1311 	lcall	_SSD1306_SetPosition
                                   1312 ;	display.c:94: SSD1306_DrawString("         Run         ");
      0042B9 90 7A 5C         [24] 1313 	mov	dptr,#___str_18
      0042BC 75 F0 80         [24] 1314 	mov	b,#0x80
      0042BF 12 2F 6E         [24] 1315 	lcall	_SSD1306_DrawString
                                   1316 ;	display.c:96: SSD1306_UpdateScreen();
                                   1317 ;	display.c:97: }
      0042C2 02 2E 16         [24] 1318 	ljmp	_SSD1306_UpdateScreen
                                   1319 ;------------------------------------------------------------
                                   1320 ;Allocation info for local variables in function 'display_step_control_page'
                                   1321 ;------------------------------------------------------------
                                   1322 ;step_control_page_options Allocated with name '_display_step_control_page_step_control_page_options_65536_156'
                                   1323 ;------------------------------------------------------------
                                   1324 ;	display.c:101: void display_step_control_page(step_control_page_options_t step_control_page_options) {
                                   1325 ;	-----------------------------------------
                                   1326 ;	 function display_step_control_page
                                   1327 ;	-----------------------------------------
      0042C5                       1328 _display_step_control_page:
      0042C5 E5 82            [12] 1329 	mov	a,dpl
      0042C7 90 05 A3         [24] 1330 	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
      0042CA F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	display.c:102: if(step_control_page_options_last != step_control_page_options) {
      0042CB 90 06 D5         [24] 1333 	mov	dptr,#_step_control_page_options_last
      0042CE E0               [24] 1334 	movx	a,@dptr
      0042CF FF               [12] 1335 	mov	r7,a
      0042D0 90 05 A3         [24] 1336 	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
      0042D3 E0               [24] 1337 	movx	a,@dptr
      0042D4 FE               [12] 1338 	mov	r6,a
      0042D5 EF               [12] 1339 	mov	a,r7
      0042D6 B5 06 03         [24] 1340 	cjne	a,ar6,00140$
      0042D9 02 45 87         [24] 1341 	ljmp	00109$
      0042DC                       1342 00140$:
                                   1343 ;	display.c:103: step_control_page_options_last = step_control_page_options;
      0042DC 90 06 D5         [24] 1344 	mov	dptr,#_step_control_page_options_last
      0042DF EE               [12] 1345 	mov	a,r6
      0042E0 F0               [24] 1346 	movx	@dptr,a
                                   1347 ;	display.c:104: switch(step_control_page_options) {
      0042E1 EE               [12] 1348 	mov	a,r6
      0042E2 FF               [12] 1349 	mov	r7,a
      0042E3 24 FB            [12] 1350 	add	a,#0xff - 0x04
      0042E5 50 03            [24] 1351 	jnc	00141$
      0042E7 02 45 1B         [24] 1352 	ljmp	00106$
      0042EA                       1353 00141$:
      0042EA EF               [12] 1354 	mov	a,r7
      0042EB 2F               [12] 1355 	add	a,r7
      0042EC 2F               [12] 1356 	add	a,r7
      0042ED 90 42 F1         [24] 1357 	mov	dptr,#00142$
      0042F0 73               [24] 1358 	jmp	@a+dptr
      0042F1                       1359 00142$:
      0042F1 02 43 00         [24] 1360 	ljmp	00101$
      0042F4 02 43 6C         [24] 1361 	ljmp	00102$
      0042F7 02 43 D8         [24] 1362 	ljmp	00103$
      0042FA 02 44 44         [24] 1363 	ljmp	00104$
      0042FD 02 44 B0         [24] 1364 	ljmp	00105$
                                   1365 ;	display.c:106: case SET_FREQUENCY_OPTION:
      004300                       1366 00101$:
                                   1367 ;	display.c:107: SSD1306_SetPosition(1, 2);
      004300 90 05 39         [24] 1368 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004303 74 02            [12] 1369 	mov	a,#0x02
      004305 F0               [24] 1370 	movx	@dptr,a
      004306 75 82 01         [24] 1371 	mov	dpl,#0x01
      004309 12 2E 70         [24] 1372 	lcall	_SSD1306_SetPosition
                                   1373 ;	display.c:108: SSD1306_DrawString("> Frequency");
      00430C 90 7A 2E         [24] 1374 	mov	dptr,#___str_14
      00430F 75 F0 80         [24] 1375 	mov	b,#0x80
      004312 12 2F 6E         [24] 1376 	lcall	_SSD1306_DrawString
                                   1377 ;	display.c:109: SSD1306_SetPosition(1, 3);
      004315 90 05 39         [24] 1378 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004318 74 03            [12] 1379 	mov	a,#0x03
      00431A F0               [24] 1380 	movx	@dptr,a
      00431B 75 82 01         [24] 1381 	mov	dpl,#0x01
      00431E 12 2E 70         [24] 1382 	lcall	_SSD1306_SetPosition
                                   1383 ;	display.c:110: SSD1306_DrawString("  Microstepping");
      004321 90 7A 3A         [24] 1384 	mov	dptr,#___str_15
      004324 75 F0 80         [24] 1385 	mov	b,#0x80
      004327 12 2F 6E         [24] 1386 	lcall	_SSD1306_DrawString
                                   1387 ;	display.c:111: SSD1306_SetPosition(1, 4);
      00432A 90 05 39         [24] 1388 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00432D 74 04            [12] 1389 	mov	a,#0x04
      00432F F0               [24] 1390 	movx	@dptr,a
      004330 75 82 01         [24] 1391 	mov	dpl,#0x01
      004333 12 2E 70         [24] 1392 	lcall	_SSD1306_SetPosition
                                   1393 ;	display.c:112: SSD1306_DrawString("  Steps");
      004336 90 7A 4A         [24] 1394 	mov	dptr,#___str_16
      004339 75 F0 80         [24] 1395 	mov	b,#0x80
      00433C 12 2F 6E         [24] 1396 	lcall	_SSD1306_DrawString
                                   1397 ;	display.c:113: SSD1306_SetPosition(1, 5);
      00433F 90 05 39         [24] 1398 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004342 74 05            [12] 1399 	mov	a,#0x05
      004344 F0               [24] 1400 	movx	@dptr,a
      004345 75 82 01         [24] 1401 	mov	dpl,#0x01
      004348 12 2E 70         [24] 1402 	lcall	_SSD1306_SetPosition
                                   1403 ;	display.c:114: SSD1306_DrawString("  Go Back");
      00434B 90 7A 52         [24] 1404 	mov	dptr,#___str_17
      00434E 75 F0 80         [24] 1405 	mov	b,#0x80
      004351 12 2F 6E         [24] 1406 	lcall	_SSD1306_DrawString
                                   1407 ;	display.c:115: SSD1306_SetPosition(1, 7);
      004354 90 05 39         [24] 1408 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004357 74 07            [12] 1409 	mov	a,#0x07
      004359 F0               [24] 1410 	movx	@dptr,a
      00435A 75 82 01         [24] 1411 	mov	dpl,#0x01
      00435D 12 2E 70         [24] 1412 	lcall	_SSD1306_SetPosition
                                   1413 ;	display.c:116: SSD1306_DrawString("         Run         ");
      004360 90 7A 5C         [24] 1414 	mov	dptr,#___str_18
      004363 75 F0 80         [24] 1415 	mov	b,#0x80
      004366 12 2F 6E         [24] 1416 	lcall	_SSD1306_DrawString
                                   1417 ;	display.c:117: break;
      004369 02 45 84         [24] 1418 	ljmp	00107$
                                   1419 ;	display.c:119: case SET_MICROSTEPPING_OPTION:
      00436C                       1420 00102$:
                                   1421 ;	display.c:120: SSD1306_SetPosition(1, 2);
      00436C 90 05 39         [24] 1422 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00436F 74 02            [12] 1423 	mov	a,#0x02
      004371 F0               [24] 1424 	movx	@dptr,a
      004372 75 82 01         [24] 1425 	mov	dpl,#0x01
      004375 12 2E 70         [24] 1426 	lcall	_SSD1306_SetPosition
                                   1427 ;	display.c:121: SSD1306_DrawString("  Frequency");
      004378 90 7A 72         [24] 1428 	mov	dptr,#___str_19
      00437B 75 F0 80         [24] 1429 	mov	b,#0x80
      00437E 12 2F 6E         [24] 1430 	lcall	_SSD1306_DrawString
                                   1431 ;	display.c:122: SSD1306_SetPosition(1, 3);
      004381 90 05 39         [24] 1432 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004384 74 03            [12] 1433 	mov	a,#0x03
      004386 F0               [24] 1434 	movx	@dptr,a
      004387 75 82 01         [24] 1435 	mov	dpl,#0x01
      00438A 12 2E 70         [24] 1436 	lcall	_SSD1306_SetPosition
                                   1437 ;	display.c:123: SSD1306_DrawString("> Microstepping");
      00438D 90 7A 7E         [24] 1438 	mov	dptr,#___str_20
      004390 75 F0 80         [24] 1439 	mov	b,#0x80
      004393 12 2F 6E         [24] 1440 	lcall	_SSD1306_DrawString
                                   1441 ;	display.c:124: SSD1306_SetPosition(1, 4);
      004396 90 05 39         [24] 1442 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004399 74 04            [12] 1443 	mov	a,#0x04
      00439B F0               [24] 1444 	movx	@dptr,a
      00439C 75 82 01         [24] 1445 	mov	dpl,#0x01
      00439F 12 2E 70         [24] 1446 	lcall	_SSD1306_SetPosition
                                   1447 ;	display.c:125: SSD1306_DrawString("  Steps");
      0043A2 90 7A 4A         [24] 1448 	mov	dptr,#___str_16
      0043A5 75 F0 80         [24] 1449 	mov	b,#0x80
      0043A8 12 2F 6E         [24] 1450 	lcall	_SSD1306_DrawString
                                   1451 ;	display.c:126: SSD1306_SetPosition(1, 5);
      0043AB 90 05 39         [24] 1452 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0043AE 74 05            [12] 1453 	mov	a,#0x05
      0043B0 F0               [24] 1454 	movx	@dptr,a
      0043B1 75 82 01         [24] 1455 	mov	dpl,#0x01
      0043B4 12 2E 70         [24] 1456 	lcall	_SSD1306_SetPosition
                                   1457 ;	display.c:127: SSD1306_DrawString("  Go Back");
      0043B7 90 7A 52         [24] 1458 	mov	dptr,#___str_17
      0043BA 75 F0 80         [24] 1459 	mov	b,#0x80
      0043BD 12 2F 6E         [24] 1460 	lcall	_SSD1306_DrawString
                                   1461 ;	display.c:128: SSD1306_SetPosition(1, 7);
      0043C0 90 05 39         [24] 1462 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0043C3 74 07            [12] 1463 	mov	a,#0x07
      0043C5 F0               [24] 1464 	movx	@dptr,a
      0043C6 75 82 01         [24] 1465 	mov	dpl,#0x01
      0043C9 12 2E 70         [24] 1466 	lcall	_SSD1306_SetPosition
                                   1467 ;	display.c:129: SSD1306_DrawString("         Run         ");
      0043CC 90 7A 5C         [24] 1468 	mov	dptr,#___str_18
      0043CF 75 F0 80         [24] 1469 	mov	b,#0x80
      0043D2 12 2F 6E         [24] 1470 	lcall	_SSD1306_DrawString
                                   1471 ;	display.c:130: break;
      0043D5 02 45 84         [24] 1472 	ljmp	00107$
                                   1473 ;	display.c:132: case SET_STEPS:
      0043D8                       1474 00103$:
                                   1475 ;	display.c:133: SSD1306_SetPosition(1, 2);
      0043D8 90 05 39         [24] 1476 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0043DB 74 02            [12] 1477 	mov	a,#0x02
      0043DD F0               [24] 1478 	movx	@dptr,a
      0043DE 75 82 01         [24] 1479 	mov	dpl,#0x01
      0043E1 12 2E 70         [24] 1480 	lcall	_SSD1306_SetPosition
                                   1481 ;	display.c:134: SSD1306_DrawString("  Frequency");
      0043E4 90 7A 72         [24] 1482 	mov	dptr,#___str_19
      0043E7 75 F0 80         [24] 1483 	mov	b,#0x80
      0043EA 12 2F 6E         [24] 1484 	lcall	_SSD1306_DrawString
                                   1485 ;	display.c:135: SSD1306_SetPosition(1, 3);
      0043ED 90 05 39         [24] 1486 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0043F0 74 03            [12] 1487 	mov	a,#0x03
      0043F2 F0               [24] 1488 	movx	@dptr,a
      0043F3 75 82 01         [24] 1489 	mov	dpl,#0x01
      0043F6 12 2E 70         [24] 1490 	lcall	_SSD1306_SetPosition
                                   1491 ;	display.c:136: SSD1306_DrawString("  Microstepping");
      0043F9 90 7A 3A         [24] 1492 	mov	dptr,#___str_15
      0043FC 75 F0 80         [24] 1493 	mov	b,#0x80
      0043FF 12 2F 6E         [24] 1494 	lcall	_SSD1306_DrawString
                                   1495 ;	display.c:137: SSD1306_SetPosition(1, 4);
      004402 90 05 39         [24] 1496 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004405 74 04            [12] 1497 	mov	a,#0x04
      004407 F0               [24] 1498 	movx	@dptr,a
      004408 75 82 01         [24] 1499 	mov	dpl,#0x01
      00440B 12 2E 70         [24] 1500 	lcall	_SSD1306_SetPosition
                                   1501 ;	display.c:138: SSD1306_DrawString("> Steps");
      00440E 90 7A 8E         [24] 1502 	mov	dptr,#___str_21
      004411 75 F0 80         [24] 1503 	mov	b,#0x80
      004414 12 2F 6E         [24] 1504 	lcall	_SSD1306_DrawString
                                   1505 ;	display.c:139: SSD1306_SetPosition(1, 5);
      004417 90 05 39         [24] 1506 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00441A 74 05            [12] 1507 	mov	a,#0x05
      00441C F0               [24] 1508 	movx	@dptr,a
      00441D 75 82 01         [24] 1509 	mov	dpl,#0x01
      004420 12 2E 70         [24] 1510 	lcall	_SSD1306_SetPosition
                                   1511 ;	display.c:140: SSD1306_DrawString("  Go Back");
      004423 90 7A 52         [24] 1512 	mov	dptr,#___str_17
      004426 75 F0 80         [24] 1513 	mov	b,#0x80
      004429 12 2F 6E         [24] 1514 	lcall	_SSD1306_DrawString
                                   1515 ;	display.c:141: SSD1306_SetPosition(1, 7);
      00442C 90 05 39         [24] 1516 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00442F 74 07            [12] 1517 	mov	a,#0x07
      004431 F0               [24] 1518 	movx	@dptr,a
      004432 75 82 01         [24] 1519 	mov	dpl,#0x01
      004435 12 2E 70         [24] 1520 	lcall	_SSD1306_SetPosition
                                   1521 ;	display.c:142: SSD1306_DrawString("         Run         ");
      004438 90 7A 5C         [24] 1522 	mov	dptr,#___str_18
      00443B 75 F0 80         [24] 1523 	mov	b,#0x80
      00443E 12 2F 6E         [24] 1524 	lcall	_SSD1306_DrawString
                                   1525 ;	display.c:144: break;
      004441 02 45 84         [24] 1526 	ljmp	00107$
                                   1527 ;	display.c:146: case GO_BACK:
      004444                       1528 00104$:
                                   1529 ;	display.c:147: SSD1306_SetPosition(1, 2);
      004444 90 05 39         [24] 1530 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004447 74 02            [12] 1531 	mov	a,#0x02
      004449 F0               [24] 1532 	movx	@dptr,a
      00444A 75 82 01         [24] 1533 	mov	dpl,#0x01
      00444D 12 2E 70         [24] 1534 	lcall	_SSD1306_SetPosition
                                   1535 ;	display.c:148: SSD1306_DrawString("  Frequency");
      004450 90 7A 72         [24] 1536 	mov	dptr,#___str_19
      004453 75 F0 80         [24] 1537 	mov	b,#0x80
      004456 12 2F 6E         [24] 1538 	lcall	_SSD1306_DrawString
                                   1539 ;	display.c:149: SSD1306_SetPosition(1, 3);
      004459 90 05 39         [24] 1540 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00445C 74 03            [12] 1541 	mov	a,#0x03
      00445E F0               [24] 1542 	movx	@dptr,a
      00445F 75 82 01         [24] 1543 	mov	dpl,#0x01
      004462 12 2E 70         [24] 1544 	lcall	_SSD1306_SetPosition
                                   1545 ;	display.c:150: SSD1306_DrawString("  Microstepping");
      004465 90 7A 3A         [24] 1546 	mov	dptr,#___str_15
      004468 75 F0 80         [24] 1547 	mov	b,#0x80
      00446B 12 2F 6E         [24] 1548 	lcall	_SSD1306_DrawString
                                   1549 ;	display.c:151: SSD1306_SetPosition(1, 4);
      00446E 90 05 39         [24] 1550 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004471 74 04            [12] 1551 	mov	a,#0x04
      004473 F0               [24] 1552 	movx	@dptr,a
      004474 75 82 01         [24] 1553 	mov	dpl,#0x01
      004477 12 2E 70         [24] 1554 	lcall	_SSD1306_SetPosition
                                   1555 ;	display.c:152: SSD1306_DrawString("  Steps");
      00447A 90 7A 4A         [24] 1556 	mov	dptr,#___str_16
      00447D 75 F0 80         [24] 1557 	mov	b,#0x80
      004480 12 2F 6E         [24] 1558 	lcall	_SSD1306_DrawString
                                   1559 ;	display.c:153: SSD1306_SetPosition(1, 5);
      004483 90 05 39         [24] 1560 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004486 74 05            [12] 1561 	mov	a,#0x05
      004488 F0               [24] 1562 	movx	@dptr,a
      004489 75 82 01         [24] 1563 	mov	dpl,#0x01
      00448C 12 2E 70         [24] 1564 	lcall	_SSD1306_SetPosition
                                   1565 ;	display.c:154: SSD1306_DrawString("> Go Back");
      00448F 90 7A 96         [24] 1566 	mov	dptr,#___str_22
      004492 75 F0 80         [24] 1567 	mov	b,#0x80
      004495 12 2F 6E         [24] 1568 	lcall	_SSD1306_DrawString
                                   1569 ;	display.c:155: SSD1306_SetPosition(1, 7);
      004498 90 05 39         [24] 1570 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00449B 74 07            [12] 1571 	mov	a,#0x07
      00449D F0               [24] 1572 	movx	@dptr,a
      00449E 75 82 01         [24] 1573 	mov	dpl,#0x01
      0044A1 12 2E 70         [24] 1574 	lcall	_SSD1306_SetPosition
                                   1575 ;	display.c:156: SSD1306_DrawString("         Run         ");
      0044A4 90 7A 5C         [24] 1576 	mov	dptr,#___str_18
      0044A7 75 F0 80         [24] 1577 	mov	b,#0x80
      0044AA 12 2F 6E         [24] 1578 	lcall	_SSD1306_DrawString
                                   1579 ;	display.c:157: break;
      0044AD 02 45 84         [24] 1580 	ljmp	00107$
                                   1581 ;	display.c:159: case RUN:
      0044B0                       1582 00105$:
                                   1583 ;	display.c:160: SSD1306_SetPosition(1, 2);
      0044B0 90 05 39         [24] 1584 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0044B3 74 02            [12] 1585 	mov	a,#0x02
      0044B5 F0               [24] 1586 	movx	@dptr,a
      0044B6 75 82 01         [24] 1587 	mov	dpl,#0x01
      0044B9 12 2E 70         [24] 1588 	lcall	_SSD1306_SetPosition
                                   1589 ;	display.c:161: SSD1306_DrawString("  Frequency");
      0044BC 90 7A 72         [24] 1590 	mov	dptr,#___str_19
      0044BF 75 F0 80         [24] 1591 	mov	b,#0x80
      0044C2 12 2F 6E         [24] 1592 	lcall	_SSD1306_DrawString
                                   1593 ;	display.c:162: SSD1306_SetPosition(1, 3);
      0044C5 90 05 39         [24] 1594 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0044C8 74 03            [12] 1595 	mov	a,#0x03
      0044CA F0               [24] 1596 	movx	@dptr,a
      0044CB 75 82 01         [24] 1597 	mov	dpl,#0x01
      0044CE 12 2E 70         [24] 1598 	lcall	_SSD1306_SetPosition
                                   1599 ;	display.c:163: SSD1306_DrawString("  Microstepping");
      0044D1 90 7A 3A         [24] 1600 	mov	dptr,#___str_15
      0044D4 75 F0 80         [24] 1601 	mov	b,#0x80
      0044D7 12 2F 6E         [24] 1602 	lcall	_SSD1306_DrawString
                                   1603 ;	display.c:164: SSD1306_SetPosition(1, 4);
      0044DA 90 05 39         [24] 1604 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0044DD 74 04            [12] 1605 	mov	a,#0x04
      0044DF F0               [24] 1606 	movx	@dptr,a
      0044E0 75 82 01         [24] 1607 	mov	dpl,#0x01
      0044E3 12 2E 70         [24] 1608 	lcall	_SSD1306_SetPosition
                                   1609 ;	display.c:165: SSD1306_DrawString("  Steps");
      0044E6 90 7A 4A         [24] 1610 	mov	dptr,#___str_16
      0044E9 75 F0 80         [24] 1611 	mov	b,#0x80
      0044EC 12 2F 6E         [24] 1612 	lcall	_SSD1306_DrawString
                                   1613 ;	display.c:166: SSD1306_SetPosition(1, 5);
      0044EF 90 05 39         [24] 1614 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0044F2 74 05            [12] 1615 	mov	a,#0x05
      0044F4 F0               [24] 1616 	movx	@dptr,a
      0044F5 75 82 01         [24] 1617 	mov	dpl,#0x01
      0044F8 12 2E 70         [24] 1618 	lcall	_SSD1306_SetPosition
                                   1619 ;	display.c:167: SSD1306_DrawString("  Go Back");
      0044FB 90 7A 52         [24] 1620 	mov	dptr,#___str_17
      0044FE 75 F0 80         [24] 1621 	mov	b,#0x80
      004501 12 2F 6E         [24] 1622 	lcall	_SSD1306_DrawString
                                   1623 ;	display.c:168: SSD1306_SetPosition(1, 7);
      004504 90 05 39         [24] 1624 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004507 74 07            [12] 1625 	mov	a,#0x07
      004509 F0               [24] 1626 	movx	@dptr,a
      00450A 75 82 01         [24] 1627 	mov	dpl,#0x01
      00450D 12 2E 70         [24] 1628 	lcall	_SSD1306_SetPosition
                                   1629 ;	display.c:169: SSD1306_DrawString(">        Run         ");
      004510 90 7A A0         [24] 1630 	mov	dptr,#___str_23
      004513 75 F0 80         [24] 1631 	mov	b,#0x80
      004516 12 2F 6E         [24] 1632 	lcall	_SSD1306_DrawString
                                   1633 ;	display.c:170: break;
                                   1634 ;	display.c:172: default:
      004519 80 69            [24] 1635 	sjmp	00107$
      00451B                       1636 00106$:
                                   1637 ;	display.c:173: SSD1306_SetPosition(1, 2);
      00451B 90 05 39         [24] 1638 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00451E 74 02            [12] 1639 	mov	a,#0x02
      004520 F0               [24] 1640 	movx	@dptr,a
      004521 75 82 01         [24] 1641 	mov	dpl,#0x01
      004524 12 2E 70         [24] 1642 	lcall	_SSD1306_SetPosition
                                   1643 ;	display.c:174: SSD1306_DrawString("  Frequency");
      004527 90 7A 72         [24] 1644 	mov	dptr,#___str_19
      00452A 75 F0 80         [24] 1645 	mov	b,#0x80
      00452D 12 2F 6E         [24] 1646 	lcall	_SSD1306_DrawString
                                   1647 ;	display.c:175: SSD1306_SetPosition(1, 3);
      004530 90 05 39         [24] 1648 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004533 74 03            [12] 1649 	mov	a,#0x03
      004535 F0               [24] 1650 	movx	@dptr,a
      004536 75 82 01         [24] 1651 	mov	dpl,#0x01
      004539 12 2E 70         [24] 1652 	lcall	_SSD1306_SetPosition
                                   1653 ;	display.c:176: SSD1306_DrawString("  Microstepping");
      00453C 90 7A 3A         [24] 1654 	mov	dptr,#___str_15
      00453F 75 F0 80         [24] 1655 	mov	b,#0x80
      004542 12 2F 6E         [24] 1656 	lcall	_SSD1306_DrawString
                                   1657 ;	display.c:177: SSD1306_SetPosition(1, 4);
      004545 90 05 39         [24] 1658 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004548 74 04            [12] 1659 	mov	a,#0x04
      00454A F0               [24] 1660 	movx	@dptr,a
      00454B 75 82 01         [24] 1661 	mov	dpl,#0x01
      00454E 12 2E 70         [24] 1662 	lcall	_SSD1306_SetPosition
                                   1663 ;	display.c:178: SSD1306_DrawString("  Steps");
      004551 90 7A 4A         [24] 1664 	mov	dptr,#___str_16
      004554 75 F0 80         [24] 1665 	mov	b,#0x80
      004557 12 2F 6E         [24] 1666 	lcall	_SSD1306_DrawString
                                   1667 ;	display.c:179: SSD1306_SetPosition(1, 5);
      00455A 90 05 39         [24] 1668 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00455D 74 05            [12] 1669 	mov	a,#0x05
      00455F F0               [24] 1670 	movx	@dptr,a
      004560 75 82 01         [24] 1671 	mov	dpl,#0x01
      004563 12 2E 70         [24] 1672 	lcall	_SSD1306_SetPosition
                                   1673 ;	display.c:180: SSD1306_DrawString("  Go Back");
      004566 90 7A 52         [24] 1674 	mov	dptr,#___str_17
      004569 75 F0 80         [24] 1675 	mov	b,#0x80
      00456C 12 2F 6E         [24] 1676 	lcall	_SSD1306_DrawString
                                   1677 ;	display.c:181: SSD1306_SetPosition(1, 7);
      00456F 90 05 39         [24] 1678 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004572 74 07            [12] 1679 	mov	a,#0x07
      004574 F0               [24] 1680 	movx	@dptr,a
      004575 75 82 01         [24] 1681 	mov	dpl,#0x01
      004578 12 2E 70         [24] 1682 	lcall	_SSD1306_SetPosition
                                   1683 ;	display.c:182: SSD1306_DrawString("         Run         ");
      00457B 90 7A 5C         [24] 1684 	mov	dptr,#___str_18
      00457E 75 F0 80         [24] 1685 	mov	b,#0x80
      004581 12 2F 6E         [24] 1686 	lcall	_SSD1306_DrawString
                                   1687 ;	display.c:187: }
      004584                       1688 00107$:
                                   1689 ;	display.c:188: SSD1306_UpdateScreen();
      004584 12 2E 16         [24] 1690 	lcall	_SSD1306_UpdateScreen
      004587                       1691 00109$:
                                   1692 ;	display.c:192: __bit stepper_state_now = get_stepper_state();
      004587 12 35 05         [24] 1693 	lcall	_get_stepper_state
      00458A E4               [12] 1694 	clr	a
      00458B 33               [12] 1695 	rlc	a
      00458C FF               [12] 1696 	mov	r7,a
                                   1697 ;	display.c:193: if(stepper_state_last != stepper_state_now) {
      00458D A2 03            [12] 1698 	mov	c,_stepper_state_last
      00458F E4               [12] 1699 	clr	a
      004590 33               [12] 1700 	rlc	a
      004591 B5 07 01         [24] 1701 	cjne	a,ar7,00143$
      004594 22               [24] 1702 	ret
      004595                       1703 00143$:
                                   1704 ;	display.c:194: printf("hapnd\n");
      004595 C0 07            [24] 1705 	push	ar7
      004597 74 B6            [12] 1706 	mov	a,#___str_24
      004599 C0 E0            [24] 1707 	push	acc
      00459B 74 7A            [12] 1708 	mov	a,#(___str_24 >> 8)
      00459D C0 E0            [24] 1709 	push	acc
      00459F 74 80            [12] 1710 	mov	a,#0x80
      0045A1 C0 E0            [24] 1711 	push	acc
      0045A3 12 4E 1C         [24] 1712 	lcall	_printf
      0045A6 15 81            [12] 1713 	dec	sp
      0045A8 15 81            [12] 1714 	dec	sp
      0045AA 15 81            [12] 1715 	dec	sp
      0045AC D0 07            [24] 1716 	pop	ar7
                                   1717 ;	display.c:195: stepper_state_last = stepper_state_now;
                                   1718 ;	assignBit
      0045AE EF               [12] 1719 	mov	a,r7
      0045AF 24 FF            [12] 1720 	add	a,#0xff
      0045B1 92 03            [24] 1721 	mov	_stepper_state_last,c
                                   1722 ;	display.c:196: SSD1306_SetPosition(1, 7);
      0045B3 90 05 39         [24] 1723 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0045B6 74 07            [12] 1724 	mov	a,#0x07
      0045B8 F0               [24] 1725 	movx	@dptr,a
      0045B9 75 82 01         [24] 1726 	mov	dpl,#0x01
      0045BC C0 07            [24] 1727 	push	ar7
      0045BE 12 2E 70         [24] 1728 	lcall	_SSD1306_SetPosition
      0045C1 D0 07            [24] 1729 	pop	ar7
                                   1730 ;	display.c:198: if(stepper_state_now) {
      0045C3 EF               [12] 1731 	mov	a,r7
      0045C4 60 0B            [24] 1732 	jz	00114$
                                   1733 ;	display.c:199: SSD1306_DrawString("*********Run*********");
      0045C6 90 7A BD         [24] 1734 	mov	dptr,#___str_25
      0045C9 75 F0 80         [24] 1735 	mov	b,#0x80
      0045CC 12 2F 6E         [24] 1736 	lcall	_SSD1306_DrawString
      0045CF 80 1C            [24] 1737 	sjmp	00115$
      0045D1                       1738 00114$:
                                   1739 ;	display.c:201: } else if (step_control_page_options == RUN){
      0045D1 90 05 A3         [24] 1740 	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
      0045D4 E0               [24] 1741 	movx	a,@dptr
      0045D5 FF               [12] 1742 	mov	r7,a
      0045D6 BF 04 0B         [24] 1743 	cjne	r7,#0x04,00111$
                                   1744 ;	display.c:202: SSD1306_DrawString(">        Run         ");
      0045D9 90 7A A0         [24] 1745 	mov	dptr,#___str_23
      0045DC 75 F0 80         [24] 1746 	mov	b,#0x80
      0045DF 12 2F 6E         [24] 1747 	lcall	_SSD1306_DrawString
      0045E2 80 09            [24] 1748 	sjmp	00115$
      0045E4                       1749 00111$:
                                   1750 ;	display.c:205: SSD1306_DrawString("         Run         ");
      0045E4 90 7A 5C         [24] 1751 	mov	dptr,#___str_18
      0045E7 75 F0 80         [24] 1752 	mov	b,#0x80
      0045EA 12 2F 6E         [24] 1753 	lcall	_SSD1306_DrawString
      0045ED                       1754 00115$:
                                   1755 ;	display.c:207: SSD1306_UpdateScreen();
                                   1756 ;	display.c:209: }
      0045ED 02 2E 16         [24] 1757 	ljmp	_SSD1306_UpdateScreen
                                   1758 ;------------------------------------------------------------
                                   1759 ;Allocation info for local variables in function 'display_distance_control_page_first_time'
                                   1760 ;------------------------------------------------------------
                                   1761 ;	display.c:211: void display_distance_control_page_first_time(void) {
                                   1762 ;	-----------------------------------------
                                   1763 ;	 function display_distance_control_page_first_time
                                   1764 ;	-----------------------------------------
      0045F0                       1765 _display_distance_control_page_first_time:
                                   1766 ;	display.c:212: SSD1306_ClearScreen();
      0045F0 12 2E 5A         [24] 1767 	lcall	_SSD1306_ClearScreen
                                   1768 ;	display.c:213: SSD1306_SetPosition(1, 3);
      0045F3 90 05 39         [24] 1769 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0045F6 74 03            [12] 1770 	mov	a,#0x03
      0045F8 F0               [24] 1771 	movx	@dptr,a
      0045F9 75 82 01         [24] 1772 	mov	dpl,#0x01
      0045FC 12 2E 70         [24] 1773 	lcall	_SSD1306_SetPosition
                                   1774 ;	display.c:214: SSD1306_DrawString("   Not Implemented");
      0045FF 90 7A D3         [24] 1775 	mov	dptr,#___str_26
      004602 75 F0 80         [24] 1776 	mov	b,#0x80
      004605 12 2F 6E         [24] 1777 	lcall	_SSD1306_DrawString
                                   1778 ;	display.c:216: SSD1306_UpdateScreen();
                                   1779 ;	display.c:217: }
      004608 02 2E 16         [24] 1780 	ljmp	_SSD1306_UpdateScreen
                                   1781 ;------------------------------------------------------------
                                   1782 ;Allocation info for local variables in function 'display_encoder_control_page_first_time'
                                   1783 ;------------------------------------------------------------
                                   1784 ;	display.c:219: void display_encoder_control_page_first_time(void) {
                                   1785 ;	-----------------------------------------
                                   1786 ;	 function display_encoder_control_page_first_time
                                   1787 ;	-----------------------------------------
      00460B                       1788 _display_encoder_control_page_first_time:
                                   1789 ;	display.c:220: SSD1306_ClearScreen();
      00460B 12 2E 5A         [24] 1790 	lcall	_SSD1306_ClearScreen
                                   1791 ;	display.c:221: SSD1306_SetPosition(1, 3);
      00460E 90 05 39         [24] 1792 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004611 74 03            [12] 1793 	mov	a,#0x03
      004613 F0               [24] 1794 	movx	@dptr,a
      004614 75 82 01         [24] 1795 	mov	dpl,#0x01
      004617 12 2E 70         [24] 1796 	lcall	_SSD1306_SetPosition
                                   1797 ;	display.c:222: SSD1306_DrawString("   Not Implemented");
      00461A 90 7A D3         [24] 1798 	mov	dptr,#___str_26
      00461D 75 F0 80         [24] 1799 	mov	b,#0x80
      004620 12 2F 6E         [24] 1800 	lcall	_SSD1306_DrawString
                                   1801 ;	display.c:224: SSD1306_UpdateScreen();
                                   1802 ;	display.c:225: }
      004623 02 2E 16         [24] 1803 	ljmp	_SSD1306_UpdateScreen
                                   1804 ;------------------------------------------------------------
                                   1805 ;Allocation info for local variables in function 'display_update_stepper_dir'
                                   1806 ;------------------------------------------------------------
                                   1807 ;stepper_direction         Allocated with name '_display_update_stepper_dir_stepper_direction_65536_169'
                                   1808 ;------------------------------------------------------------
                                   1809 ;	display.c:227: void display_update_stepper_dir(stepper_direction_t stepper_direction) {
                                   1810 ;	-----------------------------------------
                                   1811 ;	 function display_update_stepper_dir
                                   1812 ;	-----------------------------------------
      004626                       1813 _display_update_stepper_dir:
      004626 E5 82            [12] 1814 	mov	a,dpl
      004628 90 05 A4         [24] 1815 	mov	dptr,#_display_update_stepper_dir_stepper_direction_65536_169
      00462B F0               [24] 1816 	movx	@dptr,a
                                   1817 ;	display.c:228: SSD1306_SetPosition(31, 1);
      00462C 90 05 39         [24] 1818 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00462F 74 01            [12] 1819 	mov	a,#0x01
      004631 F0               [24] 1820 	movx	@dptr,a
      004632 75 82 1F         [24] 1821 	mov	dpl,#0x1f
      004635 12 2E 70         [24] 1822 	lcall	_SSD1306_SetPosition
                                   1823 ;	display.c:229: if (stepper_direction) {
      004638 90 05 A4         [24] 1824 	mov	dptr,#_display_update_stepper_dir_stepper_direction_65536_169
      00463B E0               [24] 1825 	movx	a,@dptr
      00463C 60 0B            [24] 1826 	jz	00102$
                                   1827 ;	display.c:230: SSD1306_DrawString("CW ");
      00463E 90 7A E6         [24] 1828 	mov	dptr,#___str_27
      004641 75 F0 80         [24] 1829 	mov	b,#0x80
      004644 12 2F 6E         [24] 1830 	lcall	_SSD1306_DrawString
      004647 80 09            [24] 1831 	sjmp	00103$
      004649                       1832 00102$:
                                   1833 ;	display.c:232: SSD1306_DrawString("CCW");
      004649 90 7A EA         [24] 1834 	mov	dptr,#___str_28
      00464C 75 F0 80         [24] 1835 	mov	b,#0x80
      00464F 12 2F 6E         [24] 1836 	lcall	_SSD1306_DrawString
      004652                       1837 00103$:
                                   1838 ;	display.c:234: SSD1306_UpdateScreen();
                                   1839 ;	display.c:235: }
      004652 02 2E 16         [24] 1840 	ljmp	_SSD1306_UpdateScreen
                                   1841 ;------------------------------------------------------------
                                   1842 ;Allocation info for local variables in function 'display_update_stepper_enable'
                                   1843 ;------------------------------------------------------------
                                   1844 ;stepper_enable_status     Allocated with name '_display_update_stepper_enable_stepper_enable_status_65536_173'
                                   1845 ;------------------------------------------------------------
                                   1846 ;	display.c:237: void display_update_stepper_enable(stepper_enable_status_t stepper_enable_status) {
                                   1847 ;	-----------------------------------------
                                   1848 ;	 function display_update_stepper_enable
                                   1849 ;	-----------------------------------------
      004655                       1850 _display_update_stepper_enable:
      004655 E5 82            [12] 1851 	mov	a,dpl
      004657 90 05 A5         [24] 1852 	mov	dptr,#_display_update_stepper_enable_stepper_enable_status_65536_173
      00465A F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	display.c:238: SSD1306_SetPosition(103, 1);
      00465B 90 05 39         [24] 1855 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00465E 74 01            [12] 1856 	mov	a,#0x01
      004660 F0               [24] 1857 	movx	@dptr,a
      004661 75 82 67         [24] 1858 	mov	dpl,#0x67
      004664 12 2E 70         [24] 1859 	lcall	_SSD1306_SetPosition
                                   1860 ;	display.c:239: if (stepper_enable_status) {
      004667 90 05 A5         [24] 1861 	mov	dptr,#_display_update_stepper_enable_stepper_enable_status_65536_173
      00466A E0               [24] 1862 	movx	a,@dptr
      00466B 60 0B            [24] 1863 	jz	00102$
                                   1864 ;	display.c:240: SSD1306_DrawString("FREE");
      00466D 90 7A EE         [24] 1865 	mov	dptr,#___str_29
      004670 75 F0 80         [24] 1866 	mov	b,#0x80
      004673 12 2F 6E         [24] 1867 	lcall	_SSD1306_DrawString
      004676 80 09            [24] 1868 	sjmp	00103$
      004678                       1869 00102$:
                                   1870 ;	display.c:242: SSD1306_DrawString("HOLD");
      004678 90 7A F3         [24] 1871 	mov	dptr,#___str_30
      00467B 75 F0 80         [24] 1872 	mov	b,#0x80
      00467E 12 2F 6E         [24] 1873 	lcall	_SSD1306_DrawString
      004681                       1874 00103$:
                                   1875 ;	display.c:244: SSD1306_UpdateScreen();
                                   1876 ;	display.c:246: }
      004681 02 2E 16         [24] 1877 	ljmp	_SSD1306_UpdateScreen
                                   1878 ;------------------------------------------------------------
                                   1879 ;Allocation info for local variables in function 'display_step_control_set_steps_option'
                                   1880 ;------------------------------------------------------------
                                   1881 ;sloc0                     Allocated with name '_display_step_control_set_steps_option_sloc0_1_0'
                                   1882 ;sloc1                     Allocated with name '_display_step_control_set_steps_option_sloc1_1_0'
                                   1883 ;float_digit_pointer       Allocated with name '_display_step_control_set_steps_option_PARM_2'
                                   1884 ;float_digits              Allocated with name '_display_step_control_set_steps_option_float_digits_65536_177'
                                   1885 ;buffer                    Allocated with name '_display_step_control_set_steps_option_buffer_65537_179'
                                   1886 ;------------------------------------------------------------
                                   1887 ;	display.c:248: void display_step_control_set_steps_option(uint8_t* float_digits, float_digit_pointer_t float_digit_pointer) {
                                   1888 ;	-----------------------------------------
                                   1889 ;	 function display_step_control_set_steps_option
                                   1890 ;	-----------------------------------------
      004684                       1891 _display_step_control_set_steps_option:
      004684 AF F0            [24] 1892 	mov	r7,b
      004686 AE 83            [24] 1893 	mov	r6,dph
      004688 E5 82            [12] 1894 	mov	a,dpl
      00468A 90 05 A7         [24] 1895 	mov	dptr,#_display_step_control_set_steps_option_float_digits_65536_177
      00468D F0               [24] 1896 	movx	@dptr,a
      00468E EE               [12] 1897 	mov	a,r6
      00468F A3               [24] 1898 	inc	dptr
      004690 F0               [24] 1899 	movx	@dptr,a
      004691 EF               [12] 1900 	mov	a,r7
      004692 A3               [24] 1901 	inc	dptr
      004693 F0               [24] 1902 	movx	@dptr,a
                                   1903 ;	display.c:249: SSD1306_ClearScreen();
      004694 12 2E 5A         [24] 1904 	lcall	_SSD1306_ClearScreen
                                   1905 ;	display.c:250: SSD1306_SetPosition(1, 2);
      004697 90 05 39         [24] 1906 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      00469A 74 02            [12] 1907 	mov	a,#0x02
      00469C F0               [24] 1908 	movx	@dptr,a
      00469D 75 82 01         [24] 1909 	mov	dpl,#0x01
      0046A0 12 2E 70         [24] 1910 	lcall	_SSD1306_SetPosition
                                   1911 ;	display.c:251: SSD1306_DrawString("Setting Steps:");
      0046A3 90 7A F8         [24] 1912 	mov	dptr,#___str_31
      0046A6 75 F0 80         [24] 1913 	mov	b,#0x80
      0046A9 12 2F 6E         [24] 1914 	lcall	_SSD1306_DrawString
                                   1915 ;	display.c:255: sprintf(buffer, "      %d%d%d.%d%d", float_digits[0], float_digits[1], float_digits[2], float_digits[3], float_digits[4]);
      0046AC 90 05 A7         [24] 1916 	mov	dptr,#_display_step_control_set_steps_option_float_digits_65536_177
      0046AF E0               [24] 1917 	movx	a,@dptr
      0046B0 FD               [12] 1918 	mov	r5,a
      0046B1 A3               [24] 1919 	inc	dptr
      0046B2 E0               [24] 1920 	movx	a,@dptr
      0046B3 FE               [12] 1921 	mov	r6,a
      0046B4 A3               [24] 1922 	inc	dptr
      0046B5 E0               [24] 1923 	movx	a,@dptr
      0046B6 FF               [12] 1924 	mov	r7,a
      0046B7 74 04            [12] 1925 	mov	a,#0x04
      0046B9 2D               [12] 1926 	add	a,r5
      0046BA FA               [12] 1927 	mov	r2,a
      0046BB E4               [12] 1928 	clr	a
      0046BC 3E               [12] 1929 	addc	a,r6
      0046BD FB               [12] 1930 	mov	r3,a
      0046BE 8F 04            [24] 1931 	mov	ar4,r7
      0046C0 8A 82            [24] 1932 	mov	dpl,r2
      0046C2 8B 83            [24] 1933 	mov	dph,r3
      0046C4 8C F0            [24] 1934 	mov	b,r4
      0046C6 12 58 3E         [24] 1935 	lcall	__gptrget
      0046C9 FA               [12] 1936 	mov	r2,a
      0046CA 7C 00            [12] 1937 	mov	r4,#0x00
      0046CC 74 03            [12] 1938 	mov	a,#0x03
      0046CE 2D               [12] 1939 	add	a,r5
      0046CF F8               [12] 1940 	mov	r0,a
      0046D0 E4               [12] 1941 	clr	a
      0046D1 3E               [12] 1942 	addc	a,r6
      0046D2 F9               [12] 1943 	mov	r1,a
      0046D3 8F 03            [24] 1944 	mov	ar3,r7
      0046D5 88 82            [24] 1945 	mov	dpl,r0
      0046D7 89 83            [24] 1946 	mov	dph,r1
      0046D9 8B F0            [24] 1947 	mov	b,r3
      0046DB 12 58 3E         [24] 1948 	lcall	__gptrget
      0046DE F8               [12] 1949 	mov	r0,a
      0046DF 88 45            [24] 1950 	mov	_display_step_control_set_steps_option_sloc0_1_0,r0
                                   1951 ;	1-genFromRTrack replaced	mov	(_display_step_control_set_steps_option_sloc0_1_0 + 1),#0x00
      0046E1 8C 46            [24] 1952 	mov	(_display_step_control_set_steps_option_sloc0_1_0 + 1),r4
      0046E3 74 02            [12] 1953 	mov	a,#0x02
      0046E5 2D               [12] 1954 	add	a,r5
      0046E6 F8               [12] 1955 	mov	r0,a
      0046E7 E4               [12] 1956 	clr	a
      0046E8 3E               [12] 1957 	addc	a,r6
      0046E9 F9               [12] 1958 	mov	r1,a
      0046EA 8F 03            [24] 1959 	mov	ar3,r7
      0046EC 88 82            [24] 1960 	mov	dpl,r0
      0046EE 89 83            [24] 1961 	mov	dph,r1
      0046F0 8B F0            [24] 1962 	mov	b,r3
      0046F2 12 58 3E         [24] 1963 	lcall	__gptrget
      0046F5 F8               [12] 1964 	mov	r0,a
      0046F6 88 47            [24] 1965 	mov	_display_step_control_set_steps_option_sloc1_1_0,r0
                                   1966 ;	1-genFromRTrack replaced	mov	(_display_step_control_set_steps_option_sloc1_1_0 + 1),#0x00
      0046F8 8C 48            [24] 1967 	mov	(_display_step_control_set_steps_option_sloc1_1_0 + 1),r4
      0046FA 74 01            [12] 1968 	mov	a,#0x01
      0046FC 2D               [12] 1969 	add	a,r5
      0046FD F8               [12] 1970 	mov	r0,a
      0046FE E4               [12] 1971 	clr	a
      0046FF 3E               [12] 1972 	addc	a,r6
      004700 F9               [12] 1973 	mov	r1,a
      004701 8F 03            [24] 1974 	mov	ar3,r7
      004703 88 82            [24] 1975 	mov	dpl,r0
      004705 89 83            [24] 1976 	mov	dph,r1
      004707 8B F0            [24] 1977 	mov	b,r3
      004709 12 58 3E         [24] 1978 	lcall	__gptrget
      00470C F8               [12] 1979 	mov	r0,a
      00470D 7B 00            [12] 1980 	mov	r3,#0x00
      00470F 8D 82            [24] 1981 	mov	dpl,r5
      004711 8E 83            [24] 1982 	mov	dph,r6
      004713 8F F0            [24] 1983 	mov	b,r7
      004715 12 58 3E         [24] 1984 	lcall	__gptrget
      004718 FD               [12] 1985 	mov	r5,a
      004719 7F 00            [12] 1986 	mov	r7,#0x00
      00471B C0 02            [24] 1987 	push	ar2
      00471D C0 04            [24] 1988 	push	ar4
      00471F C0 45            [24] 1989 	push	_display_step_control_set_steps_option_sloc0_1_0
      004721 C0 46            [24] 1990 	push	(_display_step_control_set_steps_option_sloc0_1_0 + 1)
      004723 C0 47            [24] 1991 	push	_display_step_control_set_steps_option_sloc1_1_0
      004725 C0 48            [24] 1992 	push	(_display_step_control_set_steps_option_sloc1_1_0 + 1)
      004727 C0 00            [24] 1993 	push	ar0
      004729 C0 03            [24] 1994 	push	ar3
      00472B C0 05            [24] 1995 	push	ar5
      00472D C0 07            [24] 1996 	push	ar7
      00472F 74 07            [12] 1997 	mov	a,#___str_32
      004731 C0 E0            [24] 1998 	push	acc
      004733 74 7B            [12] 1999 	mov	a,#(___str_32 >> 8)
      004735 C0 E0            [24] 2000 	push	acc
      004737 74 80            [12] 2001 	mov	a,#0x80
      004739 C0 E0            [24] 2002 	push	acc
      00473B 74 AA            [12] 2003 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      00473D C0 E0            [24] 2004 	push	acc
      00473F 74 05            [12] 2005 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      004741 C0 E0            [24] 2006 	push	acc
      004743 E4               [12] 2007 	clr	a
      004744 C0 E0            [24] 2008 	push	acc
      004746 12 4D 72         [24] 2009 	lcall	_sprintf
      004749 E5 81            [12] 2010 	mov	a,sp
      00474B 24 F0            [12] 2011 	add	a,#0xf0
      00474D F5 81            [12] 2012 	mov	sp,a
                                   2013 ;	display.c:256: SSD1306_SetPosition(1, 5);
      00474F 90 05 39         [24] 2014 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004752 74 05            [12] 2015 	mov	a,#0x05
      004754 F0               [24] 2016 	movx	@dptr,a
      004755 75 82 01         [24] 2017 	mov	dpl,#0x01
      004758 12 2E 70         [24] 2018 	lcall	_SSD1306_SetPosition
                                   2019 ;	display.c:257: SSD1306_DrawString(buffer);
      00475B 90 05 AA         [24] 2020 	mov	dptr,#_display_step_control_set_steps_option_buffer_65537_179
      00475E 75 F0 00         [24] 2021 	mov	b,#0x00
      004761 12 2F 6E         [24] 2022 	lcall	_SSD1306_DrawString
                                   2023 ;	display.c:260: switch (float_digit_pointer) {
      004764 90 05 A6         [24] 2024 	mov	dptr,#_display_step_control_set_steps_option_PARM_2
      004767 E0               [24] 2025 	movx	a,@dptr
      004768 FF               [12] 2026 	mov  r7,a
      004769 24 FB            [12] 2027 	add	a,#0xff - 0x04
      00476B 50 03            [24] 2028 	jnc	00113$
      00476D 02 48 2F         [24] 2029 	ljmp	00106$
      004770                       2030 00113$:
      004770 EF               [12] 2031 	mov	a,r7
      004771 2F               [12] 2032 	add	a,r7
      004772 2F               [12] 2033 	add	a,r7
      004773 90 47 77         [24] 2034 	mov	dptr,#00114$
      004776 73               [24] 2035 	jmp	@a+dptr
      004777                       2036 00114$:
      004777 02 47 86         [24] 2037 	ljmp	00101$
      00477A 02 47 A9         [24] 2038 	ljmp	00102$
      00477D 02 47 CB         [24] 2039 	ljmp	00103$
      004780 02 47 ED         [24] 2040 	ljmp	00104$
      004783 02 48 0F         [24] 2041 	ljmp	00105$
                                   2042 ;	display.c:261: case HUNDREDS:
      004786                       2043 00101$:
                                   2044 ;	display.c:262: sprintf(buffer, "      ^");
      004786 74 19            [12] 2045 	mov	a,#___str_33
      004788 C0 E0            [24] 2046 	push	acc
      00478A 74 7B            [12] 2047 	mov	a,#(___str_33 >> 8)
      00478C C0 E0            [24] 2048 	push	acc
      00478E 74 80            [12] 2049 	mov	a,#0x80
      004790 C0 E0            [24] 2050 	push	acc
      004792 74 AA            [12] 2051 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      004794 C0 E0            [24] 2052 	push	acc
      004796 74 05            [12] 2053 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      004798 C0 E0            [24] 2054 	push	acc
      00479A E4               [12] 2055 	clr	a
      00479B C0 E0            [24] 2056 	push	acc
      00479D 12 4D 72         [24] 2057 	lcall	_sprintf
      0047A0 E5 81            [12] 2058 	mov	a,sp
      0047A2 24 FA            [12] 2059 	add	a,#0xfa
      0047A4 F5 81            [12] 2060 	mov	sp,a
                                   2061 ;	display.c:263: break;
      0047A6 02 48 2F         [24] 2062 	ljmp	00106$
                                   2063 ;	display.c:265: case TENS:
      0047A9                       2064 00102$:
                                   2065 ;	display.c:266: sprintf(buffer, "       ^");
      0047A9 74 21            [12] 2066 	mov	a,#___str_34
      0047AB C0 E0            [24] 2067 	push	acc
      0047AD 74 7B            [12] 2068 	mov	a,#(___str_34 >> 8)
      0047AF C0 E0            [24] 2069 	push	acc
      0047B1 74 80            [12] 2070 	mov	a,#0x80
      0047B3 C0 E0            [24] 2071 	push	acc
      0047B5 74 AA            [12] 2072 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      0047B7 C0 E0            [24] 2073 	push	acc
      0047B9 74 05            [12] 2074 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      0047BB C0 E0            [24] 2075 	push	acc
      0047BD E4               [12] 2076 	clr	a
      0047BE C0 E0            [24] 2077 	push	acc
      0047C0 12 4D 72         [24] 2078 	lcall	_sprintf
      0047C3 E5 81            [12] 2079 	mov	a,sp
      0047C5 24 FA            [12] 2080 	add	a,#0xfa
      0047C7 F5 81            [12] 2081 	mov	sp,a
                                   2082 ;	display.c:267: break;
                                   2083 ;	display.c:269: case ONES:
      0047C9 80 64            [24] 2084 	sjmp	00106$
      0047CB                       2085 00103$:
                                   2086 ;	display.c:270: sprintf(buffer, "        ^");
      0047CB 74 2A            [12] 2087 	mov	a,#___str_35
      0047CD C0 E0            [24] 2088 	push	acc
      0047CF 74 7B            [12] 2089 	mov	a,#(___str_35 >> 8)
      0047D1 C0 E0            [24] 2090 	push	acc
      0047D3 74 80            [12] 2091 	mov	a,#0x80
      0047D5 C0 E0            [24] 2092 	push	acc
      0047D7 74 AA            [12] 2093 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      0047D9 C0 E0            [24] 2094 	push	acc
      0047DB 74 05            [12] 2095 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      0047DD C0 E0            [24] 2096 	push	acc
      0047DF E4               [12] 2097 	clr	a
      0047E0 C0 E0            [24] 2098 	push	acc
      0047E2 12 4D 72         [24] 2099 	lcall	_sprintf
      0047E5 E5 81            [12] 2100 	mov	a,sp
      0047E7 24 FA            [12] 2101 	add	a,#0xfa
      0047E9 F5 81            [12] 2102 	mov	sp,a
                                   2103 ;	display.c:271: break;
                                   2104 ;	display.c:273: case TENTH:
      0047EB 80 42            [24] 2105 	sjmp	00106$
      0047ED                       2106 00104$:
                                   2107 ;	display.c:274: sprintf(buffer, "          ^");
      0047ED 74 34            [12] 2108 	mov	a,#___str_36
      0047EF C0 E0            [24] 2109 	push	acc
      0047F1 74 7B            [12] 2110 	mov	a,#(___str_36 >> 8)
      0047F3 C0 E0            [24] 2111 	push	acc
      0047F5 74 80            [12] 2112 	mov	a,#0x80
      0047F7 C0 E0            [24] 2113 	push	acc
      0047F9 74 AA            [12] 2114 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      0047FB C0 E0            [24] 2115 	push	acc
      0047FD 74 05            [12] 2116 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      0047FF C0 E0            [24] 2117 	push	acc
      004801 E4               [12] 2118 	clr	a
      004802 C0 E0            [24] 2119 	push	acc
      004804 12 4D 72         [24] 2120 	lcall	_sprintf
      004807 E5 81            [12] 2121 	mov	a,sp
      004809 24 FA            [12] 2122 	add	a,#0xfa
      00480B F5 81            [12] 2123 	mov	sp,a
                                   2124 ;	display.c:275: break;
                                   2125 ;	display.c:277: case HUNDREDTH:
      00480D 80 20            [24] 2126 	sjmp	00106$
      00480F                       2127 00105$:
                                   2128 ;	display.c:278: sprintf(buffer, "           ^");
      00480F 74 40            [12] 2129 	mov	a,#___str_37
      004811 C0 E0            [24] 2130 	push	acc
      004813 74 7B            [12] 2131 	mov	a,#(___str_37 >> 8)
      004815 C0 E0            [24] 2132 	push	acc
      004817 74 80            [12] 2133 	mov	a,#0x80
      004819 C0 E0            [24] 2134 	push	acc
      00481B 74 AA            [12] 2135 	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
      00481D C0 E0            [24] 2136 	push	acc
      00481F 74 05            [12] 2137 	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
      004821 C0 E0            [24] 2138 	push	acc
      004823 E4               [12] 2139 	clr	a
      004824 C0 E0            [24] 2140 	push	acc
      004826 12 4D 72         [24] 2141 	lcall	_sprintf
      004829 E5 81            [12] 2142 	mov	a,sp
      00482B 24 FA            [12] 2143 	add	a,#0xfa
      00482D F5 81            [12] 2144 	mov	sp,a
                                   2145 ;	display.c:281: }
      00482F                       2146 00106$:
                                   2147 ;	display.c:282: SSD1306_SetPosition(1, 6);
      00482F 90 05 39         [24] 2148 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004832 74 06            [12] 2149 	mov	a,#0x06
      004834 F0               [24] 2150 	movx	@dptr,a
      004835 75 82 01         [24] 2151 	mov	dpl,#0x01
      004838 12 2E 70         [24] 2152 	lcall	_SSD1306_SetPosition
                                   2153 ;	display.c:283: SSD1306_DrawString(buffer);
      00483B 90 05 AA         [24] 2154 	mov	dptr,#_display_step_control_set_steps_option_buffer_65537_179
      00483E 75 F0 00         [24] 2155 	mov	b,#0x00
      004841 12 2F 6E         [24] 2156 	lcall	_SSD1306_DrawString
                                   2157 ;	display.c:285: SSD1306_UpdateScreen();
                                   2158 ;	display.c:286: }
      004844 02 2E 16         [24] 2159 	ljmp	_SSD1306_UpdateScreen
                                   2160 ;------------------------------------------------------------
                                   2161 ;Allocation info for local variables in function 'display_step_control_set_microstepping_option'
                                   2162 ;------------------------------------------------------------
                                   2163 ;encoder_value             Allocated with name '_display_step_control_set_microstepping_option_encoder_value_65536_181'
                                   2164 ;buffer                    Allocated with name '_display_step_control_set_microstepping_option_buffer_65537_183'
                                   2165 ;------------------------------------------------------------
                                   2166 ;	display.c:288: void display_step_control_set_microstepping_option(int16_t encoder_value) {
                                   2167 ;	-----------------------------------------
                                   2168 ;	 function display_step_control_set_microstepping_option
                                   2169 ;	-----------------------------------------
      004847                       2170 _display_step_control_set_microstepping_option:
      004847 AF 83            [24] 2171 	mov	r7,dph
      004849 E5 82            [12] 2172 	mov	a,dpl
      00484B 90 05 BE         [24] 2173 	mov	dptr,#_display_step_control_set_microstepping_option_encoder_value_65536_181
      00484E F0               [24] 2174 	movx	@dptr,a
      00484F EF               [12] 2175 	mov	a,r7
      004850 A3               [24] 2176 	inc	dptr
      004851 F0               [24] 2177 	movx	@dptr,a
                                   2178 ;	display.c:289: SSD1306_ClearScreen();
      004852 12 2E 5A         [24] 2179 	lcall	_SSD1306_ClearScreen
                                   2180 ;	display.c:290: SSD1306_SetPosition(1, 2);
      004855 90 05 39         [24] 2181 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004858 74 02            [12] 2182 	mov	a,#0x02
      00485A F0               [24] 2183 	movx	@dptr,a
      00485B 75 82 01         [24] 2184 	mov	dpl,#0x01
      00485E 12 2E 70         [24] 2185 	lcall	_SSD1306_SetPosition
                                   2186 ;	display.c:291: SSD1306_DrawString("Setting Microstepping:");
      004861 90 7B 4D         [24] 2187 	mov	dptr,#___str_38
      004864 75 F0 80         [24] 2188 	mov	b,#0x80
      004867 12 2F 6E         [24] 2189 	lcall	_SSD1306_DrawString
                                   2190 ;	display.c:294: sprintf(buffer,    "      %d", encoder_value);
      00486A 90 05 BE         [24] 2191 	mov	dptr,#_display_step_control_set_microstepping_option_encoder_value_65536_181
      00486D E0               [24] 2192 	movx	a,@dptr
      00486E C0 E0            [24] 2193 	push	acc
      004870 A3               [24] 2194 	inc	dptr
      004871 E0               [24] 2195 	movx	a,@dptr
      004872 C0 E0            [24] 2196 	push	acc
      004874 74 64            [12] 2197 	mov	a,#___str_39
      004876 C0 E0            [24] 2198 	push	acc
      004878 74 7B            [12] 2199 	mov	a,#(___str_39 >> 8)
      00487A C0 E0            [24] 2200 	push	acc
      00487C 74 80            [12] 2201 	mov	a,#0x80
      00487E C0 E0            [24] 2202 	push	acc
      004880 74 C0            [12] 2203 	mov	a,#_display_step_control_set_microstepping_option_buffer_65537_183
      004882 C0 E0            [24] 2204 	push	acc
      004884 74 05            [12] 2205 	mov	a,#(_display_step_control_set_microstepping_option_buffer_65537_183 >> 8)
      004886 C0 E0            [24] 2206 	push	acc
      004888 E4               [12] 2207 	clr	a
      004889 C0 E0            [24] 2208 	push	acc
      00488B 12 4D 72         [24] 2209 	lcall	_sprintf
      00488E E5 81            [12] 2210 	mov	a,sp
      004890 24 F8            [12] 2211 	add	a,#0xf8
      004892 F5 81            [12] 2212 	mov	sp,a
                                   2213 ;	display.c:296: SSD1306_SetPosition(1, 5);
      004894 90 05 39         [24] 2214 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      004897 74 05            [12] 2215 	mov	a,#0x05
      004899 F0               [24] 2216 	movx	@dptr,a
      00489A 75 82 01         [24] 2217 	mov	dpl,#0x01
      00489D 12 2E 70         [24] 2218 	lcall	_SSD1306_SetPosition
                                   2219 ;	display.c:297: SSD1306_DrawString(buffer);
      0048A0 90 05 C0         [24] 2220 	mov	dptr,#_display_step_control_set_microstepping_option_buffer_65537_183
      0048A3 75 F0 00         [24] 2221 	mov	b,#0x00
      0048A6 12 2F 6E         [24] 2222 	lcall	_SSD1306_DrawString
                                   2223 ;	display.c:299: SSD1306_UpdateScreen();
                                   2224 ;	display.c:300: }
      0048A9 02 2E 16         [24] 2225 	ljmp	_SSD1306_UpdateScreen
                                   2226 ;------------------------------------------------------------
                                   2227 ;Allocation info for local variables in function 'display_step_control_set_frequency_option'
                                   2228 ;------------------------------------------------------------
                                   2229 ;encoder_value             Allocated with name '_display_step_control_set_frequency_option_encoder_value_65536_184'
                                   2230 ;buffer                    Allocated with name '_display_step_control_set_frequency_option_buffer_65537_186'
                                   2231 ;------------------------------------------------------------
                                   2232 ;	display.c:302: void display_step_control_set_frequency_option(int16_t encoder_value) {
                                   2233 ;	-----------------------------------------
                                   2234 ;	 function display_step_control_set_frequency_option
                                   2235 ;	-----------------------------------------
      0048AC                       2236 _display_step_control_set_frequency_option:
      0048AC AF 83            [24] 2237 	mov	r7,dph
      0048AE E5 82            [12] 2238 	mov	a,dpl
      0048B0 90 05 C5         [24] 2239 	mov	dptr,#_display_step_control_set_frequency_option_encoder_value_65536_184
      0048B3 F0               [24] 2240 	movx	@dptr,a
      0048B4 EF               [12] 2241 	mov	a,r7
      0048B5 A3               [24] 2242 	inc	dptr
      0048B6 F0               [24] 2243 	movx	@dptr,a
                                   2244 ;	display.c:303: SSD1306_ClearScreen();
      0048B7 12 2E 5A         [24] 2245 	lcall	_SSD1306_ClearScreen
                                   2246 ;	display.c:304: SSD1306_SetPosition(1, 2);
      0048BA 90 05 39         [24] 2247 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0048BD 74 02            [12] 2248 	mov	a,#0x02
      0048BF F0               [24] 2249 	movx	@dptr,a
      0048C0 75 82 01         [24] 2250 	mov	dpl,#0x01
      0048C3 12 2E 70         [24] 2251 	lcall	_SSD1306_SetPosition
                                   2252 ;	display.c:305: SSD1306_DrawString("Setting frequency:");
      0048C6 90 7B 6D         [24] 2253 	mov	dptr,#___str_40
      0048C9 75 F0 80         [24] 2254 	mov	b,#0x80
      0048CC 12 2F 6E         [24] 2255 	lcall	_SSD1306_DrawString
                                   2256 ;	display.c:308: sprintf(buffer,    "      %d", encoder_value);
      0048CF 90 05 C5         [24] 2257 	mov	dptr,#_display_step_control_set_frequency_option_encoder_value_65536_184
      0048D2 E0               [24] 2258 	movx	a,@dptr
      0048D3 C0 E0            [24] 2259 	push	acc
      0048D5 A3               [24] 2260 	inc	dptr
      0048D6 E0               [24] 2261 	movx	a,@dptr
      0048D7 C0 E0            [24] 2262 	push	acc
      0048D9 74 64            [12] 2263 	mov	a,#___str_39
      0048DB C0 E0            [24] 2264 	push	acc
      0048DD 74 7B            [12] 2265 	mov	a,#(___str_39 >> 8)
      0048DF C0 E0            [24] 2266 	push	acc
      0048E1 74 80            [12] 2267 	mov	a,#0x80
      0048E3 C0 E0            [24] 2268 	push	acc
      0048E5 74 C7            [12] 2269 	mov	a,#_display_step_control_set_frequency_option_buffer_65537_186
      0048E7 C0 E0            [24] 2270 	push	acc
      0048E9 74 05            [12] 2271 	mov	a,#(_display_step_control_set_frequency_option_buffer_65537_186 >> 8)
      0048EB C0 E0            [24] 2272 	push	acc
      0048ED E4               [12] 2273 	clr	a
      0048EE C0 E0            [24] 2274 	push	acc
      0048F0 12 4D 72         [24] 2275 	lcall	_sprintf
      0048F3 E5 81            [12] 2276 	mov	a,sp
      0048F5 24 F8            [12] 2277 	add	a,#0xf8
      0048F7 F5 81            [12] 2278 	mov	sp,a
                                   2279 ;	display.c:310: SSD1306_SetPosition(1, 5);
      0048F9 90 05 39         [24] 2280 	mov	dptr,#_SSD1306_SetPosition_PARM_2
      0048FC 74 05            [12] 2281 	mov	a,#0x05
      0048FE F0               [24] 2282 	movx	@dptr,a
      0048FF 75 82 01         [24] 2283 	mov	dpl,#0x01
      004902 12 2E 70         [24] 2284 	lcall	_SSD1306_SetPosition
                                   2285 ;	display.c:311: SSD1306_DrawString(buffer);
      004905 90 05 C7         [24] 2286 	mov	dptr,#_display_step_control_set_frequency_option_buffer_65537_186
      004908 75 F0 00         [24] 2287 	mov	b,#0x00
      00490B 12 2F 6E         [24] 2288 	lcall	_SSD1306_DrawString
                                   2289 ;	display.c:313: SSD1306_UpdateScreen();
                                   2290 ;	display.c:314: }
      00490E 02 2E 16         [24] 2291 	ljmp	_SSD1306_UpdateScreen
                                   2292 	.area CSEG    (CODE)
                                   2293 	.area CONST   (CODE)
      007763                       2294 _FONTS:
      007763 00                    2295 	.db #0x00	; 0
      007764 00                    2296 	.db #0x00	; 0
      007765 00                    2297 	.db #0x00	; 0
      007766 00                    2298 	.db #0x00	; 0
      007767 00                    2299 	.db #0x00	; 0
      007768 81                    2300 	.db #0x81	; 129
      007769 81                    2301 	.db #0x81	; 129
      00776A 18                    2302 	.db #0x18	; 24
      00776B 81                    2303 	.db #0x81	; 129
      00776C 81                    2304 	.db #0x81	; 129
      00776D 00                    2305 	.db #0x00	; 0
      00776E 07                    2306 	.db #0x07	; 7
      00776F 00                    2307 	.db #0x00	; 0
      007770 07                    2308 	.db #0x07	; 7
      007771 00                    2309 	.db #0x00	; 0
      007772 14                    2310 	.db #0x14	; 20
      007773 7F                    2311 	.db #0x7f	; 127
      007774 14                    2312 	.db #0x14	; 20
      007775 7F                    2313 	.db #0x7f	; 127
      007776 14                    2314 	.db #0x14	; 20
      007777 24                    2315 	.db #0x24	; 36
      007778 2A                    2316 	.db #0x2a	; 42
      007779 7F                    2317 	.db #0x7f	; 127
      00777A 2A                    2318 	.db #0x2a	; 42
      00777B 12                    2319 	.db #0x12	; 18
      00777C 23                    2320 	.db #0x23	; 35
      00777D 13                    2321 	.db #0x13	; 19
      00777E 08                    2322 	.db #0x08	; 8
      00777F 64                    2323 	.db #0x64	; 100	'd'
      007780 62                    2324 	.db #0x62	; 98	'b'
      007781 36                    2325 	.db #0x36	; 54	'6'
      007782 49                    2326 	.db #0x49	; 73	'I'
      007783 55                    2327 	.db #0x55	; 85	'U'
      007784 22                    2328 	.db #0x22	; 34
      007785 50                    2329 	.db #0x50	; 80	'P'
      007786 00                    2330 	.db #0x00	; 0
      007787 05                    2331 	.db #0x05	; 5
      007788 03                    2332 	.db #0x03	; 3
      007789 00                    2333 	.db #0x00	; 0
      00778A 00                    2334 	.db #0x00	; 0
      00778B 00                    2335 	.db #0x00	; 0
      00778C 1C                    2336 	.db #0x1c	; 28
      00778D 22                    2337 	.db #0x22	; 34
      00778E 41                    2338 	.db #0x41	; 65	'A'
      00778F 00                    2339 	.db #0x00	; 0
      007790 00                    2340 	.db #0x00	; 0
      007791 41                    2341 	.db #0x41	; 65	'A'
      007792 22                    2342 	.db #0x22	; 34
      007793 1C                    2343 	.db #0x1c	; 28
      007794 00                    2344 	.db #0x00	; 0
      007795 14                    2345 	.db #0x14	; 20
      007796 08                    2346 	.db #0x08	; 8
      007797 3E                    2347 	.db #0x3e	; 62
      007798 08                    2348 	.db #0x08	; 8
      007799 14                    2349 	.db #0x14	; 20
      00779A 08                    2350 	.db #0x08	; 8
      00779B 08                    2351 	.db #0x08	; 8
      00779C 3E                    2352 	.db #0x3e	; 62
      00779D 08                    2353 	.db #0x08	; 8
      00779E 08                    2354 	.db #0x08	; 8
      00779F 00                    2355 	.db #0x00	; 0
      0077A0 50                    2356 	.db #0x50	; 80	'P'
      0077A1 30                    2357 	.db #0x30	; 48	'0'
      0077A2 00                    2358 	.db #0x00	; 0
      0077A3 00                    2359 	.db #0x00	; 0
      0077A4 08                    2360 	.db #0x08	; 8
      0077A5 08                    2361 	.db #0x08	; 8
      0077A6 08                    2362 	.db #0x08	; 8
      0077A7 08                    2363 	.db #0x08	; 8
      0077A8 08                    2364 	.db #0x08	; 8
      0077A9 00                    2365 	.db #0x00	; 0
      0077AA 60                    2366 	.db #0x60	; 96
      0077AB 60                    2367 	.db #0x60	; 96
      0077AC 00                    2368 	.db #0x00	; 0
      0077AD 00                    2369 	.db #0x00	; 0
      0077AE 20                    2370 	.db #0x20	; 32
      0077AF 10                    2371 	.db #0x10	; 16
      0077B0 08                    2372 	.db #0x08	; 8
      0077B1 04                    2373 	.db #0x04	; 4
      0077B2 02                    2374 	.db #0x02	; 2
      0077B3 3E                    2375 	.db #0x3e	; 62
      0077B4 51                    2376 	.db #0x51	; 81	'Q'
      0077B5 49                    2377 	.db #0x49	; 73	'I'
      0077B6 45                    2378 	.db #0x45	; 69	'E'
      0077B7 3E                    2379 	.db #0x3e	; 62
      0077B8 00                    2380 	.db #0x00	; 0
      0077B9 42                    2381 	.db #0x42	; 66	'B'
      0077BA 7F                    2382 	.db #0x7f	; 127
      0077BB 40                    2383 	.db #0x40	; 64
      0077BC 00                    2384 	.db #0x00	; 0
      0077BD 42                    2385 	.db #0x42	; 66	'B'
      0077BE 61                    2386 	.db #0x61	; 97	'a'
      0077BF 51                    2387 	.db #0x51	; 81	'Q'
      0077C0 49                    2388 	.db #0x49	; 73	'I'
      0077C1 46                    2389 	.db #0x46	; 70	'F'
      0077C2 21                    2390 	.db #0x21	; 33
      0077C3 41                    2391 	.db #0x41	; 65	'A'
      0077C4 45                    2392 	.db #0x45	; 69	'E'
      0077C5 4B                    2393 	.db #0x4b	; 75	'K'
      0077C6 31                    2394 	.db #0x31	; 49	'1'
      0077C7 18                    2395 	.db #0x18	; 24
      0077C8 14                    2396 	.db #0x14	; 20
      0077C9 12                    2397 	.db #0x12	; 18
      0077CA 7F                    2398 	.db #0x7f	; 127
      0077CB 10                    2399 	.db #0x10	; 16
      0077CC 27                    2400 	.db #0x27	; 39
      0077CD 45                    2401 	.db #0x45	; 69	'E'
      0077CE 45                    2402 	.db #0x45	; 69	'E'
      0077CF 45                    2403 	.db #0x45	; 69	'E'
      0077D0 39                    2404 	.db #0x39	; 57	'9'
      0077D1 3C                    2405 	.db #0x3c	; 60
      0077D2 4A                    2406 	.db #0x4a	; 74	'J'
      0077D3 49                    2407 	.db #0x49	; 73	'I'
      0077D4 49                    2408 	.db #0x49	; 73	'I'
      0077D5 30                    2409 	.db #0x30	; 48	'0'
      0077D6 01                    2410 	.db #0x01	; 1
      0077D7 71                    2411 	.db #0x71	; 113	'q'
      0077D8 09                    2412 	.db #0x09	; 9
      0077D9 05                    2413 	.db #0x05	; 5
      0077DA 03                    2414 	.db #0x03	; 3
      0077DB 36                    2415 	.db #0x36	; 54	'6'
      0077DC 49                    2416 	.db #0x49	; 73	'I'
      0077DD 49                    2417 	.db #0x49	; 73	'I'
      0077DE 49                    2418 	.db #0x49	; 73	'I'
      0077DF 36                    2419 	.db #0x36	; 54	'6'
      0077E0 06                    2420 	.db #0x06	; 6
      0077E1 49                    2421 	.db #0x49	; 73	'I'
      0077E2 49                    2422 	.db #0x49	; 73	'I'
      0077E3 29                    2423 	.db #0x29	; 41
      0077E4 1E                    2424 	.db #0x1e	; 30
      0077E5 00                    2425 	.db #0x00	; 0
      0077E6 36                    2426 	.db #0x36	; 54	'6'
      0077E7 36                    2427 	.db #0x36	; 54	'6'
      0077E8 00                    2428 	.db #0x00	; 0
      0077E9 00                    2429 	.db #0x00	; 0
      0077EA 00                    2430 	.db #0x00	; 0
      0077EB 56                    2431 	.db #0x56	; 86	'V'
      0077EC 36                    2432 	.db #0x36	; 54	'6'
      0077ED 00                    2433 	.db #0x00	; 0
      0077EE 00                    2434 	.db #0x00	; 0
      0077EF 08                    2435 	.db #0x08	; 8
      0077F0 14                    2436 	.db #0x14	; 20
      0077F1 22                    2437 	.db #0x22	; 34
      0077F2 41                    2438 	.db #0x41	; 65	'A'
      0077F3 00                    2439 	.db #0x00	; 0
      0077F4 14                    2440 	.db #0x14	; 20
      0077F5 14                    2441 	.db #0x14	; 20
      0077F6 14                    2442 	.db #0x14	; 20
      0077F7 14                    2443 	.db #0x14	; 20
      0077F8 14                    2444 	.db #0x14	; 20
      0077F9 00                    2445 	.db #0x00	; 0
      0077FA 41                    2446 	.db #0x41	; 65	'A'
      0077FB 22                    2447 	.db #0x22	; 34
      0077FC 14                    2448 	.db #0x14	; 20
      0077FD 08                    2449 	.db #0x08	; 8
      0077FE 02                    2450 	.db #0x02	; 2
      0077FF 01                    2451 	.db #0x01	; 1
      007800 51                    2452 	.db #0x51	; 81	'Q'
      007801 09                    2453 	.db #0x09	; 9
      007802 06                    2454 	.db #0x06	; 6
      007803 32                    2455 	.db #0x32	; 50	'2'
      007804 49                    2456 	.db #0x49	; 73	'I'
      007805 79                    2457 	.db #0x79	; 121	'y'
      007806 41                    2458 	.db #0x41	; 65	'A'
      007807 3E                    2459 	.db #0x3e	; 62
      007808 7E                    2460 	.db #0x7e	; 126
      007809 11                    2461 	.db #0x11	; 17
      00780A 11                    2462 	.db #0x11	; 17
      00780B 11                    2463 	.db #0x11	; 17
      00780C 7E                    2464 	.db #0x7e	; 126
      00780D 7F                    2465 	.db #0x7f	; 127
      00780E 49                    2466 	.db #0x49	; 73	'I'
      00780F 49                    2467 	.db #0x49	; 73	'I'
      007810 49                    2468 	.db #0x49	; 73	'I'
      007811 36                    2469 	.db #0x36	; 54	'6'
      007812 3E                    2470 	.db #0x3e	; 62
      007813 41                    2471 	.db #0x41	; 65	'A'
      007814 41                    2472 	.db #0x41	; 65	'A'
      007815 41                    2473 	.db #0x41	; 65	'A'
      007816 22                    2474 	.db #0x22	; 34
      007817 7F                    2475 	.db #0x7f	; 127
      007818 41                    2476 	.db #0x41	; 65	'A'
      007819 41                    2477 	.db #0x41	; 65	'A'
      00781A 22                    2478 	.db #0x22	; 34
      00781B 1C                    2479 	.db #0x1c	; 28
      00781C 7F                    2480 	.db #0x7f	; 127
      00781D 49                    2481 	.db #0x49	; 73	'I'
      00781E 49                    2482 	.db #0x49	; 73	'I'
      00781F 49                    2483 	.db #0x49	; 73	'I'
      007820 41                    2484 	.db #0x41	; 65	'A'
      007821 7F                    2485 	.db #0x7f	; 127
      007822 09                    2486 	.db #0x09	; 9
      007823 09                    2487 	.db #0x09	; 9
      007824 09                    2488 	.db #0x09	; 9
      007825 01                    2489 	.db #0x01	; 1
      007826 3E                    2490 	.db #0x3e	; 62
      007827 41                    2491 	.db #0x41	; 65	'A'
      007828 49                    2492 	.db #0x49	; 73	'I'
      007829 49                    2493 	.db #0x49	; 73	'I'
      00782A 7A                    2494 	.db #0x7a	; 122	'z'
      00782B 7F                    2495 	.db #0x7f	; 127
      00782C 08                    2496 	.db #0x08	; 8
      00782D 08                    2497 	.db #0x08	; 8
      00782E 08                    2498 	.db #0x08	; 8
      00782F 7F                    2499 	.db #0x7f	; 127
      007830 00                    2500 	.db #0x00	; 0
      007831 41                    2501 	.db #0x41	; 65	'A'
      007832 7F                    2502 	.db #0x7f	; 127
      007833 41                    2503 	.db #0x41	; 65	'A'
      007834 00                    2504 	.db #0x00	; 0
      007835 20                    2505 	.db #0x20	; 32
      007836 40                    2506 	.db #0x40	; 64
      007837 41                    2507 	.db #0x41	; 65	'A'
      007838 3F                    2508 	.db #0x3f	; 63
      007839 01                    2509 	.db #0x01	; 1
      00783A 7F                    2510 	.db #0x7f	; 127
      00783B 08                    2511 	.db #0x08	; 8
      00783C 14                    2512 	.db #0x14	; 20
      00783D 22                    2513 	.db #0x22	; 34
      00783E 41                    2514 	.db #0x41	; 65	'A'
      00783F 7F                    2515 	.db #0x7f	; 127
      007840 40                    2516 	.db #0x40	; 64
      007841 40                    2517 	.db #0x40	; 64
      007842 40                    2518 	.db #0x40	; 64
      007843 40                    2519 	.db #0x40	; 64
      007844 7F                    2520 	.db #0x7f	; 127
      007845 02                    2521 	.db #0x02	; 2
      007846 0C                    2522 	.db #0x0c	; 12
      007847 02                    2523 	.db #0x02	; 2
      007848 7F                    2524 	.db #0x7f	; 127
      007849 7F                    2525 	.db #0x7f	; 127
      00784A 04                    2526 	.db #0x04	; 4
      00784B 08                    2527 	.db #0x08	; 8
      00784C 10                    2528 	.db #0x10	; 16
      00784D 7F                    2529 	.db #0x7f	; 127
      00784E 3E                    2530 	.db #0x3e	; 62
      00784F 41                    2531 	.db #0x41	; 65	'A'
      007850 41                    2532 	.db #0x41	; 65	'A'
      007851 41                    2533 	.db #0x41	; 65	'A'
      007852 3E                    2534 	.db #0x3e	; 62
      007853 7F                    2535 	.db #0x7f	; 127
      007854 09                    2536 	.db #0x09	; 9
      007855 09                    2537 	.db #0x09	; 9
      007856 09                    2538 	.db #0x09	; 9
      007857 06                    2539 	.db #0x06	; 6
      007858 3E                    2540 	.db #0x3e	; 62
      007859 41                    2541 	.db #0x41	; 65	'A'
      00785A 51                    2542 	.db #0x51	; 81	'Q'
      00785B 21                    2543 	.db #0x21	; 33
      00785C 5E                    2544 	.db #0x5e	; 94
      00785D 7F                    2545 	.db #0x7f	; 127
      00785E 09                    2546 	.db #0x09	; 9
      00785F 19                    2547 	.db #0x19	; 25
      007860 29                    2548 	.db #0x29	; 41
      007861 46                    2549 	.db #0x46	; 70	'F'
      007862 46                    2550 	.db #0x46	; 70	'F'
      007863 49                    2551 	.db #0x49	; 73	'I'
      007864 49                    2552 	.db #0x49	; 73	'I'
      007865 49                    2553 	.db #0x49	; 73	'I'
      007866 31                    2554 	.db #0x31	; 49	'1'
      007867 01                    2555 	.db #0x01	; 1
      007868 01                    2556 	.db #0x01	; 1
      007869 7F                    2557 	.db #0x7f	; 127
      00786A 01                    2558 	.db #0x01	; 1
      00786B 01                    2559 	.db #0x01	; 1
      00786C 3F                    2560 	.db #0x3f	; 63
      00786D 40                    2561 	.db #0x40	; 64
      00786E 40                    2562 	.db #0x40	; 64
      00786F 40                    2563 	.db #0x40	; 64
      007870 3F                    2564 	.db #0x3f	; 63
      007871 1F                    2565 	.db #0x1f	; 31
      007872 20                    2566 	.db #0x20	; 32
      007873 40                    2567 	.db #0x40	; 64
      007874 20                    2568 	.db #0x20	; 32
      007875 1F                    2569 	.db #0x1f	; 31
      007876 3F                    2570 	.db #0x3f	; 63
      007877 40                    2571 	.db #0x40	; 64
      007878 38                    2572 	.db #0x38	; 56	'8'
      007879 40                    2573 	.db #0x40	; 64
      00787A 3F                    2574 	.db #0x3f	; 63
      00787B 63                    2575 	.db #0x63	; 99	'c'
      00787C 14                    2576 	.db #0x14	; 20
      00787D 08                    2577 	.db #0x08	; 8
      00787E 14                    2578 	.db #0x14	; 20
      00787F 63                    2579 	.db #0x63	; 99	'c'
      007880 07                    2580 	.db #0x07	; 7
      007881 08                    2581 	.db #0x08	; 8
      007882 70                    2582 	.db #0x70	; 112	'p'
      007883 08                    2583 	.db #0x08	; 8
      007884 07                    2584 	.db #0x07	; 7
      007885 61                    2585 	.db #0x61	; 97	'a'
      007886 51                    2586 	.db #0x51	; 81	'Q'
      007887 49                    2587 	.db #0x49	; 73	'I'
      007888 45                    2588 	.db #0x45	; 69	'E'
      007889 43                    2589 	.db #0x43	; 67	'C'
      00788A 00                    2590 	.db #0x00	; 0
      00788B 7F                    2591 	.db #0x7f	; 127
      00788C 41                    2592 	.db #0x41	; 65	'A'
      00788D 41                    2593 	.db #0x41	; 65	'A'
      00788E 00                    2594 	.db #0x00	; 0
      00788F 02                    2595 	.db #0x02	; 2
      007890 04                    2596 	.db #0x04	; 4
      007891 08                    2597 	.db #0x08	; 8
      007892 10                    2598 	.db #0x10	; 16
      007893 20                    2599 	.db #0x20	; 32
      007894 00                    2600 	.db #0x00	; 0
      007895 41                    2601 	.db #0x41	; 65	'A'
      007896 41                    2602 	.db #0x41	; 65	'A'
      007897 7F                    2603 	.db #0x7f	; 127
      007898 00                    2604 	.db #0x00	; 0
      007899 04                    2605 	.db #0x04	; 4
      00789A 02                    2606 	.db #0x02	; 2
      00789B 01                    2607 	.db #0x01	; 1
      00789C 02                    2608 	.db #0x02	; 2
      00789D 04                    2609 	.db #0x04	; 4
      00789E 40                    2610 	.db #0x40	; 64
      00789F 40                    2611 	.db #0x40	; 64
      0078A0 40                    2612 	.db #0x40	; 64
      0078A1 40                    2613 	.db #0x40	; 64
      0078A2 40                    2614 	.db #0x40	; 64
      0078A3 00                    2615 	.db #0x00	; 0
      0078A4 01                    2616 	.db #0x01	; 1
      0078A5 02                    2617 	.db #0x02	; 2
      0078A6 04                    2618 	.db #0x04	; 4
      0078A7 00                    2619 	.db #0x00	; 0
      0078A8 20                    2620 	.db #0x20	; 32
      0078A9 54                    2621 	.db #0x54	; 84	'T'
      0078AA 54                    2622 	.db #0x54	; 84	'T'
      0078AB 54                    2623 	.db #0x54	; 84	'T'
      0078AC 78                    2624 	.db #0x78	; 120	'x'
      0078AD 7F                    2625 	.db #0x7f	; 127
      0078AE 48                    2626 	.db #0x48	; 72	'H'
      0078AF 44                    2627 	.db #0x44	; 68	'D'
      0078B0 44                    2628 	.db #0x44	; 68	'D'
      0078B1 38                    2629 	.db #0x38	; 56	'8'
      0078B2 38                    2630 	.db #0x38	; 56	'8'
      0078B3 44                    2631 	.db #0x44	; 68	'D'
      0078B4 44                    2632 	.db #0x44	; 68	'D'
      0078B5 44                    2633 	.db #0x44	; 68	'D'
      0078B6 20                    2634 	.db #0x20	; 32
      0078B7 38                    2635 	.db #0x38	; 56	'8'
      0078B8 44                    2636 	.db #0x44	; 68	'D'
      0078B9 44                    2637 	.db #0x44	; 68	'D'
      0078BA 48                    2638 	.db #0x48	; 72	'H'
      0078BB 7F                    2639 	.db #0x7f	; 127
      0078BC 38                    2640 	.db #0x38	; 56	'8'
      0078BD 54                    2641 	.db #0x54	; 84	'T'
      0078BE 54                    2642 	.db #0x54	; 84	'T'
      0078BF 54                    2643 	.db #0x54	; 84	'T'
      0078C0 18                    2644 	.db #0x18	; 24
      0078C1 08                    2645 	.db #0x08	; 8
      0078C2 7E                    2646 	.db #0x7e	; 126
      0078C3 09                    2647 	.db #0x09	; 9
      0078C4 01                    2648 	.db #0x01	; 1
      0078C5 02                    2649 	.db #0x02	; 2
      0078C6 0C                    2650 	.db #0x0c	; 12
      0078C7 52                    2651 	.db #0x52	; 82	'R'
      0078C8 52                    2652 	.db #0x52	; 82	'R'
      0078C9 52                    2653 	.db #0x52	; 82	'R'
      0078CA 3E                    2654 	.db #0x3e	; 62
      0078CB 7F                    2655 	.db #0x7f	; 127
      0078CC 08                    2656 	.db #0x08	; 8
      0078CD 04                    2657 	.db #0x04	; 4
      0078CE 04                    2658 	.db #0x04	; 4
      0078CF 78                    2659 	.db #0x78	; 120	'x'
      0078D0 00                    2660 	.db #0x00	; 0
      0078D1 44                    2661 	.db #0x44	; 68	'D'
      0078D2 7D                    2662 	.db #0x7d	; 125
      0078D3 40                    2663 	.db #0x40	; 64
      0078D4 00                    2664 	.db #0x00	; 0
      0078D5 20                    2665 	.db #0x20	; 32
      0078D6 40                    2666 	.db #0x40	; 64
      0078D7 44                    2667 	.db #0x44	; 68	'D'
      0078D8 3D                    2668 	.db #0x3d	; 61
      0078D9 00                    2669 	.db #0x00	; 0
      0078DA 7F                    2670 	.db #0x7f	; 127
      0078DB 10                    2671 	.db #0x10	; 16
      0078DC 28                    2672 	.db #0x28	; 40
      0078DD 44                    2673 	.db #0x44	; 68	'D'
      0078DE 00                    2674 	.db #0x00	; 0
      0078DF 00                    2675 	.db #0x00	; 0
      0078E0 41                    2676 	.db #0x41	; 65	'A'
      0078E1 7F                    2677 	.db #0x7f	; 127
      0078E2 40                    2678 	.db #0x40	; 64
      0078E3 00                    2679 	.db #0x00	; 0
      0078E4 7C                    2680 	.db #0x7c	; 124
      0078E5 04                    2681 	.db #0x04	; 4
      0078E6 18                    2682 	.db #0x18	; 24
      0078E7 04                    2683 	.db #0x04	; 4
      0078E8 78                    2684 	.db #0x78	; 120	'x'
      0078E9 7C                    2685 	.db #0x7c	; 124
      0078EA 08                    2686 	.db #0x08	; 8
      0078EB 04                    2687 	.db #0x04	; 4
      0078EC 04                    2688 	.db #0x04	; 4
      0078ED 78                    2689 	.db #0x78	; 120	'x'
      0078EE 38                    2690 	.db #0x38	; 56	'8'
      0078EF 44                    2691 	.db #0x44	; 68	'D'
      0078F0 44                    2692 	.db #0x44	; 68	'D'
      0078F1 44                    2693 	.db #0x44	; 68	'D'
      0078F2 38                    2694 	.db #0x38	; 56	'8'
      0078F3 7C                    2695 	.db #0x7c	; 124
      0078F4 14                    2696 	.db #0x14	; 20
      0078F5 14                    2697 	.db #0x14	; 20
      0078F6 14                    2698 	.db #0x14	; 20
      0078F7 08                    2699 	.db #0x08	; 8
      0078F8 08                    2700 	.db #0x08	; 8
      0078F9 14                    2701 	.db #0x14	; 20
      0078FA 14                    2702 	.db #0x14	; 20
      0078FB 14                    2703 	.db #0x14	; 20
      0078FC 7C                    2704 	.db #0x7c	; 124
      0078FD 7C                    2705 	.db #0x7c	; 124
      0078FE 08                    2706 	.db #0x08	; 8
      0078FF 04                    2707 	.db #0x04	; 4
      007900 04                    2708 	.db #0x04	; 4
      007901 08                    2709 	.db #0x08	; 8
      007902 48                    2710 	.db #0x48	; 72	'H'
      007903 54                    2711 	.db #0x54	; 84	'T'
      007904 54                    2712 	.db #0x54	; 84	'T'
      007905 54                    2713 	.db #0x54	; 84	'T'
      007906 20                    2714 	.db #0x20	; 32
      007907 04                    2715 	.db #0x04	; 4
      007908 3F                    2716 	.db #0x3f	; 63
      007909 44                    2717 	.db #0x44	; 68	'D'
      00790A 40                    2718 	.db #0x40	; 64
      00790B 20                    2719 	.db #0x20	; 32
      00790C 3C                    2720 	.db #0x3c	; 60
      00790D 40                    2721 	.db #0x40	; 64
      00790E 40                    2722 	.db #0x40	; 64
      00790F 20                    2723 	.db #0x20	; 32
      007910 7C                    2724 	.db #0x7c	; 124
      007911 1C                    2725 	.db #0x1c	; 28
      007912 20                    2726 	.db #0x20	; 32
      007913 40                    2727 	.db #0x40	; 64
      007914 20                    2728 	.db #0x20	; 32
      007915 1C                    2729 	.db #0x1c	; 28
      007916 3C                    2730 	.db #0x3c	; 60
      007917 40                    2731 	.db #0x40	; 64
      007918 30                    2732 	.db #0x30	; 48	'0'
      007919 40                    2733 	.db #0x40	; 64
      00791A 3C                    2734 	.db #0x3c	; 60
      00791B 44                    2735 	.db #0x44	; 68	'D'
      00791C 28                    2736 	.db #0x28	; 40
      00791D 10                    2737 	.db #0x10	; 16
      00791E 28                    2738 	.db #0x28	; 40
      00791F 44                    2739 	.db #0x44	; 68	'D'
      007920 0C                    2740 	.db #0x0c	; 12
      007921 50                    2741 	.db #0x50	; 80	'P'
      007922 50                    2742 	.db #0x50	; 80	'P'
      007923 50                    2743 	.db #0x50	; 80	'P'
      007924 3C                    2744 	.db #0x3c	; 60
      007925 44                    2745 	.db #0x44	; 68	'D'
      007926 64                    2746 	.db #0x64	; 100	'd'
      007927 54                    2747 	.db #0x54	; 84	'T'
      007928 4C                    2748 	.db #0x4c	; 76	'L'
      007929 44                    2749 	.db #0x44	; 68	'D'
      00792A 00                    2750 	.db #0x00	; 0
      00792B 08                    2751 	.db #0x08	; 8
      00792C 36                    2752 	.db #0x36	; 54	'6'
      00792D 41                    2753 	.db #0x41	; 65	'A'
      00792E 00                    2754 	.db #0x00	; 0
      00792F 00                    2755 	.db #0x00	; 0
      007930 00                    2756 	.db #0x00	; 0
      007931 7F                    2757 	.db #0x7f	; 127
      007932 00                    2758 	.db #0x00	; 0
      007933 00                    2759 	.db #0x00	; 0
      007934 00                    2760 	.db #0x00	; 0
      007935 41                    2761 	.db #0x41	; 65	'A'
      007936 36                    2762 	.db #0x36	; 54	'6'
      007937 08                    2763 	.db #0x08	; 8
      007938 00                    2764 	.db #0x00	; 0
      007939 10                    2765 	.db #0x10	; 16
      00793A 08                    2766 	.db #0x08	; 8
      00793B 08                    2767 	.db #0x08	; 8
      00793C 10                    2768 	.db #0x10	; 16
      00793D 08                    2769 	.db #0x08	; 8
      00793E 00                    2770 	.db #0x00	; 0
      00793F 00                    2771 	.db #0x00	; 0
      007940 00                    2772 	.db #0x00	; 0
      007941 00                    2773 	.db #0x00	; 0
      007942 00                    2774 	.db #0x00	; 0
                                   2775 	.area CONST   (CODE)
      007943                       2776 ___str_0:
      007943 20 20 20 20 20 20 42  2777 	.ascii "      Bipolar"
             69 70 6F 6C 61 72
      007950 00                    2778 	.db 0x00
                                   2779 	.area CSEG    (CODE)
                                   2780 	.area CONST   (CODE)
      007951                       2781 ___str_1:
      007951 20 20 20 53 74 65 70  2782 	.ascii "   Stepper Motor"
             70 65 72 20 4D 6F 74
             6F 72
      007961 00                    2783 	.db 0x00
                                   2784 	.area CSEG    (CODE)
                                   2785 	.area CONST   (CODE)
      007962                       2786 ___str_2:
      007962 20 20 20 20 20 43 6F  2787 	.ascii "     Controller"
             6E 74 72 6F 6C 6C 65
             72
      007971 00                    2788 	.db 0x00
                                   2789 	.area CSEG    (CODE)
                                   2790 	.area CONST   (CODE)
      007972                       2791 ___str_3:
      007972 20 20 20 20 20 20 20  2792 	.ascii "        V1.0"
             20 56 31 2E 30
      00797E 00                    2793 	.db 0x00
                                   2794 	.area CSEG    (CODE)
                                   2795 	.area CONST   (CODE)
      00797F                       2796 ___str_4:
      00797F 20 20 20 20 20 20 20  2797 	.ascii "       Press.."
             50 72 65 73 73 2E 2E
      00798D 00                    2798 	.db 0x00
                                   2799 	.area CSEG    (CODE)
                                   2800 	.area CONST   (CODE)
      00798E                       2801 ___str_5:
      00798E 20 20 20 20 20 20 4D  2802 	.ascii "      Main Menu"
             61 69 6E 20 4D 65 6E
             75
      00799D 00                    2803 	.db 0x00
                                   2804 	.area CSEG    (CODE)
                                   2805 	.area CONST   (CODE)
      00799E                       2806 ___str_6:
      00799E 3E 20 53 74 65 70 20  2807 	.ascii "> Step Control"
             43 6F 6E 74 72 6F 6C
      0079AC 00                    2808 	.db 0x00
                                   2809 	.area CSEG    (CODE)
                                   2810 	.area CONST   (CODE)
      0079AD                       2811 ___str_7:
      0079AD 20 20 44 69 73 74 61  2812 	.ascii "  Distance Control"
             6E 63 65 20 43 6F 6E
             74 72 6F 6C
      0079BF 00                    2813 	.db 0x00
                                   2814 	.area CSEG    (CODE)
                                   2815 	.area CONST   (CODE)
      0079C0                       2816 ___str_8:
      0079C0 20 20 45 6E 63 6F 64  2817 	.ascii "  Encoder Control"
             65 72 20 43 6F 6E 74
             72 6F 6C
      0079D1 00                    2818 	.db 0x00
                                   2819 	.area CSEG    (CODE)
                                   2820 	.area CONST   (CODE)
      0079D2                       2821 ___str_9:
      0079D2 20 20 53 74 65 70 20  2822 	.ascii "  Step Control"
             43 6F 6E 74 72 6F 6C
      0079E0 00                    2823 	.db 0x00
                                   2824 	.area CSEG    (CODE)
                                   2825 	.area CONST   (CODE)
      0079E1                       2826 ___str_10:
      0079E1 3E 20 44 69 73 74 61  2827 	.ascii "> Distance Control"
             6E 63 65 20 43 6F 6E
             74 72 6F 6C
      0079F3 00                    2828 	.db 0x00
                                   2829 	.area CSEG    (CODE)
                                   2830 	.area CONST   (CODE)
      0079F4                       2831 ___str_11:
      0079F4 3E 20 45 6E 63 6F 64  2832 	.ascii "> Encoder Control"
             65 72 20 43 6F 6E 74
             72 6F 6C
      007A05 00                    2833 	.db 0x00
                                   2834 	.area CSEG    (CODE)
                                   2835 	.area CONST   (CODE)
      007A06                       2836 ___str_12:
      007A06 20 20 20 20 20 53 74  2837 	.ascii "     Step Control"
             65 70 20 43 6F 6E 74
             72 6F 6C
      007A17 00                    2838 	.db 0x00
                                   2839 	.area CSEG    (CODE)
                                   2840 	.area CONST   (CODE)
      007A18                       2841 ___str_13:
      007A18 44 69 72 3A 20 43 43  2842 	.ascii "Dir: CCW         FREE"
             57 20 20 20 20 20 20
             20 20 20 46 52 45 45
      007A2D 00                    2843 	.db 0x00
                                   2844 	.area CSEG    (CODE)
                                   2845 	.area CONST   (CODE)
      007A2E                       2846 ___str_14:
      007A2E 3E 20 46 72 65 71 75  2847 	.ascii "> Frequency"
             65 6E 63 79
      007A39 00                    2848 	.db 0x00
                                   2849 	.area CSEG    (CODE)
                                   2850 	.area CONST   (CODE)
      007A3A                       2851 ___str_15:
      007A3A 20 20 4D 69 63 72 6F  2852 	.ascii "  Microstepping"
             73 74 65 70 70 69 6E
             67
      007A49 00                    2853 	.db 0x00
                                   2854 	.area CSEG    (CODE)
                                   2855 	.area CONST   (CODE)
      007A4A                       2856 ___str_16:
      007A4A 20 20 53 74 65 70 73  2857 	.ascii "  Steps"
      007A51 00                    2858 	.db 0x00
                                   2859 	.area CSEG    (CODE)
                                   2860 	.area CONST   (CODE)
      007A52                       2861 ___str_17:
      007A52 20 20 47 6F 20 42 61  2862 	.ascii "  Go Back"
             63 6B
      007A5B 00                    2863 	.db 0x00
                                   2864 	.area CSEG    (CODE)
                                   2865 	.area CONST   (CODE)
      007A5C                       2866 ___str_18:
      007A5C 20 20 20 20 20 20 20  2867 	.ascii "         Run         "
             20 20 52 75 6E 20 20
             20 20 20 20 20 20 20
      007A71 00                    2868 	.db 0x00
                                   2869 	.area CSEG    (CODE)
                                   2870 	.area CONST   (CODE)
      007A72                       2871 ___str_19:
      007A72 20 20 46 72 65 71 75  2872 	.ascii "  Frequency"
             65 6E 63 79
      007A7D 00                    2873 	.db 0x00
                                   2874 	.area CSEG    (CODE)
                                   2875 	.area CONST   (CODE)
      007A7E                       2876 ___str_20:
      007A7E 3E 20 4D 69 63 72 6F  2877 	.ascii "> Microstepping"
             73 74 65 70 70 69 6E
             67
      007A8D 00                    2878 	.db 0x00
                                   2879 	.area CSEG    (CODE)
                                   2880 	.area CONST   (CODE)
      007A8E                       2881 ___str_21:
      007A8E 3E 20 53 74 65 70 73  2882 	.ascii "> Steps"
      007A95 00                    2883 	.db 0x00
                                   2884 	.area CSEG    (CODE)
                                   2885 	.area CONST   (CODE)
      007A96                       2886 ___str_22:
      007A96 3E 20 47 6F 20 42 61  2887 	.ascii "> Go Back"
             63 6B
      007A9F 00                    2888 	.db 0x00
                                   2889 	.area CSEG    (CODE)
                                   2890 	.area CONST   (CODE)
      007AA0                       2891 ___str_23:
      007AA0 3E 20 20 20 20 20 20  2892 	.ascii ">        Run         "
             20 20 52 75 6E 20 20
             20 20 20 20 20 20 20
      007AB5 00                    2893 	.db 0x00
                                   2894 	.area CSEG    (CODE)
                                   2895 	.area CONST   (CODE)
      007AB6                       2896 ___str_24:
      007AB6 68 61 70 6E 64        2897 	.ascii "hapnd"
      007ABB 0A                    2898 	.db 0x0a
      007ABC 00                    2899 	.db 0x00
                                   2900 	.area CSEG    (CODE)
                                   2901 	.area CONST   (CODE)
      007ABD                       2902 ___str_25:
      007ABD 2A 2A 2A 2A 2A 2A 2A  2903 	.ascii "*********Run*********"
             2A 2A 52 75 6E 2A 2A
             2A 2A 2A 2A 2A 2A 2A
      007AD2 00                    2904 	.db 0x00
                                   2905 	.area CSEG    (CODE)
                                   2906 	.area CONST   (CODE)
      007AD3                       2907 ___str_26:
      007AD3 20 20 20 4E 6F 74 20  2908 	.ascii "   Not Implemented"
             49 6D 70 6C 65 6D 65
             6E 74 65 64
      007AE5 00                    2909 	.db 0x00
                                   2910 	.area CSEG    (CODE)
                                   2911 	.area CONST   (CODE)
      007AE6                       2912 ___str_27:
      007AE6 43 57 20              2913 	.ascii "CW "
      007AE9 00                    2914 	.db 0x00
                                   2915 	.area CSEG    (CODE)
                                   2916 	.area CONST   (CODE)
      007AEA                       2917 ___str_28:
      007AEA 43 43 57              2918 	.ascii "CCW"
      007AED 00                    2919 	.db 0x00
                                   2920 	.area CSEG    (CODE)
                                   2921 	.area CONST   (CODE)
      007AEE                       2922 ___str_29:
      007AEE 46 52 45 45           2923 	.ascii "FREE"
      007AF2 00                    2924 	.db 0x00
                                   2925 	.area CSEG    (CODE)
                                   2926 	.area CONST   (CODE)
      007AF3                       2927 ___str_30:
      007AF3 48 4F 4C 44           2928 	.ascii "HOLD"
      007AF7 00                    2929 	.db 0x00
                                   2930 	.area CSEG    (CODE)
                                   2931 	.area CONST   (CODE)
      007AF8                       2932 ___str_31:
      007AF8 53 65 74 74 69 6E 67  2933 	.ascii "Setting Steps:"
             20 53 74 65 70 73 3A
      007B06 00                    2934 	.db 0x00
                                   2935 	.area CSEG    (CODE)
                                   2936 	.area CONST   (CODE)
      007B07                       2937 ___str_32:
      007B07 20 20 20 20 20 20 25  2938 	.ascii "      %d%d%d.%d%d"
             64 25 64 25 64 2E 25
             64 25 64
      007B18 00                    2939 	.db 0x00
                                   2940 	.area CSEG    (CODE)
                                   2941 	.area CONST   (CODE)
      007B19                       2942 ___str_33:
      007B19 20 20 20 20 20 20 5E  2943 	.ascii "      ^"
      007B20 00                    2944 	.db 0x00
                                   2945 	.area CSEG    (CODE)
                                   2946 	.area CONST   (CODE)
      007B21                       2947 ___str_34:
      007B21 20 20 20 20 20 20 20  2948 	.ascii "       ^"
             5E
      007B29 00                    2949 	.db 0x00
                                   2950 	.area CSEG    (CODE)
                                   2951 	.area CONST   (CODE)
      007B2A                       2952 ___str_35:
      007B2A 20 20 20 20 20 20 20  2953 	.ascii "        ^"
             20 5E
      007B33 00                    2954 	.db 0x00
                                   2955 	.area CSEG    (CODE)
                                   2956 	.area CONST   (CODE)
      007B34                       2957 ___str_36:
      007B34 20 20 20 20 20 20 20  2958 	.ascii "          ^"
             20 20 20 5E
      007B3F 00                    2959 	.db 0x00
                                   2960 	.area CSEG    (CODE)
                                   2961 	.area CONST   (CODE)
      007B40                       2962 ___str_37:
      007B40 20 20 20 20 20 20 20  2963 	.ascii "           ^"
             20 20 20 20 5E
      007B4C 00                    2964 	.db 0x00
                                   2965 	.area CSEG    (CODE)
                                   2966 	.area CONST   (CODE)
      007B4D                       2967 ___str_38:
      007B4D 53 65 74 74 69 6E 67  2968 	.ascii "Setting Microstepping:"
             20 4D 69 63 72 6F 73
             74 65 70 70 69 6E 67
             3A
      007B63 00                    2969 	.db 0x00
                                   2970 	.area CSEG    (CODE)
                                   2971 	.area CONST   (CODE)
      007B64                       2972 ___str_39:
      007B64 20 20 20 20 20 20 25  2973 	.ascii "      %d"
             64
      007B6C 00                    2974 	.db 0x00
                                   2975 	.area CSEG    (CODE)
                                   2976 	.area CONST   (CODE)
      007B6D                       2977 ___str_40:
      007B6D 53 65 74 74 69 6E 67  2978 	.ascii "Setting frequency:"
             20 66 72 65 71 75 65
             6E 63 79 3A
      007B7F 00                    2979 	.db 0x00
                                   2980 	.area CSEG    (CODE)
                                   2981 	.area XINIT   (CODE)
      007C2E                       2982 __xinit__menu_page_selected_page:
      007C2E 03                    2983 	.db #0x03	; 3
      007C2F                       2984 __xinit__step_control_page_options_last:
      007C2F 05                    2985 	.db #0x05	; 5
                                   2986 	.area CABS    (ABS,CODE)
