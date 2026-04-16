.386p
	externdef gf1_note_init_:byte
DGROUP group _DATA, _GF1INIT
_DATA	segment word public use32 'DATA'
block0:
	public _gf1_note_init_data
_gf1_note_init_data:
	db 000h
_DATA	ends
_GF1INIT	segment word public use32 'DATA'
block1:
	public gf1_InitNote
gf1_InitNote:
	db 000h,002h
	dd gf1_note_init_
_GF1INIT	ends
	end
