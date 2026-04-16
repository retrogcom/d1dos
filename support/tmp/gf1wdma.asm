.386p
	externdef gf1_dma_init_:byte
DGROUP group _DATA, _GF1INIT
_DATA	segment dword public use32 'DATA'
block0:
	public _gf1_freq_divisor
_gf1_freq_divisor:
	db 044h,0ach,0c8h,0a0h,0bbh,096h,0ddh,08dh,0fch,085h,0eeh,07eh,096h,078h,0d8h,072h
	db 09fh,06dh,0dbh,068h,07dh,064h,078h,060h,0c2h,05ch,052h,059h,022h,056h,029h,053h
	db 064h,050h,0cch,04dh,05dh,04bh
	public _gf1_dma_init_data
_gf1_dma_init_data:
	db 000h
_DATA	ends
_GF1INIT	segment word public use32 'DATA'
block1:
	public gf1_InitDMA
gf1_InitDMA:
	db 000h,000h
	dd gf1_dma_init_
_GF1INIT	ends
	end
