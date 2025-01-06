                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module advpwm_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _pwmOnChannelInterrupt
                                     12 	.globl _pwmOnCounterInterrupt
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
                                    159 	.globl _pwmInitialiseCapture_PARM_6
                                    160 	.globl _pwmInitialiseCapture_PARM_5
                                    161 	.globl _pwmInitialiseCapture_PARM_4
                                    162 	.globl _pwmInitialiseCapture_PARM_3
                                    163 	.globl _pwmInitialiseCapture_PARM_2
                                    164 	.globl _pwmInitialiseQuadratureEncoder_PARM_4
                                    165 	.globl _pwmInitialiseQuadratureEncoder_PARM_3
                                    166 	.globl _pwmInitialiseQuadratureEncoder_PARM_2
                                    167 	.globl _pwmSetDutyCycle_PARM_2
                                    168 	.globl _pwmInitialisePWM_PARM_5
                                    169 	.globl _pwmInitialisePWM_PARM_4
                                    170 	.globl _pwmInitialisePWM_PARM_3
                                    171 	.globl _pwmInitialisePWM_PARM_2
                                    172 	.globl _pwmConfigureCounter_PARM_11
                                    173 	.globl _pwmConfigureCounter_PARM_10
                                    174 	.globl _pwmConfigureCounter_PARM_9
                                    175 	.globl _pwmConfigureCounter_PARM_8
                                    176 	.globl _pwmConfigureCounter_PARM_7
                                    177 	.globl _pwmConfigureCounter_PARM_6
                                    178 	.globl _pwmConfigureCounter_PARM_5
                                    179 	.globl _pwmConfigureCounter_PARM_4
                                    180 	.globl _pwmConfigureCounter_PARM_3
                                    181 	.globl _pwmConfigureCounter_PARM_2
                                    182 	.globl _pwmConfigureOutput_PARM_7
                                    183 	.globl _pwmConfigureOutput_PARM_6
                                    184 	.globl _pwmConfigureOutput_PARM_5
                                    185 	.globl _pwmConfigureOutput_PARM_4
                                    186 	.globl _pwmConfigureOutput_PARM_3
                                    187 	.globl _pwmConfigureOutput_PARM_2
                                    188 	.globl _DMA_UR4R_TXAL
                                    189 	.globl _DMA_UR4R_TXAH
                                    190 	.globl _DMA_UR4R_DONE
                                    191 	.globl _DMA_UR4R_AMT
                                    192 	.globl _DMA_UR4R_STA
                                    193 	.globl _DMA_UR4R_CR
                                    194 	.globl _DMA_UR4R_CFG
                                    195 	.globl _DMA_UR4T_TXAL
                                    196 	.globl _DMA_UR4T_TXAH
                                    197 	.globl _DMA_UR4T_DONE
                                    198 	.globl _DMA_UR4T_AMT
                                    199 	.globl _DMA_UR4T_STA
                                    200 	.globl _DMA_UR4T_CR
                                    201 	.globl _DMA_UR4T_CFG
                                    202 	.globl _DMA_UR3R_TXAL
                                    203 	.globl _DMA_UR3R_TXAH
                                    204 	.globl _DMA_UR3R_DONE
                                    205 	.globl _DMA_UR3R_AMT
                                    206 	.globl _DMA_UR3R_STA
                                    207 	.globl _DMA_UR3R_CR
                                    208 	.globl _DMA_UR3R_CFG
                                    209 	.globl _DMA_UR3T_TXAL
                                    210 	.globl _DMA_UR3T_TXAH
                                    211 	.globl _DMA_UR3T_DONE
                                    212 	.globl _DMA_UR3T_AMT
                                    213 	.globl _DMA_UR3T_STA
                                    214 	.globl _DMA_UR3T_CR
                                    215 	.globl _DMA_UR3T_CFG
                                    216 	.globl _DMA_UR2R_TXAL
                                    217 	.globl _DMA_UR2R_TXAH
                                    218 	.globl _DMA_UR2R_DONE
                                    219 	.globl _DMA_UR2R_AMT
                                    220 	.globl _DMA_UR2R_STA
                                    221 	.globl _DMA_UR2R_CR
                                    222 	.globl _DMA_UR2R_CFG
                                    223 	.globl _DMA_UR2T_TXAL
                                    224 	.globl _DMA_UR2T_TXAH
                                    225 	.globl _DMA_UR2T_DONE
                                    226 	.globl _DMA_UR2T_AMT
                                    227 	.globl _DMA_UR2T_STA
                                    228 	.globl _DMA_UR2T_CR
                                    229 	.globl _DMA_UR2T_CFG
                                    230 	.globl _DMA_UR1R_TXAL
                                    231 	.globl _DMA_UR1R_TXAH
                                    232 	.globl _DMA_UR1R_DONE
                                    233 	.globl _DMA_UR1R_AMT
                                    234 	.globl _DMA_UR1R_STA
                                    235 	.globl _DMA_UR1R_CR
                                    236 	.globl _DMA_UR1R_CFG
                                    237 	.globl _DMA_UR1T_TXAL
                                    238 	.globl _DMA_UR1T_TXAH
                                    239 	.globl _DMA_UR1T_DONE
                                    240 	.globl _DMA_URTX_AMT
                                    241 	.globl _DMA_UR1T_STA
                                    242 	.globl _DMA_UR1T_CR
                                    243 	.globl _DMA_UR1T_CFG
                                    244 	.globl _TM4PS
                                    245 	.globl _TM3PS
                                    246 	.globl _TM2PS
                                    247 	.globl _IRC48MCR
                                    248 	.globl _IRCDB
                                    249 	.globl _MCLKOCR
                                    250 	.globl _CKSEL
                                    251 	.globl _IRC32KCR
                                    252 	.globl _XOSCCR
                                    253 	.globl _HIRCCR
                                    254 	.globl _CLKDIV
                                    255 	.globl _DMA_SPI_CFG2
                                    256 	.globl _DMA_SPI_RXAL
                                    257 	.globl _DMA_SPI_RXAH
                                    258 	.globl _DMA_SPI_TXAL
                                    259 	.globl _DMA_SPI_TXAH
                                    260 	.globl _DMA_SPI_DONE
                                    261 	.globl _DMA_SPI_AMT
                                    262 	.globl _DMA_SPI_STA
                                    263 	.globl _DMA_SPI_CR
                                    264 	.globl _DMA_SPI_CFG
                                    265 	.globl _SSEC
                                    266 	.globl _SEC
                                    267 	.globl _MIN
                                    268 	.globl _HOUR
                                    269 	.globl _DAY
                                    270 	.globl _MONTH
                                    271 	.globl _YEAR
                                    272 	.globl _INISSEC
                                    273 	.globl _INISEC
                                    274 	.globl _INIMIN
                                    275 	.globl _INIHOUR
                                    276 	.globl _INIDAY
                                    277 	.globl _INIMONTH
                                    278 	.globl _INIYEAR
                                    279 	.globl _ALASSEC
                                    280 	.globl _ALASEC
                                    281 	.globl _ALAMIN
                                    282 	.globl _ALAHOUR
                                    283 	.globl _RTCIF
                                    284 	.globl _RTCIEN
                                    285 	.globl _RTCCFG
                                    286 	.globl _RTCCR
                                    287 	.globl _PWMB_OISR
                                    288 	.globl _PWMB_DTR
                                    289 	.globl _PWMB_BKR
                                    290 	.globl _PWMB_CCR4L
                                    291 	.globl _PWMB_CCR4H
                                    292 	.globl _PWMB_CCR3L
                                    293 	.globl _PWMB_CCR3H
                                    294 	.globl _PWMB_CCR2L
                                    295 	.globl _PWMB_CCR2H
                                    296 	.globl _PWMB_CCR1L
                                    297 	.globl _PWMB_CCR1H
                                    298 	.globl _PWMB_RCR
                                    299 	.globl _PWMB_ARRL
                                    300 	.globl _PWMB_ARRH
                                    301 	.globl _PWMB_PSCRL
                                    302 	.globl _PWMB_PSCRH
                                    303 	.globl _PWMB_CNTRL
                                    304 	.globl _PWMB_CNTRH
                                    305 	.globl _PWMB_CCER2
                                    306 	.globl _PWMB_CCER1
                                    307 	.globl _PWMB_CCMR4
                                    308 	.globl _PWMB_CCMR3
                                    309 	.globl _PWMB_CCMR2
                                    310 	.globl _PWMB_CCMR1
                                    311 	.globl _PWMB_EGR
                                    312 	.globl _PWMB_SR2
                                    313 	.globl _PWMB_SR1
                                    314 	.globl _PWMB_IER
                                    315 	.globl _PWMB_ETR
                                    316 	.globl _PWMB_SMCR
                                    317 	.globl _PWMB_CR2
                                    318 	.globl _PWMB_CR1
                                    319 	.globl _PWMA_OISR
                                    320 	.globl _PWMA_DTR
                                    321 	.globl _PWMA_BKR
                                    322 	.globl _PWMA_CCR4L
                                    323 	.globl _PWMA_CCR4H
                                    324 	.globl _PWMA_CCR3L
                                    325 	.globl _PWMA_CCR3H
                                    326 	.globl _PWMA_CCR2L
                                    327 	.globl _PWMA_CCR2H
                                    328 	.globl _PWMA_CCR1L
                                    329 	.globl _PWMA_CCR1H
                                    330 	.globl _PWMA_RCR
                                    331 	.globl _PWMA_ARRL
                                    332 	.globl _PWMA_ARRH
                                    333 	.globl _PWMA_PSCRL
                                    334 	.globl _PWMA_PSCRH
                                    335 	.globl _PWMA_CNTRL
                                    336 	.globl _PWMA_CNTRH
                                    337 	.globl _PWMA_CCER2
                                    338 	.globl _PWMA_CCER1
                                    339 	.globl _PWMA_CCMR4
                                    340 	.globl _PWMA_CCMR3
                                    341 	.globl _PWMA_CCMR2
                                    342 	.globl _PWMA_CCMR1
                                    343 	.globl _PWMA_EGR
                                    344 	.globl _PWMA_SR2
                                    345 	.globl _PWMA_SR1
                                    346 	.globl _PWMA_IER
                                    347 	.globl _PWMA_ETR
                                    348 	.globl _PWMA_SMCR
                                    349 	.globl _PWMA_CR2
                                    350 	.globl _PWMA_CR1
                                    351 	.globl _PWMB_IOAUX
                                    352 	.globl _PWMB_PS
                                    353 	.globl _PWMB_ENO
                                    354 	.globl _PWMB_ETRPS
                                    355 	.globl _PWMA_IOAUX
                                    356 	.globl _PWMA_PS
                                    357 	.globl _PWMA_ENO
                                    358 	.globl _PWMA_ETRPS
                                    359 	.globl _RSTFLAG
                                    360 	.globl _SPFUNC
                                    361 	.globl _OPCON
                                    362 	.globl _ARCON
                                    363 	.globl _MD4
                                    364 	.globl _MD5
                                    365 	.globl _MD0
                                    366 	.globl _MD1
                                    367 	.globl _MD2
                                    368 	.globl _MD3
                                    369 	.globl _DMA_LCM_RXAL
                                    370 	.globl _DMA_LCM_RXAH
                                    371 	.globl _DMA_LCM_TXAL
                                    372 	.globl _DMA_LCM_TXAH
                                    373 	.globl _DMA_LCM_DONE
                                    374 	.globl _DMA_LCM_AMT
                                    375 	.globl _DMA_LCM_STA
                                    376 	.globl _DMA_LCM_CR
                                    377 	.globl _DMA_LCM_CFG
                                    378 	.globl _LCMIDDAT
                                    379 	.globl _LCMIDDATH
                                    380 	.globl _LCMIDDATL
                                    381 	.globl _LCMSTA
                                    382 	.globl _LCMCR
                                    383 	.globl _LCMCFG2
                                    384 	.globl _LCMCFG
                                    385 	.globl _I2CMSAUX
                                    386 	.globl _I2CRXD
                                    387 	.globl _I2CTXD
                                    388 	.globl _I2CSLADR
                                    389 	.globl _I2CSLST
                                    390 	.globl _I2CSLCR
                                    391 	.globl _I2CMSST
                                    392 	.globl _I2CMSCR
                                    393 	.globl _I2CCFG
                                    394 	.globl _PINIPH
                                    395 	.globl _PINIPL
                                    396 	.globl _P5IE
                                    397 	.globl _P5DR
                                    398 	.globl _P5SR
                                    399 	.globl _P5NCS
                                    400 	.globl _P5PU
                                    401 	.globl _P5WKUE
                                    402 	.globl _P5IM1
                                    403 	.globl _P5IM0
                                    404 	.globl _P5INTF
                                    405 	.globl _P5INTE
                                    406 	.globl _P3IE
                                    407 	.globl _P3DR
                                    408 	.globl _P3SR
                                    409 	.globl _P3NCS
                                    410 	.globl _P3PU
                                    411 	.globl _P3WKUE
                                    412 	.globl _P3IM1
                                    413 	.globl _P3IM0
                                    414 	.globl _P3INTF
                                    415 	.globl _P3INTE
                                    416 	.globl _P2IE
                                    417 	.globl _P2DR
                                    418 	.globl _P2SR
                                    419 	.globl _P2NCS
                                    420 	.globl _P2PU
                                    421 	.globl _P2WKUE
                                    422 	.globl _P2IM1
                                    423 	.globl _P2IM0
                                    424 	.globl _P2INTF
                                    425 	.globl _P2INTE
                                    426 	.globl _P1IE
                                    427 	.globl _P1DR
                                    428 	.globl _P1SR
                                    429 	.globl _P1NCS
                                    430 	.globl _P1PU
                                    431 	.globl _P1WKUE
                                    432 	.globl _P1IM1
                                    433 	.globl _P1IM0
                                    434 	.globl _P1INTF
                                    435 	.globl _P1INTE
                                    436 	.globl _DMA_M2M_RXAL
                                    437 	.globl _DMA_M2M_RXAH
                                    438 	.globl _DMA_M2M_TXAL
                                    439 	.globl _DMA_M2M_TXAH
                                    440 	.globl _DMA_M2M_DONE
                                    441 	.globl _DMA_M2M_AMT
                                    442 	.globl _DMA_M2M_STA
                                    443 	.globl _DMA_M2M_CR
                                    444 	.globl _DMA_M2M_CFG
                                    445 	.globl _CMPEXCFG
                                    446 	.globl _DMA_ADC_CHSW1
                                    447 	.globl _DMA_ADC_CHSW0
                                    448 	.globl _DMA_ADC_CFG2
                                    449 	.globl _DMA_ADC_RXAL
                                    450 	.globl _DMA_ADC_RXAH
                                    451 	.globl _DMA_ADC_STA
                                    452 	.globl _DMA_ADC_CR
                                    453 	.globl _DMA_ADC_CFG
                                    454 	.globl _ADCEXCFG
                                    455 	.globl _ADCTIM
                                    456 	.globl _pwmConfigureOutput
                                    457 	.globl _pwmConfigureCounter
                                    458 	.globl _pwmEnableMainOutput
                                    459 	.globl _pwmEnableCounter
                                    460 	.globl _pwmInitialisePWM
                                    461 	.globl _pwmSetDutyCycle
                                    462 	.globl _pwmInitialiseQuadratureEncoder
                                    463 	.globl _pwmInitialiseCapture
                                    464 	.globl _pwmA_isr
                                    465 	.globl _pwmB_isr
                                    466 ;--------------------------------------------------------
                                    467 ; special function registers
                                    468 ;--------------------------------------------------------
                                    469 	.area RSEG    (ABS,DATA)
      000000                        470 	.org 0x0000
                           0000BC   471 _ADC_CONTR	=	0x00bc
                           0000BD   472 _ADC_RESH	=	0x00bd
                           0000BE   473 _ADC_RESL	=	0x00be
                           00BDBE   474 _ADC_RES	=	0xbdbe
                           0000DE   475 _ADCCFG	=	0x00de
                           0000FA   476 _DMA_ADC_AMT	=	0x00fa
                           0000E6   477 _CMPCR1	=	0x00e6
                           0000E7   478 _CMPCR2	=	0x00e7
                           000082   479 _DPL	=	0x0082
                           000083   480 _DPH	=	0x0083
                           008382   481 _DP	=	0x8382
                           0000E3   482 _DPS	=	0x00e3
                           0000E4   483 _DPL1	=	0x00e4
                           0000E5   484 _DPH1	=	0x00e5
                           0000AE   485 _TA	=	0x00ae
                           000090   486 _P1	=	0x0090
                           000091   487 _P1M1	=	0x0091
                           000092   488 _P1M0	=	0x0092
                           0000A0   489 _P2	=	0x00a0
                           000095   490 _P2M1	=	0x0095
                           000096   491 _P2M0	=	0x0096
                           0000B0   492 _P3	=	0x00b0
                           0000B1   493 _P3M1	=	0x00b1
                           0000B2   494 _P3M0	=	0x00b2
                           0000C8   495 _P5	=	0x00c8
                           0000C9   496 _P5M1	=	0x00c9
                           0000CA   497 _P5M0	=	0x00ca
                           0000C2   498 _IAP_DATA	=	0x00c2
                           0000C3   499 _IAP_ADDRH	=	0x00c3
                           0000C4   500 _IAP_ADDRL	=	0x00c4
                           00C3C4   501 _IAP_ADDR	=	0xc3c4
                           0000C5   502 _IAP_CMD	=	0x00c5
                           0000C6   503 _IAP_TRIG	=	0x00c6
                           0000C7   504 _IAP_CONTR	=	0x00c7
                           0000F5   505 _IAP_TPS	=	0x00f5
                           00008F   506 _INT_CLKO	=	0x008f
                           0000A8   507 _IE1	=	0x00a8
                           0000B8   508 _IP1L	=	0x00b8
                           0000B7   509 _IP1H	=	0x00b7
                           0000AF   510 _IE2	=	0x00af
                           0000B5   511 _IP2L	=	0x00b5
                           0000B6   512 _IP2H	=	0x00b6
                           0000DF   513 _IP3L	=	0x00df
                           0000EE   514 _IP3H	=	0x00ee
                           000081   515 _SP	=	0x0081
                           0000D0   516 _PSW	=	0x00d0
                           0000E0   517 _ACC	=	0x00e0
                           0000F0   518 _B	=	0x00f0
                           000087   519 _PCON	=	0x0087
                           0000FF   520 _RSTCFG	=	0x00ff
                           0000A2   521 _P_SW1	=	0x00a2
                           0000BA   522 _P_SW2	=	0x00ba
                           0000A1   523 _BUS_SPEED	=	0x00a1
                           0000AA   524 _WKTCL	=	0x00aa
                           0000AB   525 _WKTCH	=	0x00ab
                           00ABAA   526 _WKTC	=	0xabaa
                           0000CD   527 _SPSTAT	=	0x00cd
                           0000CE   528 _SPCTL	=	0x00ce
                           0000CF   529 _SPDAT	=	0x00cf
                           00009D   530 _IRCBAND	=	0x009d
                           00009E   531 _LIRTRIM	=	0x009e
                           00009F   532 _IRTRIM	=	0x009f
                           000088   533 _TCON	=	0x0088
                           000089   534 _TMOD	=	0x0089
                           00008A   535 _T0L	=	0x008a
                           00008C   536 _T0H	=	0x008c
                           008C8A   537 _T0	=	0x8c8a
                           00008B   538 _T1L	=	0x008b
                           00008D   539 _T1H	=	0x008d
                           008D8B   540 _T1	=	0x8d8b
                           0000D7   541 _T2L	=	0x00d7
                           0000D6   542 _T2H	=	0x00d6
                           00D6D7   543 _T2	=	0xd6d7
                           00008E   544 _AUXR	=	0x008e
                           0000C1   545 _WDT_CONTR	=	0x00c1
                           0000D1   546 _T4T3M	=	0x00d1
                           0000D2   547 _T4H	=	0x00d2
                           0000D3   548 _T4L	=	0x00d3
                           00D2D3   549 _T4	=	0xd2d3
                           0000D4   550 _T3H	=	0x00d4
                           0000D5   551 _T3L	=	0x00d5
                           00D4D5   552 _T3	=	0xd4d5
                           0000EF   553 _AUXINTIF	=	0x00ef
                           0000A9   554 _SADDR	=	0x00a9
                           0000B9   555 _SADEN	=	0x00b9
                           000098   556 _S1CON	=	0x0098
                           000099   557 _S1BUF	=	0x0099
                           00009A   558 _S2CON	=	0x009a
                           00009B   559 _S2BUF	=	0x009b
                           0000AC   560 _S3CON	=	0x00ac
                           0000AD   561 _S3BUF	=	0x00ad
                           000084   562 _S4CON	=	0x0084
                           000085   563 _S4BUF	=	0x0085
                           0000DC   564 _USBCLK	=	0x00dc
                           0000EC   565 _USBDAT	=	0x00ec
                           0000F4   566 _USBCON	=	0x00f4
                           0000FC   567 _USBADR	=	0x00fc
                                    568 ;--------------------------------------------------------
                                    569 ; special function bits
                                    570 ;--------------------------------------------------------
                                    571 	.area RSEG    (ABS,DATA)
      000000                        572 	.org 0x0000
                           000090   573 _P1_0	=	0x0090
                           000091   574 _P1_1	=	0x0091
                           000092   575 _P1_2	=	0x0092
                           000093   576 _P1_3	=	0x0093
                           000094   577 _P1_4	=	0x0094
                           000095   578 _P1_5	=	0x0095
                           000096   579 _P1_6	=	0x0096
                           000097   580 _P1_7	=	0x0097
                           0000A0   581 _P2_0	=	0x00a0
                           0000A1   582 _P2_1	=	0x00a1
                           0000A2   583 _P2_2	=	0x00a2
                           0000A3   584 _P2_3	=	0x00a3
                           0000A4   585 _P2_4	=	0x00a4
                           0000A5   586 _P2_5	=	0x00a5
                           0000A6   587 _P2_6	=	0x00a6
                           0000A7   588 _P2_7	=	0x00a7
                           0000B0   589 _P3_0	=	0x00b0
                           0000B1   590 _P3_1	=	0x00b1
                           0000B2   591 _P3_2	=	0x00b2
                           0000B3   592 _P3_3	=	0x00b3
                           0000B4   593 _P3_4	=	0x00b4
                           0000B5   594 _P3_5	=	0x00b5
                           0000B6   595 _P3_6	=	0x00b6
                           0000B7   596 _P3_7	=	0x00b7
                           0000C8   597 _P5_0	=	0x00c8
                           0000C9   598 _P5_1	=	0x00c9
                           0000CA   599 _P5_2	=	0x00ca
                           0000CB   600 _P5_3	=	0x00cb
                           0000CC   601 _P5_4	=	0x00cc
                           0000CD   602 _P5_5	=	0x00cd
                           000088   603 _INT0TR	=	0x0088
                           00008A   604 _INT1TR	=	0x008a
                           0000A8   605 _INT0IE	=	0x00a8
                           0000AA   606 _INT1IE	=	0x00aa
                           0000AF   607 _EA	=	0x00af
                           0000D0   608 _P	=	0x00d0
                           0000D1   609 _F1	=	0x00d1
                           0000D2   610 _OV	=	0x00d2
                           0000D3   611 _RS0	=	0x00d3
                           0000D4   612 _RS1	=	0x00d4
                           0000D5   613 _F0	=	0x00d5
                           0000D6   614 _AC	=	0x00d6
                           0000D7   615 _CY	=	0x00d7
                           00008C   616 _T0RUN	=	0x008c
                           00008E   617 _T1RUN	=	0x008e
                           0000A9   618 _T0IE	=	0x00a9
                           0000AB   619 _T1IE	=	0x00ab
                           00009F   620 _S1SM0_FE	=	0x009f
                                    621 ;--------------------------------------------------------
                                    622 ; overlayable register banks
                                    623 ;--------------------------------------------------------
                                    624 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        625 	.ds 8
                                    626 ;--------------------------------------------------------
                                    627 ; overlayable bit register bank
                                    628 ;--------------------------------------------------------
                                    629 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        630 bits:
      000021                        631 	.ds 1
                           008000   632 	b0 = bits[0]
                           008100   633 	b1 = bits[1]
                           008200   634 	b2 = bits[2]
                           008300   635 	b3 = bits[3]
                           008400   636 	b4 = bits[4]
                           008500   637 	b5 = bits[5]
                           008600   638 	b6 = bits[6]
                           008700   639 	b7 = bits[7]
                                    640 ;--------------------------------------------------------
                                    641 ; internal ram data
                                    642 ;--------------------------------------------------------
                                    643 	.area DSEG    (DATA)
      000008                        644 _pwmA_isr_sloc0_1_0:
      000008                        645 	.ds 4
      00000C                        646 _pwmB_isr_sloc0_1_0:
      00000C                        647 	.ds 4
                                    648 ;--------------------------------------------------------
                                    649 ; overlayable items in internal ram 
                                    650 ;--------------------------------------------------------
                                    651 ;--------------------------------------------------------
                                    652 ; indirectly addressable internal ram data
                                    653 ;--------------------------------------------------------
                                    654 	.area ISEG    (DATA)
                                    655 ;--------------------------------------------------------
                                    656 ; absolute internal ram data
                                    657 ;--------------------------------------------------------
                                    658 	.area IABS    (ABS,DATA)
                                    659 	.area IABS    (ABS,DATA)
                                    660 ;--------------------------------------------------------
                                    661 ; bit data
                                    662 ;--------------------------------------------------------
                                    663 	.area BSEG    (BIT)
                                    664 ;--------------------------------------------------------
                                    665 ; paged external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area PSEG    (PAG,XDATA)
                                    668 ;--------------------------------------------------------
                                    669 ; external ram data
                                    670 ;--------------------------------------------------------
                                    671 	.area XSEG    (XDATA)
                           00FEA8   672 _ADCTIM	=	0xfea8
                           00FEAD   673 _ADCEXCFG	=	0xfead
                           00FA10   674 _DMA_ADC_CFG	=	0xfa10
                           00FA11   675 _DMA_ADC_CR	=	0xfa11
                           00FA12   676 _DMA_ADC_STA	=	0xfa12
                           00FA17   677 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   678 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   679 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   680 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   681 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   682 _CMPEXCFG	=	0xfeae
                           00FA00   683 _DMA_M2M_CFG	=	0xfa00
                           00FA01   684 _DMA_M2M_CR	=	0xfa01
                           00FA02   685 _DMA_M2M_STA	=	0xfa02
                           00FA03   686 _DMA_M2M_AMT	=	0xfa03
                           00FA04   687 _DMA_M2M_DONE	=	0xfa04
                           00FA05   688 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   689 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   690 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   691 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   692 _P1INTE	=	0xfd01
                           00FD11   693 _P1INTF	=	0xfd11
                           00FD21   694 _P1IM0	=	0xfd21
                           00FD31   695 _P1IM1	=	0xfd31
                           00FD41   696 _P1WKUE	=	0xfd41
                           00FE11   697 _P1PU	=	0xfe11
                           00FE19   698 _P1NCS	=	0xfe19
                           00FE21   699 _P1SR	=	0xfe21
                           00FE29   700 _P1DR	=	0xfe29
                           00FE31   701 _P1IE	=	0xfe31
                           00FD02   702 _P2INTE	=	0xfd02
                           00FD12   703 _P2INTF	=	0xfd12
                           00FD22   704 _P2IM0	=	0xfd22
                           00FD32   705 _P2IM1	=	0xfd32
                           00FD42   706 _P2WKUE	=	0xfd42
                           00FE12   707 _P2PU	=	0xfe12
                           00FE1A   708 _P2NCS	=	0xfe1a
                           00FE22   709 _P2SR	=	0xfe22
                           00FE2A   710 _P2DR	=	0xfe2a
                           00FE32   711 _P2IE	=	0xfe32
                           00FD03   712 _P3INTE	=	0xfd03
                           00FD13   713 _P3INTF	=	0xfd13
                           00FD23   714 _P3IM0	=	0xfd23
                           00FD33   715 _P3IM1	=	0xfd33
                           00FD43   716 _P3WKUE	=	0xfd43
                           00FE13   717 _P3PU	=	0xfe13
                           00FE1B   718 _P3NCS	=	0xfe1b
                           00FE23   719 _P3SR	=	0xfe23
                           00FE2B   720 _P3DR	=	0xfe2b
                           00FE33   721 _P3IE	=	0xfe33
                           00FD05   722 _P5INTE	=	0xfd05
                           00FD15   723 _P5INTF	=	0xfd15
                           00FD25   724 _P5IM0	=	0xfd25
                           00FD35   725 _P5IM1	=	0xfd35
                           00FD45   726 _P5WKUE	=	0xfd45
                           00FE15   727 _P5PU	=	0xfe15
                           00FE1D   728 _P5NCS	=	0xfe1d
                           00FE25   729 _P5SR	=	0xfe25
                           00FE2D   730 _P5DR	=	0xfe2d
                           00FE35   731 _P5IE	=	0xfe35
                           00FD60   732 _PINIPL	=	0xfd60
                           00FD61   733 _PINIPH	=	0xfd61
                           00FE80   734 _I2CCFG	=	0xfe80
                           00FE81   735 _I2CMSCR	=	0xfe81
                           00FE82   736 _I2CMSST	=	0xfe82
                           00FE83   737 _I2CSLCR	=	0xfe83
                           00FE84   738 _I2CSLST	=	0xfe84
                           00FE85   739 _I2CSLADR	=	0xfe85
                           00FE86   740 _I2CTXD	=	0xfe86
                           00FE87   741 _I2CRXD	=	0xfe87
                           00FE88   742 _I2CMSAUX	=	0xfe88
                           00FE50   743 _LCMCFG	=	0xfe50
                           00FE51   744 _LCMCFG2	=	0xfe51
                           00FE52   745 _LCMCR	=	0xfe52
                           00FE53   746 _LCMSTA	=	0xfe53
                           00FE54   747 _LCMIDDATL	=	0xfe54
                           00FE55   748 _LCMIDDATH	=	0xfe55
                           00FE54   749 _LCMIDDAT	=	0xfe54
                           00FA70   750 _DMA_LCM_CFG	=	0xfa70
                           00FA71   751 _DMA_LCM_CR	=	0xfa71
                           00FA72   752 _DMA_LCM_STA	=	0xfa72
                           00FA73   753 _DMA_LCM_AMT	=	0xfa73
                           00FA74   754 _DMA_LCM_DONE	=	0xfa74
                           00FA75   755 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   756 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   757 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   758 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   759 _MD3	=	0xfcf0
                           00FCF1   760 _MD2	=	0xfcf1
                           00FCF2   761 _MD1	=	0xfcf2
                           00FCF3   762 _MD0	=	0xfcf3
                           00FCF4   763 _MD5	=	0xfcf4
                           00FCF5   764 _MD4	=	0xfcf5
                           00FCF6   765 _ARCON	=	0xfcf6
                           00FCF7   766 _OPCON	=	0xfcf7
                           00FE08   767 _SPFUNC	=	0xfe08
                           00FE09   768 _RSTFLAG	=	0xfe09
                           00FEB0   769 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   770 _PWMA_ENO	=	0xfeb1
                           00FEB2   771 _PWMA_PS	=	0xfeb2
                           00FEB3   772 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   773 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   774 _PWMB_ENO	=	0xfeb5
                           00FEB6   775 _PWMB_PS	=	0xfeb6
                           00FEB7   776 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   777 _PWMA_CR1	=	0xfec0
                           00FEC1   778 _PWMA_CR2	=	0xfec1
                           00FEC2   779 _PWMA_SMCR	=	0xfec2
                           00FEC3   780 _PWMA_ETR	=	0xfec3
                           00FEC4   781 _PWMA_IER	=	0xfec4
                           00FEC5   782 _PWMA_SR1	=	0xfec5
                           00FEC6   783 _PWMA_SR2	=	0xfec6
                           00FEC7   784 _PWMA_EGR	=	0xfec7
                           00FEC8   785 _PWMA_CCMR1	=	0xfec8
                           00FEC9   786 _PWMA_CCMR2	=	0xfec9
                           00FECA   787 _PWMA_CCMR3	=	0xfeca
                           00FECB   788 _PWMA_CCMR4	=	0xfecb
                           00FECC   789 _PWMA_CCER1	=	0xfecc
                           00FECD   790 _PWMA_CCER2	=	0xfecd
                           00FECE   791 _PWMA_CNTRH	=	0xfece
                           00FECF   792 _PWMA_CNTRL	=	0xfecf
                           00FED0   793 _PWMA_PSCRH	=	0xfed0
                           00FED1   794 _PWMA_PSCRL	=	0xfed1
                           00FED2   795 _PWMA_ARRH	=	0xfed2
                           00FED3   796 _PWMA_ARRL	=	0xfed3
                           00FED4   797 _PWMA_RCR	=	0xfed4
                           00FED5   798 _PWMA_CCR1H	=	0xfed5
                           00FED6   799 _PWMA_CCR1L	=	0xfed6
                           00FED7   800 _PWMA_CCR2H	=	0xfed7
                           00FED8   801 _PWMA_CCR2L	=	0xfed8
                           00FED9   802 _PWMA_CCR3H	=	0xfed9
                           00FEDA   803 _PWMA_CCR3L	=	0xfeda
                           00FEDB   804 _PWMA_CCR4H	=	0xfedb
                           00FEDC   805 _PWMA_CCR4L	=	0xfedc
                           00FEDD   806 _PWMA_BKR	=	0xfedd
                           00FEDE   807 _PWMA_DTR	=	0xfede
                           00FEDF   808 _PWMA_OISR	=	0xfedf
                           00FEE0   809 _PWMB_CR1	=	0xfee0
                           00FEE1   810 _PWMB_CR2	=	0xfee1
                           00FEE2   811 _PWMB_SMCR	=	0xfee2
                           00FEE3   812 _PWMB_ETR	=	0xfee3
                           00FEE4   813 _PWMB_IER	=	0xfee4
                           00FEE5   814 _PWMB_SR1	=	0xfee5
                           00FEE6   815 _PWMB_SR2	=	0xfee6
                           00FEE7   816 _PWMB_EGR	=	0xfee7
                           00FEE8   817 _PWMB_CCMR1	=	0xfee8
                           00FEE9   818 _PWMB_CCMR2	=	0xfee9
                           00FEEA   819 _PWMB_CCMR3	=	0xfeea
                           00FEEB   820 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   821 _PWMB_CCER1	=	0xfeec
                           00FEED   822 _PWMB_CCER2	=	0xfeed
                           00FEEE   823 _PWMB_CNTRH	=	0xfeee
                           00FEEF   824 _PWMB_CNTRL	=	0xfeef
                           00FEF0   825 _PWMB_PSCRH	=	0xfef0
                           00FEF1   826 _PWMB_PSCRL	=	0xfef1
                           00FEF2   827 _PWMB_ARRH	=	0xfef2
                           00FEF3   828 _PWMB_ARRL	=	0xfef3
                           00FEF4   829 _PWMB_RCR	=	0xfef4
                           00FEF5   830 _PWMB_CCR1H	=	0xfef5
                           00FEF6   831 _PWMB_CCR1L	=	0xfef6
                           00FEF7   832 _PWMB_CCR2H	=	0xfef7
                           00FEF8   833 _PWMB_CCR2L	=	0xfef8
                           00FEF9   834 _PWMB_CCR3H	=	0xfef9
                           00FEFA   835 _PWMB_CCR3L	=	0xfefa
                           00FEFB   836 _PWMB_CCR4H	=	0xfefb
                           00FEFC   837 _PWMB_CCR4L	=	0xfefc
                           00FEFD   838 _PWMB_BKR	=	0xfefd
                           00FEFE   839 _PWMB_DTR	=	0xfefe
                           00FEFF   840 _PWMB_OISR	=	0xfeff
                           00FE60   841 _RTCCR	=	0xfe60
                           00FE61   842 _RTCCFG	=	0xfe61
                           00FE62   843 _RTCIEN	=	0xfe62
                           00FE63   844 _RTCIF	=	0xfe63
                           00FE64   845 _ALAHOUR	=	0xfe64
                           00FE65   846 _ALAMIN	=	0xfe65
                           00FE66   847 _ALASEC	=	0xfe66
                           00FE67   848 _ALASSEC	=	0xfe67
                           00FE68   849 _INIYEAR	=	0xfe68
                           00FE69   850 _INIMONTH	=	0xfe69
                           00FE6A   851 _INIDAY	=	0xfe6a
                           00FE6B   852 _INIHOUR	=	0xfe6b
                           00FE6C   853 _INIMIN	=	0xfe6c
                           00FE6D   854 _INISEC	=	0xfe6d
                           00FE6E   855 _INISSEC	=	0xfe6e
                           00FE70   856 _YEAR	=	0xfe70
                           00FE71   857 _MONTH	=	0xfe71
                           00FE72   858 _DAY	=	0xfe72
                           00FE73   859 _HOUR	=	0xfe73
                           00FE74   860 _MIN	=	0xfe74
                           00FE75   861 _SEC	=	0xfe75
                           00FE76   862 _SSEC	=	0xfe76
                           00FA20   863 _DMA_SPI_CFG	=	0xfa20
                           00FA21   864 _DMA_SPI_CR	=	0xfa21
                           00FA22   865 _DMA_SPI_STA	=	0xfa22
                           00FA23   866 _DMA_SPI_AMT	=	0xfa23
                           00FA24   867 _DMA_SPI_DONE	=	0xfa24
                           00FA25   868 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   869 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   870 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   871 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   872 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   873 _CLKDIV	=	0xfe01
                           00FE02   874 _HIRCCR	=	0xfe02
                           00FE03   875 _XOSCCR	=	0xfe03
                           00FE04   876 _IRC32KCR	=	0xfe04
                           00FE00   877 _CKSEL	=	0xfe00
                           00FE05   878 _MCLKOCR	=	0xfe05
                           00FE06   879 _IRCDB	=	0xfe06
                           00FE07   880 _IRC48MCR	=	0xfe07
                           00FEA2   881 _TM2PS	=	0xfea2
                           00FEA3   882 _TM3PS	=	0xfea3
                           00FEA4   883 _TM4PS	=	0xfea4
                           00FA30   884 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   885 _DMA_UR1T_CR	=	0xfa31
                           00FA32   886 _DMA_UR1T_STA	=	0xfa32
                           00FA33   887 _DMA_URTX_AMT	=	0xfa33
                           00FA34   888 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   889 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   890 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   891 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   892 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   893 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   894 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   895 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   896 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   897 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   898 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   899 _DMA_UR2T_CR	=	0xfa31
                           00FA32   900 _DMA_UR2T_STA	=	0xfa32
                           00FA33   901 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   902 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   903 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   904 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   905 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   906 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   907 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   908 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   909 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   910 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   911 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   912 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   913 _DMA_UR3T_CR	=	0xfa31
                           00FA32   914 _DMA_UR3T_STA	=	0xfa32
                           00FA33   915 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   916 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   917 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   918 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   919 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   920 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   921 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   922 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   923 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   924 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   925 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   926 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   927 _DMA_UR4T_CR	=	0xfa31
                           00FA32   928 _DMA_UR4T_STA	=	0xfa32
                           00FA33   929 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   930 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   931 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   932 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   933 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   934 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   935 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   936 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   937 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   938 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   939 _DMA_UR4R_TXAL	=	0xfa3e
      00000D                        940 _uartGetCharacter_result_65536_69:
      00000D                        941 	.ds 1
      00000E                        942 _channelLastCount:
      00000E                        943 	.ds 32
      00002E                        944 _getChannelPin_PARM_2:
      00002E                        945 	.ds 1
      00002F                        946 _getChannelPin_PARM_3:
      00002F                        947 	.ds 1
      000030                        948 _getChannelPin_channel_65536_148:
      000030                        949 	.ds 1
      000031                        950 _getChannelPin_index_65537_151:
      000031                        951 	.ds 1
      000032                        952 _configurePin_PARM_2:
      000032                        953 	.ds 1
      000033                        954 _configurePin_ioPin_65536_156:
      000033                        955 	.ds 1
      000034                        956 _configurePin_rc_65536_157:
      000034                        957 	.ds 1
      000035                        958 _configurePin_pinConfig_131072_158:
      000035                        959 	.ds 13
      000042                        960 _applyPinSwitch_PARM_2:
      000042                        961 	.ds 1
      000043                        962 _applyPinSwitch_channel_65536_159:
      000043                        963 	.ds 1
      000044                        964 _enableOutput_PARM_2:
      000044                        965 	.ds 1
      000045                        966 _enableOutput_channel_65536_164:
      000045                        967 	.ds 1
      000046                        968 _enableChannel_PARM_2:
      000046                        969 	.ds 1
      000047                        970 _enableChannel_PARM_3:
      000047                        971 	.ds 1
      000048                        972 _enableChannel_channel_65536_168:
      000048                        973 	.ds 1
      000049                        974 _enableChannel_reg2_65536_169:
      000049                        975 	.ds 1
      00004A                        976 _enableChannel_bitPos_131072_170:
      00004A                        977 	.ds 1
      00004B                        978 _enableChannel_bitPos_131072_175:
      00004B                        979 	.ds 1
      00004C                        980 _enableFaultControl_PARM_2:
      00004C                        981 	.ds 1
      00004D                        982 _enableFaultControl_PARM_3:
      00004D                        983 	.ds 1
      00004E                        984 _enableFaultControl_PARM_4:
      00004E                        985 	.ds 1
      00004F                        986 _enableFaultControl_channel_65536_180:
      00004F                        987 	.ds 1
      000050                        988 _closeChannel_channel_65536_185:
      000050                        989 	.ds 1
      000051                        990 _pwmConfigureOutput_PARM_2:
      000051                        991 	.ds 1
      000052                        992 _pwmConfigureOutput_PARM_3:
      000052                        993 	.ds 1
      000053                        994 _pwmConfigureOutput_PARM_4:
      000053                        995 	.ds 1
      000054                        996 _pwmConfigureOutput_PARM_5:
      000054                        997 	.ds 1
      000055                        998 _pwmConfigureOutput_PARM_6:
      000055                        999 	.ds 1
      000056                       1000 _pwmConfigureOutput_PARM_7:
      000056                       1001 	.ds 1
      000057                       1002 _pwmConfigureOutput_channel_65536_188:
      000057                       1003 	.ds 1
      000058                       1004 _pwmConfigureOutput_ok_65537_191:
      000058                       1005 	.ds 1
      000059                       1006 _pwmConfigureCounter_PARM_2:
      000059                       1007 	.ds 4
      00005D                       1008 _pwmConfigureCounter_PARM_3:
      00005D                       1009 	.ds 4
      000061                       1010 _pwmConfigureCounter_PARM_4:
      000061                       1011 	.ds 1
      000062                       1012 _pwmConfigureCounter_PARM_5:
      000062                       1013 	.ds 1
      000063                       1014 _pwmConfigureCounter_PARM_6:
      000063                       1015 	.ds 1
      000064                       1016 _pwmConfigureCounter_PARM_7:
      000064                       1017 	.ds 1
      000065                       1018 _pwmConfigureCounter_PARM_8:
      000065                       1019 	.ds 1
      000066                       1020 _pwmConfigureCounter_PARM_9:
      000066                       1021 	.ds 1
      000067                       1022 _pwmConfigureCounter_PARM_10:
      000067                       1023 	.ds 1
      000068                       1024 _pwmConfigureCounter_PARM_11:
      000068                       1025 	.ds 1
      000069                       1026 _pwmConfigureCounter_counter_65536_197:
      000069                       1027 	.ds 1
      00006A                       1028 _pwmConfigureCounter_prescaler_65536_198:
      00006A                       1029 	.ds 2
      00006C                       1030 _pwmConfigureCounter_reloadValue_65536_198:
      00006C                       1031 	.ds 2
      00006E                       1032 _pwmEnableMainOutput_counter_65536_206:
      00006E                       1033 	.ds 1
      00006F                       1034 _pwmEnableCounter_counter_65536_209:
      00006F                       1035 	.ds 1
      000070                       1036 _enableChannelInterrupt_channel_65536_212:
      000070                       1037 	.ds 1
      000071                       1038 _pwmInitialisePWM_PARM_2:
      000071                       1039 	.ds 1
      000072                       1040 _pwmInitialisePWM_PARM_3:
      000072                       1041 	.ds 1
      000073                       1042 _pwmInitialisePWM_PARM_4:
      000073                       1043 	.ds 1
      000074                       1044 _pwmInitialisePWM_PARM_5:
      000074                       1045 	.ds 2
      000076                       1046 _pwmInitialisePWM_channel_65536_216:
      000076                       1047 	.ds 1
      000077                       1048 _pwmInitialisePWM_ccmr_65537_218:
      000077                       1049 	.ds 1
      000078                       1050 _pwmSetDutyCycle_PARM_2:
      000078                       1051 	.ds 2
      00007A                       1052 _pwmSetDutyCycle_channel_65536_223:
      00007A                       1053 	.ds 1
      00007B                       1054 _configureInput_PARM_2:
      00007B                       1055 	.ds 1
      00007C                       1056 _configureInput_PARM_3:
      00007C                       1057 	.ds 1
      00007D                       1058 _configureInput_PARM_4:
      00007D                       1059 	.ds 1
      00007E                       1060 _configureInput_PARM_5:
      00007E                       1061 	.ds 1
      00007F                       1062 _configureInput_channel_65536_226:
      00007F                       1063 	.ds 1
      000080                       1064 _pwmInitialiseQuadratureEncoder_PARM_2:
      000080                       1065 	.ds 1
      000081                       1066 _pwmInitialiseQuadratureEncoder_PARM_3:
      000081                       1067 	.ds 1
      000082                       1068 _pwmInitialiseQuadratureEncoder_PARM_4:
      000082                       1069 	.ds 1
      000083                       1070 _pwmInitialiseQuadratureEncoder_counter_65536_230:
      000083                       1071 	.ds 1
      000084                       1072 _pwmInitialiseCapture_PARM_2:
      000084                       1073 	.ds 1
      000085                       1074 _pwmInitialiseCapture_PARM_3:
      000085                       1075 	.ds 1
      000086                       1076 _pwmInitialiseCapture_PARM_4:
      000086                       1077 	.ds 1
      000087                       1078 _pwmInitialiseCapture_PARM_5:
      000087                       1079 	.ds 1
      000088                       1080 _pwmInitialiseCapture_PARM_6:
      000088                       1081 	.ds 1
      000089                       1082 _pwmInitialiseCapture_channel_65536_232:
      000089                       1083 	.ds 1
      00008A                       1084 _pwmA_isr_channel_65536_236:
      00008A                       1085 	.ds 1
      00008B                       1086 _pwmA_isr_event_65536_236:
      00008B                       1087 	.ds 1
      00008C                       1088 _pwmA_isr_counter_262144_247:
      00008C                       1089 	.ds 2
      00008E                       1090 _pwmA_isr_refIndex_262145_249:
      00008E                       1091 	.ds 1
      00008F                       1092 _pwmA_isr_channelNewCount_262146_252:
      00008F                       1093 	.ds 4
      000093                       1094 _pwmA_isr_elapsed_262146_252:
      000093                       1095 	.ds 4
      000097                       1096 _pwmB_isr_channel_65536_255:
      000097                       1097 	.ds 1
      000098                       1098 _pwmB_isr_event_65536_255:
      000098                       1099 	.ds 1
      000099                       1100 _pwmB_isr_counter_262144_266:
      000099                       1101 	.ds 2
      00009B                       1102 _pwmB_isr_refIndex_262145_268:
      00009B                       1103 	.ds 1
      00009C                       1104 _pwmB_isr_channelNewCount_262146_271:
      00009C                       1105 	.ds 4
      0000A0                       1106 _pwmB_isr_elapsed_262146_271:
      0000A0                       1107 	.ds 4
                                   1108 ;--------------------------------------------------------
                                   1109 ; absolute external ram data
                                   1110 ;--------------------------------------------------------
                                   1111 	.area XABS    (ABS,XDATA)
                                   1112 ;--------------------------------------------------------
                                   1113 ; external initialized ram data
                                   1114 ;--------------------------------------------------------
                                   1115 	.area XISEG   (XDATA)
      000631                       1116 _channelUsage:
      000631                       1117 	.ds 8
      000639                       1118 _counterOverflow:
      000639                       1119 	.ds 4
                                   1120 	.area HOME    (CODE)
                                   1121 	.area GSINIT0 (CODE)
                                   1122 	.area GSINIT1 (CODE)
                                   1123 	.area GSINIT2 (CODE)
                                   1124 	.area GSINIT3 (CODE)
                                   1125 	.area GSINIT4 (CODE)
                                   1126 	.area GSINIT5 (CODE)
                                   1127 	.area GSINIT  (CODE)
                                   1128 	.area GSFINAL (CODE)
                                   1129 	.area CSEG    (CODE)
                                   1130 ;--------------------------------------------------------
                                   1131 ; global & static initialisations
                                   1132 ;--------------------------------------------------------
                                   1133 	.area HOME    (CODE)
                                   1134 	.area GSINIT  (CODE)
                                   1135 	.area GSFINAL (CODE)
                                   1136 	.area GSINIT  (CODE)
                                   1137 ;--------------------------------------------------------
                                   1138 ; Home
                                   1139 ;--------------------------------------------------------
                                   1140 	.area HOME    (CODE)
                                   1141 	.area HOME    (CODE)
                                   1142 ;--------------------------------------------------------
                                   1143 ; code
                                   1144 ;--------------------------------------------------------
                                   1145 	.area CSEG    (CODE)
                                   1146 ;------------------------------------------------------------
                                   1147 ;Allocation info for local variables in function 'getChannelPin'
                                   1148 ;------------------------------------------------------------
                                   1149 ;pinSwitch                 Allocated with name '_getChannelPin_PARM_2'
                                   1150 ;offset                    Allocated with name '_getChannelPin_PARM_3'
                                   1151 ;channel                   Allocated with name '_getChannelPin_channel_65536_148'
                                   1152 ;index                     Allocated with name '_getChannelPin_index_65537_151'
                                   1153 ;------------------------------------------------------------
                                   1154 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:138: static uint8_t getChannelPin(PWM_Channel channel, uint8_t pinSwitch, uint8_t offset) {
                                   1155 ;	-----------------------------------------
                                   1156 ;	 function getChannelPin
                                   1157 ;	-----------------------------------------
      000270                       1158 _getChannelPin:
                           000007  1159 	ar7 = 0x07
                           000006  1160 	ar6 = 0x06
                           000005  1161 	ar5 = 0x05
                           000004  1162 	ar4 = 0x04
                           000003  1163 	ar3 = 0x03
                           000002  1164 	ar2 = 0x02
                           000001  1165 	ar1 = 0x01
                           000000  1166 	ar0 = 0x00
      000270 E5 82            [12] 1167 	mov	a,dpl
      000272 90 00 30         [24] 1168 	mov	dptr,#_getChannelPin_channel_65536_148
      000275 F0               [24] 1169 	movx	@dptr,a
                                   1170 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:139: if (pinSwitch >= PIN_CONFIG_MAX) {
      000276 90 00 2E         [24] 1171 	mov	dptr,#_getChannelPin_PARM_2
      000279 E0               [24] 1172 	movx	a,@dptr
      00027A FF               [12] 1173 	mov	r7,a
      00027B BF 03 00         [24] 1174 	cjne	r7,#0x03,00133$
      00027E                       1175 00133$:
      00027E 40 05            [24] 1176 	jc	00102$
                                   1177 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:140: pinSwitch = 0;
      000280 90 00 2E         [24] 1178 	mov	dptr,#_getChannelPin_PARM_2
      000283 E4               [12] 1179 	clr	a
      000284 F0               [24] 1180 	movx	@dptr,a
      000285                       1181 00102$:
                                   1182 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:143: uint8_t index = channel;
      000285 90 00 30         [24] 1183 	mov	dptr,#_getChannelPin_channel_65536_148
      000288 E0               [24] 1184 	movx	a,@dptr
      000289 FF               [12] 1185 	mov	r7,a
      00028A 90 00 31         [24] 1186 	mov	dptr,#_getChannelPin_index_65537_151
      00028D F0               [24] 1187 	movx	@dptr,a
                                   1188 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:146: if (channel > PWM_Channel4) {
      00028E EF               [12] 1189 	mov	a,r7
      00028F 24 F7            [12] 1190 	add	a,#0xff - 0x08
      000291 50 06            [24] 1191 	jnc	00104$
                                   1192 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:147: index--;
      000293 EF               [12] 1193 	mov	a,r7
      000294 14               [12] 1194 	dec	a
      000295 90 00 31         [24] 1195 	mov	dptr,#_getChannelPin_index_65537_151
      000298 F0               [24] 1196 	movx	@dptr,a
      000299                       1197 00104$:
                                   1198 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:150: if (channel > PWM_Channel5) {
      000299 90 00 30         [24] 1199 	mov	dptr,#_getChannelPin_channel_65536_148
      00029C E0               [24] 1200 	movx	a,@dptr
      00029D FF               [12] 1201 	mov  r7,a
      00029E 24 F5            [12] 1202 	add	a,#0xff - 0x0a
      0002A0 50 06            [24] 1203 	jnc	00106$
                                   1204 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:151: index--;
      0002A2 90 00 31         [24] 1205 	mov	dptr,#_getChannelPin_index_65537_151
      0002A5 E0               [24] 1206 	movx	a,@dptr
      0002A6 14               [12] 1207 	dec	a
      0002A7 F0               [24] 1208 	movx	@dptr,a
      0002A8                       1209 00106$:
                                   1210 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:154: if (channel > PWM_Channel6) {
      0002A8 EF               [12] 1211 	mov	a,r7
      0002A9 24 F3            [12] 1212 	add	a,#0xff - 0x0c
      0002AB 50 06            [24] 1213 	jnc	00108$
                                   1214 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:155: index--;
      0002AD 90 00 31         [24] 1215 	mov	dptr,#_getChannelPin_index_65537_151
      0002B0 E0               [24] 1216 	movx	a,@dptr
      0002B1 14               [12] 1217 	dec	a
      0002B2 F0               [24] 1218 	movx	@dptr,a
      0002B3                       1219 00108$:
                                   1220 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:158: if (channel < PWM_Channel4) {
      0002B3 90 00 30         [24] 1221 	mov	dptr,#_getChannelPin_channel_65536_148
      0002B6 E0               [24] 1222 	movx	a,@dptr
      0002B7 FF               [12] 1223 	mov	r7,a
      0002B8 BF 08 00         [24] 1224 	cjne	r7,#0x08,00138$
      0002BB                       1225 00138$:
      0002BB 50 0B            [24] 1226 	jnc	00110$
                                   1227 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:160: index += offset;
      0002BD 90 00 2F         [24] 1228 	mov	dptr,#_getChannelPin_PARM_3
      0002C0 E0               [24] 1229 	movx	a,@dptr
      0002C1 FF               [12] 1230 	mov	r7,a
      0002C2 90 00 31         [24] 1231 	mov	dptr,#_getChannelPin_index_65537_151
      0002C5 E0               [24] 1232 	movx	a,@dptr
      0002C6 2F               [12] 1233 	add	a,r7
      0002C7 F0               [24] 1234 	movx	@dptr,a
      0002C8                       1235 00110$:
                                   1236 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:165: return __channelPinConfigurations[pinSwitch][index];
      0002C8 90 00 2E         [24] 1237 	mov	dptr,#_getChannelPin_PARM_2
      0002CB E0               [24] 1238 	movx	a,@dptr
      0002CC 75 F0 0C         [24] 1239 	mov	b,#0x0c
      0002CF A4               [48] 1240 	mul	ab
      0002D0 24 1E            [12] 1241 	add	a,#___channelPinConfigurations
      0002D2 FE               [12] 1242 	mov	r6,a
      0002D3 74 5C            [12] 1243 	mov	a,#(___channelPinConfigurations >> 8)
      0002D5 35 F0            [12] 1244 	addc	a,b
      0002D7 FF               [12] 1245 	mov	r7,a
      0002D8 90 00 31         [24] 1246 	mov	dptr,#_getChannelPin_index_65537_151
      0002DB E0               [24] 1247 	movx	a,@dptr
      0002DC 2E               [12] 1248 	add	a,r6
      0002DD F5 82            [12] 1249 	mov	dpl,a
      0002DF E4               [12] 1250 	clr	a
      0002E0 3F               [12] 1251 	addc	a,r7
      0002E1 F5 83            [12] 1252 	mov	dph,a
      0002E3 E4               [12] 1253 	clr	a
      0002E4 93               [24] 1254 	movc	a,@a+dptr
                                   1255 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:166: }
      0002E5 F5 82            [12] 1256 	mov	dpl,a
      0002E7 22               [24] 1257 	ret
                                   1258 ;------------------------------------------------------------
                                   1259 ;Allocation info for local variables in function 'configurePin'
                                   1260 ;------------------------------------------------------------
                                   1261 ;pinMode                   Allocated with name '_configurePin_PARM_2'
                                   1262 ;ioPin                     Allocated with name '_configurePin_ioPin_65536_156'
                                   1263 ;port                      Allocated with name '_configurePin_port_65536_157'
                                   1264 ;pin                       Allocated with name '_configurePin_pin_65536_157'
                                   1265 ;rc                        Allocated with name '_configurePin_rc_65536_157'
                                   1266 ;pinConfig                 Allocated with name '_configurePin_pinConfig_131072_158'
                                   1267 ;------------------------------------------------------------
                                   1268 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:168: static bool configurePin(uint8_t ioPin, GpioPinMode pinMode) {
                                   1269 ;	-----------------------------------------
                                   1270 ;	 function configurePin
                                   1271 ;	-----------------------------------------
      0002E8                       1272 _configurePin:
      0002E8 E5 82            [12] 1273 	mov	a,dpl
      0002EA 90 00 33         [24] 1274 	mov	dptr,#_configurePin_ioPin_65536_156
      0002ED F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:169: GpioPort port = (GpioPort) (ioPin >> 4);
      0002EE E0               [24] 1277 	movx	a,@dptr
      0002EF FF               [12] 1278 	mov	r7,a
      0002F0 C4               [12] 1279 	swap	a
      0002F1 54 0F            [12] 1280 	anl	a,#0x0f
      0002F3 FE               [12] 1281 	mov	r6,a
                                   1282 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:170: GpioPin pin = (GpioPin) (ioPin & 0x0f);
      0002F4 53 07 0F         [24] 1283 	anl	ar7,#0x0f
                                   1284 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:171: bool rc = (port < 8 && pin < 8);
      0002F7 BE 08 00         [24] 1285 	cjne	r6,#0x08,00116$
      0002FA                       1286 00116$:
      0002FA 50 05            [24] 1287 	jnc	00105$
      0002FC BF 08 00         [24] 1288 	cjne	r7,#0x08,00118$
      0002FF                       1289 00118$:
      0002FF 40 04            [24] 1290 	jc	00106$
      000301                       1291 00105$:
      000301 7D 00            [12] 1292 	mov	r5,#0x00
      000303 80 02            [24] 1293 	sjmp	00107$
      000305                       1294 00106$:
      000305 7D 01            [12] 1295 	mov	r5,#0x01
      000307                       1296 00107$:
      000307 90 00 34         [24] 1297 	mov	dptr,#_configurePin_rc_65536_157
      00030A ED               [12] 1298 	mov	a,r5
      00030B F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:173: if (rc) {
      00030C E0               [24] 1301 	movx	a,@dptr
      00030D 60 4B            [24] 1302 	jz	00102$
                                   1303 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:174: GpioConfig pinConfig = GPIO_PIN_CONFIG(port, pin, pinMode);
      00030F 90 00 35         [24] 1304 	mov	dptr,#_configurePin_pinConfig_131072_158
      000312 EE               [12] 1305 	mov	a,r6
      000313 F0               [24] 1306 	movx	@dptr,a
      000314 90 00 36         [24] 1307 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0001)
      000317 EF               [12] 1308 	mov	a,r7
      000318 F0               [24] 1309 	movx	@dptr,a
      000319 90 00 37         [24] 1310 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0002)
      00031C 74 01            [12] 1311 	mov	a,#0x01
      00031E F0               [24] 1312 	movx	@dptr,a
      00031F 90 00 32         [24] 1313 	mov	dptr,#_configurePin_PARM_2
      000322 E0               [24] 1314 	movx	a,@dptr
      000323 90 00 38         [24] 1315 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0003)
      000326 F0               [24] 1316 	movx	@dptr,a
      000327 90 00 39         [24] 1317 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0004)
      00032A E4               [12] 1318 	clr	a
      00032B F0               [24] 1319 	movx	@dptr,a
      00032C 90 00 3A         [24] 1320 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0005)
      00032F F0               [24] 1321 	movx	@dptr,a
      000330 90 00 3B         [24] 1322 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0006)
      000333 74 03            [12] 1323 	mov	a,#0x03
      000335 F0               [24] 1324 	movx	@dptr,a
      000336 90 00 3C         [24] 1325 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0007)
      000339 74 01            [12] 1326 	mov	a,#0x01
      00033B F0               [24] 1327 	movx	@dptr,a
      00033C 90 00 3D         [24] 1328 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0008)
      00033F E4               [12] 1329 	clr	a
      000340 F0               [24] 1330 	movx	@dptr,a
      000341 90 00 3E         [24] 1331 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0009)
      000344 F0               [24] 1332 	movx	@dptr,a
      000345 90 00 3F         [24] 1333 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000a)
      000348 F0               [24] 1334 	movx	@dptr,a
      000349 90 00 40         [24] 1335 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000b)
      00034C F0               [24] 1336 	movx	@dptr,a
      00034D 90 00 41         [24] 1337 	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000c)
      000350 F0               [24] 1338 	movx	@dptr,a
                                   1339 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:175: gpioConfigure(&pinConfig);
      000351 90 00 35         [24] 1340 	mov	dptr,#_configurePin_pinConfig_131072_158
      000354 75 F0 00         [24] 1341 	mov	b,#0x00
      000357 12 18 44         [24] 1342 	lcall	_gpioConfigure
      00035A                       1343 00102$:
                                   1344 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:178: return rc;
      00035A 90 00 34         [24] 1345 	mov	dptr,#_configurePin_rc_65536_157
      00035D E0               [24] 1346 	movx	a,@dptr
                                   1347 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:179: }
      00035E F5 82            [12] 1348 	mov	dpl,a
      000360 22               [24] 1349 	ret
                                   1350 ;------------------------------------------------------------
                                   1351 ;Allocation info for local variables in function 'applyPinSwitch'
                                   1352 ;------------------------------------------------------------
                                   1353 ;pinSwitch                 Allocated with name '_applyPinSwitch_PARM_2'
                                   1354 ;channel                   Allocated with name '_applyPinSwitch_channel_65536_159'
                                   1355 ;------------------------------------------------------------
                                   1356 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:181: static void applyPinSwitch(PWM_Channel channel, uint8_t pinSwitch) {
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function applyPinSwitch
                                   1359 ;	-----------------------------------------
      000361                       1360 _applyPinSwitch:
      000361 E5 82            [12] 1361 	mov	a,dpl
      000363 90 00 43         [24] 1362 	mov	dptr,#_applyPinSwitch_channel_65536_159
      000366 F0               [24] 1363 	movx	@dptr,a
                                   1364 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:182: if (pinSwitch >= PIN_CONFIG_MAX) {
      000367 90 00 42         [24] 1365 	mov	dptr,#_applyPinSwitch_PARM_2
      00036A E0               [24] 1366 	movx	a,@dptr
      00036B FF               [12] 1367 	mov	r7,a
      00036C BF 03 00         [24] 1368 	cjne	r7,#0x03,00116$
      00036F                       1369 00116$:
      00036F 40 05            [24] 1370 	jc	00102$
                                   1371 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:183: pinSwitch = 0;
      000371 90 00 42         [24] 1372 	mov	dptr,#_applyPinSwitch_PARM_2
      000374 E4               [12] 1373 	clr	a
      000375 F0               [24] 1374 	movx	@dptr,a
      000376                       1375 00102$:
                                   1376 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:187: if (channel < PWM_Channel4) {
      000376 90 00 43         [24] 1377 	mov	dptr,#_applyPinSwitch_channel_65536_159
      000379 E0               [24] 1378 	movx	a,@dptr
      00037A FF               [12] 1379 	mov	r7,a
      00037B BF 08 00         [24] 1380 	cjne	r7,#0x08,00118$
      00037E                       1381 00118$:
      00037E 50 2C            [24] 1382 	jnc	00104$
                                   1383 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:189: PWMA_PS = (PWMA_PS & ~(3 << channel)) | (pinSwitch << channel);
      000380 8F 06            [24] 1384 	mov	ar6,r7
      000382 8E F0            [24] 1385 	mov	b,r6
      000384 05 F0            [12] 1386 	inc	b
      000386 74 03            [12] 1387 	mov	a,#0x03
      000388 80 02            [24] 1388 	sjmp	00122$
      00038A                       1389 00120$:
      00038A 25 E0            [12] 1390 	add	a,acc
      00038C                       1391 00122$:
      00038C D5 F0 FB         [24] 1392 	djnz	b,00120$
      00038F F4               [12] 1393 	cpl	a
      000390 FE               [12] 1394 	mov	r6,a
      000391 90 FE B2         [24] 1395 	mov	dptr,#_PWMA_PS
      000394 E0               [24] 1396 	movx	a,@dptr
      000395 52 06            [12] 1397 	anl	ar6,a
      000397 90 00 42         [24] 1398 	mov	dptr,#_applyPinSwitch_PARM_2
      00039A E0               [24] 1399 	movx	a,@dptr
      00039B 8F F0            [24] 1400 	mov	b,r7
      00039D 05 F0            [12] 1401 	inc	b
      00039F 80 02            [24] 1402 	sjmp	00125$
      0003A1                       1403 00123$:
      0003A1 25 E0            [12] 1404 	add	a,acc
      0003A3                       1405 00125$:
      0003A3 D5 F0 FB         [24] 1406 	djnz	b,00123$
      0003A6 90 FE B2         [24] 1407 	mov	dptr,#_PWMA_PS
      0003A9 4E               [12] 1408 	orl	a,r6
      0003AA F0               [24] 1409 	movx	@dptr,a
      0003AB 22               [24] 1410 	ret
      0003AC                       1411 00104$:
                                   1412 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:192: channel -= 8;
      0003AC EF               [12] 1413 	mov	a,r7
      0003AD 24 F8            [12] 1414 	add	a,#0xf8
      0003AF 90 00 43         [24] 1415 	mov	dptr,#_applyPinSwitch_channel_65536_159
      0003B2 F0               [24] 1416 	movx	@dptr,a
                                   1417 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:193: PWMB_PS = (PWMB_PS & ~(3 << channel)) | (pinSwitch << channel);
      0003B3 E0               [24] 1418 	movx	a,@dptr
      0003B4 FF               [12] 1419 	mov	r7,a
      0003B5 FE               [12] 1420 	mov	r6,a
      0003B6 8E F0            [24] 1421 	mov	b,r6
      0003B8 05 F0            [12] 1422 	inc	b
      0003BA 74 03            [12] 1423 	mov	a,#0x03
      0003BC 80 02            [24] 1424 	sjmp	00128$
      0003BE                       1425 00126$:
      0003BE 25 E0            [12] 1426 	add	a,acc
      0003C0                       1427 00128$:
      0003C0 D5 F0 FB         [24] 1428 	djnz	b,00126$
      0003C3 F4               [12] 1429 	cpl	a
      0003C4 FE               [12] 1430 	mov	r6,a
      0003C5 90 FE B6         [24] 1431 	mov	dptr,#_PWMB_PS
      0003C8 E0               [24] 1432 	movx	a,@dptr
      0003C9 52 06            [12] 1433 	anl	ar6,a
      0003CB 90 00 42         [24] 1434 	mov	dptr,#_applyPinSwitch_PARM_2
      0003CE E0               [24] 1435 	movx	a,@dptr
      0003CF 8F F0            [24] 1436 	mov	b,r7
      0003D1 05 F0            [12] 1437 	inc	b
      0003D3 80 02            [24] 1438 	sjmp	00131$
      0003D5                       1439 00129$:
      0003D5 25 E0            [12] 1440 	add	a,acc
      0003D7                       1441 00131$:
      0003D7 D5 F0 FB         [24] 1442 	djnz	b,00129$
      0003DA 90 FE B6         [24] 1443 	mov	dptr,#_PWMB_PS
      0003DD 4E               [12] 1444 	orl	a,r6
      0003DE F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:196: }
      0003DF 22               [24] 1447 	ret
                                   1448 ;------------------------------------------------------------
                                   1449 ;Allocation info for local variables in function 'enableOutput'
                                   1450 ;------------------------------------------------------------
                                   1451 ;offset                    Allocated with name '_enableOutput_PARM_2'
                                   1452 ;channel                   Allocated with name '_enableOutput_channel_65536_164'
                                   1453 ;------------------------------------------------------------
                                   1454 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:198: static void enableOutput(PWM_Channel channel, uint8_t offset) {
                                   1455 ;	-----------------------------------------
                                   1456 ;	 function enableOutput
                                   1457 ;	-----------------------------------------
      0003E0                       1458 _enableOutput:
      0003E0 E5 82            [12] 1459 	mov	a,dpl
      0003E2 90 00 45         [24] 1460 	mov	dptr,#_enableOutput_channel_65536_164
      0003E5 F0               [24] 1461 	movx	@dptr,a
                                   1462 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:200: if (channel < PWM_Channel4) {
      0003E6 E0               [24] 1463 	movx	a,@dptr
      0003E7 FF               [12] 1464 	mov	r7,a
      0003E8 BF 08 00         [24] 1465 	cjne	r7,#0x08,00110$
      0003EB                       1466 00110$:
      0003EB 50 1B            [24] 1467 	jnc	00102$
                                   1468 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:202: PWMA_ENO |= 1 << (channel + offset);
      0003ED 90 00 44         [24] 1469 	mov	dptr,#_enableOutput_PARM_2
      0003F0 E0               [24] 1470 	movx	a,@dptr
      0003F1 2F               [12] 1471 	add	a,r7
      0003F2 FE               [12] 1472 	mov	r6,a
      0003F3 8E F0            [24] 1473 	mov	b,r6
      0003F5 05 F0            [12] 1474 	inc	b
      0003F7 74 01            [12] 1475 	mov	a,#0x01
      0003F9 80 02            [24] 1476 	sjmp	00114$
      0003FB                       1477 00112$:
      0003FB 25 E0            [12] 1478 	add	a,acc
      0003FD                       1479 00114$:
      0003FD D5 F0 FB         [24] 1480 	djnz	b,00112$
      000400 FE               [12] 1481 	mov	r6,a
      000401 90 FE B1         [24] 1482 	mov	dptr,#_PWMA_ENO
      000404 E0               [24] 1483 	movx	a,@dptr
      000405 4E               [12] 1484 	orl	a,r6
      000406 F0               [24] 1485 	movx	@dptr,a
      000407 22               [24] 1486 	ret
      000408                       1487 00102$:
                                   1488 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:205: PWMB_ENO |= 1 << (channel - PWM_Channel4);
      000408 EF               [12] 1489 	mov	a,r7
      000409 24 F8            [12] 1490 	add	a,#0xf8
      00040B F5 F0            [12] 1491 	mov	b,a
      00040D 05 F0            [12] 1492 	inc	b
      00040F 74 01            [12] 1493 	mov	a,#0x01
      000411 80 02            [24] 1494 	sjmp	00117$
      000413                       1495 00115$:
      000413 25 E0            [12] 1496 	add	a,acc
      000415                       1497 00117$:
      000415 D5 F0 FB         [24] 1498 	djnz	b,00115$
      000418 FF               [12] 1499 	mov	r7,a
      000419 90 FE B5         [24] 1500 	mov	dptr,#_PWMB_ENO
      00041C E0               [24] 1501 	movx	a,@dptr
      00041D 4F               [12] 1502 	orl	a,r7
      00041E F0               [24] 1503 	movx	@dptr,a
                                   1504 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:208: }
      00041F 22               [24] 1505 	ret
                                   1506 ;------------------------------------------------------------
                                   1507 ;Allocation info for local variables in function 'enableChannel'
                                   1508 ;------------------------------------------------------------
                                   1509 ;offset                    Allocated with name '_enableChannel_PARM_2'
                                   1510 ;polarity                  Allocated with name '_enableChannel_PARM_3'
                                   1511 ;channel                   Allocated with name '_enableChannel_channel_65536_168'
                                   1512 ;reg2                      Allocated with name '_enableChannel_reg2_65536_169'
                                   1513 ;bitVal                    Allocated with name '_enableChannel_bitVal_65536_169'
                                   1514 ;bitPos                    Allocated with name '_enableChannel_bitPos_131072_170'
                                   1515 ;bitMask                   Allocated with name '_enableChannel_bitMask_131073_172'
                                   1516 ;bitPos                    Allocated with name '_enableChannel_bitPos_131072_175'
                                   1517 ;bitMask                   Allocated with name '_enableChannel_bitMask_131073_177'
                                   1518 ;------------------------------------------------------------
                                   1519 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:210: static void enableChannel(PWM_Channel channel, uint8_t offset, PWM_Polarity polarity) {
                                   1520 ;	-----------------------------------------
                                   1521 ;	 function enableChannel
                                   1522 ;	-----------------------------------------
      000420                       1523 _enableChannel:
      000420 E5 82            [12] 1524 	mov	a,dpl
      000422 90 00 48         [24] 1525 	mov	dptr,#_enableChannel_channel_65536_168
      000425 F0               [24] 1526 	movx	@dptr,a
                                   1527 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:211: bool reg2 = false;
      000426 90 00 49         [24] 1528 	mov	dptr,#_enableChannel_reg2_65536_169
      000429 E4               [12] 1529 	clr	a
      00042A F0               [24] 1530 	movx	@dptr,a
                                   1531 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:212: uint8_t bitVal = (polarity << 1) | 1;
      00042B 90 00 47         [24] 1532 	mov	dptr,#_enableChannel_PARM_3
      00042E E0               [24] 1533 	movx	a,@dptr
      00042F 25 E0            [12] 1534 	add	a,acc
      000431 FF               [12] 1535 	mov	r7,a
      000432 43 07 01         [24] 1536 	orl	ar7,#0x01
                                   1537 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:215: if (channel < PWM_Channel4) {
      000435 90 00 48         [24] 1538 	mov	dptr,#_enableChannel_channel_65536_168
      000438 E0               [24] 1539 	movx	a,@dptr
      000439 FE               [12] 1540 	mov	r6,a
      00043A BE 08 00         [24] 1541 	cjne	r6,#0x08,00136$
      00043D                       1542 00136$:
      00043D 50 58            [24] 1543 	jnc	00112$
                                   1544 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:217: uint8_t bitPos = (channel + offset) << 1;
      00043F 90 00 46         [24] 1545 	mov	dptr,#_enableChannel_PARM_2
      000442 E0               [24] 1546 	movx	a,@dptr
      000443 2E               [12] 1547 	add	a,r6
      000444 25 E0            [12] 1548 	add	a,acc
      000446 FD               [12] 1549 	mov	r5,a
      000447 90 00 4A         [24] 1550 	mov	dptr,#_enableChannel_bitPos_131072_170
      00044A F0               [24] 1551 	movx	@dptr,a
                                   1552 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:219: if (bitPos > 7) {
      00044B 8D 04            [24] 1553 	mov	ar4,r5
      00044D EC               [12] 1554 	mov	a,r4
      00044E 24 F8            [12] 1555 	add	a,#0xff - 0x07
      000450 50 0D            [24] 1556 	jnc	00102$
                                   1557 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:220: bitPos -= 8;
      000452 ED               [12] 1558 	mov	a,r5
      000453 24 F8            [12] 1559 	add	a,#0xf8
      000455 90 00 4A         [24] 1560 	mov	dptr,#_enableChannel_bitPos_131072_170
      000458 F0               [24] 1561 	movx	@dptr,a
                                   1562 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:221: reg2 = true;
      000459 90 00 49         [24] 1563 	mov	dptr,#_enableChannel_reg2_65536_169
      00045C 74 01            [12] 1564 	mov	a,#0x01
      00045E F0               [24] 1565 	movx	@dptr,a
      00045F                       1566 00102$:
                                   1567 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:224: uint8_t bitMask = ~(3 << bitPos);
      00045F 90 00 4A         [24] 1568 	mov	dptr,#_enableChannel_bitPos_131072_170
      000462 E0               [24] 1569 	movx	a,@dptr
      000463 FD               [12] 1570 	mov	r5,a
      000464 FC               [12] 1571 	mov	r4,a
      000465 8C F0            [24] 1572 	mov	b,r4
      000467 05 F0            [12] 1573 	inc	b
      000469 74 03            [12] 1574 	mov	a,#0x03
      00046B 80 02            [24] 1575 	sjmp	00141$
      00046D                       1576 00139$:
      00046D 25 E0            [12] 1577 	add	a,acc
      00046F                       1578 00141$:
      00046F D5 F0 FB         [24] 1579 	djnz	b,00139$
      000472 F4               [12] 1580 	cpl	a
      000473 FC               [12] 1581 	mov	r4,a
                                   1582 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:225: bitVal <<= bitPos;
      000474 8D F0            [24] 1583 	mov	b,r5
      000476 05 F0            [12] 1584 	inc	b
      000478 EF               [12] 1585 	mov	a,r7
      000479 80 02            [24] 1586 	sjmp	00144$
      00047B                       1587 00142$:
      00047B 25 E0            [12] 1588 	add	a,acc
      00047D                       1589 00144$:
      00047D D5 F0 FB         [24] 1590 	djnz	b,00142$
      000480 FD               [12] 1591 	mov	r5,a
                                   1592 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:227: if (reg2) {
      000481 90 00 49         [24] 1593 	mov	dptr,#_enableChannel_reg2_65536_169
      000484 E0               [24] 1594 	movx	a,@dptr
      000485 60 08            [24] 1595 	jz	00104$
                                   1596 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:228: PWMA_CCER2 = (PWMA_CCER2 & bitMask) | bitVal;
      000487 90 FE CD         [24] 1597 	mov	dptr,#_PWMA_CCER2
      00048A E0               [24] 1598 	movx	a,@dptr
      00048B 5C               [12] 1599 	anl	a,r4
      00048C 4D               [12] 1600 	orl	a,r5
      00048D F0               [24] 1601 	movx	@dptr,a
      00048E 22               [24] 1602 	ret
      00048F                       1603 00104$:
                                   1604 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:230: PWMA_CCER1 = (PWMA_CCER1 & bitMask) | bitVal;
      00048F 90 FE CC         [24] 1605 	mov	dptr,#_PWMA_CCER1
      000492 E0               [24] 1606 	movx	a,@dptr
      000493 5C               [12] 1607 	anl	a,r4
      000494 4D               [12] 1608 	orl	a,r5
      000495 F0               [24] 1609 	movx	@dptr,a
      000496 22               [24] 1610 	ret
      000497                       1611 00112$:
                                   1612 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:234: uint8_t bitPos = (channel - PWM_Channel4) << 1;
      000497 EE               [12] 1613 	mov	a,r6
      000498 24 F8            [12] 1614 	add	a,#0xf8
      00049A 25 E0            [12] 1615 	add	a,acc
      00049C FE               [12] 1616 	mov	r6,a
      00049D 90 00 4B         [24] 1617 	mov	dptr,#_enableChannel_bitPos_131072_175
      0004A0 F0               [24] 1618 	movx	@dptr,a
                                   1619 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:236: if (bitPos > 7) {
      0004A1 8E 05            [24] 1620 	mov	ar5,r6
      0004A3 ED               [12] 1621 	mov	a,r5
      0004A4 24 F8            [12] 1622 	add	a,#0xff - 0x07
      0004A6 50 0D            [24] 1623 	jnc	00107$
                                   1624 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:237: bitPos -= 8;
      0004A8 EE               [12] 1625 	mov	a,r6
      0004A9 24 F8            [12] 1626 	add	a,#0xf8
      0004AB 90 00 4B         [24] 1627 	mov	dptr,#_enableChannel_bitPos_131072_175
      0004AE F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:238: reg2 = true;
      0004AF 90 00 49         [24] 1630 	mov	dptr,#_enableChannel_reg2_65536_169
      0004B2 74 01            [12] 1631 	mov	a,#0x01
      0004B4 F0               [24] 1632 	movx	@dptr,a
      0004B5                       1633 00107$:
                                   1634 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:241: uint8_t bitMask = ~(3 << bitPos);
      0004B5 90 00 4B         [24] 1635 	mov	dptr,#_enableChannel_bitPos_131072_175
      0004B8 E0               [24] 1636 	movx	a,@dptr
      0004B9 FE               [12] 1637 	mov	r6,a
      0004BA FD               [12] 1638 	mov	r5,a
      0004BB 8D F0            [24] 1639 	mov	b,r5
      0004BD 05 F0            [12] 1640 	inc	b
      0004BF 74 03            [12] 1641 	mov	a,#0x03
      0004C1 80 02            [24] 1642 	sjmp	00149$
      0004C3                       1643 00147$:
      0004C3 25 E0            [12] 1644 	add	a,acc
      0004C5                       1645 00149$:
      0004C5 D5 F0 FB         [24] 1646 	djnz	b,00147$
      0004C8 F4               [12] 1647 	cpl	a
      0004C9 FD               [12] 1648 	mov	r5,a
                                   1649 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:242: bitVal <<= bitPos;
      0004CA 8E F0            [24] 1650 	mov	b,r6
      0004CC 05 F0            [12] 1651 	inc	b
      0004CE EF               [12] 1652 	mov	a,r7
      0004CF 80 02            [24] 1653 	sjmp	00152$
      0004D1                       1654 00150$:
      0004D1 25 E0            [12] 1655 	add	a,acc
      0004D3                       1656 00152$:
      0004D3 D5 F0 FB         [24] 1657 	djnz	b,00150$
      0004D6 FF               [12] 1658 	mov	r7,a
                                   1659 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:244: if (reg2) {
      0004D7 90 00 49         [24] 1660 	mov	dptr,#_enableChannel_reg2_65536_169
      0004DA E0               [24] 1661 	movx	a,@dptr
      0004DB 60 08            [24] 1662 	jz	00109$
                                   1663 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:245: PWMB_CCER2 = (PWMB_CCER2 & bitMask) | bitVal;
      0004DD 90 FE ED         [24] 1664 	mov	dptr,#_PWMB_CCER2
      0004E0 E0               [24] 1665 	movx	a,@dptr
      0004E1 5D               [12] 1666 	anl	a,r5
      0004E2 4F               [12] 1667 	orl	a,r7
      0004E3 F0               [24] 1668 	movx	@dptr,a
      0004E4 22               [24] 1669 	ret
      0004E5                       1670 00109$:
                                   1671 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:247: PWMB_CCER1 = (PWMB_CCER1 & bitMask) | bitVal;
      0004E5 90 FE EC         [24] 1672 	mov	dptr,#_PWMB_CCER1
      0004E8 E0               [24] 1673 	movx	a,@dptr
      0004E9 5D               [12] 1674 	anl	a,r5
      0004EA 4F               [12] 1675 	orl	a,r7
      0004EB F0               [24] 1676 	movx	@dptr,a
                                   1677 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:251: }
      0004EC 22               [24] 1678 	ret
                                   1679 ;------------------------------------------------------------
                                   1680 ;Allocation info for local variables in function 'enableFaultControl'
                                   1681 ;------------------------------------------------------------
                                   1682 ;offset                    Allocated with name '_enableFaultControl_PARM_2'
                                   1683 ;faultControl              Allocated with name '_enableFaultControl_PARM_3'
                                   1684 ;idleLevel                 Allocated with name '_enableFaultControl_PARM_4'
                                   1685 ;channel                   Allocated with name '_enableFaultControl_channel_65536_180'
                                   1686 ;------------------------------------------------------------
                                   1687 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:253: static void enableFaultControl(PWM_Channel channel, uint8_t offset, PWM_FaultControl faultControl, OutputLevel idleLevel) {
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function enableFaultControl
                                   1690 ;	-----------------------------------------
      0004ED                       1691 _enableFaultControl:
      0004ED E5 82            [12] 1692 	mov	a,dpl
      0004EF 90 00 4F         [24] 1693 	mov	dptr,#_enableFaultControl_channel_65536_180
      0004F2 F0               [24] 1694 	movx	@dptr,a
                                   1695 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:254: if (faultControl == PWM_ENABLE_FAULT_CONTROL) {
      0004F3 90 00 4D         [24] 1696 	mov	dptr,#_enableFaultControl_PARM_3
      0004F6 E0               [24] 1697 	movx	a,@dptr
      0004F7 FF               [12] 1698 	mov	r7,a
      0004F8 BF 01 6E         [24] 1699 	cjne	r7,#0x01,00106$
                                   1700 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:256: if (channel < PWM_Channel4) {
      0004FB 90 00 4F         [24] 1701 	mov	dptr,#_enableFaultControl_channel_65536_180
      0004FE E0               [24] 1702 	movx	a,@dptr
      0004FF FF               [12] 1703 	mov	r7,a
      000500 BF 08 00         [24] 1704 	cjne	r7,#0x08,00118$
      000503                       1705 00118$:
      000503 50 32            [24] 1706 	jnc	00102$
                                   1707 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:258: PWMA_IOAUX |= 1 << (channel + offset);
      000505 90 00 4C         [24] 1708 	mov	dptr,#_enableFaultControl_PARM_2
      000508 E0               [24] 1709 	movx	a,@dptr
      000509 2F               [12] 1710 	add	a,r7
      00050A FE               [12] 1711 	mov	r6,a
      00050B FD               [12] 1712 	mov	r5,a
      00050C 8D F0            [24] 1713 	mov	b,r5
      00050E 05 F0            [12] 1714 	inc	b
      000510 74 01            [12] 1715 	mov	a,#0x01
      000512 80 02            [24] 1716 	sjmp	00122$
      000514                       1717 00120$:
      000514 25 E0            [12] 1718 	add	a,acc
      000516                       1719 00122$:
      000516 D5 F0 FB         [24] 1720 	djnz	b,00120$
      000519 FD               [12] 1721 	mov	r5,a
      00051A 90 FE B3         [24] 1722 	mov	dptr,#_PWMA_IOAUX
      00051D E0               [24] 1723 	movx	a,@dptr
      00051E 4D               [12] 1724 	orl	a,r5
      00051F F0               [24] 1725 	movx	@dptr,a
                                   1726 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:259: PWMA_OISR |= idleLevel << (channel + offset);
      000520 90 00 4E         [24] 1727 	mov	dptr,#_enableFaultControl_PARM_4
      000523 E0               [24] 1728 	movx	a,@dptr
      000524 8E F0            [24] 1729 	mov	b,r6
      000526 05 F0            [12] 1730 	inc	b
      000528 80 02            [24] 1731 	sjmp	00125$
      00052A                       1732 00123$:
      00052A 25 E0            [12] 1733 	add	a,acc
      00052C                       1734 00125$:
      00052C D5 F0 FB         [24] 1735 	djnz	b,00123$
      00052F FE               [12] 1736 	mov	r6,a
      000530 90 FE DF         [24] 1737 	mov	dptr,#_PWMA_OISR
      000533 E0               [24] 1738 	movx	a,@dptr
      000534 4E               [12] 1739 	orl	a,r6
      000535 F0               [24] 1740 	movx	@dptr,a
      000536 22               [24] 1741 	ret
      000537                       1742 00102$:
                                   1743 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:262: PWMB_IOAUX |= 1 << (channel - PWM_Channel4);
      000537 EF               [12] 1744 	mov	a,r7
      000538 24 F8            [12] 1745 	add	a,#0xf8
      00053A FF               [12] 1746 	mov	r7,a
      00053B 8F F0            [24] 1747 	mov	b,r7
      00053D 05 F0            [12] 1748 	inc	b
      00053F 74 01            [12] 1749 	mov	a,#0x01
      000541 80 02            [24] 1750 	sjmp	00128$
      000543                       1751 00126$:
      000543 25 E0            [12] 1752 	add	a,acc
      000545                       1753 00128$:
      000545 D5 F0 FB         [24] 1754 	djnz	b,00126$
      000548 FE               [12] 1755 	mov	r6,a
      000549 90 FE B7         [24] 1756 	mov	dptr,#_PWMB_IOAUX
      00054C E0               [24] 1757 	movx	a,@dptr
      00054D FD               [12] 1758 	mov	r5,a
      00054E 4E               [12] 1759 	orl	a,r6
      00054F F0               [24] 1760 	movx	@dptr,a
                                   1761 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:263: PWMB_OISR |= idleLevel << (channel - PWM_Channel4);
      000550 90 00 4E         [24] 1762 	mov	dptr,#_enableFaultControl_PARM_4
      000553 E0               [24] 1763 	movx	a,@dptr
      000554 FE               [12] 1764 	mov	r6,a
      000555 8F F0            [24] 1765 	mov	b,r7
      000557 05 F0            [12] 1766 	inc	b
      000559 EE               [12] 1767 	mov	a,r6
      00055A 80 02            [24] 1768 	sjmp	00131$
      00055C                       1769 00129$:
      00055C 25 E0            [12] 1770 	add	a,acc
      00055E                       1771 00131$:
      00055E D5 F0 FB         [24] 1772 	djnz	b,00129$
      000561 FF               [12] 1773 	mov	r7,a
      000562 90 FE FF         [24] 1774 	mov	dptr,#_PWMB_OISR
      000565 E0               [24] 1775 	movx	a,@dptr
      000566 FE               [12] 1776 	mov	r6,a
      000567 4F               [12] 1777 	orl	a,r7
      000568 F0               [24] 1778 	movx	@dptr,a
      000569                       1779 00106$:
                                   1780 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:267: }
      000569 22               [24] 1781 	ret
                                   1782 ;------------------------------------------------------------
                                   1783 ;Allocation info for local variables in function 'closeChannel'
                                   1784 ;------------------------------------------------------------
                                   1785 ;channel                   Allocated with name '_closeChannel_channel_65536_185'
                                   1786 ;------------------------------------------------------------
                                   1787 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:269: static void closeChannel(PWM_Channel channel) {
                                   1788 ;	-----------------------------------------
                                   1789 ;	 function closeChannel
                                   1790 ;	-----------------------------------------
      00056A                       1791 _closeChannel:
      00056A E5 82            [12] 1792 	mov	a,dpl
      00056C 90 00 50         [24] 1793 	mov	dptr,#_closeChannel_channel_65536_185
      00056F F0               [24] 1794 	movx	@dptr,a
                                   1795 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:270: switch (channel) {
      000570 E0               [24] 1796 	movx	a,@dptr
      000571 FF               [12] 1797 	mov  r7,a
      000572 24 F1            [12] 1798 	add	a,#0xff - 0x0e
      000574 50 01            [24] 1799 	jnc	00116$
      000576 22               [24] 1800 	ret
      000577                       1801 00116$:
      000577 EF               [12] 1802 	mov	a,r7
      000578 24 0A            [12] 1803 	add	a,#(00117$-3-.)
      00057A 83               [24] 1804 	movc	a,@a+pc
      00057B F5 82            [12] 1805 	mov	dpl,a
      00057D EF               [12] 1806 	mov	a,r7
      00057E 24 13            [12] 1807 	add	a,#(00118$-3-.)
      000580 83               [24] 1808 	movc	a,@a+pc
      000581 F5 83            [12] 1809 	mov	dph,a
      000583 E4               [12] 1810 	clr	a
      000584 73               [24] 1811 	jmp	@a+dptr
      000585                       1812 00117$:
      000585 A3                    1813 	.db	00101$
      000586 EA                    1814 	.db	00110$
      000587 AC                    1815 	.db	00102$
      000588 EA                    1816 	.db	00110$
      000589 B5                    1817 	.db	00103$
      00058A EA                    1818 	.db	00110$
      00058B BE                    1819 	.db	00104$
      00058C EA                    1820 	.db	00110$
      00058D C7                    1821 	.db	00105$
      00058E EA                    1822 	.db	00110$
      00058F D0                    1823 	.db	00106$
      000590 EA                    1824 	.db	00110$
      000591 D9                    1825 	.db	00107$
      000592 EA                    1826 	.db	00110$
      000593 E2                    1827 	.db	00108$
      000594                       1828 00118$:
      000594 05                    1829 	.db	00101$>>8
      000595 05                    1830 	.db	00110$>>8
      000596 05                    1831 	.db	00102$>>8
      000597 05                    1832 	.db	00110$>>8
      000598 05                    1833 	.db	00103$>>8
      000599 05                    1834 	.db	00110$>>8
      00059A 05                    1835 	.db	00104$>>8
      00059B 05                    1836 	.db	00110$>>8
      00059C 05                    1837 	.db	00105$>>8
      00059D 05                    1838 	.db	00110$>>8
      00059E 05                    1839 	.db	00106$>>8
      00059F 05                    1840 	.db	00110$>>8
      0005A0 05                    1841 	.db	00107$>>8
      0005A1 05                    1842 	.db	00110$>>8
      0005A2 05                    1843 	.db	00108$>>8
                                   1844 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:271: case PWM_Channel0:
      0005A3                       1845 00101$:
                                   1846 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:272: PWMA_CCER1 &= 0xf0;
      0005A3 90 FE CC         [24] 1847 	mov	dptr,#_PWMA_CCER1
      0005A6 E0               [24] 1848 	movx	a,@dptr
      0005A7 53 E0 F0         [24] 1849 	anl	acc,#0xf0
      0005AA F0               [24] 1850 	movx	@dptr,a
                                   1851 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:273: break;
                                   1852 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:275: case PWM_Channel1:
      0005AB 22               [24] 1853 	ret
      0005AC                       1854 00102$:
                                   1855 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:276: PWMA_CCER1 &= 0x0f;
      0005AC 90 FE CC         [24] 1856 	mov	dptr,#_PWMA_CCER1
      0005AF E0               [24] 1857 	movx	a,@dptr
      0005B0 53 E0 0F         [24] 1858 	anl	acc,#0x0f
      0005B3 F0               [24] 1859 	movx	@dptr,a
                                   1860 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:277: break;
                                   1861 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:280: case PWM_Channel2:
      0005B4 22               [24] 1862 	ret
      0005B5                       1863 00103$:
                                   1864 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:281: PWMA_CCER2 &= 0xf0;
      0005B5 90 FE CD         [24] 1865 	mov	dptr,#_PWMA_CCER2
      0005B8 E0               [24] 1866 	movx	a,@dptr
      0005B9 53 E0 F0         [24] 1867 	anl	acc,#0xf0
      0005BC F0               [24] 1868 	movx	@dptr,a
                                   1869 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:282: break;
                                   1870 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:283: case PWM_Channel3:
      0005BD 22               [24] 1871 	ret
      0005BE                       1872 00104$:
                                   1873 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:284: PWMA_CCER2 &= 0x0f;
      0005BE 90 FE CD         [24] 1874 	mov	dptr,#_PWMA_CCER2
      0005C1 E0               [24] 1875 	movx	a,@dptr
      0005C2 53 E0 0F         [24] 1876 	anl	acc,#0x0f
      0005C5 F0               [24] 1877 	movx	@dptr,a
                                   1878 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:285: break;
                                   1879 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:288: case PWM_Channel4:
      0005C6 22               [24] 1880 	ret
      0005C7                       1881 00105$:
                                   1882 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:289: PWMB_CCER1 &= 0xf0;
      0005C7 90 FE EC         [24] 1883 	mov	dptr,#_PWMB_CCER1
      0005CA E0               [24] 1884 	movx	a,@dptr
      0005CB 53 E0 F0         [24] 1885 	anl	acc,#0xf0
      0005CE F0               [24] 1886 	movx	@dptr,a
                                   1887 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:290: break;
                                   1888 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:291: case PWM_Channel5:
      0005CF 22               [24] 1889 	ret
      0005D0                       1890 00106$:
                                   1891 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:292: PWMB_CCER1 &= 0x0f;
      0005D0 90 FE EC         [24] 1892 	mov	dptr,#_PWMB_CCER1
      0005D3 E0               [24] 1893 	movx	a,@dptr
      0005D4 53 E0 0F         [24] 1894 	anl	acc,#0x0f
      0005D7 F0               [24] 1895 	movx	@dptr,a
                                   1896 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:293: break;
                                   1897 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:294: case PWM_Channel6:
      0005D8 22               [24] 1898 	ret
      0005D9                       1899 00107$:
                                   1900 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:295: PWMB_CCER2 &= 0xf0;
      0005D9 90 FE ED         [24] 1901 	mov	dptr,#_PWMB_CCER2
      0005DC E0               [24] 1902 	movx	a,@dptr
      0005DD 53 E0 F0         [24] 1903 	anl	acc,#0xf0
      0005E0 F0               [24] 1904 	movx	@dptr,a
                                   1905 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:296: break;
                                   1906 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:297: case PWM_Channel7:
      0005E1 22               [24] 1907 	ret
      0005E2                       1908 00108$:
                                   1909 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:298: PWMB_CCER2 &= 0x0f;
      0005E2 90 FE ED         [24] 1910 	mov	dptr,#_PWMB_CCER2
      0005E5 E0               [24] 1911 	movx	a,@dptr
      0005E6 53 E0 0F         [24] 1912 	anl	acc,#0x0f
      0005E9 F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:301: }
      0005EA                       1915 00110$:
                                   1916 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:302: }
      0005EA 22               [24] 1917 	ret
                                   1918 ;------------------------------------------------------------
                                   1919 ;Allocation info for local variables in function 'pwmConfigureOutput'
                                   1920 ;------------------------------------------------------------
                                   1921 ;pinSwitch                 Allocated with name '_pwmConfigureOutput_PARM_2'
                                   1922 ;pinMode                   Allocated with name '_pwmConfigureOutput_PARM_3'
                                   1923 ;polarity                  Allocated with name '_pwmConfigureOutput_PARM_4'
                                   1924 ;faultControl              Allocated with name '_pwmConfigureOutput_PARM_5'
                                   1925 ;idleLevel                 Allocated with name '_pwmConfigureOutput_PARM_6'
                                   1926 ;outputEnable              Allocated with name '_pwmConfigureOutput_PARM_7'
                                   1927 ;channel                   Allocated with name '_pwmConfigureOutput_channel_65536_188'
                                   1928 ;ok                        Allocated with name '_pwmConfigureOutput_ok_65537_191'
                                   1929 ;------------------------------------------------------------
                                   1930 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:304: void pwmConfigureOutput(
                                   1931 ;	-----------------------------------------
                                   1932 ;	 function pwmConfigureOutput
                                   1933 ;	-----------------------------------------
      0005EB                       1934 _pwmConfigureOutput:
      0005EB E5 82            [12] 1935 	mov	a,dpl
      0005ED 90 00 57         [24] 1936 	mov	dptr,#_pwmConfigureOutput_channel_65536_188
      0005F0 F0               [24] 1937 	movx	@dptr,a
                                   1938 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:313: if (pinMode == GPIO_HIGH_IMPEDANCE_MODE) {
      0005F1 90 00 52         [24] 1939 	mov	dptr,#_pwmConfigureOutput_PARM_3
      0005F4 E0               [24] 1940 	movx	a,@dptr
      0005F5 FF               [12] 1941 	mov	r7,a
      0005F6 BF 02 06         [24] 1942 	cjne	r7,#0x02,00102$
                                   1943 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:314: pinMode = GPIO_PUSH_PULL_MODE;
      0005F9 90 00 52         [24] 1944 	mov	dptr,#_pwmConfigureOutput_PARM_3
      0005FC 74 01            [12] 1945 	mov	a,#0x01
      0005FE F0               [24] 1946 	movx	@dptr,a
      0005FF                       1947 00102$:
                                   1948 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:317: bool ok = false;
      0005FF 90 00 58         [24] 1949 	mov	dptr,#_pwmConfigureOutput_ok_65537_191
      000602 E4               [12] 1950 	clr	a
      000603 F0               [24] 1951 	movx	@dptr,a
                                   1952 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:319: if (channel > PWM_Channel3 || (outputEnable & PWM_OUTPUT_P_ONLY)) {
      000604 90 00 57         [24] 1953 	mov	dptr,#_pwmConfigureOutput_channel_65536_188
      000607 E0               [24] 1954 	movx	a,@dptr
      000608 FF               [12] 1955 	mov  r7,a
      000609 24 F9            [12] 1956 	add	a,#0xff - 0x06
      00060B 40 07            [24] 1957 	jc	00105$
      00060D 90 00 56         [24] 1958 	mov	dptr,#_pwmConfigureOutput_PARM_7
      000610 E0               [24] 1959 	movx	a,@dptr
      000611 30 E0 78         [24] 1960 	jnb	acc.0,00106$
      000614                       1961 00105$:
                                   1962 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:320: if (configurePin(getChannelPin(channel, pinSwitch, 0), pinMode)) {
      000614 90 00 57         [24] 1963 	mov	dptr,#_pwmConfigureOutput_channel_65536_188
      000617 E0               [24] 1964 	movx	a,@dptr
      000618 FF               [12] 1965 	mov	r7,a
      000619 90 00 51         [24] 1966 	mov	dptr,#_pwmConfigureOutput_PARM_2
      00061C E0               [24] 1967 	movx	a,@dptr
      00061D 90 00 2E         [24] 1968 	mov	dptr,#_getChannelPin_PARM_2
      000620 F0               [24] 1969 	movx	@dptr,a
      000621 90 00 2F         [24] 1970 	mov	dptr,#_getChannelPin_PARM_3
      000624 E4               [12] 1971 	clr	a
      000625 F0               [24] 1972 	movx	@dptr,a
      000626 8F 82            [24] 1973 	mov	dpl,r7
      000628 C0 07            [24] 1974 	push	ar7
      00062A 12 02 70         [24] 1975 	lcall	_getChannelPin
      00062D AE 82            [24] 1976 	mov	r6,dpl
      00062F 90 00 52         [24] 1977 	mov	dptr,#_pwmConfigureOutput_PARM_3
      000632 E0               [24] 1978 	movx	a,@dptr
      000633 90 00 32         [24] 1979 	mov	dptr,#_configurePin_PARM_2
      000636 F0               [24] 1980 	movx	@dptr,a
      000637 8E 82            [24] 1981 	mov	dpl,r6
      000639 12 02 E8         [24] 1982 	lcall	_configurePin
      00063C E5 82            [12] 1983 	mov	a,dpl
      00063E D0 07            [24] 1984 	pop	ar7
      000640 60 4A            [24] 1985 	jz	00106$
                                   1986 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:321: enableOutput(channel, 0);
      000642 90 00 44         [24] 1987 	mov	dptr,#_enableOutput_PARM_2
      000645 E4               [12] 1988 	clr	a
      000646 F0               [24] 1989 	movx	@dptr,a
      000647 8F 82            [24] 1990 	mov	dpl,r7
      000649 C0 07            [24] 1991 	push	ar7
      00064B 12 03 E0         [24] 1992 	lcall	_enableOutput
      00064E D0 07            [24] 1993 	pop	ar7
                                   1994 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:322: enableChannel(channel, 0, polarity);
      000650 90 00 53         [24] 1995 	mov	dptr,#_pwmConfigureOutput_PARM_4
      000653 E0               [24] 1996 	movx	a,@dptr
      000654 FE               [12] 1997 	mov	r6,a
      000655 90 00 46         [24] 1998 	mov	dptr,#_enableChannel_PARM_2
      000658 E4               [12] 1999 	clr	a
      000659 F0               [24] 2000 	movx	@dptr,a
      00065A 90 00 47         [24] 2001 	mov	dptr,#_enableChannel_PARM_3
      00065D EE               [12] 2002 	mov	a,r6
      00065E F0               [24] 2003 	movx	@dptr,a
      00065F 8F 82            [24] 2004 	mov	dpl,r7
      000661 C0 07            [24] 2005 	push	ar7
      000663 12 04 20         [24] 2006 	lcall	_enableChannel
      000666 D0 07            [24] 2007 	pop	ar7
                                   2008 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:323: enableFaultControl(channel, 0, faultControl, idleLevel);
      000668 90 00 54         [24] 2009 	mov	dptr,#_pwmConfigureOutput_PARM_5
      00066B E0               [24] 2010 	movx	a,@dptr
      00066C FE               [12] 2011 	mov	r6,a
      00066D 90 00 55         [24] 2012 	mov	dptr,#_pwmConfigureOutput_PARM_6
      000670 E0               [24] 2013 	movx	a,@dptr
      000671 FD               [12] 2014 	mov	r5,a
      000672 90 00 4C         [24] 2015 	mov	dptr,#_enableFaultControl_PARM_2
      000675 E4               [12] 2016 	clr	a
      000676 F0               [24] 2017 	movx	@dptr,a
      000677 90 00 4D         [24] 2018 	mov	dptr,#_enableFaultControl_PARM_3
      00067A EE               [12] 2019 	mov	a,r6
      00067B F0               [24] 2020 	movx	@dptr,a
      00067C 90 00 4E         [24] 2021 	mov	dptr,#_enableFaultControl_PARM_4
      00067F ED               [12] 2022 	mov	a,r5
      000680 F0               [24] 2023 	movx	@dptr,a
      000681 8F 82            [24] 2024 	mov	dpl,r7
      000683 12 04 ED         [24] 2025 	lcall	_enableFaultControl
                                   2026 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:324: ok = true;
      000686 90 00 58         [24] 2027 	mov	dptr,#_pwmConfigureOutput_ok_65537_191
      000689 74 01            [12] 2028 	mov	a,#0x01
      00068B F0               [24] 2029 	movx	@dptr,a
      00068C                       2030 00106$:
                                   2031 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:328: if (channel <= PWM_Channel3 && (outputEnable & PWM_OUTPUT_N_ONLY)) {
      00068C 90 00 57         [24] 2032 	mov	dptr,#_pwmConfigureOutput_channel_65536_188
      00068F E0               [24] 2033 	movx	a,@dptr
      000690 FF               [12] 2034 	mov  r7,a
      000691 24 F9            [12] 2035 	add	a,#0xff - 0x06
      000693 50 03            [24] 2036 	jnc	00150$
      000695 02 07 16         [24] 2037 	ljmp	00111$
      000698                       2038 00150$:
      000698 90 00 56         [24] 2039 	mov	dptr,#_pwmConfigureOutput_PARM_7
      00069B E0               [24] 2040 	movx	a,@dptr
      00069C 30 E1 77         [24] 2041 	jnb	acc.1,00111$
                                   2042 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:329: if (configurePin(getChannelPin(channel, pinSwitch, 1), pinMode)) {
      00069F 90 00 51         [24] 2043 	mov	dptr,#_pwmConfigureOutput_PARM_2
      0006A2 E0               [24] 2044 	movx	a,@dptr
      0006A3 90 00 2E         [24] 2045 	mov	dptr,#_getChannelPin_PARM_2
      0006A6 F0               [24] 2046 	movx	@dptr,a
      0006A7 90 00 2F         [24] 2047 	mov	dptr,#_getChannelPin_PARM_3
      0006AA 74 01            [12] 2048 	mov	a,#0x01
      0006AC F0               [24] 2049 	movx	@dptr,a
      0006AD 8F 82            [24] 2050 	mov	dpl,r7
      0006AF C0 07            [24] 2051 	push	ar7
      0006B1 12 02 70         [24] 2052 	lcall	_getChannelPin
      0006B4 AE 82            [24] 2053 	mov	r6,dpl
      0006B6 90 00 52         [24] 2054 	mov	dptr,#_pwmConfigureOutput_PARM_3
      0006B9 E0               [24] 2055 	movx	a,@dptr
      0006BA 90 00 32         [24] 2056 	mov	dptr,#_configurePin_PARM_2
      0006BD F0               [24] 2057 	movx	@dptr,a
      0006BE 8E 82            [24] 2058 	mov	dpl,r6
      0006C0 12 02 E8         [24] 2059 	lcall	_configurePin
      0006C3 E5 82            [12] 2060 	mov	a,dpl
      0006C5 D0 07            [24] 2061 	pop	ar7
      0006C7 60 4D            [24] 2062 	jz	00111$
                                   2063 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:330: enableOutput(channel, 1);
      0006C9 90 00 44         [24] 2064 	mov	dptr,#_enableOutput_PARM_2
      0006CC 74 01            [12] 2065 	mov	a,#0x01
      0006CE F0               [24] 2066 	movx	@dptr,a
      0006CF 8F 82            [24] 2067 	mov	dpl,r7
      0006D1 C0 07            [24] 2068 	push	ar7
      0006D3 12 03 E0         [24] 2069 	lcall	_enableOutput
      0006D6 D0 07            [24] 2070 	pop	ar7
                                   2071 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:331: enableChannel(channel, 1, polarity);
      0006D8 90 00 53         [24] 2072 	mov	dptr,#_pwmConfigureOutput_PARM_4
      0006DB E0               [24] 2073 	movx	a,@dptr
      0006DC FE               [12] 2074 	mov	r6,a
      0006DD 90 00 46         [24] 2075 	mov	dptr,#_enableChannel_PARM_2
      0006E0 74 01            [12] 2076 	mov	a,#0x01
      0006E2 F0               [24] 2077 	movx	@dptr,a
      0006E3 90 00 47         [24] 2078 	mov	dptr,#_enableChannel_PARM_3
      0006E6 EE               [12] 2079 	mov	a,r6
      0006E7 F0               [24] 2080 	movx	@dptr,a
      0006E8 8F 82            [24] 2081 	mov	dpl,r7
      0006EA C0 07            [24] 2082 	push	ar7
      0006EC 12 04 20         [24] 2083 	lcall	_enableChannel
      0006EF D0 07            [24] 2084 	pop	ar7
                                   2085 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:332: enableFaultControl(channel, 1, faultControl, idleLevel);
      0006F1 90 00 54         [24] 2086 	mov	dptr,#_pwmConfigureOutput_PARM_5
      0006F4 E0               [24] 2087 	movx	a,@dptr
      0006F5 FE               [12] 2088 	mov	r6,a
      0006F6 90 00 55         [24] 2089 	mov	dptr,#_pwmConfigureOutput_PARM_6
      0006F9 E0               [24] 2090 	movx	a,@dptr
      0006FA FD               [12] 2091 	mov	r5,a
      0006FB 90 00 4C         [24] 2092 	mov	dptr,#_enableFaultControl_PARM_2
      0006FE 74 01            [12] 2093 	mov	a,#0x01
      000700 F0               [24] 2094 	movx	@dptr,a
      000701 90 00 4D         [24] 2095 	mov	dptr,#_enableFaultControl_PARM_3
      000704 EE               [12] 2096 	mov	a,r6
      000705 F0               [24] 2097 	movx	@dptr,a
      000706 90 00 4E         [24] 2098 	mov	dptr,#_enableFaultControl_PARM_4
      000709 ED               [12] 2099 	mov	a,r5
      00070A F0               [24] 2100 	movx	@dptr,a
      00070B 8F 82            [24] 2101 	mov	dpl,r7
      00070D 12 04 ED         [24] 2102 	lcall	_enableFaultControl
                                   2103 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:333: ok = true;
      000710 90 00 58         [24] 2104 	mov	dptr,#_pwmConfigureOutput_ok_65537_191
      000713 74 01            [12] 2105 	mov	a,#0x01
      000715 F0               [24] 2106 	movx	@dptr,a
      000716                       2107 00111$:
                                   2108 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:337: if (ok) {
      000716 90 00 58         [24] 2109 	mov	dptr,#_pwmConfigureOutput_ok_65537_191
      000719 E0               [24] 2110 	movx	a,@dptr
      00071A 60 12            [24] 2111 	jz	00115$
                                   2112 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:338: applyPinSwitch(channel, pinSwitch);
      00071C 90 00 57         [24] 2113 	mov	dptr,#_pwmConfigureOutput_channel_65536_188
      00071F E0               [24] 2114 	movx	a,@dptr
      000720 FF               [12] 2115 	mov	r7,a
      000721 90 00 51         [24] 2116 	mov	dptr,#_pwmConfigureOutput_PARM_2
      000724 E0               [24] 2117 	movx	a,@dptr
      000725 90 00 42         [24] 2118 	mov	dptr,#_applyPinSwitch_PARM_2
      000728 F0               [24] 2119 	movx	@dptr,a
      000729 8F 82            [24] 2120 	mov	dpl,r7
                                   2121 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:340: }
      00072B 02 03 61         [24] 2122 	ljmp	_applyPinSwitch
      00072E                       2123 00115$:
      00072E 22               [24] 2124 	ret
                                   2125 ;------------------------------------------------------------
                                   2126 ;Allocation info for local variables in function 'pwmConfigureCounter'
                                   2127 ;------------------------------------------------------------
                                   2128 ;counterFreq               Allocated with name '_pwmConfigureCounter_PARM_2'
                                   2129 ;signalFreq                Allocated with name '_pwmConfigureCounter_PARM_3'
                                   2130 ;mode                      Allocated with name '_pwmConfigureCounter_PARM_4'
                                   2131 ;trigger                   Allocated with name '_pwmConfigureCounter_PARM_5'
                                   2132 ;repeatCount               Allocated with name '_pwmConfigureCounter_PARM_6'
                                   2133 ;registerUpdateMode        Allocated with name '_pwmConfigureCounter_PARM_7'
                                   2134 ;counterRunMode            Allocated with name '_pwmConfigureCounter_PARM_8'
                                   2135 ;counterDirection          Allocated with name '_pwmConfigureCounter_PARM_9'
                                   2136 ;updateEventEnable         Allocated with name '_pwmConfigureCounter_PARM_10'
                                   2137 ;comInterrupt              Allocated with name '_pwmConfigureCounter_PARM_11'
                                   2138 ;counter                   Allocated with name '_pwmConfigureCounter_counter_65536_197'
                                   2139 ;prescaler                 Allocated with name '_pwmConfigureCounter_prescaler_65536_198'
                                   2140 ;reloadValue               Allocated with name '_pwmConfigureCounter_reloadValue_65536_198'
                                   2141 ;slaveMode                 Allocated with name '_pwmConfigureCounter_slaveMode_65537_204'
                                   2142 ;cr1                       Allocated with name '_pwmConfigureCounter_cr1_65537_204'
                                   2143 ;ier                       Allocated with name '_pwmConfigureCounter_ier_65537_204'
                                   2144 ;------------------------------------------------------------
                                   2145 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:393: uint16_t pwmConfigureCounter(
                                   2146 ;	-----------------------------------------
                                   2147 ;	 function pwmConfigureCounter
                                   2148 ;	-----------------------------------------
      00072F                       2149 _pwmConfigureCounter:
      00072F E5 82            [12] 2150 	mov	a,dpl
      000731 90 00 69         [24] 2151 	mov	dptr,#_pwmConfigureCounter_counter_65536_197
      000734 F0               [24] 2152 	movx	@dptr,a
                                   2153 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:406: uint16_t prescaler = 0;
      000735 90 00 6A         [24] 2154 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      000738 E4               [12] 2155 	clr	a
      000739 F0               [24] 2156 	movx	@dptr,a
      00073A A3               [24] 2157 	inc	dptr
      00073B F0               [24] 2158 	movx	@dptr,a
                                   2159 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:409: switch (mode) {
      00073C 90 00 61         [24] 2160 	mov	dptr,#_pwmConfigureCounter_PARM_4
      00073F E0               [24] 2161 	movx	a,@dptr
      000740 FF               [12] 2162 	mov	r7,a
      000741 BF 01 03         [24] 2163 	cjne	r7,#0x01,00190$
      000744 EF               [12] 2164 	mov	a,r7
      000745 80 01            [24] 2165 	sjmp	00191$
      000747                       2166 00190$:
      000747 E4               [12] 2167 	clr	a
      000748                       2168 00191$:
      000748 FE               [12] 2169 	mov	r6,a
      000749 70 63            [24] 2170 	jnz	00106$
      00074B BF 02 02         [24] 2171 	cjne	r7,#0x02,00193$
      00074E 80 5E            [24] 2172 	sjmp	00106$
      000750                       2173 00193$:
      000750 BF 03 02         [24] 2174 	cjne	r7,#0x03,00194$
      000753 80 59            [24] 2175 	sjmp	00106$
      000755                       2176 00194$:
      000755 BF 07 18         [24] 2177 	cjne	r7,#0x07,00105$
                                   2178 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:416: prescaler = counterFreq;
      000758 90 00 59         [24] 2179 	mov	dptr,#_pwmConfigureCounter_PARM_2
      00075B E0               [24] 2180 	movx	a,@dptr
      00075C FA               [12] 2181 	mov	r2,a
      00075D A3               [24] 2182 	inc	dptr
      00075E E0               [24] 2183 	movx	a,@dptr
      00075F FB               [12] 2184 	mov	r3,a
      000760 A3               [24] 2185 	inc	dptr
      000761 E0               [24] 2186 	movx	a,@dptr
      000762 FC               [12] 2187 	mov	r4,a
      000763 A3               [24] 2188 	inc	dptr
      000764 E0               [24] 2189 	movx	a,@dptr
      000765 FD               [12] 2190 	mov	r5,a
      000766 90 00 6A         [24] 2191 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      000769 EA               [12] 2192 	mov	a,r2
      00076A F0               [24] 2193 	movx	@dptr,a
      00076B EB               [12] 2194 	mov	a,r3
      00076C A3               [24] 2195 	inc	dptr
      00076D F0               [24] 2196 	movx	@dptr,a
                                   2197 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:417: break;
                                   2198 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:419: default:
      00076E 80 3E            [24] 2199 	sjmp	00106$
      000770                       2200 00105$:
                                   2201 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:420: prescaler = MCU_FREQ / counterFreq;
      000770 90 00 59         [24] 2202 	mov	dptr,#_pwmConfigureCounter_PARM_2
      000773 E0               [24] 2203 	movx	a,@dptr
      000774 FA               [12] 2204 	mov	r2,a
      000775 A3               [24] 2205 	inc	dptr
      000776 E0               [24] 2206 	movx	a,@dptr
      000777 FB               [12] 2207 	mov	r3,a
      000778 A3               [24] 2208 	inc	dptr
      000779 E0               [24] 2209 	movx	a,@dptr
      00077A FC               [12] 2210 	mov	r4,a
      00077B A3               [24] 2211 	inc	dptr
      00077C E0               [24] 2212 	movx	a,@dptr
      00077D FD               [12] 2213 	mov	r5,a
      00077E 90 05 DC         [24] 2214 	mov	dptr,#__divulong_PARM_2
      000781 EA               [12] 2215 	mov	a,r2
      000782 F0               [24] 2216 	movx	@dptr,a
      000783 EB               [12] 2217 	mov	a,r3
      000784 A3               [24] 2218 	inc	dptr
      000785 F0               [24] 2219 	movx	@dptr,a
      000786 EC               [12] 2220 	mov	a,r4
      000787 A3               [24] 2221 	inc	dptr
      000788 F0               [24] 2222 	movx	@dptr,a
      000789 ED               [12] 2223 	mov	a,r5
      00078A A3               [24] 2224 	inc	dptr
      00078B F0               [24] 2225 	movx	@dptr,a
      00078C 90 0E C0         [24] 2226 	mov	dptr,#0x0ec0
      00078F 75 F0 16         [24] 2227 	mov	b,#0x16
      000792 74 02            [12] 2228 	mov	a,#0x02
      000794 C0 07            [24] 2229 	push	ar7
      000796 C0 06            [24] 2230 	push	ar6
      000798 12 4A DE         [24] 2231 	lcall	__divulong
      00079B AA 82            [24] 2232 	mov	r2,dpl
      00079D AB 83            [24] 2233 	mov	r3,dph
      00079F AC F0            [24] 2234 	mov	r4,b
      0007A1 FD               [12] 2235 	mov	r5,a
      0007A2 D0 06            [24] 2236 	pop	ar6
      0007A4 D0 07            [24] 2237 	pop	ar7
      0007A6 90 00 6A         [24] 2238 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      0007A9 EA               [12] 2239 	mov	a,r2
      0007AA F0               [24] 2240 	movx	@dptr,a
      0007AB EB               [12] 2241 	mov	a,r3
      0007AC A3               [24] 2242 	inc	dptr
      0007AD F0               [24] 2243 	movx	@dptr,a
                                   2244 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:422: }
      0007AE                       2245 00106$:
                                   2246 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:424: if (prescaler) {
      0007AE 90 00 6A         [24] 2247 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      0007B1 E0               [24] 2248 	movx	a,@dptr
      0007B2 FC               [12] 2249 	mov	r4,a
      0007B3 A3               [24] 2250 	inc	dptr
      0007B4 E0               [24] 2251 	movx	a,@dptr
      0007B5 FD               [12] 2252 	mov	r5,a
      0007B6 90 00 6A         [24] 2253 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      0007B9 E0               [24] 2254 	movx	a,@dptr
      0007BA F5 F0            [12] 2255 	mov	b,a
      0007BC A3               [24] 2256 	inc	dptr
      0007BD E0               [24] 2257 	movx	a,@dptr
      0007BE 45 F0            [12] 2258 	orl	a,b
      0007C0 60 0D            [24] 2259 	jz	00108$
                                   2260 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:425: prescaler -= 1;
      0007C2 1C               [12] 2261 	dec	r4
      0007C3 BC FF 01         [24] 2262 	cjne	r4,#0xff,00198$
      0007C6 1D               [12] 2263 	dec	r5
      0007C7                       2264 00198$:
      0007C7 90 00 6A         [24] 2265 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      0007CA EC               [12] 2266 	mov	a,r4
      0007CB F0               [24] 2267 	movx	@dptr,a
      0007CC ED               [12] 2268 	mov	a,r5
      0007CD A3               [24] 2269 	inc	dptr
      0007CE F0               [24] 2270 	movx	@dptr,a
      0007CF                       2271 00108$:
                                   2272 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:428: switch (mode) {
      0007CF EE               [12] 2273 	mov	a,r6
      0007D0 70 0D            [24] 2274 	jnz	00112$
      0007D2 BF 02 02         [24] 2275 	cjne	r7,#0x02,00200$
      0007D5 80 08            [24] 2276 	sjmp	00112$
      0007D7                       2277 00200$:
      0007D7 BF 03 02         [24] 2278 	cjne	r7,#0x03,00201$
      0007DA 80 03            [24] 2279 	sjmp	00112$
      0007DC                       2280 00201$:
      0007DC BF 07 18         [24] 2281 	cjne	r7,#0x07,00113$
                                   2282 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:432: case PWM_EXTERNAL_CLOCK:
      0007DF                       2283 00112$:
                                   2284 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:433: reloadValue = signalFreq;
      0007DF 90 00 5D         [24] 2285 	mov	dptr,#_pwmConfigureCounter_PARM_3
      0007E2 E0               [24] 2286 	movx	a,@dptr
      0007E3 FB               [12] 2287 	mov	r3,a
      0007E4 A3               [24] 2288 	inc	dptr
      0007E5 E0               [24] 2289 	movx	a,@dptr
      0007E6 FC               [12] 2290 	mov	r4,a
      0007E7 A3               [24] 2291 	inc	dptr
      0007E8 E0               [24] 2292 	movx	a,@dptr
      0007E9 FD               [12] 2293 	mov	r5,a
      0007EA A3               [24] 2294 	inc	dptr
      0007EB E0               [24] 2295 	movx	a,@dptr
      0007EC FE               [12] 2296 	mov	r6,a
      0007ED 90 00 6C         [24] 2297 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      0007F0 EB               [12] 2298 	mov	a,r3
      0007F1 F0               [24] 2299 	movx	@dptr,a
      0007F2 EC               [12] 2300 	mov	a,r4
      0007F3 A3               [24] 2301 	inc	dptr
      0007F4 F0               [24] 2302 	movx	@dptr,a
                                   2303 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:434: break;
                                   2304 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:436: default:
      0007F5 80 46            [24] 2305 	sjmp	00114$
      0007F7                       2306 00113$:
                                   2307 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:437: reloadValue = counterFreq / signalFreq;
      0007F7 C0 07            [24] 2308 	push	ar7
      0007F9 90 00 5D         [24] 2309 	mov	dptr,#_pwmConfigureCounter_PARM_3
      0007FC E0               [24] 2310 	movx	a,@dptr
      0007FD FB               [12] 2311 	mov	r3,a
      0007FE A3               [24] 2312 	inc	dptr
      0007FF E0               [24] 2313 	movx	a,@dptr
      000800 FC               [12] 2314 	mov	r4,a
      000801 A3               [24] 2315 	inc	dptr
      000802 E0               [24] 2316 	movx	a,@dptr
      000803 FD               [12] 2317 	mov	r5,a
      000804 A3               [24] 2318 	inc	dptr
      000805 E0               [24] 2319 	movx	a,@dptr
      000806 FE               [12] 2320 	mov	r6,a
      000807 90 00 59         [24] 2321 	mov	dptr,#_pwmConfigureCounter_PARM_2
      00080A E0               [24] 2322 	movx	a,@dptr
      00080B F8               [12] 2323 	mov	r0,a
      00080C A3               [24] 2324 	inc	dptr
      00080D E0               [24] 2325 	movx	a,@dptr
      00080E F9               [12] 2326 	mov	r1,a
      00080F A3               [24] 2327 	inc	dptr
      000810 E0               [24] 2328 	movx	a,@dptr
      000811 FA               [12] 2329 	mov	r2,a
      000812 A3               [24] 2330 	inc	dptr
      000813 E0               [24] 2331 	movx	a,@dptr
      000814 FF               [12] 2332 	mov	r7,a
      000815 90 05 DC         [24] 2333 	mov	dptr,#__divulong_PARM_2
      000818 EB               [12] 2334 	mov	a,r3
      000819 F0               [24] 2335 	movx	@dptr,a
      00081A EC               [12] 2336 	mov	a,r4
      00081B A3               [24] 2337 	inc	dptr
      00081C F0               [24] 2338 	movx	@dptr,a
      00081D ED               [12] 2339 	mov	a,r5
      00081E A3               [24] 2340 	inc	dptr
      00081F F0               [24] 2341 	movx	@dptr,a
      000820 EE               [12] 2342 	mov	a,r6
      000821 A3               [24] 2343 	inc	dptr
      000822 F0               [24] 2344 	movx	@dptr,a
      000823 88 82            [24] 2345 	mov	dpl,r0
      000825 89 83            [24] 2346 	mov	dph,r1
      000827 8A F0            [24] 2347 	mov	b,r2
      000829 EF               [12] 2348 	mov	a,r7
      00082A 12 4A DE         [24] 2349 	lcall	__divulong
      00082D AC 82            [24] 2350 	mov	r4,dpl
      00082F AD 83            [24] 2351 	mov	r5,dph
      000831 AE F0            [24] 2352 	mov	r6,b
      000833 90 00 6C         [24] 2353 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000836 EC               [12] 2354 	mov	a,r4
      000837 F0               [24] 2355 	movx	@dptr,a
      000838 ED               [12] 2356 	mov	a,r5
      000839 A3               [24] 2357 	inc	dptr
      00083A F0               [24] 2358 	movx	@dptr,a
                                   2359 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:492: return reloadValue + 1;
      00083B D0 07            [24] 2360 	pop	ar7
                                   2361 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:439: }
      00083D                       2362 00114$:
                                   2363 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:441: switch (counterDirection) {
      00083D 90 00 66         [24] 2364 	mov	dptr,#_pwmConfigureCounter_PARM_9
      000840 E0               [24] 2365 	movx	a,@dptr
      000841 FE               [12] 2366 	mov	r6,a
      000842 BE 02 02         [24] 2367 	cjne	r6,#0x02,00204$
      000845 80 08            [24] 2368 	sjmp	00117$
      000847                       2369 00204$:
      000847 BE 04 02         [24] 2370 	cjne	r6,#0x04,00205$
      00084A 80 03            [24] 2371 	sjmp	00117$
      00084C                       2372 00205$:
      00084C BE 06 15         [24] 2373 	cjne	r6,#0x06,00118$
                                   2374 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:444: case PWM_CENTRE_ALIGNED_INT_UP_DOWN:
      00084F                       2375 00117$:
                                   2376 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:447: reloadValue >>= 1;
      00084F 90 00 6C         [24] 2377 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000852 E0               [24] 2378 	movx	a,@dptr
      000853 FC               [12] 2379 	mov	r4,a
      000854 A3               [24] 2380 	inc	dptr
      000855 E0               [24] 2381 	movx	a,@dptr
      000856 C3               [12] 2382 	clr	c
      000857 13               [12] 2383 	rrc	a
      000858 CC               [12] 2384 	xch	a,r4
      000859 13               [12] 2385 	rrc	a
      00085A CC               [12] 2386 	xch	a,r4
      00085B FD               [12] 2387 	mov	r5,a
      00085C 90 00 6C         [24] 2388 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      00085F EC               [12] 2389 	mov	a,r4
      000860 F0               [24] 2390 	movx	@dptr,a
      000861 ED               [12] 2391 	mov	a,r5
      000862 A3               [24] 2392 	inc	dptr
      000863 F0               [24] 2393 	movx	@dptr,a
                                   2394 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:449: }
      000864                       2395 00118$:
                                   2396 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:451: if (reloadValue) {
      000864 90 00 6C         [24] 2397 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000867 E0               [24] 2398 	movx	a,@dptr
      000868 FC               [12] 2399 	mov	r4,a
      000869 A3               [24] 2400 	inc	dptr
      00086A E0               [24] 2401 	movx	a,@dptr
      00086B FD               [12] 2402 	mov	r5,a
      00086C 90 00 6C         [24] 2403 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      00086F E0               [24] 2404 	movx	a,@dptr
      000870 F5 F0            [12] 2405 	mov	b,a
      000872 A3               [24] 2406 	inc	dptr
      000873 E0               [24] 2407 	movx	a,@dptr
      000874 45 F0            [12] 2408 	orl	a,b
      000876 60 0D            [24] 2409 	jz	00120$
                                   2410 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:452: reloadValue -= 1;
      000878 1C               [12] 2411 	dec	r4
      000879 BC FF 01         [24] 2412 	cjne	r4,#0xff,00209$
      00087C 1D               [12] 2413 	dec	r5
      00087D                       2414 00209$:
      00087D 90 00 6C         [24] 2415 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000880 EC               [12] 2416 	mov	a,r4
      000881 F0               [24] 2417 	movx	@dptr,a
      000882 ED               [12] 2418 	mov	a,r5
      000883 A3               [24] 2419 	inc	dptr
      000884 F0               [24] 2420 	movx	@dptr,a
      000885                       2421 00120$:
                                   2422 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:455: uint8_t slaveMode = mode | (trigger << 4);
      000885 90 00 62         [24] 2423 	mov	dptr,#_pwmConfigureCounter_PARM_5
      000888 E0               [24] 2424 	movx	a,@dptr
      000889 C4               [12] 2425 	swap	a
      00088A 54 F0            [12] 2426 	anl	a,#0xf0
      00088C 42 07            [12] 2427 	orl	ar7,a
                                   2428 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:457: uint8_t cr1 = registerUpdateMode << P_ARPE
      00088E 90 00 64         [24] 2429 	mov	dptr,#_pwmConfigureCounter_PARM_7
      000891 E0               [24] 2430 	movx	a,@dptr
      000892 03               [12] 2431 	rr	a
      000893 54 80            [12] 2432 	anl	a,#0x80
      000895 FD               [12] 2433 	mov	r5,a
      000896 90 00 65         [24] 2434 	mov	dptr,#_pwmConfigureCounter_PARM_8
      000899 E0               [24] 2435 	movx	a,@dptr
      00089A C4               [12] 2436 	swap	a
      00089B 03               [12] 2437 	rr	a
      00089C 54 F8            [12] 2438 	anl	a,#0xf8
      00089E 42 05            [12] 2439 	orl	ar5,a
      0008A0 EE               [12] 2440 	mov	a,r6
      0008A1 C4               [12] 2441 	swap	a
      0008A2 54 F0            [12] 2442 	anl	a,#0xf0
      0008A4 42 05            [12] 2443 	orl	ar5,a
      0008A6 90 00 67         [24] 2444 	mov	dptr,#_pwmConfigureCounter_PARM_10
      0008A9 E0               [24] 2445 	movx	a,@dptr
      0008AA FE               [12] 2446 	mov	r6,a
      0008AB FC               [12] 2447 	mov	r4,a
      0008AC EC               [12] 2448 	mov	a,r4
      0008AD 2C               [12] 2449 	add	a,r4
      0008AE 42 05            [12] 2450 	orl	ar5,a
                                   2451 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:462: uint8_t ier = (comInterrupt == ENABLE_INTERRUPT ? M_COMIE : 0)
      0008B0 90 00 68         [24] 2452 	mov	dptr,#_pwmConfigureCounter_PARM_11
      0008B3 E0               [24] 2453 	movx	a,@dptr
      0008B4 FC               [12] 2454 	mov	r4,a
      0008B5 BC 01 06         [24] 2455 	cjne	r4,#0x01,00126$
      0008B8 7B 20            [12] 2456 	mov	r3,#0x20
      0008BA 7C 00            [12] 2457 	mov	r4,#0x00
      0008BC 80 04            [24] 2458 	sjmp	00127$
      0008BE                       2459 00126$:
      0008BE 7B 00            [12] 2460 	mov	r3,#0x00
      0008C0 7C 00            [12] 2461 	mov	r4,#0x00
      0008C2                       2462 00127$:
      0008C2 BE 01 03         [24] 2463 	cjne	r6,#0x01,00212$
      0008C5 EE               [12] 2464 	mov	a,r6
      0008C6 80 01            [24] 2465 	sjmp	00213$
      0008C8                       2466 00212$:
      0008C8 E4               [12] 2467 	clr	a
      0008C9                       2468 00213$:
      0008C9 70 05            [24] 2469 	jnz	00128$
      0008CB 7A 01            [12] 2470 	mov	r2,#0x01
      0008CD FE               [12] 2471 	mov	r6,a
      0008CE 80 04            [24] 2472 	sjmp	00129$
      0008D0                       2473 00128$:
      0008D0 7A 00            [12] 2474 	mov	r2,#0x00
      0008D2 7E 00            [12] 2475 	mov	r6,#0x00
      0008D4                       2476 00129$:
      0008D4 EA               [12] 2477 	mov	a,r2
      0008D5 4B               [12] 2478 	orl	a,r3
      0008D6 FE               [12] 2479 	mov	r6,a
                                   2480 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:466: switch (counter) {
      0008D7 90 00 69         [24] 2481 	mov	dptr,#_pwmConfigureCounter_counter_65536_197
      0008DA E0               [24] 2482 	movx	a,@dptr
      0008DB FC               [12] 2483 	mov	r4,a
      0008DC 60 07            [24] 2484 	jz	00121$
      0008DE BC 01 02         [24] 2485 	cjne	r4,#0x01,00216$
      0008E1 80 3F            [24] 2486 	sjmp	00122$
      0008E3                       2487 00216$:
                                   2488 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:467: case PWM_COUNTER_A:
      0008E3 80 78            [24] 2489 	sjmp	00123$
      0008E5                       2490 00121$:
                                   2491 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:468: PWMA_PSCRH = prescaler >> 8;
      0008E5 90 00 6A         [24] 2492 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      0008E8 E0               [24] 2493 	movx	a,@dptr
      0008E9 FB               [12] 2494 	mov	r3,a
      0008EA A3               [24] 2495 	inc	dptr
      0008EB E0               [24] 2496 	movx	a,@dptr
      0008EC 90 FE D0         [24] 2497 	mov	dptr,#_PWMA_PSCRH
      0008EF F0               [24] 2498 	movx	@dptr,a
                                   2499 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:469: PWMA_PSCRL = prescaler;
      0008F0 90 FE D1         [24] 2500 	mov	dptr,#_PWMA_PSCRL
      0008F3 EB               [12] 2501 	mov	a,r3
      0008F4 F0               [24] 2502 	movx	@dptr,a
                                   2503 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:470: PWMA_ARRH = reloadValue >> 8;
      0008F5 90 00 6C         [24] 2504 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      0008F8 E0               [24] 2505 	movx	a,@dptr
      0008F9 FB               [12] 2506 	mov	r3,a
      0008FA A3               [24] 2507 	inc	dptr
      0008FB E0               [24] 2508 	movx	a,@dptr
      0008FC FC               [12] 2509 	mov	r4,a
      0008FD 90 FE D2         [24] 2510 	mov	dptr,#_PWMA_ARRH
      000900 F0               [24] 2511 	movx	@dptr,a
                                   2512 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:471: PWMA_ARRL = reloadValue;
      000901 90 FE D3         [24] 2513 	mov	dptr,#_PWMA_ARRL
      000904 EB               [12] 2514 	mov	a,r3
      000905 F0               [24] 2515 	movx	@dptr,a
                                   2516 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:472: PWMA_SMCR = slaveMode;
      000906 90 FE C2         [24] 2517 	mov	dptr,#_PWMA_SMCR
      000909 EF               [12] 2518 	mov	a,r7
      00090A F0               [24] 2519 	movx	@dptr,a
                                   2520 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:473: PWMA_RCR = repeatCount;
      00090B 90 00 63         [24] 2521 	mov	dptr,#_pwmConfigureCounter_PARM_6
      00090E E0               [24] 2522 	movx	a,@dptr
      00090F 90 FE D4         [24] 2523 	mov	dptr,#_PWMA_RCR
      000912 F0               [24] 2524 	movx	@dptr,a
                                   2525 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:474: PWMA_CR1 = cr1;
      000913 90 FE C0         [24] 2526 	mov	dptr,#_PWMA_CR1
      000916 ED               [12] 2527 	mov	a,r5
      000917 F0               [24] 2528 	movx	@dptr,a
                                   2529 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:475: PWMA_IER = (PWMA_IER & ~(M_COMIE | M_UIE)) | ier;
      000918 90 FE C4         [24] 2530 	mov	dptr,#_PWMA_IER
      00091B E0               [24] 2531 	movx	a,@dptr
      00091C 54 DE            [12] 2532 	anl	a,#0xde
      00091E 4E               [12] 2533 	orl	a,r6
      00091F F0               [24] 2534 	movx	@dptr,a
                                   2535 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:476: break;
                                   2536 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:479: case PWM_COUNTER_B:
      000920 80 3B            [24] 2537 	sjmp	00123$
      000922                       2538 00122$:
                                   2539 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:480: PWMB_PSCRH = prescaler >> 8;
      000922 90 00 6A         [24] 2540 	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
      000925 E0               [24] 2541 	movx	a,@dptr
      000926 FB               [12] 2542 	mov	r3,a
      000927 A3               [24] 2543 	inc	dptr
      000928 E0               [24] 2544 	movx	a,@dptr
      000929 90 FE F0         [24] 2545 	mov	dptr,#_PWMB_PSCRH
      00092C F0               [24] 2546 	movx	@dptr,a
                                   2547 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:481: PWMB_PSCRL = prescaler;
      00092D 90 FE F1         [24] 2548 	mov	dptr,#_PWMB_PSCRL
      000930 EB               [12] 2549 	mov	a,r3
      000931 F0               [24] 2550 	movx	@dptr,a
                                   2551 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:482: PWMB_ARRH = reloadValue >> 8;
      000932 90 00 6C         [24] 2552 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000935 E0               [24] 2553 	movx	a,@dptr
      000936 FB               [12] 2554 	mov	r3,a
      000937 A3               [24] 2555 	inc	dptr
      000938 E0               [24] 2556 	movx	a,@dptr
      000939 FC               [12] 2557 	mov	r4,a
      00093A 90 FE F2         [24] 2558 	mov	dptr,#_PWMB_ARRH
      00093D F0               [24] 2559 	movx	@dptr,a
                                   2560 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:483: PWMB_ARRL = reloadValue;
      00093E 90 FE F3         [24] 2561 	mov	dptr,#_PWMB_ARRL
      000941 EB               [12] 2562 	mov	a,r3
      000942 F0               [24] 2563 	movx	@dptr,a
                                   2564 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:484: PWMB_SMCR = slaveMode;
      000943 90 FE E2         [24] 2565 	mov	dptr,#_PWMB_SMCR
      000946 EF               [12] 2566 	mov	a,r7
      000947 F0               [24] 2567 	movx	@dptr,a
                                   2568 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:485: PWMB_RCR = repeatCount;
      000948 90 00 63         [24] 2569 	mov	dptr,#_pwmConfigureCounter_PARM_6
      00094B E0               [24] 2570 	movx	a,@dptr
      00094C 90 FE F4         [24] 2571 	mov	dptr,#_PWMB_RCR
      00094F F0               [24] 2572 	movx	@dptr,a
                                   2573 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:486: PWMB_CR1 = cr1;
      000950 90 FE E0         [24] 2574 	mov	dptr,#_PWMB_CR1
      000953 ED               [12] 2575 	mov	a,r5
      000954 F0               [24] 2576 	movx	@dptr,a
                                   2577 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:487: PWMB_IER = (PWMB_IER & ~(M_COMIE | M_UIE)) | ier;
      000955 90 FE E4         [24] 2578 	mov	dptr,#_PWMB_IER
      000958 E0               [24] 2579 	movx	a,@dptr
      000959 54 DE            [12] 2580 	anl	a,#0xde
      00095B 4E               [12] 2581 	orl	a,r6
      00095C F0               [24] 2582 	movx	@dptr,a
                                   2583 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:490: }
      00095D                       2584 00123$:
                                   2585 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:492: return reloadValue + 1;
      00095D 90 00 6C         [24] 2586 	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
      000960 E0               [24] 2587 	movx	a,@dptr
      000961 FE               [12] 2588 	mov	r6,a
      000962 A3               [24] 2589 	inc	dptr
      000963 E0               [24] 2590 	movx	a,@dptr
      000964 FF               [12] 2591 	mov	r7,a
      000965 0E               [12] 2592 	inc	r6
      000966 BE 00 01         [24] 2593 	cjne	r6,#0x00,00217$
      000969 0F               [12] 2594 	inc	r7
      00096A                       2595 00217$:
      00096A 8E 82            [24] 2596 	mov	dpl,r6
      00096C 8F 83            [24] 2597 	mov	dph,r7
                                   2598 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:493: }
      00096E 22               [24] 2599 	ret
                                   2600 ;------------------------------------------------------------
                                   2601 ;Allocation info for local variables in function 'pwmEnableMainOutput'
                                   2602 ;------------------------------------------------------------
                                   2603 ;counter                   Allocated with name '_pwmEnableMainOutput_counter_65536_206'
                                   2604 ;------------------------------------------------------------
                                   2605 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:495: void pwmEnableMainOutput(PWM_Counter counter) {
                                   2606 ;	-----------------------------------------
                                   2607 ;	 function pwmEnableMainOutput
                                   2608 ;	-----------------------------------------
      00096F                       2609 _pwmEnableMainOutput:
      00096F E5 82            [12] 2610 	mov	a,dpl
      000971 90 00 6E         [24] 2611 	mov	dptr,#_pwmEnableMainOutput_counter_65536_206
      000974 F0               [24] 2612 	movx	@dptr,a
                                   2613 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:496: switch (counter) {
      000975 E0               [24] 2614 	movx	a,@dptr
      000976 FF               [12] 2615 	mov	r7,a
      000977 60 05            [24] 2616 	jz	00101$
                                   2617 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:497: case PWM_COUNTER_A:
      000979 BF 01 13         [24] 2618 	cjne	r7,#0x01,00104$
      00097C 80 09            [24] 2619 	sjmp	00102$
      00097E                       2620 00101$:
                                   2621 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:498: PWMA_BKR |= M_MOE;
      00097E 90 FE DD         [24] 2622 	mov	dptr,#_PWMA_BKR
      000981 E0               [24] 2623 	movx	a,@dptr
      000982 43 E0 80         [24] 2624 	orl	acc,#0x80
      000985 F0               [24] 2625 	movx	@dptr,a
                                   2626 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:499: break;
                                   2627 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:502: case PWM_COUNTER_B:
      000986 22               [24] 2628 	ret
      000987                       2629 00102$:
                                   2630 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:503: PWMB_BKR |= M_MOE;
      000987 90 FE FD         [24] 2631 	mov	dptr,#_PWMB_BKR
      00098A E0               [24] 2632 	movx	a,@dptr
      00098B 43 E0 80         [24] 2633 	orl	acc,#0x80
      00098E F0               [24] 2634 	movx	@dptr,a
                                   2635 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:506: }
      00098F                       2636 00104$:
                                   2637 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:507: }
      00098F 22               [24] 2638 	ret
                                   2639 ;------------------------------------------------------------
                                   2640 ;Allocation info for local variables in function 'pwmEnableCounter'
                                   2641 ;------------------------------------------------------------
                                   2642 ;counter                   Allocated with name '_pwmEnableCounter_counter_65536_209'
                                   2643 ;------------------------------------------------------------
                                   2644 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:509: void pwmEnableCounter(PWM_Counter counter) {
                                   2645 ;	-----------------------------------------
                                   2646 ;	 function pwmEnableCounter
                                   2647 ;	-----------------------------------------
      000990                       2648 _pwmEnableCounter:
      000990 E5 82            [12] 2649 	mov	a,dpl
      000992 90 00 6F         [24] 2650 	mov	dptr,#_pwmEnableCounter_counter_65536_209
      000995 F0               [24] 2651 	movx	@dptr,a
                                   2652 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:510: switch (counter) {
      000996 E0               [24] 2653 	movx	a,@dptr
      000997 FF               [12] 2654 	mov	r7,a
      000998 60 05            [24] 2655 	jz	00101$
                                   2656 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:511: case PWM_COUNTER_A:
      00099A BF 01 13         [24] 2657 	cjne	r7,#0x01,00104$
      00099D 80 09            [24] 2658 	sjmp	00102$
      00099F                       2659 00101$:
                                   2660 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:512: PWMA_CR1 |= M_CEN;
      00099F 90 FE C0         [24] 2661 	mov	dptr,#_PWMA_CR1
      0009A2 E0               [24] 2662 	movx	a,@dptr
      0009A3 43 E0 01         [24] 2663 	orl	acc,#0x01
      0009A6 F0               [24] 2664 	movx	@dptr,a
                                   2665 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:513: break;
                                   2666 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:516: case PWM_COUNTER_B:
      0009A7 22               [24] 2667 	ret
      0009A8                       2668 00102$:
                                   2669 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:517: PWMB_CR1 |= M_CEN;
      0009A8 90 FE E0         [24] 2670 	mov	dptr,#_PWMB_CR1
      0009AB E0               [24] 2671 	movx	a,@dptr
      0009AC 43 E0 01         [24] 2672 	orl	acc,#0x01
      0009AF F0               [24] 2673 	movx	@dptr,a
                                   2674 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:520: }
      0009B0                       2675 00104$:
                                   2676 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:521: }
      0009B0 22               [24] 2677 	ret
                                   2678 ;------------------------------------------------------------
                                   2679 ;Allocation info for local variables in function 'enableChannelInterrupt'
                                   2680 ;------------------------------------------------------------
                                   2681 ;channel                   Allocated with name '_enableChannelInterrupt_channel_65536_212'
                                   2682 ;------------------------------------------------------------
                                   2683 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:586: static void enableChannelInterrupt(PWM_Channel channel) {
                                   2684 ;	-----------------------------------------
                                   2685 ;	 function enableChannelInterrupt
                                   2686 ;	-----------------------------------------
      0009B1                       2687 _enableChannelInterrupt:
      0009B1 E5 82            [12] 2688 	mov	a,dpl
      0009B3 90 00 70         [24] 2689 	mov	dptr,#_enableChannelInterrupt_channel_65536_212
      0009B6 F0               [24] 2690 	movx	@dptr,a
                                   2691 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:588: if (channel < PWM_Channel4) {
      0009B7 E0               [24] 2692 	movx	a,@dptr
      0009B8 FF               [12] 2693 	mov	r7,a
      0009B9 BF 08 00         [24] 2694 	cjne	r7,#0x08,00110$
      0009BC                       2695 00110$:
      0009BC 50 19            [24] 2696 	jnc	00102$
                                   2697 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:590: PWMA_IER |= 1 << ((channel >> 1) + 1);
      0009BE EF               [12] 2698 	mov	a,r7
      0009BF C3               [12] 2699 	clr	c
      0009C0 13               [12] 2700 	rrc	a
      0009C1 04               [12] 2701 	inc	a
      0009C2 F5 F0            [12] 2702 	mov	b,a
      0009C4 05 F0            [12] 2703 	inc	b
      0009C6 74 01            [12] 2704 	mov	a,#0x01
      0009C8 80 02            [24] 2705 	sjmp	00114$
      0009CA                       2706 00112$:
      0009CA 25 E0            [12] 2707 	add	a,acc
      0009CC                       2708 00114$:
      0009CC D5 F0 FB         [24] 2709 	djnz	b,00112$
      0009CF FE               [12] 2710 	mov	r6,a
      0009D0 90 FE C4         [24] 2711 	mov	dptr,#_PWMA_IER
      0009D3 E0               [24] 2712 	movx	a,@dptr
      0009D4 4E               [12] 2713 	orl	a,r6
      0009D5 F0               [24] 2714 	movx	@dptr,a
      0009D6 22               [24] 2715 	ret
      0009D7                       2716 00102$:
                                   2717 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:593: PWMB_IER |= 1 << (((channel - PWM_Channel4) >> 1) + 1);
      0009D7 7E 00            [12] 2718 	mov	r6,#0x00
      0009D9 EF               [12] 2719 	mov	a,r7
      0009DA 24 F8            [12] 2720 	add	a,#0xf8
      0009DC FF               [12] 2721 	mov	r7,a
      0009DD EE               [12] 2722 	mov	a,r6
      0009DE 34 FF            [12] 2723 	addc	a,#0xff
      0009E0 A2 E7            [12] 2724 	mov	c,acc.7
      0009E2 13               [12] 2725 	rrc	a
      0009E3 CF               [12] 2726 	xch	a,r7
      0009E4 13               [12] 2727 	rrc	a
      0009E5 CF               [12] 2728 	xch	a,r7
      0009E6 EF               [12] 2729 	mov	a,r7
      0009E7 04               [12] 2730 	inc	a
      0009E8 F5 F0            [12] 2731 	mov	b,a
      0009EA 05 F0            [12] 2732 	inc	b
      0009EC 74 01            [12] 2733 	mov	a,#0x01
      0009EE 80 02            [24] 2734 	sjmp	00117$
      0009F0                       2735 00115$:
      0009F0 25 E0            [12] 2736 	add	a,acc
      0009F2                       2737 00117$:
      0009F2 D5 F0 FB         [24] 2738 	djnz	b,00115$
      0009F5 FF               [12] 2739 	mov	r7,a
      0009F6 90 FE E4         [24] 2740 	mov	dptr,#_PWMB_IER
      0009F9 E0               [24] 2741 	movx	a,@dptr
      0009FA 4F               [12] 2742 	orl	a,r7
      0009FB F0               [24] 2743 	movx	@dptr,a
                                   2744 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:596: }
      0009FC 22               [24] 2745 	ret
                                   2746 ;------------------------------------------------------------
                                   2747 ;Allocation info for local variables in function 'pwmInitialisePWM'
                                   2748 ;------------------------------------------------------------
                                   2749 ;initialLevel              Allocated with name '_pwmInitialisePWM_PARM_2'
                                   2750 ;enableInterrupt           Allocated with name '_pwmInitialisePWM_PARM_3'
                                   2751 ;registerUpdateMode        Allocated with name '_pwmInitialisePWM_PARM_4'
                                   2752 ;ticks                     Allocated with name '_pwmInitialisePWM_PARM_5'
                                   2753 ;channel                   Allocated with name '_pwmInitialisePWM_channel_65536_216'
                                   2754 ;ccmr                      Allocated with name '_pwmInitialisePWM_ccmr_65537_218'
                                   2755 ;------------------------------------------------------------
                                   2756 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:598: void pwmInitialisePWM(
                                   2757 ;	-----------------------------------------
                                   2758 ;	 function pwmInitialisePWM
                                   2759 ;	-----------------------------------------
      0009FD                       2760 _pwmInitialisePWM:
      0009FD E5 82            [12] 2761 	mov	a,dpl
      0009FF 90 00 76         [24] 2762 	mov	dptr,#_pwmInitialisePWM_channel_65536_216
      000A02 F0               [24] 2763 	movx	@dptr,a
                                   2764 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:606: closeChannel(channel);
      000A03 E0               [24] 2765 	movx	a,@dptr
      000A04 FF               [12] 2766 	mov	r7,a
      000A05 F5 82            [12] 2767 	mov	dpl,a
      000A07 C0 07            [24] 2768 	push	ar7
      000A09 12 05 6A         [24] 2769 	lcall	_closeChannel
      000A0C D0 07            [24] 2770 	pop	ar7
                                   2771 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:608: pwmSetDutyCycle(channel, ticks);
      000A0E 90 00 74         [24] 2772 	mov	dptr,#_pwmInitialisePWM_PARM_5
      000A11 E0               [24] 2773 	movx	a,@dptr
      000A12 FD               [12] 2774 	mov	r5,a
      000A13 A3               [24] 2775 	inc	dptr
      000A14 E0               [24] 2776 	movx	a,@dptr
      000A15 FE               [12] 2777 	mov	r6,a
      000A16 90 00 78         [24] 2778 	mov	dptr,#_pwmSetDutyCycle_PARM_2
      000A19 ED               [12] 2779 	mov	a,r5
      000A1A F0               [24] 2780 	movx	@dptr,a
      000A1B EE               [12] 2781 	mov	a,r6
      000A1C A3               [24] 2782 	inc	dptr
      000A1D F0               [24] 2783 	movx	@dptr,a
      000A1E 8F 82            [24] 2784 	mov	dpl,r7
      000A20 12 0A F4         [24] 2785 	lcall	_pwmSetDutyCycle
                                   2786 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:611: uint8_t ccmr = (registerUpdateMode == PWM_BUFFERED_UPDATE) ? M_OC_PE : 0;
      000A23 90 00 73         [24] 2787 	mov	dptr,#_pwmInitialisePWM_PARM_4
      000A26 E0               [24] 2788 	movx	a,@dptr
      000A27 FF               [12] 2789 	mov	r7,a
      000A28 BF 01 06         [24] 2790 	cjne	r7,#0x01,00117$
      000A2B 7E 08            [12] 2791 	mov	r6,#0x08
      000A2D 7F 00            [12] 2792 	mov	r7,#0x00
      000A2F 80 04            [24] 2793 	sjmp	00118$
      000A31                       2794 00117$:
      000A31 7E 00            [12] 2795 	mov	r6,#0x00
      000A33 7F 00            [12] 2796 	mov	r7,#0x00
      000A35                       2797 00118$:
                                   2798 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:613: if (initialLevel == OUTPUT_HIGH) {
      000A35 90 00 71         [24] 2799 	mov	dptr,#_pwmInitialisePWM_PARM_2
      000A38 E0               [24] 2800 	movx	a,@dptr
      000A39 FF               [12] 2801 	mov	r7,a
      000A3A BF 01 09         [24] 2802 	cjne	r7,#0x01,00102$
                                   2803 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:615: ccmr |= 6 << P_OC_M;
      000A3D 90 00 77         [24] 2804 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000A40 74 60            [12] 2805 	mov	a,#0x60
      000A42 4E               [12] 2806 	orl	a,r6
      000A43 F0               [24] 2807 	movx	@dptr,a
      000A44 80 07            [24] 2808 	sjmp	00103$
      000A46                       2809 00102$:
                                   2810 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:618: ccmr |= 7 << P_OC_M;
      000A46 90 00 77         [24] 2811 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000A49 74 70            [12] 2812 	mov	a,#0x70
      000A4B 4E               [12] 2813 	orl	a,r6
      000A4C F0               [24] 2814 	movx	@dptr,a
      000A4D                       2815 00103$:
                                   2816 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:621: switch (channel) {
      000A4D 90 00 76         [24] 2817 	mov	dptr,#_pwmInitialisePWM_channel_65536_216
      000A50 E0               [24] 2818 	movx	a,@dptr
      000A51 FF               [12] 2819 	mov  r7,a
      000A52 24 F1            [12] 2820 	add	a,#0xff - 0x0e
      000A54 50 03            [24] 2821 	jnc	00139$
      000A56 02 0A D3         [24] 2822 	ljmp	00112$
      000A59                       2823 00139$:
      000A59 EF               [12] 2824 	mov	a,r7
      000A5A 24 0A            [12] 2825 	add	a,#(00140$-3-.)
      000A5C 83               [24] 2826 	movc	a,@a+pc
      000A5D F5 82            [12] 2827 	mov	dpl,a
      000A5F EF               [12] 2828 	mov	a,r7
      000A60 24 13            [12] 2829 	add	a,#(00141$-3-.)
      000A62 83               [24] 2830 	movc	a,@a+pc
      000A63 F5 83            [12] 2831 	mov	dph,a
      000A65 E4               [12] 2832 	clr	a
      000A66 73               [24] 2833 	jmp	@a+dptr
      000A67                       2834 00140$:
      000A67 85                    2835 	.db	00104$
      000A68 D3                    2836 	.db	00112$
      000A69 8F                    2837 	.db	00105$
      000A6A D3                    2838 	.db	00112$
      000A6B 99                    2839 	.db	00106$
      000A6C D3                    2840 	.db	00112$
      000A6D A3                    2841 	.db	00107$
      000A6E D3                    2842 	.db	00112$
      000A6F AD                    2843 	.db	00108$
      000A70 D3                    2844 	.db	00112$
      000A71 B7                    2845 	.db	00109$
      000A72 D3                    2846 	.db	00112$
      000A73 C1                    2847 	.db	00110$
      000A74 D3                    2848 	.db	00112$
      000A75 CB                    2849 	.db	00111$
      000A76                       2850 00141$:
      000A76 0A                    2851 	.db	00104$>>8
      000A77 0A                    2852 	.db	00112$>>8
      000A78 0A                    2853 	.db	00105$>>8
      000A79 0A                    2854 	.db	00112$>>8
      000A7A 0A                    2855 	.db	00106$>>8
      000A7B 0A                    2856 	.db	00112$>>8
      000A7C 0A                    2857 	.db	00107$>>8
      000A7D 0A                    2858 	.db	00112$>>8
      000A7E 0A                    2859 	.db	00108$>>8
      000A7F 0A                    2860 	.db	00112$>>8
      000A80 0A                    2861 	.db	00109$>>8
      000A81 0A                    2862 	.db	00112$>>8
      000A82 0A                    2863 	.db	00110$>>8
      000A83 0A                    2864 	.db	00112$>>8
      000A84 0A                    2865 	.db	00111$>>8
                                   2866 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:622: case PWM_Channel0:
      000A85                       2867 00104$:
                                   2868 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:623: PWMA_CCMR1 = ccmr;
      000A85 90 00 77         [24] 2869 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000A88 E0               [24] 2870 	movx	a,@dptr
      000A89 90 FE C8         [24] 2871 	mov	dptr,#_PWMA_CCMR1
      000A8C F0               [24] 2872 	movx	@dptr,a
                                   2873 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:624: break;
                                   2874 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:626: case PWM_Channel1:
      000A8D 80 44            [24] 2875 	sjmp	00112$
      000A8F                       2876 00105$:
                                   2877 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:627: PWMA_CCMR2 = ccmr;
      000A8F 90 00 77         [24] 2878 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000A92 E0               [24] 2879 	movx	a,@dptr
      000A93 90 FE C9         [24] 2880 	mov	dptr,#_PWMA_CCMR2
      000A96 F0               [24] 2881 	movx	@dptr,a
                                   2882 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:628: break;
                                   2883 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:631: case PWM_Channel2:
      000A97 80 3A            [24] 2884 	sjmp	00112$
      000A99                       2885 00106$:
                                   2886 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:632: PWMA_CCMR3 = ccmr;
      000A99 90 00 77         [24] 2887 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000A9C E0               [24] 2888 	movx	a,@dptr
      000A9D 90 FE CA         [24] 2889 	mov	dptr,#_PWMA_CCMR3
      000AA0 F0               [24] 2890 	movx	@dptr,a
                                   2891 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:633: break;
                                   2892 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:634: case PWM_Channel3:
      000AA1 80 30            [24] 2893 	sjmp	00112$
      000AA3                       2894 00107$:
                                   2895 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:635: PWMA_CCMR4 = ccmr;
      000AA3 90 00 77         [24] 2896 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000AA6 E0               [24] 2897 	movx	a,@dptr
      000AA7 90 FE CB         [24] 2898 	mov	dptr,#_PWMA_CCMR4
      000AAA F0               [24] 2899 	movx	@dptr,a
                                   2900 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:636: break;
                                   2901 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:639: case PWM_Channel4:
      000AAB 80 26            [24] 2902 	sjmp	00112$
      000AAD                       2903 00108$:
                                   2904 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:640: PWMB_CCMR1 = ccmr;
      000AAD 90 00 77         [24] 2905 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000AB0 E0               [24] 2906 	movx	a,@dptr
      000AB1 90 FE E8         [24] 2907 	mov	dptr,#_PWMB_CCMR1
      000AB4 F0               [24] 2908 	movx	@dptr,a
                                   2909 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:641: break;
                                   2910 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:642: case PWM_Channel5:
      000AB5 80 1C            [24] 2911 	sjmp	00112$
      000AB7                       2912 00109$:
                                   2913 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:643: PWMB_CCMR2 = ccmr;
      000AB7 90 00 77         [24] 2914 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000ABA E0               [24] 2915 	movx	a,@dptr
      000ABB 90 FE E9         [24] 2916 	mov	dptr,#_PWMB_CCMR2
      000ABE F0               [24] 2917 	movx	@dptr,a
                                   2918 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:644: break;
                                   2919 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:645: case PWM_Channel6:
      000ABF 80 12            [24] 2920 	sjmp	00112$
      000AC1                       2921 00110$:
                                   2922 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:646: PWMB_CCMR3 = ccmr;
      000AC1 90 00 77         [24] 2923 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000AC4 E0               [24] 2924 	movx	a,@dptr
      000AC5 90 FE EA         [24] 2925 	mov	dptr,#_PWMB_CCMR3
      000AC8 F0               [24] 2926 	movx	@dptr,a
                                   2927 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:647: break;
                                   2928 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:648: case PWM_Channel7:
      000AC9 80 08            [24] 2929 	sjmp	00112$
      000ACB                       2930 00111$:
                                   2931 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:649: PWMB_CCMR4 = ccmr;
      000ACB 90 00 77         [24] 2932 	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
      000ACE E0               [24] 2933 	movx	a,@dptr
      000ACF 90 FE EB         [24] 2934 	mov	dptr,#_PWMB_CCMR4
      000AD2 F0               [24] 2935 	movx	@dptr,a
                                   2936 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:652: }
      000AD3                       2937 00112$:
                                   2938 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:654: channelUsage[channel >> 1] = USAGE_PWM;
      000AD3 EF               [12] 2939 	mov	a,r7
      000AD4 C3               [12] 2940 	clr	c
      000AD5 13               [12] 2941 	rrc	a
      000AD6 24 31            [12] 2942 	add	a,#_channelUsage
      000AD8 F5 82            [12] 2943 	mov	dpl,a
      000ADA E4               [12] 2944 	clr	a
      000ADB 34 06            [12] 2945 	addc	a,#(_channelUsage >> 8)
      000ADD F5 83            [12] 2946 	mov	dph,a
      000ADF 74 01            [12] 2947 	mov	a,#0x01
      000AE1 F0               [24] 2948 	movx	@dptr,a
                                   2949 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:656: if (enableInterrupt == ENABLE_INTERRUPT) {
      000AE2 90 00 72         [24] 2950 	mov	dptr,#_pwmInitialisePWM_PARM_3
      000AE5 E0               [24] 2951 	movx	a,@dptr
      000AE6 FF               [12] 2952 	mov	r7,a
      000AE7 BF 01 09         [24] 2953 	cjne	r7,#0x01,00115$
                                   2954 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:657: enableChannelInterrupt(channel);
      000AEA 90 00 76         [24] 2955 	mov	dptr,#_pwmInitialisePWM_channel_65536_216
      000AED E0               [24] 2956 	movx	a,@dptr
      000AEE F5 82            [12] 2957 	mov	dpl,a
                                   2958 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:659: }
      000AF0 02 09 B1         [24] 2959 	ljmp	_enableChannelInterrupt
      000AF3                       2960 00115$:
      000AF3 22               [24] 2961 	ret
                                   2962 ;------------------------------------------------------------
                                   2963 ;Allocation info for local variables in function 'pwmSetDutyCycle'
                                   2964 ;------------------------------------------------------------
                                   2965 ;ticks                     Allocated with name '_pwmSetDutyCycle_PARM_2'
                                   2966 ;channel                   Allocated with name '_pwmSetDutyCycle_channel_65536_223'
                                   2967 ;ticksH                    Allocated with name '_pwmSetDutyCycle_ticksH_65536_224'
                                   2968 ;ticksL                    Allocated with name '_pwmSetDutyCycle_ticksL_65536_224'
                                   2969 ;------------------------------------------------------------
                                   2970 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:738: void pwmSetDutyCycle(PWM_Channel channel, uint16_t ticks) {
                                   2971 ;	-----------------------------------------
                                   2972 ;	 function pwmSetDutyCycle
                                   2973 ;	-----------------------------------------
      000AF4                       2974 _pwmSetDutyCycle:
      000AF4 E5 82            [12] 2975 	mov	a,dpl
      000AF6 90 00 7A         [24] 2976 	mov	dptr,#_pwmSetDutyCycle_channel_65536_223
      000AF9 F0               [24] 2977 	movx	@dptr,a
                                   2978 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:739: uint8_t ticksH = ticks >> 8;
      000AFA 90 00 78         [24] 2979 	mov	dptr,#_pwmSetDutyCycle_PARM_2
      000AFD E0               [24] 2980 	movx	a,@dptr
      000AFE FE               [12] 2981 	mov	r6,a
      000AFF A3               [24] 2982 	inc	dptr
      000B00 E0               [24] 2983 	movx	a,@dptr
      000B01 FF               [12] 2984 	mov	r7,a
      000B02 FD               [12] 2985 	mov	r5,a
                                   2986 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:740: uint8_t ticksL = ticks;
                                   2987 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:742: switch (channel) {
      000B03 90 00 7A         [24] 2988 	mov	dptr,#_pwmSetDutyCycle_channel_65536_223
      000B06 E0               [24] 2989 	movx	a,@dptr
      000B07 FF               [12] 2990 	mov  r7,a
      000B08 24 F1            [12] 2991 	add	a,#0xff - 0x0e
      000B0A 50 01            [24] 2992 	jnc	00116$
      000B0C 22               [24] 2993 	ret
      000B0D                       2994 00116$:
      000B0D EF               [12] 2995 	mov	a,r7
      000B0E 24 0A            [12] 2996 	add	a,#(00117$-3-.)
      000B10 83               [24] 2997 	movc	a,@a+pc
      000B11 F5 82            [12] 2998 	mov	dpl,a
      000B13 EF               [12] 2999 	mov	a,r7
      000B14 24 13            [12] 3000 	add	a,#(00118$-3-.)
      000B16 83               [24] 3001 	movc	a,@a+pc
      000B17 F5 83            [12] 3002 	mov	dph,a
      000B19 E4               [12] 3003 	clr	a
      000B1A 73               [24] 3004 	jmp	@a+dptr
      000B1B                       3005 00117$:
      000B1B 39                    3006 	.db	00101$
      000B1C 90                    3007 	.db	00110$
      000B1D 44                    3008 	.db	00102$
      000B1E 90                    3009 	.db	00110$
      000B1F 4F                    3010 	.db	00103$
      000B20 90                    3011 	.db	00110$
      000B21 5A                    3012 	.db	00104$
      000B22 90                    3013 	.db	00110$
      000B23 65                    3014 	.db	00105$
      000B24 90                    3015 	.db	00110$
      000B25 70                    3016 	.db	00106$
      000B26 90                    3017 	.db	00110$
      000B27 7B                    3018 	.db	00107$
      000B28 90                    3019 	.db	00110$
      000B29 86                    3020 	.db	00108$
      000B2A                       3021 00118$:
      000B2A 0B                    3022 	.db	00101$>>8
      000B2B 0B                    3023 	.db	00110$>>8
      000B2C 0B                    3024 	.db	00102$>>8
      000B2D 0B                    3025 	.db	00110$>>8
      000B2E 0B                    3026 	.db	00103$>>8
      000B2F 0B                    3027 	.db	00110$>>8
      000B30 0B                    3028 	.db	00104$>>8
      000B31 0B                    3029 	.db	00110$>>8
      000B32 0B                    3030 	.db	00105$>>8
      000B33 0B                    3031 	.db	00110$>>8
      000B34 0B                    3032 	.db	00106$>>8
      000B35 0B                    3033 	.db	00110$>>8
      000B36 0B                    3034 	.db	00107$>>8
      000B37 0B                    3035 	.db	00110$>>8
      000B38 0B                    3036 	.db	00108$>>8
                                   3037 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:743: case PWM_Channel0:
      000B39                       3038 00101$:
                                   3039 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:744: PWMA_CCR1H = ticksH;
      000B39 90 FE D5         [24] 3040 	mov	dptr,#_PWMA_CCR1H
      000B3C ED               [12] 3041 	mov	a,r5
      000B3D F0               [24] 3042 	movx	@dptr,a
                                   3043 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:745: PWMA_CCR1L = ticksL;
      000B3E 90 FE D6         [24] 3044 	mov	dptr,#_PWMA_CCR1L
      000B41 EE               [12] 3045 	mov	a,r6
      000B42 F0               [24] 3046 	movx	@dptr,a
                                   3047 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:746: break;
                                   3048 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:748: case PWM_Channel1:
      000B43 22               [24] 3049 	ret
      000B44                       3050 00102$:
                                   3051 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:749: PWMA_CCR2H = ticksH;
      000B44 90 FE D7         [24] 3052 	mov	dptr,#_PWMA_CCR2H
      000B47 ED               [12] 3053 	mov	a,r5
      000B48 F0               [24] 3054 	movx	@dptr,a
                                   3055 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:750: PWMA_CCR2L = ticksL;
      000B49 90 FE D8         [24] 3056 	mov	dptr,#_PWMA_CCR2L
      000B4C EE               [12] 3057 	mov	a,r6
      000B4D F0               [24] 3058 	movx	@dptr,a
                                   3059 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:751: break;
                                   3060 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:754: case PWM_Channel2:
      000B4E 22               [24] 3061 	ret
      000B4F                       3062 00103$:
                                   3063 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:755: PWMA_CCR3H = ticksH;
      000B4F 90 FE D9         [24] 3064 	mov	dptr,#_PWMA_CCR3H
      000B52 ED               [12] 3065 	mov	a,r5
      000B53 F0               [24] 3066 	movx	@dptr,a
                                   3067 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:756: PWMA_CCR3L = ticksL;
      000B54 90 FE DA         [24] 3068 	mov	dptr,#_PWMA_CCR3L
      000B57 EE               [12] 3069 	mov	a,r6
      000B58 F0               [24] 3070 	movx	@dptr,a
                                   3071 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:757: break;
                                   3072 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:758: case PWM_Channel3:
      000B59 22               [24] 3073 	ret
      000B5A                       3074 00104$:
                                   3075 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:759: PWMA_CCR4H = ticksH;
      000B5A 90 FE DB         [24] 3076 	mov	dptr,#_PWMA_CCR4H
      000B5D ED               [12] 3077 	mov	a,r5
      000B5E F0               [24] 3078 	movx	@dptr,a
                                   3079 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:760: PWMA_CCR4L = ticksL;
      000B5F 90 FE DC         [24] 3080 	mov	dptr,#_PWMA_CCR4L
      000B62 EE               [12] 3081 	mov	a,r6
      000B63 F0               [24] 3082 	movx	@dptr,a
                                   3083 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:761: break;
                                   3084 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:764: case PWM_Channel4:
      000B64 22               [24] 3085 	ret
      000B65                       3086 00105$:
                                   3087 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:765: PWMB_CCR1H = ticksH;
      000B65 90 FE F5         [24] 3088 	mov	dptr,#_PWMB_CCR1H
      000B68 ED               [12] 3089 	mov	a,r5
      000B69 F0               [24] 3090 	movx	@dptr,a
                                   3091 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:766: PWMB_CCR1L = ticksL;
      000B6A 90 FE F6         [24] 3092 	mov	dptr,#_PWMB_CCR1L
      000B6D EE               [12] 3093 	mov	a,r6
      000B6E F0               [24] 3094 	movx	@dptr,a
                                   3095 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:767: break;
                                   3096 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:768: case PWM_Channel5:
      000B6F 22               [24] 3097 	ret
      000B70                       3098 00106$:
                                   3099 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:769: PWMB_CCR2H = ticksH;
      000B70 90 FE F7         [24] 3100 	mov	dptr,#_PWMB_CCR2H
      000B73 ED               [12] 3101 	mov	a,r5
      000B74 F0               [24] 3102 	movx	@dptr,a
                                   3103 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:770: PWMB_CCR2L = ticksL;
      000B75 90 FE F8         [24] 3104 	mov	dptr,#_PWMB_CCR2L
      000B78 EE               [12] 3105 	mov	a,r6
      000B79 F0               [24] 3106 	movx	@dptr,a
                                   3107 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:771: break;
                                   3108 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:772: case PWM_Channel6:
      000B7A 22               [24] 3109 	ret
      000B7B                       3110 00107$:
                                   3111 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:773: PWMB_CCR3H = ticksH;
      000B7B 90 FE F9         [24] 3112 	mov	dptr,#_PWMB_CCR3H
      000B7E ED               [12] 3113 	mov	a,r5
      000B7F F0               [24] 3114 	movx	@dptr,a
                                   3115 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:774: PWMB_CCR3L = ticksL;
      000B80 90 FE FA         [24] 3116 	mov	dptr,#_PWMB_CCR3L
      000B83 EE               [12] 3117 	mov	a,r6
      000B84 F0               [24] 3118 	movx	@dptr,a
                                   3119 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:775: break;
                                   3120 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:776: case PWM_Channel7:
      000B85 22               [24] 3121 	ret
      000B86                       3122 00108$:
                                   3123 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:777: PWMB_CCR4H = ticksH;
      000B86 90 FE FB         [24] 3124 	mov	dptr,#_PWMB_CCR4H
      000B89 ED               [12] 3125 	mov	a,r5
      000B8A F0               [24] 3126 	movx	@dptr,a
                                   3127 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:778: PWMB_CCR4L = ticksL;
      000B8B 90 FE FC         [24] 3128 	mov	dptr,#_PWMB_CCR4L
      000B8E EE               [12] 3129 	mov	a,r6
      000B8F F0               [24] 3130 	movx	@dptr,a
                                   3131 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:781: }
      000B90                       3132 00110$:
                                   3133 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:782: }
      000B90 22               [24] 3134 	ret
                                   3135 ;------------------------------------------------------------
                                   3136 ;Allocation info for local variables in function 'configureInput'
                                   3137 ;------------------------------------------------------------
                                   3138 ;pinSwitch                 Allocated with name '_configureInput_PARM_2'
                                   3139 ;captureEdge               Allocated with name '_configureInput_PARM_3'
                                   3140 ;captureSource             Allocated with name '_configureInput_PARM_4'
                                   3141 ;filter                    Allocated with name '_configureInput_PARM_5'
                                   3142 ;channel                   Allocated with name '_configureInput_channel_65536_226'
                                   3143 ;ccmr                      Allocated with name '_configureInput_ccmr_65537_228'
                                   3144 ;------------------------------------------------------------
                                   3145 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:878: static void configureInput(
                                   3146 ;	-----------------------------------------
                                   3147 ;	 function configureInput
                                   3148 ;	-----------------------------------------
      000B91                       3149 _configureInput:
      000B91 E5 82            [12] 3150 	mov	a,dpl
      000B93 90 00 7F         [24] 3151 	mov	dptr,#_configureInput_channel_65536_226
      000B96 F0               [24] 3152 	movx	@dptr,a
                                   3153 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:885: applyPinSwitch(channel, pinSwitch);
      000B97 E0               [24] 3154 	movx	a,@dptr
      000B98 FF               [12] 3155 	mov	r7,a
      000B99 90 00 7B         [24] 3156 	mov	dptr,#_configureInput_PARM_2
      000B9C E0               [24] 3157 	movx	a,@dptr
      000B9D FE               [12] 3158 	mov	r6,a
      000B9E 90 00 42         [24] 3159 	mov	dptr,#_applyPinSwitch_PARM_2
      000BA1 F0               [24] 3160 	movx	@dptr,a
      000BA2 8F 82            [24] 3161 	mov	dpl,r7
      000BA4 C0 07            [24] 3162 	push	ar7
      000BA6 C0 06            [24] 3163 	push	ar6
      000BA8 12 03 61         [24] 3164 	lcall	_applyPinSwitch
      000BAB D0 06            [24] 3165 	pop	ar6
      000BAD D0 07            [24] 3166 	pop	ar7
                                   3167 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:886: configurePin(getChannelPin(channel, pinSwitch, 0), GPIO_HIGH_IMPEDANCE_MODE);
      000BAF 90 00 2E         [24] 3168 	mov	dptr,#_getChannelPin_PARM_2
      000BB2 EE               [12] 3169 	mov	a,r6
      000BB3 F0               [24] 3170 	movx	@dptr,a
      000BB4 90 00 2F         [24] 3171 	mov	dptr,#_getChannelPin_PARM_3
      000BB7 E4               [12] 3172 	clr	a
      000BB8 F0               [24] 3173 	movx	@dptr,a
      000BB9 8F 82            [24] 3174 	mov	dpl,r7
      000BBB C0 07            [24] 3175 	push	ar7
      000BBD 12 02 70         [24] 3176 	lcall	_getChannelPin
      000BC0 AE 82            [24] 3177 	mov	r6,dpl
      000BC2 90 00 32         [24] 3178 	mov	dptr,#_configurePin_PARM_2
      000BC5 74 02            [12] 3179 	mov	a,#0x02
      000BC7 F0               [24] 3180 	movx	@dptr,a
      000BC8 8E 82            [24] 3181 	mov	dpl,r6
      000BCA 12 02 E8         [24] 3182 	lcall	_configurePin
      000BCD D0 07            [24] 3183 	pop	ar7
                                   3184 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:887: uint8_t ccmr = (filter << 4) | captureSource;
      000BCF 90 00 7E         [24] 3185 	mov	dptr,#_configureInput_PARM_5
      000BD2 E0               [24] 3186 	movx	a,@dptr
      000BD3 C4               [12] 3187 	swap	a
      000BD4 54 F0            [12] 3188 	anl	a,#0xf0
      000BD6 FE               [12] 3189 	mov	r6,a
      000BD7 90 00 7D         [24] 3190 	mov	dptr,#_configureInput_PARM_4
      000BDA E0               [24] 3191 	movx	a,@dptr
      000BDB 42 06            [12] 3192 	orl	ar6,a
                                   3193 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:889: switch (channel) {
      000BDD EF               [12] 3194 	mov	a,r7
      000BDE FD               [12] 3195 	mov	r5,a
      000BDF 24 F1            [12] 3196 	add	a,#0xff - 0x0e
      000BE1 50 03            [24] 3197 	jnc	00116$
      000BE3 02 0C 48         [24] 3198 	ljmp	00109$
      000BE6                       3199 00116$:
      000BE6 ED               [12] 3200 	mov	a,r5
      000BE7 24 0A            [12] 3201 	add	a,#(00117$-3-.)
      000BE9 83               [24] 3202 	movc	a,@a+pc
      000BEA F5 82            [12] 3203 	mov	dpl,a
      000BEC ED               [12] 3204 	mov	a,r5
      000BED 24 13            [12] 3205 	add	a,#(00118$-3-.)
      000BEF 83               [24] 3206 	movc	a,@a+pc
      000BF0 F5 83            [12] 3207 	mov	dph,a
      000BF2 E4               [12] 3208 	clr	a
      000BF3 73               [24] 3209 	jmp	@a+dptr
      000BF4                       3210 00117$:
      000BF4 12                    3211 	.db	00101$
      000BF5 48                    3212 	.db	00109$
      000BF6 19                    3213 	.db	00102$
      000BF7 48                    3214 	.db	00109$
      000BF8 20                    3215 	.db	00103$
      000BF9 48                    3216 	.db	00109$
      000BFA 27                    3217 	.db	00104$
      000BFB 48                    3218 	.db	00109$
      000BFC 2E                    3219 	.db	00105$
      000BFD 48                    3220 	.db	00109$
      000BFE 35                    3221 	.db	00106$
      000BFF 48                    3222 	.db	00109$
      000C00 3C                    3223 	.db	00107$
      000C01 48                    3224 	.db	00109$
      000C02 43                    3225 	.db	00108$
      000C03                       3226 00118$:
      000C03 0C                    3227 	.db	00101$>>8
      000C04 0C                    3228 	.db	00109$>>8
      000C05 0C                    3229 	.db	00102$>>8
      000C06 0C                    3230 	.db	00109$>>8
      000C07 0C                    3231 	.db	00103$>>8
      000C08 0C                    3232 	.db	00109$>>8
      000C09 0C                    3233 	.db	00104$>>8
      000C0A 0C                    3234 	.db	00109$>>8
      000C0B 0C                    3235 	.db	00105$>>8
      000C0C 0C                    3236 	.db	00109$>>8
      000C0D 0C                    3237 	.db	00106$>>8
      000C0E 0C                    3238 	.db	00109$>>8
      000C0F 0C                    3239 	.db	00107$>>8
      000C10 0C                    3240 	.db	00109$>>8
      000C11 0C                    3241 	.db	00108$>>8
                                   3242 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:890: case PWM_Channel0:
      000C12                       3243 00101$:
                                   3244 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:891: PWMA_CCMR1 = ccmr;
      000C12 90 FE C8         [24] 3245 	mov	dptr,#_PWMA_CCMR1
      000C15 EE               [12] 3246 	mov	a,r6
      000C16 F0               [24] 3247 	movx	@dptr,a
                                   3248 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:892: break;
                                   3249 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:894: case PWM_Channel1:
      000C17 80 2F            [24] 3250 	sjmp	00109$
      000C19                       3251 00102$:
                                   3252 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:895: PWMA_CCMR2 = ccmr;
      000C19 90 FE C9         [24] 3253 	mov	dptr,#_PWMA_CCMR2
      000C1C EE               [12] 3254 	mov	a,r6
      000C1D F0               [24] 3255 	movx	@dptr,a
                                   3256 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:896: break;
                                   3257 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:899: case PWM_Channel2:
      000C1E 80 28            [24] 3258 	sjmp	00109$
      000C20                       3259 00103$:
                                   3260 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:900: PWMA_CCMR3 = ccmr;
      000C20 90 FE CA         [24] 3261 	mov	dptr,#_PWMA_CCMR3
      000C23 EE               [12] 3262 	mov	a,r6
      000C24 F0               [24] 3263 	movx	@dptr,a
                                   3264 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:901: break;
                                   3265 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:902: case PWM_Channel3:
      000C25 80 21            [24] 3266 	sjmp	00109$
      000C27                       3267 00104$:
                                   3268 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:903: PWMA_CCMR4 = ccmr;
      000C27 90 FE CB         [24] 3269 	mov	dptr,#_PWMA_CCMR4
      000C2A EE               [12] 3270 	mov	a,r6
      000C2B F0               [24] 3271 	movx	@dptr,a
                                   3272 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:904: break;
                                   3273 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:907: case PWM_Channel4:
      000C2C 80 1A            [24] 3274 	sjmp	00109$
      000C2E                       3275 00105$:
                                   3276 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:908: PWMB_CCMR1 = ccmr;
      000C2E 90 FE E8         [24] 3277 	mov	dptr,#_PWMB_CCMR1
      000C31 EE               [12] 3278 	mov	a,r6
      000C32 F0               [24] 3279 	movx	@dptr,a
                                   3280 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:909: break;
                                   3281 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:910: case PWM_Channel5:
      000C33 80 13            [24] 3282 	sjmp	00109$
      000C35                       3283 00106$:
                                   3284 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:911: PWMB_CCMR2 = ccmr;
      000C35 90 FE E9         [24] 3285 	mov	dptr,#_PWMB_CCMR2
      000C38 EE               [12] 3286 	mov	a,r6
      000C39 F0               [24] 3287 	movx	@dptr,a
                                   3288 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:912: break;
                                   3289 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:913: case PWM_Channel6:
      000C3A 80 0C            [24] 3290 	sjmp	00109$
      000C3C                       3291 00107$:
                                   3292 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:914: PWMB_CCMR3 = ccmr;
      000C3C 90 FE EA         [24] 3293 	mov	dptr,#_PWMB_CCMR3
      000C3F EE               [12] 3294 	mov	a,r6
      000C40 F0               [24] 3295 	movx	@dptr,a
                                   3296 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:915: break;
                                   3297 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:916: case PWM_Channel7:
      000C41 80 05            [24] 3298 	sjmp	00109$
      000C43                       3299 00108$:
                                   3300 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:917: PWMB_CCMR4 = ccmr;
      000C43 90 FE EB         [24] 3301 	mov	dptr,#_PWMB_CCMR4
      000C46 EE               [12] 3302 	mov	a,r6
      000C47 F0               [24] 3303 	movx	@dptr,a
                                   3304 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:920: }
      000C48                       3305 00109$:
                                   3306 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:922: enableChannel(channel, 0, captureEdge);
      000C48 90 00 7F         [24] 3307 	mov	dptr,#_configureInput_channel_65536_226
      000C4B E0               [24] 3308 	movx	a,@dptr
      000C4C FF               [12] 3309 	mov	r7,a
      000C4D 90 00 7C         [24] 3310 	mov	dptr,#_configureInput_PARM_3
      000C50 E0               [24] 3311 	movx	a,@dptr
      000C51 FE               [12] 3312 	mov	r6,a
      000C52 90 00 46         [24] 3313 	mov	dptr,#_enableChannel_PARM_2
      000C55 E4               [12] 3314 	clr	a
      000C56 F0               [24] 3315 	movx	@dptr,a
      000C57 90 00 47         [24] 3316 	mov	dptr,#_enableChannel_PARM_3
      000C5A EE               [12] 3317 	mov	a,r6
      000C5B F0               [24] 3318 	movx	@dptr,a
      000C5C 8F 82            [24] 3319 	mov	dpl,r7
                                   3320 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:923: }
      000C5E 02 04 20         [24] 3321 	ljmp	_enableChannel
                                   3322 ;------------------------------------------------------------
                                   3323 ;Allocation info for local variables in function 'pwmInitialiseQuadratureEncoder'
                                   3324 ;------------------------------------------------------------
                                   3325 ;pinSwitch                 Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_2'
                                   3326 ;captureEdge               Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_3'
                                   3327 ;filter                    Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_4'
                                   3328 ;counter                   Allocated with name '_pwmInitialiseQuadratureEncoder_counter_65536_230'
                                   3329 ;firstChannel              Allocated with name '_pwmInitialiseQuadratureEncoder_firstChannel_65536_231'
                                   3330 ;secondChannel             Allocated with name '_pwmInitialiseQuadratureEncoder_secondChannel_65536_231'
                                   3331 ;------------------------------------------------------------
                                   3332 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:926: void pwmInitialiseQuadratureEncoder(
                                   3333 ;	-----------------------------------------
                                   3334 ;	 function pwmInitialiseQuadratureEncoder
                                   3335 ;	-----------------------------------------
      000C61                       3336 _pwmInitialiseQuadratureEncoder:
      000C61 E5 82            [12] 3337 	mov	a,dpl
      000C63 90 00 83         [24] 3338 	mov	dptr,#_pwmInitialiseQuadratureEncoder_counter_65536_230
      000C66 F0               [24] 3339 	movx	@dptr,a
                                   3340 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:933: PWM_Channel firstChannel = (counter == PWM_COUNTER_A) ? PWM_Channel0 : PWM_Channel4;
      000C67 E0               [24] 3341 	movx	a,@dptr
      000C68 FF               [12] 3342 	mov	r7,a
      000C69 70 04            [24] 3343 	jnz	00103$
      000C6B FD               [12] 3344 	mov	r5,a
      000C6C FE               [12] 3345 	mov	r6,a
      000C6D 80 04            [24] 3346 	sjmp	00104$
      000C6F                       3347 00103$:
      000C6F 7D 08            [12] 3348 	mov	r5,#0x08
      000C71 7E 00            [12] 3349 	mov	r6,#0x00
      000C73                       3350 00104$:
                                   3351 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:937: PWM_Channel secondChannel = firstChannel + 2;
      000C73 8D 06            [24] 3352 	mov	ar6,r5
      000C75 0E               [12] 3353 	inc	r6
      000C76 0E               [12] 3354 	inc	r6
                                   3355 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:950: DISABLE_INTERRUPT
      000C77 90 00 59         [24] 3356 	mov	dptr,#_pwmConfigureCounter_PARM_2
      000C7A E4               [12] 3357 	clr	a
      000C7B F0               [24] 3358 	movx	@dptr,a
      000C7C A3               [24] 3359 	inc	dptr
      000C7D F0               [24] 3360 	movx	@dptr,a
      000C7E A3               [24] 3361 	inc	dptr
      000C7F F0               [24] 3362 	movx	@dptr,a
      000C80 A3               [24] 3363 	inc	dptr
      000C81 F0               [24] 3364 	movx	@dptr,a
      000C82 90 00 5D         [24] 3365 	mov	dptr,#_pwmConfigureCounter_PARM_3
      000C85 14               [12] 3366 	dec	a
      000C86 F0               [24] 3367 	movx	@dptr,a
      000C87 A3               [24] 3368 	inc	dptr
      000C88 F0               [24] 3369 	movx	@dptr,a
      000C89 E4               [12] 3370 	clr	a
      000C8A A3               [24] 3371 	inc	dptr
      000C8B F0               [24] 3372 	movx	@dptr,a
      000C8C A3               [24] 3373 	inc	dptr
      000C8D F0               [24] 3374 	movx	@dptr,a
      000C8E 90 00 61         [24] 3375 	mov	dptr,#_pwmConfigureCounter_PARM_4
      000C91 74 03            [12] 3376 	mov	a,#0x03
      000C93 F0               [24] 3377 	movx	@dptr,a
      000C94 90 00 62         [24] 3378 	mov	dptr,#_pwmConfigureCounter_PARM_5
      000C97 E4               [12] 3379 	clr	a
      000C98 F0               [24] 3380 	movx	@dptr,a
      000C99 90 00 63         [24] 3381 	mov	dptr,#_pwmConfigureCounter_PARM_6
      000C9C F0               [24] 3382 	movx	@dptr,a
      000C9D 90 00 64         [24] 3383 	mov	dptr,#_pwmConfigureCounter_PARM_7
      000CA0 F0               [24] 3384 	movx	@dptr,a
      000CA1 90 00 65         [24] 3385 	mov	dptr,#_pwmConfigureCounter_PARM_8
      000CA4 F0               [24] 3386 	movx	@dptr,a
      000CA5 90 00 66         [24] 3387 	mov	dptr,#_pwmConfigureCounter_PARM_9
      000CA8 F0               [24] 3388 	movx	@dptr,a
      000CA9 90 00 67         [24] 3389 	mov	dptr,#_pwmConfigureCounter_PARM_10
      000CAC 04               [12] 3390 	inc	a
      000CAD F0               [24] 3391 	movx	@dptr,a
      000CAE 90 00 68         [24] 3392 	mov	dptr,#_pwmConfigureCounter_PARM_11
      000CB1 E4               [12] 3393 	clr	a
      000CB2 F0               [24] 3394 	movx	@dptr,a
      000CB3 8F 82            [24] 3395 	mov	dpl,r7
      000CB5 C0 07            [24] 3396 	push	ar7
      000CB7 C0 06            [24] 3397 	push	ar6
      000CB9 C0 05            [24] 3398 	push	ar5
      000CBB 12 07 2F         [24] 3399 	lcall	_pwmConfigureCounter
      000CBE D0 05            [24] 3400 	pop	ar5
                                   3401 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:955: pinSwitch,
      000CC0 90 00 80         [24] 3402 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_2
      000CC3 E0               [24] 3403 	movx	a,@dptr
      000CC4 FC               [12] 3404 	mov	r4,a
                                   3405 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:956: captureEdge,
      000CC5 90 00 81         [24] 3406 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_3
      000CC8 E0               [24] 3407 	movx	a,@dptr
      000CC9 FB               [12] 3408 	mov	r3,a
                                   3409 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:958: filter
      000CCA 90 00 82         [24] 3410 	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_4
      000CCD E0               [24] 3411 	movx	a,@dptr
      000CCE FA               [12] 3412 	mov	r2,a
      000CCF 90 00 7B         [24] 3413 	mov	dptr,#_configureInput_PARM_2
      000CD2 EC               [12] 3414 	mov	a,r4
      000CD3 F0               [24] 3415 	movx	@dptr,a
      000CD4 90 00 7C         [24] 3416 	mov	dptr,#_configureInput_PARM_3
      000CD7 EB               [12] 3417 	mov	a,r3
      000CD8 F0               [24] 3418 	movx	@dptr,a
      000CD9 90 00 7D         [24] 3419 	mov	dptr,#_configureInput_PARM_4
      000CDC 74 01            [12] 3420 	mov	a,#0x01
      000CDE F0               [24] 3421 	movx	@dptr,a
      000CDF 90 00 7E         [24] 3422 	mov	dptr,#_configureInput_PARM_5
      000CE2 EA               [12] 3423 	mov	a,r2
      000CE3 F0               [24] 3424 	movx	@dptr,a
      000CE4 8D 82            [24] 3425 	mov	dpl,r5
      000CE6 C0 05            [24] 3426 	push	ar5
      000CE8 C0 04            [24] 3427 	push	ar4
      000CEA C0 03            [24] 3428 	push	ar3
      000CEC C0 02            [24] 3429 	push	ar2
      000CEE 12 0B 91         [24] 3430 	lcall	_configureInput
      000CF1 D0 02            [24] 3431 	pop	ar2
      000CF3 D0 03            [24] 3432 	pop	ar3
      000CF5 D0 04            [24] 3433 	pop	ar4
      000CF7 D0 05            [24] 3434 	pop	ar5
      000CF9 D0 06            [24] 3435 	pop	ar6
                                   3436 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:966: filter
      000CFB 90 00 7B         [24] 3437 	mov	dptr,#_configureInput_PARM_2
      000CFE EC               [12] 3438 	mov	a,r4
      000CFF F0               [24] 3439 	movx	@dptr,a
      000D00 90 00 7C         [24] 3440 	mov	dptr,#_configureInput_PARM_3
      000D03 EB               [12] 3441 	mov	a,r3
      000D04 F0               [24] 3442 	movx	@dptr,a
      000D05 90 00 7D         [24] 3443 	mov	dptr,#_configureInput_PARM_4
      000D08 74 01            [12] 3444 	mov	a,#0x01
      000D0A F0               [24] 3445 	movx	@dptr,a
      000D0B 90 00 7E         [24] 3446 	mov	dptr,#_configureInput_PARM_5
      000D0E EA               [12] 3447 	mov	a,r2
      000D0F F0               [24] 3448 	movx	@dptr,a
      000D10 8E 82            [24] 3449 	mov	dpl,r6
      000D12 C0 06            [24] 3450 	push	ar6
      000D14 C0 05            [24] 3451 	push	ar5
      000D16 12 0B 91         [24] 3452 	lcall	_configureInput
      000D19 D0 05            [24] 3453 	pop	ar5
      000D1B D0 06            [24] 3454 	pop	ar6
                                   3455 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:969: channelUsage[firstChannel >> 1] = USAGE_ENCODER;
      000D1D ED               [12] 3456 	mov	a,r5
      000D1E C3               [12] 3457 	clr	c
      000D1F 13               [12] 3458 	rrc	a
      000D20 24 31            [12] 3459 	add	a,#_channelUsage
      000D22 F5 82            [12] 3460 	mov	dpl,a
      000D24 E4               [12] 3461 	clr	a
      000D25 34 06            [12] 3462 	addc	a,#(_channelUsage >> 8)
      000D27 F5 83            [12] 3463 	mov	dph,a
      000D29 74 02            [12] 3464 	mov	a,#0x02
      000D2B F0               [24] 3465 	movx	@dptr,a
                                   3466 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:970: channelUsage[secondChannel >> 1] = USAGE_ENCODER;
      000D2C EE               [12] 3467 	mov	a,r6
      000D2D C3               [12] 3468 	clr	c
      000D2E 13               [12] 3469 	rrc	a
      000D2F 24 31            [12] 3470 	add	a,#_channelUsage
      000D31 F5 82            [12] 3471 	mov	dpl,a
      000D33 E4               [12] 3472 	clr	a
      000D34 34 06            [12] 3473 	addc	a,#(_channelUsage >> 8)
      000D36 F5 83            [12] 3474 	mov	dph,a
      000D38 74 02            [12] 3475 	mov	a,#0x02
      000D3A F0               [24] 3476 	movx	@dptr,a
                                   3477 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:973: enableChannelInterrupt(firstChannel);
      000D3B 8D 82            [24] 3478 	mov	dpl,r5
      000D3D 12 09 B1         [24] 3479 	lcall	_enableChannelInterrupt
      000D40 D0 07            [24] 3480 	pop	ar7
                                   3481 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:975: pwmEnableCounter(counter);
      000D42 8F 82            [24] 3482 	mov	dpl,r7
                                   3483 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:976: }
      000D44 02 09 90         [24] 3484 	ljmp	_pwmEnableCounter
                                   3485 ;------------------------------------------------------------
                                   3486 ;Allocation info for local variables in function 'pwmInitialiseCapture'
                                   3487 ;------------------------------------------------------------
                                   3488 ;pinSwitch                 Allocated with name '_pwmInitialiseCapture_PARM_2'
                                   3489 ;captureEdge               Allocated with name '_pwmInitialiseCapture_PARM_3'
                                   3490 ;captureSource             Allocated with name '_pwmInitialiseCapture_PARM_4'
                                   3491 ;filter                    Allocated with name '_pwmInitialiseCapture_PARM_5'
                                   3492 ;reference                 Allocated with name '_pwmInitialiseCapture_PARM_6'
                                   3493 ;channel                   Allocated with name '_pwmInitialiseCapture_channel_65536_232'
                                   3494 ;channelIndex              Allocated with name '_pwmInitialiseCapture_channelIndex_65537_234'
                                   3495 ;------------------------------------------------------------
                                   3496 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:979: void pwmInitialiseCapture(
                                   3497 ;	-----------------------------------------
                                   3498 ;	 function pwmInitialiseCapture
                                   3499 ;	-----------------------------------------
      000D47                       3500 _pwmInitialiseCapture:
      000D47 E5 82            [12] 3501 	mov	a,dpl
      000D49 90 00 89         [24] 3502 	mov	dptr,#_pwmInitialiseCapture_channel_65536_232
      000D4C F0               [24] 3503 	movx	@dptr,a
                                   3504 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:988: channel, 
      000D4D E0               [24] 3505 	movx	a,@dptr
      000D4E FF               [12] 3506 	mov	r7,a
                                   3507 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:989: pinSwitch,
      000D4F 90 00 84         [24] 3508 	mov	dptr,#_pwmInitialiseCapture_PARM_2
      000D52 E0               [24] 3509 	movx	a,@dptr
      000D53 FE               [12] 3510 	mov	r6,a
                                   3511 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:990: captureEdge,
      000D54 90 00 85         [24] 3512 	mov	dptr,#_pwmInitialiseCapture_PARM_3
      000D57 E0               [24] 3513 	movx	a,@dptr
      000D58 FD               [12] 3514 	mov	r5,a
                                   3515 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:991: captureSource,
      000D59 90 00 86         [24] 3516 	mov	dptr,#_pwmInitialiseCapture_PARM_4
      000D5C E0               [24] 3517 	movx	a,@dptr
      000D5D FC               [12] 3518 	mov	r4,a
                                   3519 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:992: filter
      000D5E 90 00 87         [24] 3520 	mov	dptr,#_pwmInitialiseCapture_PARM_5
      000D61 E0               [24] 3521 	movx	a,@dptr
      000D62 FB               [12] 3522 	mov	r3,a
      000D63 90 00 7B         [24] 3523 	mov	dptr,#_configureInput_PARM_2
      000D66 EE               [12] 3524 	mov	a,r6
      000D67 F0               [24] 3525 	movx	@dptr,a
      000D68 90 00 7C         [24] 3526 	mov	dptr,#_configureInput_PARM_3
      000D6B ED               [12] 3527 	mov	a,r5
      000D6C F0               [24] 3528 	movx	@dptr,a
      000D6D 90 00 7D         [24] 3529 	mov	dptr,#_configureInput_PARM_4
      000D70 EC               [12] 3530 	mov	a,r4
      000D71 F0               [24] 3531 	movx	@dptr,a
      000D72 90 00 7E         [24] 3532 	mov	dptr,#_configureInput_PARM_5
      000D75 EB               [12] 3533 	mov	a,r3
      000D76 F0               [24] 3534 	movx	@dptr,a
      000D77 8F 82            [24] 3535 	mov	dpl,r7
      000D79 C0 07            [24] 3536 	push	ar7
      000D7B 12 0B 91         [24] 3537 	lcall	_configureInput
      000D7E D0 07            [24] 3538 	pop	ar7
                                   3539 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:995: uint8_t channelIndex = channel >> 1;
      000D80 EF               [12] 3540 	mov	a,r7
      000D81 C3               [12] 3541 	clr	c
      000D82 13               [12] 3542 	rrc	a
                                   3543 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:996: channelUsage[channelIndex] = USAGE_CAPTURE | reference;
      000D83 FE               [12] 3544 	mov	r6,a
      000D84 24 31            [12] 3545 	add	a,#_channelUsage
      000D86 FC               [12] 3546 	mov	r4,a
      000D87 E4               [12] 3547 	clr	a
      000D88 34 06            [12] 3548 	addc	a,#(_channelUsage >> 8)
      000D8A FD               [12] 3549 	mov	r5,a
      000D8B 90 00 88         [24] 3550 	mov	dptr,#_pwmInitialiseCapture_PARM_6
      000D8E E0               [24] 3551 	movx	a,@dptr
      000D8F 44 03            [12] 3552 	orl	a,#0x03
      000D91 8C 82            [24] 3553 	mov	dpl,r4
      000D93 8D 83            [24] 3554 	mov	dph,r5
      000D95 F0               [24] 3555 	movx	@dptr,a
                                   3556 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:997: channelLastCount[channelIndex].value = 0UL;
      000D96 EE               [12] 3557 	mov	a,r6
      000D97 75 F0 04         [24] 3558 	mov	b,#0x04
      000D9A A4               [48] 3559 	mul	ab
      000D9B 24 0E            [12] 3560 	add	a,#_channelLastCount
      000D9D F5 82            [12] 3561 	mov	dpl,a
      000D9F 74 00            [12] 3562 	mov	a,#(_channelLastCount >> 8)
      000DA1 35 F0            [12] 3563 	addc	a,b
      000DA3 F5 83            [12] 3564 	mov	dph,a
      000DA5 E4               [12] 3565 	clr	a
      000DA6 F0               [24] 3566 	movx	@dptr,a
      000DA7 A3               [24] 3567 	inc	dptr
      000DA8 F0               [24] 3568 	movx	@dptr,a
      000DA9 A3               [24] 3569 	inc	dptr
      000DAA F0               [24] 3570 	movx	@dptr,a
      000DAB A3               [24] 3571 	inc	dptr
      000DAC F0               [24] 3572 	movx	@dptr,a
                                   3573 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:998: enableChannelInterrupt(channel);
      000DAD 8F 82            [24] 3574 	mov	dpl,r7
                                   3575 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:999: }
      000DAF 02 09 B1         [24] 3576 	ljmp	_enableChannelInterrupt
                                   3577 ;------------------------------------------------------------
                                   3578 ;Allocation info for local variables in function 'pwmA_isr'
                                   3579 ;------------------------------------------------------------
                                   3580 ;sloc0                     Allocated with name '_pwmA_isr_sloc0_1_0'
                                   3581 ;channel                   Allocated with name '_pwmA_isr_channel_65536_236'
                                   3582 ;event                     Allocated with name '_pwmA_isr_event_65536_236'
                                   3583 ;channelIndex              Allocated with name '_pwmA_isr_channelIndex_131072_245'
                                   3584 ;usage                     Allocated with name '_pwmA_isr_usage_131072_245'
                                   3585 ;counter                   Allocated with name '_pwmA_isr_counter_262144_247'
                                   3586 ;refIndex                  Allocated with name '_pwmA_isr_refIndex_262145_249'
                                   3587 ;channelNewCount           Allocated with name '_pwmA_isr_channelNewCount_262146_252'
                                   3588 ;elapsed                   Allocated with name '_pwmA_isr_elapsed_262146_252'
                                   3589 ;------------------------------------------------------------
                                   3590 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1001: INTERRUPT(pwmA_isr, PWMA_INTERRUPT) {
                                   3591 ;	-----------------------------------------
                                   3592 ;	 function pwmA_isr
                                   3593 ;	-----------------------------------------
      000DB2                       3594 _pwmA_isr:
      000DB2 C0 21            [24] 3595 	push	bits
      000DB4 C0 E0            [24] 3596 	push	acc
      000DB6 C0 F0            [24] 3597 	push	b
      000DB8 C0 82            [24] 3598 	push	dpl
      000DBA C0 83            [24] 3599 	push	dph
      000DBC C0 07            [24] 3600 	push	(0+7)
      000DBE C0 06            [24] 3601 	push	(0+6)
      000DC0 C0 05            [24] 3602 	push	(0+5)
      000DC2 C0 04            [24] 3603 	push	(0+4)
      000DC4 C0 03            [24] 3604 	push	(0+3)
      000DC6 C0 02            [24] 3605 	push	(0+2)
      000DC8 C0 01            [24] 3606 	push	(0+1)
      000DCA C0 00            [24] 3607 	push	(0+0)
      000DCC C0 D0            [24] 3608 	push	psw
      000DCE 75 D0 00         [24] 3609 	mov	psw,#0x00
                                   3610 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1002: uint8_t channel = 255;
      000DD1 90 00 8A         [24] 3611 	mov	dptr,#_pwmA_isr_channel_65536_236
      000DD4 74 FF            [12] 3612 	mov	a,#0xff
      000DD6 F0               [24] 3613 	movx	@dptr,a
                                   3614 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1004: uint8_t event = 255;
      000DD7 90 00 8B         [24] 3615 	mov	dptr,#_pwmA_isr_event_65536_236
      000DDA F0               [24] 3616 	movx	@dptr,a
                                   3617 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1007: if (PWMA_SR1 & M_CC1IF) {
      000DDB 90 FE C5         [24] 3618 	mov	dptr,#_PWMA_SR1
      000DDE E0               [24] 3619 	movx	a,@dptr
      000DDF 30 E1 0D         [24] 3620 	jnb	acc.1,00102$
                                   3621 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1008: PWMA_SR1 &= ~M_CC1IF;
      000DE2 90 FE C5         [24] 3622 	mov	dptr,#_PWMA_SR1
      000DE5 E0               [24] 3623 	movx	a,@dptr
      000DE6 53 E0 FD         [24] 3624 	anl	acc,#0xfd
      000DE9 F0               [24] 3625 	movx	@dptr,a
                                   3626 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1009: channel = PWM_Channel0;
      000DEA 90 00 8A         [24] 3627 	mov	dptr,#_pwmA_isr_channel_65536_236
      000DED E4               [12] 3628 	clr	a
      000DEE F0               [24] 3629 	movx	@dptr,a
      000DEF                       3630 00102$:
                                   3631 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1013: if (PWMA_SR1 & M_CC2IF) {
      000DEF 90 FE C5         [24] 3632 	mov	dptr,#_PWMA_SR1
      000DF2 E0               [24] 3633 	movx	a,@dptr
      000DF3 30 E2 0E         [24] 3634 	jnb	acc.2,00104$
                                   3635 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1014: PWMA_SR1 &= ~M_CC2IF;
      000DF6 90 FE C5         [24] 3636 	mov	dptr,#_PWMA_SR1
      000DF9 E0               [24] 3637 	movx	a,@dptr
      000DFA 53 E0 FB         [24] 3638 	anl	acc,#0xfb
      000DFD F0               [24] 3639 	movx	@dptr,a
                                   3640 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1015: channel = PWM_Channel1;
      000DFE 90 00 8A         [24] 3641 	mov	dptr,#_pwmA_isr_channel_65536_236
      000E01 74 02            [12] 3642 	mov	a,#0x02
      000E03 F0               [24] 3643 	movx	@dptr,a
      000E04                       3644 00104$:
                                   3645 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1020: if (PWMA_SR1 & M_CC3IF) {
      000E04 90 FE C5         [24] 3646 	mov	dptr,#_PWMA_SR1
      000E07 E0               [24] 3647 	movx	a,@dptr
      000E08 30 E3 0E         [24] 3648 	jnb	acc.3,00106$
                                   3649 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1021: PWMA_SR1 &= ~M_CC3IF;
      000E0B 90 FE C5         [24] 3650 	mov	dptr,#_PWMA_SR1
      000E0E E0               [24] 3651 	movx	a,@dptr
      000E0F 53 E0 F7         [24] 3652 	anl	acc,#0xf7
      000E12 F0               [24] 3653 	movx	@dptr,a
                                   3654 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1022: channel = PWM_Channel2;
      000E13 90 00 8A         [24] 3655 	mov	dptr,#_pwmA_isr_channel_65536_236
      000E16 74 04            [12] 3656 	mov	a,#0x04
      000E18 F0               [24] 3657 	movx	@dptr,a
      000E19                       3658 00106$:
                                   3659 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1025: if (PWMA_SR1 & M_CC4IF) {
      000E19 90 FE C5         [24] 3660 	mov	dptr,#_PWMA_SR1
      000E1C E0               [24] 3661 	movx	a,@dptr
      000E1D 30 E4 0E         [24] 3662 	jnb	acc.4,00108$
                                   3663 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1026: PWMA_SR1 &= ~M_CC4IF;
      000E20 90 FE C5         [24] 3664 	mov	dptr,#_PWMA_SR1
      000E23 E0               [24] 3665 	movx	a,@dptr
      000E24 53 E0 EF         [24] 3666 	anl	acc,#0xef
      000E27 F0               [24] 3667 	movx	@dptr,a
                                   3668 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1027: channel = PWM_Channel3;
      000E28 90 00 8A         [24] 3669 	mov	dptr,#_pwmA_isr_channel_65536_236
      000E2B 74 06            [12] 3670 	mov	a,#0x06
      000E2D F0               [24] 3671 	movx	@dptr,a
      000E2E                       3672 00108$:
                                   3673 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1031: if (PWMA_SR1 & M_TIF) {
      000E2E 90 FE C5         [24] 3674 	mov	dptr,#_PWMA_SR1
      000E31 E0               [24] 3675 	movx	a,@dptr
      000E32 30 E6 0E         [24] 3676 	jnb	acc.6,00110$
                                   3677 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1032: PWMA_SR1 &= ~M_TIF;
      000E35 90 FE C5         [24] 3678 	mov	dptr,#_PWMA_SR1
      000E38 E0               [24] 3679 	movx	a,@dptr
      000E39 53 E0 BF         [24] 3680 	anl	acc,#0xbf
      000E3C F0               [24] 3681 	movx	@dptr,a
                                   3682 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1034: event = PWM_INTERRUPT_TRIGGER;
      000E3D 90 00 8B         [24] 3683 	mov	dptr,#_pwmA_isr_event_65536_236
      000E40 74 01            [12] 3684 	mov	a,#0x01
      000E42 F0               [24] 3685 	movx	@dptr,a
      000E43                       3686 00110$:
                                   3687 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1038: if (PWMA_SR1 & M_COMIF) {
      000E43 90 FE C5         [24] 3688 	mov	dptr,#_PWMA_SR1
      000E46 E0               [24] 3689 	movx	a,@dptr
      000E47 30 E5 0E         [24] 3690 	jnb	acc.5,00112$
                                   3691 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1039: PWMA_SR1 &= ~M_COMIF;
      000E4A 90 FE C5         [24] 3692 	mov	dptr,#_PWMA_SR1
      000E4D E0               [24] 3693 	movx	a,@dptr
      000E4E 53 E0 DF         [24] 3694 	anl	acc,#0xdf
      000E51 F0               [24] 3695 	movx	@dptr,a
                                   3696 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1041: event = PWM_INTERRUPT_COM;
      000E52 90 00 8B         [24] 3697 	mov	dptr,#_pwmA_isr_event_65536_236
      000E55 74 02            [12] 3698 	mov	a,#0x02
      000E57 F0               [24] 3699 	movx	@dptr,a
      000E58                       3700 00112$:
                                   3701 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1045: if (PWMA_SR1 & M_UIF) {
      000E58 90 FE C5         [24] 3702 	mov	dptr,#_PWMA_SR1
      000E5B E0               [24] 3703 	movx	a,@dptr
      000E5C 30 E0 23         [24] 3704 	jnb	acc.0,00114$
                                   3705 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1046: PWMA_SR1 &= ~M_UIF;
      000E5F 90 FE C5         [24] 3706 	mov	dptr,#_PWMA_SR1
      000E62 E0               [24] 3707 	movx	a,@dptr
      000E63 53 E0 FE         [24] 3708 	anl	acc,#0xfe
      000E66 F0               [24] 3709 	movx	@dptr,a
                                   3710 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1048: event = PWM_INTERRUPT_UPDATE;
      000E67 90 00 8B         [24] 3711 	mov	dptr,#_pwmA_isr_event_65536_236
      000E6A 74 03            [12] 3712 	mov	a,#0x03
      000E6C F0               [24] 3713 	movx	@dptr,a
                                   3714 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1050: counterOverflow[PWM_COUNTER_A]++;
      000E6D 90 06 39         [24] 3715 	mov	dptr,#_counterOverflow
      000E70 E0               [24] 3716 	movx	a,@dptr
      000E71 FE               [12] 3717 	mov	r6,a
      000E72 A3               [24] 3718 	inc	dptr
      000E73 E0               [24] 3719 	movx	a,@dptr
      000E74 FF               [12] 3720 	mov	r7,a
      000E75 0E               [12] 3721 	inc	r6
      000E76 BE 00 01         [24] 3722 	cjne	r6,#0x00,00235$
      000E79 0F               [12] 3723 	inc	r7
      000E7A                       3724 00235$:
      000E7A 90 06 39         [24] 3725 	mov	dptr,#_counterOverflow
      000E7D EE               [12] 3726 	mov	a,r6
      000E7E F0               [24] 3727 	movx	@dptr,a
      000E7F EF               [12] 3728 	mov	a,r7
      000E80 A3               [24] 3729 	inc	dptr
      000E81 F0               [24] 3730 	movx	@dptr,a
      000E82                       3731 00114$:
                                   3732 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1053: if (PWMA_SR1 & M_BIF) {
      000E82 90 FE C5         [24] 3733 	mov	dptr,#_PWMA_SR1
      000E85 E0               [24] 3734 	movx	a,@dptr
      000E86 30 E7 0D         [24] 3735 	jnb	acc.7,00116$
                                   3736 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1057: PWMA_SR1 &= ~M_BIF;
      000E89 90 FE C5         [24] 3737 	mov	dptr,#_PWMA_SR1
      000E8C E0               [24] 3738 	movx	a,@dptr
      000E8D 53 E0 7F         [24] 3739 	anl	acc,#0x7f
      000E90 F0               [24] 3740 	movx	@dptr,a
                                   3741 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1059: event = PWM_INTERRUPT_FAULT;
      000E91 90 00 8B         [24] 3742 	mov	dptr,#_pwmA_isr_event_65536_236
      000E94 E4               [12] 3743 	clr	a
      000E95 F0               [24] 3744 	movx	@dptr,a
      000E96                       3745 00116$:
                                   3746 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1063: if (channel != 255) {
      000E96 90 00 8A         [24] 3747 	mov	dptr,#_pwmA_isr_channel_65536_236
      000E99 E0               [24] 3748 	movx	a,@dptr
      000E9A FF               [12] 3749 	mov	r7,a
      000E9B BF FF 03         [24] 3750 	cjne	r7,#0xff,00237$
      000E9E 02 10 3C         [24] 3751 	ljmp	00135$
      000EA1                       3752 00237$:
                                   3753 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1064: uint8_t channelIndex = channel >> 1;
      000EA1 EF               [12] 3754 	mov	a,r7
      000EA2 C3               [12] 3755 	clr	c
      000EA3 13               [12] 3756 	rrc	a
                                   3757 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1065: PWM_ChannelUsage usage = channelUsage[channelIndex];
      000EA4 FE               [12] 3758 	mov	r6,a
      000EA5 24 31            [12] 3759 	add	a,#_channelUsage
      000EA7 F5 82            [12] 3760 	mov	dpl,a
      000EA9 E4               [12] 3761 	clr	a
      000EAA 34 06            [12] 3762 	addc	a,#(_channelUsage >> 8)
      000EAC F5 83            [12] 3763 	mov	dph,a
      000EAE E0               [24] 3764 	movx	a,@dptr
      000EAF FD               [12] 3765 	mov	r5,a
                                   3766 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1067: switch (usage) {
      000EB0 BD 00 03         [24] 3767 	cjne	r5,#0x00,00238$
      000EB3 02 10 3C         [24] 3768 	ljmp	00135$
      000EB6                       3769 00238$:
      000EB6 BD 01 02         [24] 3770 	cjne	r5,#0x01,00239$
      000EB9 80 05            [24] 3771 	sjmp	00118$
      000EBB                       3772 00239$:
                                   3773 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1071: case USAGE_PWM:
      000EBB BD 02 2B         [24] 3774 	cjne	r5,#0x02,00120$
      000EBE 80 0F            [24] 3775 	sjmp	00119$
      000EC0                       3776 00118$:
                                   3777 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1072: pwmOnChannelInterrupt(channel, 0);
      000EC0 90 01 2E         [24] 3778 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      000EC3 E4               [12] 3779 	clr	a
      000EC4 F0               [24] 3780 	movx	@dptr,a
      000EC5 A3               [24] 3781 	inc	dptr
      000EC6 F0               [24] 3782 	movx	@dptr,a
      000EC7 8F 82            [24] 3783 	mov	dpl,r7
      000EC9 12 2C 42         [24] 3784 	lcall	_pwmOnChannelInterrupt
                                   3785 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1073: break;
      000ECC 02 10 3C         [24] 3786 	ljmp	00135$
                                   3787 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1075: case USAGE_ENCODER:
      000ECF                       3788 00119$:
                                   3789 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1076: pwmOnChannelInterrupt(channel, PWMA_CR1 & M_DIR);
      000ECF 90 FE C0         [24] 3790 	mov	dptr,#_PWMA_CR1
      000ED2 E0               [24] 3791 	movx	a,@dptr
      000ED3 FC               [12] 3792 	mov	r4,a
      000ED4 53 04 10         [24] 3793 	anl	ar4,#0x10
      000ED7 7B 00            [12] 3794 	mov	r3,#0x00
      000ED9 90 01 2E         [24] 3795 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      000EDC EC               [12] 3796 	mov	a,r4
      000EDD F0               [24] 3797 	movx	@dptr,a
      000EDE EB               [12] 3798 	mov	a,r3
      000EDF A3               [24] 3799 	inc	dptr
      000EE0 F0               [24] 3800 	movx	@dptr,a
      000EE1 8F 82            [24] 3801 	mov	dpl,r7
      000EE3 12 2C 42         [24] 3802 	lcall	_pwmOnChannelInterrupt
                                   3803 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1077: break;
      000EE6 02 10 3C         [24] 3804 	ljmp	00135$
                                   3805 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1079: default: { // Capture
      000EE9                       3806 00120$:
                                   3807 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1081: counter.value = 0;
      000EE9 90 00 8C         [24] 3808 	mov	dptr,#_pwmA_isr_counter_262144_247
      000EEC E4               [12] 3809 	clr	a
      000EED F0               [24] 3810 	movx	@dptr,a
      000EEE A3               [24] 3811 	inc	dptr
      000EEF F0               [24] 3812 	movx	@dptr,a
                                   3813 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1083: switch (channel) {
      000EF0 BF 00 02         [24] 3814 	cjne	r7,#0x00,00241$
      000EF3 80 0F            [24] 3815 	sjmp	00121$
      000EF5                       3816 00241$:
      000EF5 BF 02 02         [24] 3817 	cjne	r7,#0x02,00242$
      000EF8 80 1D            [24] 3818 	sjmp	00122$
      000EFA                       3819 00242$:
      000EFA BF 04 02         [24] 3820 	cjne	r7,#0x04,00243$
      000EFD 80 2B            [24] 3821 	sjmp	00123$
      000EFF                       3822 00243$:
                                   3823 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1084: case PWM_Channel0:
      000EFF BF 06 4C         [24] 3824 	cjne	r7,#0x06,00125$
      000F02 80 39            [24] 3825 	sjmp	00124$
      000F04                       3826 00121$:
                                   3827 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1085: counter.byte.high = PWMA_CCR1H;
      000F04 90 FE D5         [24] 3828 	mov	dptr,#_PWMA_CCR1H
      000F07 E0               [24] 3829 	movx	a,@dptr
      000F08 90 00 8D         [24] 3830 	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
      000F0B F0               [24] 3831 	movx	@dptr,a
                                   3832 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1086: counter.byte.low = PWMA_CCR1L;
      000F0C 90 FE D6         [24] 3833 	mov	dptr,#_PWMA_CCR1L
      000F0F E0               [24] 3834 	movx	a,@dptr
      000F10 FF               [12] 3835 	mov	r7,a
      000F11 90 00 8C         [24] 3836 	mov	dptr,#_pwmA_isr_counter_262144_247
      000F14 F0               [24] 3837 	movx	@dptr,a
                                   3838 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1087: break;
                                   3839 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1089: case PWM_Channel1:
      000F15 80 37            [24] 3840 	sjmp	00125$
      000F17                       3841 00122$:
                                   3842 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1090: counter.byte.high = PWMA_CCR2H;
      000F17 90 FE D7         [24] 3843 	mov	dptr,#_PWMA_CCR2H
      000F1A E0               [24] 3844 	movx	a,@dptr
      000F1B 90 00 8D         [24] 3845 	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
      000F1E F0               [24] 3846 	movx	@dptr,a
                                   3847 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1091: counter.byte.low = PWMA_CCR2L;
      000F1F 90 FE D8         [24] 3848 	mov	dptr,#_PWMA_CCR2L
      000F22 E0               [24] 3849 	movx	a,@dptr
      000F23 FF               [12] 3850 	mov	r7,a
      000F24 90 00 8C         [24] 3851 	mov	dptr,#_pwmA_isr_counter_262144_247
      000F27 F0               [24] 3852 	movx	@dptr,a
                                   3853 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1092: break;
                                   3854 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1095: case PWM_Channel2:
      000F28 80 24            [24] 3855 	sjmp	00125$
      000F2A                       3856 00123$:
                                   3857 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1096: counter.byte.high = PWMA_CCR3H;
      000F2A 90 FE D9         [24] 3858 	mov	dptr,#_PWMA_CCR3H
      000F2D E0               [24] 3859 	movx	a,@dptr
      000F2E 90 00 8D         [24] 3860 	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
      000F31 F0               [24] 3861 	movx	@dptr,a
                                   3862 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1097: counter.byte.low = PWMA_CCR3L;
      000F32 90 FE DA         [24] 3863 	mov	dptr,#_PWMA_CCR3L
      000F35 E0               [24] 3864 	movx	a,@dptr
      000F36 FF               [12] 3865 	mov	r7,a
      000F37 90 00 8C         [24] 3866 	mov	dptr,#_pwmA_isr_counter_262144_247
      000F3A F0               [24] 3867 	movx	@dptr,a
                                   3868 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1098: break;
                                   3869 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1099: case PWM_Channel3:
      000F3B 80 11            [24] 3870 	sjmp	00125$
      000F3D                       3871 00124$:
                                   3872 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1100: counter.byte.high = PWMA_CCR4H;
      000F3D 90 FE DB         [24] 3873 	mov	dptr,#_PWMA_CCR4H
      000F40 E0               [24] 3874 	movx	a,@dptr
      000F41 90 00 8D         [24] 3875 	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
      000F44 F0               [24] 3876 	movx	@dptr,a
                                   3877 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1101: counter.byte.low = PWMA_CCR4L;
      000F45 90 FE DC         [24] 3878 	mov	dptr,#_PWMA_CCR4L
      000F48 E0               [24] 3879 	movx	a,@dptr
      000F49 FF               [12] 3880 	mov	r7,a
      000F4A 90 00 8C         [24] 3881 	mov	dptr,#_pwmA_isr_counter_262144_247
      000F4D F0               [24] 3882 	movx	@dptr,a
                                   3883 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1104: }
      000F4E                       3884 00125$:
                                   3885 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1106: uint8_t refIndex = channelIndex;
      000F4E 90 00 8E         [24] 3886 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000F51 EE               [12] 3887 	mov	a,r6
      000F52 F0               [24] 3888 	movx	@dptr,a
                                   3889 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1109: if (usage & PWM_REFERENCE_OTHER_PIN) {
      000F53 ED               [12] 3890 	mov	a,r5
      000F54 30 E4 33         [24] 3891 	jnb	acc.4,00132$
                                   3892 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1110: switch (channel) {
      000F57 90 00 8A         [24] 3893 	mov	dptr,#_pwmA_isr_channel_65536_236
      000F5A E0               [24] 3894 	movx	a,@dptr
      000F5B FF               [12] 3895 	mov	r7,a
      000F5C 60 0F            [24] 3896 	jz	00126$
      000F5E BF 02 02         [24] 3897 	cjne	r7,#0x02,00247$
      000F61 80 12            [24] 3898 	sjmp	00127$
      000F63                       3899 00247$:
      000F63 BF 04 02         [24] 3900 	cjne	r7,#0x04,00248$
      000F66 80 14            [24] 3901 	sjmp	00128$
      000F68                       3902 00248$:
                                   3903 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1111: case PWM_Channel0:
      000F68 BF 06 1F         [24] 3904 	cjne	r7,#0x06,00132$
      000F6B 80 17            [24] 3905 	sjmp	00129$
      000F6D                       3906 00126$:
                                   3907 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1112: refIndex = PWM_Channel1 >> 1;
      000F6D 90 00 8E         [24] 3908 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000F70 74 01            [12] 3909 	mov	a,#0x01
      000F72 F0               [24] 3910 	movx	@dptr,a
                                   3911 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1113: break;
                                   3912 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1114: case PWM_Channel1:
      000F73 80 15            [24] 3913 	sjmp	00132$
      000F75                       3914 00127$:
                                   3915 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1115: refIndex = PWM_Channel0 >> 1;
      000F75 90 00 8E         [24] 3916 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000F78 E4               [12] 3917 	clr	a
      000F79 F0               [24] 3918 	movx	@dptr,a
                                   3919 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1116: break;
                                   3920 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1118: case PWM_Channel2:
      000F7A 80 0E            [24] 3921 	sjmp	00132$
      000F7C                       3922 00128$:
                                   3923 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1119: refIndex = PWM_Channel3 >> 1;
      000F7C 90 00 8E         [24] 3924 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000F7F 74 03            [12] 3925 	mov	a,#0x03
      000F81 F0               [24] 3926 	movx	@dptr,a
                                   3927 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1120: break;
                                   3928 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1121: case PWM_Channel3:
      000F82 80 06            [24] 3929 	sjmp	00132$
      000F84                       3930 00129$:
                                   3931 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1122: refIndex = PWM_Channel2 >> 1;
      000F84 90 00 8E         [24] 3932 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000F87 74 02            [12] 3933 	mov	a,#0x02
      000F89 F0               [24] 3934 	movx	@dptr,a
                                   3935 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1125: }
      000F8A                       3936 00132$:
                                   3937 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1130: channelNewCount.time.overflow = counterOverflow[PWM_COUNTER_A];
      000F8A 90 06 39         [24] 3938 	mov	dptr,#_counterOverflow
      000F8D E0               [24] 3939 	movx	a,@dptr
      000F8E FD               [12] 3940 	mov	r5,a
      000F8F A3               [24] 3941 	inc	dptr
      000F90 E0               [24] 3942 	movx	a,@dptr
      000F91 FF               [12] 3943 	mov	r7,a
      000F92 90 00 91         [24] 3944 	mov	dptr,#(_pwmA_isr_channelNewCount_262146_252 + 0x0002)
      000F95 ED               [12] 3945 	mov	a,r5
      000F96 F0               [24] 3946 	movx	@dptr,a
      000F97 EF               [12] 3947 	mov	a,r7
      000F98 A3               [24] 3948 	inc	dptr
      000F99 F0               [24] 3949 	movx	@dptr,a
                                   3950 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1131: channelNewCount.time.counter = counter.value;
      000F9A 90 00 8C         [24] 3951 	mov	dptr,#_pwmA_isr_counter_262144_247
      000F9D E0               [24] 3952 	movx	a,@dptr
      000F9E FD               [12] 3953 	mov	r5,a
      000F9F A3               [24] 3954 	inc	dptr
      000FA0 E0               [24] 3955 	movx	a,@dptr
      000FA1 FF               [12] 3956 	mov	r7,a
      000FA2 90 00 8F         [24] 3957 	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
      000FA5 ED               [12] 3958 	mov	a,r5
      000FA6 F0               [24] 3959 	movx	@dptr,a
      000FA7 EF               [12] 3960 	mov	a,r7
      000FA8 A3               [24] 3961 	inc	dptr
      000FA9 F0               [24] 3962 	movx	@dptr,a
                                   3963 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1132: elapsed.value = channelNewCount.value - channelLastCount[refIndex].value;
      000FAA 90 00 8F         [24] 3964 	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
      000FAD E0               [24] 3965 	movx	a,@dptr
      000FAE F5 08            [12] 3966 	mov	_pwmA_isr_sloc0_1_0,a
      000FB0 A3               [24] 3967 	inc	dptr
      000FB1 E0               [24] 3968 	movx	a,@dptr
      000FB2 F5 09            [12] 3969 	mov	(_pwmA_isr_sloc0_1_0 + 1),a
      000FB4 A3               [24] 3970 	inc	dptr
      000FB5 E0               [24] 3971 	movx	a,@dptr
      000FB6 F5 0A            [12] 3972 	mov	(_pwmA_isr_sloc0_1_0 + 2),a
      000FB8 A3               [24] 3973 	inc	dptr
      000FB9 E0               [24] 3974 	movx	a,@dptr
      000FBA F5 0B            [12] 3975 	mov	(_pwmA_isr_sloc0_1_0 + 3),a
      000FBC 90 00 8E         [24] 3976 	mov	dptr,#_pwmA_isr_refIndex_262145_249
      000FBF E0               [24] 3977 	movx	a,@dptr
      000FC0 75 F0 04         [24] 3978 	mov	b,#0x04
      000FC3 A4               [48] 3979 	mul	ab
      000FC4 24 0E            [12] 3980 	add	a,#_channelLastCount
      000FC6 F5 82            [12] 3981 	mov	dpl,a
      000FC8 74 00            [12] 3982 	mov	a,#(_channelLastCount >> 8)
      000FCA 35 F0            [12] 3983 	addc	a,b
      000FCC F5 83            [12] 3984 	mov	dph,a
      000FCE E0               [24] 3985 	movx	a,@dptr
      000FCF F8               [12] 3986 	mov	r0,a
      000FD0 A3               [24] 3987 	inc	dptr
      000FD1 E0               [24] 3988 	movx	a,@dptr
      000FD2 F9               [12] 3989 	mov	r1,a
      000FD3 A3               [24] 3990 	inc	dptr
      000FD4 E0               [24] 3991 	movx	a,@dptr
      000FD5 FA               [12] 3992 	mov	r2,a
      000FD6 A3               [24] 3993 	inc	dptr
      000FD7 E0               [24] 3994 	movx	a,@dptr
      000FD8 FF               [12] 3995 	mov	r7,a
      000FD9 E5 08            [12] 3996 	mov	a,_pwmA_isr_sloc0_1_0
      000FDB C3               [12] 3997 	clr	c
      000FDC 98               [12] 3998 	subb	a,r0
      000FDD F8               [12] 3999 	mov	r0,a
      000FDE E5 09            [12] 4000 	mov	a,(_pwmA_isr_sloc0_1_0 + 1)
      000FE0 99               [12] 4001 	subb	a,r1
      000FE1 F9               [12] 4002 	mov	r1,a
      000FE2 E5 0A            [12] 4003 	mov	a,(_pwmA_isr_sloc0_1_0 + 2)
      000FE4 9A               [12] 4004 	subb	a,r2
      000FE5 FA               [12] 4005 	mov	r2,a
      000FE6 E5 0B            [12] 4006 	mov	a,(_pwmA_isr_sloc0_1_0 + 3)
      000FE8 9F               [12] 4007 	subb	a,r7
      000FE9 FF               [12] 4008 	mov	r7,a
      000FEA 90 00 93         [24] 4009 	mov	dptr,#_pwmA_isr_elapsed_262146_252
      000FED E8               [12] 4010 	mov	a,r0
      000FEE F0               [24] 4011 	movx	@dptr,a
      000FEF E9               [12] 4012 	mov	a,r1
      000FF0 A3               [24] 4013 	inc	dptr
      000FF1 F0               [24] 4014 	movx	@dptr,a
      000FF2 EA               [12] 4015 	mov	a,r2
      000FF3 A3               [24] 4016 	inc	dptr
      000FF4 F0               [24] 4017 	movx	@dptr,a
      000FF5 EF               [12] 4018 	mov	a,r7
      000FF6 A3               [24] 4019 	inc	dptr
      000FF7 F0               [24] 4020 	movx	@dptr,a
                                   4021 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1134: channelLastCount[channelIndex].value = channelNewCount.value;
      000FF8 EE               [12] 4022 	mov	a,r6
      000FF9 75 F0 04         [24] 4023 	mov	b,#0x04
      000FFC A4               [48] 4024 	mul	ab
      000FFD 24 0E            [12] 4025 	add	a,#_channelLastCount
      000FFF FE               [12] 4026 	mov	r6,a
      001000 74 00            [12] 4027 	mov	a,#(_channelLastCount >> 8)
      001002 35 F0            [12] 4028 	addc	a,b
      001004 FF               [12] 4029 	mov	r7,a
      001005 90 00 8F         [24] 4030 	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
      001008 E0               [24] 4031 	movx	a,@dptr
      001009 FA               [12] 4032 	mov	r2,a
      00100A A3               [24] 4033 	inc	dptr
      00100B E0               [24] 4034 	movx	a,@dptr
      00100C FB               [12] 4035 	mov	r3,a
      00100D A3               [24] 4036 	inc	dptr
      00100E E0               [24] 4037 	movx	a,@dptr
      00100F FC               [12] 4038 	mov	r4,a
      001010 A3               [24] 4039 	inc	dptr
      001011 E0               [24] 4040 	movx	a,@dptr
      001012 FD               [12] 4041 	mov	r5,a
      001013 8E 82            [24] 4042 	mov	dpl,r6
      001015 8F 83            [24] 4043 	mov	dph,r7
      001017 EA               [12] 4044 	mov	a,r2
      001018 F0               [24] 4045 	movx	@dptr,a
      001019 EB               [12] 4046 	mov	a,r3
      00101A A3               [24] 4047 	inc	dptr
      00101B F0               [24] 4048 	movx	@dptr,a
      00101C EC               [12] 4049 	mov	a,r4
      00101D A3               [24] 4050 	inc	dptr
      00101E F0               [24] 4051 	movx	@dptr,a
      00101F ED               [12] 4052 	mov	a,r5
      001020 A3               [24] 4053 	inc	dptr
      001021 F0               [24] 4054 	movx	@dptr,a
                                   4055 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1135: pwmOnChannelInterrupt(channel, elapsed.time.overflow);
      001022 90 00 8A         [24] 4056 	mov	dptr,#_pwmA_isr_channel_65536_236
      001025 E0               [24] 4057 	movx	a,@dptr
      001026 FF               [12] 4058 	mov	r7,a
      001027 90 00 95         [24] 4059 	mov	dptr,#(_pwmA_isr_elapsed_262146_252 + 0x0002)
      00102A E0               [24] 4060 	movx	a,@dptr
      00102B FD               [12] 4061 	mov	r5,a
      00102C A3               [24] 4062 	inc	dptr
      00102D E0               [24] 4063 	movx	a,@dptr
      00102E FE               [12] 4064 	mov	r6,a
      00102F 90 01 2E         [24] 4065 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      001032 ED               [12] 4066 	mov	a,r5
      001033 F0               [24] 4067 	movx	@dptr,a
      001034 EE               [12] 4068 	mov	a,r6
      001035 A3               [24] 4069 	inc	dptr
      001036 F0               [24] 4070 	movx	@dptr,a
      001037 8F 82            [24] 4071 	mov	dpl,r7
      001039 12 2C 42         [24] 4072 	lcall	_pwmOnChannelInterrupt
                                   4073 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1138: }
      00103C                       4074 00135$:
                                   4075 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1142: if (event != 255) {
      00103C 90 00 8B         [24] 4076 	mov	dptr,#_pwmA_isr_event_65536_236
      00103F E0               [24] 4077 	movx	a,@dptr
      001040 FF               [12] 4078 	mov	r7,a
      001041 BF FF 02         [24] 4079 	cjne	r7,#0xff,00250$
      001044 80 0B            [24] 4080 	sjmp	00138$
      001046                       4081 00250$:
                                   4082 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1143: pwmOnCounterInterrupt(PWM_COUNTER_A, event);
      001046 90 01 2D         [24] 4083 	mov	dptr,#_pwmOnCounterInterrupt_PARM_2
      001049 EF               [12] 4084 	mov	a,r7
      00104A F0               [24] 4085 	movx	@dptr,a
      00104B 75 82 00         [24] 4086 	mov	dpl,#0x00
      00104E 12 2C 41         [24] 4087 	lcall	_pwmOnCounterInterrupt
      001051                       4088 00138$:
                                   4089 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1146: }
      001051 D0 D0            [24] 4090 	pop	psw
      001053 D0 00            [24] 4091 	pop	(0+0)
      001055 D0 01            [24] 4092 	pop	(0+1)
      001057 D0 02            [24] 4093 	pop	(0+2)
      001059 D0 03            [24] 4094 	pop	(0+3)
      00105B D0 04            [24] 4095 	pop	(0+4)
      00105D D0 05            [24] 4096 	pop	(0+5)
      00105F D0 06            [24] 4097 	pop	(0+6)
      001061 D0 07            [24] 4098 	pop	(0+7)
      001063 D0 83            [24] 4099 	pop	dph
      001065 D0 82            [24] 4100 	pop	dpl
      001067 D0 F0            [24] 4101 	pop	b
      001069 D0 E0            [24] 4102 	pop	acc
      00106B D0 21            [24] 4103 	pop	bits
      00106D 32               [24] 4104 	reti
                                   4105 ;------------------------------------------------------------
                                   4106 ;Allocation info for local variables in function 'pwmB_isr'
                                   4107 ;------------------------------------------------------------
                                   4108 ;sloc0                     Allocated with name '_pwmB_isr_sloc0_1_0'
                                   4109 ;channel                   Allocated with name '_pwmB_isr_channel_65536_255'
                                   4110 ;event                     Allocated with name '_pwmB_isr_event_65536_255'
                                   4111 ;channelIndex              Allocated with name '_pwmB_isr_channelIndex_131072_264'
                                   4112 ;usage                     Allocated with name '_pwmB_isr_usage_131072_264'
                                   4113 ;counter                   Allocated with name '_pwmB_isr_counter_262144_266'
                                   4114 ;refIndex                  Allocated with name '_pwmB_isr_refIndex_262145_268'
                                   4115 ;channelNewCount           Allocated with name '_pwmB_isr_channelNewCount_262146_271'
                                   4116 ;elapsed                   Allocated with name '_pwmB_isr_elapsed_262146_271'
                                   4117 ;------------------------------------------------------------
                                   4118 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1149: INTERRUPT(pwmB_isr, PWMB_INTERRUPT) {
                                   4119 ;	-----------------------------------------
                                   4120 ;	 function pwmB_isr
                                   4121 ;	-----------------------------------------
      00106E                       4122 _pwmB_isr:
      00106E C0 21            [24] 4123 	push	bits
      001070 C0 E0            [24] 4124 	push	acc
      001072 C0 F0            [24] 4125 	push	b
      001074 C0 82            [24] 4126 	push	dpl
      001076 C0 83            [24] 4127 	push	dph
      001078 C0 07            [24] 4128 	push	(0+7)
      00107A C0 06            [24] 4129 	push	(0+6)
      00107C C0 05            [24] 4130 	push	(0+5)
      00107E C0 04            [24] 4131 	push	(0+4)
      001080 C0 03            [24] 4132 	push	(0+3)
      001082 C0 02            [24] 4133 	push	(0+2)
      001084 C0 01            [24] 4134 	push	(0+1)
      001086 C0 00            [24] 4135 	push	(0+0)
      001088 C0 D0            [24] 4136 	push	psw
      00108A 75 D0 00         [24] 4137 	mov	psw,#0x00
                                   4138 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1150: uint8_t channel = 255;
      00108D 90 00 97         [24] 4139 	mov	dptr,#_pwmB_isr_channel_65536_255
      001090 74 FF            [12] 4140 	mov	a,#0xff
      001092 F0               [24] 4141 	movx	@dptr,a
                                   4142 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1152: uint8_t event = 255;
      001093 90 00 98         [24] 4143 	mov	dptr,#_pwmB_isr_event_65536_255
      001096 F0               [24] 4144 	movx	@dptr,a
                                   4145 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1155: if (PWMB_SR1 & M_CC5IF) {
      001097 90 FE E5         [24] 4146 	mov	dptr,#_PWMB_SR1
      00109A E0               [24] 4147 	movx	a,@dptr
      00109B 30 E1 0E         [24] 4148 	jnb	acc.1,00102$
                                   4149 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1156: PWMB_SR1 &= ~M_CC5IF;
      00109E 90 FE E5         [24] 4150 	mov	dptr,#_PWMB_SR1
      0010A1 E0               [24] 4151 	movx	a,@dptr
      0010A2 53 E0 FD         [24] 4152 	anl	acc,#0xfd
      0010A5 F0               [24] 4153 	movx	@dptr,a
                                   4154 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1157: channel = PWM_Channel4;
      0010A6 90 00 97         [24] 4155 	mov	dptr,#_pwmB_isr_channel_65536_255
      0010A9 74 08            [12] 4156 	mov	a,#0x08
      0010AB F0               [24] 4157 	movx	@dptr,a
      0010AC                       4158 00102$:
                                   4159 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1160: if (PWMB_SR1 & M_CC6IF) {
      0010AC 90 FE E5         [24] 4160 	mov	dptr,#_PWMB_SR1
      0010AF E0               [24] 4161 	movx	a,@dptr
      0010B0 30 E2 0E         [24] 4162 	jnb	acc.2,00104$
                                   4163 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1161: PWMB_SR1 &= ~M_CC6IF;
      0010B3 90 FE E5         [24] 4164 	mov	dptr,#_PWMB_SR1
      0010B6 E0               [24] 4165 	movx	a,@dptr
      0010B7 53 E0 FB         [24] 4166 	anl	acc,#0xfb
      0010BA F0               [24] 4167 	movx	@dptr,a
                                   4168 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1162: channel = PWM_Channel5;
      0010BB 90 00 97         [24] 4169 	mov	dptr,#_pwmB_isr_channel_65536_255
      0010BE 74 0A            [12] 4170 	mov	a,#0x0a
      0010C0 F0               [24] 4171 	movx	@dptr,a
      0010C1                       4172 00104$:
                                   4173 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1165: if (PWMB_SR1 & M_CC7IF) {
      0010C1 90 FE E5         [24] 4174 	mov	dptr,#_PWMB_SR1
      0010C4 E0               [24] 4175 	movx	a,@dptr
      0010C5 30 E3 0E         [24] 4176 	jnb	acc.3,00106$
                                   4177 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1166: PWMB_SR1 &= ~M_CC7IF;
      0010C8 90 FE E5         [24] 4178 	mov	dptr,#_PWMB_SR1
      0010CB E0               [24] 4179 	movx	a,@dptr
      0010CC 53 E0 F7         [24] 4180 	anl	acc,#0xf7
      0010CF F0               [24] 4181 	movx	@dptr,a
                                   4182 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1167: channel = PWM_Channel6;
      0010D0 90 00 97         [24] 4183 	mov	dptr,#_pwmB_isr_channel_65536_255
      0010D3 74 0C            [12] 4184 	mov	a,#0x0c
      0010D5 F0               [24] 4185 	movx	@dptr,a
      0010D6                       4186 00106$:
                                   4187 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1170: if (PWMB_SR1 & M_CC8IF) {
      0010D6 90 FE E5         [24] 4188 	mov	dptr,#_PWMB_SR1
      0010D9 E0               [24] 4189 	movx	a,@dptr
      0010DA 30 E4 0E         [24] 4190 	jnb	acc.4,00108$
                                   4191 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1171: PWMB_SR1 &= ~M_CC8IF;
      0010DD 90 FE E5         [24] 4192 	mov	dptr,#_PWMB_SR1
      0010E0 E0               [24] 4193 	movx	a,@dptr
      0010E1 53 E0 EF         [24] 4194 	anl	acc,#0xef
      0010E4 F0               [24] 4195 	movx	@dptr,a
                                   4196 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1172: channel = PWM_Channel7;
      0010E5 90 00 97         [24] 4197 	mov	dptr,#_pwmB_isr_channel_65536_255
      0010E8 74 0E            [12] 4198 	mov	a,#0x0e
      0010EA F0               [24] 4199 	movx	@dptr,a
      0010EB                       4200 00108$:
                                   4201 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1175: if (PWMB_SR1 & M_TIF) {
      0010EB 90 FE E5         [24] 4202 	mov	dptr,#_PWMB_SR1
      0010EE E0               [24] 4203 	movx	a,@dptr
      0010EF 30 E6 0E         [24] 4204 	jnb	acc.6,00110$
                                   4205 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1176: PWMB_SR1 &= ~M_TIF;
      0010F2 90 FE E5         [24] 4206 	mov	dptr,#_PWMB_SR1
      0010F5 E0               [24] 4207 	movx	a,@dptr
      0010F6 53 E0 BF         [24] 4208 	anl	acc,#0xbf
      0010F9 F0               [24] 4209 	movx	@dptr,a
                                   4210 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1178: event = PWM_INTERRUPT_TRIGGER;
      0010FA 90 00 98         [24] 4211 	mov	dptr,#_pwmB_isr_event_65536_255
      0010FD 74 01            [12] 4212 	mov	a,#0x01
      0010FF F0               [24] 4213 	movx	@dptr,a
      001100                       4214 00110$:
                                   4215 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1182: if (PWMB_SR1 & M_COMIF) {
      001100 90 FE E5         [24] 4216 	mov	dptr,#_PWMB_SR1
      001103 E0               [24] 4217 	movx	a,@dptr
      001104 30 E5 0E         [24] 4218 	jnb	acc.5,00112$
                                   4219 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1183: PWMB_SR1 &= ~M_COMIF;
      001107 90 FE E5         [24] 4220 	mov	dptr,#_PWMB_SR1
      00110A E0               [24] 4221 	movx	a,@dptr
      00110B 53 E0 DF         [24] 4222 	anl	acc,#0xdf
      00110E F0               [24] 4223 	movx	@dptr,a
                                   4224 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1185: event = PWM_INTERRUPT_COM;
      00110F 90 00 98         [24] 4225 	mov	dptr,#_pwmB_isr_event_65536_255
      001112 74 02            [12] 4226 	mov	a,#0x02
      001114 F0               [24] 4227 	movx	@dptr,a
      001115                       4228 00112$:
                                   4229 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1189: if (PWMB_SR1 & M_UIF) {
      001115 90 FE E5         [24] 4230 	mov	dptr,#_PWMB_SR1
      001118 E0               [24] 4231 	movx	a,@dptr
      001119 30 E0 23         [24] 4232 	jnb	acc.0,00114$
                                   4233 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1190: PWMB_SR1 &= ~M_UIF;
      00111C 90 FE E5         [24] 4234 	mov	dptr,#_PWMB_SR1
      00111F E0               [24] 4235 	movx	a,@dptr
      001120 53 E0 FE         [24] 4236 	anl	acc,#0xfe
      001123 F0               [24] 4237 	movx	@dptr,a
                                   4238 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1192: event = PWM_INTERRUPT_UPDATE;
      001124 90 00 98         [24] 4239 	mov	dptr,#_pwmB_isr_event_65536_255
      001127 74 03            [12] 4240 	mov	a,#0x03
      001129 F0               [24] 4241 	movx	@dptr,a
                                   4242 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1194: counterOverflow[PWM_COUNTER_B]++;
      00112A 90 06 3B         [24] 4243 	mov	dptr,#(_counterOverflow + 0x0002)
      00112D E0               [24] 4244 	movx	a,@dptr
      00112E FE               [12] 4245 	mov	r6,a
      00112F A3               [24] 4246 	inc	dptr
      001130 E0               [24] 4247 	movx	a,@dptr
      001131 FF               [12] 4248 	mov	r7,a
      001132 0E               [12] 4249 	inc	r6
      001133 BE 00 01         [24] 4250 	cjne	r6,#0x00,00235$
      001136 0F               [12] 4251 	inc	r7
      001137                       4252 00235$:
      001137 90 06 3B         [24] 4253 	mov	dptr,#(_counterOverflow + 0x0002)
      00113A EE               [12] 4254 	mov	a,r6
      00113B F0               [24] 4255 	movx	@dptr,a
      00113C EF               [12] 4256 	mov	a,r7
      00113D A3               [24] 4257 	inc	dptr
      00113E F0               [24] 4258 	movx	@dptr,a
      00113F                       4259 00114$:
                                   4260 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1197: if (PWMB_SR1 & M_BIF) {
      00113F 90 FE E5         [24] 4261 	mov	dptr,#_PWMB_SR1
      001142 E0               [24] 4262 	movx	a,@dptr
      001143 30 E7 0D         [24] 4263 	jnb	acc.7,00116$
                                   4264 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1201: PWMB_SR1 &= ~M_BIF;
      001146 90 FE E5         [24] 4265 	mov	dptr,#_PWMB_SR1
      001149 E0               [24] 4266 	movx	a,@dptr
      00114A 53 E0 7F         [24] 4267 	anl	acc,#0x7f
      00114D F0               [24] 4268 	movx	@dptr,a
                                   4269 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1203: event = PWM_INTERRUPT_FAULT;
      00114E 90 00 98         [24] 4270 	mov	dptr,#_pwmB_isr_event_65536_255
      001151 E4               [12] 4271 	clr	a
      001152 F0               [24] 4272 	movx	@dptr,a
      001153                       4273 00116$:
                                   4274 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1207: if (channel != 255) {
      001153 90 00 97         [24] 4275 	mov	dptr,#_pwmB_isr_channel_65536_255
      001156 E0               [24] 4276 	movx	a,@dptr
      001157 FF               [12] 4277 	mov	r7,a
      001158 BF FF 03         [24] 4278 	cjne	r7,#0xff,00237$
      00115B 02 12 FD         [24] 4279 	ljmp	00135$
      00115E                       4280 00237$:
                                   4281 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1208: uint8_t channelIndex = channel >> 1;
      00115E EF               [12] 4282 	mov	a,r7
      00115F C3               [12] 4283 	clr	c
      001160 13               [12] 4284 	rrc	a
                                   4285 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1209: PWM_ChannelUsage usage = channelUsage[channelIndex];
      001161 FE               [12] 4286 	mov	r6,a
      001162 24 31            [12] 4287 	add	a,#_channelUsage
      001164 F5 82            [12] 4288 	mov	dpl,a
      001166 E4               [12] 4289 	clr	a
      001167 34 06            [12] 4290 	addc	a,#(_channelUsage >> 8)
      001169 F5 83            [12] 4291 	mov	dph,a
      00116B E0               [24] 4292 	movx	a,@dptr
      00116C FD               [12] 4293 	mov	r5,a
                                   4294 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1211: switch (usage) {
      00116D BD 00 03         [24] 4295 	cjne	r5,#0x00,00238$
      001170 02 12 FD         [24] 4296 	ljmp	00135$
      001173                       4297 00238$:
      001173 BD 01 02         [24] 4298 	cjne	r5,#0x01,00239$
      001176 80 05            [24] 4299 	sjmp	00118$
      001178                       4300 00239$:
                                   4301 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1215: case USAGE_PWM:
      001178 BD 02 2B         [24] 4302 	cjne	r5,#0x02,00120$
      00117B 80 0F            [24] 4303 	sjmp	00119$
      00117D                       4304 00118$:
                                   4305 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1216: pwmOnChannelInterrupt(channel, 0);
      00117D 90 01 2E         [24] 4306 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      001180 E4               [12] 4307 	clr	a
      001181 F0               [24] 4308 	movx	@dptr,a
      001182 A3               [24] 4309 	inc	dptr
      001183 F0               [24] 4310 	movx	@dptr,a
      001184 8F 82            [24] 4311 	mov	dpl,r7
      001186 12 2C 42         [24] 4312 	lcall	_pwmOnChannelInterrupt
                                   4313 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1217: break;
      001189 02 12 FD         [24] 4314 	ljmp	00135$
                                   4315 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1219: case USAGE_ENCODER:
      00118C                       4316 00119$:
                                   4317 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1220: pwmOnChannelInterrupt(channel, PWMB_CR1 & M_DIR);
      00118C 90 FE E0         [24] 4318 	mov	dptr,#_PWMB_CR1
      00118F E0               [24] 4319 	movx	a,@dptr
      001190 FC               [12] 4320 	mov	r4,a
      001191 53 04 10         [24] 4321 	anl	ar4,#0x10
      001194 7B 00            [12] 4322 	mov	r3,#0x00
      001196 90 01 2E         [24] 4323 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      001199 EC               [12] 4324 	mov	a,r4
      00119A F0               [24] 4325 	movx	@dptr,a
      00119B EB               [12] 4326 	mov	a,r3
      00119C A3               [24] 4327 	inc	dptr
      00119D F0               [24] 4328 	movx	@dptr,a
      00119E 8F 82            [24] 4329 	mov	dpl,r7
      0011A0 12 2C 42         [24] 4330 	lcall	_pwmOnChannelInterrupt
                                   4331 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1221: break;
      0011A3 02 12 FD         [24] 4332 	ljmp	00135$
                                   4333 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1223: default: { // Capture
      0011A6                       4334 00120$:
                                   4335 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1225: counter.value = 0;
      0011A6 90 00 99         [24] 4336 	mov	dptr,#_pwmB_isr_counter_262144_266
      0011A9 E4               [12] 4337 	clr	a
      0011AA F0               [24] 4338 	movx	@dptr,a
      0011AB A3               [24] 4339 	inc	dptr
      0011AC F0               [24] 4340 	movx	@dptr,a
                                   4341 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1227: switch (channel) {
      0011AD BF 08 02         [24] 4342 	cjne	r7,#0x08,00241$
      0011B0 80 0F            [24] 4343 	sjmp	00121$
      0011B2                       4344 00241$:
      0011B2 BF 0A 02         [24] 4345 	cjne	r7,#0x0a,00242$
      0011B5 80 1D            [24] 4346 	sjmp	00122$
      0011B7                       4347 00242$:
      0011B7 BF 0C 02         [24] 4348 	cjne	r7,#0x0c,00243$
      0011BA 80 2B            [24] 4349 	sjmp	00123$
      0011BC                       4350 00243$:
                                   4351 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1228: case PWM_Channel4:
      0011BC BF 0E 4C         [24] 4352 	cjne	r7,#0x0e,00125$
      0011BF 80 39            [24] 4353 	sjmp	00124$
      0011C1                       4354 00121$:
                                   4355 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1229: counter.byte.high = PWMB_CCR1H;
      0011C1 90 FE F5         [24] 4356 	mov	dptr,#_PWMB_CCR1H
      0011C4 E0               [24] 4357 	movx	a,@dptr
      0011C5 90 00 9A         [24] 4358 	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
      0011C8 F0               [24] 4359 	movx	@dptr,a
                                   4360 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1230: counter.byte.low = PWMB_CCR1L;
      0011C9 90 FE F6         [24] 4361 	mov	dptr,#_PWMB_CCR1L
      0011CC E0               [24] 4362 	movx	a,@dptr
      0011CD FF               [12] 4363 	mov	r7,a
      0011CE 90 00 99         [24] 4364 	mov	dptr,#_pwmB_isr_counter_262144_266
      0011D1 F0               [24] 4365 	movx	@dptr,a
                                   4366 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1231: break;
                                   4367 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1232: case PWM_Channel5:
      0011D2 80 37            [24] 4368 	sjmp	00125$
      0011D4                       4369 00122$:
                                   4370 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1233: counter.byte.high = PWMB_CCR2H;
      0011D4 90 FE F7         [24] 4371 	mov	dptr,#_PWMB_CCR2H
      0011D7 E0               [24] 4372 	movx	a,@dptr
      0011D8 90 00 9A         [24] 4373 	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
      0011DB F0               [24] 4374 	movx	@dptr,a
                                   4375 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1234: counter.byte.low = PWMB_CCR2L;
      0011DC 90 FE F8         [24] 4376 	mov	dptr,#_PWMB_CCR2L
      0011DF E0               [24] 4377 	movx	a,@dptr
      0011E0 FF               [12] 4378 	mov	r7,a
      0011E1 90 00 99         [24] 4379 	mov	dptr,#_pwmB_isr_counter_262144_266
      0011E4 F0               [24] 4380 	movx	@dptr,a
                                   4381 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1235: break;
                                   4382 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1236: case PWM_Channel6:
      0011E5 80 24            [24] 4383 	sjmp	00125$
      0011E7                       4384 00123$:
                                   4385 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1237: counter.byte.high = PWMB_CCR3H;
      0011E7 90 FE F9         [24] 4386 	mov	dptr,#_PWMB_CCR3H
      0011EA E0               [24] 4387 	movx	a,@dptr
      0011EB 90 00 9A         [24] 4388 	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
      0011EE F0               [24] 4389 	movx	@dptr,a
                                   4390 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1238: counter.byte.low = PWMB_CCR3L;
      0011EF 90 FE FA         [24] 4391 	mov	dptr,#_PWMB_CCR3L
      0011F2 E0               [24] 4392 	movx	a,@dptr
      0011F3 FF               [12] 4393 	mov	r7,a
      0011F4 90 00 99         [24] 4394 	mov	dptr,#_pwmB_isr_counter_262144_266
      0011F7 F0               [24] 4395 	movx	@dptr,a
                                   4396 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1239: break;
                                   4397 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1240: case PWM_Channel7:
      0011F8 80 11            [24] 4398 	sjmp	00125$
      0011FA                       4399 00124$:
                                   4400 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1241: counter.byte.high = PWMB_CCR4H;
      0011FA 90 FE FB         [24] 4401 	mov	dptr,#_PWMB_CCR4H
      0011FD E0               [24] 4402 	movx	a,@dptr
      0011FE 90 00 9A         [24] 4403 	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
      001201 F0               [24] 4404 	movx	@dptr,a
                                   4405 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1242: counter.byte.low = PWMB_CCR4L;
      001202 90 FE FC         [24] 4406 	mov	dptr,#_PWMB_CCR4L
      001205 E0               [24] 4407 	movx	a,@dptr
      001206 FF               [12] 4408 	mov	r7,a
      001207 90 00 99         [24] 4409 	mov	dptr,#_pwmB_isr_counter_262144_266
      00120A F0               [24] 4410 	movx	@dptr,a
                                   4411 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1244: }
      00120B                       4412 00125$:
                                   4413 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1246: uint8_t refIndex = channelIndex;
      00120B 90 00 9B         [24] 4414 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      00120E EE               [12] 4415 	mov	a,r6
      00120F F0               [24] 4416 	movx	@dptr,a
                                   4417 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1248: if (usage & PWM_REFERENCE_OTHER_PIN) {
      001210 ED               [12] 4418 	mov	a,r5
      001211 30 E4 37         [24] 4419 	jnb	acc.4,00132$
                                   4420 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1249: switch (channel) {
      001214 90 00 97         [24] 4421 	mov	dptr,#_pwmB_isr_channel_65536_255
      001217 E0               [24] 4422 	movx	a,@dptr
      001218 FF               [12] 4423 	mov	r7,a
      001219 BF 08 02         [24] 4424 	cjne	r7,#0x08,00246$
      00121C 80 0F            [24] 4425 	sjmp	00126$
      00121E                       4426 00246$:
      00121E BF 0A 02         [24] 4427 	cjne	r7,#0x0a,00247$
      001221 80 12            [24] 4428 	sjmp	00127$
      001223                       4429 00247$:
      001223 BF 0C 02         [24] 4430 	cjne	r7,#0x0c,00248$
      001226 80 15            [24] 4431 	sjmp	00128$
      001228                       4432 00248$:
                                   4433 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1250: case PWM_Channel4:
      001228 BF 0E 20         [24] 4434 	cjne	r7,#0x0e,00132$
      00122B 80 18            [24] 4435 	sjmp	00129$
      00122D                       4436 00126$:
                                   4437 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1251: refIndex = PWM_Channel5 >> 1;
      00122D 90 00 9B         [24] 4438 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      001230 74 05            [12] 4439 	mov	a,#0x05
      001232 F0               [24] 4440 	movx	@dptr,a
                                   4441 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1252: break;
                                   4442 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1253: case PWM_Channel5:
      001233 80 16            [24] 4443 	sjmp	00132$
      001235                       4444 00127$:
                                   4445 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1254: refIndex = PWM_Channel4 >> 1;
      001235 90 00 9B         [24] 4446 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      001238 74 04            [12] 4447 	mov	a,#0x04
      00123A F0               [24] 4448 	movx	@dptr,a
                                   4449 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1255: break;
                                   4450 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1256: case PWM_Channel6:
      00123B 80 0E            [24] 4451 	sjmp	00132$
      00123D                       4452 00128$:
                                   4453 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1257: refIndex = PWM_Channel7 >> 1;
      00123D 90 00 9B         [24] 4454 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      001240 74 07            [12] 4455 	mov	a,#0x07
      001242 F0               [24] 4456 	movx	@dptr,a
                                   4457 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1258: break;
                                   4458 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1259: case PWM_Channel7:
      001243 80 06            [24] 4459 	sjmp	00132$
      001245                       4460 00129$:
                                   4461 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1260: refIndex = PWM_Channel6 >> 1;
      001245 90 00 9B         [24] 4462 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      001248 74 06            [12] 4463 	mov	a,#0x06
      00124A F0               [24] 4464 	movx	@dptr,a
                                   4465 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1262: }
      00124B                       4466 00132$:
                                   4467 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1266: channelNewCount.time.overflow = counterOverflow[PWM_COUNTER_B];
      00124B 90 06 3B         [24] 4468 	mov	dptr,#(_counterOverflow + 0x0002)
      00124E E0               [24] 4469 	movx	a,@dptr
      00124F FD               [12] 4470 	mov	r5,a
      001250 A3               [24] 4471 	inc	dptr
      001251 E0               [24] 4472 	movx	a,@dptr
      001252 FF               [12] 4473 	mov	r7,a
      001253 90 00 9E         [24] 4474 	mov	dptr,#(_pwmB_isr_channelNewCount_262146_271 + 0x0002)
      001256 ED               [12] 4475 	mov	a,r5
      001257 F0               [24] 4476 	movx	@dptr,a
      001258 EF               [12] 4477 	mov	a,r7
      001259 A3               [24] 4478 	inc	dptr
      00125A F0               [24] 4479 	movx	@dptr,a
                                   4480 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1267: channelNewCount.time.counter = counter.value;
      00125B 90 00 99         [24] 4481 	mov	dptr,#_pwmB_isr_counter_262144_266
      00125E E0               [24] 4482 	movx	a,@dptr
      00125F FD               [12] 4483 	mov	r5,a
      001260 A3               [24] 4484 	inc	dptr
      001261 E0               [24] 4485 	movx	a,@dptr
      001262 FF               [12] 4486 	mov	r7,a
      001263 90 00 9C         [24] 4487 	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
      001266 ED               [12] 4488 	mov	a,r5
      001267 F0               [24] 4489 	movx	@dptr,a
      001268 EF               [12] 4490 	mov	a,r7
      001269 A3               [24] 4491 	inc	dptr
      00126A F0               [24] 4492 	movx	@dptr,a
                                   4493 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1268: elapsed.value = channelNewCount.value - channelLastCount[refIndex].value;
      00126B 90 00 9C         [24] 4494 	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
      00126E E0               [24] 4495 	movx	a,@dptr
      00126F F5 0C            [12] 4496 	mov	_pwmB_isr_sloc0_1_0,a
      001271 A3               [24] 4497 	inc	dptr
      001272 E0               [24] 4498 	movx	a,@dptr
      001273 F5 0D            [12] 4499 	mov	(_pwmB_isr_sloc0_1_0 + 1),a
      001275 A3               [24] 4500 	inc	dptr
      001276 E0               [24] 4501 	movx	a,@dptr
      001277 F5 0E            [12] 4502 	mov	(_pwmB_isr_sloc0_1_0 + 2),a
      001279 A3               [24] 4503 	inc	dptr
      00127A E0               [24] 4504 	movx	a,@dptr
      00127B F5 0F            [12] 4505 	mov	(_pwmB_isr_sloc0_1_0 + 3),a
      00127D 90 00 9B         [24] 4506 	mov	dptr,#_pwmB_isr_refIndex_262145_268
      001280 E0               [24] 4507 	movx	a,@dptr
      001281 75 F0 04         [24] 4508 	mov	b,#0x04
      001284 A4               [48] 4509 	mul	ab
      001285 24 0E            [12] 4510 	add	a,#_channelLastCount
      001287 F5 82            [12] 4511 	mov	dpl,a
      001289 74 00            [12] 4512 	mov	a,#(_channelLastCount >> 8)
      00128B 35 F0            [12] 4513 	addc	a,b
      00128D F5 83            [12] 4514 	mov	dph,a
      00128F E0               [24] 4515 	movx	a,@dptr
      001290 F8               [12] 4516 	mov	r0,a
      001291 A3               [24] 4517 	inc	dptr
      001292 E0               [24] 4518 	movx	a,@dptr
      001293 F9               [12] 4519 	mov	r1,a
      001294 A3               [24] 4520 	inc	dptr
      001295 E0               [24] 4521 	movx	a,@dptr
      001296 FA               [12] 4522 	mov	r2,a
      001297 A3               [24] 4523 	inc	dptr
      001298 E0               [24] 4524 	movx	a,@dptr
      001299 FF               [12] 4525 	mov	r7,a
      00129A E5 0C            [12] 4526 	mov	a,_pwmB_isr_sloc0_1_0
      00129C C3               [12] 4527 	clr	c
      00129D 98               [12] 4528 	subb	a,r0
      00129E F8               [12] 4529 	mov	r0,a
      00129F E5 0D            [12] 4530 	mov	a,(_pwmB_isr_sloc0_1_0 + 1)
      0012A1 99               [12] 4531 	subb	a,r1
      0012A2 F9               [12] 4532 	mov	r1,a
      0012A3 E5 0E            [12] 4533 	mov	a,(_pwmB_isr_sloc0_1_0 + 2)
      0012A5 9A               [12] 4534 	subb	a,r2
      0012A6 FA               [12] 4535 	mov	r2,a
      0012A7 E5 0F            [12] 4536 	mov	a,(_pwmB_isr_sloc0_1_0 + 3)
      0012A9 9F               [12] 4537 	subb	a,r7
      0012AA FF               [12] 4538 	mov	r7,a
      0012AB 90 00 A0         [24] 4539 	mov	dptr,#_pwmB_isr_elapsed_262146_271
      0012AE E8               [12] 4540 	mov	a,r0
      0012AF F0               [24] 4541 	movx	@dptr,a
      0012B0 E9               [12] 4542 	mov	a,r1
      0012B1 A3               [24] 4543 	inc	dptr
      0012B2 F0               [24] 4544 	movx	@dptr,a
      0012B3 EA               [12] 4545 	mov	a,r2
      0012B4 A3               [24] 4546 	inc	dptr
      0012B5 F0               [24] 4547 	movx	@dptr,a
      0012B6 EF               [12] 4548 	mov	a,r7
      0012B7 A3               [24] 4549 	inc	dptr
      0012B8 F0               [24] 4550 	movx	@dptr,a
                                   4551 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1270: channelLastCount[channelIndex].value = channelNewCount.value;
      0012B9 EE               [12] 4552 	mov	a,r6
      0012BA 75 F0 04         [24] 4553 	mov	b,#0x04
      0012BD A4               [48] 4554 	mul	ab
      0012BE 24 0E            [12] 4555 	add	a,#_channelLastCount
      0012C0 FE               [12] 4556 	mov	r6,a
      0012C1 74 00            [12] 4557 	mov	a,#(_channelLastCount >> 8)
      0012C3 35 F0            [12] 4558 	addc	a,b
      0012C5 FF               [12] 4559 	mov	r7,a
      0012C6 90 00 9C         [24] 4560 	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
      0012C9 E0               [24] 4561 	movx	a,@dptr
      0012CA FA               [12] 4562 	mov	r2,a
      0012CB A3               [24] 4563 	inc	dptr
      0012CC E0               [24] 4564 	movx	a,@dptr
      0012CD FB               [12] 4565 	mov	r3,a
      0012CE A3               [24] 4566 	inc	dptr
      0012CF E0               [24] 4567 	movx	a,@dptr
      0012D0 FC               [12] 4568 	mov	r4,a
      0012D1 A3               [24] 4569 	inc	dptr
      0012D2 E0               [24] 4570 	movx	a,@dptr
      0012D3 FD               [12] 4571 	mov	r5,a
      0012D4 8E 82            [24] 4572 	mov	dpl,r6
      0012D6 8F 83            [24] 4573 	mov	dph,r7
      0012D8 EA               [12] 4574 	mov	a,r2
      0012D9 F0               [24] 4575 	movx	@dptr,a
      0012DA EB               [12] 4576 	mov	a,r3
      0012DB A3               [24] 4577 	inc	dptr
      0012DC F0               [24] 4578 	movx	@dptr,a
      0012DD EC               [12] 4579 	mov	a,r4
      0012DE A3               [24] 4580 	inc	dptr
      0012DF F0               [24] 4581 	movx	@dptr,a
      0012E0 ED               [12] 4582 	mov	a,r5
      0012E1 A3               [24] 4583 	inc	dptr
      0012E2 F0               [24] 4584 	movx	@dptr,a
                                   4585 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1271: pwmOnChannelInterrupt(channel, elapsed.time.overflow);
      0012E3 90 00 97         [24] 4586 	mov	dptr,#_pwmB_isr_channel_65536_255
      0012E6 E0               [24] 4587 	movx	a,@dptr
      0012E7 FF               [12] 4588 	mov	r7,a
      0012E8 90 00 A2         [24] 4589 	mov	dptr,#(_pwmB_isr_elapsed_262146_271 + 0x0002)
      0012EB E0               [24] 4590 	movx	a,@dptr
      0012EC FD               [12] 4591 	mov	r5,a
      0012ED A3               [24] 4592 	inc	dptr
      0012EE E0               [24] 4593 	movx	a,@dptr
      0012EF FE               [12] 4594 	mov	r6,a
      0012F0 90 01 2E         [24] 4595 	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
      0012F3 ED               [12] 4596 	mov	a,r5
      0012F4 F0               [24] 4597 	movx	@dptr,a
      0012F5 EE               [12] 4598 	mov	a,r6
      0012F6 A3               [24] 4599 	inc	dptr
      0012F7 F0               [24] 4600 	movx	@dptr,a
      0012F8 8F 82            [24] 4601 	mov	dpl,r7
      0012FA 12 2C 42         [24] 4602 	lcall	_pwmOnChannelInterrupt
                                   4603 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1274: }
      0012FD                       4604 00135$:
                                   4605 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1278: if (event != 255) {
      0012FD 90 00 98         [24] 4606 	mov	dptr,#_pwmB_isr_event_65536_255
      001300 E0               [24] 4607 	movx	a,@dptr
      001301 FF               [12] 4608 	mov	r7,a
      001302 BF FF 02         [24] 4609 	cjne	r7,#0xff,00250$
      001305 80 0B            [24] 4610 	sjmp	00138$
      001307                       4611 00250$:
                                   4612 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1279: pwmOnCounterInterrupt(PWM_COUNTER_B, event);
      001307 90 01 2D         [24] 4613 	mov	dptr,#_pwmOnCounterInterrupt_PARM_2
      00130A EF               [12] 4614 	mov	a,r7
      00130B F0               [24] 4615 	movx	@dptr,a
      00130C 75 82 01         [24] 4616 	mov	dpl,#0x01
      00130F 12 2C 41         [24] 4617 	lcall	_pwmOnCounterInterrupt
      001312                       4618 00138$:
                                   4619 ;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1282: }
      001312 D0 D0            [24] 4620 	pop	psw
      001314 D0 00            [24] 4621 	pop	(0+0)
      001316 D0 01            [24] 4622 	pop	(0+1)
      001318 D0 02            [24] 4623 	pop	(0+2)
      00131A D0 03            [24] 4624 	pop	(0+3)
      00131C D0 04            [24] 4625 	pop	(0+4)
      00131E D0 05            [24] 4626 	pop	(0+5)
      001320 D0 06            [24] 4627 	pop	(0+6)
      001322 D0 07            [24] 4628 	pop	(0+7)
      001324 D0 83            [24] 4629 	pop	dph
      001326 D0 82            [24] 4630 	pop	dpl
      001328 D0 F0            [24] 4631 	pop	b
      00132A D0 E0            [24] 4632 	pop	acc
      00132C D0 21            [24] 4633 	pop	bits
      00132E 32               [24] 4634 	reti
                                   4635 	.area CSEG    (CODE)
                                   4636 	.area CONST   (CODE)
      005A3E                       4637 _FONTS:
      005A3E 00                    4638 	.db #0x00	; 0
      005A3F 00                    4639 	.db #0x00	; 0
      005A40 00                    4640 	.db #0x00	; 0
      005A41 00                    4641 	.db #0x00	; 0
      005A42 00                    4642 	.db #0x00	; 0
      005A43 81                    4643 	.db #0x81	; 129
      005A44 81                    4644 	.db #0x81	; 129
      005A45 18                    4645 	.db #0x18	; 24
      005A46 81                    4646 	.db #0x81	; 129
      005A47 81                    4647 	.db #0x81	; 129
      005A48 00                    4648 	.db #0x00	; 0
      005A49 07                    4649 	.db #0x07	; 7
      005A4A 00                    4650 	.db #0x00	; 0
      005A4B 07                    4651 	.db #0x07	; 7
      005A4C 00                    4652 	.db #0x00	; 0
      005A4D 14                    4653 	.db #0x14	; 20
      005A4E 7F                    4654 	.db #0x7f	; 127
      005A4F 14                    4655 	.db #0x14	; 20
      005A50 7F                    4656 	.db #0x7f	; 127
      005A51 14                    4657 	.db #0x14	; 20
      005A52 24                    4658 	.db #0x24	; 36
      005A53 2A                    4659 	.db #0x2a	; 42
      005A54 7F                    4660 	.db #0x7f	; 127
      005A55 2A                    4661 	.db #0x2a	; 42
      005A56 12                    4662 	.db #0x12	; 18
      005A57 23                    4663 	.db #0x23	; 35
      005A58 13                    4664 	.db #0x13	; 19
      005A59 08                    4665 	.db #0x08	; 8
      005A5A 64                    4666 	.db #0x64	; 100	'd'
      005A5B 62                    4667 	.db #0x62	; 98	'b'
      005A5C 36                    4668 	.db #0x36	; 54	'6'
      005A5D 49                    4669 	.db #0x49	; 73	'I'
      005A5E 55                    4670 	.db #0x55	; 85	'U'
      005A5F 22                    4671 	.db #0x22	; 34
      005A60 50                    4672 	.db #0x50	; 80	'P'
      005A61 00                    4673 	.db #0x00	; 0
      005A62 05                    4674 	.db #0x05	; 5
      005A63 03                    4675 	.db #0x03	; 3
      005A64 00                    4676 	.db #0x00	; 0
      005A65 00                    4677 	.db #0x00	; 0
      005A66 00                    4678 	.db #0x00	; 0
      005A67 1C                    4679 	.db #0x1c	; 28
      005A68 22                    4680 	.db #0x22	; 34
      005A69 41                    4681 	.db #0x41	; 65	'A'
      005A6A 00                    4682 	.db #0x00	; 0
      005A6B 00                    4683 	.db #0x00	; 0
      005A6C 41                    4684 	.db #0x41	; 65	'A'
      005A6D 22                    4685 	.db #0x22	; 34
      005A6E 1C                    4686 	.db #0x1c	; 28
      005A6F 00                    4687 	.db #0x00	; 0
      005A70 14                    4688 	.db #0x14	; 20
      005A71 08                    4689 	.db #0x08	; 8
      005A72 3E                    4690 	.db #0x3e	; 62
      005A73 08                    4691 	.db #0x08	; 8
      005A74 14                    4692 	.db #0x14	; 20
      005A75 08                    4693 	.db #0x08	; 8
      005A76 08                    4694 	.db #0x08	; 8
      005A77 3E                    4695 	.db #0x3e	; 62
      005A78 08                    4696 	.db #0x08	; 8
      005A79 08                    4697 	.db #0x08	; 8
      005A7A 00                    4698 	.db #0x00	; 0
      005A7B 50                    4699 	.db #0x50	; 80	'P'
      005A7C 30                    4700 	.db #0x30	; 48	'0'
      005A7D 00                    4701 	.db #0x00	; 0
      005A7E 00                    4702 	.db #0x00	; 0
      005A7F 08                    4703 	.db #0x08	; 8
      005A80 08                    4704 	.db #0x08	; 8
      005A81 08                    4705 	.db #0x08	; 8
      005A82 08                    4706 	.db #0x08	; 8
      005A83 08                    4707 	.db #0x08	; 8
      005A84 00                    4708 	.db #0x00	; 0
      005A85 60                    4709 	.db #0x60	; 96
      005A86 60                    4710 	.db #0x60	; 96
      005A87 00                    4711 	.db #0x00	; 0
      005A88 00                    4712 	.db #0x00	; 0
      005A89 20                    4713 	.db #0x20	; 32
      005A8A 10                    4714 	.db #0x10	; 16
      005A8B 08                    4715 	.db #0x08	; 8
      005A8C 04                    4716 	.db #0x04	; 4
      005A8D 02                    4717 	.db #0x02	; 2
      005A8E 3E                    4718 	.db #0x3e	; 62
      005A8F 51                    4719 	.db #0x51	; 81	'Q'
      005A90 49                    4720 	.db #0x49	; 73	'I'
      005A91 45                    4721 	.db #0x45	; 69	'E'
      005A92 3E                    4722 	.db #0x3e	; 62
      005A93 00                    4723 	.db #0x00	; 0
      005A94 42                    4724 	.db #0x42	; 66	'B'
      005A95 7F                    4725 	.db #0x7f	; 127
      005A96 40                    4726 	.db #0x40	; 64
      005A97 00                    4727 	.db #0x00	; 0
      005A98 42                    4728 	.db #0x42	; 66	'B'
      005A99 61                    4729 	.db #0x61	; 97	'a'
      005A9A 51                    4730 	.db #0x51	; 81	'Q'
      005A9B 49                    4731 	.db #0x49	; 73	'I'
      005A9C 46                    4732 	.db #0x46	; 70	'F'
      005A9D 21                    4733 	.db #0x21	; 33
      005A9E 41                    4734 	.db #0x41	; 65	'A'
      005A9F 45                    4735 	.db #0x45	; 69	'E'
      005AA0 4B                    4736 	.db #0x4b	; 75	'K'
      005AA1 31                    4737 	.db #0x31	; 49	'1'
      005AA2 18                    4738 	.db #0x18	; 24
      005AA3 14                    4739 	.db #0x14	; 20
      005AA4 12                    4740 	.db #0x12	; 18
      005AA5 7F                    4741 	.db #0x7f	; 127
      005AA6 10                    4742 	.db #0x10	; 16
      005AA7 27                    4743 	.db #0x27	; 39
      005AA8 45                    4744 	.db #0x45	; 69	'E'
      005AA9 45                    4745 	.db #0x45	; 69	'E'
      005AAA 45                    4746 	.db #0x45	; 69	'E'
      005AAB 39                    4747 	.db #0x39	; 57	'9'
      005AAC 3C                    4748 	.db #0x3c	; 60
      005AAD 4A                    4749 	.db #0x4a	; 74	'J'
      005AAE 49                    4750 	.db #0x49	; 73	'I'
      005AAF 49                    4751 	.db #0x49	; 73	'I'
      005AB0 30                    4752 	.db #0x30	; 48	'0'
      005AB1 01                    4753 	.db #0x01	; 1
      005AB2 71                    4754 	.db #0x71	; 113	'q'
      005AB3 09                    4755 	.db #0x09	; 9
      005AB4 05                    4756 	.db #0x05	; 5
      005AB5 03                    4757 	.db #0x03	; 3
      005AB6 36                    4758 	.db #0x36	; 54	'6'
      005AB7 49                    4759 	.db #0x49	; 73	'I'
      005AB8 49                    4760 	.db #0x49	; 73	'I'
      005AB9 49                    4761 	.db #0x49	; 73	'I'
      005ABA 36                    4762 	.db #0x36	; 54	'6'
      005ABB 06                    4763 	.db #0x06	; 6
      005ABC 49                    4764 	.db #0x49	; 73	'I'
      005ABD 49                    4765 	.db #0x49	; 73	'I'
      005ABE 29                    4766 	.db #0x29	; 41
      005ABF 1E                    4767 	.db #0x1e	; 30
      005AC0 00                    4768 	.db #0x00	; 0
      005AC1 36                    4769 	.db #0x36	; 54	'6'
      005AC2 36                    4770 	.db #0x36	; 54	'6'
      005AC3 00                    4771 	.db #0x00	; 0
      005AC4 00                    4772 	.db #0x00	; 0
      005AC5 00                    4773 	.db #0x00	; 0
      005AC6 56                    4774 	.db #0x56	; 86	'V'
      005AC7 36                    4775 	.db #0x36	; 54	'6'
      005AC8 00                    4776 	.db #0x00	; 0
      005AC9 00                    4777 	.db #0x00	; 0
      005ACA 08                    4778 	.db #0x08	; 8
      005ACB 14                    4779 	.db #0x14	; 20
      005ACC 22                    4780 	.db #0x22	; 34
      005ACD 41                    4781 	.db #0x41	; 65	'A'
      005ACE 00                    4782 	.db #0x00	; 0
      005ACF 14                    4783 	.db #0x14	; 20
      005AD0 14                    4784 	.db #0x14	; 20
      005AD1 14                    4785 	.db #0x14	; 20
      005AD2 14                    4786 	.db #0x14	; 20
      005AD3 14                    4787 	.db #0x14	; 20
      005AD4 00                    4788 	.db #0x00	; 0
      005AD5 41                    4789 	.db #0x41	; 65	'A'
      005AD6 22                    4790 	.db #0x22	; 34
      005AD7 14                    4791 	.db #0x14	; 20
      005AD8 08                    4792 	.db #0x08	; 8
      005AD9 02                    4793 	.db #0x02	; 2
      005ADA 01                    4794 	.db #0x01	; 1
      005ADB 51                    4795 	.db #0x51	; 81	'Q'
      005ADC 09                    4796 	.db #0x09	; 9
      005ADD 06                    4797 	.db #0x06	; 6
      005ADE 32                    4798 	.db #0x32	; 50	'2'
      005ADF 49                    4799 	.db #0x49	; 73	'I'
      005AE0 79                    4800 	.db #0x79	; 121	'y'
      005AE1 41                    4801 	.db #0x41	; 65	'A'
      005AE2 3E                    4802 	.db #0x3e	; 62
      005AE3 7E                    4803 	.db #0x7e	; 126
      005AE4 11                    4804 	.db #0x11	; 17
      005AE5 11                    4805 	.db #0x11	; 17
      005AE6 11                    4806 	.db #0x11	; 17
      005AE7 7E                    4807 	.db #0x7e	; 126
      005AE8 7F                    4808 	.db #0x7f	; 127
      005AE9 49                    4809 	.db #0x49	; 73	'I'
      005AEA 49                    4810 	.db #0x49	; 73	'I'
      005AEB 49                    4811 	.db #0x49	; 73	'I'
      005AEC 36                    4812 	.db #0x36	; 54	'6'
      005AED 3E                    4813 	.db #0x3e	; 62
      005AEE 41                    4814 	.db #0x41	; 65	'A'
      005AEF 41                    4815 	.db #0x41	; 65	'A'
      005AF0 41                    4816 	.db #0x41	; 65	'A'
      005AF1 22                    4817 	.db #0x22	; 34
      005AF2 7F                    4818 	.db #0x7f	; 127
      005AF3 41                    4819 	.db #0x41	; 65	'A'
      005AF4 41                    4820 	.db #0x41	; 65	'A'
      005AF5 22                    4821 	.db #0x22	; 34
      005AF6 1C                    4822 	.db #0x1c	; 28
      005AF7 7F                    4823 	.db #0x7f	; 127
      005AF8 49                    4824 	.db #0x49	; 73	'I'
      005AF9 49                    4825 	.db #0x49	; 73	'I'
      005AFA 49                    4826 	.db #0x49	; 73	'I'
      005AFB 41                    4827 	.db #0x41	; 65	'A'
      005AFC 7F                    4828 	.db #0x7f	; 127
      005AFD 09                    4829 	.db #0x09	; 9
      005AFE 09                    4830 	.db #0x09	; 9
      005AFF 09                    4831 	.db #0x09	; 9
      005B00 01                    4832 	.db #0x01	; 1
      005B01 3E                    4833 	.db #0x3e	; 62
      005B02 41                    4834 	.db #0x41	; 65	'A'
      005B03 49                    4835 	.db #0x49	; 73	'I'
      005B04 49                    4836 	.db #0x49	; 73	'I'
      005B05 7A                    4837 	.db #0x7a	; 122	'z'
      005B06 7F                    4838 	.db #0x7f	; 127
      005B07 08                    4839 	.db #0x08	; 8
      005B08 08                    4840 	.db #0x08	; 8
      005B09 08                    4841 	.db #0x08	; 8
      005B0A 7F                    4842 	.db #0x7f	; 127
      005B0B 00                    4843 	.db #0x00	; 0
      005B0C 41                    4844 	.db #0x41	; 65	'A'
      005B0D 7F                    4845 	.db #0x7f	; 127
      005B0E 41                    4846 	.db #0x41	; 65	'A'
      005B0F 00                    4847 	.db #0x00	; 0
      005B10 20                    4848 	.db #0x20	; 32
      005B11 40                    4849 	.db #0x40	; 64
      005B12 41                    4850 	.db #0x41	; 65	'A'
      005B13 3F                    4851 	.db #0x3f	; 63
      005B14 01                    4852 	.db #0x01	; 1
      005B15 7F                    4853 	.db #0x7f	; 127
      005B16 08                    4854 	.db #0x08	; 8
      005B17 14                    4855 	.db #0x14	; 20
      005B18 22                    4856 	.db #0x22	; 34
      005B19 41                    4857 	.db #0x41	; 65	'A'
      005B1A 7F                    4858 	.db #0x7f	; 127
      005B1B 40                    4859 	.db #0x40	; 64
      005B1C 40                    4860 	.db #0x40	; 64
      005B1D 40                    4861 	.db #0x40	; 64
      005B1E 40                    4862 	.db #0x40	; 64
      005B1F 7F                    4863 	.db #0x7f	; 127
      005B20 02                    4864 	.db #0x02	; 2
      005B21 0C                    4865 	.db #0x0c	; 12
      005B22 02                    4866 	.db #0x02	; 2
      005B23 7F                    4867 	.db #0x7f	; 127
      005B24 7F                    4868 	.db #0x7f	; 127
      005B25 04                    4869 	.db #0x04	; 4
      005B26 08                    4870 	.db #0x08	; 8
      005B27 10                    4871 	.db #0x10	; 16
      005B28 7F                    4872 	.db #0x7f	; 127
      005B29 3E                    4873 	.db #0x3e	; 62
      005B2A 41                    4874 	.db #0x41	; 65	'A'
      005B2B 41                    4875 	.db #0x41	; 65	'A'
      005B2C 41                    4876 	.db #0x41	; 65	'A'
      005B2D 3E                    4877 	.db #0x3e	; 62
      005B2E 7F                    4878 	.db #0x7f	; 127
      005B2F 09                    4879 	.db #0x09	; 9
      005B30 09                    4880 	.db #0x09	; 9
      005B31 09                    4881 	.db #0x09	; 9
      005B32 06                    4882 	.db #0x06	; 6
      005B33 3E                    4883 	.db #0x3e	; 62
      005B34 41                    4884 	.db #0x41	; 65	'A'
      005B35 51                    4885 	.db #0x51	; 81	'Q'
      005B36 21                    4886 	.db #0x21	; 33
      005B37 5E                    4887 	.db #0x5e	; 94
      005B38 7F                    4888 	.db #0x7f	; 127
      005B39 09                    4889 	.db #0x09	; 9
      005B3A 19                    4890 	.db #0x19	; 25
      005B3B 29                    4891 	.db #0x29	; 41
      005B3C 46                    4892 	.db #0x46	; 70	'F'
      005B3D 46                    4893 	.db #0x46	; 70	'F'
      005B3E 49                    4894 	.db #0x49	; 73	'I'
      005B3F 49                    4895 	.db #0x49	; 73	'I'
      005B40 49                    4896 	.db #0x49	; 73	'I'
      005B41 31                    4897 	.db #0x31	; 49	'1'
      005B42 01                    4898 	.db #0x01	; 1
      005B43 01                    4899 	.db #0x01	; 1
      005B44 7F                    4900 	.db #0x7f	; 127
      005B45 01                    4901 	.db #0x01	; 1
      005B46 01                    4902 	.db #0x01	; 1
      005B47 3F                    4903 	.db #0x3f	; 63
      005B48 40                    4904 	.db #0x40	; 64
      005B49 40                    4905 	.db #0x40	; 64
      005B4A 40                    4906 	.db #0x40	; 64
      005B4B 3F                    4907 	.db #0x3f	; 63
      005B4C 1F                    4908 	.db #0x1f	; 31
      005B4D 20                    4909 	.db #0x20	; 32
      005B4E 40                    4910 	.db #0x40	; 64
      005B4F 20                    4911 	.db #0x20	; 32
      005B50 1F                    4912 	.db #0x1f	; 31
      005B51 3F                    4913 	.db #0x3f	; 63
      005B52 40                    4914 	.db #0x40	; 64
      005B53 38                    4915 	.db #0x38	; 56	'8'
      005B54 40                    4916 	.db #0x40	; 64
      005B55 3F                    4917 	.db #0x3f	; 63
      005B56 63                    4918 	.db #0x63	; 99	'c'
      005B57 14                    4919 	.db #0x14	; 20
      005B58 08                    4920 	.db #0x08	; 8
      005B59 14                    4921 	.db #0x14	; 20
      005B5A 63                    4922 	.db #0x63	; 99	'c'
      005B5B 07                    4923 	.db #0x07	; 7
      005B5C 08                    4924 	.db #0x08	; 8
      005B5D 70                    4925 	.db #0x70	; 112	'p'
      005B5E 08                    4926 	.db #0x08	; 8
      005B5F 07                    4927 	.db #0x07	; 7
      005B60 61                    4928 	.db #0x61	; 97	'a'
      005B61 51                    4929 	.db #0x51	; 81	'Q'
      005B62 49                    4930 	.db #0x49	; 73	'I'
      005B63 45                    4931 	.db #0x45	; 69	'E'
      005B64 43                    4932 	.db #0x43	; 67	'C'
      005B65 00                    4933 	.db #0x00	; 0
      005B66 7F                    4934 	.db #0x7f	; 127
      005B67 41                    4935 	.db #0x41	; 65	'A'
      005B68 41                    4936 	.db #0x41	; 65	'A'
      005B69 00                    4937 	.db #0x00	; 0
      005B6A 02                    4938 	.db #0x02	; 2
      005B6B 04                    4939 	.db #0x04	; 4
      005B6C 08                    4940 	.db #0x08	; 8
      005B6D 10                    4941 	.db #0x10	; 16
      005B6E 20                    4942 	.db #0x20	; 32
      005B6F 00                    4943 	.db #0x00	; 0
      005B70 41                    4944 	.db #0x41	; 65	'A'
      005B71 41                    4945 	.db #0x41	; 65	'A'
      005B72 7F                    4946 	.db #0x7f	; 127
      005B73 00                    4947 	.db #0x00	; 0
      005B74 04                    4948 	.db #0x04	; 4
      005B75 02                    4949 	.db #0x02	; 2
      005B76 01                    4950 	.db #0x01	; 1
      005B77 02                    4951 	.db #0x02	; 2
      005B78 04                    4952 	.db #0x04	; 4
      005B79 40                    4953 	.db #0x40	; 64
      005B7A 40                    4954 	.db #0x40	; 64
      005B7B 40                    4955 	.db #0x40	; 64
      005B7C 40                    4956 	.db #0x40	; 64
      005B7D 40                    4957 	.db #0x40	; 64
      005B7E 00                    4958 	.db #0x00	; 0
      005B7F 01                    4959 	.db #0x01	; 1
      005B80 02                    4960 	.db #0x02	; 2
      005B81 04                    4961 	.db #0x04	; 4
      005B82 00                    4962 	.db #0x00	; 0
      005B83 20                    4963 	.db #0x20	; 32
      005B84 54                    4964 	.db #0x54	; 84	'T'
      005B85 54                    4965 	.db #0x54	; 84	'T'
      005B86 54                    4966 	.db #0x54	; 84	'T'
      005B87 78                    4967 	.db #0x78	; 120	'x'
      005B88 7F                    4968 	.db #0x7f	; 127
      005B89 48                    4969 	.db #0x48	; 72	'H'
      005B8A 44                    4970 	.db #0x44	; 68	'D'
      005B8B 44                    4971 	.db #0x44	; 68	'D'
      005B8C 38                    4972 	.db #0x38	; 56	'8'
      005B8D 38                    4973 	.db #0x38	; 56	'8'
      005B8E 44                    4974 	.db #0x44	; 68	'D'
      005B8F 44                    4975 	.db #0x44	; 68	'D'
      005B90 44                    4976 	.db #0x44	; 68	'D'
      005B91 20                    4977 	.db #0x20	; 32
      005B92 38                    4978 	.db #0x38	; 56	'8'
      005B93 44                    4979 	.db #0x44	; 68	'D'
      005B94 44                    4980 	.db #0x44	; 68	'D'
      005B95 48                    4981 	.db #0x48	; 72	'H'
      005B96 7F                    4982 	.db #0x7f	; 127
      005B97 38                    4983 	.db #0x38	; 56	'8'
      005B98 54                    4984 	.db #0x54	; 84	'T'
      005B99 54                    4985 	.db #0x54	; 84	'T'
      005B9A 54                    4986 	.db #0x54	; 84	'T'
      005B9B 18                    4987 	.db #0x18	; 24
      005B9C 08                    4988 	.db #0x08	; 8
      005B9D 7E                    4989 	.db #0x7e	; 126
      005B9E 09                    4990 	.db #0x09	; 9
      005B9F 01                    4991 	.db #0x01	; 1
      005BA0 02                    4992 	.db #0x02	; 2
      005BA1 0C                    4993 	.db #0x0c	; 12
      005BA2 52                    4994 	.db #0x52	; 82	'R'
      005BA3 52                    4995 	.db #0x52	; 82	'R'
      005BA4 52                    4996 	.db #0x52	; 82	'R'
      005BA5 3E                    4997 	.db #0x3e	; 62
      005BA6 7F                    4998 	.db #0x7f	; 127
      005BA7 08                    4999 	.db #0x08	; 8
      005BA8 04                    5000 	.db #0x04	; 4
      005BA9 04                    5001 	.db #0x04	; 4
      005BAA 78                    5002 	.db #0x78	; 120	'x'
      005BAB 00                    5003 	.db #0x00	; 0
      005BAC 44                    5004 	.db #0x44	; 68	'D'
      005BAD 7D                    5005 	.db #0x7d	; 125
      005BAE 40                    5006 	.db #0x40	; 64
      005BAF 00                    5007 	.db #0x00	; 0
      005BB0 20                    5008 	.db #0x20	; 32
      005BB1 40                    5009 	.db #0x40	; 64
      005BB2 44                    5010 	.db #0x44	; 68	'D'
      005BB3 3D                    5011 	.db #0x3d	; 61
      005BB4 00                    5012 	.db #0x00	; 0
      005BB5 7F                    5013 	.db #0x7f	; 127
      005BB6 10                    5014 	.db #0x10	; 16
      005BB7 28                    5015 	.db #0x28	; 40
      005BB8 44                    5016 	.db #0x44	; 68	'D'
      005BB9 00                    5017 	.db #0x00	; 0
      005BBA 00                    5018 	.db #0x00	; 0
      005BBB 41                    5019 	.db #0x41	; 65	'A'
      005BBC 7F                    5020 	.db #0x7f	; 127
      005BBD 40                    5021 	.db #0x40	; 64
      005BBE 00                    5022 	.db #0x00	; 0
      005BBF 7C                    5023 	.db #0x7c	; 124
      005BC0 04                    5024 	.db #0x04	; 4
      005BC1 18                    5025 	.db #0x18	; 24
      005BC2 04                    5026 	.db #0x04	; 4
      005BC3 78                    5027 	.db #0x78	; 120	'x'
      005BC4 7C                    5028 	.db #0x7c	; 124
      005BC5 08                    5029 	.db #0x08	; 8
      005BC6 04                    5030 	.db #0x04	; 4
      005BC7 04                    5031 	.db #0x04	; 4
      005BC8 78                    5032 	.db #0x78	; 120	'x'
      005BC9 38                    5033 	.db #0x38	; 56	'8'
      005BCA 44                    5034 	.db #0x44	; 68	'D'
      005BCB 44                    5035 	.db #0x44	; 68	'D'
      005BCC 44                    5036 	.db #0x44	; 68	'D'
      005BCD 38                    5037 	.db #0x38	; 56	'8'
      005BCE 7C                    5038 	.db #0x7c	; 124
      005BCF 14                    5039 	.db #0x14	; 20
      005BD0 14                    5040 	.db #0x14	; 20
      005BD1 14                    5041 	.db #0x14	; 20
      005BD2 08                    5042 	.db #0x08	; 8
      005BD3 08                    5043 	.db #0x08	; 8
      005BD4 14                    5044 	.db #0x14	; 20
      005BD5 14                    5045 	.db #0x14	; 20
      005BD6 14                    5046 	.db #0x14	; 20
      005BD7 7C                    5047 	.db #0x7c	; 124
      005BD8 7C                    5048 	.db #0x7c	; 124
      005BD9 08                    5049 	.db #0x08	; 8
      005BDA 04                    5050 	.db #0x04	; 4
      005BDB 04                    5051 	.db #0x04	; 4
      005BDC 08                    5052 	.db #0x08	; 8
      005BDD 48                    5053 	.db #0x48	; 72	'H'
      005BDE 54                    5054 	.db #0x54	; 84	'T'
      005BDF 54                    5055 	.db #0x54	; 84	'T'
      005BE0 54                    5056 	.db #0x54	; 84	'T'
      005BE1 20                    5057 	.db #0x20	; 32
      005BE2 04                    5058 	.db #0x04	; 4
      005BE3 3F                    5059 	.db #0x3f	; 63
      005BE4 44                    5060 	.db #0x44	; 68	'D'
      005BE5 40                    5061 	.db #0x40	; 64
      005BE6 20                    5062 	.db #0x20	; 32
      005BE7 3C                    5063 	.db #0x3c	; 60
      005BE8 40                    5064 	.db #0x40	; 64
      005BE9 40                    5065 	.db #0x40	; 64
      005BEA 20                    5066 	.db #0x20	; 32
      005BEB 7C                    5067 	.db #0x7c	; 124
      005BEC 1C                    5068 	.db #0x1c	; 28
      005BED 20                    5069 	.db #0x20	; 32
      005BEE 40                    5070 	.db #0x40	; 64
      005BEF 20                    5071 	.db #0x20	; 32
      005BF0 1C                    5072 	.db #0x1c	; 28
      005BF1 3C                    5073 	.db #0x3c	; 60
      005BF2 40                    5074 	.db #0x40	; 64
      005BF3 30                    5075 	.db #0x30	; 48	'0'
      005BF4 40                    5076 	.db #0x40	; 64
      005BF5 3C                    5077 	.db #0x3c	; 60
      005BF6 44                    5078 	.db #0x44	; 68	'D'
      005BF7 28                    5079 	.db #0x28	; 40
      005BF8 10                    5080 	.db #0x10	; 16
      005BF9 28                    5081 	.db #0x28	; 40
      005BFA 44                    5082 	.db #0x44	; 68	'D'
      005BFB 0C                    5083 	.db #0x0c	; 12
      005BFC 50                    5084 	.db #0x50	; 80	'P'
      005BFD 50                    5085 	.db #0x50	; 80	'P'
      005BFE 50                    5086 	.db #0x50	; 80	'P'
      005BFF 3C                    5087 	.db #0x3c	; 60
      005C00 44                    5088 	.db #0x44	; 68	'D'
      005C01 64                    5089 	.db #0x64	; 100	'd'
      005C02 54                    5090 	.db #0x54	; 84	'T'
      005C03 4C                    5091 	.db #0x4c	; 76	'L'
      005C04 44                    5092 	.db #0x44	; 68	'D'
      005C05 00                    5093 	.db #0x00	; 0
      005C06 08                    5094 	.db #0x08	; 8
      005C07 36                    5095 	.db #0x36	; 54	'6'
      005C08 41                    5096 	.db #0x41	; 65	'A'
      005C09 00                    5097 	.db #0x00	; 0
      005C0A 00                    5098 	.db #0x00	; 0
      005C0B 00                    5099 	.db #0x00	; 0
      005C0C 7F                    5100 	.db #0x7f	; 127
      005C0D 00                    5101 	.db #0x00	; 0
      005C0E 00                    5102 	.db #0x00	; 0
      005C0F 00                    5103 	.db #0x00	; 0
      005C10 41                    5104 	.db #0x41	; 65	'A'
      005C11 36                    5105 	.db #0x36	; 54	'6'
      005C12 08                    5106 	.db #0x08	; 8
      005C13 00                    5107 	.db #0x00	; 0
      005C14 10                    5108 	.db #0x10	; 16
      005C15 08                    5109 	.db #0x08	; 8
      005C16 08                    5110 	.db #0x08	; 8
      005C17 10                    5111 	.db #0x10	; 16
      005C18 08                    5112 	.db #0x08	; 8
      005C19 00                    5113 	.db #0x00	; 0
      005C1A 00                    5114 	.db #0x00	; 0
      005C1B 00                    5115 	.db #0x00	; 0
      005C1C 00                    5116 	.db #0x00	; 0
      005C1D 00                    5117 	.db #0x00	; 0
      005C1E                       5118 ___channelPinConfigurations:
      005C1E 10                    5119 	.db #0x10	; 16
      005C1F 11                    5120 	.db #0x11	; 17
      005C20 54                    5121 	.db #0x54	; 84	'T'
      005C21 13                    5122 	.db #0x13	; 19
      005C22 14                    5123 	.db #0x14	; 20
      005C23 15                    5124 	.db #0x15	; 21
      005C24 16                    5125 	.db #0x16	; 22
      005C25 17                    5126 	.db #0x17	; 23
      005C26 20                    5127 	.db #0x20	; 32
      005C27 21                    5128 	.db #0x21	; 33
      005C28 22                    5129 	.db #0x22	; 34
      005C29 23                    5130 	.db #0x23	; 35
      005C2A 20                    5131 	.db #0x20	; 32
      005C2B 21                    5132 	.db #0x21	; 33
      005C2C 22                    5133 	.db #0x22	; 34
      005C2D 23                    5134 	.db #0x23	; 35
      005C2E 24                    5135 	.db #0x24	; 36
      005C2F 25                    5136 	.db #0x25	; 37
      005C30 26                    5137 	.db #0x26	; 38
      005C31 27                    5138 	.db #0x27	; 39
      005C32 17                    5139 	.db #0x17	; 23
      005C33 54                    5140 	.db #0x54	; 84	'T'
      005C34 33                    5141 	.db #0x33	; 51	'3'
      005C35 34                    5142 	.db #0x34	; 52	'4'
      005C36 FF                    5143 	.db #0xff	; 255
      005C37 FF                    5144 	.db #0xff	; 255
      005C38 FF                    5145 	.db #0xff	; 255
      005C39 FF                    5146 	.db #0xff	; 255
      005C3A FF                    5147 	.db #0xff	; 255
      005C3B FF                    5148 	.db #0xff	; 255
      005C3C FF                    5149 	.db #0xff	; 255
      005C3D FF                    5150 	.db #0xff	; 255
      005C3E 00                    5151 	.db #0x00	; 0
      005C3F 01                    5152 	.db #0x01	; 1
      005C40 02                    5153 	.db #0x02	; 2
      005C41 03                    5154 	.db #0x03	; 3
      005C42 FF                    5155 	.db #0xff	; 255
      005C43 FF                    5156 	.db #0xff	; 255
      005C44 FF                    5157 	.db #0xff	; 255
      005C45 FF                    5158 	.db #0xff	; 255
      005C46 FF                    5159 	.db #0xff	; 255
      005C47 FF                    5160 	.db #0xff	; 255
      005C48 34                    5161 	.db #0x34	; 52	'4'
      005C49 33                    5162 	.db #0x33	; 51	'3'
      005C4A FF                    5163 	.db #0xff	; 255
      005C4B FF                    5164 	.db #0xff	; 255
      005C4C FF                    5165 	.db #0xff	; 255
      005C4D FF                    5166 	.db #0xff	; 255
      005C4E                       5167 ___triggerPinConfigurations:
      005C4E 32                    5168 	.db #0x32	; 50	'2'
      005C4F 32                    5169 	.db #0x32	; 50	'2'
      005C50 41                    5170 	.db #0x41	; 65	'A'
      005C51 06                    5171 	.db #0x06	; 6
      005C52 73                    5172 	.db #0x73	; 115	's'
      005C53 FF                    5173 	.db #0xff	; 255
      005C54 FF                    5174 	.db #0xff	; 255
      005C55 FF                    5175 	.db #0xff	; 255
      005C56                       5176 ___faultPinConfigurations:
      005C56 35                    5177 	.db #0x35	; 53	'5'
      005C57 35                    5178 	.db #0x35	; 53	'5'
      005C58 99                    5179 	.db #0x99	; 153
      005C59 99                    5180 	.db #0x99	; 153
                                   5181 	.area XINIT   (CODE)
      007B8B                       5182 __xinit__channelUsage:
      007B8B 00                    5183 	.db #0x00	; 0
      007B8C 00                    5184 	.db #0x00	; 0
      007B8D 00                    5185 	.db #0x00	; 0
      007B8E 00                    5186 	.db #0x00	; 0
      007B8F 00                    5187 	.db #0x00	; 0
      007B90 00                    5188 	.db #0x00	; 0
      007B91 00                    5189 	.db #0x00	; 0
      007B92 00                    5190 	.db #0x00	; 0
      007B93                       5191 __xinit__counterOverflow:
      007B93 00 00                 5192 	.byte #0x00, #0x00	; 0
      007B95 00 00                 5193 	.byte #0x00, #0x00	; 0
                                   5194 	.area CABS    (ABS,CODE)
