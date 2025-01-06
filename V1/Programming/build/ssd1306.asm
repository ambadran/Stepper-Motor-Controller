;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module ssd1306
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _INIT_SSD1306
	.globl _i2cStop
	.globl _i2cSendByte
	.globl _i2cStartCommand
	.globl _i2cInitialiseMaster
	.globl _memset
	.globl _S1SM0_FE
	.globl _T1IE
	.globl _T0IE
	.globl _T1RUN
	.globl _T0RUN
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _EA
	.globl _INT1IE
	.globl _INT0IE
	.globl _INT1TR
	.globl _INT0TR
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _USBADR
	.globl _USBCON
	.globl _USBDAT
	.globl _USBCLK
	.globl _S4BUF
	.globl _S4CON
	.globl _S3BUF
	.globl _S3CON
	.globl _S2BUF
	.globl _S2CON
	.globl _S1BUF
	.globl _S1CON
	.globl _SADEN
	.globl _SADDR
	.globl _AUXINTIF
	.globl _T3
	.globl _T3L
	.globl _T3H
	.globl _T4
	.globl _T4L
	.globl _T4H
	.globl _T4T3M
	.globl _WDT_CONTR
	.globl _AUXR
	.globl _T2
	.globl _T2H
	.globl _T2L
	.globl _T1
	.globl _T1H
	.globl _T1L
	.globl _T0
	.globl _T0H
	.globl _T0L
	.globl _TMOD
	.globl _TCON
	.globl _IRTRIM
	.globl _LIRTRIM
	.globl _IRCBAND
	.globl _SPDAT
	.globl _SPCTL
	.globl _SPSTAT
	.globl _WKTC
	.globl _WKTCH
	.globl _WKTCL
	.globl _BUS_SPEED
	.globl _P_SW2
	.globl _P_SW1
	.globl _RSTCFG
	.globl _PCON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _SP
	.globl _IP3H
	.globl _IP3L
	.globl _IP2H
	.globl _IP2L
	.globl _IE2
	.globl _IP1H
	.globl _IP1L
	.globl _IE1
	.globl _INT_CLKO
	.globl _IAP_TPS
	.globl _IAP_CONTR
	.globl _IAP_TRIG
	.globl _IAP_CMD
	.globl _IAP_ADDR
	.globl _IAP_ADDRL
	.globl _IAP_ADDRH
	.globl _IAP_DATA
	.globl _P5M0
	.globl _P5M1
	.globl _P5
	.globl _P3M0
	.globl _P3M1
	.globl _P3
	.globl _P2M0
	.globl _P2M1
	.globl _P2
	.globl _P1M0
	.globl _P1M1
	.globl _P1
	.globl _TA
	.globl _DPH1
	.globl _DPL1
	.globl _DPS
	.globl _DP
	.globl _DPH
	.globl _DPL
	.globl _CMPCR2
	.globl _CMPCR1
	.globl _DMA_ADC_AMT
	.globl _ADCCFG
	.globl _ADC_RES
	.globl _ADC_RESL
	.globl _ADC_RESH
	.globl _ADC_CONTR
	.globl _SSD1306_DrawLine_PARM_4
	.globl _SSD1306_DrawLine_PARM_3
	.globl _SSD1306_DrawLine_PARM_2
	.globl _SSD1306_DrawPixel_PARM_2
	.globl _SSD1306_SetPosition_PARM_2
	.globl __counter
	.globl _DMA_UR4R_TXAL
	.globl _DMA_UR4R_TXAH
	.globl _DMA_UR4R_DONE
	.globl _DMA_UR4R_AMT
	.globl _DMA_UR4R_STA
	.globl _DMA_UR4R_CR
	.globl _DMA_UR4R_CFG
	.globl _DMA_UR4T_TXAL
	.globl _DMA_UR4T_TXAH
	.globl _DMA_UR4T_DONE
	.globl _DMA_UR4T_AMT
	.globl _DMA_UR4T_STA
	.globl _DMA_UR4T_CR
	.globl _DMA_UR4T_CFG
	.globl _DMA_UR3R_TXAL
	.globl _DMA_UR3R_TXAH
	.globl _DMA_UR3R_DONE
	.globl _DMA_UR3R_AMT
	.globl _DMA_UR3R_STA
	.globl _DMA_UR3R_CR
	.globl _DMA_UR3R_CFG
	.globl _DMA_UR3T_TXAL
	.globl _DMA_UR3T_TXAH
	.globl _DMA_UR3T_DONE
	.globl _DMA_UR3T_AMT
	.globl _DMA_UR3T_STA
	.globl _DMA_UR3T_CR
	.globl _DMA_UR3T_CFG
	.globl _DMA_UR2R_TXAL
	.globl _DMA_UR2R_TXAH
	.globl _DMA_UR2R_DONE
	.globl _DMA_UR2R_AMT
	.globl _DMA_UR2R_STA
	.globl _DMA_UR2R_CR
	.globl _DMA_UR2R_CFG
	.globl _DMA_UR2T_TXAL
	.globl _DMA_UR2T_TXAH
	.globl _DMA_UR2T_DONE
	.globl _DMA_UR2T_AMT
	.globl _DMA_UR2T_STA
	.globl _DMA_UR2T_CR
	.globl _DMA_UR2T_CFG
	.globl _DMA_UR1R_TXAL
	.globl _DMA_UR1R_TXAH
	.globl _DMA_UR1R_DONE
	.globl _DMA_UR1R_AMT
	.globl _DMA_UR1R_STA
	.globl _DMA_UR1R_CR
	.globl _DMA_UR1R_CFG
	.globl _DMA_UR1T_TXAL
	.globl _DMA_UR1T_TXAH
	.globl _DMA_UR1T_DONE
	.globl _DMA_URTX_AMT
	.globl _DMA_UR1T_STA
	.globl _DMA_UR1T_CR
	.globl _DMA_UR1T_CFG
	.globl _TM4PS
	.globl _TM3PS
	.globl _TM2PS
	.globl _IRC48MCR
	.globl _IRCDB
	.globl _MCLKOCR
	.globl _CKSEL
	.globl _IRC32KCR
	.globl _XOSCCR
	.globl _HIRCCR
	.globl _CLKDIV
	.globl _DMA_SPI_CFG2
	.globl _DMA_SPI_RXAL
	.globl _DMA_SPI_RXAH
	.globl _DMA_SPI_TXAL
	.globl _DMA_SPI_TXAH
	.globl _DMA_SPI_DONE
	.globl _DMA_SPI_AMT
	.globl _DMA_SPI_STA
	.globl _DMA_SPI_CR
	.globl _DMA_SPI_CFG
	.globl _SSEC
	.globl _SEC
	.globl _MIN
	.globl _HOUR
	.globl _DAY
	.globl _MONTH
	.globl _YEAR
	.globl _INISSEC
	.globl _INISEC
	.globl _INIMIN
	.globl _INIHOUR
	.globl _INIDAY
	.globl _INIMONTH
	.globl _INIYEAR
	.globl _ALASSEC
	.globl _ALASEC
	.globl _ALAMIN
	.globl _ALAHOUR
	.globl _RTCIF
	.globl _RTCIEN
	.globl _RTCCFG
	.globl _RTCCR
	.globl _PWMB_OISR
	.globl _PWMB_DTR
	.globl _PWMB_BKR
	.globl _PWMB_CCR4L
	.globl _PWMB_CCR4H
	.globl _PWMB_CCR3L
	.globl _PWMB_CCR3H
	.globl _PWMB_CCR2L
	.globl _PWMB_CCR2H
	.globl _PWMB_CCR1L
	.globl _PWMB_CCR1H
	.globl _PWMB_RCR
	.globl _PWMB_ARRL
	.globl _PWMB_ARRH
	.globl _PWMB_PSCRL
	.globl _PWMB_PSCRH
	.globl _PWMB_CNTRL
	.globl _PWMB_CNTRH
	.globl _PWMB_CCER2
	.globl _PWMB_CCER1
	.globl _PWMB_CCMR4
	.globl _PWMB_CCMR3
	.globl _PWMB_CCMR2
	.globl _PWMB_CCMR1
	.globl _PWMB_EGR
	.globl _PWMB_SR2
	.globl _PWMB_SR1
	.globl _PWMB_IER
	.globl _PWMB_ETR
	.globl _PWMB_SMCR
	.globl _PWMB_CR2
	.globl _PWMB_CR1
	.globl _PWMA_OISR
	.globl _PWMA_DTR
	.globl _PWMA_BKR
	.globl _PWMA_CCR4L
	.globl _PWMA_CCR4H
	.globl _PWMA_CCR3L
	.globl _PWMA_CCR3H
	.globl _PWMA_CCR2L
	.globl _PWMA_CCR2H
	.globl _PWMA_CCR1L
	.globl _PWMA_CCR1H
	.globl _PWMA_RCR
	.globl _PWMA_ARRL
	.globl _PWMA_ARRH
	.globl _PWMA_PSCRL
	.globl _PWMA_PSCRH
	.globl _PWMA_CNTRL
	.globl _PWMA_CNTRH
	.globl _PWMA_CCER2
	.globl _PWMA_CCER1
	.globl _PWMA_CCMR4
	.globl _PWMA_CCMR3
	.globl _PWMA_CCMR2
	.globl _PWMA_CCMR1
	.globl _PWMA_EGR
	.globl _PWMA_SR2
	.globl _PWMA_SR1
	.globl _PWMA_IER
	.globl _PWMA_ETR
	.globl _PWMA_SMCR
	.globl _PWMA_CR2
	.globl _PWMA_CR1
	.globl _PWMB_IOAUX
	.globl _PWMB_PS
	.globl _PWMB_ENO
	.globl _PWMB_ETRPS
	.globl _PWMA_IOAUX
	.globl _PWMA_PS
	.globl _PWMA_ENO
	.globl _PWMA_ETRPS
	.globl _RSTFLAG
	.globl _SPFUNC
	.globl _OPCON
	.globl _ARCON
	.globl _MD4
	.globl _MD5
	.globl _MD0
	.globl _MD1
	.globl _MD2
	.globl _MD3
	.globl _DMA_LCM_RXAL
	.globl _DMA_LCM_RXAH
	.globl _DMA_LCM_TXAL
	.globl _DMA_LCM_TXAH
	.globl _DMA_LCM_DONE
	.globl _DMA_LCM_AMT
	.globl _DMA_LCM_STA
	.globl _DMA_LCM_CR
	.globl _DMA_LCM_CFG
	.globl _LCMIDDAT
	.globl _LCMIDDATH
	.globl _LCMIDDATL
	.globl _LCMSTA
	.globl _LCMCR
	.globl _LCMCFG2
	.globl _LCMCFG
	.globl _I2CMSAUX
	.globl _I2CRXD
	.globl _I2CTXD
	.globl _I2CSLADR
	.globl _I2CSLST
	.globl _I2CSLCR
	.globl _I2CMSST
	.globl _I2CMSCR
	.globl _I2CCFG
	.globl _PINIPH
	.globl _PINIPL
	.globl _P5IE
	.globl _P5DR
	.globl _P5SR
	.globl _P5NCS
	.globl _P5PU
	.globl _P5WKUE
	.globl _P5IM1
	.globl _P5IM0
	.globl _P5INTF
	.globl _P5INTE
	.globl _P3IE
	.globl _P3DR
	.globl _P3SR
	.globl _P3NCS
	.globl _P3PU
	.globl _P3WKUE
	.globl _P3IM1
	.globl _P3IM0
	.globl _P3INTF
	.globl _P3INTE
	.globl _P2IE
	.globl _P2DR
	.globl _P2SR
	.globl _P2NCS
	.globl _P2PU
	.globl _P2WKUE
	.globl _P2IM1
	.globl _P2IM0
	.globl _P2INTF
	.globl _P2INTE
	.globl _P1IE
	.globl _P1DR
	.globl _P1SR
	.globl _P1NCS
	.globl _P1PU
	.globl _P1WKUE
	.globl _P1IM1
	.globl _P1IM0
	.globl _P1INTF
	.globl _P1INTE
	.globl _DMA_M2M_RXAL
	.globl _DMA_M2M_RXAH
	.globl _DMA_M2M_TXAL
	.globl _DMA_M2M_TXAH
	.globl _DMA_M2M_DONE
	.globl _DMA_M2M_AMT
	.globl _DMA_M2M_STA
	.globl _DMA_M2M_CR
	.globl _DMA_M2M_CFG
	.globl _CMPEXCFG
	.globl _DMA_ADC_CHSW1
	.globl _DMA_ADC_CHSW0
	.globl _DMA_ADC_CFG2
	.globl _DMA_ADC_RXAL
	.globl _DMA_ADC_RXAH
	.globl _DMA_ADC_STA
	.globl _DMA_ADC_CR
	.globl _DMA_ADC_CFG
	.globl _ADCEXCFG
	.globl _ADCTIM
	.globl _SSD1306_Init
	.globl _SSD1306_NormalScreen
	.globl _SSD1306_InverseScreen
	.globl _SSD1306_UpdateScreen
	.globl _SSD1306_ClearScreen
	.globl _SSD1306_SetPosition
	.globl _SSD1306_UpdatePosition
	.globl _SSD1306_DrawChar
	.globl _SSD1306_DrawString
	.globl _SSD1306_DrawPixel
	.globl _SSD1306_DrawLine
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ADC_CONTR	=	0x00bc
_ADC_RESH	=	0x00bd
_ADC_RESL	=	0x00be
_ADC_RES	=	0xbdbe
_ADCCFG	=	0x00de
_DMA_ADC_AMT	=	0x00fa
_CMPCR1	=	0x00e6
_CMPCR2	=	0x00e7
_DPL	=	0x0082
_DPH	=	0x0083
_DP	=	0x8382
_DPS	=	0x00e3
_DPL1	=	0x00e4
_DPH1	=	0x00e5
_TA	=	0x00ae
_P1	=	0x0090
_P1M1	=	0x0091
_P1M0	=	0x0092
_P2	=	0x00a0
_P2M1	=	0x0095
_P2M0	=	0x0096
_P3	=	0x00b0
_P3M1	=	0x00b1
_P3M0	=	0x00b2
_P5	=	0x00c8
_P5M1	=	0x00c9
_P5M0	=	0x00ca
_IAP_DATA	=	0x00c2
_IAP_ADDRH	=	0x00c3
_IAP_ADDRL	=	0x00c4
_IAP_ADDR	=	0xc3c4
_IAP_CMD	=	0x00c5
_IAP_TRIG	=	0x00c6
_IAP_CONTR	=	0x00c7
_IAP_TPS	=	0x00f5
_INT_CLKO	=	0x008f
_IE1	=	0x00a8
_IP1L	=	0x00b8
_IP1H	=	0x00b7
_IE2	=	0x00af
_IP2L	=	0x00b5
_IP2H	=	0x00b6
_IP3L	=	0x00df
_IP3H	=	0x00ee
_SP	=	0x0081
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_PCON	=	0x0087
_RSTCFG	=	0x00ff
_P_SW1	=	0x00a2
_P_SW2	=	0x00ba
_BUS_SPEED	=	0x00a1
_WKTCL	=	0x00aa
_WKTCH	=	0x00ab
_WKTC	=	0xabaa
_SPSTAT	=	0x00cd
_SPCTL	=	0x00ce
_SPDAT	=	0x00cf
_IRCBAND	=	0x009d
_LIRTRIM	=	0x009e
_IRTRIM	=	0x009f
_TCON	=	0x0088
_TMOD	=	0x0089
_T0L	=	0x008a
_T0H	=	0x008c
_T0	=	0x8c8a
_T1L	=	0x008b
_T1H	=	0x008d
_T1	=	0x8d8b
_T2L	=	0x00d7
_T2H	=	0x00d6
_T2	=	0xd6d7
_AUXR	=	0x008e
_WDT_CONTR	=	0x00c1
_T4T3M	=	0x00d1
_T4H	=	0x00d2
_T4L	=	0x00d3
_T4	=	0xd2d3
_T3H	=	0x00d4
_T3L	=	0x00d5
_T3	=	0xd4d5
_AUXINTIF	=	0x00ef
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_S1CON	=	0x0098
_S1BUF	=	0x0099
_S2CON	=	0x009a
_S2BUF	=	0x009b
_S3CON	=	0x00ac
_S3BUF	=	0x00ad
_S4CON	=	0x0084
_S4BUF	=	0x0085
_USBCLK	=	0x00dc
_USBDAT	=	0x00ec
_USBCON	=	0x00f4
_USBADR	=	0x00fc
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_P5_0	=	0x00c8
_P5_1	=	0x00c9
_P5_2	=	0x00ca
_P5_3	=	0x00cb
_P5_4	=	0x00cc
_P5_5	=	0x00cd
_INT0TR	=	0x0088
_INT1TR	=	0x008a
_INT0IE	=	0x00a8
_INT1IE	=	0x00aa
_EA	=	0x00af
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_T0RUN	=	0x008c
_T1RUN	=	0x008e
_T0IE	=	0x00a9
_T1IE	=	0x00ab
_S1SM0_FE	=	0x009f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_SSD1306_DrawLine_sloc0_1_0:
	.ds 2
