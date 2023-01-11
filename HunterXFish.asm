;21l-1784 ( MUHAMMAD MEHDY HASNAIN )
;21L-7560 ( SULTAN AHMAD )
bits 16
[org 0x0100]        
 
jmp start


	last_time dd 0

	midi_note_to_freq_table:
			db 014h, 03ah, 015h, 01ah, 0e2h, 0fbh, 060h, 0dfh, 079h, 0c4h, 013h, 0abh, 01bh, 093h, 07bh, 07ch
			db 020h, 067h, 0f8h, 052h, 0f2h, 03fh, 0fdh, 02dh, 00ah, 01dh, 00ah, 00dh, 0f1h, 0fdh, 0b0h, 0efh
			db 03ch, 0e2h, 089h, 0d5h, 08dh, 0c9h, 03dh, 0beh, 090h, 0b3h, 07ch, 0a9h, 0f9h, 09fh, 0feh, 096h
			db 085h, 08eh, 085h, 086h, 0f8h, 07eh, 0d8h, 077h, 01eh, 071h, 0c4h, 06ah, 0c6h, 064h, 01eh, 05fh
			db 0c8h, 059h, 0beh, 054h, 0fch, 04fh, 07fh, 04bh, 042h, 047h, 042h, 043h, 07ch, 03fh, 0ech, 03bh
			db 08fh, 038h, 062h, 035h, 063h, 032h, 08fh, 02fh, 0e4h, 02ch, 05fh, 02ah, 0feh, 027h, 0bfh, 025h
			db 0a1h, 023h, 0a1h, 021h, 0beh, 01fh, 0f6h, 01dh, 047h, 01ch, 0b1h, 01ah, 031h, 019h, 0c7h, 017h
			db 072h, 016h, 02fh, 015h, 0ffh, 013h, 0dfh, 012h, 0d0h, 011h, 0d0h, 010h, 0dfh, 00fh, 0fbh, 00eh
			db 023h, 00eh, 058h, 00dh, 098h, 00ch, 0e3h, 00bh, 039h, 00bh, 097h, 00ah, 0ffh, 009h, 06fh, 009h
			db 0e8h, 008h, 068h, 008h, 0efh, 007h, 07dh, 007h, 011h, 007h, 0ach, 006h, 04ch, 006h, 0f1h, 005h
			db 09ch, 005h, 04bh, 005h, 0ffh, 004h, 0b7h, 004h, 074h, 004h, 034h, 004h, 0f7h, 003h, 0beh, 003h
			db 088h, 003h, 056h, 003h, 026h, 003h, 0f8h, 002h, 0ceh, 002h, 0a5h, 002h, 07fh, 002h, 05bh, 002h
			db 03ah, 002h, 01ah, 002h, 0fbh, 001h, 0dfh, 001h, 0c4h, 001h, 0abh, 001h, 093h, 001h, 07ch, 001h
			db 067h, 001h, 052h, 001h, 03fh, 001h, 02dh, 001h, 01dh, 001h, 00dh, 001h, 0fdh, 000h, 0efh, 000h
			db 0e2h, 000h, 0d5h, 000h, 0c9h, 000h, 0beh, 000h, 0b3h, 000h, 0a9h, 000h, 09fh, 000h, 096h, 000h
			db 08eh, 000h, 086h, 000h, 07eh, 000h, 077h, 000h, 071h, 000h, 06ah, 000h, 064h, 000h, 05fh, 000h

	
	mario_music_size dw 1782
	
	; 0~127 -> midi note
	; 254   -> note off
	; 255   -> ignore
	mario_music:
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 040h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 046h
			db 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 043h, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 04fh, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 047h
			db 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 040h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 046h
			db 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 043h, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 04fh, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 047h
			db 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 045h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h
			db 0ffh, 0feh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 054h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 054h, 0ffh, 0feh, 054h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 045h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h
			db 0ffh, 0feh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04bh, 0ffh
			db 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 045h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h
			db 0ffh, 0feh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 054h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 054h, 0ffh, 0feh, 054h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04fh, 0ffh
			db 0feh, 04eh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 04bh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 045h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h
			db 0ffh, 0feh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04bh, 0ffh
			db 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 040h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 046h
			db 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 043h, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 04fh, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 047h
			db 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 040h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 046h
			db 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 043h, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 04fh, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 047h
			db 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh
			db 051h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 04fh, 0ffh, 0feh, 0ffh, 04dh, 0ffh, 0feh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04dh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 04ah, 0ffh, 0feh, 0ffh
			db 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh
			db 051h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 04fh, 0ffh, 0feh, 0ffh, 04dh, 0ffh, 0feh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04dh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 04ah, 0ffh, 0feh, 0ffh
			db 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 04ch, 0ffh, 0feh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ah, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 048h, 0ffh, 0feh, 04ch, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 04fh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh
			db 051h, 0ffh, 0feh, 0ffh, 051h, 0ffh, 0feh, 0ffh, 04fh, 0ffh, 0feh, 0ffh, 04dh, 0ffh, 0feh, 0ffh
			db 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 045h, 0ffh, 0feh, 043h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 04ch, 0ffh, 0feh, 048h, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 043h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 044h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh
			db 045h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 04dh, 0ffh, 0feh, 045h, 0ffh, 0feh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 047h, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 0ffh
			db 0ffh, 04dh, 0ffh, 0feh, 04dh, 0ffh, 0feh, 0ffh, 04ch, 0ffh, 0feh, 0ffh, 04ah, 0ffh, 0feh, 0ffh
			db 048h, 0ffh, 0feh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh
			db 0ffh, 0ffh, 0ffh, 0ffh, 0ffh, 0ffh

tmpchk : dw 0
sisr:dw 0
buffer: times 4000 db 0 
oldisr: dd 0
oldtmr: dd 0
flag : db 0
row : dw 0
col : dw 0
temploc: dw 0
templocgreen: dw 4000
templocred: dw 4000
ticksforgreen: dw 0
ticksforred: dw 0
score: dw 0    
flagforgreen: dw 0  
flagforred: dw 0 
; PCB layout:
; ax,bx,cx,dx,si,di,bp,sp,ip,cs,ds,ss,es,flags,next,dummy
; 0, 2, 4, 6, 8,10,12,14,16,18,20,22,24, 26 , 28 , 30
pcb: times 2*16 dw 0 ; space for 2 PCBs
stack: times 2*256 dw 0 ; space for 2 512 byte stacks
nextpcb: dw 1 ; index of next free pcb
current: dw 0 ; index of current pcb
 

msg: db 10, 13, 'USER PLEASE ENTER YOUR NAME : $'
                                                           ;following is input buffer in format required by service
inputbuffer:	db 80 								       ; Byte # 0: Max length of buffer
db 0 											           ; Byte # 1: number of characters on return
times 80 db 0 
maxlength: dw 80

HELLO: db 'HELLO ' 							                                ; string of Welcome to be printed 
lengthofHELLO: dw 6			                           					    ; length of welcome string

Welcome: db 'WELCOME To " HunterXFish " ' 							    ; string of Welcome to be printed 
lengthofWelcome: dw  26			                           					; length of welcome string

instructionlable: db 'INSTRUCTIONS : ' 	                                    ; string of instruction to be printed 
lenofinstruction: dw  15			                           			    ; length of instruction string

instruction1: db 'You can move the fish using up,down,left,right Buttons ' 	; string of instruction1 to be printed 
leninstruction1: dw  55			                           			        ; length of instruction1 string

instruction2: db 'while moving the fish you have to collect points ' 	    ; string of instruction2 to be printed 
leninstruction2: dw  49			                           			        ; length of instruction2 string

instruction3: db 'red bait equals 50 point and appears after 10 seconds  ' ; string of instruction3 to be printed 
leninstruction3: dw  55			                           			         ; length of instruction3 string

instruction4: db 'green bait equals 10 point and appears after 5 seconds  ' ; string of instruction4 to be printed 
leninstruction4: dw  56			                           			          ; length of instruction4 string

instruction5: db 'Press esc key while playing to exit '                     ; string of instruction5 to be printed 
leninstruction5: dw  35			                           			        ; length of instruction5 string

Ranpopup: db 'Lets See how much Points you can get !!! ' ;                   string of a popup to be printed 
lengthofRanpopup: dw  41			                           			     ; length of popup string

exitpopup: db 'Press esc Key to Quit and Anyother key to start the game '    ; string of exitpopup to be printed 
lenofexitpopup: dw  57			                           			          ; length of exitpopup string

Developedby: db 'Developed By : '    										; string of Developedby to be printed 
lenofDevelopedby: dw  15	

SULTAN: db '21L-7560 ( SULTAN AHMAD ) '    									; string of Sultan to be printed 
lengthofSultan: dw  26	

MEHDY: db '21l-1784 ( MUHAMMAD MEHDY HASNAIN ) '                           ; string of Mehdy to be printed 
lengthofMehdy: dw  36	

Loadingmsg: db '...LOADING...$'    
nextLoadmsg: db ' PRESS ANY KEY $'                                       
Continuemsg: db 'PRESS ANY KEY TO CONTINUE$'   
Contmsglen: dw 25                                     


keyboard1: db '.--------------------------------------------------------------------. '        
keyboard2: db '| [Esc] [F1][F2][F3][F4][F5][F6][F7][F8][F9][F0][F10][F11][F12] o o o| '      
keyboard3: db '|                                                                    | '       
keyboard4: db '| [`][1][2][3][4][5][6][7][8][9][0][-][=][_<_] [I][H][U] [N][/][*][-]| '       
keyboard5: db '| [|-][Q][W][E][R][T][Y][U][I][O][P][{][}] | | [D][E][D] [7][8][9]|+|| '       
keyboard6: db '| [CAP][A][S][D][F][G][H][J][K][L][;][ ][#]|_|           [4][5][6]|_|| '       
keyboard7: db '| [^][\][Z][X][C][V][B][N][M][,][.][/] [__^__]    [^]    [1][2][3]| || '      
keyboard8: db '| [c]   [a][________________________][a]   [c] [<][V][>] [ 0  ][.]|_|| '       
keyboard9: db '\--------------------------------------------------------------------/ '

keyboard1len: dw 71
keyboard2len: dw 71
keyboard3len: dw 71
keyboard4len: dw 71
keyboard5len: dw 71
keyboard6len: dw 71
keyboard7len: dw 71
keyboard8len: dw 71
keyboard9len: dw 71

 Tag1: db ' _    _ _    _ _   _ _______ ______ _____   __   __  ______ _____  _____ _    _  '
 Tag2: db '| |  | | |  | | \ | |__   __|  ____|  __ \  \ \ / / |  ____|_   _|/ ____| |  | | '
 Tag3: db '| |__| | |  | |  \| |  | |  | |__  | |__) |  \ V /  | |__    | | | (___ | |__| | '
 Tag4: db '|  __  | |  | | . ` |  | |  |  __| |  _  /    > <   |  __|   | |  \___ \|  __  | '
 Tag5: db '| |  | | |__| | |\  |  | |  | |____| | \ \   / . \  | |     _| |_ ____) | |  | | '
 Tag6: db '|_|  |_|\____/|_| \_|  |_|  |______|_|  \_\ /_/ \_\ |_|    |_____|_____/|_|  |_| '
 
 Tag1len: dw 80
 Tag2len: dw 80
 Tag3len: dw 80
 Tag4len: dw 80
 Tag5len: dw 80
 Tag6len: dw 80

exittag1: db'  _______ _    _          _   _ _  ____     ______  _    _ ' 
exittag2: db' |__   __| |  | |   /\   | \ | | |/ /\ \   / / __ \| |  | |'
exittag3: db'    | |  | |__| |  /  \  |  \| |   /  \ \_/ / |  | | |  | |' 
exittag4: db'    | |  |  __  | / /\ \ | . ` |  <    \   /| |  | | |  | |' 
exittag5: db'    | |  | |  | |/ ____ \| |\  | . \    | | | |__| | |__| |' 
exittag6: db'  __|_|_ |_|_ |_/_/_   \_\_| \_|_|\_\   |_|  \____/ \____/ ' 
exittag7: db' |  ____/ __ \|  __ \                                      ' 
exittag8: db' | |__ | |  | | |__) |                                     ' 
exittag9: db' |  __|| |  | |  _  /                                      ' 
exittag10: db' | |   | |__| | | \ \                                      ' 
exittag11: db' |_|___ \____/|_|  \_\_     _______ _   _  _____           ' 
exittag12: db' |  __ \| |        /\\ \   / /_   _| \ | |/ ____|          ' 
exittag13: db' | |__) | |       /  \\ \_/ /  | | |  \| | |  __           ' 
exittag14: db' |  ___/| |      / /\ \\   /   | | | . ` | | |_ |          ' 
exittag15: db' | |    | |____ / ____ \| |   _| |_| |\  | |__| |          ' 
exittag16: db' |_|    |______/_/    \_\_|  |_____|_| \_|\_____|          '

exittag1len: dw 59
exittag2len: dw 59
exittag3len: dw 59
exittag4len: dw 59
exittag5len: dw 59
exittag6len: dw 59
exittag7len: dw 59
exittag8len: dw 59
exittag9len: dw 59
exittag10len: dw 59
exittag11len: dw 59
exittag12len: dw 59
exittag13len: dw 59
exittag14len: dw 59
exittag15len: dw 59
exittag16len: dw 59

GameOvertag1: db '   _____                         ____                   _   _   _ '
GameOvertag2: db '  / ____|                       / __ \                 | | | | | |'
GameOvertag3: db ' | |  __  __ _ _ __ ___   ___  | |  | |_   _____ _ __  | | | | | |'
GameOvertag4: db ' | | |_ |/ _` |  _ ` _ \ / _ \ | |  | \ \ / / _ \  __| | | | | | |'
GameOvertag5: db ' | |__| | (_| | | | | | |  __/ | |__| |\ V /  __/ |    |_| |_| |_|'
GameOvertag6: db '  \_____|\__,_|_| |_| |_|\___|  \____/  \_/ \___|_|    (_) (_) (_)'

GameOvertag1len: dw 66
GameOvertag2len: dw 66
GameOvertag3len: dw 66
GameOvertag4len: dw 66
GameOvertag5len: dw 66
GameOvertag6len: dw 66

SCOREPOPUP: db 'YOUR SCORE WAS ' 
SCOREPOPUPLen: dw 15

Life: db 'HEALTHBAR : '

message: db 'SCORE : ' 														; string of SCORE tag
exitmsg: db 'Are you sure you want to exit Y/N' 							; string of exit screen to be printed 
lengthoflastmsg: dw 33 			                           					; length string of exit screen

reds: db 'RED : '
lenofreds: dw 6
greens: db 'GREEN : '
lenofGreens: dw 8
redscore: dw 0 
greenscore: dw 0 

Lifebar: dw 3 
DeathFlag:db 0

 
myfish1:db '        ___///_   / $'           
myfish2:db 'o<     /o      \//  $'       
myfish3:db '   o<  )____ __/\\  $'       
myfish4:db 'o<          \\    \ $'

boat1: db'             v     $'
boat2: db'  v     /|         $'
boat3: db'       / |       v $'
boat4: db'v     /__|         $'
boat5: db'     ____|___      $'
boat6: db'    \--------/     $'
boat7: db'~~~~~~~~~~~~~~~~~~~$'

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////                                                

clrscr:
            push es
            pusha
                
                mov ax, 0xb800
                mov es, ax                                                   ; point es to video base
                xor di, di                                                   ; point di to top left column
    
                mov ax, 0x0720                                               ; space char in normal attribute
                mov cx, 2000                                                 ; number of screen locations
    
                cld                                                          ; auto increment mode
                rep stosw                                                    ; clear the whole screen


            popa
            pop es
            ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;delay for moving segments
pixeldelay:
			 pusha
                        
			    mov cx, 0xFFFF                                       ;move FFFF in counter register 
                ploop1:                                            
                    loop ploop1                                       ;iterate loop while decresing cx till it becomes 0

               
            popa
            ret
			
pixeldelay2:
			 pusha
                        
			    mov cx, 0xAAAA                                      ;move FFFF in counter register 
                ploop2:                                            
                    loop ploop2                                     ;iterate loop while decresing cx till it becomes 0

               
            popa
            ret			
			
delay:           
            pusha
                        
			    mov cx, 0xFFFF                                       ;move FFFF in counter register 
                loop1:                                            
                    loop loop1                                       ;iterate loop while decresing cx till it becomes 0

                mov cx, 0xFFFF                                       ;move FFFF in counter register 
                loop2:                
                    loop loop2                                       ;iterate loop while decresing cx till it becomes 0

                mov cx, 0xFFFF                                       ;move FFFF in counter register 
                loop3:                
                    loop loop3                                       ;iterate loop while decresing cx till it becomes 0

                mov cx, 0xFFFF                                       ;move FFFF in counter register 
                loop4:                
                    loop loop4                                       ;iterate loop while decresing cx till it becomes 0

            popa
            ret
				
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

;delay for boundary check sound

delay2: 
            pusha
			
                mov cx,0xffff                                       ;move FFFF in counter register
                sound_delay: 
                    loop  sound_delay                               ;iterate loop while decresing cx till it becomes 0

            popa
            ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

sound: 
            mov cx, 5
            sound_loop:         
                    mov al, 0b6h
                    out 43h, al
                                                                     ;load the counter 2 value for d3
                    mov ax, 1fb4h
                    out 42h, al
                    mov al, ah
                    out 42h, al
                                                                      ;turn the speaker on
                    in al, 61h
                    mov ah,al 
                    or al, 3h
                    out 61h, al
                    call delay2
                    mov al, ah
                    out 61h, al
                    call delay2
                                                                      ;load the counter 2 value for a3
                    mov ax, 152fh
                    out 42h, al
                    mov al, ah
                    out 42h, al
                                                                      ;turn the speaker on
                    in al, 61h
                    mov ah,al
                    or al, 3h
                    out 61h, al
                    call delay
                    mov al, ah
                    out 61h, al
                    call delay2
                                                                      ;load the counter 2 value for a4
                    mov ax, 0A97h
                    out 42h, al
                    mov al, ah
                    out 42h, al
                                                                      ;turn the speaker on
                    in al, 61h
                    mov ah,al
                    or al, 3h
                    out 61h, al
                    call delay2
                    mov al, ah
                    out 61h, al
                    call delay2
 
                    loop sound_loop
            ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

sky:
                        push bp
                        mov bp,sp
						pusha
						
                        mov ax, 0xb800
                        mov es, ax
                        mov di, 0


sky_loop:
                        mov word [es:di],0x3020
                        add di, 2
                        cmp di, 1280
                        jne sky_loop
						
road_loop:
                        mov word [es:di],0x605E
                        add di, 2
                        cmp di, 1440
                        jne road_loop
						
						mov di,1280
fence_loop:
                        mov word [es:di],0x0720
                        add di, 8
                        cmp di, 1440
                        jne fence_loop
						                                                 
                        popa
						pop bp
                        ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

uppersea:               
                        push bp
                        mov bp,sp
                        pusha
                                               
						mov ax, 0xb800
                        mov es, ax
                        mov di, 1440


uppersea_loop:
                        mov word [es:di],0x137E
                        add di, 2
                        cmp di, 2720
                        jne uppersea_loop
						
						mov di,1440
						
wave_loop:
                        mov word [es:di],0x977E
                        add di, 8
                        cmp di, 2720
                        jne wave_loop
						
                                                
                        popa
						pop bp
                        ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

sea:
                                                
                        push bp
                        mov bp,sp
						pusha
						
                        mov ax, 0xb800
                        mov es, ax
                        mov di, 2720
 
sea_loop:
                        mov word [es:di],0x1820
                        add di, 2
                        cmp di, 3840
                        jne sea_loop
                                                
                        popa
						pop bp
                        ret
			
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

boat:
                        push bp 
                        mov bp,sp
                        pusha
                                                
                        mov ax, 0xb800
                        mov es, ax
                                                
                                                mov al, 80                         ; load al with columns per row
                                                mul byte [bp+8]                    ; multiply with row number
                                                add ax, [bp+6]                     ; add col
                                                shl ax, 1                          ; turn into byte offset
                                                mov di, ax                         ; point di to required location
                                                
                                                mov al, 80                         ; load al with columns per row
                                                mul byte [bp+8]                    ; multiply with row number
                                                add ax, [bp+6]          		   ; add col
                                                add bx, [bp+4]                     ; add length
                                                shl bx,1
                                                shl ax, 1                          ; turn into byte offset
                                                add ax,bx
                                                mov si, ax                         ; point di to required location
                        
l1:
                        mov word [es:di],0x6020
                        add di,2
                        cmp di, si
                        jne l1
                                                
                                                
                                                mov ax,0
                                                mov si,0
                                                mov bx,0
                                                mov di,0
                                                
                                                mov al, 80                        ; load al with columns per row
                                                add byte [bp+8],1
                                                mul byte [bp+8]                   ; multiply with row number
                                                add ax, [bp+6]                    ; add col
                                                shl ax, 1                         ; turn into byte offset
                                                add ax,2
                                                mov di, ax                        ; point di to required location
                                                
                                                
                                                mov al, 80                        ; load al with columns per row
                                                mul byte [bp+8]        			  ; multiply with row number
                                                add ax, [bp+6]         			  ; add col
                                                add bx, [bp+4]         			  ; add length
                                                shl bx,1
                                                shl ax, 1                         ; turn into byte offset
                                                add ax,bx
                                                sub ax,2
                                                mov si, ax                         ; point di to required location
                                                
                                                
l2:
                        mov word [es:di],0x6020
                        add di,2
                        cmp di,si
                        jne l2
                                                
                                                mov ax,0
                                                mov si,0
                                                mov bx,0
                                                mov di,0
                                                
                                                mov al, 80      				;load al with columns per row
                                                add byte [bp+8],1
                                                mul byte [bp+8]         		; multiply with row number
                                                add ax, [bp+6]         			; add col
                                                shl ax, 1                       ; turn into byte offset
                                                add ax,4
                                                mov di, ax                      ; point di to required location
                                                
                                                
                                                mov al, 80                      ; load al with columns per row
                                                mul byte [bp+8]        			; multiply with row number
                                                add ax, [bp+6]         			; add col
                                                add bx, [bp+4]         			; add length
                                                shl bx,1
                                                shl ax, 1                       ; turn into byte offset
                                                add ax,bx
                                                sub ax,4
                                                mov si, ax                      ; point di to required location
                                                
                                                
l3:
						mov word [es:di],0x6020
						add di,2
						cmp di,si
						jne l3
																		
																		
												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80         			; load al with columns per row
												sub byte [bp+8],3
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												add ax,6
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												sub ax,14
												mov si, ax 					; point di to required location




l4:
						mov word [es:di],0x7020
						add di,2
						cmp di,si
						jne l4
                                                
												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 						; load al with columns per row
												sub byte [bp+8],1        
												mul byte [bp+8] 				; multiply with row number
												add ax, [bp+6] 					; add col
												shl ax, 1 						; turn into byte offset
												add ax,10
												mov di, ax 						; point di to required location


												mov al, 80 						; load al with columns per row
												mul byte [bp+8]					; multiply with row number
												add ax, [bp+6]					; add col
												add bx, [bp+4] 					; add length
												shl bx,1
												shl ax, 1 						; turn into byte offset
												add ax,bx
												sub ax,14
												mov si, ax 						; point di to required location




l5:
					    mov word [es:di],0x7020
						add di,2
						cmp di,si
						jne l5
                                                
                                        


                        popa
                        pop bp
                        ret 6

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

cloud:
                        push bp 
                        mov bp,sp
                        pusha
                                                                     
                        mov ax, 0xb800
                        mov es, ax
                                                
                                                mov al, 80                          ; load al with columns per row
                                                mul byte [bp+8]         			; multiply with row number
                                                add ax, [bp+6]         				; add col
                                                shl ax, 1                           ; turn into byte offset
                                                mov di, ax                          ; point di to required location
                                                
                                                mov al, 80                          ; load al with columns per row
                                                mul byte [bp+8]         			; multiply with row number
                                                add ax, [bp+6]         				; add col
                                                add bx, [bp+4]         				; add length
                                                shl bx,1
                                                shl ax, 1                         	; turn into byte offset
                                                add ax,bx
                                                mov si, ax                         	; point di to required location
                        
layer1:
                        mov word [es:di],0x7020
                        add di,2
                        cmp di, si
                        jne layer1


												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 							; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8]						; multiply with row number
												add ax, [bp+6] 						; add col
												shl ax, 1 							; turn into byte offset
												mov di, ax 							; point di to required location


												mov al, 80 							; load al with columns per row
												mul byte [bp+8] 					; multiply with row number
												add ax, [bp+6] 						; add col
												add bx, [bp+4] 						; add length
												shl bx,1
												shl ax, 1 							; turn into byte offset
												add ax,bx
												sub ax,2
												mov si, ax 							; point di to required location




layer2:
                        mov word [es:di],0x7020
                        add di,2
                        cmp di,si
                        jne layer2

                        popa
                        pop bp
                        ret 6

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

sun:
                        push bp 
                        mov bp,sp
                        pusha
                                                
                        mov ax, 0xb800
                        mov es, ax
                                                
                                                mov al, 80                         ; load al with columns per row
                                                mul byte [bp+8]         		   ; multiply with row number
                                                add ax, [bp+6]         			   ; add col
                                                shl ax, 1                          ; turn into byte offset
                                                mov di, ax                         ; point di to required location
                                                
                                                mov al, 80                         ; load al with columns per row
                                                mul byte [bp+8]         		   ; multiply with row number
                                                add ax, [bp+6]                     ; add col
                                                add bx, [bp+4]         			   ; add length
                                                shl bx,1
                                                shl ax, 1                          ; turn into byte offset
                                                add ax,bx
                                                mov si, ax                         ; point di to required location
                        
half1:
                        mov word [es:di],0x4820
                        add di,2
                        cmp di, si
                        jne half1


												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


                                                mov al, 80
                                                add byte [bp+8],1        
                                                mul byte [bp+8]         		   ; multiply with row number
                                                add ax, [bp+6]         			   ; add col
                                                shl ax, 1 
                                                add ax,2                           ; turn into byte offset
                                                mov di, ax                         ; point di to required location
                                                
                                                mov al, 80                         ; load al with columns per row
                                                mul byte [bp+8]         		   ; multiply with row number
                                                add ax, [bp+6]         			   ; add col
                                                add bx, [bp+4]        			   ; add length
                                                shl bx,1
                                                shl ax, 1                          ; turn into byte offset
                                                add ax,bx
                                                sub ax,2
                                                mov si, ax                         ; point di to required location
												
                        
