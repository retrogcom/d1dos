.386p
	externdef gf1_timer_init_:byte
DGROUP group _DATA, _GF1INIT
_DATA	segment word public use32 'DATA'
block0:
	public _gf1_timer_init_data
_gf1_timer_init_data:
	db 000h
_DATA	ends
_GF1INIT	segment word public use32 'DATA'
block1:
	public gf1_InitTimer
gf1_InitTimer:
	db 000h,000h
	dd gf1_timer_init_
_GF1INIT	ends
	end