_SSD1306_DrawLine_sloc1_1_0:
	.ds 1
_SSD1306_DrawLine_sloc2_1_0:
	.ds 2
_SSD1306_DrawLine_sloc3_1_0:
	.ds 2
_SSD1306_DrawLine_sloc4_1_0:
	.ds 1
_SSD1306_DrawLine_sloc5_1_0:
	.ds 2
_SSD1306_DrawLine_sloc6_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_ADCTIM	=	0xfea8
_ADCEXCFG	=	0xfead
_DMA_ADC_CFG	=	0xfa10
_DMA_ADC_CR	=	0xfa11
_DMA_ADC_STA	=	0xfa12
_DMA_ADC_RXAH	=	0xfa17
_DMA_ADC_RXAL	=	0xfa18
_DMA_ADC_CFG2	=	0xfa19
_DMA_ADC_CHSW0	=	0xfa1a
_DMA_ADC_CHSW1	=	0xfa1b
_CMPEXCFG	=	0xfeae
_DMA_M2M_CFG	=	0xfa00
_DMA_M2M_CR	=	0xfa01
_DMA_M2M_STA	=	0xfa02
_DMA_M2M_AMT	=	0xfa03
_DMA_M2M_DONE	=	0xfa04
_DMA_M2M_TXAH	=	0xfa05
_DMA_M2M_TXAL	=	0xfa06
_DMA_M2M_RXAH	=	0xfa07
_DMA_M2M_RXAL	=	0xfa08
_P1INTE	=	0xfd01
_P1INTF	=	0xfd11
_P1IM0	=	0xfd21
_P1IM1	=	0xfd31
_P1WKUE	=	0xfd41
_P1PU	=	0xfe11
_P1NCS	=	0xfe19
_P1SR	=	0xfe21
_P1DR	=	0xfe29
_P1IE	=	0xfe31
_P2INTE	=	0xfd02
_P2INTF	=	0xfd12
_P2IM0	=	0xfd22
_P2IM1	=	0xfd32
_P2WKUE	=	0xfd42
_P2PU	=	0xfe12
_P2NCS	=	0xfe1a
_P2SR	=	0xfe22
_P2DR	=	0xfe2a
_P2IE	=	0xfe32
_P3INTE	=	0xfd03
_P3INTF	=	0xfd13
_P3IM0	=	0xfd23
_P3IM1	=	0xfd33
_P3WKUE	=	0xfd43
_P3PU	=	0xfe13
_P3NCS	=	0xfe1b
_P3SR	=	0xfe23
_P3DR	=	0xfe2b
_P3IE	=	0xfe33
_P5INTE	=	0xfd05
_P5INTF	=	0xfd15
_P5IM0	=	0xfd25
_P5IM1	=	0xfd35
_P5WKUE	=	0xfd45
_P5PU	=	0xfe15
_P5NCS	=	0xfe1d
_P5SR	=	0xfe25
_P5DR	=	0xfe2d
_P5IE	=	0xfe35
_PINIPL	=	0xfd60
_PINIPH	=	0xfd61
_I2CCFG	=	0xfe80
_I2CMSCR	=	0xfe81
_I2CMSST	=	0xfe82
_I2CSLCR	=	0xfe83
_I2CSLST	=	0xfe84
_I2CSLADR	=	0xfe85
_I2CTXD	=	0xfe86
_I2CRXD	=	0xfe87
_I2CMSAUX	=	0xfe88
_LCMCFG	=	0xfe50
_LCMCFG2	=	0xfe51
_LCMCR	=	0xfe52
_LCMSTA	=	0xfe53
_LCMIDDATL	=	0xfe54
_LCMIDDATH	=	0xfe55
_LCMIDDAT	=	0xfe54
_DMA_LCM_CFG	=	0xfa70
_DMA_LCM_CR	=	0xfa71
_DMA_LCM_STA	=	0xfa72
_DMA_LCM_AMT	=	0xfa73
_DMA_LCM_DONE	=	0xfa74
_DMA_LCM_TXAH	=	0xfa75
_DMA_LCM_TXAL	=	0xfa76
_DMA_LCM_RXAH	=	0xfa77
_DMA_LCM_RXAL	=	0xfa78
_MD3	=	0xfcf0
_MD2	=	0xfcf1
_MD1	=	0xfcf2
_MD0	=	0xfcf3
_MD5	=	0xfcf4
_MD4	=	0xfcf5
_ARCON	=	0xfcf6
_OPCON	=	0xfcf7
_SPFUNC	=	0xfe08
_RSTFLAG	=	0xfe09
_PWMA_ETRPS	=	0xfeb0
_PWMA_ENO	=	0xfeb1
_PWMA_PS	=	0xfeb2
_PWMA_IOAUX	=	0xfeb3
_PWMB_ETRPS	=	0xfeb4
_PWMB_ENO	=	0xfeb5
_PWMB_PS	=	0xfeb6
_PWMB_IOAUX	=	0xfeb7
_PWMA_CR1	=	0xfec0
_PWMA_CR2	=	0xfec1
_PWMA_SMCR	=	0xfec2
_PWMA_ETR	=	0xfec3
_PWMA_IER	=	0xfec4
_PWMA_SR1	=	0xfec5
_PWMA_SR2	=	0xfec6
_PWMA_EGR	=	0xfec7
_PWMA_CCMR1	=	0xfec8
_PWMA_CCMR2	=	0xfec9
_PWMA_CCMR3	=	0xfeca
_PWMA_CCMR4	=	0xfecb
_PWMA_CCER1	=	0xfecc
_PWMA_CCER2	=	0xfecd
_PWMA_CNTRH	=	0xfece
_PWMA_CNTRL	=	0xfecf
_PWMA_PSCRH	=	0xfed0
_PWMA_PSCRL	=	0xfed1
_PWMA_ARRH	=	0xfed2
_PWMA_ARRL	=	0xfed3
_PWMA_RCR	=	0xfed4
_PWMA_CCR1H	=	0xfed5
_PWMA_CCR1L	=	0xfed6
_PWMA_CCR2H	=	0xfed7
_PWMA_CCR2L	=	0xfed8
_PWMA_CCR3H	=	0xfed9
_PWMA_CCR3L	=	0xfeda
_PWMA_CCR4H	=	0xfedb
_PWMA_CCR4L	=	0xfedc
_PWMA_BKR	=	0xfedd
_PWMA_DTR	=	0xfede
_PWMA_OISR	=	0xfedf
_PWMB_CR1	=	0xfee0
_PWMB_CR2	=	0xfee1
_PWMB_SMCR	=	0xfee2
_PWMB_ETR	=	0xfee3
_PWMB_IER	=	0xfee4
_PWMB_SR1	=	0xfee5
_PWMB_SR2	=	0xfee6
_PWMB_EGR	=	0xfee7
_PWMB_CCMR1	=	0xfee8
_PWMB_CCMR2	=	0xfee9
_PWMB_CCMR3	=	0xfeea
_PWMB_CCMR4	=	0xfeeb
_PWMB_CCER1	=	0xfeec
_PWMB_CCER2	=	0xfeed
_PWMB_CNTRH	=	0xfeee
_PWMB_CNTRL	=	0xfeef
_PWMB_PSCRH	=	0xfef0
_PWMB_PSCRL	=	0xfef1
_PWMB_ARRH	=	0xfef2
_PWMB_ARRL	=	0xfef3
_PWMB_RCR	=	0xfef4
_PWMB_CCR1H	=	0xfef5
_PWMB_CCR1L	=	0xfef6
_PWMB_CCR2H	=	0xfef7
_PWMB_CCR2L	=	0xfef8
_PWMB_CCR3H	=	0xfef9
_PWMB_CCR3L	=	0xfefa
_PWMB_CCR4H	=	0xfefb
_PWMB_CCR4L	=	0xfefc
_PWMB_BKR	=	0xfefd
_PWMB_DTR	=	0xfefe
_PWMB_OISR	=	0xfeff
_RTCCR	=	0xfe60
_RTCCFG	=	0xfe61
_RTCIEN	=	0xfe62
_RTCIF	=	0xfe63
_ALAHOUR	=	0xfe64
_ALAMIN	=	0xfe65
_ALASEC	=	0xfe66
_ALASSEC	=	0xfe67
_INIYEAR	=	0xfe68
_INIMONTH	=	0xfe69
_INIDAY	=	0xfe6a
_INIHOUR	=	0xfe6b
_INIMIN	=	0xfe6c
_INISEC	=	0xfe6d
_INISSEC	=	0xfe6e
_YEAR	=	0xfe70
_MONTH	=	0xfe71
_DAY	=	0xfe72
_HOUR	=	0xfe73
_MIN	=	0xfe74
_SEC	=	0xfe75
_SSEC	=	0xfe76
_DMA_SPI_CFG	=	0xfa20
_DMA_SPI_CR	=	0xfa21
_DMA_SPI_STA	=	0xfa22
_DMA_SPI_AMT	=	0xfa23
_DMA_SPI_DONE	=	0xfa24
_DMA_SPI_TXAH	=	0xfa25
_DMA_SPI_TXAL	=	0xfa26
_DMA_SPI_RXAH	=	0xfa27
_DMA_SPI_RXAL	=	0xfa28
_DMA_SPI_CFG2	=	0xfa29
_CLKDIV	=	0xfe01
_HIRCCR	=	0xfe02
_XOSCCR	=	0xfe03
_IRC32KCR	=	0xfe04
_CKSEL	=	0xfe00
_MCLKOCR	=	0xfe05
_IRCDB	=	0xfe06
_IRC48MCR	=	0xfe07
_TM2PS	=	0xfea2
_TM3PS	=	0xfea3
_TM4PS	=	0xfea4
_DMA_UR1T_CFG	=	0xfa30
_DMA_UR1T_CR	=	0xfa31
_DMA_UR1T_STA	=	0xfa32
_DMA_URTX_AMT	=	0xfa33
_DMA_UR1T_DONE	=	0xfa34
_DMA_UR1T_TXAH	=	0xfa35
_DMA_UR1T_TXAL	=	0xfa36
_DMA_UR1R_CFG	=	0xfa38
_DMA_UR1R_CR	=	0xfa39
_DMA_UR1R_STA	=	0xfa3a
_DMA_UR1R_AMT	=	0xfa3b
_DMA_UR1R_DONE	=	0xfa3c
_DMA_UR1R_TXAH	=	0xfa3d
_DMA_UR1R_TXAL	=	0xfa3e
_DMA_UR2T_CFG	=	0xfa30
_DMA_UR2T_CR	=	0xfa31
_DMA_UR2T_STA	=	0xfa32
_DMA_UR2T_AMT	=	0xfa33
_DMA_UR2T_DONE	=	0xfa34
_DMA_UR2T_TXAH	=	0xfa35
_DMA_UR2T_TXAL	=	0xfa36
_DMA_UR2R_CFG	=	0xfa38
_DMA_UR2R_CR	=	0xfa39
_DMA_UR2R_STA	=	0xfa3a
_DMA_UR2R_AMT	=	0xfa3b
_DMA_UR2R_DONE	=	0xfa3c
_DMA_UR2R_TXAH	=	0xfa3d
_DMA_UR2R_TXAL	=	0xfa3e
_DMA_UR3T_CFG	=	0xfa30
_DMA_UR3T_CR	=	0xfa31
_DMA_UR3T_STA	=	0xfa32
_DMA_UR3T_AMT	=	0xfa33
_DMA_UR3T_DONE	=	0xfa34
_DMA_UR3T_TXAH	=	0xfa35
_DMA_UR3T_TXAL	=	0xfa36
_DMA_UR3R_CFG	=	0xfa38
_DMA_UR3R_CR	=	0xfa39
_DMA_UR3R_STA	=	0xfa3a
_DMA_UR3R_AMT	=	0xfa3b
_DMA_UR3R_DONE	=	0xfa3c
_DMA_UR3R_TXAH	=	0xfa3d
_DMA_UR3R_TXAL	=	0xfa3e
_DMA_UR4T_CFG	=	0xfa30
_DMA_UR4T_CR	=	0xfa31
_DMA_UR4T_STA	=	0xfa32
_DMA_UR4T_AMT	=	0xfa33
_DMA_UR4T_DONE	=	0xfa34
_DMA_UR4T_TXAH	=	0xfa35
_DMA_UR4T_TXAL	=	0xfa36
_DMA_UR4R_CFG	=	0xfa38
_DMA_UR4R_CR	=	0xfa39
_DMA_UR4R_STA	=	0xfa3a
_DMA_UR4R_AMT	=	0xfa3b
_DMA_UR4R_DONE	=	0xfa3c
_DMA_UR4R_TXAH	=	0xfa3d
_DMA_UR4R_TXAL	=	0xfa3e
_uartGetCharacter_result_65536_69:
	.ds 1