half2:
                        mov word [es:di],0x4820
                        add di,2
                        cmp di, si
                        jne half2


												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 						    ; load al with columns per row
												sub byte [bp+8],2
												mul byte [bp+8] 					; multiply with row number
												add ax, [bp+6] 						; add col
												shl ax, 1 							; turn into byte offset
												mov di, ax 							; point di to required location


												mov al, 80 							; load al with columns per row
												mul byte [bp+8] 					; multiply with row number
												add ax, [bp+6] 						; add col
												add bx, [bp+4] 						; add length
												shl bx,1
												shl ax, 1 							; turn into byte offset
												add ax,bx
												mov si, ax 						    ; point di to required location




half3:
                        mov word [es:di],0x4820
                        add di,2
                        cmp di,si
                        jne half3


												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 							; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8] 					; multiply with row number
												add ax, [bp+6] 						; add col
												shl ax, 1 							; turn into byte offset
												add ax,2
												mov di, ax 							; point di to required location


												mov al, 80 							; load al with columns per row
												mul byte [bp+8] 					; multiply with row number
												add ax, [bp+6] 						; add col
												add bx, [bp+4] 						; add length
												shl bx,1
												shl ax, 1 							; turn into byte offset
												add ax,bx
												sub ax,2
												mov si, ax 							; point di to required location




half4:
                        mov word [es:di],0x4820
                        add di,2
                        cmp di,si
                        jne half4

                        popa
                        pop bp
                        ret 6

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

mountain:


						push bp
						mov bp,sp
						pusha


						mov ax, 0xb800
						mov es, ax




												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												mov si, ax 					; point di to required location


                       
lo1:
                        mov word [es:di],0x2020
                        add di,2
                        cmp di, si
                        jne lo1


												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 					; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												add ax,2
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												sub ax,2
												mov si, ax 					; point di to required location




lo2:
                        mov word [es:di],0x2020
                        add di,2
                        cmp di,si
                        jne lo2
												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 					; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												add ax,4
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												sub ax,4
												mov si, ax 					; point di to required location




lo3:
                        mov word [es:di],0x2020
                        add di,2
                        cmp di,si
                        jne lo3
												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 					; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												add ax,6
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												sub ax,6
												mov si, ax 					; point di to required location




lo4:
                        mov word [es:di],0x2020
                        add di,2
                        cmp di,si
                        jne lo4




												mov ax,0
												mov bx,0
												mov di,0
												mov si,0


												mov al, 80 					; load al with columns per row
												sub byte [bp+8],1
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												shl ax, 1 					; turn into byte offset
												add ax,8
												mov di, ax 					; point di to required location


												mov al, 80 					; load al with columns per row
												mul byte [bp+8] 			; multiply with row number
												add ax, [bp+6] 				; add col
												add bx, [bp+4] 				; add length
												shl bx,1
												shl ax, 1 					; turn into byte offset
												add ax,bx
												sub ax,8
												mov si, ax 					; point di to required location




lo5:
                        mov word [es:di],0x2020
                        add di,2
                        cmp di,si
                        jne lo5

                        popa
						pop bp
                        ret 6

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

lighthouse:

						push bp
						mov bp,sp
						pusha


						mov ax, 0xb800
						mov es, ax




														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6]							; add col
														shl ax, 1 								; turn into byte offset
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														mov si, ax 								; point di to required location


                       
loo1:
                        mov word [es:di],0x4020
                        add di,2
                        cmp di, si
                        jne loo1


														mov ax,0
														mov bx,0
														mov di,0
														mov si,0


														mov al, 80 								; load al with columns per row
														sub byte [bp+8],1
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														shl ax, 1 								; turn into byte offset
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														mov si, ax 								; point di to required location




loo2:
                        mov word [es:di],0x7020
                        add di,2
                        cmp di,si
                        jne loo2
														mov ax,0
														mov bx,0
														mov di,0
														mov si,0


														mov al, 80 								; load al with columns per row
														sub byte [bp+8],1
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														shl ax, 1 								; turn into byte offset
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														mov si, ax 								; point di to required location




loo3:
                        mov word [es:di],0x4020
                        add di,2
                        cmp di,si
                        jne loo3
														mov ax,0
														mov bx,0
														mov di,0
														mov si,0


														mov al, 80 								; load al with columns per row
														sub byte [bp+8],1
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														shl ax, 1 								; turn into byte offset
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														mov si, ax 								; point di to required location




loo4:
                        mov word [es:di],0x7020
                        add di,2
                        cmp di,si
                        jne loo4




														mov ax,0
														mov bx,0
														mov di,0
														mov si,0


														mov al, 80 								; load al with columns per row
														sub byte [bp+8],1
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														shl ax, 1 								; turn into byte offset
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														mov si, ax 								; point di to required location


loo5:
                        mov word [es:di],0x4020
                        add di,2
                        cmp di,si
                        jne loo5


														mov ax,0
														mov bx,0
														mov di,0
														mov si,0


														mov al, 80 								; load al with columns per row
														sub byte [bp+8],1
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														shl ax, 1 								; turn into byte offset
														add ax,2
														mov di, ax 								; point di to required location


														mov al, 80 								; load al with columns per row
														mul byte [bp+8] 						; multiply with row number
														add ax, [bp+6] 							; add col
														add bx, [bp+4] 							; add length
														shl bx,1
														shl ax, 1 								; turn into byte offset
														add ax,bx
														sub ax,2
														mov si, ax 								; point di to required location


loo6:
                        mov word [es:di],0xE42A
                        add di,2
                        cmp di,si
                        jne loo6

                        popa
                        pop bp
                        ret 6

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

initialize:
                        
            pusha
                   
                   call sky                                             ;function call to print sky
				   
                   mov ax,2                                            
                   push ax                                              ;push row number for sun
                   mov ax,55
                   push ax                                              ;push column number for sun 
                   mov ax,8
                   push ax                                              ;push length of sun                                             
                   call sun                                             ;function call to print sun
				   
				   
                   call uppersea                                        ;function call to print uppersea
                   call sea                                             ;function call to print lowersea
                   
				   
;----------------------------------------------------------------------				   
				   ;printing mountains
				   
                   mov ax,7
                   push ax ; 
                   mov ax, 0
                   push ax ; 
                   mov ax,18    
                   push ax
                   call mountain
                   mov ax,7
                   push ax ; 
                   mov ax, 18
                   push ax ; 
                   mov ax,10    
                   push ax
                   call mountain
                   mov ax,7
                   push ax ; 
                   mov ax, 30
                   push ax ; 
                   mov ax,18    
                   push ax
                   call mountain
                   mov ax,7
                   push ax ; 
                   mov ax, 35
                   push ax ; 
                   mov ax,10    
                   push ax
                   call mountain
                   mov ax,7
                   push ax ; 
                   mov ax, 45
                   push ax ; 
                   mov ax,10    
                   push ax
                   call mountain
                   mov ax,7
                   push ax ; 
                   mov ax, 60
                   push ax ; 
                   mov ax,18    
                   push ax
                   call mountain
				   
;----------------------------------------------------------------------				   
				   ;printing clouds
				   
                   mov ax,4
                   push ax ; 
                   mov ax, 28
                   push ax ; 
                   mov ax,5    
                   push ax
                   call cloud
                   mov ax,3
                   push ax ; 
                   mov ax, 38
                   push ax ; 
                   mov ax,7    
                   push ax
                   call cloud
                   mov ax,2
                   push ax ; 
                   mov ax, 5
                   push ax ; 
                   mov ax,6    
                   push ax
                   call cloud
                   mov ax,1
                   push ax ; 
                   mov ax, 17
                   push ax ; 
                   mov ax,8    
                   push ax
                   call cloud
                   mov ax,3
                   push ax ; 
                   mov ax, 60
                   push ax ; 
                   mov ax,10   
                   push ax
                   call cloud
                   
                   
				   
;----------------------------------------------------------------------				   
				   ;printing boats
				   
                   mov ax, 13
                   push ax                                                      ; push row number > 7
                   mov ax, 55
                   push ax                                                      ; push col number > 0 
                   mov ax,20                                                    ; length of ship
                   push ax
                   call boat
                   
                   mov ax, 11
                   push ax                                                      ; push row number > 7
                   mov ax, 10
                   push ax                                                      ; push col number > 0 
                   mov ax,15                                                    ; length of ship
                   push ax
                   call boat



;----------------------------------------------------------------------				   
		          ;printing extras
				  
                   mov ax,7
                   push ax ; 
                   mov ax, 20
                   push ax ; 
                   mov ax,3   
                   push ax
                   call lighthouse 




            popa
            ret 

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

movseg1:
                                push bp
                                mov bp,sp
                                pusha
								
                                mov ax, 0xb800                                         
                                mov es, ax 
                                mov ds,ax                
                                mov di, 1438
                                mov si,1438
                                seg1outer:
                                sub si,2
                                mov ax,[di]
                                mov cx ,79


                        seg1loop:
                                        std
                                        rep movsw
                                        cmp di,0
                                        jne seg1save
                                        je endseg1


                        seg1save:
                                        mov [di],ax
                                        sub di,2
                                        jmp seg1outer


                        endseg1:
                                mov [di],ax
                                cld
                                popa
								pop bp
                                ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

