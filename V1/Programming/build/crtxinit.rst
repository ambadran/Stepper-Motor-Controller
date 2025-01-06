                                      1 ;--------------------------------------------------------------------------
                                      2 ;  crtxinit.asm :- C run-time: copy XINIT to XISEG
                                      3 ;
                                      4 ;  Copyright (C) 2004, Erik Petrich
                                      5 ;
                                      6 ;  This library is free software; you can redistribute it and/or modify it
                                      7 ;  under the terms of the GNU General Public License as published by the
                                      8 ;  Free Software Foundation; either version 2, or (at your option) any
                                      9 ;  later version.
                                     10 ;
                                     11 ;  This library is distributed in the hope that it will be useful,
                                     12 ;  but WITHOUT ANY WARRANTY; without even the implied warranty of
                                     13 ;  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
                                     14 ;  GNU General Public License for more details.
                                     15 ;
                                     16 ;  You should have received a copy of the GNU General Public License 
                                     17 ;  along with this library; see the file COPYING. If not, write to the
                                     18 ;  Free Software Foundation, 51 Franklin Street, Fifth Floor, Boston,
                                     19 ;   MA 02110-1301, USA.
                                     20 ;
                                     21 ;  As a special exception, if you link this library with other files,
                                     22 ;  some of which are compiled with SDCC, to produce an executable,
                                     23 ;  this library does not by itself cause the resulting executable to
                                     24 ;  be covered by the GNU General Public License. This exception does
                                     25 ;  not however invalidate any other reasons why the executable file
                                     26 ;  might be covered by the GNU General Public License.
                                     27 ;--------------------------------------------------------------------------
                                     28 
                                     29 	.area CSEG    (CODE)
                                     30 	.area GSINIT0 (CODE)
                                     31 	.area GSINIT1 (CODE)
                                     32 	.area GSINIT2 (CODE)
                                     33 	.area GSINIT3 (CODE)
                                     34 	.area GSINIT4 (CODE)
                                     35 	.area GSINIT5 (CODE)
                                     36 	.area GSINIT  (CODE)
                                     37 	.area GSFINAL (CODE)
                                     38 
                                     39 	.area GSINIT3 (CODE)
                                     40 
                                     41 	.globl _DPS			; assume DPSEL is in DPS bit0
                                     42 
      0000F0                         43 __mcs51_genXINIT::
      0000F0 79 A5            [12]   44 	mov	r1,#l_XINIT
      0000F2 E9               [12]   45 	mov	a,r1
      0000F3 44 00            [12]   46 	orl	a,#(l_XINIT >> 8)
      0000F5 60 1A            [24]   47 	jz	00003$
      0000F7 7A 01            [12]   48 	mov	r2,#((l_XINIT+255) >> 8)
      0000F9 43 E3 01         [24]   49 	orl	_DPS,#0x01		; set DPSEL, select DPTR1
      0000FC 90 7B 8B         [24]   50 	mov	dptr,#s_XINIT		; DPTR1 for code
      0000FF 15 E3            [12]   51 	dec	_DPS			; clear DPSEL, select DPTR0
      000101 90 06 31         [24]   52 	mov	dptr,#s_XISEG		; DPTR0 for xdata
      000104 E4               [12]   53 00001$:	clr	a
      000105 05 E3            [12]   54 	inc	_DPS			; set DPSEL, select DPTR1
      000107 93               [24]   55 	movc	a,@a+dptr
      000108 A3               [24]   56 	inc	dptr
      000109 15 E3            [12]   57 	dec	_DPS			; clear DPSEL, select DPTR0
      00010B F0               [24]   58 	movx	@dptr,a
      00010C A3               [24]   59 	inc	dptr
      00010D D9 F5            [24]   60 	djnz	r1,00001$
      00010F DA F3            [24]   61 	djnz	r2,00001$
      000111                         62 00003$:
