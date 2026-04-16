.386p
	externdef gf1_voice_init_:byte
DGROUP group _DATA, _GF1INIT
_DATA	segment word public use32 'DATA'
block0:
	public _gf1_voice_init_data
_gf1_voice_init_data:
	db 000h
_DATA	ends
_GF1INIT	segment word public use32 'DATA'
block1:
	public gf1_InitVoice
gf1_InitVoice:
	db 000h,000h
	dd gf1_voice_init_
_GF1INIT	ends
	end
