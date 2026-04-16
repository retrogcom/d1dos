.386p
	externdef gf1_mem_init_:byte
DGROUP group _DATA, _GF1INITS, _GF1INIT, _GF1INITE
_DATA	segment word public use32 'DATA'
block0:
	public _gf1_mem_init_data
_gf1_mem_init_data:
	db 000h
_DATA	ends
_GF1INITS	segment word public use32 'DATA'
block1:
_GF1INITS	ends
_GF1INIT	segment word public use32 'DATA'
	db 000h,000h
	dd gf1_mem_init_
_GF1INIT	ends
_GF1INITE	segment word public use32 'DATA'
block3:
_GF1INITE	ends
	end
