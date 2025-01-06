;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module advpwm_hal
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _pwmOnChannelInterrupt
	.globl _pwmOnCounterInterrupt
	.globl _gpioConfigure
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
	.globl _pwmInitialiseCapture_PARM_6
	.globl _pwmInitialiseCapture_PARM_5
	.globl _pwmInitialiseCapture_PARM_4
	.globl _pwmInitialiseCapture_PARM_3
	.globl _pwmInitialiseCapture_PARM_2
	.globl _pwmInitialiseQuadratureEncoder_PARM_4
	.globl _pwmInitialiseQuadratureEncoder_PARM_3
	.globl _pwmInitialiseQuadratureEncoder_PARM_2
	.globl _pwmSetDutyCycle_PARM_2
	.globl _pwmInitialisePWM_PARM_5
	.globl _pwmInitialisePWM_PARM_4
	.globl _pwmInitialisePWM_PARM_3
	.globl _pwmInitialisePWM_PARM_2
	.globl _pwmConfigureCounter_PARM_11
	.globl _pwmConfigureCounter_PARM_10
	.globl _pwmConfigureCounter_PARM_9
	.globl _pwmConfigureCounter_PARM_8
	.globl _pwmConfigureCounter_PARM_7
	.globl _pwmConfigureCounter_PARM_6
	.globl _pwmConfigureCounter_PARM_5
	.globl _pwmConfigureCounter_PARM_4
	.globl _pwmConfigureCounter_PARM_3
	.globl _pwmConfigureCounter_PARM_2
	.globl _pwmConfigureOutput_PARM_7
	.globl _pwmConfigureOutput_PARM_6
	.globl _pwmConfigureOutput_PARM_5
	.globl _pwmConfigureOutput_PARM_4
	.globl _pwmConfigureOutput_PARM_3
	.globl _pwmConfigureOutput_PARM_2
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
	.globl _pwmConfigureOutput
	.globl _pwmConfigureCounter
	.globl _pwmEnableMainOutput
	.globl _pwmEnableCounter
	.globl _pwmInitialisePWM
	.globl _pwmSetDutyCycle
	.globl _pwmInitialiseQuadratureEncoder
	.globl _pwmInitialiseCapture
	.globl _pwmA_isr
	.globl _pwmB_isr
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
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_pwmA_isr_sloc0_1_0:
	.ds 4
_pwmB_isr_sloc0_1_0:
	.ds 4
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
_channelLastCount:
	.ds 32
_getChannelPin_PARM_2:
	.ds 1
_getChannelPin_PARM_3:
	.ds 1
_getChannelPin_channel_65536_148:
	.ds 1
_getChannelPin_index_65537_151:
	.ds 1
_configurePin_PARM_2:
	.ds 1
_configurePin_ioPin_65536_156:
	.ds 1
_configurePin_rc_65536_157:
	.ds 1
_configurePin_pinConfig_131072_158:
	.ds 13
_applyPinSwitch_PARM_2:
	.ds 1
_applyPinSwitch_channel_65536_159:
	.ds 1
_enableOutput_PARM_2:
	.ds 1
_enableOutput_channel_65536_164:
	.ds 1
_enableChannel_PARM_2:
	.ds 1
_enableChannel_PARM_3:
	.ds 1
_enableChannel_channel_65536_168:
	.ds 1
_enableChannel_reg2_65536_169:
	.ds 1
_enableChannel_bitPos_131072_170:
	.ds 1
_enableChannel_bitPos_131072_175:
	.ds 1
_enableFaultControl_PARM_2:
	.ds 1
_enableFaultControl_PARM_3:
	.ds 1
_enableFaultControl_PARM_4:
	.ds 1
_enableFaultControl_channel_65536_180:
	.ds 1
_closeChannel_channel_65536_185:
	.ds 1
_pwmConfigureOutput_PARM_2:
	.ds 1
_pwmConfigureOutput_PARM_3:
	.ds 1
_pwmConfigureOutput_PARM_4:
	.ds 1
_pwmConfigureOutput_PARM_5:
	.ds 1
_pwmConfigureOutput_PARM_6:
	.ds 1
_pwmConfigureOutput_PARM_7:
	.ds 1
_pwmConfigureOutput_channel_65536_188:
	.ds 1
_pwmConfigureOutput_ok_65537_191:
	.ds 1
_pwmConfigureCounter_PARM_2:
	.ds 4
_pwmConfigureCounter_PARM_3:
	.ds 4
_pwmConfigureCounter_PARM_4:
	.ds 1
_pwmConfigureCounter_PARM_5:
	.ds 1
_pwmConfigureCounter_PARM_6:
	.ds 1
_pwmConfigureCounter_PARM_7:
	.ds 1
_pwmConfigureCounter_PARM_8:
	.ds 1
_pwmConfigureCounter_PARM_9:
	.ds 1
_pwmConfigureCounter_PARM_10:
	.ds 1
_pwmConfigureCounter_PARM_11:
	.ds 1
_pwmConfigureCounter_counter_65536_197:
	.ds 1
_pwmConfigureCounter_prescaler_65536_198:
	.ds 2
_pwmConfigureCounter_reloadValue_65536_198:
	.ds 2
_pwmEnableMainOutput_counter_65536_206:
	.ds 1
_pwmEnableCounter_counter_65536_209:
	.ds 1
_enableChannelInterrupt_channel_65536_212:
	.ds 1
_pwmInitialisePWM_PARM_2:
	.ds 1
_pwmInitialisePWM_PARM_3:
	.ds 1
_pwmInitialisePWM_PARM_4:
	.ds 1
_pwmInitialisePWM_PARM_5:
	.ds 2
_pwmInitialisePWM_channel_65536_216:
	.ds 1
_pwmInitialisePWM_ccmr_65537_218:
	.ds 1
_pwmSetDutyCycle_PARM_2:
	.ds 2
_pwmSetDutyCycle_channel_65536_223:
	.ds 1
_configureInput_PARM_2:
	.ds 1
_configureInput_PARM_3:
	.ds 1
_configureInput_PARM_4:
	.ds 1
_configureInput_PARM_5:
	.ds 1
_configureInput_channel_65536_226:
	.ds 1
_pwmInitialiseQuadratureEncoder_PARM_2:
	.ds 1
_pwmInitialiseQuadratureEncoder_PARM_3:
	.ds 1
_pwmInitialiseQuadratureEncoder_PARM_4:
	.ds 1
_pwmInitialiseQuadratureEncoder_counter_65536_230:
	.ds 1
_pwmInitialiseCapture_PARM_2:
	.ds 1
_pwmInitialiseCapture_PARM_3:
	.ds 1
_pwmInitialiseCapture_PARM_4:
	.ds 1
_pwmInitialiseCapture_PARM_5:
	.ds 1
_pwmInitialiseCapture_PARM_6:
	.ds 1
_pwmInitialiseCapture_channel_65536_232:
	.ds 1
_pwmA_isr_channel_65536_236:
	.ds 1
_pwmA_isr_event_65536_236:
	.ds 1
_pwmA_isr_counter_262144_247:
	.ds 2
_pwmA_isr_refIndex_262145_249:
	.ds 1
_pwmA_isr_channelNewCount_262146_252:
	.ds 4
_pwmA_isr_elapsed_262146_252:
	.ds 4
_pwmB_isr_channel_65536_255:
	.ds 1
_pwmB_isr_event_65536_255:
	.ds 1
_pwmB_isr_counter_262144_266:
	.ds 2
_pwmB_isr_refIndex_262145_268:
	.ds 1
_pwmB_isr_channelNewCount_262146_271:
	.ds 4
_pwmB_isr_elapsed_262146_271:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_channelUsage:
	.ds 8