__counter::
	.ds 2
_cacheMemLcd:
	.ds 1024
_SSD1306_Init_list_65537_150:
	.ds 3
_SSD1306_SetPosition_PARM_2:
	.ds 1
_SSD1306_SetPosition_x_65536_162:
	.ds 1
_SSD1306_DrawChar_character_65536_169:
	.ds 1
_SSD1306_DrawString_str_65536_173:
	.ds 3
_SSD1306_DrawPixel_PARM_2:
	.ds 1
_SSD1306_DrawPixel_x_65536_176:
	.ds 1
_SSD1306_DrawLine_PARM_2:
	.ds 1
_SSD1306_DrawLine_PARM_3:
	.ds 1
_SSD1306_DrawLine_PARM_4:
	.ds 1
_SSD1306_DrawLine_x1_65536_179:
	.ds 1
_SSD1306_DrawLine_D_65536_180:
	.ds 2
_SSD1306_DrawLine_delta_x_65536_180:
	.ds 2
_SSD1306_DrawLine_delta_y_65536_180:
	.ds 2
_SSD1306_DrawLine_trace_x_65536_180:
	.ds 2
_SSD1306_DrawLine_trace_y_65536_180:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_Init'
;------------------------------------------------------------
;list                      Allocated with name '_SSD1306_Init_list_65537_150'
;arguments                 Allocated with name '_SSD1306_Init_arguments_65537_150'
;commands                  Allocated with name '_SSD1306_Init_commands_65537_150'
;------------------------------------------------------------
;	ssd1306.c:37: void SSD1306_Init(void) { 
;	-----------------------------------------
;	 function SSD1306_Init
;	-----------------------------------------
_SSD1306_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	ssd1306.c:40: i2cInitialiseMaster(0, I2C_CLOCK_400kHz);
	mov	dptr,#_i2cInitialiseMaster_PARM_2
	mov	a,#0x80
	movx	@dptr,a
	mov	a,#0x1a
	inc	dptr
	movx	@dptr,a
	mov	a,#0x06
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_i2cInitialiseMaster
;	ssd1306.c:49: const uint8_t * list = INIT_SSD1306;
;	ssd1306.c:51: uint8_t commands = *list++;
	mov	dptr,#_INIT_SSD1306
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_SSD1306_Init_list_65537_150
	mov	a,#0x01
	add	a,#_INIT_SSD1306
	movx	@dptr,a
	clr	a
	addc	a,#(_INIT_SSD1306 >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:54: i2cStartCommand(SSD1306_ADDRESS, I2C_WRITE);
	mov	dptr,#_i2cStartCommand_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x3c
	push	ar7
	lcall	_i2cStartCommand
	pop	ar7
;	ssd1306.c:55: while (commands--) {
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jnz	00126$
	ljmp	_i2cStop
00126$:
;	ssd1306.c:56: i2cSendByte(SSD1306_COMMAND);
	mov	dpl,#0x80
	push	ar7
	lcall	_i2cSendByte
;	ssd1306.c:57: i2cSendByte(*list++);
	mov	dptr,#_SSD1306_Init_list_65537_150
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_SSD1306_Init_list_65537_150
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r3
	lcall	_i2cSendByte
	pop	ar7
;	ssd1306.c:58: arguments = *list++;
	mov	dptr,#_SSD1306_Init_list_65537_150
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	dptr,#_SSD1306_Init_list_65537_150
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:59: while (arguments--) {
	mov	dptr,#_SSD1306_Init_list_65537_150
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
00101$:
	mov	ar2,r3
	dec	r3
	mov	a,r2
	jz	00104$
;	ssd1306.c:60: i2cSendByte(SSD1306_COMMAND);
	mov	dpl,#0x80
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2cSendByte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	ssd1306.c:61: i2cSendByte(*list++); // argument
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r4,dpl
	mov	r5,dph
	mov	dptr,#_SSD1306_Init_list_65537_150
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r2
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_i2cSendByte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	ssd1306.c:65: i2cStop();
;	ssd1306.c:67: }
	sjmp	00101$
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_NormalScreen'
;------------------------------------------------------------
;	ssd1306.c:69: void SSD1306_NormalScreen(void) {
;	-----------------------------------------
;	 function SSD1306_NormalScreen
;	-----------------------------------------
_SSD1306_NormalScreen:
;	ssd1306.c:70: i2cStartCommand(SSD1306_ADDRESS, I2C_WRITE);
	mov	dptr,#_i2cStartCommand_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x3c
	lcall	_i2cStartCommand
;	ssd1306.c:71: i2cSendByte(SSD1306_COMMAND);
	mov	dpl,#0x80
	lcall	_i2cSendByte
;	ssd1306.c:72: i2cSendByte(SSD1306_DIS_NORMAL);
	mov	dpl,#0xa6
	lcall	_i2cSendByte
;	ssd1306.c:73: i2cStop();
;	ssd1306.c:74: }
	ljmp	_i2cStop
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_InverseScreen'
;------------------------------------------------------------
;	ssd1306.c:76: void SSD1306_InverseScreen(void) {
;	-----------------------------------------
;	 function SSD1306_InverseScreen
;	-----------------------------------------
_SSD1306_InverseScreen:
;	ssd1306.c:78: i2cStartCommand(SSD1306_ADDRESS, I2C_WRITE);
	mov	dptr,#_i2cStartCommand_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x3c
	lcall	_i2cStartCommand
;	ssd1306.c:79: i2cSendByte(SSD1306_COMMAND);
	mov	dpl,#0x80
	lcall	_i2cSendByte
;	ssd1306.c:80: i2cSendByte(SSD1306_DIS_INVERSE);
	mov	dpl,#0xa7
	lcall	_i2cSendByte
;	ssd1306.c:81: i2cStop();
;	ssd1306.c:83: }
	ljmp	_i2cStop
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_UpdateScreen'
;------------------------------------------------------------
;i                         Allocated with name '_SSD1306_UpdateScreen_i_65536_158'
;------------------------------------------------------------
;	ssd1306.c:85: uint8_t SSD1306_UpdateScreen(void) {
;	-----------------------------------------
;	 function SSD1306_UpdateScreen
;	-----------------------------------------
_SSD1306_UpdateScreen:
;	ssd1306.c:88: i2cStartCommand(SSD1306_ADDRESS, I2C_WRITE);
	mov	dptr,#_i2cStartCommand_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x3c
	lcall	_i2cStartCommand
;	ssd1306.c:89: i2cSendByte(SSD1306_DATA_STREAM);
	mov	dpl,#0x40
	lcall	_i2cSendByte
;	ssd1306.c:90: while (i < CACHE_SIZE_MEM) {
	mov	r6,#0x00
	mov	r7,#0x00
00101$:
	mov	ar4,r6
	mov	ar5,r7
	mov	a,#0x100 - 0x04
	add	a,r5
	jc	00103$
;	ssd1306.c:91: i2cSendByte(cacheMemLcd[i++]);  // send data
	mov	a,r6
	add	a,#_cacheMemLcd
	mov	dpl,a
	mov	a,r7
	addc	a,#(_cacheMemLcd >> 8)
	mov	dph,a
	inc	r6
	cjne	r6,#0x00,00116$
	inc	r7
00116$:
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_i2cSendByte
	pop	ar6
	pop	ar7
	sjmp	00101$
00103$:
;	ssd1306.c:93: i2cStop();
	lcall	_i2cStop
;	ssd1306.c:95: return SSD1306_SUCCESS;
	mov	dpl,#0x00
;	ssd1306.c:96: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_ClearScreen'
;------------------------------------------------------------
;	ssd1306.c:98: void SSD1306_ClearScreen(void) {
;	-----------------------------------------
;	 function SSD1306_ClearScreen
;	-----------------------------------------
_SSD1306_ClearScreen:
;	ssd1306.c:99: memset (cacheMemLcd, 0x00, CACHE_SIZE_MEM);                     // null cache memory lcd
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	movx	@dptr,a
	mov	a,#0x04
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_cacheMemLcd
	mov	b,#0x00
;	ssd1306.c:100: }
	ljmp	_memset
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_SetPosition'
;------------------------------------------------------------
;y                         Allocated with name '_SSD1306_SetPosition_PARM_2'
;x                         Allocated with name '_SSD1306_SetPosition_x_65536_162'
;------------------------------------------------------------
;	ssd1306.c:102: void SSD1306_SetPosition(uint8_t x, uint8_t y) {
;	-----------------------------------------
;	 function SSD1306_SetPosition
;	-----------------------------------------
_SSD1306_SetPosition:
	mov	a,dpl
	mov	dptr,#_SSD1306_SetPosition_x_65536_162
	movx	@dptr,a
;	ssd1306.c:103: _counter = x + (y << 7);                                        // update counter
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	movx	a,@dptr
	mov	r5,a
	clr	a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r4,a
	mov	dptr,#__counter
	mov	a,r5
	add	a,r7
	movx	@dptr,a
	mov	a,r4
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:104: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_UpdatePosition'
;------------------------------------------------------------
;y                         Allocated with name '_SSD1306_UpdatePosition_y_65536_165'
;x                         Allocated with name '_SSD1306_UpdatePosition_x_65536_165'
;x_new                     Allocated with name '_SSD1306_UpdatePosition_x_new_65536_165'
;------------------------------------------------------------
;	ssd1306.c:106: uint8_t SSD1306_UpdatePosition(void) {
;	-----------------------------------------
;	 function SSD1306_UpdatePosition
;	-----------------------------------------
_SSD1306_UpdatePosition:
;	ssd1306.c:107: uint8_t y = _counter >> 7;                                      // y / 8
	mov	dptr,#__counter
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	ar4,r6
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
;	ssd1306.c:108: uint8_t x = _counter - (y << 7);                                // y % 8
	mov	ar7,r4
	mov	a,r7
	rr	a
	anl	a,#0x80
	mov	r7,a
	mov	a,r6
	clr	c
	subb	a,r7
;	ssd1306.c:109: uint8_t x_new = x + CHARS_COLS_LENGTH + 1;                      // x + character length + 1
;	ssd1306.c:111: if (x_new > END_COLUMN_ADDR) {                                  // check position
	add	a,#0x06
	add	a,#0xff - 0x7f
	jnc	00107$
;	ssd1306.c:112: if (y > END_PAGE_ADDR) {                                      // if more than allowable number of pages
	mov	a,r4
	add	a,#0xff - 0x07
	jnc	00104$
;	ssd1306.c:113: return SSD1306_ERROR;                                       // return out of range
	mov	dpl,#0x01
	ret
00104$:
;	ssd1306.c:114: } else if (y < (END_PAGE_ADDR-1)) {                           // if x reach the end but page in range
	cjne	r4,#0x06,00124$
00124$:
	jnc	00107$
;	ssd1306.c:115: _counter = ((++y) << 7);                                    // update
	inc	r4
	clr	a
	clr	c
	xch	a,r4
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r7,a
	mov	dptr,#__counter
	mov	a,r4
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00107$:
;	ssd1306.c:119: return SSD1306_SUCCESS;
	mov	dpl,#0x00
;	ssd1306.c:120: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DrawChar'
;------------------------------------------------------------
;character                 Allocated with name '_SSD1306_DrawChar_character_65536_169'
;i                         Allocated with name '_SSD1306_DrawChar_i_65536_170'
;------------------------------------------------------------
;	ssd1306.c:122: uint8_t SSD1306_DrawChar(char character) {
;	-----------------------------------------
;	 function SSD1306_DrawChar
;	-----------------------------------------
_SSD1306_DrawChar:
	mov	a,dpl
	mov	dptr,#_SSD1306_DrawChar_character_65536_169
	movx	@dptr,a
;	ssd1306.c:125: if (SSD1306_UpdatePosition () == SSD1306_ERROR) {
	lcall	_SSD1306_UpdatePosition
	mov	r7,dpl
	cjne	r7,#0x01,00110$
;	ssd1306.c:126: return SSD1306_ERROR;
	mov	dpl,#0x01
	ret
;	ssd1306.c:128: while (i < CHARS_COLS_LENGTH) {
00110$:
	mov	dptr,#_SSD1306_DrawChar_character_65536_169
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00103$:
	cjne	r6,#0x05,00123$
00123$:
	jnc	00105$
;	ssd1306.c:129: cacheMemLcd[_counter++] = FONTS[character-32][i++];
	mov	dptr,#__counter
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__counter
	mov	a,#0x01
	add	a,r4
	movx	@dptr,a
	clr	a
	addc	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	add	a,#_cacheMemLcd
	mov	r4,a
	mov	a,r5
	addc	a,#(_cacheMemLcd >> 8)
	mov	r5,a
	mov	ar2,r7
	mov	r3,#0x00
	mov	a,r2
	add	a,#0xe0
	mov	r2,a
	mov	a,r3
	addc	a,#0xff
	mov	r3,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0005
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r2
	add	a,#_FONTS
	mov	r2,a
	mov	a,r3
	addc	a,#(_FONTS >> 8)
	mov	r3,a
	mov	ar1,r6
	inc	r6
	mov	a,r1
	add	a,r2
	mov	dpl,a
	clr	a
	addc	a,r3
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	sjmp	00103$
00105$:
;	ssd1306.c:131: _counter++;
	mov	dptr,#__counter
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
;	ssd1306.c:133: return SSD1306_SUCCESS;
	mov	dpl,#0x00
;	ssd1306.c:134: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DrawString'
;------------------------------------------------------------
;str                       Allocated with name '_SSD1306_DrawString_str_65536_173'
;i                         Allocated with name '_SSD1306_DrawString_i_65536_174'
;------------------------------------------------------------
;	ssd1306.c:136: void SSD1306_DrawString(char *str) {
;	-----------------------------------------
;	 function SSD1306_DrawString
;	-----------------------------------------
_SSD1306_DrawString:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_SSD1306_DrawString_str_65536_173
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:138: while (str[i] != '\0') {
	mov	dptr,#_SSD1306_DrawString_str_65536_173
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r3,#0x00
	mov	r4,#0x00
00101$:
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	jz	00104$
;	ssd1306.c:139: SSD1306_DrawChar(str[i++]);
	mov	a,r3
	add	a,r5
	mov	r0,a
	mov	a,r4
	addc	a,r6
	mov	r1,a
	mov	ar2,r7
	inc	r3
	cjne	r3,#0x00,00116$
	inc	r4
00116$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_SSD1306_DrawChar
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	ssd1306.c:141: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DrawPixel'
;------------------------------------------------------------
;y                         Allocated with name '_SSD1306_DrawPixel_PARM_2'
;x                         Allocated with name '_SSD1306_DrawPixel_x_65536_176'
;page                      Allocated with name '_SSD1306_DrawPixel_page_65536_177'
;pixel                     Allocated with name '_SSD1306_DrawPixel_pixel_65536_177'
;__655360012               Allocated with name '_SSD1306_DrawPixel___655360012_65536_177'
;------------------------------------------------------------
;	ssd1306.c:143: uint8_t SSD1306_DrawPixel(uint8_t x, uint8_t y) {
;	-----------------------------------------
;	 function SSD1306_DrawPixel
;	-----------------------------------------
_SSD1306_DrawPixel:
	mov	a,dpl
	mov	dptr,#_SSD1306_DrawPixel_x_65536_176
	movx	@dptr,a
;	ssd1306.c:147: if ((x > MAX_X) || (y > MAX_Y)) {                               // if out of range
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x7f
	jc	00101$
	mov	dptr,#_SSD1306_DrawPixel_PARM_2
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x40
	jnc	00102$
00101$:
;	ssd1306.c:148: return SSD1306_ERROR;                                         // out of range
	mov	dpl,#0x01
	ret
00102$:
;	ssd1306.c:150: page = y >> 3;                                                  // find page (y / 8)
	mov	a,r6
	swap	a
	rl	a
	anl	a,#0x1f
;	ssd1306.c:151: pixel = 1 << (y - (page << 3));                                 // which pixel (y % 8)
	mov	r5,a
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	mov	r6,a
;	ssd1306.c:152: _counter = x + (page << 7);                                     // update counter
	clr	a
	mov	r4,a
	anl	a,#0x01
	mov	c,acc.0
	xch	a,r5
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r3,a
	mov	a,r5
	add	a,r7
	mov	r7,a
	mov	a,r3
	addc	a,r4
	mov	r4,a
;	ssd1306.c:153: cacheMemLcd[_counter++] |= pixel;                               // save pixel
	mov	dptr,#__counter
	mov	a,#0x01
	add	a,r7
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	add	a,#_cacheMemLcd
	mov	r7,a
	mov	a,r4
	addc	a,#(_cacheMemLcd >> 8)
	mov	r4,a
	mov	dpl,r7
	mov	dph,r4
	movx	a,@dptr
	orl	ar6,a
	mov	dpl,r7
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
;	ssd1306.c:155: return SSD1306_SUCCESS;
	mov	dpl,#0x00
;	ssd1306.c:156: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SSD1306_DrawLine'
;------------------------------------------------------------
;sloc0                     Allocated with name '_SSD1306_DrawLine_sloc0_1_0'
;sloc1                     Allocated with name '_SSD1306_DrawLine_sloc1_1_0'
;sloc2                     Allocated with name '_SSD1306_DrawLine_sloc2_1_0'
;sloc3                     Allocated with name '_SSD1306_DrawLine_sloc3_1_0'
;sloc4                     Allocated with name '_SSD1306_DrawLine_sloc4_1_0'
;sloc5                     Allocated with name '_SSD1306_DrawLine_sloc5_1_0'
;sloc6                     Allocated with name '_SSD1306_DrawLine_sloc6_1_0'
;x2                        Allocated with name '_SSD1306_DrawLine_PARM_2'
;y1                        Allocated with name '_SSD1306_DrawLine_PARM_3'
;y2                        Allocated with name '_SSD1306_DrawLine_PARM_4'
;x1                        Allocated with name '_SSD1306_DrawLine_x1_65536_179'
;D                         Allocated with name '_SSD1306_DrawLine_D_65536_180'
;delta_x                   Allocated with name '_SSD1306_DrawLine_delta_x_65536_180'
;delta_y                   Allocated with name '_SSD1306_DrawLine_delta_y_65536_180'
;trace_x                   Allocated with name '_SSD1306_DrawLine_trace_x_65536_180'
;trace_y                   Allocated with name '_SSD1306_DrawLine_trace_y_65536_180'
;------------------------------------------------------------
;	ssd1306.c:158: uint8_t SSD1306_DrawLine (uint8_t x1, uint8_t x2, uint8_t y1, uint8_t y2) {
;	-----------------------------------------
;	 function SSD1306_DrawLine
;	-----------------------------------------
_SSD1306_DrawLine:
	mov	a,dpl
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	@dptr,a
;	ssd1306.c:161: int16_t trace_x = 1, trace_y = 1;                               // steps
	mov	dptr,#_SSD1306_DrawLine_trace_x_65536_180
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_SSD1306_DrawLine_trace_y_65536_180
	inc	a
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:163: delta_x = x2 - x1;                                              // delta x
	mov	dptr,#_SSD1306_DrawLine_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	dptr,#_SSD1306_DrawLine_delta_x_65536_180
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:164: delta_y = y2 - y1;                                              // delta y
	mov	dptr,#_SSD1306_DrawLine_PARM_4
	movx	a,@dptr
	mov	r4,a
	mov	_SSD1306_DrawLine_sloc0_1_0,r4
;	1-genFromRTrack replaced	mov	(_SSD1306_DrawLine_sloc0_1_0 + 1),#0x00
	mov	(_SSD1306_DrawLine_sloc0_1_0 + 1),r3
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	movx	a,@dptr
	mov	_SSD1306_DrawLine_sloc1_1_0,a
	mov	r0,_SSD1306_DrawLine_sloc1_1_0
	mov	r3,#0x00
	mov	a,_SSD1306_DrawLine_sloc0_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_SSD1306_DrawLine_sloc0_1_0 + 1)
	subb	a,r3
	mov	r3,a
	mov	dptr,#_SSD1306_DrawLine_delta_y_65536_180
	mov	a,r0
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:166: if (delta_x < 0) {                                              // check if x2 > x1
	mov	ar1,r5
	mov	ar2,r6
	mov	a,r2
	jnb	acc.7,00102$
;	ssd1306.c:167: delta_x = -delta_x;                                           // negate delta x
	mov	dptr,#_SSD1306_DrawLine_delta_x_65536_180
	clr	c
	clr	a
	subb	a,r5
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:168: trace_x = -trace_x;                                           // negate step x
	mov	dptr,#_SSD1306_DrawLine_trace_x_65536_180
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00102$:
;	ssd1306.c:171: if (delta_y < 0) {                                              // check if y2 > y1
	mov	ar5,r0
	mov	ar6,r3
	mov	a,r6
	jnb	acc.7,00104$
;	ssd1306.c:172: delta_y = -delta_y;                                           // negate detla y
	mov	dptr,#_SSD1306_DrawLine_delta_y_65536_180
	clr	c
	clr	a
	subb	a,r0
	movx	@dptr,a
	clr	a
	subb	a,r3
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:173: trace_y = -trace_y;                                           // negate step y
	mov	dptr,#_SSD1306_DrawLine_trace_y_65536_180
	mov	a,#0xff
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
00104$:
;	ssd1306.c:178: if (delta_y < delta_x) {
	mov	dptr,#_SSD1306_DrawLine_delta_y_65536_180
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_SSD1306_DrawLine_delta_x_65536_180
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r6
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00158$
	ljmp	00116$
00158$:
;	ssd1306.c:179: D = (delta_y << 1) - delta_x;                                 // calculate determinant
	mov	a,r5
	add	a,r5
	mov	r0,a
	mov	a,r6
	rlc	a
	mov	r1,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r0
	clr	c
	subb	a,r2
	movx	@dptr,a
	mov	a,r1
	subb	a,r3
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:180: SSD1306_DrawPixel (x1, y1);                                   // draw first pixel
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_SSD1306_DrawPixel_PARM_2
	mov	a,_SSD1306_DrawLine_sloc1_1_0
	movx	@dptr,a
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_SSD1306_DrawPixel
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
;	ssd1306.c:181: while (x1 != x2) {                                            // check if x1 equal x2
	mov	dptr,#_SSD1306_DrawLine_trace_y_65536_180
	movx	a,@dptr
	mov	_SSD1306_DrawLine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DrawLine_sloc6_1_0 + 1),a
	mov	_SSD1306_DrawLine_sloc0_1_0,r2
	mov	(_SSD1306_DrawLine_sloc0_1_0 + 1),r3
	mov	dptr,#_SSD1306_DrawLine_trace_x_65536_180
	movx	a,@dptr
	mov	_SSD1306_DrawLine_sloc2_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DrawLine_sloc2_1_0 + 1),a
	mov	_SSD1306_DrawLine_sloc3_1_0,r5
	mov	(_SSD1306_DrawLine_sloc3_1_0 + 1),r6
00107$:
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	_SSD1306_DrawLine_sloc4_1_0,a
	mov	a,r7
	cjne	a,_SSD1306_DrawLine_sloc4_1_0,00159$
	ljmp	00117$
00159$:
;	ssd1306.c:182: x1 += trace_x;                                              // update x1
	mov	r1,_SSD1306_DrawLine_sloc2_1_0
	mov	r0,_SSD1306_DrawLine_sloc4_1_0
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	mov	a,r1
	add	a,r0
	movx	@dptr,a
;	ssd1306.c:183: if (D >= 0) {                                               // check if determinant is positive
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	_SSD1306_DrawLine_sloc5_1_0,r0
	mov	a,r1
	mov	(_SSD1306_DrawLine_sloc5_1_0 + 1),a
	jb	acc.7,00106$
;	ssd1306.c:184: y1 += trace_y;                                            // update y1
	push	ar7
	mov	_SSD1306_DrawLine_sloc4_1_0,_SSD1306_DrawLine_sloc6_1_0
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	movx	a,@dptr
	add	a,_SSD1306_DrawLine_sloc4_1_0
	movx	@dptr,a
;	ssd1306.c:185: D -= 2*delta_x;                                           // update determinant
	mov	r1,_SSD1306_DrawLine_sloc0_1_0
	mov	r7,(_SSD1306_DrawLine_sloc0_1_0 + 1)
	mov	a,r1
	add	a,r1
	mov	r1,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,_SSD1306_DrawLine_sloc5_1_0
	clr	c
	subb	a,r1
	mov	r1,a
	mov	a,(_SSD1306_DrawLine_sloc5_1_0 + 1)
	subb	a,r7
	mov	r7,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:206: return SSD1306_SUCCESS;
	pop	ar7
;	ssd1306.c:185: D -= 2*delta_x;                                           // update determinant
00106$:
;	ssd1306.c:187: D += 2*delta_y;                                             // update deteminant
	push	ar7
	mov	r0,_SSD1306_DrawLine_sloc3_1_0
	mov	r1,(_SSD1306_DrawLine_sloc3_1_0 + 1)
	mov	a,r0
	add	a,r0
	mov	_SSD1306_DrawLine_sloc5_1_0,a
	mov	a,r1
	rlc	a
	mov	(_SSD1306_DrawLine_sloc5_1_0 + 1),a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_SSD1306_DrawLine_sloc5_1_0
	add	a,r1
	mov	r1,a
	mov	a,(_SSD1306_DrawLine_sloc5_1_0 + 1)
	addc	a,r7
	mov	r7,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r1
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:188: SSD1306_DrawPixel (x1, y1);                                 // draw next pixel
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	movx	a,@dptr
	mov	dptr,#_SSD1306_DrawPixel_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_SSD1306_DrawPixel
	pop	ar7
	pop	ar7
	ljmp	00107$
00116$:
;	ssd1306.c:193: D = delta_y - (delta_x << 1);                                 // calculate determinant
	mov	a,r2
	add	a,r2
	mov	r1,a
	mov	a,r3
	rlc	a
	mov	r7,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r5
	clr	c
	subb	a,r1
	movx	@dptr,a
	mov	a,r6
	subb	a,r7
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:194: SSD1306_DrawPixel (x1, y1);                                   // draw first pixel
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_DrawPixel_PARM_2
	mov	a,_SSD1306_DrawLine_sloc1_1_0
	movx	@dptr,a
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_SSD1306_DrawPixel
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	ssd1306.c:195: while (y1 != y2) {                                            // check if y2 equal y1
	mov	dptr,#_SSD1306_DrawLine_trace_x_65536_180
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_SSD1306_DrawLine_trace_y_65536_180
	movx	a,@dptr
	mov	_SSD1306_DrawLine_sloc6_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_SSD1306_DrawLine_sloc6_1_0 + 1),a
00112$:
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	movx	a,@dptr
	mov	r0,a
	cjne	a,ar4,00161$
	ljmp	00117$
00161$:
;	ssd1306.c:196: y1 += trace_y;                                              // update y1
	push	ar2
	push	ar3
	mov	r3,_SSD1306_DrawLine_sloc6_1_0
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	mov	a,r3
	add	a,r0
	movx	@dptr,a
;	ssd1306.c:197: if (D <= 0) {                                               // check if determinant is positive
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	_SSD1306_DrawLine_sloc5_1_0,r2
	mov	(_SSD1306_DrawLine_sloc5_1_0 + 1),r3
	clr	c
	clr	a
	subb	a,_SSD1306_DrawLine_sloc5_1_0
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_SSD1306_DrawLine_sloc5_1_0 + 1)
	xrl	b,#0x80
	subb	a,b
	pop	ar3
	pop	ar2
	jc	00111$
;	ssd1306.c:198: x1 += trace_x;                                            // update y1
	push	ar2
	push	ar3
	mov	ar0,r1
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	add	a,r0
	movx	@dptr,a
;	ssd1306.c:199: D += 2*delta_y;                                           // update determinant
	mov	ar2,r5
	mov	ar3,r6
	mov	a,r2
	add	a,r2
	mov	r2,a
	mov	a,r3
	rlc	a
	mov	r3,a
	mov	a,r2
	add	a,_SSD1306_DrawLine_sloc5_1_0
	mov	r2,a
	mov	a,r3
	addc	a,(_SSD1306_DrawLine_sloc5_1_0 + 1)
	mov	r3,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:206: return SSD1306_SUCCESS;
	pop	ar3
	pop	ar2
;	ssd1306.c:199: D += 2*delta_y;                                           // update determinant
00111$:
;	ssd1306.c:201: D -= 2*delta_x;                                             // update deteminant
	push	ar5
	push	ar6
	mov	ar0,r2
	mov	ar6,r3
	mov	a,r0
	add	a,r0
	mov	_SSD1306_DrawLine_sloc5_1_0,a
	mov	a,r6
	rlc	a
	mov	(_SSD1306_DrawLine_sloc5_1_0 + 1),a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,_SSD1306_DrawLine_sloc5_1_0
	mov	r5,a
	mov	a,r6
	subb	a,(_SSD1306_DrawLine_sloc5_1_0 + 1)
	mov	r6,a
	mov	dptr,#_SSD1306_DrawLine_D_65536_180
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
;	ssd1306.c:202: SSD1306_DrawPixel (x1, y1);                                 // draw next pixel
	mov	dptr,#_SSD1306_DrawLine_x1_65536_179
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_SSD1306_DrawLine_PARM_3
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_SSD1306_DrawPixel_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_SSD1306_DrawPixel
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	pop	ar6
	pop	ar5
	ljmp	00112$
00117$:
;	ssd1306.c:206: return SSD1306_SUCCESS;
	mov	dpl,#0x00
;	ssd1306.c:207: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_FONTS:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x18	; 24
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x50	; 80	'P'
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x79	; 121	'y'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7e	; 126
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x7e	; 126
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x52	; 82	'R'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x44	; 68	'D'
	.db #0x3d	; 61
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x7c	; 124
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x7c	; 124
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x0c	; 12
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x50	; 80	'P'
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x36	; 54	'6'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_INIT_SSD1306:
	.db #0x11	; 17
	.db #0xae	; 174
	.db #0x00	; 0
	.db #0xa8	; 168
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0xd3	; 211
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xa1	; 161
	.db #0x00	; 0
	.db #0xc8	; 200
	.db #0x00	; 0
	.db #0xda	; 218
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x81	; 129
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0xa4	; 164
	.db #0x00	; 0
	.db #0xa6	; 166
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0x01	; 1
	.db #0x80	; 128
	.db #0xd9	; 217
	.db #0x01	; 1
	.db #0xc2	; 194
	.db #0xdb	; 219
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x8d	; 141
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x2e	; 46
	.db #0x00	; 0
	.db #0xaf	; 175
	.db #0x00	; 0
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