movseg2:
                                push bp
                                mov bp,sp
								pusha
                                
                                mov ax, 0xb800                                         
                                mov es, ax 
                                mov ds,ax                
                                mov di, 1440
                                mov si,1440
                                seg2outer:
                                add si,2
                                mov ax,[di]
                                mov cx ,79

                                seg2loop:
                                        rep movsw
                                        cmp di,2718
                                        jne seg2save
                                        je endseg2

                                seg2save:
                                        mov [di],ax
                                        add di,2
                                        jmp seg2outer

                        endseg2:
                                mov [di],ax
                                popa
								pop bp
                                ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

kbisr:		
                pusha
		        push es
		        mov ax, 0xb800
				
		        mov es, ax 										; point es to video memory
		        in al, 0x60 									; read a char from keyboard port
				
                push word[cs:row]
                push word[cs:col]
                call CalculateLocation				

						
						cmp al, 0x48                             ;move fish up
						jne nextcmp
						mov word [es:di],0x9820 
						sub di,160
						mov bx,word[cs:row]
                        sub bx,1
                        mov word[cs:row],bx	
						cmp di,2720
						jb upperbound						
						mov word [es:di],0x67154
						mov bx,0
						jmp exit                                  ;leave interrupt routine
 
 
				upperbound:
				add di,160
				mov bx,[cs:row]
				add bx,1
				mov word[cs:row],bx	
				sub word[cs:Lifebar],1
				cmp word[cs:Lifebar],0
				jne moveover
				mov byte[cs:DeathFlag],1
				moveover:
				mov word [es:di],0xF5D6
				call sound
				mov word [es:di],0x67154
				mov bx,0
				jmp exit
	
	
						nextcmp:	
									cmp al, 0x50                     ;move fish down
									jne nextcmp2
									mov word [es:di],0x9820
									add di,160 
								    mov bx,word[cs:row]
									add bx,1
									mov word[cs:row],bx	
									cmp di,3840
									jae lowerbound 
									mov word [es:di],0x67154
									mov bx,0
									jmp exit                         ;leave interrupt routine
									
				lowerbound:
				sub di,160
				mov bx,[cs:row]
                sub bx,1
                mov word[cs:row],bx	
				sub word[cs:Lifebar],1
				cmp word[cs:Lifebar],0
				jne moveover1
				mov byte[cs:DeathFlag],1
				moveover1:
				mov word [es:di],0xF5D6
				call sound
				mov word [es:di],0x67154
				
				mov bx,0
				jmp exit


		
						nextcmp2:	
									cmp al, 0x4B                      ;move fish left 
									jne nextcmp3 
									mov word [es:di],0x9820
									call check_left 
									sub di,2
									mov bx,word[cs:col]
                                    sub bx,1
                                    mov word[cs:col],bx	
									mov word [es:di],0x67154
									mov bx,0
									jmp exit                          ;leave interrupt routine
			
                        nextcmp3:	        
									cmp al, 0x4D                      ;move fish right 
									jne nextcmp4
									mov word [es:di],0x9820
									call check_right
									add di,2
                                    mov bx,word[cs:col]
                                    add bx,1
                                    mov word[cs:col],bx									
									mov word [es:di],0x67154
									mov bx,0
									jmp exit                          ;leave interrupt routine
									
           			    nextcmp4:	        
									cmp al, 0x01                      ;check for esc key
									jne nomatch
									mov byte[cs:flag],1               ;enable escape flag
									jmp exit                          ;leave interrupt routine
																							
									
						nomatch:	
									pop es
									popa
									jmp far [cs:oldisr] 


exit:	
        mov [cs:temploc],di
		mov al, 0x20
		out 0x20, al 													;send EOI to PIC
        pop es
		popa
	    iret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

check_left:

			push ax
			mov ax,[cs:col]
		    cmp ax,0
			jne return
			
			mov ax,79
		    mov word[cs:col],ax
			
		    return:
			push word[cs:row]
			push word[cs:col]
			call CalculateLocation
			
			pop ax
		    ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

check_right:
            push ax
			mov ax,[cs:col]
		    cmp ax,79
			jne return_1
			
			mov ax,0
		    mov word[cs:col],ax
			
		    return_1:
		    push word[cs:row]
			push word[cs:col]
			call CalculateLocation
			pop ax
		    ret
			
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


fish:
                        push bp
						mov bp,sp
                        push es   
                        pusha 
						
						mov bx,word[bp+6]
						mov word[row],bx
						push bx
                        mov bx,word[bp+4]
						mov word[col],bx
						push bx
						call CalculateLocation
                        mov ax, 0xb800
                        mov es, ax
						mov word [es:di],0x67154
						
                        popa
                        pop es
                        pop bp
                        ret
						

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

CalculateLocation:

                push bp
			    mov bp,sp
				push ax
						
                        mov al, 80                         ; load al with columns per row
                        mul byte [bp+6]                    ; multiply with row number
                        add ax, [bp+4]                     ; add col
                        shl ax, 1                          ; turn into byte offset
                        mov di, ax                         ; point di to required location

                pop ax
				pop bp			
                ret 4                                  

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

RandomNoGen:         
                                                           ; generate a rand no using the system time
				push bp
				mov bp,sp
				push es
				pusha
				        
RandStart:
						   MOV AH, 00h  					; interrupts to get system time        
						   INT 1AH      					; CX:DX now hold number of clock ticks since midnight      
						   mov  ax, dx
						   xor  dx, dx
						   mov  cx, 900
						   div  cx       					; here dx contains the remainder of the division - from 0 to 9
						   
						   add dx,2720
						   mov bx,dx
						   mov ax,dx
						   mov dx,1
						   mov cx,2
						   div cx
						   cmp dx,0
						   je endRandomNoGen
                           add bx,1
								
                endRandomNoGen:	
			    mov word[bp+4],bx
				popa
				pop es
				pop bp
				ret 

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

timer:

						pusha
						push es
						
						mov ax,0
						mov ax,0xb800
						mov es,ax
						
						call PointSystem
						
						inc     word [cs: ticksforgreen]
						inc     word [cs: ticksforred]
						cmp     word [cs: ticksforgreen], 100                              ; 20 ticks per second
						jne     checkforred
						
						mov word[cs:flagforgreen],0
						mov     word [cs: ticksforgreen], 0
						mov ax,0xFFFF
						push ax
						call RandomNoGen
						pop ax
						mov bx,ax
						mov di,ax
						mov ax,0
						mov di,0
						mov di,[cs:templocgreen]
						mov word [es:di],0x1820	
						mov [cs:templocgreen],bx
						mov di,0
						mov  di,bx					
						mov word [es:di],0x122A	
						
				checkforred:
				        cmp     word [cs: ticksforred], 200                              ; 20 ticks per second
						jne     exitTimer
						mov     word[cs:flagforred],0
						mov     word [cs: ticksforred], 0
						mov ax,0xFFFF
						push ax
						call RandomNoGen
						pop ax
						mov bx,ax
						mov ax,0
						mov di,0
						mov di,[cs:templocred]
						mov word [es:di],0x1820			
						mov di,0
						add bx,[cs:score]
						add bx,8
						cmp bx,3838
						jb foward
						mov bx,3200
						foward:
						mov di,bx
						mov [cs:templocred],bx				
						mov word [es:di],0x142A	

exitTimer:
                        pop es
						popa
						
						
						push ds				
						push bx
						push cs
						pop ds ; initialize ds to data segment
						mov bx, [current] ; read index of current in bx
						shl bx, 1
						shl bx, 1
						shl bx, 1
						shl bx, 1
						shl bx, 1 ; multiply by 2 for pcb start
						mov [pcb+bx+0], ax ; save ax in current pcb
						mov [pcb+bx+4], cx ; save cx in current pcb
						mov [pcb+bx+6], dx ; save dx in current pcb
						mov [pcb+bx+8], si ; save si in current pcb
						mov [pcb+bx+10], di ; save di in current pcb
						mov [pcb+bx+12], bp ; save bp in current pcb
						mov [pcb+bx+24], es ; save es in current pcb
						pop ax ; read original bx from stack
						mov [pcb+bx+2], ax ; save bx in current pcb
						pop ax ; read original ds from stack
						mov [pcb+bx+20], ax ; save ds in current pcb
						pop ax ; read original ip from stack
						mov [pcb+bx+16], ax ; save ip in current pcb
						pop ax ; read original cs from stack
						mov [pcb+bx+18], ax ; save cs in current pcb
						pop ax ; read original flags from stack
						mov [pcb+bx+26], ax ; save cs in current pcb
						mov [pcb+bx+22], ss ; save ss in current pcb
						mov [pcb+bx+14], sp ; save sp in current pcb
						mov bx, [pcb+bx+28] ; read next pcb of this pcb
						mov [current], bx ; update current to new pcb
						mov cl, 5
						shl bx, cl ; multiply by 2 for pcb start
						mov cx, [pcb+bx+4] ; read cx of new process
						mov dx, [pcb+bx+6] ; read dx of new process
						mov si, [pcb+bx+8] ; read si of new process
						mov di, [pcb+bx+10] ; read diof new process
						mov bp, [pcb+bx+12] ; read bp of new process
						mov es, [pcb+bx+24] ; read es of new process
						mov ss, [pcb+bx+22] ; read ss of new process
						mov sp, [pcb+bx+14] ; read sp of new process
						push word [pcb+bx+26] ; push flags of new process
						push word [pcb+bx+18] ; push cs of new process
						push word [pcb+bx+16] ; push ip of new process
						push word [pcb+bx+20] ; push ds of new process
						
						mov ax, [pcb+bx+0] ; read ax of new process
						mov bx, [pcb+bx+2] ; read bx of new process
						pop ds ; read ds of new process

						
											
						jmp far [cs:oldtmr]

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