_counterOverflow:
	.ds 4
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
;Allocation info for local variables in function 'getChannelPin'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_getChannelPin_PARM_2'
;offset                    Allocated with name '_getChannelPin_PARM_3'
;channel                   Allocated with name '_getChannelPin_channel_65536_148'
;index                     Allocated with name '_getChannelPin_index_65537_151'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:138: static uint8_t getChannelPin(PWM_Channel channel, uint8_t pinSwitch, uint8_t offset) {
;	-----------------------------------------
;	 function getChannelPin
;	-----------------------------------------
_getChannelPin:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	a,dpl
	mov	dptr,#_getChannelPin_channel_65536_148
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:139: if (pinSwitch >= PIN_CONFIG_MAX) {
	mov	dptr,#_getChannelPin_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00133$
00133$:
	jc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:140: pinSwitch = 0;
	mov	dptr,#_getChannelPin_PARM_2
	clr	a
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:143: uint8_t index = channel;
	mov	dptr,#_getChannelPin_channel_65536_148
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getChannelPin_index_65537_151
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:146: if (channel > PWM_Channel4) {
	mov	a,r7
	add	a,#0xff - 0x08
	jnc	00104$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:147: index--;
	mov	a,r7
	dec	a
	mov	dptr,#_getChannelPin_index_65537_151
	movx	@dptr,a
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:150: if (channel > PWM_Channel5) {
	mov	dptr,#_getChannelPin_channel_65536_148
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0a
	jnc	00106$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:151: index--;
	mov	dptr,#_getChannelPin_index_65537_151
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:154: if (channel > PWM_Channel6) {
	mov	a,r7
	add	a,#0xff - 0x0c
	jnc	00108$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:155: index--;
	mov	dptr,#_getChannelPin_index_65537_151
	movx	a,@dptr
	dec	a
	movx	@dptr,a
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:158: if (channel < PWM_Channel4) {
	mov	dptr,#_getChannelPin_channel_65536_148
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00138$
00138$:
	jnc	00110$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:160: index += offset;
	mov	dptr,#_getChannelPin_PARM_3
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_getChannelPin_index_65537_151
	movx	a,@dptr
	add	a,r7
	movx	@dptr,a
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:165: return __channelPinConfigurations[pinSwitch][index];
	mov	dptr,#_getChannelPin_PARM_2
	movx	a,@dptr
	mov	b,#0x0c
	mul	ab
	add	a,#___channelPinConfigurations
	mov	r6,a
	mov	a,#(___channelPinConfigurations >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_getChannelPin_index_65537_151
	movx	a,@dptr
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	clr	a
	movc	a,@a+dptr
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:166: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configurePin'
;------------------------------------------------------------
;pinMode                   Allocated with name '_configurePin_PARM_2'
;ioPin                     Allocated with name '_configurePin_ioPin_65536_156'
;port                      Allocated with name '_configurePin_port_65536_157'
;pin                       Allocated with name '_configurePin_pin_65536_157'
;rc                        Allocated with name '_configurePin_rc_65536_157'
;pinConfig                 Allocated with name '_configurePin_pinConfig_131072_158'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:168: static bool configurePin(uint8_t ioPin, GpioPinMode pinMode) {
;	-----------------------------------------
;	 function configurePin
;	-----------------------------------------
_configurePin:
	mov	a,dpl
	mov	dptr,#_configurePin_ioPin_65536_156
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:169: GpioPort port = (GpioPort) (ioPin >> 4);
	movx	a,@dptr
	mov	r7,a
	swap	a
	anl	a,#0x0f
	mov	r6,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:170: GpioPin pin = (GpioPin) (ioPin & 0x0f);
	anl	ar7,#0x0f
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:171: bool rc = (port < 8 && pin < 8);
	cjne	r6,#0x08,00116$
00116$:
	jnc	00105$
	cjne	r7,#0x08,00118$
00118$:
	jc	00106$
00105$:
	mov	r5,#0x00
	sjmp	00107$
00106$:
	mov	r5,#0x01
00107$:
	mov	dptr,#_configurePin_rc_65536_157
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:173: if (rc) {
	movx	a,@dptr
	jz	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:174: GpioConfig pinConfig = GPIO_PIN_CONFIG(port, pin, pinMode);
	mov	dptr,#_configurePin_pinConfig_131072_158
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0001)
	mov	a,r7
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0002)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_configurePin_PARM_2
	movx	a,@dptr
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0006)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0007)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_configurePin_pinConfig_131072_158 + 0x000c)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:175: gpioConfigure(&pinConfig);
	mov	dptr,#_configurePin_pinConfig_131072_158
	mov	b,#0x00
	lcall	_gpioConfigure
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:178: return rc;
	mov	dptr,#_configurePin_rc_65536_157
	movx	a,@dptr
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:179: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'applyPinSwitch'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_applyPinSwitch_PARM_2'
;channel                   Allocated with name '_applyPinSwitch_channel_65536_159'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:181: static void applyPinSwitch(PWM_Channel channel, uint8_t pinSwitch) {
;	-----------------------------------------
;	 function applyPinSwitch
;	-----------------------------------------
_applyPinSwitch:
	mov	a,dpl
	mov	dptr,#_applyPinSwitch_channel_65536_159
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:182: if (pinSwitch >= PIN_CONFIG_MAX) {
	mov	dptr,#_applyPinSwitch_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x03,00116$
00116$:
	jc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:183: pinSwitch = 0;
	mov	dptr,#_applyPinSwitch_PARM_2
	clr	a
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:187: if (channel < PWM_Channel4) {
	mov	dptr,#_applyPinSwitch_channel_65536_159
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00118$
00118$:
	jnc	00104$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:189: PWMA_PS = (PWMA_PS & ~(3 << channel)) | (pinSwitch << channel);
	mov	ar6,r7
	mov	b,r6
	inc	b
	mov	a,#0x03
	sjmp	00122$
00120$:
	add	a,acc
00122$:
	djnz	b,00120$
	cpl	a
	mov	r6,a
	mov	dptr,#_PWMA_PS
	movx	a,@dptr
	anl	ar6,a
	mov	dptr,#_applyPinSwitch_PARM_2
	movx	a,@dptr
	mov	b,r7
	inc	b
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	mov	dptr,#_PWMA_PS
	orl	a,r6
	movx	@dptr,a
	ret
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:192: channel -= 8;
	mov	a,r7
	add	a,#0xf8
	mov	dptr,#_applyPinSwitch_channel_65536_159
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:193: PWMB_PS = (PWMB_PS & ~(3 << channel)) | (pinSwitch << channel);
	movx	a,@dptr
	mov	r7,a
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x03
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	cpl	a
	mov	r6,a
	mov	dptr,#_PWMB_PS
	movx	a,@dptr
	anl	ar6,a
	mov	dptr,#_applyPinSwitch_PARM_2
	movx	a,@dptr
	mov	b,r7
	inc	b
	sjmp	00131$
00129$:
	add	a,acc
00131$:
	djnz	b,00129$
	mov	dptr,#_PWMB_PS
	orl	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:196: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableOutput'
;------------------------------------------------------------
;offset                    Allocated with name '_enableOutput_PARM_2'
;channel                   Allocated with name '_enableOutput_channel_65536_164'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:198: static void enableOutput(PWM_Channel channel, uint8_t offset) {
;	-----------------------------------------
;	 function enableOutput
;	-----------------------------------------
_enableOutput:
	mov	a,dpl
	mov	dptr,#_enableOutput_channel_65536_164
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:200: if (channel < PWM_Channel4) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00110$
00110$:
	jnc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:202: PWMA_ENO |= 1 << (channel + offset);
	mov	dptr,#_enableOutput_PARM_2
	movx	a,@dptr
	add	a,r7
	mov	r6,a
	mov	b,r6
	inc	b
	mov	a,#0x01
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	mov	r6,a
	mov	dptr,#_PWMA_ENO
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:205: PWMB_ENO |= 1 << (channel - PWM_Channel4);
	mov	a,r7
	add	a,#0xf8
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	mov	r7,a
	mov	dptr,#_PWMB_ENO
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:208: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableChannel'
;------------------------------------------------------------
;offset                    Allocated with name '_enableChannel_PARM_2'
;polarity                  Allocated with name '_enableChannel_PARM_3'
;channel                   Allocated with name '_enableChannel_channel_65536_168'
;reg2                      Allocated with name '_enableChannel_reg2_65536_169'
;bitVal                    Allocated with name '_enableChannel_bitVal_65536_169'
;bitPos                    Allocated with name '_enableChannel_bitPos_131072_170'
;bitMask                   Allocated with name '_enableChannel_bitMask_131073_172'
;bitPos                    Allocated with name '_enableChannel_bitPos_131072_175'
;bitMask                   Allocated with name '_enableChannel_bitMask_131073_177'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:210: static void enableChannel(PWM_Channel channel, uint8_t offset, PWM_Polarity polarity) {
;	-----------------------------------------
;	 function enableChannel
;	-----------------------------------------
_enableChannel:
	mov	a,dpl
	mov	dptr,#_enableChannel_channel_65536_168
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:211: bool reg2 = false;
	mov	dptr,#_enableChannel_reg2_65536_169
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:212: uint8_t bitVal = (polarity << 1) | 1;
	mov	dptr,#_enableChannel_PARM_3
	movx	a,@dptr
	add	a,acc
	mov	r7,a
	orl	ar7,#0x01
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:215: if (channel < PWM_Channel4) {
	mov	dptr,#_enableChannel_channel_65536_168
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x08,00136$
00136$:
	jnc	00112$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:217: uint8_t bitPos = (channel + offset) << 1;
	mov	dptr,#_enableChannel_PARM_2
	movx	a,@dptr
	add	a,r6
	add	a,acc
	mov	r5,a
	mov	dptr,#_enableChannel_bitPos_131072_170
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:219: if (bitPos > 7) {
	mov	ar4,r5
	mov	a,r4
	add	a,#0xff - 0x07
	jnc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:220: bitPos -= 8;
	mov	a,r5
	add	a,#0xf8
	mov	dptr,#_enableChannel_bitPos_131072_170
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:221: reg2 = true;
	mov	dptr,#_enableChannel_reg2_65536_169
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:224: uint8_t bitMask = ~(3 << bitPos);
	mov	dptr,#_enableChannel_bitPos_131072_170
	movx	a,@dptr
	mov	r5,a
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,#0x03
	sjmp	00141$
00139$:
	add	a,acc
00141$:
	djnz	b,00139$
	cpl	a
	mov	r4,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:225: bitVal <<= bitPos;
	mov	b,r5
	inc	b
	mov	a,r7
	sjmp	00144$
00142$:
	add	a,acc
00144$:
	djnz	b,00142$
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:227: if (reg2) {
	mov	dptr,#_enableChannel_reg2_65536_169
	movx	a,@dptr
	jz	00104$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:228: PWMA_CCER2 = (PWMA_CCER2 & bitMask) | bitVal;
	mov	dptr,#_PWMA_CCER2
	movx	a,@dptr
	anl	a,r4
	orl	a,r5
	movx	@dptr,a
	ret
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:230: PWMA_CCER1 = (PWMA_CCER1 & bitMask) | bitVal;
	mov	dptr,#_PWMA_CCER1
	movx	a,@dptr
	anl	a,r4
	orl	a,r5
	movx	@dptr,a
	ret
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:234: uint8_t bitPos = (channel - PWM_Channel4) << 1;
	mov	a,r6
	add	a,#0xf8
	add	a,acc
	mov	r6,a
	mov	dptr,#_enableChannel_bitPos_131072_175
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:236: if (bitPos > 7) {
	mov	ar5,r6
	mov	a,r5
	add	a,#0xff - 0x07
	jnc	00107$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:237: bitPos -= 8;
	mov	a,r6
	add	a,#0xf8
	mov	dptr,#_enableChannel_bitPos_131072_175
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:238: reg2 = true;
	mov	dptr,#_enableChannel_reg2_65536_169
	mov	a,#0x01
	movx	@dptr,a
00107$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:241: uint8_t bitMask = ~(3 << bitPos);
	mov	dptr,#_enableChannel_bitPos_131072_175
	movx	a,@dptr
	mov	r6,a
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0x03
	sjmp	00149$
00147$:
	add	a,acc
00149$:
	djnz	b,00147$
	cpl	a
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:242: bitVal <<= bitPos;
	mov	b,r6
	inc	b
	mov	a,r7
	sjmp	00152$
00150$:
	add	a,acc
00152$:
	djnz	b,00150$
	mov	r7,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:244: if (reg2) {
	mov	dptr,#_enableChannel_reg2_65536_169
	movx	a,@dptr
	jz	00109$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:245: PWMB_CCER2 = (PWMB_CCER2 & bitMask) | bitVal;
	mov	dptr,#_PWMB_CCER2
	movx	a,@dptr
	anl	a,r5
	orl	a,r7
	movx	@dptr,a
	ret
00109$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:247: PWMB_CCER1 = (PWMB_CCER1 & bitMask) | bitVal;
	mov	dptr,#_PWMB_CCER1
	movx	a,@dptr
	anl	a,r5
	orl	a,r7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:251: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableFaultControl'
;------------------------------------------------------------
;offset                    Allocated with name '_enableFaultControl_PARM_2'
;faultControl              Allocated with name '_enableFaultControl_PARM_3'
;idleLevel                 Allocated with name '_enableFaultControl_PARM_4'
;channel                   Allocated with name '_enableFaultControl_channel_65536_180'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:253: static void enableFaultControl(PWM_Channel channel, uint8_t offset, PWM_FaultControl faultControl, OutputLevel idleLevel) {
;	-----------------------------------------
;	 function enableFaultControl
;	-----------------------------------------
_enableFaultControl:
	mov	a,dpl
	mov	dptr,#_enableFaultControl_channel_65536_180
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:254: if (faultControl == PWM_ENABLE_FAULT_CONTROL) {
	mov	dptr,#_enableFaultControl_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00106$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:256: if (channel < PWM_Channel4) {
	mov	dptr,#_enableFaultControl_channel_65536_180
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00118$
00118$:
	jnc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:258: PWMA_IOAUX |= 1 << (channel + offset);
	mov	dptr,#_enableFaultControl_PARM_2
	movx	a,@dptr
	add	a,r7
	mov	r6,a
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0x01
	sjmp	00122$
00120$:
	add	a,acc
00122$:
	djnz	b,00120$
	mov	r5,a
	mov	dptr,#_PWMA_IOAUX
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:259: PWMA_OISR |= idleLevel << (channel + offset);
	mov	dptr,#_enableFaultControl_PARM_4
	movx	a,@dptr
	mov	b,r6
	inc	b
	sjmp	00125$
00123$:
	add	a,acc
00125$:
	djnz	b,00123$
	mov	r6,a
	mov	dptr,#_PWMA_OISR
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:262: PWMB_IOAUX |= 1 << (channel - PWM_Channel4);
	mov	a,r7
	add	a,#0xf8
	mov	r7,a
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00128$
00126$:
	add	a,acc
00128$:
	djnz	b,00126$
	mov	r6,a
	mov	dptr,#_PWMB_IOAUX
	movx	a,@dptr
	mov	r5,a
	orl	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:263: PWMB_OISR |= idleLevel << (channel - PWM_Channel4);
	mov	dptr,#_enableFaultControl_PARM_4
	movx	a,@dptr
	mov	r6,a
	mov	b,r7
	inc	b
	mov	a,r6
	sjmp	00131$
00129$:
	add	a,acc
00131$:
	djnz	b,00129$
	mov	r7,a
	mov	dptr,#_PWMB_OISR
	movx	a,@dptr
	mov	r6,a
	orl	a,r7
	movx	@dptr,a
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:267: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'closeChannel'
;------------------------------------------------------------
;channel                   Allocated with name '_closeChannel_channel_65536_185'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:269: static void closeChannel(PWM_Channel channel) {
;	-----------------------------------------
;	 function closeChannel
;	-----------------------------------------
_closeChannel:
	mov	a,dpl
	mov	dptr,#_closeChannel_channel_65536_185
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:270: switch (channel) {
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0e
	jnc	00116$
	ret
00116$:
	mov	a,r7
	add	a,#(00117$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00117$:
	.db	00101$
	.db	00110$
	.db	00102$
	.db	00110$
	.db	00103$
	.db	00110$
	.db	00104$
	.db	00110$
	.db	00105$
	.db	00110$
	.db	00106$
	.db	00110$
	.db	00107$
	.db	00110$
	.db	00108$
00118$:
	.db	00101$>>8
	.db	00110$>>8
	.db	00102$>>8
	.db	00110$>>8
	.db	00103$>>8
	.db	00110$>>8
	.db	00104$>>8
	.db	00110$>>8
	.db	00105$>>8
	.db	00110$>>8
	.db	00106$>>8
	.db	00110$>>8
	.db	00107$>>8
	.db	00110$>>8
	.db	00108$>>8
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:271: case PWM_Channel0:
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:272: PWMA_CCER1 &= 0xf0;
	mov	dptr,#_PWMA_CCER1
	movx	a,@dptr
	anl	acc,#0xf0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:273: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:275: case PWM_Channel1:
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:276: PWMA_CCER1 &= 0x0f;
	mov	dptr,#_PWMA_CCER1
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:277: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:280: case PWM_Channel2:
	ret
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:281: PWMA_CCER2 &= 0xf0;
	mov	dptr,#_PWMA_CCER2
	movx	a,@dptr
	anl	acc,#0xf0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:282: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:283: case PWM_Channel3:
	ret
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:284: PWMA_CCER2 &= 0x0f;
	mov	dptr,#_PWMA_CCER2
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:285: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:288: case PWM_Channel4:
	ret
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:289: PWMB_CCER1 &= 0xf0;
	mov	dptr,#_PWMB_CCER1
	movx	a,@dptr
	anl	acc,#0xf0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:290: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:291: case PWM_Channel5:
	ret
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:292: PWMB_CCER1 &= 0x0f;
	mov	dptr,#_PWMB_CCER1
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:293: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:294: case PWM_Channel6:
	ret
00107$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:295: PWMB_CCER2 &= 0xf0;
	mov	dptr,#_PWMB_CCER2
	movx	a,@dptr
	anl	acc,#0xf0
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:296: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:297: case PWM_Channel7:
	ret
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:298: PWMB_CCER2 &= 0x0f;
	mov	dptr,#_PWMB_CCER2
	movx	a,@dptr
	anl	acc,#0x0f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:301: }
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:302: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmConfigureOutput'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_pwmConfigureOutput_PARM_2'
;pinMode                   Allocated with name '_pwmConfigureOutput_PARM_3'
;polarity                  Allocated with name '_pwmConfigureOutput_PARM_4'
;faultControl              Allocated with name '_pwmConfigureOutput_PARM_5'
;idleLevel                 Allocated with name '_pwmConfigureOutput_PARM_6'
;outputEnable              Allocated with name '_pwmConfigureOutput_PARM_7'
;channel                   Allocated with name '_pwmConfigureOutput_channel_65536_188'
;ok                        Allocated with name '_pwmConfigureOutput_ok_65537_191'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:304: void pwmConfigureOutput(
;	-----------------------------------------
;	 function pwmConfigureOutput
;	-----------------------------------------
_pwmConfigureOutput:
	mov	a,dpl
	mov	dptr,#_pwmConfigureOutput_channel_65536_188
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:313: if (pinMode == GPIO_HIGH_IMPEDANCE_MODE) {
	mov	dptr,#_pwmConfigureOutput_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:314: pinMode = GPIO_PUSH_PULL_MODE;
	mov	dptr,#_pwmConfigureOutput_PARM_3
	mov	a,#0x01
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:317: bool ok = false;
	mov	dptr,#_pwmConfigureOutput_ok_65537_191
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:319: if (channel > PWM_Channel3 || (outputEnable & PWM_OUTPUT_P_ONLY)) {
	mov	dptr,#_pwmConfigureOutput_channel_65536_188
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x06
	jc	00105$
	mov	dptr,#_pwmConfigureOutput_PARM_7
	movx	a,@dptr
	jnb	acc.0,00106$
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:320: if (configurePin(getChannelPin(channel, pinSwitch, 0), pinMode)) {
	mov	dptr,#_pwmConfigureOutput_channel_65536_188
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmConfigureOutput_PARM_2
	movx	a,@dptr
	mov	dptr,#_getChannelPin_PARM_2
	movx	@dptr,a
	mov	dptr,#_getChannelPin_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_getChannelPin
	mov	r6,dpl
	mov	dptr,#_pwmConfigureOutput_PARM_3
	movx	a,@dptr
	mov	dptr,#_configurePin_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	lcall	_configurePin
	mov	a,dpl
	pop	ar7
	jz	00106$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:321: enableOutput(channel, 0);
	mov	dptr,#_enableOutput_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_enableOutput
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:322: enableChannel(channel, 0, polarity);
	mov	dptr,#_pwmConfigureOutput_PARM_4
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_enableChannel_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enableChannel_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_enableChannel
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:323: enableFaultControl(channel, 0, faultControl, idleLevel);
	mov	dptr,#_pwmConfigureOutput_PARM_5
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmConfigureOutput_PARM_6
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_enableFaultControl_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enableFaultControl_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_enableFaultControl_PARM_4
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
	lcall	_enableFaultControl
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:324: ok = true;
	mov	dptr,#_pwmConfigureOutput_ok_65537_191
	mov	a,#0x01
	movx	@dptr,a
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:328: if (channel <= PWM_Channel3 && (outputEnable & PWM_OUTPUT_N_ONLY)) {
	mov	dptr,#_pwmConfigureOutput_channel_65536_188
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x06
	jnc	00150$
	ljmp	00111$
00150$:
	mov	dptr,#_pwmConfigureOutput_PARM_7
	movx	a,@dptr
	jnb	acc.1,00111$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:329: if (configurePin(getChannelPin(channel, pinSwitch, 1), pinMode)) {
	mov	dptr,#_pwmConfigureOutput_PARM_2
	movx	a,@dptr
	mov	dptr,#_getChannelPin_PARM_2
	movx	@dptr,a
	mov	dptr,#_getChannelPin_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_getChannelPin
	mov	r6,dpl
	mov	dptr,#_pwmConfigureOutput_PARM_3
	movx	a,@dptr
	mov	dptr,#_configurePin_PARM_2
	movx	@dptr,a
	mov	dpl,r6
	lcall	_configurePin
	mov	a,dpl
	pop	ar7
	jz	00111$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:330: enableOutput(channel, 1);
	mov	dptr,#_enableOutput_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_enableOutput
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:331: enableChannel(channel, 1, polarity);
	mov	dptr,#_pwmConfigureOutput_PARM_4
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_enableChannel_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enableChannel_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_enableChannel
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:332: enableFaultControl(channel, 1, faultControl, idleLevel);
	mov	dptr,#_pwmConfigureOutput_PARM_5
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmConfigureOutput_PARM_6
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_enableFaultControl_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_enableFaultControl_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_enableFaultControl_PARM_4
	mov	a,r5
	movx	@dptr,a
	mov	dpl,r7
	lcall	_enableFaultControl
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:333: ok = true;
	mov	dptr,#_pwmConfigureOutput_ok_65537_191
	mov	a,#0x01
	movx	@dptr,a
00111$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:337: if (ok) {
	mov	dptr,#_pwmConfigureOutput_ok_65537_191
	movx	a,@dptr
	jz	00115$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:338: applyPinSwitch(channel, pinSwitch);
	mov	dptr,#_pwmConfigureOutput_channel_65536_188
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmConfigureOutput_PARM_2
	movx	a,@dptr
	mov	dptr,#_applyPinSwitch_PARM_2
	movx	@dptr,a
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:340: }
	ljmp	_applyPinSwitch
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmConfigureCounter'
;------------------------------------------------------------
;counterFreq               Allocated with name '_pwmConfigureCounter_PARM_2'
;signalFreq                Allocated with name '_pwmConfigureCounter_PARM_3'
;mode                      Allocated with name '_pwmConfigureCounter_PARM_4'
;trigger                   Allocated with name '_pwmConfigureCounter_PARM_5'
;repeatCount               Allocated with name '_pwmConfigureCounter_PARM_6'
;registerUpdateMode        Allocated with name '_pwmConfigureCounter_PARM_7'
;counterRunMode            Allocated with name '_pwmConfigureCounter_PARM_8'
;counterDirection          Allocated with name '_pwmConfigureCounter_PARM_9'
;updateEventEnable         Allocated with name '_pwmConfigureCounter_PARM_10'
;comInterrupt              Allocated with name '_pwmConfigureCounter_PARM_11'
;counter                   Allocated with name '_pwmConfigureCounter_counter_65536_197'
;prescaler                 Allocated with name '_pwmConfigureCounter_prescaler_65536_198'
;reloadValue               Allocated with name '_pwmConfigureCounter_reloadValue_65536_198'
;slaveMode                 Allocated with name '_pwmConfigureCounter_slaveMode_65537_204'
;cr1                       Allocated with name '_pwmConfigureCounter_cr1_65537_204'
;ier                       Allocated with name '_pwmConfigureCounter_ier_65537_204'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:393: uint16_t pwmConfigureCounter(
;	-----------------------------------------
;	 function pwmConfigureCounter
;	-----------------------------------------
_pwmConfigureCounter:
	mov	a,dpl
	mov	dptr,#_pwmConfigureCounter_counter_65536_197
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:406: uint16_t prescaler = 0;
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:409: switch (mode) {
	mov	dptr,#_pwmConfigureCounter_PARM_4
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00190$
	mov	a,r7
	sjmp	00191$
00190$:
	clr	a
00191$:
	mov	r6,a
	jnz	00106$
	cjne	r7,#0x02,00193$
	sjmp	00106$
00193$:
	cjne	r7,#0x03,00194$
	sjmp	00106$
00194$:
	cjne	r7,#0x07,00105$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:416: prescaler = counterFreq;
	mov	dptr,#_pwmConfigureCounter_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:417: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:419: default:
	sjmp	00106$
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:420: prescaler = MCU_FREQ / counterFreq;
	mov	dptr,#_pwmConfigureCounter_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x0ec0
	mov	b,#0x16
	mov	a,#0x02
	push	ar7
	push	ar6
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	pop	ar6
	pop	ar7
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:422: }
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:424: if (prescaler) {
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00108$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:425: prescaler -= 1;
	dec	r4
	cjne	r4,#0xff,00198$
	dec	r5
00198$:
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:428: switch (mode) {
	mov	a,r6
	jnz	00112$
	cjne	r7,#0x02,00200$
	sjmp	00112$
00200$:
	cjne	r7,#0x03,00201$
	sjmp	00112$
00201$:
	cjne	r7,#0x07,00113$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:432: case PWM_EXTERNAL_CLOCK:
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:433: reloadValue = signalFreq;
	mov	dptr,#_pwmConfigureCounter_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:434: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:436: default:
	sjmp	00114$
00113$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:437: reloadValue = counterFreq / signalFreq;
	push	ar7
	mov	dptr,#_pwmConfigureCounter_PARM_3
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmConfigureCounter_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#__divulong_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r7
	lcall	__divulong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:492: return reloadValue + 1;
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:439: }
00114$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:441: switch (counterDirection) {
	mov	dptr,#_pwmConfigureCounter_PARM_9
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x02,00204$
	sjmp	00117$
00204$:
	cjne	r6,#0x04,00205$
	sjmp	00117$
00205$:
	cjne	r6,#0x06,00118$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:444: case PWM_CENTRE_ALIGNED_INT_UP_DOWN:
00117$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:447: reloadValue >>= 1;
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r4
	rrc	a
	xch	a,r4
	mov	r5,a
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:449: }
00118$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:451: if (reloadValue) {
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jz	00120$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:452: reloadValue -= 1;
	dec	r4
	cjne	r4,#0xff,00209$
	dec	r5
00209$:
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
00120$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:455: uint8_t slaveMode = mode | (trigger << 4);
	mov	dptr,#_pwmConfigureCounter_PARM_5
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	orl	ar7,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:457: uint8_t cr1 = registerUpdateMode << P_ARPE
	mov	dptr,#_pwmConfigureCounter_PARM_7
	movx	a,@dptr
	rr	a
	anl	a,#0x80
	mov	r5,a
	mov	dptr,#_pwmConfigureCounter_PARM_8
	movx	a,@dptr
	swap	a
	rr	a
	anl	a,#0xf8
	orl	ar5,a
	mov	a,r6
	swap	a
	anl	a,#0xf0
	orl	ar5,a
	mov	dptr,#_pwmConfigureCounter_PARM_10
	movx	a,@dptr
	mov	r6,a
	mov	r4,a
	mov	a,r4
	add	a,r4
	orl	ar5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:462: uint8_t ier = (comInterrupt == ENABLE_INTERRUPT ? M_COMIE : 0)
	mov	dptr,#_pwmConfigureCounter_PARM_11
	movx	a,@dptr
	mov	r4,a
	cjne	r4,#0x01,00126$
	mov	r3,#0x20
	mov	r4,#0x00
	sjmp	00127$
00126$:
	mov	r3,#0x00
	mov	r4,#0x00
00127$:
	cjne	r6,#0x01,00212$
	mov	a,r6
	sjmp	00213$
00212$:
	clr	a
00213$:
	jnz	00128$
	mov	r2,#0x01
	mov	r6,a
	sjmp	00129$
00128$:
	mov	r2,#0x00
	mov	r6,#0x00
00129$:
	mov	a,r2
	orl	a,r3
	mov	r6,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:466: switch (counter) {
	mov	dptr,#_pwmConfigureCounter_counter_65536_197
	movx	a,@dptr
	mov	r4,a
	jz	00121$
	cjne	r4,#0x01,00216$
	sjmp	00122$
00216$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:467: case PWM_COUNTER_A:
	sjmp	00123$
00121$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:468: PWMA_PSCRH = prescaler >> 8;
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PWMA_PSCRH
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:469: PWMA_PSCRL = prescaler;
	mov	dptr,#_PWMA_PSCRL
	mov	a,r3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:470: PWMA_ARRH = reloadValue >> 8;
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_PWMA_ARRH
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:471: PWMA_ARRL = reloadValue;
	mov	dptr,#_PWMA_ARRL
	mov	a,r3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:472: PWMA_SMCR = slaveMode;
	mov	dptr,#_PWMA_SMCR
	mov	a,r7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:473: PWMA_RCR = repeatCount;
	mov	dptr,#_pwmConfigureCounter_PARM_6
	movx	a,@dptr
	mov	dptr,#_PWMA_RCR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:474: PWMA_CR1 = cr1;
	mov	dptr,#_PWMA_CR1
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:475: PWMA_IER = (PWMA_IER & ~(M_COMIE | M_UIE)) | ier;
	mov	dptr,#_PWMA_IER
	movx	a,@dptr
	anl	a,#0xde
	orl	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:476: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:479: case PWM_COUNTER_B:
	sjmp	00123$
00122$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:480: PWMB_PSCRH = prescaler >> 8;
	mov	dptr,#_pwmConfigureCounter_prescaler_65536_198
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_PWMB_PSCRH
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:481: PWMB_PSCRL = prescaler;
	mov	dptr,#_PWMB_PSCRL
	mov	a,r3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:482: PWMB_ARRH = reloadValue >> 8;
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_PWMB_ARRH
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:483: PWMB_ARRL = reloadValue;
	mov	dptr,#_PWMB_ARRL
	mov	a,r3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:484: PWMB_SMCR = slaveMode;
	mov	dptr,#_PWMB_SMCR
	mov	a,r7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:485: PWMB_RCR = repeatCount;
	mov	dptr,#_pwmConfigureCounter_PARM_6
	movx	a,@dptr
	mov	dptr,#_PWMB_RCR
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:486: PWMB_CR1 = cr1;
	mov	dptr,#_PWMB_CR1
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:487: PWMB_IER = (PWMB_IER & ~(M_COMIE | M_UIE)) | ier;
	mov	dptr,#_PWMB_IER
	movx	a,@dptr
	anl	a,#0xde
	orl	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:490: }
00123$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:492: return reloadValue + 1;
	mov	dptr,#_pwmConfigureCounter_reloadValue_65536_198
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00217$
	inc	r7
00217$:
	mov	dpl,r6
	mov	dph,r7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:493: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmEnableMainOutput'
;------------------------------------------------------------
;counter                   Allocated with name '_pwmEnableMainOutput_counter_65536_206'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:495: void pwmEnableMainOutput(PWM_Counter counter) {
;	-----------------------------------------
;	 function pwmEnableMainOutput
;	-----------------------------------------
_pwmEnableMainOutput:
	mov	a,dpl
	mov	dptr,#_pwmEnableMainOutput_counter_65536_206
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:496: switch (counter) {
	movx	a,@dptr
	mov	r7,a
	jz	00101$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:497: case PWM_COUNTER_A:
	cjne	r7,#0x01,00104$
	sjmp	00102$
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:498: PWMA_BKR |= M_MOE;
	mov	dptr,#_PWMA_BKR
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:499: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:502: case PWM_COUNTER_B:
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:503: PWMB_BKR |= M_MOE;
	mov	dptr,#_PWMB_BKR
	movx	a,@dptr
	orl	acc,#0x80
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:506: }
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:507: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmEnableCounter'
;------------------------------------------------------------
;counter                   Allocated with name '_pwmEnableCounter_counter_65536_209'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:509: void pwmEnableCounter(PWM_Counter counter) {
;	-----------------------------------------
;	 function pwmEnableCounter
;	-----------------------------------------
_pwmEnableCounter:
	mov	a,dpl
	mov	dptr,#_pwmEnableCounter_counter_65536_209
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:510: switch (counter) {
	movx	a,@dptr
	mov	r7,a
	jz	00101$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:511: case PWM_COUNTER_A:
	cjne	r7,#0x01,00104$
	sjmp	00102$
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:512: PWMA_CR1 |= M_CEN;
	mov	dptr,#_PWMA_CR1
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:513: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:516: case PWM_COUNTER_B:
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:517: PWMB_CR1 |= M_CEN;
	mov	dptr,#_PWMB_CR1
	movx	a,@dptr
	orl	acc,#0x01
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:520: }
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:521: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'enableChannelInterrupt'
;------------------------------------------------------------
;channel                   Allocated with name '_enableChannelInterrupt_channel_65536_212'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:586: static void enableChannelInterrupt(PWM_Channel channel) {
;	-----------------------------------------
;	 function enableChannelInterrupt
;	-----------------------------------------
_enableChannelInterrupt:
	mov	a,dpl
	mov	dptr,#_enableChannelInterrupt_channel_65536_212
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:588: if (channel < PWM_Channel4) {
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00110$
00110$:
	jnc	00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:590: PWMA_IER |= 1 << ((channel >> 1) + 1);
	mov	a,r7
	clr	c
	rrc	a
	inc	a
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00114$
00112$:
	add	a,acc
00114$:
	djnz	b,00112$
	mov	r6,a
	mov	dptr,#_PWMA_IER
	movx	a,@dptr
	orl	a,r6
	movx	@dptr,a
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:593: PWMB_IER |= 1 << (((channel - PWM_Channel4) >> 1) + 1);
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xf8
	mov	r7,a
	mov	a,r6
	addc	a,#0xff
	mov	c,acc.7
	rrc	a
	xch	a,r7
	rrc	a
	xch	a,r7
	mov	a,r7
	inc	a
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00117$
00115$:
	add	a,acc
00117$:
	djnz	b,00115$
	mov	r7,a
	mov	dptr,#_PWMB_IER
	movx	a,@dptr
	orl	a,r7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:596: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmInitialisePWM'
;------------------------------------------------------------
;initialLevel              Allocated with name '_pwmInitialisePWM_PARM_2'
;enableInterrupt           Allocated with name '_pwmInitialisePWM_PARM_3'
;registerUpdateMode        Allocated with name '_pwmInitialisePWM_PARM_4'
;ticks                     Allocated with name '_pwmInitialisePWM_PARM_5'
;channel                   Allocated with name '_pwmInitialisePWM_channel_65536_216'
;ccmr                      Allocated with name '_pwmInitialisePWM_ccmr_65537_218'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:598: void pwmInitialisePWM(
;	-----------------------------------------
;	 function pwmInitialisePWM
;	-----------------------------------------
_pwmInitialisePWM:
	mov	a,dpl
	mov	dptr,#_pwmInitialisePWM_channel_65536_216
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:606: closeChannel(channel);
	movx	a,@dptr
	mov	r7,a
	mov	dpl,a
	push	ar7
	lcall	_closeChannel
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:608: pwmSetDutyCycle(channel, ticks);
	mov	dptr,#_pwmInitialisePWM_PARM_5
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmSetDutyCycle_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmSetDutyCycle
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:611: uint8_t ccmr = (registerUpdateMode == PWM_BUFFERED_UPDATE) ? M_OC_PE : 0;
	mov	dptr,#_pwmInitialisePWM_PARM_4
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00117$
	mov	r6,#0x08
	mov	r7,#0x00
	sjmp	00118$
00117$:
	mov	r6,#0x00
	mov	r7,#0x00
00118$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:613: if (initialLevel == OUTPUT_HIGH) {
	mov	dptr,#_pwmInitialisePWM_PARM_2
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:615: ccmr |= 6 << P_OC_M;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	mov	a,#0x60
	orl	a,r6
	movx	@dptr,a
	sjmp	00103$
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:618: ccmr |= 7 << P_OC_M;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	mov	a,#0x70
	orl	a,r6
	movx	@dptr,a
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:621: switch (channel) {
	mov	dptr,#_pwmInitialisePWM_channel_65536_216
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0e
	jnc	00139$
	ljmp	00112$
00139$:
	mov	a,r7
	add	a,#(00140$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00141$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00140$:
	.db	00104$
	.db	00112$
	.db	00105$
	.db	00112$
	.db	00106$
	.db	00112$
	.db	00107$
	.db	00112$
	.db	00108$
	.db	00112$
	.db	00109$
	.db	00112$
	.db	00110$
	.db	00112$
	.db	00111$
00141$:
	.db	00104$>>8
	.db	00112$>>8
	.db	00105$>>8
	.db	00112$>>8
	.db	00106$>>8
	.db	00112$>>8
	.db	00107$>>8
	.db	00112$>>8
	.db	00108$>>8
	.db	00112$>>8
	.db	00109$>>8
	.db	00112$>>8
	.db	00110$>>8
	.db	00112$>>8
	.db	00111$>>8
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:622: case PWM_Channel0:
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:623: PWMA_CCMR1 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMA_CCMR1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:624: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:626: case PWM_Channel1:
	sjmp	00112$
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:627: PWMA_CCMR2 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMA_CCMR2
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:628: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:631: case PWM_Channel2:
	sjmp	00112$
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:632: PWMA_CCMR3 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMA_CCMR3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:633: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:634: case PWM_Channel3:
	sjmp	00112$
00107$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:635: PWMA_CCMR4 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMA_CCMR4
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:636: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:639: case PWM_Channel4:
	sjmp	00112$
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:640: PWMB_CCMR1 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMB_CCMR1
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:641: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:642: case PWM_Channel5:
	sjmp	00112$
00109$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:643: PWMB_CCMR2 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMB_CCMR2
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:644: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:645: case PWM_Channel6:
	sjmp	00112$
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:646: PWMB_CCMR3 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMB_CCMR3
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:647: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:648: case PWM_Channel7:
	sjmp	00112$
00111$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:649: PWMB_CCMR4 = ccmr;
	mov	dptr,#_pwmInitialisePWM_ccmr_65537_218
	movx	a,@dptr
	mov	dptr,#_PWMB_CCMR4
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:652: }
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:654: channelUsage[channel >> 1] = USAGE_PWM;
	mov	a,r7
	clr	c
	rrc	a
	add	a,#_channelUsage
	mov	dpl,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	dph,a
	mov	a,#0x01
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:656: if (enableInterrupt == ENABLE_INTERRUPT) {
	mov	dptr,#_pwmInitialisePWM_PARM_3
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00115$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:657: enableChannelInterrupt(channel);
	mov	dptr,#_pwmInitialisePWM_channel_65536_216
	movx	a,@dptr
	mov	dpl,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:659: }
	ljmp	_enableChannelInterrupt
00115$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmSetDutyCycle'
;------------------------------------------------------------
;ticks                     Allocated with name '_pwmSetDutyCycle_PARM_2'
;channel                   Allocated with name '_pwmSetDutyCycle_channel_65536_223'
;ticksH                    Allocated with name '_pwmSetDutyCycle_ticksH_65536_224'
;ticksL                    Allocated with name '_pwmSetDutyCycle_ticksL_65536_224'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:738: void pwmSetDutyCycle(PWM_Channel channel, uint16_t ticks) {
;	-----------------------------------------
;	 function pwmSetDutyCycle
;	-----------------------------------------
_pwmSetDutyCycle:
	mov	a,dpl
	mov	dptr,#_pwmSetDutyCycle_channel_65536_223
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:739: uint8_t ticksH = ticks >> 8;
	mov	dptr,#_pwmSetDutyCycle_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:740: uint8_t ticksL = ticks;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:742: switch (channel) {
	mov	dptr,#_pwmSetDutyCycle_channel_65536_223
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0e
	jnc	00116$
	ret
00116$:
	mov	a,r7
	add	a,#(00117$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00117$:
	.db	00101$
	.db	00110$
	.db	00102$
	.db	00110$
	.db	00103$
	.db	00110$
	.db	00104$
	.db	00110$
	.db	00105$
	.db	00110$
	.db	00106$
	.db	00110$
	.db	00107$
	.db	00110$
	.db	00108$
00118$:
	.db	00101$>>8
	.db	00110$>>8
	.db	00102$>>8
	.db	00110$>>8
	.db	00103$>>8
	.db	00110$>>8
	.db	00104$>>8
	.db	00110$>>8
	.db	00105$>>8
	.db	00110$>>8
	.db	00106$>>8
	.db	00110$>>8
	.db	00107$>>8
	.db	00110$>>8
	.db	00108$>>8
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:743: case PWM_Channel0:
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:744: PWMA_CCR1H = ticksH;
	mov	dptr,#_PWMA_CCR1H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:745: PWMA_CCR1L = ticksL;
	mov	dptr,#_PWMA_CCR1L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:746: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:748: case PWM_Channel1:
	ret
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:749: PWMA_CCR2H = ticksH;
	mov	dptr,#_PWMA_CCR2H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:750: PWMA_CCR2L = ticksL;
	mov	dptr,#_PWMA_CCR2L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:751: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:754: case PWM_Channel2:
	ret
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:755: PWMA_CCR3H = ticksH;
	mov	dptr,#_PWMA_CCR3H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:756: PWMA_CCR3L = ticksL;
	mov	dptr,#_PWMA_CCR3L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:757: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:758: case PWM_Channel3:
	ret
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:759: PWMA_CCR4H = ticksH;
	mov	dptr,#_PWMA_CCR4H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:760: PWMA_CCR4L = ticksL;
	mov	dptr,#_PWMA_CCR4L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:761: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:764: case PWM_Channel4:
	ret
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:765: PWMB_CCR1H = ticksH;
	mov	dptr,#_PWMB_CCR1H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:766: PWMB_CCR1L = ticksL;
	mov	dptr,#_PWMB_CCR1L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:767: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:768: case PWM_Channel5:
	ret
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:769: PWMB_CCR2H = ticksH;
	mov	dptr,#_PWMB_CCR2H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:770: PWMB_CCR2L = ticksL;
	mov	dptr,#_PWMB_CCR2L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:771: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:772: case PWM_Channel6:
	ret
00107$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:773: PWMB_CCR3H = ticksH;
	mov	dptr,#_PWMB_CCR3H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:774: PWMB_CCR3L = ticksL;
	mov	dptr,#_PWMB_CCR3L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:775: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:776: case PWM_Channel7:
	ret
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:777: PWMB_CCR4H = ticksH;
	mov	dptr,#_PWMB_CCR4H
	mov	a,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:778: PWMB_CCR4L = ticksL;
	mov	dptr,#_PWMB_CCR4L
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:781: }
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:782: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configureInput'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_configureInput_PARM_2'
;captureEdge               Allocated with name '_configureInput_PARM_3'
;captureSource             Allocated with name '_configureInput_PARM_4'
;filter                    Allocated with name '_configureInput_PARM_5'
;channel                   Allocated with name '_configureInput_channel_65536_226'
;ccmr                      Allocated with name '_configureInput_ccmr_65537_228'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:878: static void configureInput(
;	-----------------------------------------
;	 function configureInput
;	-----------------------------------------
_configureInput:
	mov	a,dpl
	mov	dptr,#_configureInput_channel_65536_226
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:885: applyPinSwitch(channel, pinSwitch);
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configureInput_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_applyPinSwitch_PARM_2
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	lcall	_applyPinSwitch
	pop	ar6
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:886: configurePin(getChannelPin(channel, pinSwitch, 0), GPIO_HIGH_IMPEDANCE_MODE);
	mov	dptr,#_getChannelPin_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_getChannelPin_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_getChannelPin
	mov	r6,dpl
	mov	dptr,#_configurePin_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,r6
	lcall	_configurePin
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:887: uint8_t ccmr = (filter << 4) | captureSource;
	mov	dptr,#_configureInput_PARM_5
	movx	a,@dptr
	swap	a
	anl	a,#0xf0
	mov	r6,a
	mov	dptr,#_configureInput_PARM_4
	movx	a,@dptr
	orl	ar6,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:889: switch (channel) {
	mov	a,r7
	mov	r5,a
	add	a,#0xff - 0x0e
	jnc	00116$
	ljmp	00109$
00116$:
	mov	a,r5
	add	a,#(00117$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r5
	add	a,#(00118$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00117$:
	.db	00101$
	.db	00109$
	.db	00102$
	.db	00109$
	.db	00103$
	.db	00109$
	.db	00104$
	.db	00109$
	.db	00105$
	.db	00109$
	.db	00106$
	.db	00109$
	.db	00107$
	.db	00109$
	.db	00108$
00118$:
	.db	00101$>>8
	.db	00109$>>8
	.db	00102$>>8
	.db	00109$>>8
	.db	00103$>>8
	.db	00109$>>8
	.db	00104$>>8
	.db	00109$>>8
	.db	00105$>>8
	.db	00109$>>8
	.db	00106$>>8
	.db	00109$>>8
	.db	00107$>>8
	.db	00109$>>8
	.db	00108$>>8
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:890: case PWM_Channel0:
00101$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:891: PWMA_CCMR1 = ccmr;
	mov	dptr,#_PWMA_CCMR1
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:892: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:894: case PWM_Channel1:
	sjmp	00109$
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:895: PWMA_CCMR2 = ccmr;
	mov	dptr,#_PWMA_CCMR2
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:896: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:899: case PWM_Channel2:
	sjmp	00109$
00103$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:900: PWMA_CCMR3 = ccmr;
	mov	dptr,#_PWMA_CCMR3
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:901: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:902: case PWM_Channel3:
	sjmp	00109$
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:903: PWMA_CCMR4 = ccmr;
	mov	dptr,#_PWMA_CCMR4
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:904: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:907: case PWM_Channel4:
	sjmp	00109$
00105$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:908: PWMB_CCMR1 = ccmr;
	mov	dptr,#_PWMB_CCMR1
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:909: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:910: case PWM_Channel5:
	sjmp	00109$
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:911: PWMB_CCMR2 = ccmr;
	mov	dptr,#_PWMB_CCMR2
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:912: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:913: case PWM_Channel6:
	sjmp	00109$
00107$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:914: PWMB_CCMR3 = ccmr;
	mov	dptr,#_PWMB_CCMR3
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:915: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:916: case PWM_Channel7:
	sjmp	00109$
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:917: PWMB_CCMR4 = ccmr;
	mov	dptr,#_PWMB_CCMR4
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:920: }
00109$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:922: enableChannel(channel, 0, captureEdge);
	mov	dptr,#_configureInput_channel_65536_226
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_configureInput_PARM_3
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_enableChannel_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_enableChannel_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:923: }
	ljmp	_enableChannel
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmInitialiseQuadratureEncoder'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_2'
;captureEdge               Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_3'
;filter                    Allocated with name '_pwmInitialiseQuadratureEncoder_PARM_4'
;counter                   Allocated with name '_pwmInitialiseQuadratureEncoder_counter_65536_230'
;firstChannel              Allocated with name '_pwmInitialiseQuadratureEncoder_firstChannel_65536_231'
;secondChannel             Allocated with name '_pwmInitialiseQuadratureEncoder_secondChannel_65536_231'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:926: void pwmInitialiseQuadratureEncoder(
;	-----------------------------------------
;	 function pwmInitialiseQuadratureEncoder
;	-----------------------------------------
_pwmInitialiseQuadratureEncoder:
	mov	a,dpl
	mov	dptr,#_pwmInitialiseQuadratureEncoder_counter_65536_230
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:933: PWM_Channel firstChannel = (counter == PWM_COUNTER_A) ? PWM_Channel0 : PWM_Channel4;
	movx	a,@dptr
	mov	r7,a
	jnz	00103$
	mov	r5,a
	mov	r6,a
	sjmp	00104$
00103$:
	mov	r5,#0x08
	mov	r6,#0x00
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:937: PWM_Channel secondChannel = firstChannel + 2;
	mov	ar6,r5
	inc	r6
	inc	r6
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:950: DISABLE_INTERRUPT
	mov	dptr,#_pwmConfigureCounter_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_3
	dec	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_4
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_5
	clr	a
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_6
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_7
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_8
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_9
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_10
	inc	a
	movx	@dptr,a
	mov	dptr,#_pwmConfigureCounter_PARM_11
	clr	a
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	_pwmConfigureCounter
	pop	ar5
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:955: pinSwitch,
	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_2
	movx	a,@dptr
	mov	r4,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:956: captureEdge,
	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_3
	movx	a,@dptr
	mov	r3,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:958: filter
	mov	dptr,#_pwmInitialiseQuadratureEncoder_PARM_4
	movx	a,@dptr
	mov	r2,a
	mov	dptr,#_configureInput_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_5
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r5
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_configureInput
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:966: filter
	mov	dptr,#_configureInput_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_3
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_4
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_5
	mov	a,r2
	movx	@dptr,a
	mov	dpl,r6
	push	ar6
	push	ar5
	lcall	_configureInput
	pop	ar5
	pop	ar6
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:969: channelUsage[firstChannel >> 1] = USAGE_ENCODER;
	mov	a,r5
	clr	c
	rrc	a
	add	a,#_channelUsage
	mov	dpl,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:970: channelUsage[secondChannel >> 1] = USAGE_ENCODER;
	mov	a,r6
	clr	c
	rrc	a
	add	a,#_channelUsage
	mov	dpl,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	dph,a
	mov	a,#0x02
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:973: enableChannelInterrupt(firstChannel);
	mov	dpl,r5
	lcall	_enableChannelInterrupt
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:975: pwmEnableCounter(counter);
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:976: }
	ljmp	_pwmEnableCounter
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmInitialiseCapture'
;------------------------------------------------------------
;pinSwitch                 Allocated with name '_pwmInitialiseCapture_PARM_2'
;captureEdge               Allocated with name '_pwmInitialiseCapture_PARM_3'
;captureSource             Allocated with name '_pwmInitialiseCapture_PARM_4'
;filter                    Allocated with name '_pwmInitialiseCapture_PARM_5'
;reference                 Allocated with name '_pwmInitialiseCapture_PARM_6'
;channel                   Allocated with name '_pwmInitialiseCapture_channel_65536_232'
;channelIndex              Allocated with name '_pwmInitialiseCapture_channelIndex_65537_234'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:979: void pwmInitialiseCapture(
;	-----------------------------------------
;	 function pwmInitialiseCapture
;	-----------------------------------------
_pwmInitialiseCapture:
	mov	a,dpl
	mov	dptr,#_pwmInitialiseCapture_channel_65536_232
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:988: channel, 
	movx	a,@dptr
	mov	r7,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:989: pinSwitch,
	mov	dptr,#_pwmInitialiseCapture_PARM_2
	movx	a,@dptr
	mov	r6,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:990: captureEdge,
	mov	dptr,#_pwmInitialiseCapture_PARM_3
	movx	a,@dptr
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:991: captureSource,
	mov	dptr,#_pwmInitialiseCapture_PARM_4
	movx	a,@dptr
	mov	r4,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:992: filter
	mov	dptr,#_pwmInitialiseCapture_PARM_5
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_configureInput_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_4
	mov	a,r4
	movx	@dptr,a
	mov	dptr,#_configureInput_PARM_5
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r7
	push	ar7
	lcall	_configureInput
	pop	ar7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:995: uint8_t channelIndex = channel >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:996: channelUsage[channelIndex] = USAGE_CAPTURE | reference;
	mov	r6,a
	add	a,#_channelUsage
	mov	r4,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	r5,a
	mov	dptr,#_pwmInitialiseCapture_PARM_6
	movx	a,@dptr
	orl	a,#0x03
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:997: channelLastCount[channelIndex].value = 0UL;
	mov	a,r6
	mov	b,#0x04
	mul	ab
	add	a,#_channelLastCount
	mov	dpl,a
	mov	a,#(_channelLastCount >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:998: enableChannelInterrupt(channel);
	mov	dpl,r7
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:999: }
	ljmp	_enableChannelInterrupt
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmA_isr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_pwmA_isr_sloc0_1_0'
;channel                   Allocated with name '_pwmA_isr_channel_65536_236'
;event                     Allocated with name '_pwmA_isr_event_65536_236'
;channelIndex              Allocated with name '_pwmA_isr_channelIndex_131072_245'
;usage                     Allocated with name '_pwmA_isr_usage_131072_245'
;counter                   Allocated with name '_pwmA_isr_counter_262144_247'
;refIndex                  Allocated with name '_pwmA_isr_refIndex_262145_249'
;channelNewCount           Allocated with name '_pwmA_isr_channelNewCount_262146_252'
;elapsed                   Allocated with name '_pwmA_isr_elapsed_262146_252'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1001: INTERRUPT(pwmA_isr, PWMA_INTERRUPT) {
;	-----------------------------------------
;	 function pwmA_isr
;	-----------------------------------------
_pwmA_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1002: uint8_t channel = 255;
	mov	dptr,#_pwmA_isr_channel_65536_236
	mov	a,#0xff
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1004: uint8_t event = 255;
	mov	dptr,#_pwmA_isr_event_65536_236
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1007: if (PWMA_SR1 & M_CC1IF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.1,00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1008: PWMA_SR1 &= ~M_CC1IF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xfd
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1009: channel = PWM_Channel0;
	mov	dptr,#_pwmA_isr_channel_65536_236
	clr	a
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1013: if (PWMA_SR1 & M_CC2IF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.2,00104$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1014: PWMA_SR1 &= ~M_CC2IF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1015: channel = PWM_Channel1;
	mov	dptr,#_pwmA_isr_channel_65536_236
	mov	a,#0x02
	movx	@dptr,a
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1020: if (PWMA_SR1 & M_CC3IF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.3,00106$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1021: PWMA_SR1 &= ~M_CC3IF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xf7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1022: channel = PWM_Channel2;
	mov	dptr,#_pwmA_isr_channel_65536_236
	mov	a,#0x04
	movx	@dptr,a
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1025: if (PWMA_SR1 & M_CC4IF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.4,00108$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1026: PWMA_SR1 &= ~M_CC4IF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xef
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1027: channel = PWM_Channel3;
	mov	dptr,#_pwmA_isr_channel_65536_236
	mov	a,#0x06
	movx	@dptr,a
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1031: if (PWMA_SR1 & M_TIF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.6,00110$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1032: PWMA_SR1 &= ~M_TIF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xbf
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1034: event = PWM_INTERRUPT_TRIGGER;
	mov	dptr,#_pwmA_isr_event_65536_236
	mov	a,#0x01
	movx	@dptr,a
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1038: if (PWMA_SR1 & M_COMIF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.5,00112$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1039: PWMA_SR1 &= ~M_COMIF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xdf
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1041: event = PWM_INTERRUPT_COM;
	mov	dptr,#_pwmA_isr_event_65536_236
	mov	a,#0x02
	movx	@dptr,a
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1045: if (PWMA_SR1 & M_UIF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.0,00114$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1046: PWMA_SR1 &= ~M_UIF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1048: event = PWM_INTERRUPT_UPDATE;
	mov	dptr,#_pwmA_isr_event_65536_236
	mov	a,#0x03
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1050: counterOverflow[PWM_COUNTER_A]++;
	mov	dptr,#_counterOverflow
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00235$
	inc	r7
00235$:
	mov	dptr,#_counterOverflow
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1053: if (PWMA_SR1 & M_BIF) {
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	jnb	acc.7,00116$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1057: PWMA_SR1 &= ~M_BIF;
	mov	dptr,#_PWMA_SR1
	movx	a,@dptr
	anl	acc,#0x7f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1059: event = PWM_INTERRUPT_FAULT;
	mov	dptr,#_pwmA_isr_event_65536_236
	clr	a
	movx	@dptr,a
00116$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1063: if (channel != 255) {
	mov	dptr,#_pwmA_isr_channel_65536_236
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00237$
	ljmp	00135$
00237$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1064: uint8_t channelIndex = channel >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1065: PWM_ChannelUsage usage = channelUsage[channelIndex];
	mov	r6,a
	add	a,#_channelUsage
	mov	dpl,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1067: switch (usage) {
	cjne	r5,#0x00,00238$
	ljmp	00135$
00238$:
	cjne	r5,#0x01,00239$
	sjmp	00118$
00239$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1071: case USAGE_PWM:
	cjne	r5,#0x02,00120$
	sjmp	00119$
00118$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1072: pwmOnChannelInterrupt(channel, 0);
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1073: break;
	ljmp	00135$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1075: case USAGE_ENCODER:
00119$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1076: pwmOnChannelInterrupt(channel, PWMA_CR1 & M_DIR);
	mov	dptr,#_PWMA_CR1
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x10
	mov	r3,#0x00
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1077: break;
	ljmp	00135$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1079: default: { // Capture
00120$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1081: counter.value = 0;
	mov	dptr,#_pwmA_isr_counter_262144_247
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1083: switch (channel) {
	cjne	r7,#0x00,00241$
	sjmp	00121$
00241$:
	cjne	r7,#0x02,00242$
	sjmp	00122$
00242$:
	cjne	r7,#0x04,00243$
	sjmp	00123$
00243$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1084: case PWM_Channel0:
	cjne	r7,#0x06,00125$
	sjmp	00124$
00121$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1085: counter.byte.high = PWMA_CCR1H;
	mov	dptr,#_PWMA_CCR1H
	movx	a,@dptr
	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1086: counter.byte.low = PWMA_CCR1L;
	mov	dptr,#_PWMA_CCR1L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmA_isr_counter_262144_247
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1087: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1089: case PWM_Channel1:
	sjmp	00125$
00122$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1090: counter.byte.high = PWMA_CCR2H;
	mov	dptr,#_PWMA_CCR2H
	movx	a,@dptr
	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1091: counter.byte.low = PWMA_CCR2L;
	mov	dptr,#_PWMA_CCR2L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmA_isr_counter_262144_247
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1092: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1095: case PWM_Channel2:
	sjmp	00125$
00123$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1096: counter.byte.high = PWMA_CCR3H;
	mov	dptr,#_PWMA_CCR3H
	movx	a,@dptr
	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1097: counter.byte.low = PWMA_CCR3L;
	mov	dptr,#_PWMA_CCR3L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmA_isr_counter_262144_247
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1098: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1099: case PWM_Channel3:
	sjmp	00125$
00124$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1100: counter.byte.high = PWMA_CCR4H;
	mov	dptr,#_PWMA_CCR4H
	movx	a,@dptr
	mov	dptr,#(_pwmA_isr_counter_262144_247 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1101: counter.byte.low = PWMA_CCR4L;
	mov	dptr,#_PWMA_CCR4L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmA_isr_counter_262144_247
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1104: }
00125$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1106: uint8_t refIndex = channelIndex;
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1109: if (usage & PWM_REFERENCE_OTHER_PIN) {
	mov	a,r5
	jnb	acc.4,00132$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1110: switch (channel) {
	mov	dptr,#_pwmA_isr_channel_65536_236
	movx	a,@dptr
	mov	r7,a
	jz	00126$
	cjne	r7,#0x02,00247$
	sjmp	00127$
00247$:
	cjne	r7,#0x04,00248$
	sjmp	00128$
00248$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1111: case PWM_Channel0:
	cjne	r7,#0x06,00132$
	sjmp	00129$
00126$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1112: refIndex = PWM_Channel1 >> 1;
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	mov	a,#0x01
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1113: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1114: case PWM_Channel1:
	sjmp	00132$
00127$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1115: refIndex = PWM_Channel0 >> 1;
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	clr	a
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1116: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1118: case PWM_Channel2:
	sjmp	00132$
00128$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1119: refIndex = PWM_Channel3 >> 1;
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	mov	a,#0x03
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1120: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1121: case PWM_Channel3:
	sjmp	00132$
00129$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1122: refIndex = PWM_Channel2 >> 1;
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	mov	a,#0x02
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1125: }
00132$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1130: channelNewCount.time.overflow = counterOverflow[PWM_COUNTER_A];
	mov	dptr,#_counterOverflow
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_pwmA_isr_channelNewCount_262146_252 + 0x0002)
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1131: channelNewCount.time.counter = counter.value;
	mov	dptr,#_pwmA_isr_counter_262144_247
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1132: elapsed.value = channelNewCount.value - channelLastCount[refIndex].value;
	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
	movx	a,@dptr
	mov	_pwmA_isr_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmA_isr_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmA_isr_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmA_isr_sloc0_1_0 + 3),a
	mov	dptr,#_pwmA_isr_refIndex_262145_249
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_channelLastCount
	mov	dpl,a
	mov	a,#(_channelLastCount >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_pwmA_isr_sloc0_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_pwmA_isr_sloc0_1_0 + 1)
	subb	a,r1
	mov	r1,a
	mov	a,(_pwmA_isr_sloc0_1_0 + 2)
	subb	a,r2
	mov	r2,a
	mov	a,(_pwmA_isr_sloc0_1_0 + 3)
	subb	a,r7
	mov	r7,a
	mov	dptr,#_pwmA_isr_elapsed_262146_252
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1134: channelLastCount[channelIndex].value = channelNewCount.value;
	mov	a,r6
	mov	b,#0x04
	mul	ab
	add	a,#_channelLastCount
	mov	r6,a
	mov	a,#(_channelLastCount >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_pwmA_isr_channelNewCount_262146_252
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1135: pwmOnChannelInterrupt(channel, elapsed.time.overflow);
	mov	dptr,#_pwmA_isr_channel_65536_236
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_pwmA_isr_elapsed_262146_252 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1138: }
00135$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1142: if (event != 255) {
	mov	dptr,#_pwmA_isr_event_65536_236
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00250$
	sjmp	00138$
00250$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1143: pwmOnCounterInterrupt(PWM_COUNTER_A, event);
	mov	dptr,#_pwmOnCounterInterrupt_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_pwmOnCounterInterrupt
00138$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1146: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'pwmB_isr'
;------------------------------------------------------------
;sloc0                     Allocated with name '_pwmB_isr_sloc0_1_0'
;channel                   Allocated with name '_pwmB_isr_channel_65536_255'
;event                     Allocated with name '_pwmB_isr_event_65536_255'
;channelIndex              Allocated with name '_pwmB_isr_channelIndex_131072_264'
;usage                     Allocated with name '_pwmB_isr_usage_131072_264'
;counter                   Allocated with name '_pwmB_isr_counter_262144_266'
;refIndex                  Allocated with name '_pwmB_isr_refIndex_262145_268'
;channelNewCount           Allocated with name '_pwmB_isr_channelNewCount_262146_271'
;elapsed                   Allocated with name '_pwmB_isr_elapsed_262146_271'
;------------------------------------------------------------
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1149: INTERRUPT(pwmB_isr, PWMB_INTERRUPT) {
;	-----------------------------------------
;	 function pwmB_isr
;	-----------------------------------------
_pwmB_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1150: uint8_t channel = 255;
	mov	dptr,#_pwmB_isr_channel_65536_255
	mov	a,#0xff
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1152: uint8_t event = 255;
	mov	dptr,#_pwmB_isr_event_65536_255
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1155: if (PWMB_SR1 & M_CC5IF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.1,00102$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1156: PWMB_SR1 &= ~M_CC5IF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xfd
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1157: channel = PWM_Channel4;
	mov	dptr,#_pwmB_isr_channel_65536_255
	mov	a,#0x08
	movx	@dptr,a
00102$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1160: if (PWMB_SR1 & M_CC6IF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.2,00104$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1161: PWMB_SR1 &= ~M_CC6IF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xfb
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1162: channel = PWM_Channel5;
	mov	dptr,#_pwmB_isr_channel_65536_255
	mov	a,#0x0a
	movx	@dptr,a
00104$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1165: if (PWMB_SR1 & M_CC7IF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.3,00106$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1166: PWMB_SR1 &= ~M_CC7IF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xf7
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1167: channel = PWM_Channel6;
	mov	dptr,#_pwmB_isr_channel_65536_255
	mov	a,#0x0c
	movx	@dptr,a
00106$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1170: if (PWMB_SR1 & M_CC8IF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.4,00108$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1171: PWMB_SR1 &= ~M_CC8IF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xef
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1172: channel = PWM_Channel7;
	mov	dptr,#_pwmB_isr_channel_65536_255
	mov	a,#0x0e
	movx	@dptr,a
00108$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1175: if (PWMB_SR1 & M_TIF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.6,00110$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1176: PWMB_SR1 &= ~M_TIF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xbf
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1178: event = PWM_INTERRUPT_TRIGGER;
	mov	dptr,#_pwmB_isr_event_65536_255
	mov	a,#0x01
	movx	@dptr,a
00110$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1182: if (PWMB_SR1 & M_COMIF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.5,00112$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1183: PWMB_SR1 &= ~M_COMIF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xdf
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1185: event = PWM_INTERRUPT_COM;
	mov	dptr,#_pwmB_isr_event_65536_255
	mov	a,#0x02
	movx	@dptr,a
00112$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1189: if (PWMB_SR1 & M_UIF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.0,00114$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1190: PWMB_SR1 &= ~M_UIF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0xfe
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1192: event = PWM_INTERRUPT_UPDATE;
	mov	dptr,#_pwmB_isr_event_65536_255
	mov	a,#0x03
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1194: counterOverflow[PWM_COUNTER_B]++;
	mov	dptr,#(_counterOverflow + 0x0002)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	r6
	cjne	r6,#0x00,00235$
	inc	r7
00235$:
	mov	dptr,#(_counterOverflow + 0x0002)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00114$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1197: if (PWMB_SR1 & M_BIF) {
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	jnb	acc.7,00116$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1201: PWMB_SR1 &= ~M_BIF;
	mov	dptr,#_PWMB_SR1
	movx	a,@dptr
	anl	acc,#0x7f
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1203: event = PWM_INTERRUPT_FAULT;
	mov	dptr,#_pwmB_isr_event_65536_255
	clr	a
	movx	@dptr,a
00116$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1207: if (channel != 255) {
	mov	dptr,#_pwmB_isr_channel_65536_255
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00237$
	ljmp	00135$
00237$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1208: uint8_t channelIndex = channel >> 1;
	mov	a,r7
	clr	c
	rrc	a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1209: PWM_ChannelUsage usage = channelUsage[channelIndex];
	mov	r6,a
	add	a,#_channelUsage
	mov	dpl,a
	clr	a
	addc	a,#(_channelUsage >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1211: switch (usage) {
	cjne	r5,#0x00,00238$
	ljmp	00135$
00238$:
	cjne	r5,#0x01,00239$
	sjmp	00118$
00239$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1215: case USAGE_PWM:
	cjne	r5,#0x02,00120$
	sjmp	00119$
00118$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1216: pwmOnChannelInterrupt(channel, 0);
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1217: break;
	ljmp	00135$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1219: case USAGE_ENCODER:
00119$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1220: pwmOnChannelInterrupt(channel, PWMB_CR1 & M_DIR);
	mov	dptr,#_PWMB_CR1
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x10
	mov	r3,#0x00
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1221: break;
	ljmp	00135$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1223: default: { // Capture
00120$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1225: counter.value = 0;
	mov	dptr,#_pwmB_isr_counter_262144_266
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1227: switch (channel) {
	cjne	r7,#0x08,00241$
	sjmp	00121$
00241$:
	cjne	r7,#0x0a,00242$
	sjmp	00122$
00242$:
	cjne	r7,#0x0c,00243$
	sjmp	00123$
00243$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1228: case PWM_Channel4:
	cjne	r7,#0x0e,00125$
	sjmp	00124$
00121$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1229: counter.byte.high = PWMB_CCR1H;
	mov	dptr,#_PWMB_CCR1H
	movx	a,@dptr
	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1230: counter.byte.low = PWMB_CCR1L;
	mov	dptr,#_PWMB_CCR1L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmB_isr_counter_262144_266
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1231: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1232: case PWM_Channel5:
	sjmp	00125$
00122$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1233: counter.byte.high = PWMB_CCR2H;
	mov	dptr,#_PWMB_CCR2H
	movx	a,@dptr
	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1234: counter.byte.low = PWMB_CCR2L;
	mov	dptr,#_PWMB_CCR2L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmB_isr_counter_262144_266
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1235: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1236: case PWM_Channel6:
	sjmp	00125$
00123$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1237: counter.byte.high = PWMB_CCR3H;
	mov	dptr,#_PWMB_CCR3H
	movx	a,@dptr
	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1238: counter.byte.low = PWMB_CCR3L;
	mov	dptr,#_PWMB_CCR3L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmB_isr_counter_262144_266
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1239: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1240: case PWM_Channel7:
	sjmp	00125$
00124$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1241: counter.byte.high = PWMB_CCR4H;
	mov	dptr,#_PWMB_CCR4H
	movx	a,@dptr
	mov	dptr,#(_pwmB_isr_counter_262144_266 + 0x0001)
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1242: counter.byte.low = PWMB_CCR4L;
	mov	dptr,#_PWMB_CCR4L
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmB_isr_counter_262144_266
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1244: }
00125$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1246: uint8_t refIndex = channelIndex;
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	mov	a,r6
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1248: if (usage & PWM_REFERENCE_OTHER_PIN) {
	mov	a,r5
	jnb	acc.4,00132$
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1249: switch (channel) {
	mov	dptr,#_pwmB_isr_channel_65536_255
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00246$
	sjmp	00126$
00246$:
	cjne	r7,#0x0a,00247$
	sjmp	00127$
00247$:
	cjne	r7,#0x0c,00248$
	sjmp	00128$
00248$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1250: case PWM_Channel4:
	cjne	r7,#0x0e,00132$
	sjmp	00129$
00126$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1251: refIndex = PWM_Channel5 >> 1;
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	mov	a,#0x05
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1252: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1253: case PWM_Channel5:
	sjmp	00132$
00127$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1254: refIndex = PWM_Channel4 >> 1;
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	mov	a,#0x04
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1255: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1256: case PWM_Channel6:
	sjmp	00132$
00128$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1257: refIndex = PWM_Channel7 >> 1;
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	mov	a,#0x07
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1258: break;
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1259: case PWM_Channel7:
	sjmp	00132$
00129$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1260: refIndex = PWM_Channel6 >> 1;
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	mov	a,#0x06
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1262: }
00132$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1266: channelNewCount.time.overflow = counterOverflow[PWM_COUNTER_B];
	mov	dptr,#(_counterOverflow + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_pwmB_isr_channelNewCount_262146_271 + 0x0002)
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1267: channelNewCount.time.counter = counter.value;
	mov	dptr,#_pwmB_isr_counter_262144_266
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
	mov	a,r5
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1268: elapsed.value = channelNewCount.value - channelLastCount[refIndex].value;
	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
	movx	a,@dptr
	mov	_pwmB_isr_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmB_isr_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmB_isr_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_pwmB_isr_sloc0_1_0 + 3),a
	mov	dptr,#_pwmB_isr_refIndex_262145_268
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_channelLastCount
	mov	dpl,a
	mov	a,#(_channelLastCount >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,_pwmB_isr_sloc0_1_0
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,(_pwmB_isr_sloc0_1_0 + 1)
	subb	a,r1
	mov	r1,a
	mov	a,(_pwmB_isr_sloc0_1_0 + 2)
	subb	a,r2
	mov	r2,a
	mov	a,(_pwmB_isr_sloc0_1_0 + 3)
	subb	a,r7
	mov	r7,a
	mov	dptr,#_pwmB_isr_elapsed_262146_271
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1270: channelLastCount[channelIndex].value = channelNewCount.value;
	mov	a,r6
	mov	b,#0x04
	mul	ab
	add	a,#_channelLastCount
	mov	r6,a
	mov	a,#(_channelLastCount >> 8)
	addc	a,b
	mov	r7,a
	mov	dptr,#_pwmB_isr_channelNewCount_262146_271
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1271: pwmOnChannelInterrupt(channel, elapsed.time.overflow);
	mov	dptr,#_pwmB_isr_channel_65536_255
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_pwmB_isr_elapsed_262146_271 + 0x0002)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_pwmOnChannelInterrupt_PARM_2
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	lcall	_pwmOnChannelInterrupt
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1274: }
00135$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1278: if (event != 255) {
	mov	dptr,#_pwmB_isr_event_65536_255
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xff,00250$
	sjmp	00138$
00250$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1279: pwmOnCounterInterrupt(PWM_COUNTER_B, event);
	mov	dptr,#_pwmOnCounterInterrupt_PARM_2
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_pwmOnCounterInterrupt
00138$:
;	/home/mr-a-717/.stc/uni-stc/hal/advpwm-hal.c:1282: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
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
___channelPinConfigurations:
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x54	; 84	'T'
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x17	; 23
	.db #0x54	; 84	'T'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x34	; 52	'4'
	.db #0x33	; 51	'3'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
___triggerPinConfigurations:
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x41	; 65	'A'
	.db #0x06	; 6
	.db #0x73	; 115	's'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
___faultPinConfigurations:
	.db #0x35	; 53	'5'
	.db #0x35	; 53	'5'
	.db #0x99	; 153
	.db #0x99	; 153
	.area XINIT   (CODE)
__xinit__channelUsage:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__counterOverflow:
	.byte #0x00, #0x00	; 0
	.byte #0x00, #0x00	; 0
	.area CABS    (ABS,CODE)
