;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module display
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SSD1306_DrawString
	.globl _SSD1306_SetPosition
	.globl _SSD1306_UpdateScreen
	.globl _SSD1306_ClearScreen
	.globl _get_stepper_state
	.globl _sprintf
	.globl _printf
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
	.globl _step_control_page_options_last
	.globl _menu_page_selected_page
	.globl _display_step_control_set_steps_option_PARM_2
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
	.globl _stepper_state_last
	.globl _display_welcome_page
	.globl _display_menu_page
	.globl _display_step_control_page_first_time
	.globl _display_step_control_page
	.globl _display_distance_control_page_first_time
	.globl _display_encoder_control_page_first_time
	.globl _display_update_stepper_dir
	.globl _display_update_stepper_enable
	.globl _display_step_control_set_steps_option
	.globl _display_step_control_set_microstepping_option
	.globl _display_step_control_set_frequency_option
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
_display_step_control_set_steps_option_sloc0_1_0:
	.ds 2
_display_step_control_set_steps_option_sloc1_1_0:
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
_stepper_state_last::
	.ds 1
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
_display_menu_page_selected_page_65536_150:
	.ds 1
_display_step_control_page_step_control_page_options_65536_156:
	.ds 1
_display_update_stepper_dir_stepper_direction_65536_169:
	.ds 1
_display_update_stepper_enable_stepper_enable_status_65536_173:
	.ds 1
_display_step_control_set_steps_option_PARM_2:
	.ds 1
_display_step_control_set_steps_option_float_digits_65536_177:
	.ds 3
_display_step_control_set_steps_option_buffer_65537_179:
	.ds 20
_display_step_control_set_microstepping_option_encoder_value_65536_181:
	.ds 2
_display_step_control_set_microstepping_option_buffer_65537_183:
	.ds 5
_display_step_control_set_frequency_option_encoder_value_65536_184:
	.ds 2
_display_step_control_set_frequency_option_buffer_65537_186:
	.ds 5
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_menu_page_selected_page::
	.ds 1