initpcb:

push bp
mov bp, sp

push ax
push bx
push cx
push si


mov bx,1 ; read next available pcb index
mov cl, 5 
shl bx, cl ; multiply by 2 for pcb start
mov ax, [bp+6] ; read segment parameter
mov [pcb+bx+18], ax ; save in pcb space for cs
mov ax, [bp+4] ; read offset parameter
mov [pcb+bx+16], ax ; save in pcb space for ip
mov [pcb+bx+22], ds ; set stack to our segment
mov si, 1 ; read this pcb index
mov cl, 9
shl si, cl ; multiply by 512
add si, 256*2+stack ; end of stack for this thread
sub si, 2 ; decrement thread stack pointer
mov [pcb+bx+14], si ; save si in pcb space for sp
mov word [pcb+bx+26], 0x0200 ; initialize thread flags
mov word[pcb+bx+28], 0
mov word [pcb+28], 1 ;setting next of zero thread to thread 1


exitinitpcb:

pop si
pop cx
pop bx
pop ax

pop bp

ret 4

;/////////////////////////////////////////////////////////////////////////////////
PointSystem:
            push bp
			mov bp,sp
			pusha
			push es
			
			cmp word[cs:flagforgreen],1			
			je redcheck	
					
			mov ax,[cs:temploc]
			cmp ax,[cs:templocgreen]
            jne redcheck
			add word[cs:greenscore],1
			add word[cs:score],10
			mov word[cs:flagforgreen],1	
			
			redcheck:	
			cmp word[cs:flagforred],1	
			je printscore
			
			cmp ax,[cs:templocred]
            jne printscore
			add word[cs:redscore],1
			add word[cs:score],50
			mov word[cs:flagforred],1	
			jmp printscore
			
			printscore:
			
			mov ax,0
			mov ax,3856 
			push ax
			mov ax,cs:score
			push ax
			call PrintingPoints
			
			mov ax,0
			mov ax,3936
			push ax
			mov ax,cs:greenscore
			push ax
			call PrintingPoints
					
			mov ax,0
			mov ax,3904
			push ax
			mov ax,cs:redscore
			push ax
			call PrintingPoints
			
			endPointSystem:
            pop es
			popa
			pop bp
			ret
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

PrintScoreLable:

						push bp
						mov bp,sp
						push es
						pusha
			
						mov ax,0xb800
						mov es,ax
						mov cx,8
						mov si,message
						mov ah,0x06
						mov di,3840
						
						lable_score:
						mov al, [si]			         	              ; load next char of string
						mov [es:di], ax			                     	  ; show this char on screen
						add di, 2				                          ; move to next screen location
						add si, 1										  ; move to next char in string
						loop lable_score								  ; repeat the operation cx times
			
			            mov cx,12
						mov si,Life
						mov ah,0x02
						mov di,3966
						
						lable_health:
						mov al, [si]			         	              ; load next char of string
						mov [es:di], ax			                     	  ; show this char on screen
						add di, 2				                          ; move to next screen location
						add si, 1										  ; move to next char in string
						loop lable_health								  ; repeat the operation cx times
						
					
					mov ax,0
					mov ax, 24
					push ax															; push r position............[bp+12]
					mov ax, 26
					push ax															; push c position............[bp+10]
					mov ax, 0x04														; blue on black attribute
					push ax															; push attribute............[bp+8]
					mov ax,reds 
					push ax															; push address of message............[bp+6]
					mov ax, [lenofreds]										        ; push message length ....[bp+4]
					push ax
					call printstr

					mov ax,0
					mov ax, 24
					push ax															; push r position............[bp+12]
					mov ax, 40
					push ax															; push c position............[bp+10]
					mov ax, 0x02														; blue on black attribute
					push ax															; push attribute............[bp+8]
					mov ax,greens 
					push ax															; push address of message............[bp+6]
					mov ax, [lenofGreens]										    ; push message length ....[bp+4]
					push ax
					call printstr
					

			popa						
			pop es
			pop bp
			ret

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

LifeSystem:
            push bp
			mov bp,sp
			push es
			pusha
			
            	mov ax, 0xb800
				mov es, ax 											; point es to video base
				mov di,3990
			    mov cx,3
				
			Black:
			    mov word[es:di],0x0720
				add di,2
				sub cx,1
				cmp cx,0
				jne Black
				
				mov di,3990
				mov cx,[cs:Lifebar]
				
			Bar:
				mov word[es:di],0x0403
				add di,2
				sub cx,1
				cmp cx,0
				jne Bar
			
							
			popa						
			pop es
			pop bp
			ret
			
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
PrintingPoints:
            push bp
			mov bp,sp
			push es
			pusha
			
				mov ax, 0xb800
				mov es, ax 											; point es to video base
				mov ax, [bp+4] 									    ; load number in ax
				mov bx, 10 											; use base 10 for division
				mov cx, 0 											; initialize count of digits
				
			nextnum: 
				mov dx, 0 											; zero upper half of dividend
				div bx 												; divide by 10
				add dl, 0x30 										; convert digit into ascii value
				push dx 											; save ascii value on stack
				inc cx 												; increment count of values
				cmp ax, 0 											; is the quotient zero
				jnz nextnum 										; if no divide it again
				mov di,[bp+6] 										; point di to 3856
				
				nextloc: 
				pop dx 												; remove a digit from the stack
				mov dh, 0x07 										; use normal attribute
				mov [es:di], dx 									; print char on screen
				add di, 2 											; move to next screen location
				loop nextloc 										; repeat for all digits on stack
				
			popa						
			pop es
			pop bp
			ret 4

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

storescreen:
			push bp
			mov bp,sp
			push es
			pusha
			
			mov cx, 4000 																	; number of screen locations
			mov ax, 0xb800
			mov ds, ax 																		; ds = 0xb800
			push cs
			pop es
			mov si, 0
			mov di, buffer

			cld 																			; set auto increment mode
			rep movsb 																		; save screen

																							;[es:di] = [ds:si]
			
			popa						
			pop es
			pop bp
			ret

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
restorescreen:
			push bp
			mov bp,sp
			push es
			pusha
			
			mov cx, 4000 																		; number of screen locations
			mov ax, 0xb800
			mov es, ax 																			; ds = 0xb800

			push cs
			pop ds
		
			mov si, buffer
			mov di, 0

			cld 																				; set auto increment mode
			rep movsb 																			; save screen

		    																				    ;[es:di] = [ds:si]
			mov byte[cs:flag], 0																				
			popa						
			pop es
			pop bp
			ret
			
;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

