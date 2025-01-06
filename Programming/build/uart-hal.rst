                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module uart_hal
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _fifoBytesFree
                                     12 	.globl _fifoRead
                                     13 	.globl _fifoWrite
                                     14 	.globl _fifoClear
                                     15 	.globl _startTimer
                                     16 	.globl _S1SM0_FE
                                     17 	.globl _T1IE
                                     18 	.globl _T0IE
                                     19 	.globl _T1RUN
                                     20 	.globl _T0RUN
                                     21 	.globl _CY
                                     22 	.globl _AC
                                     23 	.globl _F0
                                     24 	.globl _RS1
                                     25 	.globl _RS0
                                     26 	.globl _OV
                                     27 	.globl _F1
                                     28 	.globl _P
                                     29 	.globl _EA
                                     30 	.globl _INT1IE
                                     31 	.globl _INT0IE
                                     32 	.globl _INT1TR
                                     33 	.globl _INT0TR
                                     34 	.globl _P5_5
                                     35 	.globl _P5_4
                                     36 	.globl _P5_3
                                     37 	.globl _P5_2
                                     38 	.globl _P5_1
                                     39 	.globl _P5_0
                                     40 	.globl _P3_7
                                     41 	.globl _P3_6
                                     42 	.globl _P3_5
                                     43 	.globl _P3_4
                                     44 	.globl _P3_3
                                     45 	.globl _P3_2
                                     46 	.globl _P3_1
                                     47 	.globl _P3_0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _P1_7
                                     57 	.globl _P1_6
                                     58 	.globl _P1_5
                                     59 	.globl _P1_4
                                     60 	.globl _P1_3
                                     61 	.globl _P1_2
                                     62 	.globl _P1_1
                                     63 	.globl _P1_0
                                     64 	.globl _USBADR
                                     65 	.globl _USBCON
                                     66 	.globl _USBDAT
                                     67 	.globl _USBCLK
                                     68 	.globl _S4BUF
                                     69 	.globl _S4CON
                                     70 	.globl _S3BUF
                                     71 	.globl _S3CON
                                     72 	.globl _S2BUF
                                     73 	.globl _S2CON
                                     74 	.globl _S1BUF
                                     75 	.globl _S1CON
                                     76 	.globl _SADEN
                                     77 	.globl _SADDR
                                     78 	.globl _AUXINTIF
                                     79 	.globl _T3
                                     80 	.globl _T3L
                                     81 	.globl _T3H
                                     82 	.globl _T4
                                     83 	.globl _T4L
                                     84 	.globl _T4H
                                     85 	.globl _T4T3M
                                     86 	.globl _WDT_CONTR
                                     87 	.globl _AUXR
                                     88 	.globl _T2
                                     89 	.globl _T2H
                                     90 	.globl _T2L
                                     91 	.globl _T1
                                     92 	.globl _T1H
                                     93 	.globl _T1L
                                     94 	.globl _T0
                                     95 	.globl _T0H
                                     96 	.globl _T0L
                                     97 	.globl _TMOD
                                     98 	.globl _TCON
                                     99 	.globl _IRTRIM
                                    100 	.globl _LIRTRIM
                                    101 	.globl _IRCBAND
                                    102 	.globl _SPDAT
                                    103 	.globl _SPCTL
                                    104 	.globl _SPSTAT
                                    105 	.globl _WKTC
                                    106 	.globl _WKTCH
                                    107 	.globl _WKTCL
                                    108 	.globl _BUS_SPEED
                                    109 	.globl _P_SW2
                                    110 	.globl _P_SW1
                                    111 	.globl _RSTCFG
                                    112 	.globl _PCON
                                    113 	.globl _B
                                    114 	.globl _ACC
                                    115 	.globl _PSW
                                    116 	.globl _SP
                                    117 	.globl _IP3H
                                    118 	.globl _IP3L
                                    119 	.globl _IP2H
                                    120 	.globl _IP2L
                                    121 	.globl _IE2
                                    122 	.globl _IP1H
                                    123 	.globl _IP1L
                                    124 	.globl _IE1
                                    125 	.globl _INT_CLKO
                                    126 	.globl _IAP_TPS
                                    127 	.globl _IAP_CONTR
                                    128 	.globl _IAP_TRIG
                                    129 	.globl _IAP_CMD
                                    130 	.globl _IAP_ADDR
                                    131 	.globl _IAP_ADDRL
                                    132 	.globl _IAP_ADDRH
                                    133 	.globl _IAP_DATA
                                    134 	.globl _P5M0
                                    135 	.globl _P5M1
                                    136 	.globl _P5
                                    137 	.globl _P3M0
                                    138 	.globl _P3M1
                                    139 	.globl _P3
                                    140 	.globl _P2M0
                                    141 	.globl _P2M1
                                    142 	.globl _P2
                                    143 	.globl _P1M0
                                    144 	.globl _P1M1
                                    145 	.globl _P1
                                    146 	.globl _TA
                                    147 	.globl _DPH1
                                    148 	.globl _DPL1
                                    149 	.globl _DPS
                                    150 	.globl _DP
                                    151 	.globl _DPH
                                    152 	.globl _DPL
                                    153 	.globl _CMPCR2
                                    154 	.globl _CMPCR1
                                    155 	.globl _DMA_ADC_AMT
                                    156 	.globl _ADCCFG
                                    157 	.globl _ADC_RES
                                    158 	.globl _ADC_RESL
                                    159 	.globl _ADC_RESH
                                    160 	.globl _ADC_CONTR
                                    161 	.globl _uartSendBlock_PARM_4
                                    162 	.globl _uartSendBlock_PARM_3
                                    163 	.globl _uartSendBlock_PARM_2
                                    164 	.globl _uartGetBlock_PARM_4
                                    165 	.globl _uartGetBlock_PARM_3
                                    166 	.globl _uartGetBlock_PARM_2
                                    167 	.globl _uartInitialise_PARM_5
                                    168 	.globl _uartInitialise_PARM_4
                                    169 	.globl _uartInitialise_PARM_3
                                    170 	.globl _uartInitialise_PARM_2
                                    171 	.globl _uartTransmitBufferHasBytesFree_PARM_2
                                    172 	.globl _DMA_UR4R_TXAL
                                    173 	.globl _DMA_UR4R_TXAH
                                    174 	.globl _DMA_UR4R_DONE
                                    175 	.globl _DMA_UR4R_AMT
                                    176 	.globl _DMA_UR4R_STA
                                    177 	.globl _DMA_UR4R_CR
                                    178 	.globl _DMA_UR4R_CFG
                                    179 	.globl _DMA_UR4T_TXAL
                                    180 	.globl _DMA_UR4T_TXAH
                                    181 	.globl _DMA_UR4T_DONE
                                    182 	.globl _DMA_UR4T_AMT
                                    183 	.globl _DMA_UR4T_STA
                                    184 	.globl _DMA_UR4T_CR
                                    185 	.globl _DMA_UR4T_CFG
                                    186 	.globl _DMA_UR3R_TXAL
                                    187 	.globl _DMA_UR3R_TXAH
                                    188 	.globl _DMA_UR3R_DONE
                                    189 	.globl _DMA_UR3R_AMT
                                    190 	.globl _DMA_UR3R_STA
                                    191 	.globl _DMA_UR3R_CR
                                    192 	.globl _DMA_UR3R_CFG
                                    193 	.globl _DMA_UR3T_TXAL
                                    194 	.globl _DMA_UR3T_TXAH
                                    195 	.globl _DMA_UR3T_DONE
                                    196 	.globl _DMA_UR3T_AMT
                                    197 	.globl _DMA_UR3T_STA
                                    198 	.globl _DMA_UR3T_CR
                                    199 	.globl _DMA_UR3T_CFG
                                    200 	.globl _DMA_UR2R_TXAL
                                    201 	.globl _DMA_UR2R_TXAH
                                    202 	.globl _DMA_UR2R_DONE
                                    203 	.globl _DMA_UR2R_AMT
                                    204 	.globl _DMA_UR2R_STA
                                    205 	.globl _DMA_UR2R_CR
                                    206 	.globl _DMA_UR2R_CFG
                                    207 	.globl _DMA_UR2T_TXAL
                                    208 	.globl _DMA_UR2T_TXAH
                                    209 	.globl _DMA_UR2T_DONE
                                    210 	.globl _DMA_UR2T_AMT
                                    211 	.globl _DMA_UR2T_STA
                                    212 	.globl _DMA_UR2T_CR
                                    213 	.globl _DMA_UR2T_CFG
                                    214 	.globl _DMA_UR1R_TXAL
                                    215 	.globl _DMA_UR1R_TXAH
                                    216 	.globl _DMA_UR1R_DONE
                                    217 	.globl _DMA_UR1R_AMT
                                    218 	.globl _DMA_UR1R_STA
                                    219 	.globl _DMA_UR1R_CR
                                    220 	.globl _DMA_UR1R_CFG
                                    221 	.globl _DMA_UR1T_TXAL
                                    222 	.globl _DMA_UR1T_TXAH
                                    223 	.globl _DMA_UR1T_DONE
                                    224 	.globl _DMA_URTX_AMT
                                    225 	.globl _DMA_UR1T_STA
                                    226 	.globl _DMA_UR1T_CR
                                    227 	.globl _DMA_UR1T_CFG
                                    228 	.globl _TM4PS
                                    229 	.globl _TM3PS
                                    230 	.globl _TM2PS
                                    231 	.globl _IRC48MCR
                                    232 	.globl _IRCDB
                                    233 	.globl _MCLKOCR
                                    234 	.globl _CKSEL
                                    235 	.globl _IRC32KCR
                                    236 	.globl _XOSCCR
                                    237 	.globl _HIRCCR
                                    238 	.globl _CLKDIV
                                    239 	.globl _DMA_SPI_CFG2
                                    240 	.globl _DMA_SPI_RXAL
                                    241 	.globl _DMA_SPI_RXAH
                                    242 	.globl _DMA_SPI_TXAL
                                    243 	.globl _DMA_SPI_TXAH
                                    244 	.globl _DMA_SPI_DONE
                                    245 	.globl _DMA_SPI_AMT
                                    246 	.globl _DMA_SPI_STA
                                    247 	.globl _DMA_SPI_CR
                                    248 	.globl _DMA_SPI_CFG
                                    249 	.globl _SSEC
                                    250 	.globl _SEC
                                    251 	.globl _MIN
                                    252 	.globl _HOUR
                                    253 	.globl _DAY
                                    254 	.globl _MONTH
                                    255 	.globl _YEAR
                                    256 	.globl _INISSEC
                                    257 	.globl _INISEC
                                    258 	.globl _INIMIN
                                    259 	.globl _INIHOUR
                                    260 	.globl _INIDAY
                                    261 	.globl _INIMONTH
                                    262 	.globl _INIYEAR
                                    263 	.globl _ALASSEC
                                    264 	.globl _ALASEC
                                    265 	.globl _ALAMIN
                                    266 	.globl _ALAHOUR
                                    267 	.globl _RTCIF
                                    268 	.globl _RTCIEN
                                    269 	.globl _RTCCFG
                                    270 	.globl _RTCCR
                                    271 	.globl _PWMB_OISR
                                    272 	.globl _PWMB_DTR
                                    273 	.globl _PWMB_BKR
                                    274 	.globl _PWMB_CCR4L
                                    275 	.globl _PWMB_CCR4H
                                    276 	.globl _PWMB_CCR3L
                                    277 	.globl _PWMB_CCR3H
                                    278 	.globl _PWMB_CCR2L
                                    279 	.globl _PWMB_CCR2H
                                    280 	.globl _PWMB_CCR1L
                                    281 	.globl _PWMB_CCR1H
                                    282 	.globl _PWMB_RCR
                                    283 	.globl _PWMB_ARRL
                                    284 	.globl _PWMB_ARRH
                                    285 	.globl _PWMB_PSCRL
                                    286 	.globl _PWMB_PSCRH
                                    287 	.globl _PWMB_CNTRL
                                    288 	.globl _PWMB_CNTRH
                                    289 	.globl _PWMB_CCER2
                                    290 	.globl _PWMB_CCER1
                                    291 	.globl _PWMB_CCMR4
                                    292 	.globl _PWMB_CCMR3
                                    293 	.globl _PWMB_CCMR2
                                    294 	.globl _PWMB_CCMR1
                                    295 	.globl _PWMB_EGR
                                    296 	.globl _PWMB_SR2
                                    297 	.globl _PWMB_SR1
                                    298 	.globl _PWMB_IER
                                    299 	.globl _PWMB_ETR
                                    300 	.globl _PWMB_SMCR
                                    301 	.globl _PWMB_CR2
                                    302 	.globl _PWMB_CR1
                                    303 	.globl _PWMA_OISR
                                    304 	.globl _PWMA_DTR
                                    305 	.globl _PWMA_BKR
                                    306 	.globl _PWMA_CCR4L
                                    307 	.globl _PWMA_CCR4H
                                    308 	.globl _PWMA_CCR3L
                                    309 	.globl _PWMA_CCR3H
                                    310 	.globl _PWMA_CCR2L
                                    311 	.globl _PWMA_CCR2H
                                    312 	.globl _PWMA_CCR1L
                                    313 	.globl _PWMA_CCR1H
                                    314 	.globl _PWMA_RCR
                                    315 	.globl _PWMA_ARRL
                                    316 	.globl _PWMA_ARRH
                                    317 	.globl _PWMA_PSCRL
                                    318 	.globl _PWMA_PSCRH
                                    319 	.globl _PWMA_CNTRL
                                    320 	.globl _PWMA_CNTRH
                                    321 	.globl _PWMA_CCER2
                                    322 	.globl _PWMA_CCER1
                                    323 	.globl _PWMA_CCMR4
                                    324 	.globl _PWMA_CCMR3
                                    325 	.globl _PWMA_CCMR2
                                    326 	.globl _PWMA_CCMR1
                                    327 	.globl _PWMA_EGR
                                    328 	.globl _PWMA_SR2
                                    329 	.globl _PWMA_SR1
                                    330 	.globl _PWMA_IER
                                    331 	.globl _PWMA_ETR
                                    332 	.globl _PWMA_SMCR
                                    333 	.globl _PWMA_CR2
                                    334 	.globl _PWMA_CR1
                                    335 	.globl _PWMB_IOAUX
                                    336 	.globl _PWMB_PS
                                    337 	.globl _PWMB_ENO
                                    338 	.globl _PWMB_ETRPS
                                    339 	.globl _PWMA_IOAUX
                                    340 	.globl _PWMA_PS
                                    341 	.globl _PWMA_ENO
                                    342 	.globl _PWMA_ETRPS
                                    343 	.globl _RSTFLAG
                                    344 	.globl _SPFUNC
                                    345 	.globl _OPCON
                                    346 	.globl _ARCON
                                    347 	.globl _MD4
                                    348 	.globl _MD5
                                    349 	.globl _MD0
                                    350 	.globl _MD1
                                    351 	.globl _MD2
                                    352 	.globl _MD3
                                    353 	.globl _DMA_LCM_RXAL
                                    354 	.globl _DMA_LCM_RXAH
                                    355 	.globl _DMA_LCM_TXAL
                                    356 	.globl _DMA_LCM_TXAH
                                    357 	.globl _DMA_LCM_DONE
                                    358 	.globl _DMA_LCM_AMT
                                    359 	.globl _DMA_LCM_STA
                                    360 	.globl _DMA_LCM_CR
                                    361 	.globl _DMA_LCM_CFG
                                    362 	.globl _LCMIDDAT
                                    363 	.globl _LCMIDDATH
                                    364 	.globl _LCMIDDATL
                                    365 	.globl _LCMSTA
                                    366 	.globl _LCMCR
                                    367 	.globl _LCMCFG2
                                    368 	.globl _LCMCFG
                                    369 	.globl _I2CMSAUX
                                    370 	.globl _I2CRXD
                                    371 	.globl _I2CTXD
                                    372 	.globl _I2CSLADR
                                    373 	.globl _I2CSLST
                                    374 	.globl _I2CSLCR
                                    375 	.globl _I2CMSST
                                    376 	.globl _I2CMSCR
                                    377 	.globl _I2CCFG
                                    378 	.globl _PINIPH
                                    379 	.globl _PINIPL
                                    380 	.globl _P5IE
                                    381 	.globl _P5DR
                                    382 	.globl _P5SR
                                    383 	.globl _P5NCS
                                    384 	.globl _P5PU
                                    385 	.globl _P5WKUE
                                    386 	.globl _P5IM1
                                    387 	.globl _P5IM0
                                    388 	.globl _P5INTF
                                    389 	.globl _P5INTE
                                    390 	.globl _P3IE
                                    391 	.globl _P3DR
                                    392 	.globl _P3SR
                                    393 	.globl _P3NCS
                                    394 	.globl _P3PU
                                    395 	.globl _P3WKUE
                                    396 	.globl _P3IM1
                                    397 	.globl _P3IM0
                                    398 	.globl _P3INTF
                                    399 	.globl _P3INTE
                                    400 	.globl _P2IE
                                    401 	.globl _P2DR
                                    402 	.globl _P2SR
                                    403 	.globl _P2NCS
                                    404 	.globl _P2PU
                                    405 	.globl _P2WKUE
                                    406 	.globl _P2IM1
                                    407 	.globl _P2IM0
                                    408 	.globl _P2INTF
                                    409 	.globl _P2INTE
                                    410 	.globl _P1IE
                                    411 	.globl _P1DR
                                    412 	.globl _P1SR
                                    413 	.globl _P1NCS
                                    414 	.globl _P1PU
                                    415 	.globl _P1WKUE
                                    416 	.globl _P1IM1
                                    417 	.globl _P1IM0
                                    418 	.globl _P1INTF
                                    419 	.globl _P1INTE
                                    420 	.globl _DMA_M2M_RXAL
                                    421 	.globl _DMA_M2M_RXAH
                                    422 	.globl _DMA_M2M_TXAL
                                    423 	.globl _DMA_M2M_TXAH
                                    424 	.globl _DMA_M2M_DONE
                                    425 	.globl _DMA_M2M_AMT
                                    426 	.globl _DMA_M2M_STA
                                    427 	.globl _DMA_M2M_CR
                                    428 	.globl _DMA_M2M_CFG
                                    429 	.globl _CMPEXCFG
                                    430 	.globl _DMA_ADC_CHSW1
                                    431 	.globl _DMA_ADC_CHSW0
                                    432 	.globl _DMA_ADC_CFG2
                                    433 	.globl _DMA_ADC_RXAL
                                    434 	.globl _DMA_ADC_RXAH
                                    435 	.globl _DMA_ADC_STA
                                    436 	.globl _DMA_ADC_CR
                                    437 	.globl _DMA_ADC_CFG
                                    438 	.globl _ADCEXCFG
                                    439 	.globl _ADCTIM
                                    440 	.globl _UART1_transmitBuffer
                                    441 	.globl _UART1_receiveBuffer
                                    442 	.globl _uartIsTransmissionComplete
                                    443 	.globl _uartTransmitBufferHasBytesFree
                                    444 	.globl _uartReceiveBufferBytes
                                    445 	.globl _uartFlushReceiveBuffer
                                    446 	.globl _uartInitialise
                                    447 	.globl _uart1_isr
                                    448 	.globl _uartGetBlock
                                    449 	.globl _uartSendBlock
                                    450 ;--------------------------------------------------------
                                    451 ; special function registers
                                    452 ;--------------------------------------------------------
                                    453 	.area RSEG    (ABS,DATA)
      000000                        454 	.org 0x0000
                           0000BC   455 _ADC_CONTR	=	0x00bc
                           0000BD   456 _ADC_RESH	=	0x00bd
                           0000BE   457 _ADC_RESL	=	0x00be
                           00BDBE   458 _ADC_RES	=	0xbdbe
                           0000DE   459 _ADCCFG	=	0x00de
                           0000FA   460 _DMA_ADC_AMT	=	0x00fa
                           0000E6   461 _CMPCR1	=	0x00e6
                           0000E7   462 _CMPCR2	=	0x00e7
                           000082   463 _DPL	=	0x0082
                           000083   464 _DPH	=	0x0083
                           008382   465 _DP	=	0x8382
                           0000E3   466 _DPS	=	0x00e3
                           0000E4   467 _DPL1	=	0x00e4
                           0000E5   468 _DPH1	=	0x00e5
                           0000AE   469 _TA	=	0x00ae
                           000090   470 _P1	=	0x0090
                           000091   471 _P1M1	=	0x0091
                           000092   472 _P1M0	=	0x0092
                           0000A0   473 _P2	=	0x00a0
                           000095   474 _P2M1	=	0x0095
                           000096   475 _P2M0	=	0x0096
                           0000B0   476 _P3	=	0x00b0
                           0000B1   477 _P3M1	=	0x00b1
                           0000B2   478 _P3M0	=	0x00b2
                           0000C8   479 _P5	=	0x00c8
                           0000C9   480 _P5M1	=	0x00c9
                           0000CA   481 _P5M0	=	0x00ca
                           0000C2   482 _IAP_DATA	=	0x00c2
                           0000C3   483 _IAP_ADDRH	=	0x00c3
                           0000C4   484 _IAP_ADDRL	=	0x00c4
                           00C3C4   485 _IAP_ADDR	=	0xc3c4
                           0000C5   486 _IAP_CMD	=	0x00c5
                           0000C6   487 _IAP_TRIG	=	0x00c6
                           0000C7   488 _IAP_CONTR	=	0x00c7
                           0000F5   489 _IAP_TPS	=	0x00f5
                           00008F   490 _INT_CLKO	=	0x008f
                           0000A8   491 _IE1	=	0x00a8
                           0000B8   492 _IP1L	=	0x00b8
                           0000B7   493 _IP1H	=	0x00b7
                           0000AF   494 _IE2	=	0x00af
                           0000B5   495 _IP2L	=	0x00b5
                           0000B6   496 _IP2H	=	0x00b6
                           0000DF   497 _IP3L	=	0x00df
                           0000EE   498 _IP3H	=	0x00ee
                           000081   499 _SP	=	0x0081
                           0000D0   500 _PSW	=	0x00d0
                           0000E0   501 _ACC	=	0x00e0
                           0000F0   502 _B	=	0x00f0
                           000087   503 _PCON	=	0x0087
                           0000FF   504 _RSTCFG	=	0x00ff
                           0000A2   505 _P_SW1	=	0x00a2
                           0000BA   506 _P_SW2	=	0x00ba
                           0000A1   507 _BUS_SPEED	=	0x00a1
                           0000AA   508 _WKTCL	=	0x00aa
                           0000AB   509 _WKTCH	=	0x00ab
                           00ABAA   510 _WKTC	=	0xabaa
                           0000CD   511 _SPSTAT	=	0x00cd
                           0000CE   512 _SPCTL	=	0x00ce
                           0000CF   513 _SPDAT	=	0x00cf
                           00009D   514 _IRCBAND	=	0x009d
                           00009E   515 _LIRTRIM	=	0x009e
                           00009F   516 _IRTRIM	=	0x009f
                           000088   517 _TCON	=	0x0088
                           000089   518 _TMOD	=	0x0089
                           00008A   519 _T0L	=	0x008a
                           00008C   520 _T0H	=	0x008c
                           008C8A   521 _T0	=	0x8c8a
                           00008B   522 _T1L	=	0x008b
                           00008D   523 _T1H	=	0x008d
                           008D8B   524 _T1	=	0x8d8b
                           0000D7   525 _T2L	=	0x00d7
                           0000D6   526 _T2H	=	0x00d6
                           00D6D7   527 _T2	=	0xd6d7
                           00008E   528 _AUXR	=	0x008e
                           0000C1   529 _WDT_CONTR	=	0x00c1
                           0000D1   530 _T4T3M	=	0x00d1
                           0000D2   531 _T4H	=	0x00d2
                           0000D3   532 _T4L	=	0x00d3
                           00D2D3   533 _T4	=	0xd2d3
                           0000D4   534 _T3H	=	0x00d4
                           0000D5   535 _T3L	=	0x00d5
                           00D4D5   536 _T3	=	0xd4d5
                           0000EF   537 _AUXINTIF	=	0x00ef
                           0000A9   538 _SADDR	=	0x00a9
                           0000B9   539 _SADEN	=	0x00b9
                           000098   540 _S1CON	=	0x0098
                           000099   541 _S1BUF	=	0x0099
                           00009A   542 _S2CON	=	0x009a
                           00009B   543 _S2BUF	=	0x009b
                           0000AC   544 _S3CON	=	0x00ac
                           0000AD   545 _S3BUF	=	0x00ad
                           000084   546 _S4CON	=	0x0084
                           000085   547 _S4BUF	=	0x0085
                           0000DC   548 _USBCLK	=	0x00dc
                           0000EC   549 _USBDAT	=	0x00ec
                           0000F4   550 _USBCON	=	0x00f4
                           0000FC   551 _USBADR	=	0x00fc
                                    552 ;--------------------------------------------------------
                                    553 ; special function bits
                                    554 ;--------------------------------------------------------
                                    555 	.area RSEG    (ABS,DATA)
      000000                        556 	.org 0x0000
                           000090   557 _P1_0	=	0x0090
                           000091   558 _P1_1	=	0x0091
                           000092   559 _P1_2	=	0x0092
                           000093   560 _P1_3	=	0x0093
                           000094   561 _P1_4	=	0x0094
                           000095   562 _P1_5	=	0x0095
                           000096   563 _P1_6	=	0x0096
                           000097   564 _P1_7	=	0x0097
                           0000A0   565 _P2_0	=	0x00a0
                           0000A1   566 _P2_1	=	0x00a1
                           0000A2   567 _P2_2	=	0x00a2
                           0000A3   568 _P2_3	=	0x00a3
                           0000A4   569 _P2_4	=	0x00a4
                           0000A5   570 _P2_5	=	0x00a5
                           0000A6   571 _P2_6	=	0x00a6
                           0000A7   572 _P2_7	=	0x00a7
                           0000B0   573 _P3_0	=	0x00b0
                           0000B1   574 _P3_1	=	0x00b1
                           0000B2   575 _P3_2	=	0x00b2
                           0000B3   576 _P3_3	=	0x00b3
                           0000B4   577 _P3_4	=	0x00b4
                           0000B5   578 _P3_5	=	0x00b5
                           0000B6   579 _P3_6	=	0x00b6
                           0000B7   580 _P3_7	=	0x00b7
                           0000C8   581 _P5_0	=	0x00c8
                           0000C9   582 _P5_1	=	0x00c9
                           0000CA   583 _P5_2	=	0x00ca
                           0000CB   584 _P5_3	=	0x00cb
                           0000CC   585 _P5_4	=	0x00cc
                           0000CD   586 _P5_5	=	0x00cd
                           000088   587 _INT0TR	=	0x0088
                           00008A   588 _INT1TR	=	0x008a
                           0000A8   589 _INT0IE	=	0x00a8
                           0000AA   590 _INT1IE	=	0x00aa
                           0000AF   591 _EA	=	0x00af
                           0000D0   592 _P	=	0x00d0
                           0000D1   593 _F1	=	0x00d1
                           0000D2   594 _OV	=	0x00d2
                           0000D3   595 _RS0	=	0x00d3
                           0000D4   596 _RS1	=	0x00d4
                           0000D5   597 _F0	=	0x00d5
                           0000D6   598 _AC	=	0x00d6
                           0000D7   599 _CY	=	0x00d7
                           00008C   600 _T0RUN	=	0x008c
                           00008E   601 _T1RUN	=	0x008e
                           0000A9   602 _T0IE	=	0x00a9
                           0000AB   603 _T1IE	=	0x00ab
                           00009F   604 _S1SM0_FE	=	0x009f
                                    605 ;--------------------------------------------------------
                                    606 ; overlayable register banks
                                    607 ;--------------------------------------------------------
                                    608 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        609 	.ds 8
                                    610 ;--------------------------------------------------------
                                    611 ; overlayable bit register bank
                                    612 ;--------------------------------------------------------
                                    613 	.area BIT_BANK	(REL,OVR,DATA)
      000021                        614 bits:
      000021                        615 	.ds 1
                           008000   616 	b0 = bits[0]
                           008100   617 	b1 = bits[1]
                           008200   618 	b2 = bits[2]
                           008300   619 	b3 = bits[3]
                           008400   620 	b4 = bits[4]
                           008500   621 	b5 = bits[5]
                           008600   622 	b6 = bits[6]
                           008700   623 	b7 = bits[7]
                                    624 ;--------------------------------------------------------
                                    625 ; internal ram data
                                    626 ;--------------------------------------------------------
                                    627 	.area DSEG    (DATA)
      000022                        628 _uartGetBlock_sloc0_1_0:
      000022                        629 	.ds 1
      000023                        630 _uartGetBlock_sloc1_1_0:
      000023                        631 	.ds 3
      000026                        632 _uartSendBlock_sloc0_1_0:
      000026                        633 	.ds 1
      000027                        634 _uartSendBlock_sloc1_1_0:
      000027                        635 	.ds 3
                                    636 ;--------------------------------------------------------
                                    637 ; overlayable items in internal ram 
                                    638 ;--------------------------------------------------------
                                    639 ;--------------------------------------------------------
                                    640 ; indirectly addressable internal ram data
                                    641 ;--------------------------------------------------------
                                    642 	.area ISEG    (DATA)
      000057                        643 _UART1_receiveBufferData:
      000057                        644 	.ds 16
      000067                        645 _UART1_receiveBuffer::
      000067                        646 	.ds 8
      00006F                        647 _UART1_transmitBufferData:
      00006F                        648 	.ds 16
      00007F                        649 _UART1_transmitBuffer::
      00007F                        650 	.ds 8
                                    651 ;--------------------------------------------------------
                                    652 ; absolute internal ram data
                                    653 ;--------------------------------------------------------
                                    654 	.area IABS    (ABS,DATA)
                                    655 	.area IABS    (ABS,DATA)
                                    656 ;--------------------------------------------------------
                                    657 ; bit data
                                    658 ;--------------------------------------------------------
                                    659 	.area BSEG    (BIT)
                                    660 ;--------------------------------------------------------
                                    661 ; paged external ram data
                                    662 ;--------------------------------------------------------
                                    663 	.area PSEG    (PAG,XDATA)
                                    664 ;--------------------------------------------------------
                                    665 ; external ram data
                                    666 ;--------------------------------------------------------
                                    667 	.area XSEG    (XDATA)
                           00FEA8   668 _ADCTIM	=	0xfea8
                           00FEAD   669 _ADCEXCFG	=	0xfead
                           00FA10   670 _DMA_ADC_CFG	=	0xfa10
                           00FA11   671 _DMA_ADC_CR	=	0xfa11
                           00FA12   672 _DMA_ADC_STA	=	0xfa12
                           00FA17   673 _DMA_ADC_RXAH	=	0xfa17
                           00FA18   674 _DMA_ADC_RXAL	=	0xfa18
                           00FA19   675 _DMA_ADC_CFG2	=	0xfa19
                           00FA1A   676 _DMA_ADC_CHSW0	=	0xfa1a
                           00FA1B   677 _DMA_ADC_CHSW1	=	0xfa1b
                           00FEAE   678 _CMPEXCFG	=	0xfeae
                           00FA00   679 _DMA_M2M_CFG	=	0xfa00
                           00FA01   680 _DMA_M2M_CR	=	0xfa01
                           00FA02   681 _DMA_M2M_STA	=	0xfa02
                           00FA03   682 _DMA_M2M_AMT	=	0xfa03
                           00FA04   683 _DMA_M2M_DONE	=	0xfa04
                           00FA05   684 _DMA_M2M_TXAH	=	0xfa05
                           00FA06   685 _DMA_M2M_TXAL	=	0xfa06
                           00FA07   686 _DMA_M2M_RXAH	=	0xfa07
                           00FA08   687 _DMA_M2M_RXAL	=	0xfa08
                           00FD01   688 _P1INTE	=	0xfd01
                           00FD11   689 _P1INTF	=	0xfd11
                           00FD21   690 _P1IM0	=	0xfd21
                           00FD31   691 _P1IM1	=	0xfd31
                           00FD41   692 _P1WKUE	=	0xfd41
                           00FE11   693 _P1PU	=	0xfe11
                           00FE19   694 _P1NCS	=	0xfe19
                           00FE21   695 _P1SR	=	0xfe21
                           00FE29   696 _P1DR	=	0xfe29
                           00FE31   697 _P1IE	=	0xfe31
                           00FD02   698 _P2INTE	=	0xfd02
                           00FD12   699 _P2INTF	=	0xfd12
                           00FD22   700 _P2IM0	=	0xfd22
                           00FD32   701 _P2IM1	=	0xfd32
                           00FD42   702 _P2WKUE	=	0xfd42
                           00FE12   703 _P2PU	=	0xfe12
                           00FE1A   704 _P2NCS	=	0xfe1a
                           00FE22   705 _P2SR	=	0xfe22
                           00FE2A   706 _P2DR	=	0xfe2a
                           00FE32   707 _P2IE	=	0xfe32
                           00FD03   708 _P3INTE	=	0xfd03
                           00FD13   709 _P3INTF	=	0xfd13
                           00FD23   710 _P3IM0	=	0xfd23
                           00FD33   711 _P3IM1	=	0xfd33
                           00FD43   712 _P3WKUE	=	0xfd43
                           00FE13   713 _P3PU	=	0xfe13
                           00FE1B   714 _P3NCS	=	0xfe1b
                           00FE23   715 _P3SR	=	0xfe23
                           00FE2B   716 _P3DR	=	0xfe2b
                           00FE33   717 _P3IE	=	0xfe33
                           00FD05   718 _P5INTE	=	0xfd05
                           00FD15   719 _P5INTF	=	0xfd15
                           00FD25   720 _P5IM0	=	0xfd25
                           00FD35   721 _P5IM1	=	0xfd35
                           00FD45   722 _P5WKUE	=	0xfd45
                           00FE15   723 _P5PU	=	0xfe15
                           00FE1D   724 _P5NCS	=	0xfe1d
                           00FE25   725 _P5SR	=	0xfe25
                           00FE2D   726 _P5DR	=	0xfe2d
                           00FE35   727 _P5IE	=	0xfe35
                           00FD60   728 _PINIPL	=	0xfd60
                           00FD61   729 _PINIPH	=	0xfd61
                           00FE80   730 _I2CCFG	=	0xfe80
                           00FE81   731 _I2CMSCR	=	0xfe81
                           00FE82   732 _I2CMSST	=	0xfe82
                           00FE83   733 _I2CSLCR	=	0xfe83
                           00FE84   734 _I2CSLST	=	0xfe84
                           00FE85   735 _I2CSLADR	=	0xfe85
                           00FE86   736 _I2CTXD	=	0xfe86
                           00FE87   737 _I2CRXD	=	0xfe87
                           00FE88   738 _I2CMSAUX	=	0xfe88
                           00FE50   739 _LCMCFG	=	0xfe50
                           00FE51   740 _LCMCFG2	=	0xfe51
                           00FE52   741 _LCMCR	=	0xfe52
                           00FE53   742 _LCMSTA	=	0xfe53
                           00FE54   743 _LCMIDDATL	=	0xfe54
                           00FE55   744 _LCMIDDATH	=	0xfe55
                           00FE54   745 _LCMIDDAT	=	0xfe54
                           00FA70   746 _DMA_LCM_CFG	=	0xfa70
                           00FA71   747 _DMA_LCM_CR	=	0xfa71
                           00FA72   748 _DMA_LCM_STA	=	0xfa72
                           00FA73   749 _DMA_LCM_AMT	=	0xfa73
                           00FA74   750 _DMA_LCM_DONE	=	0xfa74
                           00FA75   751 _DMA_LCM_TXAH	=	0xfa75
                           00FA76   752 _DMA_LCM_TXAL	=	0xfa76
                           00FA77   753 _DMA_LCM_RXAH	=	0xfa77
                           00FA78   754 _DMA_LCM_RXAL	=	0xfa78
                           00FCF0   755 _MD3	=	0xfcf0
                           00FCF1   756 _MD2	=	0xfcf1
                           00FCF2   757 _MD1	=	0xfcf2
                           00FCF3   758 _MD0	=	0xfcf3
                           00FCF4   759 _MD5	=	0xfcf4
                           00FCF5   760 _MD4	=	0xfcf5
                           00FCF6   761 _ARCON	=	0xfcf6
                           00FCF7   762 _OPCON	=	0xfcf7
                           00FE08   763 _SPFUNC	=	0xfe08
                           00FE09   764 _RSTFLAG	=	0xfe09
                           00FEB0   765 _PWMA_ETRPS	=	0xfeb0
                           00FEB1   766 _PWMA_ENO	=	0xfeb1
                           00FEB2   767 _PWMA_PS	=	0xfeb2
                           00FEB3   768 _PWMA_IOAUX	=	0xfeb3
                           00FEB4   769 _PWMB_ETRPS	=	0xfeb4
                           00FEB5   770 _PWMB_ENO	=	0xfeb5
                           00FEB6   771 _PWMB_PS	=	0xfeb6
                           00FEB7   772 _PWMB_IOAUX	=	0xfeb7
                           00FEC0   773 _PWMA_CR1	=	0xfec0
                           00FEC1   774 _PWMA_CR2	=	0xfec1
                           00FEC2   775 _PWMA_SMCR	=	0xfec2
                           00FEC3   776 _PWMA_ETR	=	0xfec3
                           00FEC4   777 _PWMA_IER	=	0xfec4
                           00FEC5   778 _PWMA_SR1	=	0xfec5
                           00FEC6   779 _PWMA_SR2	=	0xfec6
                           00FEC7   780 _PWMA_EGR	=	0xfec7
                           00FEC8   781 _PWMA_CCMR1	=	0xfec8
                           00FEC9   782 _PWMA_CCMR2	=	0xfec9
                           00FECA   783 _PWMA_CCMR3	=	0xfeca
                           00FECB   784 _PWMA_CCMR4	=	0xfecb
                           00FECC   785 _PWMA_CCER1	=	0xfecc
                           00FECD   786 _PWMA_CCER2	=	0xfecd
                           00FECE   787 _PWMA_CNTRH	=	0xfece
                           00FECF   788 _PWMA_CNTRL	=	0xfecf
                           00FED0   789 _PWMA_PSCRH	=	0xfed0
                           00FED1   790 _PWMA_PSCRL	=	0xfed1
                           00FED2   791 _PWMA_ARRH	=	0xfed2
                           00FED3   792 _PWMA_ARRL	=	0xfed3
                           00FED4   793 _PWMA_RCR	=	0xfed4
                           00FED5   794 _PWMA_CCR1H	=	0xfed5
                           00FED6   795 _PWMA_CCR1L	=	0xfed6
                           00FED7   796 _PWMA_CCR2H	=	0xfed7
                           00FED8   797 _PWMA_CCR2L	=	0xfed8
                           00FED9   798 _PWMA_CCR3H	=	0xfed9
                           00FEDA   799 _PWMA_CCR3L	=	0xfeda
                           00FEDB   800 _PWMA_CCR4H	=	0xfedb
                           00FEDC   801 _PWMA_CCR4L	=	0xfedc
                           00FEDD   802 _PWMA_BKR	=	0xfedd
                           00FEDE   803 _PWMA_DTR	=	0xfede
                           00FEDF   804 _PWMA_OISR	=	0xfedf
                           00FEE0   805 _PWMB_CR1	=	0xfee0
                           00FEE1   806 _PWMB_CR2	=	0xfee1
                           00FEE2   807 _PWMB_SMCR	=	0xfee2
                           00FEE3   808 _PWMB_ETR	=	0xfee3
                           00FEE4   809 _PWMB_IER	=	0xfee4
                           00FEE5   810 _PWMB_SR1	=	0xfee5
                           00FEE6   811 _PWMB_SR2	=	0xfee6
                           00FEE7   812 _PWMB_EGR	=	0xfee7
                           00FEE8   813 _PWMB_CCMR1	=	0xfee8
                           00FEE9   814 _PWMB_CCMR2	=	0xfee9
                           00FEEA   815 _PWMB_CCMR3	=	0xfeea
                           00FEEB   816 _PWMB_CCMR4	=	0xfeeb
                           00FEEC   817 _PWMB_CCER1	=	0xfeec
                           00FEED   818 _PWMB_CCER2	=	0xfeed
                           00FEEE   819 _PWMB_CNTRH	=	0xfeee
                           00FEEF   820 _PWMB_CNTRL	=	0xfeef
                           00FEF0   821 _PWMB_PSCRH	=	0xfef0
                           00FEF1   822 _PWMB_PSCRL	=	0xfef1
                           00FEF2   823 _PWMB_ARRH	=	0xfef2
                           00FEF3   824 _PWMB_ARRL	=	0xfef3
                           00FEF4   825 _PWMB_RCR	=	0xfef4
                           00FEF5   826 _PWMB_CCR1H	=	0xfef5
                           00FEF6   827 _PWMB_CCR1L	=	0xfef6
                           00FEF7   828 _PWMB_CCR2H	=	0xfef7
                           00FEF8   829 _PWMB_CCR2L	=	0xfef8
                           00FEF9   830 _PWMB_CCR3H	=	0xfef9
                           00FEFA   831 _PWMB_CCR3L	=	0xfefa
                           00FEFB   832 _PWMB_CCR4H	=	0xfefb
                           00FEFC   833 _PWMB_CCR4L	=	0xfefc
                           00FEFD   834 _PWMB_BKR	=	0xfefd
                           00FEFE   835 _PWMB_DTR	=	0xfefe
                           00FEFF   836 _PWMB_OISR	=	0xfeff
                           00FE60   837 _RTCCR	=	0xfe60
                           00FE61   838 _RTCCFG	=	0xfe61
                           00FE62   839 _RTCIEN	=	0xfe62
                           00FE63   840 _RTCIF	=	0xfe63
                           00FE64   841 _ALAHOUR	=	0xfe64
                           00FE65   842 _ALAMIN	=	0xfe65
                           00FE66   843 _ALASEC	=	0xfe66
                           00FE67   844 _ALASSEC	=	0xfe67
                           00FE68   845 _INIYEAR	=	0xfe68
                           00FE69   846 _INIMONTH	=	0xfe69
                           00FE6A   847 _INIDAY	=	0xfe6a
                           00FE6B   848 _INIHOUR	=	0xfe6b
                           00FE6C   849 _INIMIN	=	0xfe6c
                           00FE6D   850 _INISEC	=	0xfe6d
                           00FE6E   851 _INISSEC	=	0xfe6e
                           00FE70   852 _YEAR	=	0xfe70
                           00FE71   853 _MONTH	=	0xfe71
                           00FE72   854 _DAY	=	0xfe72
                           00FE73   855 _HOUR	=	0xfe73
                           00FE74   856 _MIN	=	0xfe74
                           00FE75   857 _SEC	=	0xfe75
                           00FE76   858 _SSEC	=	0xfe76
                           00FA20   859 _DMA_SPI_CFG	=	0xfa20
                           00FA21   860 _DMA_SPI_CR	=	0xfa21
                           00FA22   861 _DMA_SPI_STA	=	0xfa22
                           00FA23   862 _DMA_SPI_AMT	=	0xfa23
                           00FA24   863 _DMA_SPI_DONE	=	0xfa24
                           00FA25   864 _DMA_SPI_TXAH	=	0xfa25
                           00FA26   865 _DMA_SPI_TXAL	=	0xfa26
                           00FA27   866 _DMA_SPI_RXAH	=	0xfa27
                           00FA28   867 _DMA_SPI_RXAL	=	0xfa28
                           00FA29   868 _DMA_SPI_CFG2	=	0xfa29
                           00FE01   869 _CLKDIV	=	0xfe01
                           00FE02   870 _HIRCCR	=	0xfe02
                           00FE03   871 _XOSCCR	=	0xfe03
                           00FE04   872 _IRC32KCR	=	0xfe04
                           00FE00   873 _CKSEL	=	0xfe00
                           00FE05   874 _MCLKOCR	=	0xfe05
                           00FE06   875 _IRCDB	=	0xfe06
                           00FE07   876 _IRC48MCR	=	0xfe07
                           00FEA2   877 _TM2PS	=	0xfea2
                           00FEA3   878 _TM3PS	=	0xfea3
                           00FEA4   879 _TM4PS	=	0xfea4
                           00FA30   880 _DMA_UR1T_CFG	=	0xfa30
                           00FA31   881 _DMA_UR1T_CR	=	0xfa31
                           00FA32   882 _DMA_UR1T_STA	=	0xfa32
                           00FA33   883 _DMA_URTX_AMT	=	0xfa33
                           00FA34   884 _DMA_UR1T_DONE	=	0xfa34
                           00FA35   885 _DMA_UR1T_TXAH	=	0xfa35
                           00FA36   886 _DMA_UR1T_TXAL	=	0xfa36
                           00FA38   887 _DMA_UR1R_CFG	=	0xfa38
                           00FA39   888 _DMA_UR1R_CR	=	0xfa39
                           00FA3A   889 _DMA_UR1R_STA	=	0xfa3a
                           00FA3B   890 _DMA_UR1R_AMT	=	0xfa3b
                           00FA3C   891 _DMA_UR1R_DONE	=	0xfa3c
                           00FA3D   892 _DMA_UR1R_TXAH	=	0xfa3d
                           00FA3E   893 _DMA_UR1R_TXAL	=	0xfa3e
                           00FA30   894 _DMA_UR2T_CFG	=	0xfa30
                           00FA31   895 _DMA_UR2T_CR	=	0xfa31
                           00FA32   896 _DMA_UR2T_STA	=	0xfa32
                           00FA33   897 _DMA_UR2T_AMT	=	0xfa33
                           00FA34   898 _DMA_UR2T_DONE	=	0xfa34
                           00FA35   899 _DMA_UR2T_TXAH	=	0xfa35
                           00FA36   900 _DMA_UR2T_TXAL	=	0xfa36
                           00FA38   901 _DMA_UR2R_CFG	=	0xfa38
                           00FA39   902 _DMA_UR2R_CR	=	0xfa39
                           00FA3A   903 _DMA_UR2R_STA	=	0xfa3a
                           00FA3B   904 _DMA_UR2R_AMT	=	0xfa3b
                           00FA3C   905 _DMA_UR2R_DONE	=	0xfa3c
                           00FA3D   906 _DMA_UR2R_TXAH	=	0xfa3d
                           00FA3E   907 _DMA_UR2R_TXAL	=	0xfa3e
                           00FA30   908 _DMA_UR3T_CFG	=	0xfa30
                           00FA31   909 _DMA_UR3T_CR	=	0xfa31
                           00FA32   910 _DMA_UR3T_STA	=	0xfa32
                           00FA33   911 _DMA_UR3T_AMT	=	0xfa33
                           00FA34   912 _DMA_UR3T_DONE	=	0xfa34
                           00FA35   913 _DMA_UR3T_TXAH	=	0xfa35
                           00FA36   914 _DMA_UR3T_TXAL	=	0xfa36
                           00FA38   915 _DMA_UR3R_CFG	=	0xfa38
                           00FA39   916 _DMA_UR3R_CR	=	0xfa39
                           00FA3A   917 _DMA_UR3R_STA	=	0xfa3a
                           00FA3B   918 _DMA_UR3R_AMT	=	0xfa3b
                           00FA3C   919 _DMA_UR3R_DONE	=	0xfa3c
                           00FA3D   920 _DMA_UR3R_TXAH	=	0xfa3d
                           00FA3E   921 _DMA_UR3R_TXAL	=	0xfa3e
                           00FA30   922 _DMA_UR4T_CFG	=	0xfa30
                           00FA31   923 _DMA_UR4T_CR	=	0xfa31
                           00FA32   924 _DMA_UR4T_STA	=	0xfa32
                           00FA33   925 _DMA_UR4T_AMT	=	0xfa33
                           00FA34   926 _DMA_UR4T_DONE	=	0xfa34
                           00FA35   927 _DMA_UR4T_TXAH	=	0xfa35
                           00FA36   928 _DMA_UR4T_TXAL	=	0xfa36
                           00FA38   929 _DMA_UR4R_CFG	=	0xfa38
                           00FA39   930 _DMA_UR4R_CR	=	0xfa39
                           00FA3A   931 _DMA_UR4R_STA	=	0xfa3a
                           00FA3B   932 _DMA_UR4R_AMT	=	0xfa3b
                           00FA3C   933 _DMA_UR4R_DONE	=	0xfa3c
                           00FA3D   934 _DMA_UR4R_TXAH	=	0xfa3d
                           00FA3E   935 _DMA_UR4R_TXAL	=	0xfa3e
      000104                        936 _uartGetCharacter_result_65536_69:
      000104                        937 	.ds 1
      000105                        938 _uartReceiveBuffer_uart_65536_148:
      000105                        939 	.ds 1
      000106                        940 _uartReceiveBuffer_result_65536_149:
      000106                        941 	.ds 3
      000109                        942 _uartTransmitBuffer_uart_65536_151:
      000109                        943 	.ds 1
      00010A                        944 _uartTransmitBuffer_result_65536_152:
      00010A                        945 	.ds 3
      00010D                        946 _uartIsTransmissionComplete_uart_65536_154:
      00010D                        947 	.ds 1
      00010E                        948 _uartTransmitBufferHasBytesFree_PARM_2:
      00010E                        949 	.ds 1
      00010F                        950 _uartTransmitBufferHasBytesFree_uart_65536_156:
      00010F                        951 	.ds 1
      000110                        952 _uartTransmitBufferHasBytesFree_rc_65537_158:
      000110                        953 	.ds 1
      000111                        954 _uartReceiveBufferBytes_uart_65536_159:
      000111                        955 	.ds 1
      000112                        956 _uartFlushReceiveBuffer_uart_65536_165:
      000112                        957 	.ds 1
      000113                        958 _uartInitialise_PARM_2:
      000113                        959 	.ds 4
      000117                        960 _uartInitialise_PARM_3:
      000117                        961 	.ds 1
      000118                        962 _uartInitialise_PARM_4:
      000118                        963 	.ds 1
      000119                        964 _uartInitialise_PARM_5:
      000119                        965 	.ds 1
      00011A                        966 _uartInitialise_uart_65536_167:
      00011A                        967 	.ds 1
      00011B                        968 _uartInitialise_rc_65536_168:
      00011B                        969 	.ds 1
      00011C                        970 _uartInitialise_timer_65536_168:
      00011C                        971 	.ds 1
      00011D                        972 _uartInitialise_operationMode_131072_171:
      00011D                        973 	.ds 1
      00011E                        974 _uart1_isr_c_65536_186:
      00011E                        975 	.ds 1
      00011F                        976 _uartGetBlock_PARM_2:
      00011F                        977 	.ds 3
      000122                        978 _uartGetBlock_PARM_3:
      000122                        979 	.ds 1
      000123                        980 _uartGetBlock_PARM_4:
      000123                        981 	.ds 1
      000124                        982 _uartGetBlock_uart_65536_191:
      000124                        983 	.ds 1
      000125                        984 _uartSendBlock_PARM_2:
      000125                        985 	.ds 3
      000128                        986 _uartSendBlock_PARM_3:
      000128                        987 	.ds 1
      000129                        988 _uartSendBlock_PARM_4:
      000129                        989 	.ds 1
      00012A                        990 _uartSendBlock_uart_65536_194:
      00012A                        991 	.ds 1
      00012B                        992 _uartSendBlock_data_131073_198:
      00012B                        993 	.ds 1
                                    994 ;--------------------------------------------------------
                                    995 ; absolute external ram data
                                    996 ;--------------------------------------------------------
                                    997 	.area XABS    (ABS,XDATA)
                                    998 ;--------------------------------------------------------
                                    999 ; external initialized ram data
                                   1000 ;--------------------------------------------------------
                                   1001 	.area XISEG   (XDATA)
                                   1002 	.area HOME    (CODE)
                                   1003 	.area GSINIT0 (CODE)
                                   1004 	.area GSINIT1 (CODE)
                                   1005 	.area GSINIT2 (CODE)
                                   1006 	.area GSINIT3 (CODE)
                                   1007 	.area GSINIT4 (CODE)
                                   1008 	.area GSINIT5 (CODE)
                                   1009 	.area GSINIT  (CODE)
                                   1010 	.area GSFINAL (CODE)
                                   1011 	.area CSEG    (CODE)
                                   1012 ;--------------------------------------------------------
                                   1013 ; global & static initialisations
                                   1014 ;--------------------------------------------------------
                                   1015 	.area HOME    (CODE)
                                   1016 	.area GSINIT  (CODE)
                                   1017 	.area GSFINAL (CODE)
                                   1018 	.area GSINIT  (CODE)
                                   1019 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:75: FIFO_BUFFER(UART1_receiveBuffer, UART1_RX_BUFFER_SIZE, UART1_SEGMENT)
      00013B 78 67            [12] 1020 	mov	r0,#_UART1_receiveBuffer
      00013D 76 10            [12] 1021 	mov	@r0,#0x10
      00013F 78 68            [12] 1022 	mov	r0,#(_UART1_receiveBuffer + 0x0001)
      000141 76 00            [12] 1023 	mov	@r0,#0x00
      000143 78 69            [12] 1024 	mov	r0,#(_UART1_receiveBuffer + 0x0002)
      000145 76 00            [12] 1025 	mov	@r0,#0x00
      000147 78 6A            [12] 1026 	mov	r0,#(_UART1_receiveBuffer + 0x0003)
      000149 76 00            [12] 1027 	mov	@r0,#0x00
      00014B 78 6B            [12] 1028 	mov	r0,#(_UART1_receiveBuffer + 0x0004)
      00014D 76 00            [12] 1029 	mov	@r0,#0x00
      00014F 78 6C            [12] 1030 	mov	r0,#(_UART1_receiveBuffer + 0x0005)
      000151 76 57            [12] 1031 	mov	@r0,#_UART1_receiveBufferData
      000153 08               [12] 1032 	inc	r0
      000154 76 00            [12] 1033 	mov	@r0,#(_UART1_receiveBufferData >> 8)
      000156 08               [12] 1034 	inc	r0
      000157 76 40            [12] 1035 	mov	@r0,#0x40
                                   1036 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:76: FIFO_BUFFER(UART1_transmitBuffer, UART1_TX_BUFFER_SIZE, UART1_SEGMENT)
      000159 78 7F            [12] 1037 	mov	r0,#_UART1_transmitBuffer
      00015B 76 10            [12] 1038 	mov	@r0,#0x10
      00015D 78 80            [12] 1039 	mov	r0,#(_UART1_transmitBuffer + 0x0001)
      00015F 76 00            [12] 1040 	mov	@r0,#0x00
      000161 78 81            [12] 1041 	mov	r0,#(_UART1_transmitBuffer + 0x0002)
      000163 76 00            [12] 1042 	mov	@r0,#0x00
      000165 78 82            [12] 1043 	mov	r0,#(_UART1_transmitBuffer + 0x0003)
      000167 76 00            [12] 1044 	mov	@r0,#0x00
      000169 78 83            [12] 1045 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      00016B 76 00            [12] 1046 	mov	@r0,#0x00
      00016D 78 84            [12] 1047 	mov	r0,#(_UART1_transmitBuffer + 0x0005)
      00016F 76 6F            [12] 1048 	mov	@r0,#_UART1_transmitBufferData
      000171 08               [12] 1049 	inc	r0
      000172 76 00            [12] 1050 	mov	@r0,#(_UART1_transmitBufferData >> 8)
      000174 08               [12] 1051 	inc	r0
      000175 76 40            [12] 1052 	mov	@r0,#0x40
                                   1053 ;--------------------------------------------------------
                                   1054 ; Home
                                   1055 ;--------------------------------------------------------
                                   1056 	.area HOME    (CODE)
                                   1057 	.area HOME    (CODE)
                                   1058 ;--------------------------------------------------------
                                   1059 ; code
                                   1060 ;--------------------------------------------------------
                                   1061 	.area CSEG    (CODE)
                                   1062 ;------------------------------------------------------------
                                   1063 ;Allocation info for local variables in function 'uartReceiveBuffer'
                                   1064 ;------------------------------------------------------------
                                   1065 ;uart                      Allocated with name '_uartReceiveBuffer_uart_65536_148'
                                   1066 ;result                    Allocated with name '_uartReceiveBuffer_result_65536_149'
                                   1067 ;------------------------------------------------------------
                                   1068 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:127: static FifoState *uartReceiveBuffer(Uart uart) {
                                   1069 ;	-----------------------------------------
                                   1070 ;	 function uartReceiveBuffer
                                   1071 ;	-----------------------------------------
      002788                       1072 _uartReceiveBuffer:
                           000007  1073 	ar7 = 0x07
                           000006  1074 	ar6 = 0x06
                           000005  1075 	ar5 = 0x05
                           000004  1076 	ar4 = 0x04
                           000003  1077 	ar3 = 0x03
                           000002  1078 	ar2 = 0x02
                           000001  1079 	ar1 = 0x01
                           000000  1080 	ar0 = 0x00
      002788 E5 82            [12] 1081 	mov	a,dpl
      00278A 90 01 05         [24] 1082 	mov	dptr,#_uartReceiveBuffer_uart_65536_148
      00278D F0               [24] 1083 	movx	@dptr,a
                                   1084 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:128: FifoState *result = NULL;
      00278E 90 01 06         [24] 1085 	mov	dptr,#_uartReceiveBuffer_result_65536_149
      002791 E4               [12] 1086 	clr	a
      002792 F0               [24] 1087 	movx	@dptr,a
      002793 A3               [24] 1088 	inc	dptr
      002794 F0               [24] 1089 	movx	@dptr,a
      002795 A3               [24] 1090 	inc	dptr
      002796 F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:130: switch (uart) {
      002797 90 01 05         [24] 1093 	mov	dptr,#_uartReceiveBuffer_uart_65536_148
      00279A E0               [24] 1094 	movx	a,@dptr
      00279B FF               [12] 1095 	mov	r7,a
      00279C BF 01 0D         [24] 1096 	cjne	r7,#0x01,00102$
                                   1097 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:132: result = &UART1_receiveBuffer;
      00279F 90 01 06         [24] 1098 	mov	dptr,#_uartReceiveBuffer_result_65536_149
      0027A2 74 67            [12] 1099 	mov	a,#_UART1_receiveBuffer
      0027A4 F0               [24] 1100 	movx	@dptr,a
      0027A5 E4               [12] 1101 	clr	a
      0027A6 A3               [24] 1102 	inc	dptr
      0027A7 F0               [24] 1103 	movx	@dptr,a
      0027A8 74 40            [12] 1104 	mov	a,#0x40
      0027AA A3               [24] 1105 	inc	dptr
      0027AB F0               [24] 1106 	movx	@dptr,a
                                   1107 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:150: }
      0027AC                       1108 00102$:
                                   1109 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:152: return result;
      0027AC 90 01 06         [24] 1110 	mov	dptr,#_uartReceiveBuffer_result_65536_149
      0027AF E0               [24] 1111 	movx	a,@dptr
      0027B0 FD               [12] 1112 	mov	r5,a
      0027B1 A3               [24] 1113 	inc	dptr
      0027B2 E0               [24] 1114 	movx	a,@dptr
      0027B3 FE               [12] 1115 	mov	r6,a
      0027B4 A3               [24] 1116 	inc	dptr
      0027B5 E0               [24] 1117 	movx	a,@dptr
      0027B6 FF               [12] 1118 	mov	r7,a
      0027B7 8D 82            [24] 1119 	mov	dpl,r5
      0027B9 8E 83            [24] 1120 	mov	dph,r6
      0027BB 8F F0            [24] 1121 	mov	b,r7
                                   1122 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:153: }
      0027BD 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'uartTransmitBuffer'
                                   1126 ;------------------------------------------------------------
                                   1127 ;uart                      Allocated with name '_uartTransmitBuffer_uart_65536_151'
                                   1128 ;result                    Allocated with name '_uartTransmitBuffer_result_65536_152'
                                   1129 ;------------------------------------------------------------
                                   1130 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:155: static FifoState *uartTransmitBuffer(Uart uart) {
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function uartTransmitBuffer
                                   1133 ;	-----------------------------------------
      0027BE                       1134 _uartTransmitBuffer:
      0027BE E5 82            [12] 1135 	mov	a,dpl
      0027C0 90 01 09         [24] 1136 	mov	dptr,#_uartTransmitBuffer_uart_65536_151
      0027C3 F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:156: FifoState *result = NULL;
      0027C4 90 01 0A         [24] 1139 	mov	dptr,#_uartTransmitBuffer_result_65536_152
      0027C7 E4               [12] 1140 	clr	a
      0027C8 F0               [24] 1141 	movx	@dptr,a
      0027C9 A3               [24] 1142 	inc	dptr
      0027CA F0               [24] 1143 	movx	@dptr,a
      0027CB A3               [24] 1144 	inc	dptr
      0027CC F0               [24] 1145 	movx	@dptr,a
                                   1146 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:158: switch (uart) {
      0027CD 90 01 09         [24] 1147 	mov	dptr,#_uartTransmitBuffer_uart_65536_151
      0027D0 E0               [24] 1148 	movx	a,@dptr
      0027D1 FF               [12] 1149 	mov	r7,a
      0027D2 BF 01 0D         [24] 1150 	cjne	r7,#0x01,00102$
                                   1151 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:160: result = &UART1_transmitBuffer;
      0027D5 90 01 0A         [24] 1152 	mov	dptr,#_uartTransmitBuffer_result_65536_152
      0027D8 74 7F            [12] 1153 	mov	a,#_UART1_transmitBuffer
      0027DA F0               [24] 1154 	movx	@dptr,a
      0027DB E4               [12] 1155 	clr	a
      0027DC A3               [24] 1156 	inc	dptr
      0027DD F0               [24] 1157 	movx	@dptr,a
      0027DE 74 40            [12] 1158 	mov	a,#0x40
      0027E0 A3               [24] 1159 	inc	dptr
      0027E1 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:178: }
      0027E2                       1162 00102$:
                                   1163 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:180: return result;
      0027E2 90 01 0A         [24] 1164 	mov	dptr,#_uartTransmitBuffer_result_65536_152
      0027E5 E0               [24] 1165 	movx	a,@dptr
      0027E6 FD               [12] 1166 	mov	r5,a
      0027E7 A3               [24] 1167 	inc	dptr
      0027E8 E0               [24] 1168 	movx	a,@dptr
      0027E9 FE               [12] 1169 	mov	r6,a
      0027EA A3               [24] 1170 	inc	dptr
      0027EB E0               [24] 1171 	movx	a,@dptr
      0027EC FF               [12] 1172 	mov	r7,a
      0027ED 8D 82            [24] 1173 	mov	dpl,r5
      0027EF 8E 83            [24] 1174 	mov	dph,r6
      0027F1 8F F0            [24] 1175 	mov	b,r7
                                   1176 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:181: }
      0027F3 22               [24] 1177 	ret
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'uartIsTransmissionComplete'
                                   1180 ;------------------------------------------------------------
                                   1181 ;uart                      Allocated with name '_uartIsTransmissionComplete_uart_65536_154'
                                   1182 ;buffer                    Allocated with name '_uartIsTransmissionComplete_buffer_65536_155'
                                   1183 ;------------------------------------------------------------
                                   1184 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:183: bool uartIsTransmissionComplete(Uart uart) {
                                   1185 ;	-----------------------------------------
                                   1186 ;	 function uartIsTransmissionComplete
                                   1187 ;	-----------------------------------------
      0027F4                       1188 _uartIsTransmissionComplete:
      0027F4 E5 82            [12] 1189 	mov	a,dpl
      0027F6 90 01 0D         [24] 1190 	mov	dptr,#_uartIsTransmissionComplete_uart_65536_154
      0027F9 F0               [24] 1191 	movx	@dptr,a
                                   1192 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:184: FifoState *buffer = uartTransmitBuffer(uart);
      0027FA E0               [24] 1193 	movx	a,@dptr
      0027FB F5 82            [12] 1194 	mov	dpl,a
      0027FD 12 27 BE         [24] 1195 	lcall	_uartTransmitBuffer
      002800 AD 82            [24] 1196 	mov	r5,dpl
      002802 AE 83            [24] 1197 	mov	r6,dph
      002804 AF F0            [24] 1198 	mov	r7,b
                                   1199 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:186: return buffer->status == STATUS_CLEAR;
      002806 74 04            [12] 1200 	mov	a,#0x04
      002808 2D               [12] 1201 	add	a,r5
      002809 FD               [12] 1202 	mov	r5,a
      00280A E4               [12] 1203 	clr	a
      00280B 3E               [12] 1204 	addc	a,r6
      00280C FE               [12] 1205 	mov	r6,a
      00280D 8D 82            [24] 1206 	mov	dpl,r5
      00280F 8E 83            [24] 1207 	mov	dph,r6
      002811 8F F0            [24] 1208 	mov	b,r7
      002813 12 58 3E         [24] 1209 	lcall	__gptrget
      002816 B4 01 00         [24] 1210 	cjne	a,#0x01,00103$
      002819                       1211 00103$:
      002819 E4               [12] 1212 	clr	a
      00281A 33               [12] 1213 	rlc	a
                                   1214 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:187: }
      00281B F5 82            [12] 1215 	mov	dpl,a
      00281D 22               [24] 1216 	ret
                                   1217 ;------------------------------------------------------------
                                   1218 ;Allocation info for local variables in function 'uartTransmitBufferHasBytesFree'
                                   1219 ;------------------------------------------------------------
                                   1220 ;bytes                     Allocated with name '_uartTransmitBufferHasBytesFree_PARM_2'
                                   1221 ;uart                      Allocated with name '_uartTransmitBufferHasBytesFree_uart_65536_156'
                                   1222 ;rc                        Allocated with name '_uartTransmitBufferHasBytesFree_rc_65537_158'
                                   1223 ;------------------------------------------------------------
                                   1224 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:189: bool uartTransmitBufferHasBytesFree(Uart uart, uint8_t bytes) {
                                   1225 ;	-----------------------------------------
                                   1226 ;	 function uartTransmitBufferHasBytesFree
                                   1227 ;	-----------------------------------------
      00281E                       1228 _uartTransmitBufferHasBytesFree:
      00281E E5 82            [12] 1229 	mov	a,dpl
      002820 90 01 0F         [24] 1230 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_156
      002823 F0               [24] 1231 	movx	@dptr,a
                                   1232 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:190: EA = 0;
                                   1233 ;	assignBit
      002824 C2 AF            [12] 1234 	clr	_EA
                                   1235 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:191: bool rc = fifoBytesFree(uartTransmitBuffer(uart)) >= bytes;
      002826 90 01 0F         [24] 1236 	mov	dptr,#_uartTransmitBufferHasBytesFree_uart_65536_156
      002829 E0               [24] 1237 	movx	a,@dptr
      00282A F5 82            [12] 1238 	mov	dpl,a
      00282C 12 27 BE         [24] 1239 	lcall	_uartTransmitBuffer
      00282F 12 22 4E         [24] 1240 	lcall	_fifoBytesFree
      002832 AF 82            [24] 1241 	mov	r7,dpl
      002834 90 01 0E         [24] 1242 	mov	dptr,#_uartTransmitBufferHasBytesFree_PARM_2
      002837 E0               [24] 1243 	movx	a,@dptr
      002838 FE               [12] 1244 	mov	r6,a
      002839 C3               [12] 1245 	clr	c
      00283A EF               [12] 1246 	mov	a,r7
      00283B 9E               [12] 1247 	subb	a,r6
      00283C E4               [12] 1248 	clr	a
      00283D 33               [12] 1249 	rlc	a
      00283E 90 01 10         [24] 1250 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_158
      002841 B4 01 00         [24] 1251 	cjne	a,#0x01,00103$
      002844                       1252 00103$:
      002844 E4               [12] 1253 	clr	a
      002845 33               [12] 1254 	rlc	a
      002846 F0               [24] 1255 	movx	@dptr,a
                                   1256 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:192: EA = 1;
                                   1257 ;	assignBit
      002847 D2 AF            [12] 1258 	setb	_EA
                                   1259 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:194: return rc;
      002849 90 01 10         [24] 1260 	mov	dptr,#_uartTransmitBufferHasBytesFree_rc_65537_158
      00284C E0               [24] 1261 	movx	a,@dptr
                                   1262 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:195: }
      00284D F5 82            [12] 1263 	mov	dpl,a
      00284F 22               [24] 1264 	ret
                                   1265 ;------------------------------------------------------------
                                   1266 ;Allocation info for local variables in function 'uartReceiveBufferBytes'
                                   1267 ;------------------------------------------------------------
                                   1268 ;uart                      Allocated with name '_uartReceiveBufferBytes_uart_65536_159'
                                   1269 ;__1310720013              Allocated with name '_uartReceiveBufferBytes___1310720013_131072_161'
                                   1270 ;rc                        Allocated with name '_uartReceiveBufferBytes_rc_65537_161'
                                   1271 ;__1310730014              Allocated with name '_uartReceiveBufferBytes___1310730014_131073_162'
                                   1272 ;buffer                    Allocated with name '_uartReceiveBufferBytes_buffer_196609_163'
                                   1273 ;------------------------------------------------------------
                                   1274 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:197: uint8_t uartReceiveBufferBytes(Uart uart) {
                                   1275 ;	-----------------------------------------
                                   1276 ;	 function uartReceiveBufferBytes
                                   1277 ;	-----------------------------------------
      002850                       1278 _uartReceiveBufferBytes:
      002850 E5 82            [12] 1279 	mov	a,dpl
      002852 90 01 11         [24] 1280 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_159
      002855 F0               [24] 1281 	movx	@dptr,a
                                   1282 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:198: EA = 0;
                                   1283 ;	assignBit
      002856 C2 AF            [12] 1284 	clr	_EA
                                   1285 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:199: uint8_t rc = fifoBytesUsed(uartReceiveBuffer(uart));
      002858 90 01 11         [24] 1286 	mov	dptr,#_uartReceiveBufferBytes_uart_65536_159
      00285B E0               [24] 1287 	movx	a,@dptr
      00285C F5 82            [12] 1288 	mov	dpl,a
      00285E 12 27 88         [24] 1289 	lcall	_uartReceiveBuffer
      002861 AD 82            [24] 1290 	mov	r5,dpl
      002863 AE 83            [24] 1291 	mov	r6,dph
      002865 AF F0            [24] 1292 	mov	r7,b
      002867 0D               [12] 1293 	inc	r5
      002868 BD 00 01         [24] 1294 	cjne	r5,#0x00,00104$
      00286B 0E               [12] 1295 	inc	r6
      00286C                       1296 00104$:
      00286C 8D 82            [24] 1297 	mov	dpl,r5
      00286E 8E 83            [24] 1298 	mov	dph,r6
      002870 8F F0            [24] 1299 	mov	b,r7
      002872 12 58 3E         [24] 1300 	lcall	__gptrget
      002875 FD               [12] 1301 	mov	r5,a
                                   1302 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:200: EA = 1;
                                   1303 ;	assignBit
      002876 D2 AF            [12] 1304 	setb	_EA
                                   1305 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:202: return rc;
      002878 8D 82            [24] 1306 	mov	dpl,r5
                                   1307 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:203: }
      00287A 22               [24] 1308 	ret
                                   1309 ;------------------------------------------------------------
                                   1310 ;Allocation info for local variables in function 'uartFlushReceiveBuffer'
                                   1311 ;------------------------------------------------------------
                                   1312 ;uart                      Allocated with name '_uartFlushReceiveBuffer_uart_65536_165'
                                   1313 ;------------------------------------------------------------
                                   1314 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:205: void uartFlushReceiveBuffer(Uart uart) {
                                   1315 ;	-----------------------------------------
                                   1316 ;	 function uartFlushReceiveBuffer
                                   1317 ;	-----------------------------------------
      00287B                       1318 _uartFlushReceiveBuffer:
      00287B E5 82            [12] 1319 	mov	a,dpl
      00287D 90 01 12         [24] 1320 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_165
      002880 F0               [24] 1321 	movx	@dptr,a
                                   1322 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:206: EA = 0;
                                   1323 ;	assignBit
      002881 C2 AF            [12] 1324 	clr	_EA
                                   1325 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:207: fifoClear(uartReceiveBuffer(uart));
      002883 90 01 12         [24] 1326 	mov	dptr,#_uartFlushReceiveBuffer_uart_65536_165
      002886 E0               [24] 1327 	movx	a,@dptr
      002887 F5 82            [12] 1328 	mov	dpl,a
      002889 12 27 88         [24] 1329 	lcall	_uartReceiveBuffer
      00288C 12 21 A5         [24] 1330 	lcall	_fifoClear
                                   1331 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:208: EA = 1;
                                   1332 ;	assignBit
      00288F D2 AF            [12] 1333 	setb	_EA
                                   1334 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:209: }
      002891 22               [24] 1335 	ret
                                   1336 ;------------------------------------------------------------
                                   1337 ;Allocation info for local variables in function 'uartInitialise'
                                   1338 ;------------------------------------------------------------
                                   1339 ;baudRate                  Allocated with name '_uartInitialise_PARM_2'
                                   1340 ;baudRateTimer             Allocated with name '_uartInitialise_PARM_3'
                                   1341 ;mode                      Allocated with name '_uartInitialise_PARM_4'
                                   1342 ;pinSwitch                 Allocated with name '_uartInitialise_PARM_5'
                                   1343 ;uart                      Allocated with name '_uartInitialise_uart_65536_167'
                                   1344 ;rc                        Allocated with name '_uartInitialise_rc_65536_168'
                                   1345 ;timer                     Allocated with name '_uartInitialise_timer_65536_168'
                                   1346 ;operationMode             Allocated with name '_uartInitialise_operationMode_131072_171'
                                   1347 ;scon                      Allocated with name '_uartInitialise_scon_131073_176'
                                   1348 ;------------------------------------------------------------
                                   1349 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:224: TimerStatus uartInitialise(Uart uart, uint32_t baudRate, UartBaudRateTimer baudRateTimer, UartMode mode, uint8_t pinSwitch) {
                                   1350 ;	-----------------------------------------
                                   1351 ;	 function uartInitialise
                                   1352 ;	-----------------------------------------
      002892                       1353 _uartInitialise:
      002892 E5 82            [12] 1354 	mov	a,dpl
      002894 90 01 1A         [24] 1355 	mov	dptr,#_uartInitialise_uart_65536_167
      002897 F0               [24] 1356 	movx	@dptr,a
                                   1357 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:225: TimerStatus rc = TIMER_FREQUENCY_OK;
      002898 90 01 1B         [24] 1358 	mov	dptr,#_uartInitialise_rc_65536_168
      00289B E4               [12] 1359 	clr	a
      00289C F0               [24] 1360 	movx	@dptr,a
                                   1361 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:227: Timer timer = TIMER2;
      00289D 90 01 1C         [24] 1362 	mov	dptr,#_uartInitialise_timer_65536_168
      0028A0 74 02            [12] 1363 	mov	a,#0x02
      0028A2 F0               [24] 1364 	movx	@dptr,a
                                   1365 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:236: if (uart != UART1 || mode == UART_8N1) {
      0028A3 90 01 1A         [24] 1366 	mov	dptr,#_uartInitialise_uart_65536_167
      0028A6 E0               [24] 1367 	movx	a,@dptr
      0028A7 FF               [12] 1368 	mov	r7,a
      0028A8 BF 01 09         [24] 1369 	cjne	r7,#0x01,00103$
      0028AB 90 01 18         [24] 1370 	mov	dptr,#_uartInitialise_PARM_4
      0028AE E0               [24] 1371 	movx	a,@dptr
      0028AF 60 03            [24] 1372 	jz	00207$
      0028B1 02 29 36         [24] 1373 	ljmp	00104$
      0028B4                       1374 00207$:
      0028B4                       1375 00103$:
                                   1376 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:242: if (baudRateTimer == UART_USE_OWN_TIMER) {
      0028B4 90 01 17         [24] 1377 	mov	dptr,#_uartInitialise_PARM_3
      0028B7 E0               [24] 1378 	movx	a,@dptr
      0028B8 FE               [12] 1379 	mov	r6,a
      0028B9 BE 01 05         [24] 1380 	cjne	r6,#0x01,00102$
                                   1381 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:245: timer =  (Timer) uart;
      0028BC 90 01 1C         [24] 1382 	mov	dptr,#_uartInitialise_timer_65536_168
      0028BF EF               [12] 1383 	mov	a,r7
      0028C0 F0               [24] 1384 	movx	@dptr,a
      0028C1                       1385 00102$:
                                   1386 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:257: timer, 
      0028C1 90 01 1C         [24] 1387 	mov	dptr,#_uartInitialise_timer_65536_168
      0028C4 E0               [24] 1388 	movx	a,@dptr
      0028C5 FF               [12] 1389 	mov	r7,a
                                   1390 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:258: baudRateToSysclkDivisor(baudRate), 
      0028C6 90 01 13         [24] 1391 	mov	dptr,#_uartInitialise_PARM_2
      0028C9 E0               [24] 1392 	movx	a,@dptr
      0028CA FB               [12] 1393 	mov	r3,a
      0028CB A3               [24] 1394 	inc	dptr
      0028CC E0               [24] 1395 	movx	a,@dptr
      0028CD FC               [12] 1396 	mov	r4,a
      0028CE A3               [24] 1397 	inc	dptr
      0028CF E0               [24] 1398 	movx	a,@dptr
      0028D0 FD               [12] 1399 	mov	r5,a
      0028D1 A3               [24] 1400 	inc	dptr
      0028D2 E0               [24] 1401 	movx	a,@dptr
      0028D3 FE               [12] 1402 	mov	r6,a
      0028D4 90 05 DC         [24] 1403 	mov	dptr,#__divulong_PARM_2
      0028D7 EB               [12] 1404 	mov	a,r3
      0028D8 F0               [24] 1405 	movx	@dptr,a
      0028D9 EC               [12] 1406 	mov	a,r4
      0028DA A3               [24] 1407 	inc	dptr
      0028DB F0               [24] 1408 	movx	@dptr,a
      0028DC ED               [12] 1409 	mov	a,r5
      0028DD A3               [24] 1410 	inc	dptr
      0028DE F0               [24] 1411 	movx	@dptr,a
      0028DF EE               [12] 1412 	mov	a,r6
      0028E0 A3               [24] 1413 	inc	dptr
      0028E1 F0               [24] 1414 	movx	@dptr,a
      0028E2 90 0E C0         [24] 1415 	mov	dptr,#0x0ec0
      0028E5 75 F0 16         [24] 1416 	mov	b,#0x16
      0028E8 74 02            [12] 1417 	mov	a,#0x02
      0028EA C0 07            [24] 1418 	push	ar7
      0028EC 12 4A DE         [24] 1419 	lcall	__divulong
      0028EF AB 82            [24] 1420 	mov	r3,dpl
      0028F1 AC 83            [24] 1421 	mov	r4,dph
      0028F3 AD F0            [24] 1422 	mov	r5,b
      0028F5 FE               [12] 1423 	mov	r6,a
      0028F6 D0 07            [24] 1424 	pop	ar7
      0028F8 EE               [12] 1425 	mov	a,r6
      0028F9 C3               [12] 1426 	clr	c
      0028FA 13               [12] 1427 	rrc	a
      0028FB FE               [12] 1428 	mov	r6,a
      0028FC ED               [12] 1429 	mov	a,r5
      0028FD 13               [12] 1430 	rrc	a
      0028FE FD               [12] 1431 	mov	r5,a
      0028FF EC               [12] 1432 	mov	a,r4
      002900 13               [12] 1433 	rrc	a
      002901 FC               [12] 1434 	mov	r4,a
      002902 EB               [12] 1435 	mov	a,r3
      002903 13               [12] 1436 	rrc	a
      002904 FB               [12] 1437 	mov	r3,a
      002905 EE               [12] 1438 	mov	a,r6
      002906 C3               [12] 1439 	clr	c
      002907 13               [12] 1440 	rrc	a
      002908 FE               [12] 1441 	mov	r6,a
      002909 ED               [12] 1442 	mov	a,r5
      00290A 13               [12] 1443 	rrc	a
      00290B FD               [12] 1444 	mov	r5,a
      00290C EC               [12] 1445 	mov	a,r4
      00290D 13               [12] 1446 	rrc	a
      00290E FC               [12] 1447 	mov	r4,a
      00290F EB               [12] 1448 	mov	a,r3
      002910 13               [12] 1449 	rrc	a
                                   1450 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:261: FREE_RUNNING
      002911 90 00 A5         [24] 1451 	mov	dptr,#_startTimer_PARM_2
      002914 F0               [24] 1452 	movx	@dptr,a
      002915 EC               [12] 1453 	mov	a,r4
      002916 A3               [24] 1454 	inc	dptr
      002917 F0               [24] 1455 	movx	@dptr,a
      002918 ED               [12] 1456 	mov	a,r5
      002919 A3               [24] 1457 	inc	dptr
      00291A F0               [24] 1458 	movx	@dptr,a
      00291B EE               [12] 1459 	mov	a,r6
      00291C A3               [24] 1460 	inc	dptr
      00291D F0               [24] 1461 	movx	@dptr,a
      00291E 90 00 A9         [24] 1462 	mov	dptr,#_startTimer_PARM_3
      002921 E4               [12] 1463 	clr	a
      002922 F0               [24] 1464 	movx	@dptr,a
      002923 90 00 AA         [24] 1465 	mov	dptr,#_startTimer_PARM_4
      002926 F0               [24] 1466 	movx	@dptr,a
      002927 90 00 AB         [24] 1467 	mov	dptr,#_startTimer_PARM_5
      00292A F0               [24] 1468 	movx	@dptr,a
      00292B 8F 82            [24] 1469 	mov	dpl,r7
      00292D 12 13 2F         [24] 1470 	lcall	_startTimer
      002930 E5 82            [12] 1471 	mov	a,dpl
      002932 90 01 1B         [24] 1472 	mov	dptr,#_uartInitialise_rc_65536_168
      002935 F0               [24] 1473 	movx	@dptr,a
      002936                       1474 00104$:
                                   1475 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:265: if (rc == TIMER_FREQUENCY_OK) {
      002936 90 01 1B         [24] 1476 	mov	dptr,#_uartInitialise_rc_65536_168
      002939 E0               [24] 1477 	movx	a,@dptr
      00293A 60 03            [24] 1478 	jz	00210$
      00293C 02 2A 71         [24] 1479 	ljmp	00132$
      00293F                       1480 00210$:
                                   1481 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:266: uint8_t operationMode = 0;
      00293F 90 01 1D         [24] 1482 	mov	dptr,#_uartInitialise_operationMode_131072_171
      002942 E4               [12] 1483 	clr	a
      002943 F0               [24] 1484 	movx	@dptr,a
                                   1485 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:268: switch (mode) {
      002944 90 01 18         [24] 1486 	mov	dptr,#_uartInitialise_PARM_4
      002947 E0               [24] 1487 	movx	a,@dptr
      002948 FF               [12] 1488 	mov  r7,a
      002949 24 FC            [12] 1489 	add	a,#0xff - 0x03
      00294B 40 4C            [24] 1490 	jc	00115$
      00294D EF               [12] 1491 	mov	a,r7
      00294E 2F               [12] 1492 	add	a,r7
                                   1493 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:269: case UART_8N1:
      00294F 90 29 53         [24] 1494 	mov	dptr,#00212$
      002952 73               [24] 1495 	jmp	@a+dptr
      002953                       1496 00212$:
      002953 80 06            [24] 1497 	sjmp	00106$
      002955 80 14            [24] 1498 	sjmp	00111$
      002957 80 12            [24] 1499 	sjmp	00111$
      002959 80 10            [24] 1500 	sjmp	00111$
      00295B                       1501 00106$:
                                   1502 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:270: if (uart == UART1) {
      00295B 90 01 1A         [24] 1503 	mov	dptr,#_uartInitialise_uart_65536_167
      00295E E0               [24] 1504 	movx	a,@dptr
      00295F FE               [12] 1505 	mov	r6,a
      002960 BE 01 36         [24] 1506 	cjne	r6,#0x01,00115$
                                   1507 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:271: operationMode = 1;
      002963 90 01 1D         [24] 1508 	mov	dptr,#_uartInitialise_operationMode_131072_171
      002966 74 01            [12] 1509 	mov	a,#0x01
      002968 F0               [24] 1510 	movx	@dptr,a
                                   1511 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:273: break;
                                   1512 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:277: case UART_MULTI_MACHINE:
      002969 80 2E            [24] 1513 	sjmp	00115$
      00296B                       1514 00111$:
                                   1515 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:278: if (uart == UART1) {
      00296B 90 01 1A         [24] 1516 	mov	dptr,#_uartInitialise_uart_65536_167
      00296E E0               [24] 1517 	movx	a,@dptr
      00296F FE               [12] 1518 	mov	r6,a
      002970 BE 01 20         [24] 1519 	cjne	r6,#0x01,00113$
                                   1520 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:279: operationMode = 2 | ((baudRate & 2) >> 1);
      002973 90 01 13         [24] 1521 	mov	dptr,#_uartInitialise_PARM_2
      002976 E0               [24] 1522 	movx	a,@dptr
      002977 FB               [12] 1523 	mov	r3,a
      002978 A3               [24] 1524 	inc	dptr
      002979 E0               [24] 1525 	movx	a,@dptr
      00297A A3               [24] 1526 	inc	dptr
      00297B E0               [24] 1527 	movx	a,@dptr
      00297C FD               [12] 1528 	mov	r5,a
      00297D A3               [24] 1529 	inc	dptr
      00297E E0               [24] 1530 	movx	a,@dptr
      00297F FE               [12] 1531 	mov	r6,a
      002980 53 03 02         [24] 1532 	anl	ar3,#0x02
      002983 E4               [12] 1533 	clr	a
      002984 C3               [12] 1534 	clr	c
      002985 13               [12] 1535 	rrc	a
      002986 CB               [12] 1536 	xch	a,r3
      002987 13               [12] 1537 	rrc	a
      002988 CB               [12] 1538 	xch	a,r3
      002989 FC               [12] 1539 	mov	r4,a
      00298A 90 01 1D         [24] 1540 	mov	dptr,#_uartInitialise_operationMode_131072_171
      00298D 74 02            [12] 1541 	mov	a,#0x02
      00298F 4B               [12] 1542 	orl	a,r3
      002990 F0               [24] 1543 	movx	@dptr,a
      002991 80 06            [24] 1544 	sjmp	00115$
      002993                       1545 00113$:
                                   1546 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:281: operationMode = 1;
      002993 90 01 1D         [24] 1547 	mov	dptr,#_uartInitialise_operationMode_131072_171
      002996 74 01            [12] 1548 	mov	a,#0x01
      002998 F0               [24] 1549 	movx	@dptr,a
                                   1550 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:284: }
      002999                       1551 00115$:
                                   1552 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:286: uint8_t scon = ((mode == UART_MULTI_MACHINE) ? M_SM2 : 0)
      002999 BF 03 06         [24] 1553 	cjne	r7,#0x03,00135$
      00299C 7E 20            [12] 1554 	mov	r6,#0x20
      00299E 7F 00            [12] 1555 	mov	r7,#0x00
      0029A0 80 04            [24] 1556 	sjmp	00136$
      0029A2                       1557 00135$:
      0029A2 7E 00            [12] 1558 	mov	r6,#0x00
      0029A4 7F 00            [12] 1559 	mov	r7,#0x00
      0029A6                       1560 00136$:
      0029A6 90 01 1D         [24] 1561 	mov	dptr,#_uartInitialise_operationMode_131072_171
      0029A9 E0               [24] 1562 	movx	a,@dptr
      0029AA 30 E1 06         [24] 1563 	jnb	acc.1,00137$
      0029AD 7C 80            [12] 1564 	mov	r4,#0x80
      0029AF 7D 00            [12] 1565 	mov	r5,#0x00
      0029B1 80 04            [24] 1566 	sjmp	00138$
      0029B3                       1567 00137$:
      0029B3 7C 00            [12] 1568 	mov	r4,#0x00
      0029B5 7D 00            [12] 1569 	mov	r5,#0x00
      0029B7                       1570 00138$:
      0029B7 EC               [12] 1571 	mov	a,r4
      0029B8 4E               [12] 1572 	orl	a,r6
      0029B9 44 10            [12] 1573 	orl	a,#0x10
      0029BB FF               [12] 1574 	mov	r7,a
                                   1575 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:289: switch (uart) {
      0029BC 90 01 1A         [24] 1576 	mov	dptr,#_uartInitialise_uart_65536_167
      0029BF E0               [24] 1577 	movx	a,@dptr
      0029C0 FE               [12] 1578 	mov	r6,a
      0029C1 BE 01 02         [24] 1579 	cjne	r6,#0x01,00220$
      0029C4 80 03            [24] 1580 	sjmp	00221$
      0029C6                       1581 00220$:
      0029C6 02 2A 51         [24] 1582 	ljmp	00130$
      0029C9                       1583 00221$:
                                   1584 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:292: switch (operationMode) {
      0029C9 90 01 1D         [24] 1585 	mov	dptr,#_uartInitialise_operationMode_131072_171
      0029CC E0               [24] 1586 	movx	a,@dptr
      0029CD FE               [12] 1587 	mov	r6,a
      0029CE BE 01 02         [24] 1588 	cjne	r6,#0x01,00222$
      0029D1 80 0A            [24] 1589 	sjmp	00117$
      0029D3                       1590 00222$:
      0029D3 BE 02 02         [24] 1591 	cjne	r6,#0x02,00223$
      0029D6 80 17            [24] 1592 	sjmp	00121$
      0029D8                       1593 00223$:
                                   1594 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:293: case 1:
      0029D8 BE 03 4A         [24] 1595 	cjne	r6,#0x03,00129$
      0029DB 80 2E            [24] 1596 	sjmp	00125$
      0029DD                       1597 00117$:
                                   1598 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:295: if (timer == TIMER2) {
      0029DD 90 01 1C         [24] 1599 	mov	dptr,#_uartInitialise_timer_65536_168
      0029E0 E0               [24] 1600 	movx	a,@dptr
      0029E1 FE               [12] 1601 	mov	r6,a
      0029E2 BE 02 05         [24] 1602 	cjne	r6,#0x02,00119$
                                   1603 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:296: AUXR |= M_S1ST2;
      0029E5 43 8E 01         [24] 1604 	orl	_AUXR,#0x01
      0029E8 80 3B            [24] 1605 	sjmp	00129$
      0029EA                       1606 00119$:
                                   1607 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:298: AUXR &= ~M_S1ST2;
      0029EA 53 8E FE         [24] 1608 	anl	_AUXR,#0xfe
                                   1609 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:301: break;
                                   1610 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:303: case 2:
      0029ED 80 36            [24] 1611 	sjmp	00129$
      0029EF                       1612 00121$:
                                   1613 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:305: if (baudRate & 1) {
      0029EF 90 01 13         [24] 1614 	mov	dptr,#_uartInitialise_PARM_2
      0029F2 E0               [24] 1615 	movx	a,@dptr
      0029F3 FB               [12] 1616 	mov	r3,a
      0029F4 A3               [24] 1617 	inc	dptr
      0029F5 E0               [24] 1618 	movx	a,@dptr
      0029F6 FC               [12] 1619 	mov	r4,a
      0029F7 A3               [24] 1620 	inc	dptr
      0029F8 E0               [24] 1621 	movx	a,@dptr
      0029F9 FD               [12] 1622 	mov	r5,a
      0029FA A3               [24] 1623 	inc	dptr
      0029FB E0               [24] 1624 	movx	a,@dptr
      0029FC FE               [12] 1625 	mov	r6,a
      0029FD EB               [12] 1626 	mov	a,r3
      0029FE 30 E0 05         [24] 1627 	jnb	acc.0,00123$
                                   1628 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:306: PCON |= M_SMOD;
      002A01 43 87 80         [24] 1629 	orl	_PCON,#0x80
      002A04 80 1F            [24] 1630 	sjmp	00129$
      002A06                       1631 00123$:
                                   1632 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:308: PCON &= ~M_SMOD;
      002A06 53 87 7F         [24] 1633 	anl	_PCON,#0x7f
                                   1634 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:310: break;
                                   1635 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:313: case 3:
      002A09 80 1A            [24] 1636 	sjmp	00129$
      002A0B                       1637 00125$:
                                   1638 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:315: if (baudRate & 1) {
      002A0B 90 01 13         [24] 1639 	mov	dptr,#_uartInitialise_PARM_2
      002A0E E0               [24] 1640 	movx	a,@dptr
      002A0F FB               [12] 1641 	mov	r3,a
      002A10 A3               [24] 1642 	inc	dptr
      002A11 E0               [24] 1643 	movx	a,@dptr
      002A12 FC               [12] 1644 	mov	r4,a
      002A13 A3               [24] 1645 	inc	dptr
      002A14 E0               [24] 1646 	movx	a,@dptr
      002A15 FD               [12] 1647 	mov	r5,a
      002A16 A3               [24] 1648 	inc	dptr
      002A17 E0               [24] 1649 	movx	a,@dptr
      002A18 FE               [12] 1650 	mov	r6,a
      002A19 EB               [12] 1651 	mov	a,r3
      002A1A 30 E0 05         [24] 1652 	jnb	acc.0,00127$
                                   1653 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:316: AUXR |= M_UART_M0x6;
      002A1D 43 8E 20         [24] 1654 	orl	_AUXR,#0x20
      002A20 80 03            [24] 1655 	sjmp	00129$
      002A22                       1656 00127$:
                                   1657 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:318: AUXR &= ~M_UART_M0x6;
      002A22 53 8E DF         [24] 1658 	anl	_AUXR,#0xdf
                                   1659 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:322: }
      002A25                       1660 00129$:
                                   1661 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:326: P_SW1 = (P_SW1 & ~M_S1_S) | ((pinSwitch << P_S1_S) & M_S1_S);
      002A25 74 3F            [12] 1662 	mov	a,#0x3f
      002A27 55 A2            [12] 1663 	anl	a,_P_SW1
      002A29 FE               [12] 1664 	mov	r6,a
      002A2A 90 01 19         [24] 1665 	mov	dptr,#_uartInitialise_PARM_5
      002A2D E0               [24] 1666 	movx	a,@dptr
      002A2E 03               [12] 1667 	rr	a
      002A2F 03               [12] 1668 	rr	a
      002A30 54 C0            [12] 1669 	anl	a,#0xc0
      002A32 FD               [12] 1670 	mov	r5,a
      002A33 74 C0            [12] 1671 	mov	a,#0xc0
      002A35 5D               [12] 1672 	anl	a,r5
      002A36 4E               [12] 1673 	orl	a,r6
      002A37 F5 A2            [12] 1674 	mov	_P_SW1,a
                                   1675 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:330: S1CON = scon | ((operationMode & 1) ? M_SM1 : 0);
      002A39 90 01 1D         [24] 1676 	mov	dptr,#_uartInitialise_operationMode_131072_171
      002A3C E0               [24] 1677 	movx	a,@dptr
      002A3D 30 E0 06         [24] 1678 	jnb	acc.0,00139$
      002A40 7D 40            [12] 1679 	mov	r5,#0x40
      002A42 7E 00            [12] 1680 	mov	r6,#0x00
      002A44 80 04            [24] 1681 	sjmp	00140$
      002A46                       1682 00139$:
      002A46 7D 00            [12] 1683 	mov	r5,#0x00
      002A48 7E 00            [12] 1684 	mov	r6,#0x00
      002A4A                       1685 00140$:
      002A4A ED               [12] 1686 	mov	a,r5
      002A4B 4F               [12] 1687 	orl	a,r7
      002A4C F5 98            [12] 1688 	mov	_S1CON,a
                                   1689 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:333: IE1 |= M_S1IE;
      002A4E 43 A8 10         [24] 1690 	orl	_IE1,#0x10
                                   1691 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:398: }
      002A51                       1692 00130$:
                                   1693 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:400: uartTransmitBuffer(uart)->status = STATUS_CLEAR;
      002A51 90 01 1A         [24] 1694 	mov	dptr,#_uartInitialise_uart_65536_167
      002A54 E0               [24] 1695 	movx	a,@dptr
      002A55 F5 82            [12] 1696 	mov	dpl,a
      002A57 12 27 BE         [24] 1697 	lcall	_uartTransmitBuffer
      002A5A AD 82            [24] 1698 	mov	r5,dpl
      002A5C AE 83            [24] 1699 	mov	r6,dph
      002A5E AF F0            [24] 1700 	mov	r7,b
      002A60 74 04            [12] 1701 	mov	a,#0x04
      002A62 2D               [12] 1702 	add	a,r5
      002A63 FD               [12] 1703 	mov	r5,a
      002A64 E4               [12] 1704 	clr	a
      002A65 3E               [12] 1705 	addc	a,r6
      002A66 FE               [12] 1706 	mov	r6,a
      002A67 8D 82            [24] 1707 	mov	dpl,r5
      002A69 8E 83            [24] 1708 	mov	dph,r6
      002A6B 8F F0            [24] 1709 	mov	b,r7
      002A6D E4               [12] 1710 	clr	a
      002A6E 12 4B FA         [24] 1711 	lcall	__gptrput
      002A71                       1712 00132$:
                                   1713 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:403: return rc;
      002A71 90 01 1B         [24] 1714 	mov	dptr,#_uartInitialise_rc_65536_168
      002A74 E0               [24] 1715 	movx	a,@dptr
                                   1716 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:404: }
      002A75 F5 82            [12] 1717 	mov	dpl,a
      002A77 22               [24] 1718 	ret
                                   1719 ;------------------------------------------------------------
                                   1720 ;Allocation info for local variables in function 'uart1_isr'
                                   1721 ;------------------------------------------------------------
                                   1722 ;c                         Allocated with name '_uart1_isr_c_65536_186'
                                   1723 ;------------------------------------------------------------
                                   1724 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:411: INTERRUPT(uart1_isr, UART1_INTERRUPT) {
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function uart1_isr
                                   1727 ;	-----------------------------------------
      002A78                       1728 _uart1_isr:
      002A78 C0 21            [24] 1729 	push	bits
      002A7A C0 E0            [24] 1730 	push	acc
      002A7C C0 F0            [24] 1731 	push	b
      002A7E C0 82            [24] 1732 	push	dpl
      002A80 C0 83            [24] 1733 	push	dph
      002A82 C0 07            [24] 1734 	push	(0+7)
      002A84 C0 06            [24] 1735 	push	(0+6)
      002A86 C0 05            [24] 1736 	push	(0+5)
      002A88 C0 04            [24] 1737 	push	(0+4)
      002A8A C0 03            [24] 1738 	push	(0+3)
      002A8C C0 02            [24] 1739 	push	(0+2)
      002A8E C0 01            [24] 1740 	push	(0+1)
      002A90 C0 00            [24] 1741 	push	(0+0)
      002A92 C0 D0            [24] 1742 	push	psw
      002A94 75 D0 00         [24] 1743 	mov	psw,#0x00
                                   1744 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:414: EA = 0;
                                   1745 ;	assignBit
      002A97 C2 AF            [12] 1746 	clr	_EA
                                   1747 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:416: if (S1CON & M_UART_TXIF) {
      002A99 E5 98            [12] 1748 	mov	a,_S1CON
      002A9B 30 E1 32         [24] 1749 	jnb	acc.1,00105$
                                   1750 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:417: S1CON &= ~M_UART_TXIF;
      002A9E 53 98 FD         [24] 1751 	anl	_S1CON,#0xfd
                                   1752 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:419: if (fifoRead(&UART1_transmitBuffer, &c, 1)) {
      002AA1 74 01            [12] 1753 	mov	a,#0x01
      002AA3 C0 E0            [24] 1754 	push	acc
      002AA5 74 1E            [12] 1755 	mov	a,#_uart1_isr_c_65536_186
      002AA7 C0 E0            [24] 1756 	push	acc
      002AA9 74 01            [12] 1757 	mov	a,#(_uart1_isr_c_65536_186 >> 8)
      002AAB C0 E0            [24] 1758 	push	acc
      002AAD E4               [12] 1759 	clr	a
      002AAE C0 E0            [24] 1760 	push	acc
      002AB0 90 00 7F         [24] 1761 	mov	dptr,#_UART1_transmitBuffer
      002AB3 75 F0 40         [24] 1762 	mov	b,#0x40
      002AB6 12 23 EA         [24] 1763 	lcall	_fifoRead
      002AB9 AF 82            [24] 1764 	mov	r7,dpl
      002ABB E5 81            [12] 1765 	mov	a,sp
      002ABD 24 FC            [12] 1766 	add	a,#0xfc
      002ABF F5 81            [12] 1767 	mov	sp,a
      002AC1 EF               [12] 1768 	mov	a,r7
      002AC2 60 08            [24] 1769 	jz	00102$
                                   1770 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:420: S1BUF = c;
      002AC4 90 01 1E         [24] 1771 	mov	dptr,#_uart1_isr_c_65536_186
      002AC7 E0               [24] 1772 	movx	a,@dptr
      002AC8 F5 99            [12] 1773 	mov	_S1BUF,a
      002ACA 80 04            [24] 1774 	sjmp	00105$
      002ACC                       1775 00102$:
                                   1776 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:422: UART1_transmitBuffer.status = STATUS_CLEAR;
      002ACC 78 83            [12] 1777 	mov	r0,#(_UART1_transmitBuffer + 0x0004)
      002ACE 76 00            [12] 1778 	mov	@r0,#0x00
      002AD0                       1779 00105$:
                                   1780 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:426: if (S1CON & M_UART_RXIF) {
      002AD0 E5 98            [12] 1781 	mov	a,_S1CON
      002AD2 30 E0 27         [24] 1782 	jnb	acc.0,00107$
                                   1783 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:427: S1CON &= ~M_UART_RXIF;
      002AD5 53 98 FE         [24] 1784 	anl	_S1CON,#0xfe
                                   1785 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:428: c = S1BUF;
      002AD8 90 01 1E         [24] 1786 	mov	dptr,#_uart1_isr_c_65536_186
      002ADB E5 99            [12] 1787 	mov	a,_S1BUF
      002ADD F0               [24] 1788 	movx	@dptr,a
                                   1789 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:429: fifoWrite(&UART1_receiveBuffer, &c, 1);
      002ADE 74 01            [12] 1790 	mov	a,#0x01
      002AE0 C0 E0            [24] 1791 	push	acc
      002AE2 74 1E            [12] 1792 	mov	a,#_uart1_isr_c_65536_186
      002AE4 C0 E0            [24] 1793 	push	acc
      002AE6 74 01            [12] 1794 	mov	a,#(_uart1_isr_c_65536_186 >> 8)
      002AE8 C0 E0            [24] 1795 	push	acc
      002AEA E4               [12] 1796 	clr	a
      002AEB C0 E0            [24] 1797 	push	acc
      002AED 90 00 67         [24] 1798 	mov	dptr,#_UART1_receiveBuffer
      002AF0 75 F0 40         [24] 1799 	mov	b,#0x40
      002AF3 12 22 88         [24] 1800 	lcall	_fifoWrite
      002AF6 E5 81            [12] 1801 	mov	a,sp
      002AF8 24 FC            [12] 1802 	add	a,#0xfc
      002AFA F5 81            [12] 1803 	mov	sp,a
      002AFC                       1804 00107$:
                                   1805 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:432: EA = 1;
                                   1806 ;	assignBit
      002AFC D2 AF            [12] 1807 	setb	_EA
                                   1808 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:433: }
      002AFE D0 D0            [24] 1809 	pop	psw
      002B00 D0 00            [24] 1810 	pop	(0+0)
      002B02 D0 01            [24] 1811 	pop	(0+1)
      002B04 D0 02            [24] 1812 	pop	(0+2)
      002B06 D0 03            [24] 1813 	pop	(0+3)
      002B08 D0 04            [24] 1814 	pop	(0+4)
      002B0A D0 05            [24] 1815 	pop	(0+5)
      002B0C D0 06            [24] 1816 	pop	(0+6)
      002B0E D0 07            [24] 1817 	pop	(0+7)
      002B10 D0 83            [24] 1818 	pop	dph
      002B12 D0 82            [24] 1819 	pop	dpl
      002B14 D0 F0            [24] 1820 	pop	b
      002B16 D0 E0            [24] 1821 	pop	acc
      002B18 D0 21            [24] 1822 	pop	bits
      002B1A 32               [24] 1823 	reti
                                   1824 ;------------------------------------------------------------
                                   1825 ;Allocation info for local variables in function 'uartGetBlock'
                                   1826 ;------------------------------------------------------------
                                   1827 ;sloc0                     Allocated with name '_uartGetBlock_sloc0_1_0'
                                   1828 ;sloc1                     Allocated with name '_uartGetBlock_sloc1_1_0'
                                   1829 ;data                      Allocated with name '_uartGetBlock_PARM_2'
                                   1830 ;size                      Allocated with name '_uartGetBlock_PARM_3'
                                   1831 ;blocking                  Allocated with name '_uartGetBlock_PARM_4'
                                   1832 ;uart                      Allocated with name '_uartGetBlock_uart_65536_191'
                                   1833 ;rc                        Allocated with name '_uartGetBlock_rc_65536_192'
                                   1834 ;buffer                    Allocated with name '_uartGetBlock_buffer_65536_192'
                                   1835 ;------------------------------------------------------------
                                   1836 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:511: bool uartGetBlock(Uart uart, uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1837 ;	-----------------------------------------
                                   1838 ;	 function uartGetBlock
                                   1839 ;	-----------------------------------------
      002B1B                       1840 _uartGetBlock:
      002B1B E5 82            [12] 1841 	mov	a,dpl
      002B1D 90 01 24         [24] 1842 	mov	dptr,#_uartGetBlock_uart_65536_191
      002B20 F0               [24] 1843 	movx	@dptr,a
                                   1844 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:513: FifoState *buffer = uartReceiveBuffer(uart);
      002B21 E0               [24] 1845 	movx	a,@dptr
      002B22 F5 82            [12] 1846 	mov	dpl,a
      002B24 12 27 88         [24] 1847 	lcall	_uartReceiveBuffer
      002B27 AD 82            [24] 1848 	mov	r5,dpl
      002B29 AE 83            [24] 1849 	mov	r6,dph
      002B2B AF F0            [24] 1850 	mov	r7,b
                                   1851 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:515: do {
      002B2D 90 01 1F         [24] 1852 	mov	dptr,#_uartGetBlock_PARM_2
      002B30 E0               [24] 1853 	movx	a,@dptr
      002B31 F5 23            [12] 1854 	mov	_uartGetBlock_sloc1_1_0,a
      002B33 A3               [24] 1855 	inc	dptr
      002B34 E0               [24] 1856 	movx	a,@dptr
      002B35 F5 24            [12] 1857 	mov	(_uartGetBlock_sloc1_1_0 + 1),a
      002B37 A3               [24] 1858 	inc	dptr
      002B38 E0               [24] 1859 	movx	a,@dptr
      002B39 F5 25            [12] 1860 	mov	(_uartGetBlock_sloc1_1_0 + 2),a
      002B3B 90 01 23         [24] 1861 	mov	dptr,#_uartGetBlock_PARM_4
      002B3E E0               [24] 1862 	movx	a,@dptr
      002B3F F9               [12] 1863 	mov	r1,a
      002B40 B9 01 03         [24] 1864 	cjne	r1,#0x01,00115$
      002B43 E9               [12] 1865 	mov	a,r1
      002B44 80 01            [24] 1866 	sjmp	00116$
      002B46                       1867 00115$:
      002B46 E4               [12] 1868 	clr	a
      002B47                       1869 00116$:
      002B47 F5 22            [12] 1870 	mov	_uartGetBlock_sloc0_1_0,a
      002B49                       1871 00102$:
                                   1872 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:516: EA = 0;
                                   1873 ;	assignBit
      002B49 C2 AF            [12] 1874 	clr	_EA
                                   1875 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:517: rc = fifoRead(buffer, data, size);
      002B4B A8 23            [24] 1876 	mov	r0,_uartGetBlock_sloc1_1_0
      002B4D A9 24            [24] 1877 	mov	r1,(_uartGetBlock_sloc1_1_0 + 1)
      002B4F AC 25            [24] 1878 	mov	r4,(_uartGetBlock_sloc1_1_0 + 2)
      002B51 C0 07            [24] 1879 	push	ar7
      002B53 C0 06            [24] 1880 	push	ar6
      002B55 C0 05            [24] 1881 	push	ar5
      002B57 90 01 22         [24] 1882 	mov	dptr,#_uartGetBlock_PARM_3
      002B5A E0               [24] 1883 	movx	a,@dptr
      002B5B C0 E0            [24] 1884 	push	acc
      002B5D C0 00            [24] 1885 	push	ar0
      002B5F C0 01            [24] 1886 	push	ar1
      002B61 C0 04            [24] 1887 	push	ar4
      002B63 8D 82            [24] 1888 	mov	dpl,r5
      002B65 8E 83            [24] 1889 	mov	dph,r6
      002B67 8F F0            [24] 1890 	mov	b,r7
      002B69 12 23 EA         [24] 1891 	lcall	_fifoRead
      002B6C AC 82            [24] 1892 	mov	r4,dpl
      002B6E E5 81            [12] 1893 	mov	a,sp
      002B70 24 FC            [12] 1894 	add	a,#0xfc
      002B72 F5 81            [12] 1895 	mov	sp,a
      002B74 D0 05            [24] 1896 	pop	ar5
      002B76 D0 06            [24] 1897 	pop	ar6
      002B78 D0 07            [24] 1898 	pop	ar7
                                   1899 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:518: EA = 1;
                                   1900 ;	assignBit
      002B7A D2 AF            [12] 1901 	setb	_EA
                                   1902 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:519: } while (blocking == BLOCKING && !rc);
      002B7C E5 22            [12] 1903 	mov	a,_uartGetBlock_sloc0_1_0
      002B7E 60 03            [24] 1904 	jz	00104$
      002B80 EC               [12] 1905 	mov	a,r4
      002B81 60 C6            [24] 1906 	jz	00102$
      002B83                       1907 00104$:
                                   1908 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:521: return rc;
      002B83 8C 82            [24] 1909 	mov	dpl,r4
                                   1910 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:522: }
      002B85 22               [24] 1911 	ret
                                   1912 ;------------------------------------------------------------
                                   1913 ;Allocation info for local variables in function 'uartSendBlock'
                                   1914 ;------------------------------------------------------------
                                   1915 ;sloc0                     Allocated with name '_uartSendBlock_sloc0_1_0'
                                   1916 ;sloc1                     Allocated with name '_uartSendBlock_sloc1_1_0'
                                   1917 ;data                      Allocated with name '_uartSendBlock_PARM_2'
                                   1918 ;size                      Allocated with name '_uartSendBlock_PARM_3'
                                   1919 ;blocking                  Allocated with name '_uartSendBlock_PARM_4'
                                   1920 ;uart                      Allocated with name '_uartSendBlock_uart_65536_194'
                                   1921 ;buffer                    Allocated with name '_uartSendBlock_buffer_65536_195'
                                   1922 ;rc                        Allocated with name '_uartSendBlock_rc_65536_195'
                                   1923 ;data                      Allocated with name '_uartSendBlock_data_131073_198'
                                   1924 ;------------------------------------------------------------
                                   1925 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:524: bool uartSendBlock(Uart uart, const uint8_t *data, uint8_t size, BlockingOperation blocking) {
                                   1926 ;	-----------------------------------------
                                   1927 ;	 function uartSendBlock
                                   1928 ;	-----------------------------------------
      002B86                       1929 _uartSendBlock:
      002B86 E5 82            [12] 1930 	mov	a,dpl
      002B88 90 01 2A         [24] 1931 	mov	dptr,#_uartSendBlock_uart_65536_194
      002B8B F0               [24] 1932 	movx	@dptr,a
                                   1933 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:525: FifoState *buffer = uartTransmitBuffer(uart);
      002B8C E0               [24] 1934 	movx	a,@dptr
      002B8D F5 82            [12] 1935 	mov	dpl,a
      002B8F 12 27 BE         [24] 1936 	lcall	_uartTransmitBuffer
      002B92 AD 82            [24] 1937 	mov	r5,dpl
      002B94 AE 83            [24] 1938 	mov	r6,dph
      002B96 AF F0            [24] 1939 	mov	r7,b
                                   1940 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:528: do {
      002B98 90 01 25         [24] 1941 	mov	dptr,#_uartSendBlock_PARM_2
      002B9B E0               [24] 1942 	movx	a,@dptr
      002B9C F5 27            [12] 1943 	mov	_uartSendBlock_sloc1_1_0,a
      002B9E A3               [24] 1944 	inc	dptr
      002B9F E0               [24] 1945 	movx	a,@dptr
      002BA0 F5 28            [12] 1946 	mov	(_uartSendBlock_sloc1_1_0 + 1),a
      002BA2 A3               [24] 1947 	inc	dptr
      002BA3 E0               [24] 1948 	movx	a,@dptr
      002BA4 F5 29            [12] 1949 	mov	(_uartSendBlock_sloc1_1_0 + 2),a
      002BA6 90 01 29         [24] 1950 	mov	dptr,#_uartSendBlock_PARM_4
      002BA9 E0               [24] 1951 	movx	a,@dptr
      002BAA F9               [12] 1952 	mov	r1,a
      002BAB B9 01 03         [24] 1953 	cjne	r1,#0x01,00132$
      002BAE E9               [12] 1954 	mov	a,r1
      002BAF 80 01            [24] 1955 	sjmp	00133$
      002BB1                       1956 00132$:
      002BB1 E4               [12] 1957 	clr	a
      002BB2                       1958 00133$:
      002BB2 F5 26            [12] 1959 	mov	_uartSendBlock_sloc0_1_0,a
      002BB4                       1960 00102$:
                                   1961 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:529: EA = 0;
                                   1962 ;	assignBit
      002BB4 C2 AF            [12] 1963 	clr	_EA
                                   1964 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:530: rc = fifoWrite(buffer, data, size);
      002BB6 A8 27            [24] 1965 	mov	r0,_uartSendBlock_sloc1_1_0
      002BB8 A9 28            [24] 1966 	mov	r1,(_uartSendBlock_sloc1_1_0 + 1)
      002BBA AC 29            [24] 1967 	mov	r4,(_uartSendBlock_sloc1_1_0 + 2)
      002BBC C0 07            [24] 1968 	push	ar7
      002BBE C0 06            [24] 1969 	push	ar6
      002BC0 C0 05            [24] 1970 	push	ar5
      002BC2 90 01 28         [24] 1971 	mov	dptr,#_uartSendBlock_PARM_3
      002BC5 E0               [24] 1972 	movx	a,@dptr
      002BC6 C0 E0            [24] 1973 	push	acc
      002BC8 C0 00            [24] 1974 	push	ar0
      002BCA C0 01            [24] 1975 	push	ar1
      002BCC C0 04            [24] 1976 	push	ar4
      002BCE 8D 82            [24] 1977 	mov	dpl,r5
      002BD0 8E 83            [24] 1978 	mov	dph,r6
      002BD2 8F F0            [24] 1979 	mov	b,r7
      002BD4 12 22 88         [24] 1980 	lcall	_fifoWrite
      002BD7 AC 82            [24] 1981 	mov	r4,dpl
      002BD9 E5 81            [12] 1982 	mov	a,sp
      002BDB 24 FC            [12] 1983 	add	a,#0xfc
      002BDD F5 81            [12] 1984 	mov	sp,a
      002BDF D0 05            [24] 1985 	pop	ar5
      002BE1 D0 06            [24] 1986 	pop	ar6
      002BE3 D0 07            [24] 1987 	pop	ar7
                                   1988 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:531: EA = 1;
                                   1989 ;	assignBit
      002BE5 D2 AF            [12] 1990 	setb	_EA
                                   1991 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:532: } while (blocking == BLOCKING && !rc);
      002BE7 E5 26            [12] 1992 	mov	a,_uartSendBlock_sloc0_1_0
      002BE9 60 03            [24] 1993 	jz	00104$
      002BEB EC               [12] 1994 	mov	a,r4
      002BEC 60 C6            [24] 1995 	jz	00102$
      002BEE                       1996 00104$:
                                   1997 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:534: if (rc && buffer->status == STATUS_CLEAR) {
      002BEE EC               [12] 1998 	mov	a,r4
      002BEF 60 4D            [24] 1999 	jz	00108$
      002BF1 74 04            [12] 2000 	mov	a,#0x04
      002BF3 2D               [12] 2001 	add	a,r5
      002BF4 F9               [12] 2002 	mov	r1,a
      002BF5 E4               [12] 2003 	clr	a
      002BF6 3E               [12] 2004 	addc	a,r6
      002BF7 FA               [12] 2005 	mov	r2,a
      002BF8 8F 03            [24] 2006 	mov	ar3,r7
      002BFA 89 82            [24] 2007 	mov	dpl,r1
      002BFC 8A 83            [24] 2008 	mov	dph,r2
      002BFE 8B F0            [24] 2009 	mov	b,r3
      002C00 12 58 3E         [24] 2010 	lcall	__gptrget
      002C03 70 39            [24] 2011 	jnz	00108$
                                   2012 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:535: buffer->status = STATUS_SENDING;
      002C05 89 82            [24] 2013 	mov	dpl,r1
      002C07 8A 83            [24] 2014 	mov	dph,r2
      002C09 8B F0            [24] 2015 	mov	b,r3
      002C0B 74 01            [12] 2016 	mov	a,#0x01
      002C0D 12 4B FA         [24] 2017 	lcall	__gptrput
                                   2018 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:537: fifoRead(buffer, &data, 1);
      002C10 C0 04            [24] 2019 	push	ar4
      002C12 C0 E0            [24] 2020 	push	acc
      002C14 74 2B            [12] 2021 	mov	a,#_uartSendBlock_data_131073_198
      002C16 C0 E0            [24] 2022 	push	acc
      002C18 74 01            [12] 2023 	mov	a,#(_uartSendBlock_data_131073_198 >> 8)
      002C1A C0 E0            [24] 2024 	push	acc
      002C1C E4               [12] 2025 	clr	a
      002C1D C0 E0            [24] 2026 	push	acc
      002C1F 8D 82            [24] 2027 	mov	dpl,r5
      002C21 8E 83            [24] 2028 	mov	dph,r6
      002C23 8F F0            [24] 2029 	mov	b,r7
      002C25 12 23 EA         [24] 2030 	lcall	_fifoRead
      002C28 E5 81            [12] 2031 	mov	a,sp
      002C2A 24 FC            [12] 2032 	add	a,#0xfc
      002C2C F5 81            [12] 2033 	mov	sp,a
      002C2E D0 04            [24] 2034 	pop	ar4
                                   2035 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:539: switch (uart) {
      002C30 90 01 2A         [24] 2036 	mov	dptr,#_uartSendBlock_uart_65536_194
      002C33 E0               [24] 2037 	movx	a,@dptr
      002C34 FF               [12] 2038 	mov	r7,a
      002C35 BF 01 06         [24] 2039 	cjne	r7,#0x01,00108$
                                   2040 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:541: S1BUF = data;
      002C38 90 01 2B         [24] 2041 	mov	dptr,#_uartSendBlock_data_131073_198
      002C3B E0               [24] 2042 	movx	a,@dptr
      002C3C F5 99            [12] 2043 	mov	_S1BUF,a
                                   2044 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:559: }
      002C3E                       2045 00108$:
                                   2046 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:562: return rc;
      002C3E 8C 82            [24] 2047 	mov	dpl,r4
                                   2048 ;	/home/mr-a-717/.stc/uni-stc/hal/uart-hal.c:563: }
      002C40 22               [24] 2049 	ret
                                   2050 	.area CSEG    (CODE)
                                   2051 	.area CONST   (CODE)
      0065C3                       2052 _FONTS:
      0065C3 00                    2053 	.db #0x00	; 0
      0065C4 00                    2054 	.db #0x00	; 0
      0065C5 00                    2055 	.db #0x00	; 0
      0065C6 00                    2056 	.db #0x00	; 0
      0065C7 00                    2057 	.db #0x00	; 0
      0065C8 81                    2058 	.db #0x81	; 129
      0065C9 81                    2059 	.db #0x81	; 129
      0065CA 18                    2060 	.db #0x18	; 24
      0065CB 81                    2061 	.db #0x81	; 129
      0065CC 81                    2062 	.db #0x81	; 129
      0065CD 00                    2063 	.db #0x00	; 0
      0065CE 07                    2064 	.db #0x07	; 7
      0065CF 00                    2065 	.db #0x00	; 0
      0065D0 07                    2066 	.db #0x07	; 7
      0065D1 00                    2067 	.db #0x00	; 0
      0065D2 14                    2068 	.db #0x14	; 20
      0065D3 7F                    2069 	.db #0x7f	; 127
      0065D4 14                    2070 	.db #0x14	; 20
      0065D5 7F                    2071 	.db #0x7f	; 127
      0065D6 14                    2072 	.db #0x14	; 20
      0065D7 24                    2073 	.db #0x24	; 36
      0065D8 2A                    2074 	.db #0x2a	; 42
      0065D9 7F                    2075 	.db #0x7f	; 127
      0065DA 2A                    2076 	.db #0x2a	; 42
      0065DB 12                    2077 	.db #0x12	; 18
      0065DC 23                    2078 	.db #0x23	; 35
      0065DD 13                    2079 	.db #0x13	; 19
      0065DE 08                    2080 	.db #0x08	; 8
      0065DF 64                    2081 	.db #0x64	; 100	'd'
      0065E0 62                    2082 	.db #0x62	; 98	'b'
      0065E1 36                    2083 	.db #0x36	; 54	'6'
      0065E2 49                    2084 	.db #0x49	; 73	'I'
      0065E3 55                    2085 	.db #0x55	; 85	'U'
      0065E4 22                    2086 	.db #0x22	; 34
      0065E5 50                    2087 	.db #0x50	; 80	'P'
      0065E6 00                    2088 	.db #0x00	; 0
      0065E7 05                    2089 	.db #0x05	; 5
      0065E8 03                    2090 	.db #0x03	; 3
      0065E9 00                    2091 	.db #0x00	; 0
      0065EA 00                    2092 	.db #0x00	; 0
      0065EB 00                    2093 	.db #0x00	; 0
      0065EC 1C                    2094 	.db #0x1c	; 28
      0065ED 22                    2095 	.db #0x22	; 34
      0065EE 41                    2096 	.db #0x41	; 65	'A'
      0065EF 00                    2097 	.db #0x00	; 0
      0065F0 00                    2098 	.db #0x00	; 0
      0065F1 41                    2099 	.db #0x41	; 65	'A'
      0065F2 22                    2100 	.db #0x22	; 34
      0065F3 1C                    2101 	.db #0x1c	; 28
      0065F4 00                    2102 	.db #0x00	; 0
      0065F5 14                    2103 	.db #0x14	; 20
      0065F6 08                    2104 	.db #0x08	; 8
      0065F7 3E                    2105 	.db #0x3e	; 62
      0065F8 08                    2106 	.db #0x08	; 8
      0065F9 14                    2107 	.db #0x14	; 20
      0065FA 08                    2108 	.db #0x08	; 8
      0065FB 08                    2109 	.db #0x08	; 8
      0065FC 3E                    2110 	.db #0x3e	; 62
      0065FD 08                    2111 	.db #0x08	; 8
      0065FE 08                    2112 	.db #0x08	; 8
      0065FF 00                    2113 	.db #0x00	; 0
      006600 50                    2114 	.db #0x50	; 80	'P'
      006601 30                    2115 	.db #0x30	; 48	'0'
      006602 00                    2116 	.db #0x00	; 0
      006603 00                    2117 	.db #0x00	; 0
      006604 08                    2118 	.db #0x08	; 8
      006605 08                    2119 	.db #0x08	; 8
      006606 08                    2120 	.db #0x08	; 8
      006607 08                    2121 	.db #0x08	; 8
      006608 08                    2122 	.db #0x08	; 8
      006609 00                    2123 	.db #0x00	; 0
      00660A 60                    2124 	.db #0x60	; 96
      00660B 60                    2125 	.db #0x60	; 96
      00660C 00                    2126 	.db #0x00	; 0
      00660D 00                    2127 	.db #0x00	; 0
      00660E 20                    2128 	.db #0x20	; 32
      00660F 10                    2129 	.db #0x10	; 16
      006610 08                    2130 	.db #0x08	; 8
      006611 04                    2131 	.db #0x04	; 4
      006612 02                    2132 	.db #0x02	; 2
      006613 3E                    2133 	.db #0x3e	; 62
      006614 51                    2134 	.db #0x51	; 81	'Q'
      006615 49                    2135 	.db #0x49	; 73	'I'
      006616 45                    2136 	.db #0x45	; 69	'E'
      006617 3E                    2137 	.db #0x3e	; 62
      006618 00                    2138 	.db #0x00	; 0
      006619 42                    2139 	.db #0x42	; 66	'B'
      00661A 7F                    2140 	.db #0x7f	; 127
      00661B 40                    2141 	.db #0x40	; 64
      00661C 00                    2142 	.db #0x00	; 0
      00661D 42                    2143 	.db #0x42	; 66	'B'
      00661E 61                    2144 	.db #0x61	; 97	'a'
      00661F 51                    2145 	.db #0x51	; 81	'Q'
      006620 49                    2146 	.db #0x49	; 73	'I'
      006621 46                    2147 	.db #0x46	; 70	'F'
      006622 21                    2148 	.db #0x21	; 33
      006623 41                    2149 	.db #0x41	; 65	'A'
      006624 45                    2150 	.db #0x45	; 69	'E'
      006625 4B                    2151 	.db #0x4b	; 75	'K'
      006626 31                    2152 	.db #0x31	; 49	'1'
      006627 18                    2153 	.db #0x18	; 24
      006628 14                    2154 	.db #0x14	; 20
      006629 12                    2155 	.db #0x12	; 18
      00662A 7F                    2156 	.db #0x7f	; 127
      00662B 10                    2157 	.db #0x10	; 16
      00662C 27                    2158 	.db #0x27	; 39
      00662D 45                    2159 	.db #0x45	; 69	'E'
      00662E 45                    2160 	.db #0x45	; 69	'E'
      00662F 45                    2161 	.db #0x45	; 69	'E'
      006630 39                    2162 	.db #0x39	; 57	'9'
      006631 3C                    2163 	.db #0x3c	; 60
      006632 4A                    2164 	.db #0x4a	; 74	'J'
      006633 49                    2165 	.db #0x49	; 73	'I'
      006634 49                    2166 	.db #0x49	; 73	'I'
      006635 30                    2167 	.db #0x30	; 48	'0'
      006636 01                    2168 	.db #0x01	; 1
      006637 71                    2169 	.db #0x71	; 113	'q'
      006638 09                    2170 	.db #0x09	; 9
      006639 05                    2171 	.db #0x05	; 5
      00663A 03                    2172 	.db #0x03	; 3
      00663B 36                    2173 	.db #0x36	; 54	'6'
      00663C 49                    2174 	.db #0x49	; 73	'I'
      00663D 49                    2175 	.db #0x49	; 73	'I'
      00663E 49                    2176 	.db #0x49	; 73	'I'
      00663F 36                    2177 	.db #0x36	; 54	'6'
      006640 06                    2178 	.db #0x06	; 6
      006641 49                    2179 	.db #0x49	; 73	'I'
      006642 49                    2180 	.db #0x49	; 73	'I'
      006643 29                    2181 	.db #0x29	; 41
      006644 1E                    2182 	.db #0x1e	; 30
      006645 00                    2183 	.db #0x00	; 0
      006646 36                    2184 	.db #0x36	; 54	'6'
      006647 36                    2185 	.db #0x36	; 54	'6'
      006648 00                    2186 	.db #0x00	; 0
      006649 00                    2187 	.db #0x00	; 0
      00664A 00                    2188 	.db #0x00	; 0
      00664B 56                    2189 	.db #0x56	; 86	'V'
      00664C 36                    2190 	.db #0x36	; 54	'6'
      00664D 00                    2191 	.db #0x00	; 0
      00664E 00                    2192 	.db #0x00	; 0
      00664F 08                    2193 	.db #0x08	; 8
      006650 14                    2194 	.db #0x14	; 20
      006651 22                    2195 	.db #0x22	; 34
      006652 41                    2196 	.db #0x41	; 65	'A'
      006653 00                    2197 	.db #0x00	; 0
      006654 14                    2198 	.db #0x14	; 20
      006655 14                    2199 	.db #0x14	; 20
      006656 14                    2200 	.db #0x14	; 20
      006657 14                    2201 	.db #0x14	; 20
      006658 14                    2202 	.db #0x14	; 20
      006659 00                    2203 	.db #0x00	; 0
      00665A 41                    2204 	.db #0x41	; 65	'A'
      00665B 22                    2205 	.db #0x22	; 34
      00665C 14                    2206 	.db #0x14	; 20
      00665D 08                    2207 	.db #0x08	; 8
      00665E 02                    2208 	.db #0x02	; 2
      00665F 01                    2209 	.db #0x01	; 1
      006660 51                    2210 	.db #0x51	; 81	'Q'
      006661 09                    2211 	.db #0x09	; 9
      006662 06                    2212 	.db #0x06	; 6
      006663 32                    2213 	.db #0x32	; 50	'2'
      006664 49                    2214 	.db #0x49	; 73	'I'
      006665 79                    2215 	.db #0x79	; 121	'y'
      006666 41                    2216 	.db #0x41	; 65	'A'
      006667 3E                    2217 	.db #0x3e	; 62
      006668 7E                    2218 	.db #0x7e	; 126
      006669 11                    2219 	.db #0x11	; 17
      00666A 11                    2220 	.db #0x11	; 17
      00666B 11                    2221 	.db #0x11	; 17
      00666C 7E                    2222 	.db #0x7e	; 126
      00666D 7F                    2223 	.db #0x7f	; 127
      00666E 49                    2224 	.db #0x49	; 73	'I'
      00666F 49                    2225 	.db #0x49	; 73	'I'
      006670 49                    2226 	.db #0x49	; 73	'I'
      006671 36                    2227 	.db #0x36	; 54	'6'
      006672 3E                    2228 	.db #0x3e	; 62
      006673 41                    2229 	.db #0x41	; 65	'A'
      006674 41                    2230 	.db #0x41	; 65	'A'
      006675 41                    2231 	.db #0x41	; 65	'A'
      006676 22                    2232 	.db #0x22	; 34
      006677 7F                    2233 	.db #0x7f	; 127
      006678 41                    2234 	.db #0x41	; 65	'A'
      006679 41                    2235 	.db #0x41	; 65	'A'
      00667A 22                    2236 	.db #0x22	; 34
      00667B 1C                    2237 	.db #0x1c	; 28
      00667C 7F                    2238 	.db #0x7f	; 127
      00667D 49                    2239 	.db #0x49	; 73	'I'
      00667E 49                    2240 	.db #0x49	; 73	'I'
      00667F 49                    2241 	.db #0x49	; 73	'I'
      006680 41                    2242 	.db #0x41	; 65	'A'
      006681 7F                    2243 	.db #0x7f	; 127
      006682 09                    2244 	.db #0x09	; 9
      006683 09                    2245 	.db #0x09	; 9
      006684 09                    2246 	.db #0x09	; 9
      006685 01                    2247 	.db #0x01	; 1
      006686 3E                    2248 	.db #0x3e	; 62
      006687 41                    2249 	.db #0x41	; 65	'A'
      006688 49                    2250 	.db #0x49	; 73	'I'
      006689 49                    2251 	.db #0x49	; 73	'I'
      00668A 7A                    2252 	.db #0x7a	; 122	'z'
      00668B 7F                    2253 	.db #0x7f	; 127
      00668C 08                    2254 	.db #0x08	; 8
      00668D 08                    2255 	.db #0x08	; 8
      00668E 08                    2256 	.db #0x08	; 8
      00668F 7F                    2257 	.db #0x7f	; 127
      006690 00                    2258 	.db #0x00	; 0
      006691 41                    2259 	.db #0x41	; 65	'A'
      006692 7F                    2260 	.db #0x7f	; 127
      006693 41                    2261 	.db #0x41	; 65	'A'
      006694 00                    2262 	.db #0x00	; 0
      006695 20                    2263 	.db #0x20	; 32
      006696 40                    2264 	.db #0x40	; 64
      006697 41                    2265 	.db #0x41	; 65	'A'
      006698 3F                    2266 	.db #0x3f	; 63
      006699 01                    2267 	.db #0x01	; 1
      00669A 7F                    2268 	.db #0x7f	; 127
      00669B 08                    2269 	.db #0x08	; 8
      00669C 14                    2270 	.db #0x14	; 20
      00669D 22                    2271 	.db #0x22	; 34
      00669E 41                    2272 	.db #0x41	; 65	'A'
      00669F 7F                    2273 	.db #0x7f	; 127
      0066A0 40                    2274 	.db #0x40	; 64
      0066A1 40                    2275 	.db #0x40	; 64
      0066A2 40                    2276 	.db #0x40	; 64
      0066A3 40                    2277 	.db #0x40	; 64
      0066A4 7F                    2278 	.db #0x7f	; 127
      0066A5 02                    2279 	.db #0x02	; 2
      0066A6 0C                    2280 	.db #0x0c	; 12
      0066A7 02                    2281 	.db #0x02	; 2
      0066A8 7F                    2282 	.db #0x7f	; 127
      0066A9 7F                    2283 	.db #0x7f	; 127
      0066AA 04                    2284 	.db #0x04	; 4
      0066AB 08                    2285 	.db #0x08	; 8
      0066AC 10                    2286 	.db #0x10	; 16
      0066AD 7F                    2287 	.db #0x7f	; 127
      0066AE 3E                    2288 	.db #0x3e	; 62
      0066AF 41                    2289 	.db #0x41	; 65	'A'
      0066B0 41                    2290 	.db #0x41	; 65	'A'
      0066B1 41                    2291 	.db #0x41	; 65	'A'
      0066B2 3E                    2292 	.db #0x3e	; 62
      0066B3 7F                    2293 	.db #0x7f	; 127
      0066B4 09                    2294 	.db #0x09	; 9
      0066B5 09                    2295 	.db #0x09	; 9
      0066B6 09                    2296 	.db #0x09	; 9
      0066B7 06                    2297 	.db #0x06	; 6
      0066B8 3E                    2298 	.db #0x3e	; 62
      0066B9 41                    2299 	.db #0x41	; 65	'A'
      0066BA 51                    2300 	.db #0x51	; 81	'Q'
      0066BB 21                    2301 	.db #0x21	; 33
      0066BC 5E                    2302 	.db #0x5e	; 94
      0066BD 7F                    2303 	.db #0x7f	; 127
      0066BE 09                    2304 	.db #0x09	; 9
      0066BF 19                    2305 	.db #0x19	; 25
      0066C0 29                    2306 	.db #0x29	; 41
      0066C1 46                    2307 	.db #0x46	; 70	'F'
      0066C2 46                    2308 	.db #0x46	; 70	'F'
      0066C3 49                    2309 	.db #0x49	; 73	'I'
      0066C4 49                    2310 	.db #0x49	; 73	'I'
      0066C5 49                    2311 	.db #0x49	; 73	'I'
      0066C6 31                    2312 	.db #0x31	; 49	'1'
      0066C7 01                    2313 	.db #0x01	; 1
      0066C8 01                    2314 	.db #0x01	; 1
      0066C9 7F                    2315 	.db #0x7f	; 127
      0066CA 01                    2316 	.db #0x01	; 1
      0066CB 01                    2317 	.db #0x01	; 1
      0066CC 3F                    2318 	.db #0x3f	; 63
      0066CD 40                    2319 	.db #0x40	; 64
      0066CE 40                    2320 	.db #0x40	; 64
      0066CF 40                    2321 	.db #0x40	; 64
      0066D0 3F                    2322 	.db #0x3f	; 63
      0066D1 1F                    2323 	.db #0x1f	; 31
      0066D2 20                    2324 	.db #0x20	; 32
      0066D3 40                    2325 	.db #0x40	; 64
      0066D4 20                    2326 	.db #0x20	; 32
      0066D5 1F                    2327 	.db #0x1f	; 31
      0066D6 3F                    2328 	.db #0x3f	; 63
      0066D7 40                    2329 	.db #0x40	; 64
      0066D8 38                    2330 	.db #0x38	; 56	'8'
      0066D9 40                    2331 	.db #0x40	; 64
      0066DA 3F                    2332 	.db #0x3f	; 63
      0066DB 63                    2333 	.db #0x63	; 99	'c'
      0066DC 14                    2334 	.db #0x14	; 20
      0066DD 08                    2335 	.db #0x08	; 8
      0066DE 14                    2336 	.db #0x14	; 20
      0066DF 63                    2337 	.db #0x63	; 99	'c'
      0066E0 07                    2338 	.db #0x07	; 7
      0066E1 08                    2339 	.db #0x08	; 8
      0066E2 70                    2340 	.db #0x70	; 112	'p'
      0066E3 08                    2341 	.db #0x08	; 8
      0066E4 07                    2342 	.db #0x07	; 7
      0066E5 61                    2343 	.db #0x61	; 97	'a'
      0066E6 51                    2344 	.db #0x51	; 81	'Q'
      0066E7 49                    2345 	.db #0x49	; 73	'I'
      0066E8 45                    2346 	.db #0x45	; 69	'E'
      0066E9 43                    2347 	.db #0x43	; 67	'C'
      0066EA 00                    2348 	.db #0x00	; 0
      0066EB 7F                    2349 	.db #0x7f	; 127
      0066EC 41                    2350 	.db #0x41	; 65	'A'
      0066ED 41                    2351 	.db #0x41	; 65	'A'
      0066EE 00                    2352 	.db #0x00	; 0
      0066EF 02                    2353 	.db #0x02	; 2
      0066F0 04                    2354 	.db #0x04	; 4
      0066F1 08                    2355 	.db #0x08	; 8
      0066F2 10                    2356 	.db #0x10	; 16
      0066F3 20                    2357 	.db #0x20	; 32
      0066F4 00                    2358 	.db #0x00	; 0
      0066F5 41                    2359 	.db #0x41	; 65	'A'
      0066F6 41                    2360 	.db #0x41	; 65	'A'
      0066F7 7F                    2361 	.db #0x7f	; 127
      0066F8 00                    2362 	.db #0x00	; 0
      0066F9 04                    2363 	.db #0x04	; 4
      0066FA 02                    2364 	.db #0x02	; 2
      0066FB 01                    2365 	.db #0x01	; 1
      0066FC 02                    2366 	.db #0x02	; 2
      0066FD 04                    2367 	.db #0x04	; 4
      0066FE 40                    2368 	.db #0x40	; 64
      0066FF 40                    2369 	.db #0x40	; 64
      006700 40                    2370 	.db #0x40	; 64
      006701 40                    2371 	.db #0x40	; 64
      006702 40                    2372 	.db #0x40	; 64
      006703 00                    2373 	.db #0x00	; 0
      006704 01                    2374 	.db #0x01	; 1
      006705 02                    2375 	.db #0x02	; 2
      006706 04                    2376 	.db #0x04	; 4
      006707 00                    2377 	.db #0x00	; 0
      006708 20                    2378 	.db #0x20	; 32
      006709 54                    2379 	.db #0x54	; 84	'T'
      00670A 54                    2380 	.db #0x54	; 84	'T'
      00670B 54                    2381 	.db #0x54	; 84	'T'
      00670C 78                    2382 	.db #0x78	; 120	'x'
      00670D 7F                    2383 	.db #0x7f	; 127
      00670E 48                    2384 	.db #0x48	; 72	'H'
      00670F 44                    2385 	.db #0x44	; 68	'D'
      006710 44                    2386 	.db #0x44	; 68	'D'
      006711 38                    2387 	.db #0x38	; 56	'8'
      006712 38                    2388 	.db #0x38	; 56	'8'
      006713 44                    2389 	.db #0x44	; 68	'D'
      006714 44                    2390 	.db #0x44	; 68	'D'
      006715 44                    2391 	.db #0x44	; 68	'D'
      006716 20                    2392 	.db #0x20	; 32
      006717 38                    2393 	.db #0x38	; 56	'8'
      006718 44                    2394 	.db #0x44	; 68	'D'
      006719 44                    2395 	.db #0x44	; 68	'D'
      00671A 48                    2396 	.db #0x48	; 72	'H'
      00671B 7F                    2397 	.db #0x7f	; 127
      00671C 38                    2398 	.db #0x38	; 56	'8'
      00671D 54                    2399 	.db #0x54	; 84	'T'
      00671E 54                    2400 	.db #0x54	; 84	'T'
      00671F 54                    2401 	.db #0x54	; 84	'T'
      006720 18                    2402 	.db #0x18	; 24
      006721 08                    2403 	.db #0x08	; 8
      006722 7E                    2404 	.db #0x7e	; 126
      006723 09                    2405 	.db #0x09	; 9
      006724 01                    2406 	.db #0x01	; 1
      006725 02                    2407 	.db #0x02	; 2
      006726 0C                    2408 	.db #0x0c	; 12
      006727 52                    2409 	.db #0x52	; 82	'R'
      006728 52                    2410 	.db #0x52	; 82	'R'
      006729 52                    2411 	.db #0x52	; 82	'R'
      00672A 3E                    2412 	.db #0x3e	; 62
      00672B 7F                    2413 	.db #0x7f	; 127
      00672C 08                    2414 	.db #0x08	; 8
      00672D 04                    2415 	.db #0x04	; 4
      00672E 04                    2416 	.db #0x04	; 4
      00672F 78                    2417 	.db #0x78	; 120	'x'
      006730 00                    2418 	.db #0x00	; 0
      006731 44                    2419 	.db #0x44	; 68	'D'
      006732 7D                    2420 	.db #0x7d	; 125
      006733 40                    2421 	.db #0x40	; 64
      006734 00                    2422 	.db #0x00	; 0
      006735 20                    2423 	.db #0x20	; 32
      006736 40                    2424 	.db #0x40	; 64
      006737 44                    2425 	.db #0x44	; 68	'D'
      006738 3D                    2426 	.db #0x3d	; 61
      006739 00                    2427 	.db #0x00	; 0
      00673A 7F                    2428 	.db #0x7f	; 127
      00673B 10                    2429 	.db #0x10	; 16
      00673C 28                    2430 	.db #0x28	; 40
      00673D 44                    2431 	.db #0x44	; 68	'D'
      00673E 00                    2432 	.db #0x00	; 0
      00673F 00                    2433 	.db #0x00	; 0
      006740 41                    2434 	.db #0x41	; 65	'A'
      006741 7F                    2435 	.db #0x7f	; 127
      006742 40                    2436 	.db #0x40	; 64
      006743 00                    2437 	.db #0x00	; 0
      006744 7C                    2438 	.db #0x7c	; 124
      006745 04                    2439 	.db #0x04	; 4
      006746 18                    2440 	.db #0x18	; 24
      006747 04                    2441 	.db #0x04	; 4
      006748 78                    2442 	.db #0x78	; 120	'x'
      006749 7C                    2443 	.db #0x7c	; 124
      00674A 08                    2444 	.db #0x08	; 8
      00674B 04                    2445 	.db #0x04	; 4
      00674C 04                    2446 	.db #0x04	; 4
      00674D 78                    2447 	.db #0x78	; 120	'x'
      00674E 38                    2448 	.db #0x38	; 56	'8'
      00674F 44                    2449 	.db #0x44	; 68	'D'
      006750 44                    2450 	.db #0x44	; 68	'D'
      006751 44                    2451 	.db #0x44	; 68	'D'
      006752 38                    2452 	.db #0x38	; 56	'8'
      006753 7C                    2453 	.db #0x7c	; 124
      006754 14                    2454 	.db #0x14	; 20
      006755 14                    2455 	.db #0x14	; 20
      006756 14                    2456 	.db #0x14	; 20
      006757 08                    2457 	.db #0x08	; 8
      006758 08                    2458 	.db #0x08	; 8
      006759 14                    2459 	.db #0x14	; 20
      00675A 14                    2460 	.db #0x14	; 20
      00675B 14                    2461 	.db #0x14	; 20
      00675C 7C                    2462 	.db #0x7c	; 124
      00675D 7C                    2463 	.db #0x7c	; 124
      00675E 08                    2464 	.db #0x08	; 8
      00675F 04                    2465 	.db #0x04	; 4
      006760 04                    2466 	.db #0x04	; 4
      006761 08                    2467 	.db #0x08	; 8
      006762 48                    2468 	.db #0x48	; 72	'H'
      006763 54                    2469 	.db #0x54	; 84	'T'
      006764 54                    2470 	.db #0x54	; 84	'T'
      006765 54                    2471 	.db #0x54	; 84	'T'
      006766 20                    2472 	.db #0x20	; 32
      006767 04                    2473 	.db #0x04	; 4
      006768 3F                    2474 	.db #0x3f	; 63
      006769 44                    2475 	.db #0x44	; 68	'D'
      00676A 40                    2476 	.db #0x40	; 64
      00676B 20                    2477 	.db #0x20	; 32
      00676C 3C                    2478 	.db #0x3c	; 60
      00676D 40                    2479 	.db #0x40	; 64
      00676E 40                    2480 	.db #0x40	; 64
      00676F 20                    2481 	.db #0x20	; 32
      006770 7C                    2482 	.db #0x7c	; 124
      006771 1C                    2483 	.db #0x1c	; 28
      006772 20                    2484 	.db #0x20	; 32
      006773 40                    2485 	.db #0x40	; 64
      006774 20                    2486 	.db #0x20	; 32
      006775 1C                    2487 	.db #0x1c	; 28
      006776 3C                    2488 	.db #0x3c	; 60
      006777 40                    2489 	.db #0x40	; 64
      006778 30                    2490 	.db #0x30	; 48	'0'
      006779 40                    2491 	.db #0x40	; 64
      00677A 3C                    2492 	.db #0x3c	; 60
      00677B 44                    2493 	.db #0x44	; 68	'D'
      00677C 28                    2494 	.db #0x28	; 40
      00677D 10                    2495 	.db #0x10	; 16
      00677E 28                    2496 	.db #0x28	; 40
      00677F 44                    2497 	.db #0x44	; 68	'D'
      006780 0C                    2498 	.db #0x0c	; 12
      006781 50                    2499 	.db #0x50	; 80	'P'
      006782 50                    2500 	.db #0x50	; 80	'P'
      006783 50                    2501 	.db #0x50	; 80	'P'
      006784 3C                    2502 	.db #0x3c	; 60
      006785 44                    2503 	.db #0x44	; 68	'D'
      006786 64                    2504 	.db #0x64	; 100	'd'
      006787 54                    2505 	.db #0x54	; 84	'T'
      006788 4C                    2506 	.db #0x4c	; 76	'L'
      006789 44                    2507 	.db #0x44	; 68	'D'
      00678A 00                    2508 	.db #0x00	; 0
      00678B 08                    2509 	.db #0x08	; 8
      00678C 36                    2510 	.db #0x36	; 54	'6'
      00678D 41                    2511 	.db #0x41	; 65	'A'
      00678E 00                    2512 	.db #0x00	; 0
      00678F 00                    2513 	.db #0x00	; 0
      006790 00                    2514 	.db #0x00	; 0
      006791 7F                    2515 	.db #0x7f	; 127
      006792 00                    2516 	.db #0x00	; 0
      006793 00                    2517 	.db #0x00	; 0
      006794 00                    2518 	.db #0x00	; 0
      006795 41                    2519 	.db #0x41	; 65	'A'
      006796 36                    2520 	.db #0x36	; 54	'6'
      006797 08                    2521 	.db #0x08	; 8
      006798 00                    2522 	.db #0x00	; 0
      006799 10                    2523 	.db #0x10	; 16
      00679A 08                    2524 	.db #0x08	; 8
      00679B 08                    2525 	.db #0x08	; 8
      00679C 10                    2526 	.db #0x10	; 16
      00679D 08                    2527 	.db #0x08	; 8
      00679E 00                    2528 	.db #0x00	; 0
      00679F 00                    2529 	.db #0x00	; 0
      0067A0 00                    2530 	.db #0x00	; 0
      0067A1 00                    2531 	.db #0x00	; 0
      0067A2 00                    2532 	.db #0x00	; 0
                                   2533 	.area XINIT   (CODE)
                                   2534 	.area CABS    (ABS,CODE)