_step_control_page_options_last::
	.ds 1
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
;	display.c:99: __bit stepper_state_last = 0;
;	assignBit
	clr	_stepper_state_last
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
;Allocation info for local variables in function 'display_welcome_page'
;------------------------------------------------------------
;	display.c:4: void display_welcome_page(void) {
;	-----------------------------------------
;	 function display_welcome_page
;	-----------------------------------------
_display_welcome_page:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	display.c:5: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:6: SSD1306_SetPosition(1, 1);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:7: SSD1306_DrawString("      Bipolar");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:8: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:9: SSD1306_DrawString("   Stepper Motor");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:10: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:11: SSD1306_DrawString("     Controller");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:12: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:13: SSD1306_DrawString("        V1.0");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:15: SSD1306_SetPosition(1, 6);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:16: SSD1306_DrawString("       Press..");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:18: SSD1306_UpdateScreen();
;	display.c:19: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_menu_page'
;------------------------------------------------------------
;selected_page             Allocated with name '_display_menu_page_selected_page_65536_150'
;------------------------------------------------------------
;	display.c:23: void display_menu_page(menu_page_selected_page_t selected_page) {
;	-----------------------------------------
;	 function display_menu_page
;	-----------------------------------------
_display_menu_page:
	mov	a,dpl
	mov	dptr,#_display_menu_page_selected_page_65536_150
	movx	@dptr,a
;	display.c:24: if(menu_page_selected_page != selected_page) {
	mov	dptr,#_menu_page_selected_page
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_display_menu_page_selected_page_65536_150
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00126$
	ret
00126$:
;	display.c:25: menu_page_selected_page = selected_page;
	mov	dptr,#_menu_page_selected_page
	mov	a,r6
	movx	@dptr,a
;	display.c:27: SSD1306_ClearScreen();
	push	ar6
	lcall	_SSD1306_ClearScreen
;	display.c:28: SSD1306_SetPosition(1, 0);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:29: SSD1306_DrawString("      Main Menu");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_SSD1306_DrawString
	pop	ar6
;	display.c:31: switch(selected_page) {
	cjne	r6,#0x00,00127$
	sjmp	00101$
00127$:
	cjne	r6,#0x01,00128$
	sjmp	00102$
00128$:
	cjne	r6,#0x02,00129$
	ljmp	00103$
00129$:
	ljmp	00104$
;	display.c:33: case STEP_CONTROL_PAGE_SELECTED:
00101$:
;	display.c:34: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:35: SSD1306_DrawString("> Step Control");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:36: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:37: SSD1306_DrawString("  Distance Control");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:38: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:39: SSD1306_DrawString("  Encoder Control");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:40: break;
	ljmp	_SSD1306_UpdateScreen
;	display.c:42: case DISTANCE_CONTROL_PAGE_SELECTED:
00102$:
;	display.c:43: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:44: SSD1306_DrawString("  Step Control");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:45: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:46: SSD1306_DrawString("> Distance Control");
	mov	dptr,#___str_10
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:47: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:48: SSD1306_DrawString("  Encoder Control");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:49: break;
	ljmp	_SSD1306_UpdateScreen
;	display.c:51: case ENCODER_CONTROL_PAGE_SELECTED:
00103$:
;	display.c:52: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:53: SSD1306_DrawString("  Step Control");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:54: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:55: SSD1306_DrawString("  Distance Control");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:56: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:57: SSD1306_DrawString("> Encoder Control");
	mov	dptr,#___str_11
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:58: break;
;	display.c:60: default:
	sjmp	00105$
00104$:
;	display.c:61: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:62: SSD1306_DrawString("  Step Control");
	mov	dptr,#___str_9
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:63: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:64: SSD1306_DrawString("  Distance Control");
	mov	dptr,#___str_7
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:65: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:66: SSD1306_DrawString("  Encoder Control");
	mov	dptr,#___str_8
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:71: } 
00105$:
;	display.c:72: SSD1306_UpdateScreen();
;	display.c:74: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_step_control_page_first_time'
;------------------------------------------------------------
;	display.c:76: void display_step_control_page_first_time(void) {
;	-----------------------------------------
;	 function display_step_control_page_first_time
;	-----------------------------------------
_display_step_control_page_first_time:
;	display.c:78: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:79: SSD1306_SetPosition(1, 0);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:80: SSD1306_DrawString("     Step Control");
	mov	dptr,#___str_12
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:81: SSD1306_SetPosition(1, 1);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:82: SSD1306_DrawString("Dir: CCW         FREE");
	mov	dptr,#___str_13
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:83: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:84: SSD1306_DrawString("> Frequency");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:85: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:86: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:87: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:88: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:89: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:90: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:93: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:94: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:96: SSD1306_UpdateScreen();
;	display.c:97: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_step_control_page'
;------------------------------------------------------------
;step_control_page_options Allocated with name '_display_step_control_page_step_control_page_options_65536_156'
;------------------------------------------------------------
;	display.c:101: void display_step_control_page(step_control_page_options_t step_control_page_options) {
;	-----------------------------------------
;	 function display_step_control_page
;	-----------------------------------------
_display_step_control_page:
	mov	a,dpl
	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
	movx	@dptr,a
;	display.c:102: if(step_control_page_options_last != step_control_page_options) {
	mov	dptr,#_step_control_page_options_last
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00140$
	ljmp	00109$
00140$:
;	display.c:103: step_control_page_options_last = step_control_page_options;
	mov	dptr,#_step_control_page_options_last
	mov	a,r6
	movx	@dptr,a
;	display.c:104: switch(step_control_page_options) {
	mov	a,r6
	mov	r7,a
	add	a,#0xff - 0x04
	jnc	00141$
	ljmp	00106$
00141$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00142$
	jmp	@a+dptr
00142$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
;	display.c:106: case SET_FREQUENCY_OPTION:
00101$:
;	display.c:107: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:108: SSD1306_DrawString("> Frequency");
	mov	dptr,#___str_14
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:109: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:110: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:111: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:112: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:113: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:114: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:115: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:116: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:117: break;
	ljmp	00107$
;	display.c:119: case SET_MICROSTEPPING_OPTION:
00102$:
;	display.c:120: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:121: SSD1306_DrawString("  Frequency");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:122: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:123: SSD1306_DrawString("> Microstepping");
	mov	dptr,#___str_20
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:124: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:125: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:126: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:127: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:128: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:129: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:130: break;
	ljmp	00107$
;	display.c:132: case SET_STEPS:
00103$:
;	display.c:133: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:134: SSD1306_DrawString("  Frequency");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:135: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:136: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:137: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:138: SSD1306_DrawString("> Steps");
	mov	dptr,#___str_21
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:139: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:140: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:141: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:142: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:144: break;
	ljmp	00107$
;	display.c:146: case GO_BACK:
00104$:
;	display.c:147: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:148: SSD1306_DrawString("  Frequency");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:149: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:150: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:151: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:152: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:153: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:154: SSD1306_DrawString("> Go Back");
	mov	dptr,#___str_22
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:155: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:156: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:157: break;
	ljmp	00107$
;	display.c:159: case RUN:
00105$:
;	display.c:160: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:161: SSD1306_DrawString("  Frequency");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:162: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:163: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:164: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:165: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:166: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:167: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:168: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:169: SSD1306_DrawString(">        Run         ");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:170: break;
;	display.c:172: default:
	sjmp	00107$
00106$:
;	display.c:173: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:174: SSD1306_DrawString("  Frequency");
	mov	dptr,#___str_19
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:175: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:176: SSD1306_DrawString("  Microstepping");
	mov	dptr,#___str_15
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:177: SSD1306_SetPosition(1, 4);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x04
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:178: SSD1306_DrawString("  Steps");
	mov	dptr,#___str_16
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:179: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:180: SSD1306_DrawString("  Go Back");
	mov	dptr,#___str_17
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:181: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:182: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:187: }
00107$:
;	display.c:188: SSD1306_UpdateScreen();
	lcall	_SSD1306_UpdateScreen
00109$:
;	display.c:192: __bit stepper_state_now = get_stepper_state();
	lcall	_get_stepper_state
	clr	a
	rlc	a
	mov	r7,a
;	display.c:193: if(stepper_state_last != stepper_state_now) {
	mov	c,_stepper_state_last
	clr	a
	rlc	a
	cjne	a,ar7,00143$
	ret
00143$:
;	display.c:194: printf("hapnd\n");
	push	ar7
	mov	a,#___str_24
	push	acc
	mov	a,#(___str_24 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
	pop	ar7
;	display.c:195: stepper_state_last = stepper_state_now;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_stepper_state_last,c
;	display.c:196: SSD1306_SetPosition(1, 7);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x01
	push	ar7
	lcall	_SSD1306_SetPosition
	pop	ar7
;	display.c:198: if(stepper_state_now) {
	mov	a,r7
	jz	00114$
;	display.c:199: SSD1306_DrawString("*********Run*********");
	mov	dptr,#___str_25
	mov	b,#0x80
	lcall	_SSD1306_DrawString
	sjmp	00115$
00114$:
;	display.c:201: } else if (step_control_page_options == RUN){
	mov	dptr,#_display_step_control_page_step_control_page_options_65536_156
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00111$
;	display.c:202: SSD1306_DrawString(">        Run         ");
	mov	dptr,#___str_23
	mov	b,#0x80
	lcall	_SSD1306_DrawString
	sjmp	00115$
00111$:
;	display.c:205: SSD1306_DrawString("         Run         ");
	mov	dptr,#___str_18
	mov	b,#0x80
	lcall	_SSD1306_DrawString
00115$:
;	display.c:207: SSD1306_UpdateScreen();
;	display.c:209: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_distance_control_page_first_time'
;------------------------------------------------------------
;	display.c:211: void display_distance_control_page_first_time(void) {
;	-----------------------------------------
;	 function display_distance_control_page_first_time
;	-----------------------------------------
_display_distance_control_page_first_time:
;	display.c:212: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:213: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:214: SSD1306_DrawString("   Not Implemented");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:216: SSD1306_UpdateScreen();
;	display.c:217: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_encoder_control_page_first_time'
;------------------------------------------------------------
;	display.c:219: void display_encoder_control_page_first_time(void) {
;	-----------------------------------------
;	 function display_encoder_control_page_first_time
;	-----------------------------------------
_display_encoder_control_page_first_time:
;	display.c:220: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:221: SSD1306_SetPosition(1, 3);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x03
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:222: SSD1306_DrawString("   Not Implemented");
	mov	dptr,#___str_26
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:224: SSD1306_UpdateScreen();
;	display.c:225: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_update_stepper_dir'
;------------------------------------------------------------
;stepper_direction         Allocated with name '_display_update_stepper_dir_stepper_direction_65536_169'
;------------------------------------------------------------
;	display.c:227: void display_update_stepper_dir(stepper_direction_t stepper_direction) {
;	-----------------------------------------
;	 function display_update_stepper_dir
;	-----------------------------------------
_display_update_stepper_dir:
	mov	a,dpl
	mov	dptr,#_display_update_stepper_dir_stepper_direction_65536_169
	movx	@dptr,a
;	display.c:228: SSD1306_SetPosition(31, 1);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x1f
	lcall	_SSD1306_SetPosition
;	display.c:229: if (stepper_direction) {
	mov	dptr,#_display_update_stepper_dir_stepper_direction_65536_169
	movx	a,@dptr
	jz	00102$
;	display.c:230: SSD1306_DrawString("CW ");
	mov	dptr,#___str_27
	mov	b,#0x80
	lcall	_SSD1306_DrawString
	sjmp	00103$
00102$:
;	display.c:232: SSD1306_DrawString("CCW");
	mov	dptr,#___str_28
	mov	b,#0x80
	lcall	_SSD1306_DrawString
00103$:
;	display.c:234: SSD1306_UpdateScreen();
;	display.c:235: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_update_stepper_enable'
;------------------------------------------------------------
;stepper_enable_status     Allocated with name '_display_update_stepper_enable_stepper_enable_status_65536_173'
;------------------------------------------------------------
;	display.c:237: void display_update_stepper_enable(stepper_enable_status_t stepper_enable_status) {
;	-----------------------------------------
;	 function display_update_stepper_enable
;	-----------------------------------------
_display_update_stepper_enable:
	mov	a,dpl
	mov	dptr,#_display_update_stepper_enable_stepper_enable_status_65536_173
	movx	@dptr,a
;	display.c:238: SSD1306_SetPosition(103, 1);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x67
	lcall	_SSD1306_SetPosition
;	display.c:239: if (stepper_enable_status) {
	mov	dptr,#_display_update_stepper_enable_stepper_enable_status_65536_173
	movx	a,@dptr
	jz	00102$
;	display.c:240: SSD1306_DrawString("FREE");
	mov	dptr,#___str_29
	mov	b,#0x80
	lcall	_SSD1306_DrawString
	sjmp	00103$
00102$:
;	display.c:242: SSD1306_DrawString("HOLD");
	mov	dptr,#___str_30
	mov	b,#0x80
	lcall	_SSD1306_DrawString
00103$:
;	display.c:244: SSD1306_UpdateScreen();
;	display.c:246: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_step_control_set_steps_option'
;------------------------------------------------------------
;sloc0                     Allocated with name '_display_step_control_set_steps_option_sloc0_1_0'
;sloc1                     Allocated with name '_display_step_control_set_steps_option_sloc1_1_0'
;float_digit_pointer       Allocated with name '_display_step_control_set_steps_option_PARM_2'
;float_digits              Allocated with name '_display_step_control_set_steps_option_float_digits_65536_177'
;buffer                    Allocated with name '_display_step_control_set_steps_option_buffer_65537_179'
;------------------------------------------------------------
;	display.c:248: void display_step_control_set_steps_option(uint8_t* float_digits, float_digit_pointer_t float_digit_pointer) {
;	-----------------------------------------
;	 function display_step_control_set_steps_option
;	-----------------------------------------
_display_step_control_set_steps_option:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_display_step_control_set_steps_option_float_digits_65536_177
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	display.c:249: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:250: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:251: SSD1306_DrawString("Setting Steps:");
	mov	dptr,#___str_31
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:255: sprintf(buffer, "      %d%d%d.%d%d", float_digits[0], float_digits[1], float_digits[2], float_digits[3], float_digits[4]);
	mov	dptr,#_display_step_control_set_steps_option_float_digits_65536_177
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	r4,#0x00
	mov	a,#0x03
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	_display_step_control_set_steps_option_sloc0_1_0,r0
;	1-genFromRTrack replaced	mov	(_display_step_control_set_steps_option_sloc0_1_0 + 1),#0x00
	mov	(_display_step_control_set_steps_option_sloc0_1_0 + 1),r4
	mov	a,#0x02
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	_display_step_control_set_steps_option_sloc1_1_0,r0
;	1-genFromRTrack replaced	mov	(_display_step_control_set_steps_option_sloc1_1_0 + 1),#0x00
	mov	(_display_step_control_set_steps_option_sloc1_1_0 + 1),r4
	mov	a,#0x01
	add	a,r5
	mov	r0,a
	clr	a
	addc	a,r6
	mov	r1,a
	mov	ar3,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	r3,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	push	ar2
	push	ar4
	push	_display_step_control_set_steps_option_sloc0_1_0
	push	(_display_step_control_set_steps_option_sloc0_1_0 + 1)
	push	_display_step_control_set_steps_option_sloc1_1_0
	push	(_display_step_control_set_steps_option_sloc1_1_0 + 1)
	push	ar0
	push	ar3
	push	ar5
	push	ar7
	mov	a,#___str_32
	push	acc
	mov	a,#(___str_32 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf0
	mov	sp,a
;	display.c:256: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:257: SSD1306_DrawString(buffer);
	mov	dptr,#_display_step_control_set_steps_option_buffer_65537_179
	mov	b,#0x00
	lcall	_SSD1306_DrawString
;	display.c:260: switch (float_digit_pointer) {
	mov	dptr,#_display_step_control_set_steps_option_PARM_2
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x04
	jnc	00113$
	ljmp	00106$
00113$:
	mov	a,r7
	add	a,r7
	add	a,r7
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
;	display.c:261: case HUNDREDS:
00101$:
;	display.c:262: sprintf(buffer, "      ^");
	mov	a,#___str_33
	push	acc
	mov	a,#(___str_33 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	display.c:263: break;
	ljmp	00106$
;	display.c:265: case TENS:
00102$:
;	display.c:266: sprintf(buffer, "       ^");
	mov	a,#___str_34
	push	acc
	mov	a,#(___str_34 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	display.c:267: break;
;	display.c:269: case ONES:
	sjmp	00106$
00103$:
;	display.c:270: sprintf(buffer, "        ^");
	mov	a,#___str_35
	push	acc
	mov	a,#(___str_35 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	display.c:271: break;
;	display.c:273: case TENTH:
	sjmp	00106$
00104$:
;	display.c:274: sprintf(buffer, "          ^");
	mov	a,#___str_36
	push	acc
	mov	a,#(___str_36 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	display.c:275: break;
;	display.c:277: case HUNDREDTH:
	sjmp	00106$
00105$:
;	display.c:278: sprintf(buffer, "           ^");
	mov	a,#___str_37
	push	acc
	mov	a,#(___str_37 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_steps_option_buffer_65537_179
	push	acc
	mov	a,#(_display_step_control_set_steps_option_buffer_65537_179 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xfa
	mov	sp,a
;	display.c:281: }
00106$:
;	display.c:282: SSD1306_SetPosition(1, 6);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:283: SSD1306_DrawString(buffer);
	mov	dptr,#_display_step_control_set_steps_option_buffer_65537_179
	mov	b,#0x00
	lcall	_SSD1306_DrawString
;	display.c:285: SSD1306_UpdateScreen();
;	display.c:286: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_step_control_set_microstepping_option'
;------------------------------------------------------------
;encoder_value             Allocated with name '_display_step_control_set_microstepping_option_encoder_value_65536_181'
;buffer                    Allocated with name '_display_step_control_set_microstepping_option_buffer_65537_183'
;------------------------------------------------------------
;	display.c:288: void display_step_control_set_microstepping_option(int16_t encoder_value) {
;	-----------------------------------------
;	 function display_step_control_set_microstepping_option
;	-----------------------------------------
_display_step_control_set_microstepping_option:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_display_step_control_set_microstepping_option_encoder_value_65536_181
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	display.c:289: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:290: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:291: SSD1306_DrawString("Setting Microstepping:");
	mov	dptr,#___str_38
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:294: sprintf(buffer,    "      %d", encoder_value);
	mov	dptr,#_display_step_control_set_microstepping_option_encoder_value_65536_181
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_microstepping_option_buffer_65537_183
	push	acc
	mov	a,#(_display_step_control_set_microstepping_option_buffer_65537_183 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	display.c:296: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:297: SSD1306_DrawString(buffer);
	mov	dptr,#_display_step_control_set_microstepping_option_buffer_65537_183
	mov	b,#0x00
	lcall	_SSD1306_DrawString
;	display.c:299: SSD1306_UpdateScreen();
;	display.c:300: }
	ljmp	_SSD1306_UpdateScreen
;------------------------------------------------------------
;Allocation info for local variables in function 'display_step_control_set_frequency_option'
;------------------------------------------------------------
;encoder_value             Allocated with name '_display_step_control_set_frequency_option_encoder_value_65536_184'
;buffer                    Allocated with name '_display_step_control_set_frequency_option_buffer_65537_186'
;------------------------------------------------------------
;	display.c:302: void display_step_control_set_frequency_option(int16_t encoder_value) {
;	-----------------------------------------
;	 function display_step_control_set_frequency_option
;	-----------------------------------------
_display_step_control_set_frequency_option:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_display_step_control_set_frequency_option_encoder_value_65536_184
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	display.c:303: SSD1306_ClearScreen();
	lcall	_SSD1306_ClearScreen
;	display.c:304: SSD1306_SetPosition(1, 2);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:305: SSD1306_DrawString("Setting frequency:");
	mov	dptr,#___str_40
	mov	b,#0x80
	lcall	_SSD1306_DrawString
;	display.c:308: sprintf(buffer,    "      %d", encoder_value);
	mov	dptr,#_display_step_control_set_frequency_option_encoder_value_65536_184
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#___str_39
	push	acc
	mov	a,#(___str_39 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	mov	a,#_display_step_control_set_frequency_option_buffer_65537_186
	push	acc
	mov	a,#(_display_step_control_set_frequency_option_buffer_65537_186 >> 8)
	push	acc
	clr	a
	push	acc
	lcall	_sprintf
	mov	a,sp
	add	a,#0xf8
	mov	sp,a
;	display.c:310: SSD1306_SetPosition(1, 5);
	mov	dptr,#_SSD1306_SetPosition_PARM_2
	mov	a,#0x05
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_SSD1306_SetPosition
;	display.c:311: SSD1306_DrawString(buffer);
	mov	dptr,#_display_step_control_set_frequency_option_buffer_65537_186
	mov	b,#0x00
	lcall	_SSD1306_DrawString
;	display.c:313: SSD1306_UpdateScreen();
;	display.c:314: }
	ljmp	_SSD1306_UpdateScreen
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
	.area CONST   (CODE)
___str_0:
	.ascii "      Bipolar"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "   Stepper Motor"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "     Controller"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "        V1.0"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "       Press.."
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "      Main Menu"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "> Step Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "  Distance Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "  Encoder Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "  Step Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "> Distance Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "> Encoder Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "     Step Control"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "Dir: CCW         FREE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "> Frequency"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_15:
	.ascii "  Microstepping"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_16:
	.ascii "  Steps"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_17:
	.ascii "  Go Back"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_18:
	.ascii "         Run         "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_19:
	.ascii "  Frequency"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_20:
	.ascii "> Microstepping"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_21:
	.ascii "> Steps"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_22:
	.ascii "> Go Back"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_23:
	.ascii ">        Run         "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_24:
	.ascii "hapnd"
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_25:
	.ascii "*********Run*********"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_26:
	.ascii "   Not Implemented"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_27:
	.ascii "CW "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_28:
	.ascii "CCW"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_29:
	.ascii "FREE"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_30:
	.ascii "HOLD"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_31:
	.ascii "Setting Steps:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_32:
	.ascii "      %d%d%d.%d%d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_33:
	.ascii "      ^"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_34:
	.ascii "       ^"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_35:
	.ascii "        ^"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_36:
	.ascii "          ^"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_37:
	.ascii "           ^"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_38:
	.ascii "Setting Microstepping:"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_39:
	.ascii "      %d"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_40:
	.ascii "Setting frequency:"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
__xinit__menu_page_selected_page:
	.db #0x03	; 3
__xinit__step_control_page_options_last:
	.db #0x05	; 5
	.area CABS    (ABS,CODE)