printstr:	
			push bp
			mov bp, sp
			push es
			pusha

			mov ax, 0xb800
			mov es, ax													; point es to video base

						mov al, 80										; load al with columns per row
						mul byte [bp+12]								; 80 x r
						add ax, [bp+10]									; word number (80xr) + c
						shl ax, 1										; byte no (((80xr) + c)x2)

						mov di, ax										; point di to required location
						mov si, [bp+6]									; point si to string
						mov cx, [bp+4]									; load length of string in cx
						mov ah, [bp+8]									; load attribute in ah

			nextletter:	
						mov al, [si]									; load next char of string
						mov [es:di], ax									; show this char on screen
						add di, 2										; move to next screen location
						add si, 1										; move to next char in string
						loop nextletter									; repeat the operation cx times

			popa
			pop es
			pop bp
			ret 10

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Hook:

        pusha
		push es
				
                xor ax, ax
                mov es, ax                                                   ; point es to IVT base
                mov ax, [es:9*4]
                mov [oldisr], ax                                             ; save offset of old routine
                mov ax, [es:9*4+2]
                mov [oldisr+2], ax                                           ; save segment of old routine
				
				xor ax, ax
                mov es, ax                                                   ; point es to IVT base
                mov ax, [es:8*4]
                mov [oldtmr], ax                                             ; save offset of old routine
                mov ax, [es:8*4+2]
                mov [oldtmr+2], ax                                           ; save segment of old routine
 
				cli															  ; disable interrupts
			    mov word [es:9*4], kbisr                                      ; store offset at n*4
                mov [es:9*4+2], cs                                            ; store segment at n*4+2
			    mov word [es:8*4], timer                                      ; store offset at n*4
	            mov [es:8*4+2], cs                                            ; store segment at n*4+2
                sti                                                           ; enable interrupts
				
        pop es
		popa
		ret
		
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Unhook:
       pusha
	   push es
	   push cs
	   pop ds
				xor ax,ax
				mov es,ax
				
				mov ax, [oldisr]                                               ; read old offset in ax
                mov bx, [oldisr+2]                                             ; read old segment in bx
                        
                cli                                                            ; disable interrupts
                mov [es:9*4], ax                                               ; restore old offset from ax
                mov [es:9*4+2], bx                                             ; restore old segment from bx
                sti                                            				   ; enable interrupts
				
                xor ax,ax
				mov es,ax
				 
			    mov ax, [oldtmr]                                               ; read old offset in ax
                mov bx, [oldtmr+2]                                             ; read old segment in bx
                        
                cli                                                            ; disable interrupts
                mov [es:8*4], ax                                               ; restore old offset from ax
                mov [es:8*4+2], bx                                             ; restore old segment from bx
				
                sti 
		pop es
		popa
		ret
		
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Username: 
            push bp
			mov bp,sp
            pusha
			push es
				 
				    call clrscr
					call keyboardprint
					mov dx, msg 						    ; greetings message
					mov ah, 9 								; service 9 – write string
					int 0x21 		
					
					mov dx, inputbuffer 					; input buffer (ds:dx pointing to input buffer)
					mov ah, 0x0A 							; DOS' service A – buffered input
					int 0x21 								; dos services call

					mov bh, 0
					mov bl, [inputbuffer+1] 				; read actual size in bx i.e. no of characters user entered
										
					call clrscr
					
					mov  ah, 0x13
					mov al, 0x00
					mov bh, 0x00
					mov bl, 1
					
					mov cx, 20
					mov dl, 32
					push cs
					pop es
					
					mov dh, 3
					mov bp, inputbuffer+2
					int 0x10
			
            pop es			
            popa
			pop bp
			ret
			
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

DisplayIntro:
          pusha
		  
		        mov ax, 0
				mov ax, 3
				push ax															; push r position............[bp+12]
				mov ax, 26
				push ax															; push c position............[bp+10]
				mov ax, 0x07													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, HELLO
				push ax															; push address of message............[bp+6]
				mov ax, [lengthofHELLO]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 0
				mov ax, 5
				push ax															; push r position............[bp+12]
				mov ax, 25
				push ax															; push c position............[bp+10]
				mov ax, 0x03														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Welcome
				push ax															; push address of message............[bp+6]
				mov ax, [lengthofWelcome]										; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax, 0
				mov ax, 7
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x02														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instructionlable
				push ax															; push address of message............[bp+6]
				mov ax, [lenofinstruction]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 8
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instruction1
				push ax															; push address of message............[bp+6]
				mov ax, [leninstruction1]										; push message length ....[bp+4]
				push ax
				call printstr
             
			 	mov ax,0
				mov ax, 9
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instruction2
				push ax															; push address of message............[bp+6]
				mov ax, [leninstruction2]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 10
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instruction3
				push ax															; push address of message............[bp+6]
				mov ax, [leninstruction3]										; push message length ....[bp+4]
				push ax
				call printstr
			    
				mov ax,0
				mov ax, 11
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instruction4
				push ax															; push address of message............[bp+6]
				mov ax, [leninstruction4]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 12
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, instruction5
				push ax															; push address of message............[bp+6]
				mov ax, [leninstruction5]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 14
				push ax															; push r position............[bp+12]
				mov ax, 20
				push ax															; push c position............[bp+10]
				mov ax, 0x05														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,Ranpopup 
				push ax															; push address of message............[bp+6]
				mov ax, [lengthofRanpopup]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 22
				push ax															; push r position............[bp+12]
				mov ax, 12
				push ax															; push c position............[bp+10]
				mov ax, 0x83														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, exitpopup
				push ax															; push address of message............[bp+6]
				mov ax, [lenofexitpopup]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 17
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,Developedby 
				push ax															; push address of message............[bp+6]
				mov ax, [lenofDevelopedby]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 18
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x06														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,SULTAN 
				push ax															; push address of message............[bp+6]
				mov ax, [lengthofSultan]										; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 19
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x06														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,MEHDY 
				push ax															; push address of message............[bp+6]
				mov ax, [lengthofMehdy]										    ; push message length ....[bp+4]
				push ax
				call printstr


          popa
          ret		
   
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

keyboardprint:
            push bp
			mov bp,sp
            pusha
			push es
			       
				   call clrscr
				
				mov ax, 2
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x02													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard1
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard1len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 3
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x03													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard2
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard2len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 4
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x04													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard3
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard3len]										    ; push message length ....[bp+4]
				push ax
				call printstr

                mov ax, 4
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x05													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard4
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard4len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 5
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x06													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard5
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard5len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 6
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x07													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard6
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard6len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 7
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x01													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard7
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard7len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 8
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x02													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard8
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard8len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 9
				push ax															; push r position............[bp+12]
				mov ax, 4
				push ax															; push c position............[bp+10]
				mov ax, 0x03													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, keyboard9
				push ax															; push address of message............[bp+6]
				mov ax, [keyboard9len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 11
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x04													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag1
				push ax															; push address of message............[bp+6]
				mov ax, [Tag1len]										        ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 12
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x06													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag2
				push ax															; push address of message............[bp+6]
				mov ax, [Tag2len]										        ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 13
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x01													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag3
				push ax															; push address of message............[bp+6]
				mov ax, [Tag3len]										        ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 14
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x05													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag4
				push ax															; push address of message............[bp+6]
				mov ax, [Tag4len]										        ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 15
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x03													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag5
				push ax															; push address of message............[bp+6]
				mov ax, [Tag5len]										        ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 16
				push ax															; push r position............[bp+12]
				mov ax, 0
				push ax															; push c position............[bp+10]
				mov ax, 0x07													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Tag6
				push ax															; push address of message............[bp+6]
				mov ax, [Tag6len]										        ; push message length ....[bp+4]
				push ax
				call printstr
			
            pop es			
            popa
			pop bp
			ret

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

GameOver:
        push bp
		mov bp,sp
        pusha
		push es
  
  			   	mov ax,0
				mov ax, 8
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x06														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag1
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag1len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 9
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag2
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag2len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 10
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x03														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag3 
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag3len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 11
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x01														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag4
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag4len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 12
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x03														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag5
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag5len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 13
				push ax															; push r position............[bp+12]
				mov ax, 5
				push ax															; push c position............[bp+10]
				mov ax, 0x02														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,GameOvertag6 
				push ax															; push address of message............[bp+6]
				mov ax, [GameOvertag6len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 20
				push ax															; push r position............[bp+12]
				mov ax, 28
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,SCOREPOPUP 
				push ax															; push address of message............[bp+6]
				mov ax, [SCOREPOPUPLen]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax, 0xb800
				mov es, ax 											; point es to video base
				mov ax, [score] 									; load number in ax
				mov bx, 10 											; use base 10 for division
				mov cx, 0 											; initialize count of digits
				
			    nxtloc: 
				mov dx, 0 											; zero upper half of dividend
				div bx 												; divide by 10
				add dl, 0x30 										; convert digit into ascii value
				push dx 											; save ascii value on stack
				inc cx 												; increment count of values
				cmp ax, 0 											; is the quotient zero
				jnz nxtloc 										    ; if no divide it again
				
				mov di,3286  										; point di to 3856	
				nxtpos: 
				pop dx 												; remove a digit from the stack
				mov dh, 0x02 										; use normal attribute
				mov [es:di], dx 									; print char on screen
				add di, 2 											; move to next screen location
				loop nxtpos 										; repeat for all digits on stack
				
                

       pop es
       popa
	   pop bp
       ret 

;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
ThankYou:
        pusha
  
  			   	mov ax,0
				mov ax, 1
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x02														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag1 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag1len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 2
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x01														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag2 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag2len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 3
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag3 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag3len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 4
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x05														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag4
				push ax															; push address of message............[bp+6]
				mov ax, [exittag4len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 5
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x06														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag5
				push ax															; push address of message............[bp+6]
				mov ax, [exittag5len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 6
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x02														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag6 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag6len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 7
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag7 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag7len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 8
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x03														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag8 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag8len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 9
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x05														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag9 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag9len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 10
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x01														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag10 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag10len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 11
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag11 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag11len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			   	mov ax,0
				mov ax, 12
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x05														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag12 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag12len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
			    mov ax,0
				mov ax, 13
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x04														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag13 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag13len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 14
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x08														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag14
				push ax															; push address of message............[bp+6]
				mov ax, [exittag14len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 15
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x03														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag15 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag15len]										    ; push message length ....[bp+4]
				push ax
				call printstr
				
				mov ax,0
				mov ax, 16
				push ax															; push r position............[bp+12]
				mov ax, 10
				push ax															; push c position............[bp+10]
				mov ax, 0x02														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax,exittag16 
				push ax															; push address of message............[bp+6]
				mov ax, [exittag16len]										    ; push message length ....[bp+4]
				push ax
				call printstr

       popa
       ret
	   
;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

SetCursor:
        mov  ah, 2                  
        mov  bh, 0                 
        int  10h 
		ret

;/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	   
Pixelwork:
		pusha
		
		mov ax, 0x000D ; set 320x200 graphics mode
		int 0x10 ; bios video services

        mov ax,0
		mov ax, 0x0C09 ; put pixel in white color
		xor bx, bx ; page number 0
		
		
			mov ax, 0x0C02 ; put pixel in white color
			xor bx, bx ; page number 0
			mov dx,0  ; y position 200
			mov cx,5
			
			pixeloop:
			call pixeldelay2
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			sub cx,4
			add dx,1
			cmp dx,200
			jne pixeloop ; decrease x position and repeat 
			
			
			mov ax, 0x0C01 ; put pixel in white color
			xor bx, bx  ; page number 0
			mov dx,200  ; y position 200
			mov cx,310
			
			pixeloop2:
			call pixeldelay2
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			add cx,1
			int 0x10 ; bios video services
			sub cx,4
			sub dx,1
			cmp dx,0
			jne pixeloop2 ; decrease x position and repeat 
		
		    mov ax, 0x0C06 ; put pixel in white color
			xor bx, bx  ; page number 0
			mov dx,5  ; y position 200
			mov cx,319
			
			pixeloop3:
			call pixeldelay2
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			sub dx,4
			sub cx,1
			cmp cx,0
			jne pixeloop3 ; decrease x position and repeat 
		
		    mov ax, 0x0C03 ; put pixel in white color
			xor bx, bx  ; page number 0
			mov dx,190  ; y position 200
			mov cx,0
			
			pixeloop4:
			call pixeldelay2
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			sub dx,4
			add cx,1
			cmp cx,319
			jne pixeloop4 ; decrease x position and repeat 
        
		mov  dl, 10                
		mov  dh, 3                  
        call SetCursor            
		
	    mov dx,boat1						; greetings message
		mov ah, 9 							; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 4                  
        call SetCursor            
		
	    mov dx,boat2						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 5                  
        call SetCursor            
		
	    mov dx,boat3						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 6                  
        call SetCursor            
		
	    mov dx,boat4						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 7                  
        call SetCursor            
		
	    mov dx,boat5						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 8                  
        call SetCursor            
		
	    mov dx,boat6						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10                
		mov  dh, 9                  
        call SetCursor            
		
	    mov dx,boat7						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		
        mov  dl, 10                
		mov  dh, 19                  
        call SetCursor            
		
	    mov dx,myfish1						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21	

        mov  dl, 10                
		mov  dh, 20                  
        call SetCursor            
		
	    mov dx,myfish2						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21		
		
		mov  dl, 10                
		mov  dh, 21                 
        call SetCursor            
		
	    mov dx,myfish3						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 10               
		mov  dh, 22                  
        call SetCursor            
		
	    mov dx,myfish4						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov  dl, 12                
		mov  dh, 13                  
        call SetCursor            
		
	    mov dx,Loadingmsg 						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		
			mov ax, 0x0C04 ; put pixel in white color
			xor bx, bx ; page number 0
			mov dx,115  ; y position 200
			mov cx,79
			
			pixeloop1:
			call pixeldelay
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			add dx,1
			int 0x10 ; bios video services
			sub dx,10
			add cx,1
			cmp cx,225
			jne pixeloop1 ; decrease x position and repeat 		
		
		mov  dl, 12                
		mov  dh, 13                  
        call SetCursor            
		
	    mov dx,nextLoadmsg						; greetings message
		mov ah, 9 								; service 9 – write string
		int 0x21
		
		mov ah,0
		int 0x16
		
		mov ax, 0x0003 ; 80x25 text mode
		int 0x10 ; bios video services
		
		popa
		ret
		

;///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	

	play_mario:
			mov si, 0
		.next_note:
			mov bh, 0
			mov bl, [cs:mario_music + si]

			cmp bl, 255 ; ignore
			jz .ignore
			cmp bl, 254 ; note off
			jz .note_off
			
		.play_midi_note:
			shl bx, 1
			mov ax, [cs:midi_note_to_freq_table + bx];
			call note_on
			jmp .ignore
			
		.note_off:
			call note_off
		.ignore:
		
		.delay:
			call get_current_time
			cmp ax, [cs:last_time]
			jbe .delay
			mov [cs:last_time], ax
		
			inc si
			cmp si, [cs:mario_music_size]
			jb .next_note
		.end:
			ret
			
	; ax = 1193180 / frequency
	
	note_on:
			; change frequency
			mov dx, ax
			mov al, 0b6h
			out 43h, al
			mov ax, dx
			out 42h, al
			mov al, ah
			out 42h, al

			; start the sound
			in al, 61h
			or al, 3h
			out 61h, al
			ret
			
	; stop the sound
	note_off:
			in al, 61h
			and al, 0fch
			out 61h, al			
			ret
			
	; count = 1193180 / sampling_rate
	; sampling_rate = 25 cycles per second
	; count = 1193180 / 25 = ba6f (in hex)
	
	start_fast_clock:
			cli
			mov al, 36h
			out 43h, al
			mov al, 2Ah ; low 
			out 40h, al
			mov al, 085h ; high
			out 40h, al
			sti
			ret

	stop_fast_clock:
			cli
			mov al, 36h
			out 43h, al
			mov al, 0h ; low 
			out 40h, al
			mov al, 0h ; high
			out 40h, al
			sti
			ret
			
	; eax = get current time
	get_current_time:
			push es
			mov ax, 0
			mov es, ax
			mov ax, [es:46ch]
			pop es
			ret

sound1:
         	call start_fast_clock
			call play_mario
			call stop_fast_clock
			
		jmp sound1
		
;////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

start:			
				call Pixelwork
				mov  dl, 0               
		        mov  dh, 20                 
                call SetCursor  
                call Username 
				call DisplayIntro
                                                               			   ; dos services
				mov ah,0
				int 0x16
									
        checfesc:
           		cmp al, 27                                                  ;check for esc to terminate program			
				je  termination 			
				
				
				call clrscr                                                  ;clears screen
                call initialize                                              ;initialize the background of game
				call PrintScoreLable                                         ;Print the score tag
				
				mov ax,19                                                    ;push row number for the fish
				push ax
		        mov ax,13                                                    ;push col number for the fish
				push ax
				call fish                                                    ;print fish at a desired location
				
                call Hook													
				IN AL, 61h  ;Save state
				mov [sisr],ax 
inf:                  
				
				push cs ; use current code segment
				mov ax, sound1 
				push ax ; use mytask as offset
				call initpcb ; register the thread  
										;infinte loop till flag check to move segments continously		
                cmp byte[cs:DeathFlag],1                                       			
				je exitlast
				
                call LifeSystem				
                call movseg1                                                  ;movement of segment 1
                call movseg2                                                  ;movement of segment 2
                call delay                                                    ;to put delay in segment movement
				
				


				
                cmp byte[cs:flag],1                                           ;flag check to terminate loop of moving segments to terminate program			
				jne inf
                
				
cnfrmexit:
				call storescreen
				call Unhook
				call clrscr 
				
				mov ax,0
				mov ax, 12
				push ax															; push r position............[bp+12]
				mov ax, 20
				push ax															; push c position............[bp+10]
				mov ax, 0x07														; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, exitmsg
				push ax															; push address of message............[bp+6]
				mov ax, [lengthoflastmsg]										; push message length ....[bp+4]
				push ax
				call printstr

terminationcheck:	
				mov ax,[sisr]
				OUT 61h, AL												; dos services
				mov ah,0
				int 0x16
				
				cmp al, 121
                jne checknext
                mov byte[cs:flag], 1
                jmp checkend
				
        checknext:
                cmp al, 110
                jne terminationcheck
                mov byte[cs:flag], 0
                jmp checkend		
				
				
checkend:
           		cmp byte[cs:flag],0                                                ;flag check to terminate loop of moving segments to terminate program			
				jne  exitlast 
				call restorescreen
				call Hook
			    jmp inf
				
				
exitlast:		
                call Unhook	
				mov ax,[sisr]
				OUT 61h, AL
                call clrscr
				call GameOver
				mov ax, 0
				mov ax, 21
				push ax															; push r position............[bp+12]
				mov ax, 24
				push ax															; push c position............[bp+10]
				mov ax, 0x02													; blue on black attribute
				push ax															; push attribute............[bp+8]
				mov ax, Continuemsg
				push ax															; push address of message............[bp+6]
				mov ax, [Contmsglen]										    ; push message length ....[bp+4]
				push ax
				call printstr
				mov ah,0
				int 0x16			
termination:   	
				call clrscr
                call ThankYou
                mov ax, 0x4c00                                                 ;terminate program
                int 0x21
				