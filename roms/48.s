; z80dasm 1.1.3
; command line: z80dasm -a -g 0 -t roms/48.rom

	org	00000h

	di			;0000	f3 	. 
	xor a			;0001	af 	. 
	ld de,0ffffh		;0002	11 ff ff 	. . . 
	jp 011cbh		;0005	c3 cb 11 	. . . 
	ld hl,(05c5dh)		;0008	2a 5d 5c 	* ] \ 
	ld (05c5fh),hl		;000b	22 5f 5c 	" _ \ 
	jr $+69		;000e	18 43 	. C 
	jp 015f2h		;0010	c3 f2 15 	. . . 
	rst 38h			;0013	ff 	. 
	rst 38h			;0014	ff 	. 
	rst 38h			;0015	ff 	. 
	rst 38h			;0016	ff 	. 
	rst 38h			;0017	ff 	. 
	ld hl,(05c5dh)		;0018	2a 5d 5c 	* ] \ 
	ld a,(hl)			;001b	7e 	~ 
	call 0007dh		;001c	cd 7d 00 	. } . 
	ret nc			;001f	d0 	. 
	call 00074h		;0020	cd 74 00 	. t . 
	jr $-7		;0023	18 f7 	. . 
	rst 38h			;0025	ff 	. 
	rst 38h			;0026	ff 	. 
	rst 38h			;0027	ff 	. 
	jp 0335bh		;0028	c3 5b 33 	. [ 3 
	rst 38h			;002b	ff 	. 
	rst 38h			;002c	ff 	. 
	rst 38h			;002d	ff 	. 
	rst 38h			;002e	ff 	. 
	rst 38h			;002f	ff 	. 
	push bc			;0030	c5 	. 
	ld hl,(05c61h)		;0031	2a 61 5c 	* a \ 
	push hl			;0034	e5 	. 
	jp 0169eh		;0035	c3 9e 16 	. . . 
	push af			;0038	f5 	. 
	push hl			;0039	e5 	. 
	ld hl,(05c78h)		;003a	2a 78 5c 	* x \ 
	inc hl			;003d	23 	# 
	ld (05c78h),hl		;003e	22 78 5c 	" x \ 
	ld a,h			;0041	7c 	| 
	or l			;0042	b5 	. 
	jr nz,$+5		;0043	20 03 	  . 
	inc (iy+040h)		;0045	fd 34 40 	. 4 @ 
	push bc			;0048	c5 	. 
	push de			;0049	d5 	. 
	call 002bfh		;004a	cd bf 02 	. . . 
	pop de			;004d	d1 	. 
	pop bc			;004e	c1 	. 
	pop hl			;004f	e1 	. 
	pop af			;0050	f1 	. 
	ei			;0051	fb 	. 
	ret			;0052	c9 	. 
	pop hl			;0053	e1 	. 
	ld l,(hl)			;0054	6e 	n 
	ld (iy+000h),l		;0055	fd 75 00 	. u . 
	ld sp,(05c3dh)		;0058	ed 7b 3d 5c 	. { = \ 
	jp 016c5h		;005c	c3 c5 16 	. . . 
	rst 38h			;005f	ff 	. 
	rst 38h			;0060	ff 	. 
	rst 38h			;0061	ff 	. 
	rst 38h			;0062	ff 	. 
	rst 38h			;0063	ff 	. 
	rst 38h			;0064	ff 	. 
	rst 38h			;0065	ff 	. 
	push af			;0066	f5 	. 
	push hl			;0067	e5 	. 
	ld hl,(05cb0h)		;0068	2a b0 5c 	* . \ 
	ld a,h			;006b	7c 	| 
	or l			;006c	b5 	. 
	jr nz,$+3		;006d	20 01 	  . 
	jp (hl)			;006f	e9 	. 
	pop hl			;0070	e1 	. 
	pop af			;0071	f1 	. 
	retn		;0072	ed 45 	. E 
	ld hl,(05c5dh)		;0074	2a 5d 5c 	* ] \ 
	inc hl			;0077	23 	# 
	ld (05c5dh),hl		;0078	22 5d 5c 	" ] \ 
	ld a,(hl)			;007b	7e 	~ 
	ret			;007c	c9 	. 
	cp 021h		;007d	fe 21 	. ! 
	ret nc			;007f	d0 	. 
	cp 00dh		;0080	fe 0d 	. . 
	ret z			;0082	c8 	. 
	cp 010h		;0083	fe 10 	. . 
	ret c			;0085	d8 	. 
	cp 018h		;0086	fe 18 	. . 
	ccf			;0088	3f 	? 
	ret c			;0089	d8 	. 
	inc hl			;008a	23 	# 
	cp 016h		;008b	fe 16 	. . 
	jr c,$+3		;008d	38 01 	8 . 
	inc hl			;008f	23 	# 
	scf			;0090	37 	7 
	ld (05c5dh),hl		;0091	22 5d 5c 	" ] \ 
	ret			;0094	c9 	. 
	cp a			;0095	bf 	. 
	ld d,d			;0096	52 	R 
	ld c,(hl)			;0097	4e 	N 
	call nz,04e49h		;0098	c4 49 4e 	. I N 
	ld c,e			;009b	4b 	K 
	ld b,l			;009c	45 	E 
	ld e,c			;009d	59 	Y 
	and h			;009e	a4 	. 
	ld d,b			;009f	50 	P 
	ret			;00a0	c9 	. 
	ld b,(hl)			;00a1	46 	F 
	adc a,050h		;00a2	ce 50 	. P 
	ld c,a			;00a4	4f 	O 
	ld c,c			;00a5	49 	I 
	ld c,(hl)			;00a6	4e 	N 
	call nc,04353h		;00a7	d4 53 43 	. S C 
	ld d,d			;00aa	52 	R 
	ld b,l			;00ab	45 	E 
	ld b,l			;00ac	45 	E 
	ld c,(hl)			;00ad	4e 	N 
	and h			;00ae	a4 	. 
	ld b,c			;00af	41 	A 
	ld d,h			;00b0	54 	T 
	ld d,h			;00b1	54 	T 
	jp nc,0d441h		;00b2	d2 41 d4 	. A . 
	ld d,h			;00b5	54 	T 
	ld b,c			;00b6	41 	A 
	jp nz,04156h		;00b7	c2 56 41 	. V A 
	ld c,h			;00ba	4c 	L 
	and h			;00bb	a4 	. 
	ld b,e			;00bc	43 	C 
	ld c,a			;00bd	4f 	O 
	ld b,h			;00be	44 	D 
	push bc			;00bf	c5 	. 
	ld d,(hl)			;00c0	56 	V 
	ld b,c			;00c1	41 	A 
	call z,0454ch		;00c2	cc 4c 45 	. L E 
	adc a,053h		;00c5	ce 53 	. S 
	ld c,c			;00c7	49 	I 
	adc a,043h		;00c8	ce 43 	. C 
	ld c,a			;00ca	4f 	O 
	out (054h),a		;00cb	d3 54 	. T 
	ld b,c			;00cd	41 	A 
	adc a,041h		;00ce	ce 41 	. A 
	ld d,e			;00d0	53 	S 
	adc a,041h		;00d1	ce 41 	. A 
	ld b,e			;00d3	43 	C 
	out (041h),a		;00d4	d3 41 	. A 
	ld d,h			;00d6	54 	T 
	adc a,04ch		;00d7	ce 4c 	. L 
	adc a,045h		;00d9	ce 45 	. E 
	ld e,b			;00db	58 	X 
	ret nc			;00dc	d0 	. 
	ld c,c			;00dd	49 	I 
	ld c,(hl)			;00de	4e 	N 
	call nc,05153h		;00df	d4 53 51 	. S Q 
	jp nc,04753h		;00e2	d2 53 47 	. S G 
	adc a,041h		;00e5	ce 41 	. A 
	ld b,d			;00e7	42 	B 
	out (050h),a		;00e8	d3 50 	. P 
	ld b,l			;00ea	45 	E 
	ld b,l			;00eb	45 	E 
	bit 1,c		;00ec	cb 49 	. I 
	adc a,055h		;00ee	ce 55 	. U 
	ld d,e			;00f0	53 	S 
	jp nc,05453h		;00f1	d2 53 54 	. S T 
	ld d,d			;00f4	52 	R 
	and h			;00f5	a4 	. 
	ld b,e			;00f6	43 	C 
	ld c,b			;00f7	48 	H 
	ld d,d			;00f8	52 	R 
	and h			;00f9	a4 	. 
	ld c,(hl)			;00fa	4e 	N 
	ld c,a			;00fb	4f 	O 
	call nc,04942h		;00fc	d4 42 49 	. B I 
	adc a,04fh		;00ff	ce 4f 	. O 
	jp nc,04e41h		;0101	d2 41 4e 	. A N 
	call nz,0bd3ch		;0104	c4 3c bd 	. < . 
	ld a,0bdh		;0107	3e bd 	> . 
	inc a			;0109	3c 	< 
	cp (hl)			;010a	be 	. 
	ld c,h			;010b	4c 	L 
	ld c,c			;010c	49 	I 
	ld c,(hl)			;010d	4e 	N 
	push bc			;010e	c5 	. 
	ld d,h			;010f	54 	T 
	ld c,b			;0110	48 	H 
	ld b,l			;0111	45 	E 
	adc a,054h		;0112	ce 54 	. T 
	rst 8			;0114	cf 	. 
	ld d,e			;0115	53 	S 
	ld d,h			;0116	54 	T 
	ld b,l			;0117	45 	E 
	ret nc			;0118	d0 	. 
	ld b,h			;0119	44 	D 
	ld b,l			;011a	45 	E 
	ld b,(hl)			;011b	46 	F 
	jr nz,$+72		;011c	20 46 	  F 
	adc a,043h		;011e	ce 43 	. C 
	ld b,c			;0120	41 	A 
	call nc,04f46h		;0121	d4 46 4f 	. F O 
	ld d,d			;0124	52 	R 
	ld c,l			;0125	4d 	M 
	ld b,c			;0126	41 	A 
	call nc,04f4dh		;0127	d4 4d 4f 	. M O 
	ld d,(hl)			;012a	56 	V 
	push bc			;012b	c5 	. 
	ld b,l			;012c	45 	E 
	ld d,d			;012d	52 	R 
	ld b,c			;012e	41 	A 
	ld d,e			;012f	53 	S 
	push bc			;0130	c5 	. 
	ld c,a			;0131	4f 	O 
	ld d,b			;0132	50 	P 
	ld b,l			;0133	45 	E 
	ld c,(hl)			;0134	4e 	N 
	jr nz,$-91		;0135	20 a3 	  . 
	ld b,e			;0137	43 	C 
	ld c,h			;0138	4c 	L 
	ld c,a			;0139	4f 	O 
	ld d,e			;013a	53 	S 
	ld b,l			;013b	45 	E 
	jr nz,$-91		;013c	20 a3 	  . 
	ld c,l			;013e	4d 	M 
	ld b,l			;013f	45 	E 
	ld d,d			;0140	52 	R 
	ld b,a			;0141	47 	G 
	push bc			;0142	c5 	. 
	ld d,(hl)			;0143	56 	V 
	ld b,l			;0144	45 	E 
	ld d,d			;0145	52 	R 
	ld c,c			;0146	49 	I 
	ld b,(hl)			;0147	46 	F 
	exx			;0148	d9 	. 
	ld b,d			;0149	42 	B 
	ld b,l			;014a	45 	E 
	ld b,l			;014b	45 	E 
	ret nc			;014c	d0 	. 
	ld b,e			;014d	43 	C 
	ld c,c			;014e	49 	I 
	ld d,d			;014f	52 	R 
	ld b,e			;0150	43 	C 
	ld c,h			;0151	4c 	L 
	push bc			;0152	c5 	. 
	ld c,c			;0153	49 	I 
	ld c,(hl)			;0154	4e 	N 
	bit 2,b		;0155	cb 50 	. P 
	ld b,c			;0157	41 	A 
	ld d,b			;0158	50 	P 
	ld b,l			;0159	45 	E 
	jp nc,04c46h		;015a	d2 46 4c 	. F L 
	ld b,c			;015d	41 	A 
	ld d,e			;015e	53 	S 
	ret z			;015f	c8 	. 
	ld b,d			;0160	42 	B 
	ld d,d			;0161	52 	R 
	ld c,c			;0162	49 	I 
	ld b,a			;0163	47 	G 
	ld c,b			;0164	48 	H 
	call nc,04e49h		;0165	d4 49 4e 	. I N 
	ld d,(hl)			;0168	56 	V 
	ld b,l			;0169	45 	E 
	ld d,d			;016a	52 	R 
	ld d,e			;016b	53 	S 
	push bc			;016c	c5 	. 
	ld c,a			;016d	4f 	O 
	ld d,(hl)			;016e	56 	V 
	ld b,l			;016f	45 	E 
	jp nc,0554fh		;0170	d2 4f 55 	. O U 
	call nc,0504ch		;0173	d4 4c 50 	. L P 
	ld d,d			;0176	52 	R 
	ld c,c			;0177	49 	I 
	ld c,(hl)			;0178	4e 	N 
	call nc,04c4ch		;0179	d4 4c 4c 	. L L 
	ld c,c			;017c	49 	I 
	ld d,e			;017d	53 	S 
	call nc,05453h		;017e	d4 53 54 	. S T 
	ld c,a			;0181	4f 	O 
	ret nc			;0182	d0 	. 
	ld d,d			;0183	52 	R 
	ld b,l			;0184	45 	E 
	ld b,c			;0185	41 	A 
	call nz,04144h		;0186	c4 44 41 	. D A 
	ld d,h			;0189	54 	T 
	pop bc			;018a	c1 	. 
	ld d,d			;018b	52 	R 
	ld b,l			;018c	45 	E 
	ld d,e			;018d	53 	S 
	ld d,h			;018e	54 	T 
	ld c,a			;018f	4f 	O 
	ld d,d			;0190	52 	R 
	push bc			;0191	c5 	. 
	ld c,(hl)			;0192	4e 	N 
	ld b,l			;0193	45 	E 
	rst 10h			;0194	d7 	. 
	ld b,d			;0195	42 	B 
	ld c,a			;0196	4f 	O 
	ld d,d			;0197	52 	R 
	ld b,h			;0198	44 	D 
	ld b,l			;0199	45 	E 
	jp nc,04f43h		;019a	d2 43 4f 	. C O 
	ld c,(hl)			;019d	4e 	N 
	ld d,h			;019e	54 	T 
	ld c,c			;019f	49 	I 
	ld c,(hl)			;01a0	4e 	N 
	ld d,l			;01a1	55 	U 
	push bc			;01a2	c5 	. 
	ld b,h			;01a3	44 	D 
	ld c,c			;01a4	49 	I 
	call 04552h		;01a5	cd 52 45 	. R E 
	call 04f46h		;01a8	cd 46 4f 	. F O 
	jp nc,04f47h		;01ab	d2 47 4f 	. G O 
	jr nz,$+86		;01ae	20 54 	  T 
	rst 8			;01b0	cf 	. 
	ld b,a			;01b1	47 	G 
	ld c,a			;01b2	4f 	O 
	jr nz,$+85		;01b3	20 53 	  S 
	ld d,l			;01b5	55 	U 
	jp nz,04e49h		;01b6	c2 49 4e 	. I N 
	ld d,b			;01b9	50 	P 
	ld d,l			;01ba	55 	U 
	call nc,04f4ch		;01bb	d4 4c 4f 	. L O 
	ld b,c			;01be	41 	A 
	call nz,0494ch		;01bf	c4 4c 49 	. L I 
	ld d,e			;01c2	53 	S 
	call nc,0454ch		;01c3	d4 4c 45 	. L E 
	call nc,04150h		;01c6	d4 50 41 	. P A 
	ld d,l			;01c9	55 	U 
	ld d,e			;01ca	53 	S 
	push bc			;01cb	c5 	. 
	ld c,(hl)			;01cc	4e 	N 
	ld b,l			;01cd	45 	E 
	ld e,b			;01ce	58 	X 
	call nc,04f50h		;01cf	d4 50 4f 	. P O 
	ld c,e			;01d2	4b 	K 
	push bc			;01d3	c5 	. 
	ld d,b			;01d4	50 	P 
	ld d,d			;01d5	52 	R 
	ld c,c			;01d6	49 	I 
	ld c,(hl)			;01d7	4e 	N 
	call nc,04c50h		;01d8	d4 50 4c 	. P L 
	ld c,a			;01db	4f 	O 
	call nc,05552h		;01dc	d4 52 55 	. R U 
	adc a,053h		;01df	ce 53 	. S 
	ld b,c			;01e1	41 	A 
	ld d,(hl)			;01e2	56 	V 
	push bc			;01e3	c5 	. 
	ld d,d			;01e4	52 	R 
	ld b,c			;01e5	41 	A 
	ld c,(hl)			;01e6	4e 	N 
	ld b,h			;01e7	44 	D 
	ld c,a			;01e8	4f 	O 
	ld c,l			;01e9	4d 	M 
	ld c,c			;01ea	49 	I 
	ld e,d			;01eb	5a 	Z 
	push bc			;01ec	c5 	. 
	ld c,c			;01ed	49 	I 
	add a,043h		;01ee	c6 43 	. C 
	ld c,h			;01f0	4c 	L 
	out (044h),a		;01f1	d3 44 	. D 
	ld d,d			;01f3	52 	R 
	ld b,c			;01f4	41 	A 
	rst 10h			;01f5	d7 	. 
	ld b,e			;01f6	43 	C 
	ld c,h			;01f7	4c 	L 
	ld b,l			;01f8	45 	E 
	ld b,c			;01f9	41 	A 
	jp nc,04552h		;01fa	d2 52 45 	. R E 
	ld d,h			;01fd	54 	T 
	ld d,l			;01fe	55 	U 
	ld d,d			;01ff	52 	R 
	adc a,043h		;0200	ce 43 	. C 
	ld c,a			;0202	4f 	O 
	ld d,b			;0203	50 	P 
	exx			;0204	d9 	. 
	ld b,d			;0205	42 	B 
	ld c,b			;0206	48 	H 
	ld e,c			;0207	59 	Y 
	ld (hl),035h		;0208	36 35 	6 5 
	ld d,h			;020a	54 	T 
	ld b,a			;020b	47 	G 
	ld d,(hl)			;020c	56 	V 
	ld c,(hl)			;020d	4e 	N 
	ld c,d			;020e	4a 	J 
	ld d,l			;020f	55 	U 
	scf			;0210	37 	7 
	inc (hl)			;0211	34 	4 
	ld d,d			;0212	52 	R 
	ld b,(hl)			;0213	46 	F 
	ld b,e			;0214	43 	C 
	ld c,l			;0215	4d 	M 
	ld c,e			;0216	4b 	K 
	ld c,c			;0217	49 	I 
	jr c,$+53		;0218	38 33 	8 3 
	ld b,l			;021a	45 	E 
	ld b,h			;021b	44 	D 
	ld e,b			;021c	58 	X 
	ld c,04ch		;021d	0e 4c 	. L 
	ld c,a			;021f	4f 	O 
	add hl,sp			;0220	39 	9 
	ld (05357h),a		;0221	32 57 53 	2 W S 
	ld e,d			;0224	5a 	Z 
	jr nz,$+15		;0225	20 0d 	  . 
	ld d,b			;0227	50 	P 
	jr nc,$+51		;0228	30 31 	0 1 
	ld d,c			;022a	51 	Q 
	ld b,c			;022b	41 	A 
	ex (sp),hl			;022c	e3 	. 
	call nz,0e4e0h		;022d	c4 e0 e4 	. . . 
	or h			;0230	b4 	. 
	cp h			;0231	bc 	. 
	cp l			;0232	bd 	. 
	cp e			;0233	bb 	. 
	xor a			;0234	af 	. 
	or b			;0235	b0 	. 
	or c			;0236	b1 	. 
	ret nz			;0237	c0 	. 
	and a			;0238	a7 	. 
	and (hl)			;0239	a6 	. 
	cp (hl)			;023a	be 	. 
	xor l			;023b	ad 	. 
	or d			;023c	b2 	. 
	cp d			;023d	ba 	. 
	push hl			;023e	e5 	. 
	and l			;023f	a5 	. 
	jp nz,0b3e1h		;0240	c2 e1 b3 	. . . 
	cp c			;0243	b9 	. 
	pop bc			;0244	c1 	. 
	cp b			;0245	b8 	. 
	ld a,(hl)			;0246	7e 	~ 
	call c,05cdah		;0247	dc da 5c 	. . \ 
	or a			;024a	b7 	. 
	ld a,e			;024b	7b 	{ 
	ld a,l			;024c	7d 	} 
	ret c			;024d	d8 	. 
	cp a			;024e	bf 	. 
	xor (hl)			;024f	ae 	. 
	xor d			;0250	aa 	. 
	xor e			;0251	ab 	. 
	defb 0ddh,0deh,0dfh	;illegal sequence		;0252	dd de df 	. . . 
	ld a,a			;0255	7f 	 
	or l			;0256	b5 	. 
	sub 07ch		;0257	d6 7c 	. | 
	push de			;0259	d5 	. 
	ld e,l			;025a	5d 	] 
	in a,(0b6h)		;025b	db b6 	. . 
	exx			;025d	d9 	. 
	ld e,e			;025e	5b 	[ 
	rst 10h			;025f	d7 	. 
	inc c			;0260	0c 	. 
	rlca			;0261	07 	. 
	ld b,004h		;0262	06 04 	. . 
	dec b			;0264	05 	. 
	ex af,af'			;0265	08 	. 
	ld a,(bc)			;0266	0a 	. 
	dec bc			;0267	0b 	. 
	add hl,bc			;0268	09 	. 
	rrca			;0269	0f 	. 
	jp po,03f2ah		;026a	e2 2a 3f 	. * ? 
	call 0ccc8h		;026d	cd c8 cc 	. . . 
	bit 3,(hl)		;0270	cb 5e 	. ^ 
	xor h			;0272	ac 	. 
	dec l			;0273	2d 	- 
	dec hl			;0274	2b 	+ 
	dec a			;0275	3d 	= 
	ld l,02ch		;0276	2e 2c 	. , 
	dec sp			;0278	3b 	; 
	ld (03cc7h),hl		;0279	22 c7 3c 	" . < 
	jp 0c53eh		;027c	c3 3e c5 	. > . 
	cpl			;027f	2f 	/ 
	ret			;0280	c9 	. 
	ld h,b			;0281	60 	` 
	add a,03ah		;0282	c6 3a 	. : 
	ret nc			;0284	d0 	. 
	adc a,0a8h		;0285	ce a8 	. . 
	jp z,0d4d3h		;0287	ca d3 d4 	. . . 
	pop de			;028a	d1 	. 
	jp nc,0cfa9h		;028b	d2 a9 cf 	. . . 
	ld l,02fh		;028e	2e 2f 	. / 
	ld de,0ffffh		;0290	11 ff ff 	. . . 
	ld bc,0fefeh		;0293	01 fe fe 	. . . 
	in a,(c)		;0296	ed 78 	. x 
	cpl			;0298	2f 	/ 
	and 01fh		;0299	e6 1f 	. . 
	jr z,$+16		;029b	28 0e 	( . 
	ld h,a			;029d	67 	g 
	ld a,l			;029e	7d 	} 
	inc d			;029f	14 	. 
	ret nz			;02a0	c0 	. 
	sub 008h		;02a1	d6 08 	. . 
	srl h		;02a3	cb 3c 	. < 
	jr nc,$-4		;02a5	30 fa 	0 . 
	ld d,e			;02a7	53 	S 
	ld e,a			;02a8	5f 	_ 
	jr nz,$-10		;02a9	20 f4 	  . 
	dec l			;02ab	2d 	- 
	rlc b		;02ac	cb 00 	. . 
	jr c,$-24		;02ae	38 e6 	8 . 
	ld a,d			;02b0	7a 	z 
	inc a			;02b1	3c 	< 
	ret z			;02b2	c8 	. 
	cp 028h		;02b3	fe 28 	. ( 
	ret z			;02b5	c8 	. 
	cp 019h		;02b6	fe 19 	. . 
	ret z			;02b8	c8 	. 
	ld a,e			;02b9	7b 	{ 
	ld e,d			;02ba	5a 	Z 
	ld d,a			;02bb	57 	W 
	cp 018h		;02bc	fe 18 	. . 
	ret			;02be	c9 	. 
	call 0028eh		;02bf	cd 8e 02 	. . . 
	ret nz			;02c2	c0 	. 
	ld hl,05c00h		;02c3	21 00 5c 	! . \ 
	bit 7,(hl)		;02c6	cb 7e 	. ~ 
	jr nz,$+9		;02c8	20 07 	  . 
	inc hl			;02ca	23 	# 
	dec (hl)			;02cb	35 	5 
	dec hl			;02cc	2b 	+ 
	jr nz,$+4		;02cd	20 02 	  . 
	ld (hl),0ffh		;02cf	36 ff 	6 . 
	ld a,l			;02d1	7d 	} 
	ld hl,05c04h		;02d2	21 04 5c 	! . \ 
	cp l			;02d5	bd 	. 
	jr nz,$-16		;02d6	20 ee 	  . 
	call 0031eh		;02d8	cd 1e 03 	. . . 
	ret nc			;02db	d0 	. 
	ld hl,05c00h		;02dc	21 00 5c 	! . \ 
	cp (hl)			;02df	be 	. 
	jr z,$+48		;02e0	28 2e 	( . 
	ex de,hl			;02e2	eb 	. 
	ld hl,05c04h		;02e3	21 04 5c 	! . \ 
	cp (hl)			;02e6	be 	. 
	jr z,$+41		;02e7	28 27 	( ' 
	bit 7,(hl)		;02e9	cb 7e 	. ~ 
	jr nz,$+6		;02eb	20 04 	  . 
	ex de,hl			;02ed	eb 	. 
	bit 7,(hl)		;02ee	cb 7e 	. ~ 
	ret z			;02f0	c8 	. 
	ld e,a			;02f1	5f 	_ 
	ld (hl),a			;02f2	77 	w 
	inc hl			;02f3	23 	# 
	ld (hl),005h		;02f4	36 05 	6 . 
	inc hl			;02f6	23 	# 
	ld a,(05c09h)		;02f7	3a 09 5c 	: . \ 
	ld (hl),a			;02fa	77 	w 
	inc hl			;02fb	23 	# 
	ld c,(iy+007h)		;02fc	fd 4e 07 	. N . 
	ld d,(iy+001h)		;02ff	fd 56 01 	. V . 
	push hl			;0302	e5 	. 
	call 00333h		;0303	cd 33 03 	. 3 . 
	pop hl			;0306	e1 	. 
	ld (hl),a			;0307	77 	w 
	ld (05c08h),a		;0308	32 08 5c 	2 . \ 
	set 5,(iy+001h)		;030b	fd cb 01 ee 	. . . . 
	ret			;030f	c9 	. 
	inc hl			;0310	23 	# 
	ld (hl),005h		;0311	36 05 	6 . 
	inc hl			;0313	23 	# 
	dec (hl)			;0314	35 	5 
	ret nz			;0315	c0 	. 
	ld a,(05c0ah)		;0316	3a 0a 5c 	: . \ 
	ld (hl),a			;0319	77 	w 
	inc hl			;031a	23 	# 
	ld a,(hl)			;031b	7e 	~ 
	jr $-20		;031c	18 ea 	. . 
	ld b,d			;031e	42 	B 
	ld d,000h		;031f	16 00 	. . 
	ld a,e			;0321	7b 	{ 
	cp 027h		;0322	fe 27 	. ' 
	ret nc			;0324	d0 	. 
	cp 018h		;0325	fe 18 	. . 
	jr nz,$+5		;0327	20 03 	  . 
	bit 7,b		;0329	cb 78 	. x 
	ret nz			;032b	c0 	. 
	ld hl,00205h		;032c	21 05 02 	! . . 
	add hl,de			;032f	19 	. 
	ld a,(hl)			;0330	7e 	~ 
	scf			;0331	37 	7 
	ret			;0332	c9 	. 
	ld a,e			;0333	7b 	{ 
	cp 03ah		;0334	fe 3a 	. : 
	jr c,$+49		;0336	38 2f 	8 / 
	dec c			;0338	0d 	. 
	jp m,0034fh		;0339	fa 4f 03 	. O . 
	jr z,$+5		;033c	28 03 	( . 
	add a,04fh		;033e	c6 4f 	. O 
	ret			;0340	c9 	. 
	ld hl,001ebh		;0341	21 eb 01 	! . . 
	inc b			;0344	04 	. 
	jr z,$+5		;0345	28 03 	( . 
	ld hl,00205h		;0347	21 05 02 	! . . 
	ld d,000h		;034a	16 00 	. . 
	add hl,de			;034c	19 	. 
	ld a,(hl)			;034d	7e 	~ 
	ret			;034e	c9 	. 
	ld hl,00229h		;034f	21 29 02 	! ) . 
	bit 0,b		;0352	cb 40 	. @ 
	jr z,$-10		;0354	28 f4 	( . 
	bit 3,d		;0356	cb 5a 	. Z 
	jr z,$+12		;0358	28 0a 	( . 
	bit 3,(iy+030h)		;035a	fd cb 30 5e 	. . 0 ^ 
	ret nz			;035e	c0 	. 
	inc b			;035f	04 	. 
	ret nz			;0360	c0 	. 
	add a,020h		;0361	c6 20 	.   
	ret			;0363	c9 	. 
	add a,0a5h		;0364	c6 a5 	. . 
	ret			;0366	c9 	. 
	cp 030h		;0367	fe 30 	. 0 
	ret c			;0369	d8 	. 
	dec c			;036a	0d 	. 
	jp m,0039dh		;036b	fa 9d 03 	. . . 
	jr nz,$+27		;036e	20 19 	  . 
	ld hl,00254h		;0370	21 54 02 	! T . 
	bit 5,b		;0373	cb 68 	. h 
	jr z,$-43		;0375	28 d3 	( . 
	cp 038h		;0377	fe 38 	. 8 
	jr nc,$+9		;0379	30 07 	0 . 
	sub 020h		;037b	d6 20 	.   
	inc b			;037d	04 	. 
	ret z			;037e	c8 	. 
	add a,008h		;037f	c6 08 	. . 
	ret			;0381	c9 	. 
	sub 036h		;0382	d6 36 	. 6 
	inc b			;0384	04 	. 
	ret z			;0385	c8 	. 
	add a,0feh		;0386	c6 fe 	. . 
	ret			;0388	c9 	. 
	ld hl,00230h		;0389	21 30 02 	! 0 . 
	cp 039h		;038c	fe 39 	. 9 
	jr z,$-68		;038e	28 ba 	( . 
	cp 030h		;0390	fe 30 	. 0 
	jr z,$-72		;0392	28 b6 	( . 
	and 007h		;0394	e6 07 	. . 
	add a,080h		;0396	c6 80 	. . 
	inc b			;0398	04 	. 
	ret z			;0399	c8 	. 
	xor 00fh		;039a	ee 0f 	. . 
	ret			;039c	c9 	. 
	inc b			;039d	04 	. 
	ret z			;039e	c8 	. 
	bit 5,b		;039f	cb 68 	. h 
	ld hl,00230h		;03a1	21 30 02 	! 0 . 
	jr nz,$-90		;03a4	20 a4 	  . 
	sub 010h		;03a6	d6 10 	. . 
	cp 022h		;03a8	fe 22 	. " 
	jr z,$+8		;03aa	28 06 	( . 
	cp 020h		;03ac	fe 20 	.   
	ret nz			;03ae	c0 	. 
	ld a,05fh		;03af	3e 5f 	> _ 
	ret			;03b1	c9 	. 
	ld a,040h		;03b2	3e 40 	> @ 
	ret			;03b4	c9 	. 
	di			;03b5	f3 	. 
	ld a,l			;03b6	7d 	} 
	srl l		;03b7	cb 3d 	. = 
	srl l		;03b9	cb 3d 	. = 
	cpl			;03bb	2f 	/ 
	and 003h		;03bc	e6 03 	. . 
	ld c,a			;03be	4f 	O 
	ld b,000h		;03bf	06 00 	. . 
	ld ix,003d1h		;03c1	dd 21 d1 03 	. ! . . 
	add ix,bc		;03c5	dd 09 	. . 
	ld a,(05c48h)		;03c7	3a 48 5c 	: H \ 
	and 038h		;03ca	e6 38 	. 8 
	rrca			;03cc	0f 	. 
	rrca			;03cd	0f 	. 
	rrca			;03ce	0f 	. 
	or 008h		;03cf	f6 08 	. . 
	nop			;03d1	00 	. 
	nop			;03d2	00 	. 
	nop			;03d3	00 	. 
	inc b			;03d4	04 	. 
	inc c			;03d5	0c 	. 
	dec c			;03d6	0d 	. 
	jr nz,$-1		;03d7	20 fd 	  . 
	ld c,03fh		;03d9	0e 3f 	. ? 
	dec b			;03db	05 	. 
	jp nz,003d6h		;03dc	c2 d6 03 	. . . 
	xor 010h		;03df	ee 10 	. . 
	out (0feh),a		;03e1	d3 fe 	. . 
	ld b,h			;03e3	44 	D 
	ld c,a			;03e4	4f 	O 
	bit 4,a		;03e5	cb 67 	. g 
	jr nz,$+11		;03e7	20 09 	  . 
	ld a,d			;03e9	7a 	z 
	or e			;03ea	b3 	. 
	jr z,$+11		;03eb	28 09 	( . 
	ld a,c			;03ed	79 	y 
	ld c,l			;03ee	4d 	M 
	dec de			;03ef	1b 	. 
	jp (ix)		;03f0	dd e9 	. . 
	ld c,l			;03f2	4d 	M 
	inc c			;03f3	0c 	. 
	jp (ix)		;03f4	dd e9 	. . 
	ei			;03f6	fb 	. 
	ret			;03f7	c9 	. 
	rst 28h			;03f8	ef 	. 
	ld sp,0c027h		;03f9	31 27 c0 	1 ' . 
	inc bc			;03fc	03 	. 
	inc (hl)			;03fd	34 	4 
	call pe,0986ch		;03fe	ec 6c 98 	. l . 
	rra			;0401	1f 	. 
	push af			;0402	f5 	. 
	inc b			;0403	04 	. 
	and c			;0404	a1 	. 
	rrca			;0405	0f 	. 
	jr c,$+35		;0406	38 21 	8 ! 
	sub d			;0408	92 	. 
	ld e,h			;0409	5c 	\ 
	ld a,(hl)			;040a	7e 	~ 
	and a			;040b	a7 	. 
	jr nz,$+96		;040c	20 5e 	  ^ 
	inc hl			;040e	23 	# 
	ld c,(hl)			;040f	4e 	N 
	inc hl			;0410	23 	# 
	ld b,(hl)			;0411	46 	F 
	ld a,b			;0412	78 	x 
	rla			;0413	17 	. 
	sbc a,a			;0414	9f 	. 
	cp c			;0415	b9 	. 
	jr nz,$+86		;0416	20 54 	  T 
	inc hl			;0418	23 	# 
	cp (hl)			;0419	be 	. 
	jr nz,$+82		;041a	20 50 	  P 
	ld a,b			;041c	78 	x 
	add a,03ch		;041d	c6 3c 	. < 
	jp p,00425h		;041f	f2 25 04 	. % . 
	jp po,0046ch		;0422	e2 6c 04 	. l . 
	ld b,0fah		;0425	06 fa 	. . 
	inc b			;0427	04 	. 
	sub 00ch		;0428	d6 0c 	. . 
	jr nc,$-3		;042a	30 fb 	0 . 
	add a,00ch		;042c	c6 0c 	. . 
	push bc			;042e	c5 	. 
	ld hl,0046eh		;042f	21 6e 04 	! n . 
	call 03406h		;0432	cd 06 34 	. . 4 
	call 033b4h		;0435	cd b4 33 	. . 3 
	rst 28h			;0438	ef 	. 
	inc b			;0439	04 	. 
	jr c,$-13		;043a	38 f1 	8 . 
	add a,(hl)			;043c	86 	. 
	ld (hl),a			;043d	77 	w 
	rst 28h			;043e	ef 	. 
	ret nz			;043f	c0 	. 
	ld (bc),a			;0440	02 	. 
	ld sp,0cd38h		;0441	31 38 cd 	1 8 . 
	sub h			;0444	94 	. 
	ld e,0feh		;0445	1e fe 	. . 
	dec bc			;0447	0b 	. 
	jr nc,$+36		;0448	30 22 	0 " 
	rst 28h			;044a	ef 	. 
	ret po			;044b	e0 	. 
	inc b			;044c	04 	. 
	ret po			;044d	e0 	. 
	inc (hl)			;044e	34 	4 
	add a,b			;044f	80 	. 
	ld b,e			;0450	43 	C 
	ld d,l			;0451	55 	U 
	sbc a,a			;0452	9f 	. 
	add a,b			;0453	80 	. 
	ld bc,03405h		;0454	01 05 34 	. . 4 
	dec (hl)			;0457	35 	5 
	ld (hl),c			;0458	71 	q 
	inc bc			;0459	03 	. 
	jr c,$-49		;045a	38 cd 	8 . 
	sbc a,c			;045c	99 	. 
	ld e,0c5h		;045d	1e c5 	. . 
	call 01e99h		;045f	cd 99 1e 	. . . 
	pop hl			;0462	e1 	. 
	ld d,b			;0463	50 	P 
	ld e,c			;0464	59 	Y 
	ld a,d			;0465	7a 	z 
	or e			;0466	b3 	. 
	ret z			;0467	c8 	. 
	dec de			;0468	1b 	. 
	jp 003b5h		;0469	c3 b5 03 	. . . 
	rst 8			;046c	cf 	. 
	ld a,(bc)			;046d	0a 	. 
	adc a,c			;046e	89 	. 
	ld (bc),a			;046f	02 	. 
	ret nc			;0470	d0 	. 
	ld (de),a			;0471	12 	. 
	add a,(hl)			;0472	86 	. 
	adc a,c			;0473	89 	. 
	ld a,(bc)			;0474	0a 	. 
	sub a			;0475	97 	. 
	ld h,b			;0476	60 	` 
	ld (hl),l			;0477	75 	u 
	adc a,c			;0478	89 	. 
	ld (de),a			;0479	12 	. 
	push de			;047a	d5 	. 
	rla			;047b	17 	. 
	rra			;047c	1f 	. 
	adc a,c			;047d	89 	. 
	dec de			;047e	1b 	. 
	sub b			;047f	90 	. 
	ld b,c			;0480	41 	A 
	ld (bc),a			;0481	02 	. 
	adc a,c			;0482	89 	. 
	inc h			;0483	24 	$ 
	ret nc			;0484	d0 	. 
	ld d,e			;0485	53 	S 
	jp z,02e89h		;0486	ca 89 2e 	. . . 
	sbc a,l			;0489	9d 	. 
	ld (hl),0b1h		;048a	36 b1 	6 . 
	adc a,c			;048c	89 	. 
	jr c,$+1		;048d	38 ff 	8 . 
	ld c,c			;048f	49 	I 
	ld a,089h		;0490	3e 89 	> . 
	ld b,e			;0492	43 	C 
	rst 38h			;0493	ff 	. 
	ld l,d			;0494	6a 	j 
	ld (hl),e			;0495	73 	s 
	adc a,c			;0496	89 	. 
	ld c,a			;0497	4f 	O 
	and a			;0498	a7 	. 
	nop			;0499	00 	. 
	ld d,h			;049a	54 	T 
	adc a,c			;049b	89 	. 
	ld e,h			;049c	5c 	\ 
	nop			;049d	00 	. 
	nop			;049e	00 	. 
	nop			;049f	00 	. 
	adc a,c			;04a0	89 	. 
	ld l,c			;04a1	69 	i 
	inc d			;04a2	14 	. 
	or 024h		;04a3	f6 24 	. $ 
	adc a,c			;04a5	89 	. 
	halt			;04a6	76 	v 
	pop af			;04a7	f1 	. 
	djnz $+7		;04a8	10 05 	. . 
	call 024fbh		;04aa	cd fb 24 	. . $ 
	ld a,(05c3bh)		;04ad	3a 3b 5c 	: ; \ 
	add a,a			;04b0	87 	. 
	jp m,01c8ah		;04b1	fa 8a 1c 	. . . 
	pop hl			;04b4	e1 	. 
	ret nc			;04b5	d0 	. 
	push hl			;04b6	e5 	. 
	call 02bf1h		;04b7	cd f1 2b 	. . + 
	ld h,d			;04ba	62 	b 
	ld l,e			;04bb	6b 	k 
	dec c			;04bc	0d 	. 
	ret m			;04bd	f8 	. 
	add hl,bc			;04be	09 	. 
	set 7,(hl)		;04bf	cb fe 	. . 
	ret			;04c1	c9 	. 
	ld hl,0053fh		;04c2	21 3f 05 	! ? . 
	push hl			;04c5	e5 	. 
	ld hl,01f80h		;04c6	21 80 1f 	! . . 
	bit 7,a		;04c9	cb 7f 	.  
	jr z,$+5		;04cb	28 03 	( . 
	ld hl,00c98h		;04cd	21 98 0c 	! . . 
	ex af,af'			;04d0	08 	. 
	inc de			;04d1	13 	. 
	dec ix		;04d2	dd 2b 	. + 
	di			;04d4	f3 	. 
	ld a,002h		;04d5	3e 02 	> . 
	ld b,a			;04d7	47 	G 
	djnz $+0		;04d8	10 fe 	. . 
	out (0feh),a		;04da	d3 fe 	. . 
	xor 00fh		;04dc	ee 0f 	. . 
	ld b,0a4h		;04de	06 a4 	. . 
	dec l			;04e0	2d 	- 
	jr nz,$-9		;04e1	20 f5 	  . 
	dec b			;04e3	05 	. 
	dec h			;04e4	25 	% 
	jp p,004d8h		;04e5	f2 d8 04 	. . . 
	ld b,02fh		;04e8	06 2f 	. / 
	djnz $+0		;04ea	10 fe 	. . 
	out (0feh),a		;04ec	d3 fe 	. . 
	ld a,00dh		;04ee	3e 0d 	> . 
	ld b,037h		;04f0	06 37 	. 7 
	djnz $+0		;04f2	10 fe 	. . 
	out (0feh),a		;04f4	d3 fe 	. . 
	ld bc,03b0eh		;04f6	01 0e 3b 	. . ; 
	ex af,af'			;04f9	08 	. 
	ld l,a			;04fa	6f 	o 
	jp 00507h		;04fb	c3 07 05 	. . . 
	ld a,d			;04fe	7a 	z 
	or e			;04ff	b3 	. 
	jr z,$+14		;0500	28 0c 	( . 
	ld l,(ix+000h)		;0502	dd 6e 00 	. n . 
	ld a,h			;0505	7c 	| 
	xor l			;0506	ad 	. 
	ld h,a			;0507	67 	g 
	ld a,001h		;0508	3e 01 	> . 
	scf			;050a	37 	7 
	jp 00525h		;050b	c3 25 05 	. % . 
	ld l,h			;050e	6c 	l 
	jr $-10		;050f	18 f4 	. . 
	ld a,c			;0511	79 	y 
	bit 7,b		;0512	cb 78 	. x 
	djnz $+0		;0514	10 fe 	. . 
	jr nc,$+6		;0516	30 04 	0 . 
	ld b,042h		;0518	06 42 	. B 
	djnz $+0		;051a	10 fe 	. . 
	out (0feh),a		;051c	d3 fe 	. . 
	ld b,03eh		;051e	06 3e 	. > 
	jr nz,$-15		;0520	20 ef 	  . 
	dec b			;0522	05 	. 
	xor a			;0523	af 	. 
	inc a			;0524	3c 	< 
	rl l		;0525	cb 15 	. . 
	jp nz,00514h		;0527	c2 14 05 	. . . 
	dec de			;052a	1b 	. 
	inc ix		;052b	dd 23 	. # 
	ld b,031h		;052d	06 31 	. 1 
	ld a,07fh		;052f	3e 7f 	>  
	in a,(0feh)		;0531	db fe 	. . 
	rra			;0533	1f 	. 
	ret nc			;0534	d0 	. 
	ld a,d			;0535	7a 	z 
	inc a			;0536	3c 	< 
	jp nz,004feh		;0537	c2 fe 04 	. . . 
	ld b,03bh		;053a	06 3b 	. ; 
	djnz $+0		;053c	10 fe 	. . 
	ret			;053e	c9 	. 
	push af			;053f	f5 	. 
	ld a,(05c48h)		;0540	3a 48 5c 	: H \ 
	and 038h		;0543	e6 38 	. 8 
	rrca			;0545	0f 	. 
	rrca			;0546	0f 	. 
	rrca			;0547	0f 	. 
	out (0feh),a		;0548	d3 fe 	. . 
	ld a,07fh		;054a	3e 7f 	>  
	in a,(0feh)		;054c	db fe 	. . 
	rra			;054e	1f 	. 
	ei			;054f	fb 	. 
	jr c,$+4		;0550	38 02 	8 . 
	rst 8			;0552	cf 	. 
	inc c			;0553	0c 	. 
	pop af			;0554	f1 	. 
	ret			;0555	c9 	. 
	inc d			;0556	14 	. 
	ex af,af'			;0557	08 	. 
	dec d			;0558	15 	. 
	di			;0559	f3 	. 
	ld a,00fh		;055a	3e 0f 	> . 
	out (0feh),a		;055c	d3 fe 	. . 
	ld hl,0053fh		;055e	21 3f 05 	! ? . 
	push hl			;0561	e5 	. 
	in a,(0feh)		;0562	db fe 	. . 
	rra			;0564	1f 	. 
	and 020h		;0565	e6 20 	.   
	or 002h		;0567	f6 02 	. . 
	ld c,a			;0569	4f 	O 
	cp a			;056a	bf 	. 
	ret nz			;056b	c0 	. 
	call 005e7h		;056c	cd e7 05 	. . . 
	jr nc,$-4		;056f	30 fa 	0 . 
	ld hl,00415h		;0571	21 15 04 	! . . 
	djnz $+0		;0574	10 fe 	. . 
	dec hl			;0576	2b 	+ 
	ld a,h			;0577	7c 	| 
	or l			;0578	b5 	. 
	jr nz,$-5		;0579	20 f9 	  . 
	call 005e3h		;057b	cd e3 05 	. . . 
	jr nc,$-19		;057e	30 eb 	0 . 
	ld b,09ch		;0580	06 9c 	. . 
	call 005e3h		;0582	cd e3 05 	. . . 
	jr nc,$-26		;0585	30 e4 	0 . 
	ld a,0c6h		;0587	3e c6 	> . 
	cp b			;0589	b8 	. 
	jr nc,$-30		;058a	30 e0 	0 . 
	inc h			;058c	24 	$ 
	jr nz,$-13		;058d	20 f1 	  . 
	ld b,0c9h		;058f	06 c9 	. . 
	call 005e7h		;0591	cd e7 05 	. . . 
	jr nc,$-41		;0594	30 d5 	0 . 
	ld a,b			;0596	78 	x 
	cp 0d4h		;0597	fe d4 	. . 
	jr nc,$-10		;0599	30 f4 	0 . 
	call 005e7h		;059b	cd e7 05 	. . . 
	ret nc			;059e	d0 	. 
	ld a,c			;059f	79 	y 
	xor 003h		;05a0	ee 03 	. . 
	ld c,a			;05a2	4f 	O 
	ld h,000h		;05a3	26 00 	& . 
	ld b,0b0h		;05a5	06 b0 	. . 
	jr $+33		;05a7	18 1f 	. . 
	ex af,af'			;05a9	08 	. 
	jr nz,$+9		;05aa	20 07 	  . 
	jr nc,$+17		;05ac	30 0f 	0 . 
	ld (ix+000h),l		;05ae	dd 75 00 	. u . 
	jr $+17		;05b1	18 0f 	. . 
	rl c		;05b3	cb 11 	. . 
	xor l			;05b5	ad 	. 
	ret nz			;05b6	c0 	. 
	ld a,c			;05b7	79 	y 
	rra			;05b8	1f 	. 
	ld c,a			;05b9	4f 	O 
	inc de			;05ba	13 	. 
	jr $+9		;05bb	18 07 	. . 
	ld a,(ix+000h)		;05bd	dd 7e 00 	. ~ . 
	xor l			;05c0	ad 	. 
	ret nz			;05c1	c0 	. 
	inc ix		;05c2	dd 23 	. # 
	dec de			;05c4	1b 	. 
	ex af,af'			;05c5	08 	. 
	ld b,0b2h		;05c6	06 b2 	. . 
	ld l,001h		;05c8	2e 01 	. . 
	call 005e3h		;05ca	cd e3 05 	. . . 
	ret nc			;05cd	d0 	. 
	ld a,0cbh		;05ce	3e cb 	> . 
	cp b			;05d0	b8 	. 
	rl l		;05d1	cb 15 	. . 
	ld b,0b0h		;05d3	06 b0 	. . 
	jp nc,005cah		;05d5	d2 ca 05 	. . . 
	ld a,h			;05d8	7c 	| 
	xor l			;05d9	ad 	. 
	ld h,a			;05da	67 	g 
	ld a,d			;05db	7a 	z 
	or e			;05dc	b3 	. 
	jr nz,$-52		;05dd	20 ca 	  . 
	ld a,h			;05df	7c 	| 
	cp 001h		;05e0	fe 01 	. . 
	ret			;05e2	c9 	. 
	call 005e7h		;05e3	cd e7 05 	. . . 
	ret nc			;05e6	d0 	. 
	ld a,016h		;05e7	3e 16 	> . 
	dec a			;05e9	3d 	= 
	jr nz,$-1		;05ea	20 fd 	  . 
	and a			;05ec	a7 	. 
	inc b			;05ed	04 	. 
	ret z			;05ee	c8 	. 
	ld a,07fh		;05ef	3e 7f 	>  
	in a,(0feh)		;05f1	db fe 	. . 
	rra			;05f3	1f 	. 
	ret nc			;05f4	d0 	. 
	xor c			;05f5	a9 	. 
	and 020h		;05f6	e6 20 	.   
	jr z,$-11		;05f8	28 f3 	( . 
	ld a,c			;05fa	79 	y 
	cpl			;05fb	2f 	/ 
	ld c,a			;05fc	4f 	O 
	and 007h		;05fd	e6 07 	. . 
	or 008h		;05ff	f6 08 	. . 
	out (0feh),a		;0601	d3 fe 	. . 
	scf			;0603	37 	7 
	ret			;0604	c9 	. 
	pop af			;0605	f1 	. 
	ld a,(05c74h)		;0606	3a 74 5c 	: t \ 
	sub 0e0h		;0609	d6 e0 	. . 
	ld (05c74h),a		;060b	32 74 5c 	2 t \ 
	call 01c8ch		;060e	cd 8c 1c 	. . . 
	call 02530h		;0611	cd 30 25 	. 0 % 
	jr z,$+62		;0614	28 3c 	( < 
	ld bc,00011h		;0616	01 11 00 	. . . 
	ld a,(05c74h)		;0619	3a 74 5c 	: t \ 
	and a			;061c	a7 	. 
	jr z,$+4		;061d	28 02 	( . 
	ld c,022h		;061f	0e 22 	. " 
	rst 30h			;0621	f7 	. 
	push de			;0622	d5 	. 
	pop ix		;0623	dd e1 	. . 
	ld b,00bh		;0625	06 0b 	. . 
	ld a,020h		;0627	3e 20 	>   
	ld (de),a			;0629	12 	. 
	inc de			;062a	13 	. 
	djnz $-2		;062b	10 fc 	. . 
	ld (ix+001h),0ffh		;062d	dd 36 01 ff 	. 6 . . 
	call 02bf1h		;0631	cd f1 2b 	. . + 
	ld hl,0fff6h		;0634	21 f6 ff 	! . . 
	dec bc			;0637	0b 	. 
	add hl,bc			;0638	09 	. 
	inc bc			;0639	03 	. 
	jr nc,$+17		;063a	30 0f 	0 . 
	ld a,(05c74h)		;063c	3a 74 5c 	: t \ 
	and a			;063f	a7 	. 
	jr nz,$+4		;0640	20 02 	  . 
	rst 8			;0642	cf 	. 
	ld c,078h		;0643	0e 78 	. x 
	or c			;0645	b1 	. 
	jr z,$+12		;0646	28 0a 	( . 
	ld bc,0000ah		;0648	01 0a 00 	. . . 
	push ix		;064b	dd e5 	. . 
	pop hl			;064d	e1 	. 
	inc hl			;064e	23 	# 
	ex de,hl			;064f	eb 	. 
	ldir		;0650	ed b0 	. . 
	rst 18h			;0652	df 	. 
	cp 0e4h		;0653	fe e4 	. . 
	jr nz,$+75		;0655	20 49 	  I 
	ld a,(05c74h)		;0657	3a 74 5c 	: t \ 
	cp 003h		;065a	fe 03 	. . 
	jp z,01c8ah		;065c	ca 8a 1c 	. . . 
	rst 20h			;065f	e7 	. 
	call 028b2h		;0660	cd b2 28 	. . ( 
	set 7,c		;0663	cb f9 	. . 
	jr nc,$+13		;0665	30 0b 	0 . 
	ld hl,00000h		;0667	21 00 00 	! . . 
	ld a,(05c74h)		;066a	3a 74 5c 	: t \ 
	dec a			;066d	3d 	= 
	jr z,$+23		;066e	28 15 	( . 
	rst 8			;0670	cf 	. 
	ld bc,08ac2h		;0671	01 c2 8a 	. . . 
	inc e			;0674	1c 	. 
	call 02530h		;0675	cd 30 25 	. 0 % 
	jr z,$+26		;0678	28 18 	( . 
	inc hl			;067a	23 	# 
	ld a,(hl)			;067b	7e 	~ 
	ld (ix+00bh),a		;067c	dd 77 0b 	. w . 
	inc hl			;067f	23 	# 
	ld a,(hl)			;0680	7e 	~ 
	ld (ix+00ch),a		;0681	dd 77 0c 	. w . 
	inc hl			;0684	23 	# 
	ld (ix+00eh),c		;0685	dd 71 0e 	. q . 
	ld a,001h		;0688	3e 01 	> . 
	bit 6,c		;068a	cb 71 	. q 
	jr z,$+3		;068c	28 01 	( . 
	inc a			;068e	3c 	< 
	ld (ix+000h),a		;068f	dd 77 00 	. w . 
	ex de,hl			;0692	eb 	. 
	rst 20h			;0693	e7 	. 
	cp 029h		;0694	fe 29 	. ) 
	jr nz,$-36		;0696	20 da 	  . 
	rst 20h			;0698	e7 	. 
	call 01beeh		;0699	cd ee 1b 	. . . 
	ex de,hl			;069c	eb 	. 
	jp 0075ah		;069d	c3 5a 07 	. Z . 
	cp 0aah		;06a0	fe aa 	. . 
	jr nz,$+33		;06a2	20 1f 	  . 
	ld a,(05c74h)		;06a4	3a 74 5c 	: t \ 
	cp 003h		;06a7	fe 03 	. . 
	jp z,01c8ah		;06a9	ca 8a 1c 	. . . 
	rst 20h			;06ac	e7 	. 
	call 01beeh		;06ad	cd ee 1b 	. . . 
	ld (ix+00bh),000h		;06b0	dd 36 0b 00 	. 6 . . 
	ld (ix+00ch),01bh		;06b4	dd 36 0c 1b 	. 6 . . 
	ld hl,04000h		;06b8	21 00 40 	! . @ 
	ld (ix+00dh),l		;06bb	dd 75 0d 	. u . 
	ld (ix+00eh),h		;06be	dd 74 0e 	. t . 
	jr $+79		;06c1	18 4d 	. M 
	cp 0afh		;06c3	fe af 	. . 
	jr nz,$+81		;06c5	20 4f 	  O 
	ld a,(05c74h)		;06c7	3a 74 5c 	: t \ 
	cp 003h		;06ca	fe 03 	. . 
	jp z,01c8ah		;06cc	ca 8a 1c 	. . . 
	rst 20h			;06cf	e7 	. 
	call 02048h		;06d0	cd 48 20 	. H   
	jr nz,$+14		;06d3	20 0c 	  . 
	ld a,(05c74h)		;06d5	3a 74 5c 	: t \ 
	and a			;06d8	a7 	. 
	jp z,01c8ah		;06d9	ca 8a 1c 	. . . 
	call 01ce6h		;06dc	cd e6 1c 	. . . 
	jr $+17		;06df	18 0f 	. . 
	call 01c82h		;06e1	cd 82 1c 	. . . 
	rst 18h			;06e4	df 	. 
	cp 02ch		;06e5	fe 2c 	. , 
	jr z,$+14		;06e7	28 0c 	( . 
	ld a,(05c74h)		;06e9	3a 74 5c 	: t \ 
	and a			;06ec	a7 	. 
	jp z,01c8ah		;06ed	ca 8a 1c 	. . . 
	call 01ce6h		;06f0	cd e6 1c 	. . . 
	jr $+6		;06f3	18 04 	. . 
	rst 20h			;06f5	e7 	. 
	call 01c82h		;06f6	cd 82 1c 	. . . 
	call 01beeh		;06f9	cd ee 1b 	. . . 
	call 01e99h		;06fc	cd 99 1e 	. . . 
	ld (ix+00bh),c		;06ff	dd 71 0b 	. q . 
	ld (ix+00ch),b		;0702	dd 70 0c 	. p . 
	call 01e99h		;0705	cd 99 1e 	. . . 
	ld (ix+00dh),c		;0708	dd 71 0d 	. q . 
	ld (ix+00eh),b		;070b	dd 70 0e 	. p . 
	ld h,b			;070e	60 	` 
	ld l,c			;070f	69 	i 
	ld (ix+000h),003h		;0710	dd 36 00 03 	. 6 . . 
	jr $+70		;0714	18 44 	. D 
	cp 0cah		;0716	fe ca 	. . 
	jr z,$+11		;0718	28 09 	( . 
	call 01beeh		;071a	cd ee 1b 	. . . 
	ld (ix+00eh),080h		;071d	dd 36 0e 80 	. 6 . . 
	jr $+25		;0721	18 17 	. . 
	ld a,(05c74h)		;0723	3a 74 5c 	: t \ 
	and a			;0726	a7 	. 
	jp nz,01c8ah		;0727	c2 8a 1c 	. . . 
	rst 20h			;072a	e7 	. 
	call 01c82h		;072b	cd 82 1c 	. . . 
	call 01beeh		;072e	cd ee 1b 	. . . 
	call 01e99h		;0731	cd 99 1e 	. . . 
	ld (ix+00dh),c		;0734	dd 71 0d 	. q . 
	ld (ix+00eh),b		;0737	dd 70 0e 	. p . 
	ld (ix+000h),000h		;073a	dd 36 00 00 	. 6 . . 
	ld hl,(05c59h)		;073e	2a 59 5c 	* Y \ 
	ld de,(05c53h)		;0741	ed 5b 53 5c 	. [ S \ 
	scf			;0745	37 	7 
	sbc hl,de		;0746	ed 52 	. R 
	ld (ix+00bh),l		;0748	dd 75 0b 	. u . 
	ld (ix+00ch),h		;074b	dd 74 0c 	. t . 
	ld hl,(05c4bh)		;074e	2a 4b 5c 	* K \ 
	sbc hl,de		;0751	ed 52 	. R 
	ld (ix+00fh),l		;0753	dd 75 0f 	. u . 
	ld (ix+010h),h		;0756	dd 74 10 	. t . 
	ex de,hl			;0759	eb 	. 
	ld a,(05c74h)		;075a	3a 74 5c 	: t \ 
	and a			;075d	a7 	. 
	jp z,00970h		;075e	ca 70 09 	. p . 
	push hl			;0761	e5 	. 
	ld bc,00011h		;0762	01 11 00 	. . . 
	add ix,bc		;0765	dd 09 	. . 
	push ix		;0767	dd e5 	. . 
	ld de,00011h		;0769	11 11 00 	. . . 
	xor a			;076c	af 	. 
	scf			;076d	37 	7 
	call 00556h		;076e	cd 56 05 	. V . 
	pop ix		;0771	dd e1 	. . 
	jr nc,$-12		;0773	30 f2 	0 . 
	ld a,0feh		;0775	3e fe 	> . 
	call 01601h		;0777	cd 01 16 	. . . 
	ld (iy+052h),003h		;077a	fd 36 52 03 	. 6 R . 
	ld c,080h		;077e	0e 80 	. . 
	ld a,(ix+000h)		;0780	dd 7e 00 	. ~ . 
	cp (ix-011h)		;0783	dd be ef 	. . . 
	jr nz,$+4		;0786	20 02 	  . 
	ld c,0f6h		;0788	0e f6 	. . 
	cp 004h		;078a	fe 04 	. . 
	jr nc,$-37		;078c	30 d9 	0 . 
	ld de,009c0h		;078e	11 c0 09 	. . . 
	push bc			;0791	c5 	. 
	call 00c0ah		;0792	cd 0a 0c 	. . . 
	pop bc			;0795	c1 	. 
	push ix		;0796	dd e5 	. . 
	pop de			;0798	d1 	. 
	ld hl,0fff0h		;0799	21 f0 ff 	! . . 
	add hl,de			;079c	19 	. 
	ld b,00ah		;079d	06 0a 	. . 
	ld a,(hl)			;079f	7e 	~ 
	inc a			;07a0	3c 	< 
	jr nz,$+5		;07a1	20 03 	  . 
	ld a,c			;07a3	79 	y 
	add a,b			;07a4	80 	. 
	ld c,a			;07a5	4f 	O 
	inc de			;07a6	13 	. 
	ld a,(de)			;07a7	1a 	. 
	cp (hl)			;07a8	be 	. 
	inc hl			;07a9	23 	# 
	jr nz,$+3		;07aa	20 01 	  . 
	inc c			;07ac	0c 	. 
	rst 10h			;07ad	d7 	. 
	djnz $-8		;07ae	10 f6 	. . 
	bit 7,c		;07b0	cb 79 	. y 
	jr nz,$-75		;07b2	20 b3 	  . 
	ld a,00dh		;07b4	3e 0d 	> . 
	rst 10h			;07b6	d7 	. 
	pop hl			;07b7	e1 	. 
	ld a,(ix+000h)		;07b8	dd 7e 00 	. ~ . 
	cp 003h		;07bb	fe 03 	. . 
	jr z,$+14		;07bd	28 0c 	( . 
	ld a,(05c74h)		;07bf	3a 74 5c 	: t \ 
	dec a			;07c2	3d 	= 
	jp z,00808h		;07c3	ca 08 08 	. . . 
	cp 002h		;07c6	fe 02 	. . 
	jp z,008b6h		;07c8	ca b6 08 	. . . 
	push hl			;07cb	e5 	. 
	ld l,(ix-006h)		;07cc	dd 6e fa 	. n . 
	ld h,(ix-005h)		;07cf	dd 66 fb 	. f . 
	ld e,(ix+00bh)		;07d2	dd 5e 0b 	. ^ . 
	ld d,(ix+00ch)		;07d5	dd 56 0c 	. V . 
	ld a,h			;07d8	7c 	| 
	or l			;07d9	b5 	. 
	jr z,$+15		;07da	28 0d 	( . 
	sbc hl,de		;07dc	ed 52 	. R 
	jr c,$+40		;07de	38 26 	8 & 
	jr z,$+9		;07e0	28 07 	( . 
	ld a,(ix+000h)		;07e2	dd 7e 00 	. ~ . 
	cp 003h		;07e5	fe 03 	. . 
	jr nz,$+31		;07e7	20 1d 	  . 
	pop hl			;07e9	e1 	. 
	ld a,h			;07ea	7c 	| 
	or l			;07eb	b5 	. 
	jr nz,$+8		;07ec	20 06 	  . 
	ld l,(ix+00dh)		;07ee	dd 6e 0d 	. n . 
	ld h,(ix+00eh)		;07f1	dd 66 0e 	. f . 
	push hl			;07f4	e5 	. 
	pop ix		;07f5	dd e1 	. . 
	ld a,(05c74h)		;07f7	3a 74 5c 	: t \ 
	cp 002h		;07fa	fe 02 	. . 
	scf			;07fc	37 	7 
	jr nz,$+3		;07fd	20 01 	  . 
	and a			;07ff	a7 	. 
	ld a,0ffh		;0800	3e ff 	> . 
	call 00556h		;0802	cd 56 05 	. V . 
	ret c			;0805	d8 	. 
	rst 8			;0806	cf 	. 
	ld a,(de)			;0807	1a 	. 
	ld e,(ix+00bh)		;0808	dd 5e 0b 	. ^ . 
	ld d,(ix+00ch)		;080b	dd 56 0c 	. V . 
	push hl			;080e	e5 	. 
	ld a,h			;080f	7c 	| 
	or l			;0810	b5 	. 
	jr nz,$+8		;0811	20 06 	  . 
	inc de			;0813	13 	. 
	inc de			;0814	13 	. 
	inc de			;0815	13 	. 
	ex de,hl			;0816	eb 	. 
	jr $+14		;0817	18 0c 	. . 
	ld l,(ix-006h)		;0819	dd 6e fa 	. n . 
	ld h,(ix-005h)		;081c	dd 66 fb 	. f . 
	ex de,hl			;081f	eb 	. 
	scf			;0820	37 	7 
	sbc hl,de		;0821	ed 52 	. R 
	jr c,$+11		;0823	38 09 	8 . 
	ld de,00005h		;0825	11 05 00 	. . . 
	add hl,de			;0828	19 	. 
	ld b,h			;0829	44 	D 
	ld c,l			;082a	4d 	M 
	call 01f05h		;082b	cd 05 1f 	. . . 
	pop hl			;082e	e1 	. 
	ld a,(ix+000h)		;082f	dd 7e 00 	. ~ . 
	and a			;0832	a7 	. 
	jr z,$+64		;0833	28 3e 	( > 
	ld a,h			;0835	7c 	| 
	or l			;0836	b5 	. 
	jr z,$+21		;0837	28 13 	( . 
	dec hl			;0839	2b 	+ 
	ld b,(hl)			;083a	46 	F 
	dec hl			;083b	2b 	+ 
	ld c,(hl)			;083c	4e 	N 
	dec hl			;083d	2b 	+ 
	inc bc			;083e	03 	. 
	inc bc			;083f	03 	. 
	inc bc			;0840	03 	. 
	ld (05c5fh),ix		;0841	dd 22 5f 5c 	. " _ \ 
	call 019e8h		;0845	cd e8 19 	. . . 
	ld ix,(05c5fh)		;0848	dd 2a 5f 5c 	. * _ \ 
	ld hl,(05c59h)		;084c	2a 59 5c 	* Y \ 
	dec hl			;084f	2b 	+ 
	ld c,(ix+00bh)		;0850	dd 4e 0b 	. N . 
	ld b,(ix+00ch)		;0853	dd 46 0c 	. F . 
	push bc			;0856	c5 	. 
	inc bc			;0857	03 	. 
	inc bc			;0858	03 	. 
	inc bc			;0859	03 	. 
	ld a,(ix-003h)		;085a	dd 7e fd 	. ~ . 
	push af			;085d	f5 	. 
	call 01655h		;085e	cd 55 16 	. U . 
	inc hl			;0861	23 	# 
	pop af			;0862	f1 	. 
	ld (hl),a			;0863	77 	w 
	pop de			;0864	d1 	. 
	inc hl			;0865	23 	# 
	ld (hl),e			;0866	73 	s 
	inc hl			;0867	23 	# 
	ld (hl),d			;0868	72 	r 
	inc hl			;0869	23 	# 
	push hl			;086a	e5 	. 
	pop ix		;086b	dd e1 	. . 
	scf			;086d	37 	7 
	ld a,0ffh		;086e	3e ff 	> . 
	jp 00802h		;0870	c3 02 08 	. . . 
	ex de,hl			;0873	eb 	. 
	ld hl,(05c59h)		;0874	2a 59 5c 	* Y \ 
	dec hl			;0877	2b 	+ 
	ld (05c5fh),ix		;0878	dd 22 5f 5c 	. " _ \ 
	ld c,(ix+00bh)		;087c	dd 4e 0b 	. N . 
	ld b,(ix+00ch)		;087f	dd 46 0c 	. F . 
	push bc			;0882	c5 	. 
	call 019e5h		;0883	cd e5 19 	. . . 
	pop bc			;0886	c1 	. 
	push hl			;0887	e5 	. 
	push bc			;0888	c5 	. 
	call 01655h		;0889	cd 55 16 	. U . 
	ld ix,(05c5fh)		;088c	dd 2a 5f 5c 	. * _ \ 
	inc hl			;0890	23 	# 
	ld c,(ix+00fh)		;0891	dd 4e 0f 	. N . 
	ld b,(ix+010h)		;0894	dd 46 10 	. F . 
	add hl,bc			;0897	09 	. 
	ld (05c4bh),hl		;0898	22 4b 5c 	" K \ 
	ld h,(ix+00eh)		;089b	dd 66 0e 	. f . 
	ld a,h			;089e	7c 	| 
	and 0c0h		;089f	e6 c0 	. . 
	jr nz,$+12		;08a1	20 0a 	  . 
	ld l,(ix+00dh)		;08a3	dd 6e 0d 	. n . 
	ld (05c42h),hl		;08a6	22 42 5c 	" B \ 
	ld (iy+00ah),000h		;08a9	fd 36 0a 00 	. 6 . . 
	pop de			;08ad	d1 	. 
	pop ix		;08ae	dd e1 	. . 
	scf			;08b0	37 	7 
	ld a,0ffh		;08b1	3e ff 	> . 
	jp 00802h		;08b3	c3 02 08 	. . . 
	ld c,(ix+00bh)		;08b6	dd 4e 0b 	. N . 
	ld b,(ix+00ch)		;08b9	dd 46 0c 	. F . 
	push bc			;08bc	c5 	. 
	inc bc			;08bd	03 	. 
	rst 30h			;08be	f7 	. 
	ld (hl),080h		;08bf	36 80 	6 . 
	ex de,hl			;08c1	eb 	. 
	pop de			;08c2	d1 	. 
	push hl			;08c3	e5 	. 
	push hl			;08c4	e5 	. 
	pop ix		;08c5	dd e1 	. . 
	scf			;08c7	37 	7 
	ld a,0ffh		;08c8	3e ff 	> . 
	call 00802h		;08ca	cd 02 08 	. . . 
	pop hl			;08cd	e1 	. 
	ld de,(05c53h)		;08ce	ed 5b 53 5c 	. [ S \ 
	ld a,(hl)			;08d2	7e 	~ 
	and 0c0h		;08d3	e6 c0 	. . 
	jr nz,$+27		;08d5	20 19 	  . 
	ld a,(de)			;08d7	1a 	. 
	inc de			;08d8	13 	. 
	cp (hl)			;08d9	be 	. 
	inc hl			;08da	23 	# 
	jr nz,$+4		;08db	20 02 	  . 
	ld a,(de)			;08dd	1a 	. 
	cp (hl)			;08de	be 	. 
	dec de			;08df	1b 	. 
	dec hl			;08e0	2b 	+ 
	jr nc,$+10		;08e1	30 08 	0 . 
	push hl			;08e3	e5 	. 
	ex de,hl			;08e4	eb 	. 
	call 019b8h		;08e5	cd b8 19 	. . . 
	pop hl			;08e8	e1 	. 
	jr $-18		;08e9	18 ec 	. . 
	call 0092ch		;08eb	cd 2c 09 	. , . 
	jr $-28		;08ee	18 e2 	. . 
	ld a,(hl)			;08f0	7e 	~ 
	ld c,a			;08f1	4f 	O 
	cp 080h		;08f2	fe 80 	. . 
	ret z			;08f4	c8 	. 
	push hl			;08f5	e5 	. 
	ld hl,(05c4bh)		;08f6	2a 4b 5c 	* K \ 
	ld a,(hl)			;08f9	7e 	~ 
	cp 080h		;08fa	fe 80 	. . 
	jr z,$+39		;08fc	28 25 	( % 
	cp c			;08fe	b9 	. 
	jr z,$+10		;08ff	28 08 	( . 
	push bc			;0901	c5 	. 
	call 019b8h		;0902	cd b8 19 	. . . 
	pop bc			;0905	c1 	. 
	ex de,hl			;0906	eb 	. 
	jr $-14		;0907	18 f0 	. . 
	and 0e0h		;0909	e6 e0 	. . 
	cp 0a0h		;090b	fe a0 	. . 
	jr nz,$+20		;090d	20 12 	  . 
	pop de			;090f	d1 	. 
	push de			;0910	d5 	. 
	push hl			;0911	e5 	. 
	inc hl			;0912	23 	# 
	inc de			;0913	13 	. 
	ld a,(de)			;0914	1a 	. 
	cp (hl)			;0915	be 	. 
	jr nz,$+8		;0916	20 06 	  . 
	rla			;0918	17 	. 
	jr nc,$-7		;0919	30 f7 	0 . 
	pop hl			;091b	e1 	. 
	jr $+5		;091c	18 03 	. . 
	pop hl			;091e	e1 	. 
	jr $-30		;091f	18 e0 	. . 
	ld a,0ffh		;0921	3e ff 	> . 
	pop de			;0923	d1 	. 
	ex de,hl			;0924	eb 	. 
	inc a			;0925	3c 	< 
	scf			;0926	37 	7 
	call 0092ch		;0927	cd 2c 09 	. , . 
	jr $-58		;092a	18 c4 	. . 
	jr nz,$+18		;092c	20 10 	  . 
	ex af,af'			;092e	08 	. 
	ld (05c5fh),hl		;092f	22 5f 5c 	" _ \ 
	ex de,hl			;0932	eb 	. 
	call 019b8h		;0933	cd b8 19 	. . . 
	call 019e8h		;0936	cd e8 19 	. . . 
	ex de,hl			;0939	eb 	. 
	ld hl,(05c5fh)		;093a	2a 5f 5c 	* _ \ 
	ex af,af'			;093d	08 	. 
	ex af,af'			;093e	08 	. 
	push de			;093f	d5 	. 
	call 019b8h		;0940	cd b8 19 	. . . 
	ld (05c5fh),hl		;0943	22 5f 5c 	" _ \ 
	ld hl,(05c53h)		;0946	2a 53 5c 	* S \ 
	ex (sp),hl			;0949	e3 	. 
	push bc			;094a	c5 	. 
	ex af,af'			;094b	08 	. 
	jr c,$+9		;094c	38 07 	8 . 
	dec hl			;094e	2b 	+ 
	call 01655h		;094f	cd 55 16 	. U . 
	inc hl			;0952	23 	# 
	jr $+5		;0953	18 03 	. . 
	call 01655h		;0955	cd 55 16 	. U . 
	inc hl			;0958	23 	# 
	pop bc			;0959	c1 	. 
	pop de			;095a	d1 	. 
	ld (05c53h),de		;095b	ed 53 53 5c 	. S S \ 
	ld de,(05c5fh)		;095f	ed 5b 5f 5c 	. [ _ \ 
	push bc			;0963	c5 	. 
	push de			;0964	d5 	. 
	ex de,hl			;0965	eb 	. 
	ldir		;0966	ed b0 	. . 
	pop hl			;0968	e1 	. 
	pop bc			;0969	c1 	. 
	push de			;096a	d5 	. 
	call 019e8h		;096b	cd e8 19 	. . . 
	pop de			;096e	d1 	. 
	ret			;096f	c9 	. 
	push hl			;0970	e5 	. 
	ld a,0fdh		;0971	3e fd 	> . 
	call 01601h		;0973	cd 01 16 	. . . 
	xor a			;0976	af 	. 
	ld de,009a1h		;0977	11 a1 09 	. . . 
	call 00c0ah		;097a	cd 0a 0c 	. . . 
	set 5,(iy+002h)		;097d	fd cb 02 ee 	. . . . 
	call 015d4h		;0981	cd d4 15 	. . . 
	push ix		;0984	dd e5 	. . 
	ld de,00011h		;0986	11 11 00 	. . . 
	xor a			;0989	af 	. 
	call 004c2h		;098a	cd c2 04 	. . . 
	pop ix		;098d	dd e1 	. . 
	ld b,032h		;098f	06 32 	. 2 
	halt			;0991	76 	v 
	djnz $-1		;0992	10 fd 	. . 
	ld e,(ix+00bh)		;0994	dd 5e 0b 	. ^ . 
	ld d,(ix+00ch)		;0997	dd 56 0c 	. V . 
	ld a,0ffh		;099a	3e ff 	> . 
	pop ix		;099c	dd e1 	. . 
	jp 004c2h		;099e	c3 c2 04 	. . . 
	add a,b			;09a1	80 	. 
	ld d,e			;09a2	53 	S 
	ld (hl),h			;09a3	74 	t 
	ld h,c			;09a4	61 	a 
	ld (hl),d			;09a5	72 	r 
	ld (hl),h			;09a6	74 	t 
	jr nz,$+118		;09a7	20 74 	  t 
	ld h,c			;09a9	61 	a 
	ld (hl),b			;09aa	70 	p 
	ld h,l			;09ab	65 	e 
	inc l			;09ac	2c 	, 
	jr nz,$+118		;09ad	20 74 	  t 
	ld l,b			;09af	68 	h 
	ld h,l			;09b0	65 	e 
	ld l,(hl)			;09b1	6e 	n 
	jr nz,$+114		;09b2	20 70 	  p 
	ld (hl),d			;09b4	72 	r 
	ld h,l			;09b5	65 	e 
	ld (hl),e			;09b6	73 	s 
	ld (hl),e			;09b7	73 	s 
	jr nz,$+99		;09b8	20 61 	  a 
	ld l,(hl)			;09ba	6e 	n 
	ld a,c			;09bb	79 	y 
	jr nz,$+109		;09bc	20 6b 	  k 
	ld h,l			;09be	65 	e 
	ld a,c			;09bf	79 	y 
	xor (hl)			;09c0	ae 	. 
	dec c			;09c1	0d 	. 
	ld d,b			;09c2	50 	P 
	ld (hl),d			;09c3	72 	r 
	ld l,a			;09c4	6f 	o 
	ld h,a			;09c5	67 	g 
	ld (hl),d			;09c6	72 	r 
	ld h,c			;09c7	61 	a 
	ld l,l			;09c8	6d 	m 
	ld a,(00da0h)		;09c9	3a a0 0d 	: . . 
	ld c,(hl)			;09cc	4e 	N 
	ld (hl),l			;09cd	75 	u 
	ld l,l			;09ce	6d 	m 
	ld h,d			;09cf	62 	b 
	ld h,l			;09d0	65 	e 
	ld (hl),d			;09d1	72 	r 
	jr nz,$+99		;09d2	20 61 	  a 
	ld (hl),d			;09d4	72 	r 
	ld (hl),d			;09d5	72 	r 
	ld h,c			;09d6	61 	a 
	ld a,c			;09d7	79 	y 
	ld a,(00da0h)		;09d8	3a a0 0d 	: . . 
	ld b,e			;09db	43 	C 
	ld l,b			;09dc	68 	h 
	ld h,c			;09dd	61 	a 
	ld (hl),d			;09de	72 	r 
	ld h,c			;09df	61 	a 
	ld h,e			;09e0	63 	c 
	ld (hl),h			;09e1	74 	t 
	ld h,l			;09e2	65 	e 
	ld (hl),d			;09e3	72 	r 
	jr nz,$+99		;09e4	20 61 	  a 
	ld (hl),d			;09e6	72 	r 
	ld (hl),d			;09e7	72 	r 
	ld h,c			;09e8	61 	a 
	ld a,c			;09e9	79 	y 
	ld a,(00da0h)		;09ea	3a a0 0d 	: . . 
	ld b,d			;09ed	42 	B 
	ld a,c			;09ee	79 	y 
	ld (hl),h			;09ef	74 	t 
	ld h,l			;09f0	65 	e 
	ld (hl),e			;09f1	73 	s 
	ld a,(0cda0h)		;09f2	3a a0 cd 	: . . 
	inc bc			;09f5	03 	. 
	dec bc			;09f6	0b 	. 
	cp 020h		;09f7	fe 20 	.   
	jp nc,00ad9h		;09f9	d2 d9 0a 	. . . 
	cp 006h		;09fc	fe 06 	. . 
	jr c,$+107		;09fe	38 69 	8 i 
	cp 018h		;0a00	fe 18 	. . 
	jr nc,$+103		;0a02	30 65 	0 e 
	ld hl,00a0bh		;0a04	21 0b 0a 	! . . 
	ld e,a			;0a07	5f 	_ 
	ld d,000h		;0a08	16 00 	. . 
	add hl,de			;0a0a	19 	. 
	ld e,(hl)			;0a0b	5e 	^ 
	add hl,de			;0a0c	19 	. 
	push hl			;0a0d	e5 	. 
	jp 00b03h		;0a0e	c3 03 0b 	. . . 
	ld c,(hl)			;0a11	4e 	N 
	ld d,a			;0a12	57 	W 
	djnz $+43		;0a13	10 29 	. ) 
	ld d,h			;0a15	54 	T 
	ld d,e			;0a16	53 	S 
	ld d,d			;0a17	52 	R 
	scf			;0a18	37 	7 
	ld d,b			;0a19	50 	P 
	ld c,a			;0a1a	4f 	O 
	ld e,a			;0a1b	5f 	_ 
	ld e,(hl)			;0a1c	5e 	^ 
	ld e,l			;0a1d	5d 	] 
	ld e,h			;0a1e	5c 	\ 
	ld e,e			;0a1f	5b 	[ 
	ld e,d			;0a20	5a 	Z 
	ld d,h			;0a21	54 	T 
	ld d,e			;0a22	53 	S 
	inc c			;0a23	0c 	. 
	ld a,022h		;0a24	3e 22 	> " 
	cp c			;0a26	b9 	. 
	jr nz,$+19		;0a27	20 11 	  . 
	bit 1,(iy+001h)		;0a29	fd cb 01 4e 	. . . N 
	jr nz,$+11		;0a2d	20 09 	  . 
	inc b			;0a2f	04 	. 
	ld c,002h		;0a30	0e 02 	. . 
	ld a,018h		;0a32	3e 18 	> . 
	cp b			;0a34	b8 	. 
	jr nz,$+5		;0a35	20 03 	  . 
	dec b			;0a37	05 	. 
	ld c,021h		;0a38	0e 21 	. ! 
	jp 00dd9h		;0a3a	c3 d9 0d 	. . . 
	ld a,(05c91h)		;0a3d	3a 91 5c 	: . \ 
	push af			;0a40	f5 	. 
	ld (iy+057h),001h		;0a41	fd 36 57 01 	. 6 W . 
	ld a,020h		;0a45	3e 20 	>   
	call 00b65h		;0a47	cd 65 0b 	. e . 
	pop af			;0a4a	f1 	. 
	ld (05c91h),a		;0a4b	32 91 5c 	2 . \ 
	ret			;0a4e	c9 	. 
	bit 1,(iy+001h)		;0a4f	fd cb 01 4e 	. . . N 
	jp nz,00ecdh		;0a53	c2 cd 0e 	. . . 
	ld c,021h		;0a56	0e 21 	. ! 
	call 00c55h		;0a58	cd 55 0c 	. U . 
	dec b			;0a5b	05 	. 
	jp 00dd9h		;0a5c	c3 d9 0d 	. . . 
	call 00b03h		;0a5f	cd 03 0b 	. . . 
	ld a,c			;0a62	79 	y 
	dec a			;0a63	3d 	= 
	dec a			;0a64	3d 	= 
	and 010h		;0a65	e6 10 	. . 
	jr $+92		;0a67	18 5a 	. Z 
	ld a,03fh		;0a69	3e 3f 	> ? 
	jr $+110		;0a6b	18 6c 	. l 
	ld de,00a87h		;0a6d	11 87 0a 	. . . 
	ld (05c0fh),a		;0a70	32 0f 5c 	2 . \ 
	jr $+13		;0a73	18 0b 	. . 
	ld de,00a6dh		;0a75	11 6d 0a 	. m . 
	jr $+5		;0a78	18 03 	. . 
	ld de,00a87h		;0a7a	11 87 0a 	. . . 
	ld (05c0eh),a		;0a7d	32 0e 5c 	2 . \ 
	ld hl,(05c51h)		;0a80	2a 51 5c 	* Q \ 
	ld (hl),e			;0a83	73 	s 
	inc hl			;0a84	23 	# 
	ld (hl),d			;0a85	72 	r 
	ret			;0a86	c9 	. 
	ld de,009f4h		;0a87	11 f4 09 	. . . 
	call 00a80h		;0a8a	cd 80 0a 	. . . 
	ld hl,(05c0eh)		;0a8d	2a 0e 5c 	* . \ 
	ld d,a			;0a90	57 	W 
	ld a,l			;0a91	7d 	} 
	cp 016h		;0a92	fe 16 	. . 
	jp c,02211h		;0a94	da 11 22 	. . " 
	jr nz,$+43		;0a97	20 29 	  ) 
	ld b,h			;0a99	44 	D 
	ld c,d			;0a9a	4a 	J 
	ld a,01fh		;0a9b	3e 1f 	> . 
	sub c			;0a9d	91 	. 
	jr c,$+14		;0a9e	38 0c 	8 . 
	add a,002h		;0aa0	c6 02 	. . 
	ld c,a			;0aa2	4f 	O 
	bit 1,(iy+001h)		;0aa3	fd cb 01 4e 	. . . N 
	jr nz,$+24		;0aa7	20 16 	  . 
	ld a,016h		;0aa9	3e 16 	> . 
	sub b			;0aab	90 	. 
	jp c,01e9fh		;0aac	da 9f 1e 	. . . 
	inc a			;0aaf	3c 	< 
	ld b,a			;0ab0	47 	G 
	inc b			;0ab1	04 	. 
	bit 0,(iy+002h)		;0ab2	fd cb 02 46 	. . . F 
	jp nz,00c55h		;0ab6	c2 55 0c 	. U . 
	cp (iy+031h)		;0ab9	fd be 31 	. . 1 
	jp c,00c86h		;0abc	da 86 0c 	. . . 
	jp 00dd9h		;0abf	c3 d9 0d 	. . . 
	ld a,h			;0ac2	7c 	| 
	call 00b03h		;0ac3	cd 03 0b 	. . . 
	add a,c			;0ac6	81 	. 
	dec a			;0ac7	3d 	= 
	and 01fh		;0ac8	e6 1f 	. . 
	ret z			;0aca	c8 	. 
	ld d,a			;0acb	57 	W 
	set 0,(iy+001h)		;0acc	fd cb 01 c6 	. . . . 
	ld a,020h		;0ad0	3e 20 	>   
	call 00c3bh		;0ad2	cd 3b 0c 	. ; . 
	dec d			;0ad5	15 	. 
	jr nz,$-6		;0ad6	20 f8 	  . 
	ret			;0ad8	c9 	. 
	call 00b24h		;0ad9	cd 24 0b 	. $ . 
	bit 1,(iy+001h)		;0adc	fd cb 01 4e 	. . . N 
	jr nz,$+28		;0ae0	20 1a 	  . 
	bit 0,(iy+002h)		;0ae2	fd cb 02 46 	. . . F 
	jr nz,$+10		;0ae6	20 08 	  . 
	ld (05c88h),bc		;0ae8	ed 43 88 5c 	. C . \ 
	ld (05c84h),hl		;0aec	22 84 5c 	" . \ 
	ret			;0aef	c9 	. 
	ld (05c8ah),bc		;0af0	ed 43 8a 5c 	. C . \ 
	ld (05c82h),bc		;0af4	ed 43 82 5c 	. C . \ 
	ld (05c86h),hl		;0af8	22 86 5c 	" . \ 
	ret			;0afb	c9 	. 
	ld (iy+045h),c		;0afc	fd 71 45 	. q E 
	ld (05c80h),hl		;0aff	22 80 5c 	" . \ 
	ret			;0b02	c9 	. 
	bit 1,(iy+001h)		;0b03	fd cb 01 4e 	. . . N 
	jr nz,$+22		;0b07	20 14 	  . 
	ld bc,(05c88h)		;0b09	ed 4b 88 5c 	. K . \ 
	ld hl,(05c84h)		;0b0d	2a 84 5c 	* . \ 
	bit 0,(iy+002h)		;0b10	fd cb 02 46 	. . . F 
	ret z			;0b14	c8 	. 
	ld bc,(05c8ah)		;0b15	ed 4b 8a 5c 	. K . \ 
	ld hl,(05c86h)		;0b19	2a 86 5c 	* . \ 
	ret			;0b1c	c9 	. 
	ld c,(iy+045h)		;0b1d	fd 4e 45 	. N E 
	ld hl,(05c80h)		;0b20	2a 80 5c 	* . \ 
	ret			;0b23	c9 	. 
	cp 080h		;0b24	fe 80 	. . 
	jr c,$+63		;0b26	38 3d 	8 = 
	cp 090h		;0b28	fe 90 	. . 
	jr nc,$+40		;0b2a	30 26 	0 & 
	ld b,a			;0b2c	47 	G 
	call 00b38h		;0b2d	cd 38 0b 	. 8 . 
	call 00b03h		;0b30	cd 03 0b 	. . . 
	ld de,05c92h		;0b33	11 92 5c 	. . \ 
	jr $+73		;0b36	18 47 	. G 
	ld hl,05c92h		;0b38	21 92 5c 	! . \ 
	call 00b3eh		;0b3b	cd 3e 0b 	. > . 
	rr b		;0b3e	cb 18 	. . 
	sbc a,a			;0b40	9f 	. 
	and 00fh		;0b41	e6 0f 	. . 
	ld c,a			;0b43	4f 	O 
	rr b		;0b44	cb 18 	. . 
	sbc a,a			;0b46	9f 	. 
	and 0f0h		;0b47	e6 f0 	. . 
	or c			;0b49	b1 	. 
	ld c,004h		;0b4a	0e 04 	. . 
	ld (hl),a			;0b4c	77 	w 
	inc hl			;0b4d	23 	# 
	dec c			;0b4e	0d 	. 
	jr nz,$-3		;0b4f	20 fb 	  . 
	ret			;0b51	c9 	. 
	sub 0a5h		;0b52	d6 a5 	. . 
	jr nc,$+11		;0b54	30 09 	0 . 
	add a,015h		;0b56	c6 15 	. . 
	push bc			;0b58	c5 	. 
	ld bc,(05c7bh)		;0b59	ed 4b 7b 5c 	. K { \ 
	jr $+13		;0b5d	18 0b 	. . 
	call 00c10h		;0b5f	cd 10 0c 	. . . 
	jp 00b03h		;0b62	c3 03 0b 	. . . 
	push bc			;0b65	c5 	. 
	ld bc,(05c36h)		;0b66	ed 4b 36 5c 	. K 6 \ 
	ex de,hl			;0b6a	eb 	. 
	ld hl,05c3bh		;0b6b	21 3b 5c 	! ; \ 
	res 0,(hl)		;0b6e	cb 86 	. . 
	cp 020h		;0b70	fe 20 	.   
	jr nz,$+4		;0b72	20 02 	  . 
	set 0,(hl)		;0b74	cb c6 	. . 
	ld h,000h		;0b76	26 00 	& . 
	ld l,a			;0b78	6f 	o 
	add hl,hl			;0b79	29 	) 
	add hl,hl			;0b7a	29 	) 
	add hl,hl			;0b7b	29 	) 
	add hl,bc			;0b7c	09 	. 
	pop bc			;0b7d	c1 	. 
	ex de,hl			;0b7e	eb 	. 
	ld a,c			;0b7f	79 	y 
	dec a			;0b80	3d 	= 
	ld a,021h		;0b81	3e 21 	> ! 
	jr nz,$+16		;0b83	20 0e 	  . 
	dec b			;0b85	05 	. 
	ld c,a			;0b86	4f 	O 
	bit 1,(iy+001h)		;0b87	fd cb 01 4e 	. . . N 
	jr z,$+8		;0b8b	28 06 	( . 
	push de			;0b8d	d5 	. 
	call 00ecdh		;0b8e	cd cd 0e 	. . . 
	pop de			;0b91	d1 	. 
	ld a,c			;0b92	79 	y 
	cp c			;0b93	b9 	. 
	push de			;0b94	d5 	. 
	call z,00c55h		;0b95	cc 55 0c 	. U . 
	pop de			;0b98	d1 	. 
	push bc			;0b99	c5 	. 
	push hl			;0b9a	e5 	. 
	ld a,(05c91h)		;0b9b	3a 91 5c 	: . \ 
	ld b,0ffh		;0b9e	06 ff 	. . 
	rra			;0ba0	1f 	. 
	jr c,$+3		;0ba1	38 01 	8 . 
	inc b			;0ba3	04 	. 
	rra			;0ba4	1f 	. 
	rra			;0ba5	1f 	. 
	sbc a,a			;0ba6	9f 	. 
	ld c,a			;0ba7	4f 	O 
	ld a,008h		;0ba8	3e 08 	> . 
	and a			;0baa	a7 	. 
	bit 1,(iy+001h)		;0bab	fd cb 01 4e 	. . . N 
	jr z,$+7		;0baf	28 05 	( . 
	set 1,(iy+030h)		;0bb1	fd cb 30 ce 	. . 0 . 
	scf			;0bb5	37 	7 
	ex de,hl			;0bb6	eb 	. 
	ex af,af'			;0bb7	08 	. 
	ld a,(de)			;0bb8	1a 	. 
	and b			;0bb9	a0 	. 
	xor (hl)			;0bba	ae 	. 
	xor c			;0bbb	a9 	. 
	ld (de),a			;0bbc	12 	. 
	ex af,af'			;0bbd	08 	. 
	jr c,$+21		;0bbe	38 13 	8 . 
	inc d			;0bc0	14 	. 
	inc hl			;0bc1	23 	# 
	dec a			;0bc2	3d 	= 
	jr nz,$-12		;0bc3	20 f2 	  . 
	ex de,hl			;0bc5	eb 	. 
	dec h			;0bc6	25 	% 
	bit 1,(iy+001h)		;0bc7	fd cb 01 4e 	. . . N 
	call z,00bdbh		;0bcb	cc db 0b 	. . . 
	pop hl			;0bce	e1 	. 
	pop bc			;0bcf	c1 	. 
	dec c			;0bd0	0d 	. 
	inc hl			;0bd1	23 	# 
	ret			;0bd2	c9 	. 
	ex af,af'			;0bd3	08 	. 
	ld a,020h		;0bd4	3e 20 	>   
	add a,e			;0bd6	83 	. 
	ld e,a			;0bd7	5f 	_ 
	ex af,af'			;0bd8	08 	. 
	jr $-24		;0bd9	18 e6 	. . 
	ld a,h			;0bdb	7c 	| 
	rrca			;0bdc	0f 	. 
	rrca			;0bdd	0f 	. 
	rrca			;0bde	0f 	. 
	and 003h		;0bdf	e6 03 	. . 
	or 058h		;0be1	f6 58 	. X 
	ld h,a			;0be3	67 	g 
	ld de,(05c8fh)		;0be4	ed 5b 8f 5c 	. [ . \ 
	ld a,(hl)			;0be8	7e 	~ 
	xor e			;0be9	ab 	. 
	and d			;0bea	a2 	. 
	xor e			;0beb	ab 	. 
	bit 6,(iy+057h)		;0bec	fd cb 57 76 	. . W v 
	jr z,$+10		;0bf0	28 08 	( . 
	and 0c7h		;0bf2	e6 c7 	. . 
	bit 2,a		;0bf4	cb 57 	. W 
	jr nz,$+4		;0bf6	20 02 	  . 
	xor 038h		;0bf8	ee 38 	. 8 
	bit 4,(iy+057h)		;0bfa	fd cb 57 66 	. . W f 
	jr z,$+10		;0bfe	28 08 	( . 
	and 0f8h		;0c00	e6 f8 	. . 
	bit 5,a		;0c02	cb 6f 	. o 
	jr nz,$+4		;0c04	20 02 	  . 
	xor 007h		;0c06	ee 07 	. . 
	ld (hl),a			;0c08	77 	w 
	ret			;0c09	c9 	. 
	push hl			;0c0a	e5 	. 
	ld h,000h		;0c0b	26 00 	& . 
	ex (sp),hl			;0c0d	e3 	. 
	jr $+6		;0c0e	18 04 	. . 
	ld de,00095h		;0c10	11 95 00 	. . . 
	push af			;0c13	f5 	. 
	call 00c41h		;0c14	cd 41 0c 	. A . 
	jr c,$+11		;0c17	38 09 	8 . 
	ld a,020h		;0c19	3e 20 	>   
	bit 0,(iy+001h)		;0c1b	fd cb 01 46 	. . . F 
	call z,00c3bh		;0c1f	cc 3b 0c 	. ; . 
	ld a,(de)			;0c22	1a 	. 
	and 07fh		;0c23	e6 7f 	.  
	call 00c3bh		;0c25	cd 3b 0c 	. ; . 
	ld a,(de)			;0c28	1a 	. 
	inc de			;0c29	13 	. 
	add a,a			;0c2a	87 	. 
	jr nc,$-9		;0c2b	30 f5 	0 . 
	pop de			;0c2d	d1 	. 
	cp 048h		;0c2e	fe 48 	. H 
	jr z,$+5		;0c30	28 03 	( . 
	cp 082h		;0c32	fe 82 	. . 
	ret c			;0c34	d8 	. 
	ld a,d			;0c35	7a 	z 
	cp 003h		;0c36	fe 03 	. . 
	ret c			;0c38	d8 	. 
	ld a,020h		;0c39	3e 20 	>   
	push de			;0c3b	d5 	. 
	exx			;0c3c	d9 	. 
	rst 10h			;0c3d	d7 	. 
	exx			;0c3e	d9 	. 
	pop de			;0c3f	d1 	. 
	ret			;0c40	c9 	. 
	push af			;0c41	f5 	. 
	ex de,hl			;0c42	eb 	. 
	inc a			;0c43	3c 	< 
	bit 7,(hl)		;0c44	cb 7e 	. ~ 
	inc hl			;0c46	23 	# 
	jr z,$-3		;0c47	28 fb 	( . 
	dec a			;0c49	3d 	= 
	jr nz,$-6		;0c4a	20 f8 	  . 
	ex de,hl			;0c4c	eb 	. 
	pop af			;0c4d	f1 	. 
	cp 020h		;0c4e	fe 20 	.   
	ret c			;0c50	d8 	. 
	ld a,(de)			;0c51	1a 	. 
	sub 041h		;0c52	d6 41 	. A 
	ret			;0c54	c9 	. 
	bit 1,(iy+001h)		;0c55	fd cb 01 4e 	. . . N 
	ret nz			;0c59	c0 	. 
	ld de,00dd9h		;0c5a	11 d9 0d 	. . . 
	push de			;0c5d	d5 	. 
	ld a,b			;0c5e	78 	x 
	bit 0,(iy+002h)		;0c5f	fd cb 02 46 	. . . F 
	jp nz,00d02h		;0c63	c2 02 0d 	. . . 
	cp (iy+031h)		;0c66	fd be 31 	. . 1 
	jr c,$+29		;0c69	38 1b 	8 . 
	ret nz			;0c6b	c0 	. 
	bit 4,(iy+002h)		;0c6c	fd cb 02 66 	. . . f 
	jr z,$+24		;0c70	28 16 	( . 
	ld e,(iy+02dh)		;0c72	fd 5e 2d 	. ^ - 
	dec e			;0c75	1d 	. 
	jr z,$+92		;0c76	28 5a 	( Z 
	ld a,000h		;0c78	3e 00 	> . 
	call 01601h		;0c7a	cd 01 16 	. . . 
	ld sp,(05c3fh)		;0c7d	ed 7b 3f 5c 	. { ? \ 
	res 4,(iy+002h)		;0c81	fd cb 02 a6 	. . . . 
	ret			;0c85	c9 	. 
	rst 8			;0c86	cf 	. 
	inc b			;0c87	04 	. 
	dec (iy+052h)		;0c88	fd 35 52 	. 5 R 
	jr nz,$+71		;0c8b	20 45 	  E 
	ld a,018h		;0c8d	3e 18 	> . 
	sub b			;0c8f	90 	. 
	ld (05c8ch),a		;0c90	32 8c 5c 	2 . \ 
	ld hl,(05c8fh)		;0c93	2a 8f 5c 	* . \ 
	push hl			;0c96	e5 	. 
	ld a,(05c91h)		;0c97	3a 91 5c 	: . \ 
	push af			;0c9a	f5 	. 
	ld a,0fdh		;0c9b	3e fd 	> . 
	call 01601h		;0c9d	cd 01 16 	. . . 
	xor a			;0ca0	af 	. 
	ld de,00cf8h		;0ca1	11 f8 0c 	. . . 
	call 00c0ah		;0ca4	cd 0a 0c 	. . . 
	set 5,(iy+002h)		;0ca7	fd cb 02 ee 	. . . . 
	ld hl,05c3bh		;0cab	21 3b 5c 	! ; \ 
	set 3,(hl)		;0cae	cb de 	. . 
	res 5,(hl)		;0cb0	cb ae 	. . 
	exx			;0cb2	d9 	. 
	call 015d4h		;0cb3	cd d4 15 	. . . 
	exx			;0cb6	d9 	. 
	cp 020h		;0cb7	fe 20 	.   
	jr z,$+71		;0cb9	28 45 	( E 
	cp 0e2h		;0cbb	fe e2 	. . 
	jr z,$+67		;0cbd	28 41 	( A 
	or 020h		;0cbf	f6 20 	.   
	cp 06eh		;0cc1	fe 6e 	. n 
	jr z,$+61		;0cc3	28 3b 	( ; 
	ld a,0feh		;0cc5	3e fe 	> . 
	call 01601h		;0cc7	cd 01 16 	. . . 
	pop af			;0cca	f1 	. 
	ld (05c91h),a		;0ccb	32 91 5c 	2 . \ 
	pop hl			;0cce	e1 	. 
	ld (05c8fh),hl		;0ccf	22 8f 5c 	" . \ 
	call 00dfeh		;0cd2	cd fe 0d 	. . . 
	ld b,(iy+031h)		;0cd5	fd 46 31 	. F 1 
	inc b			;0cd8	04 	. 
	ld c,021h		;0cd9	0e 21 	. ! 
	push bc			;0cdb	c5 	. 
	call 00e9bh		;0cdc	cd 9b 0e 	. . . 
	ld a,h			;0cdf	7c 	| 
	rrca			;0ce0	0f 	. 
	rrca			;0ce1	0f 	. 
	rrca			;0ce2	0f 	. 
	and 003h		;0ce3	e6 03 	. . 
	or 058h		;0ce5	f6 58 	. X 
	ld h,a			;0ce7	67 	g 
	ld de,05ae0h		;0ce8	11 e0 5a 	. . Z 
	ld a,(de)			;0ceb	1a 	. 
	ld c,(hl)			;0cec	4e 	N 
	ld b,020h		;0ced	06 20 	.   
	ex de,hl			;0cef	eb 	. 
	ld (de),a			;0cf0	12 	. 
	ld (hl),c			;0cf1	71 	q 
	inc de			;0cf2	13 	. 
	inc hl			;0cf3	23 	# 
	djnz $-4		;0cf4	10 fa 	. . 
	pop bc			;0cf6	c1 	. 
	ret			;0cf7	c9 	. 
	add a,b			;0cf8	80 	. 
	ld (hl),e			;0cf9	73 	s 
	ld h,e			;0cfa	63 	c 
	ld (hl),d			;0cfb	72 	r 
	ld l,a			;0cfc	6f 	o 
	ld l,h			;0cfd	6c 	l 
	ld l,h			;0cfe	6c 	l 
	cp a			;0cff	bf 	. 
	rst 8			;0d00	cf 	. 
	inc c			;0d01	0c 	. 
	cp 002h		;0d02	fe 02 	. . 
	jr c,$-126		;0d04	38 80 	8 . 
	add a,(iy+031h)		;0d06	fd 86 31 	. . 1 
	sub 019h		;0d09	d6 19 	. . 
	ret nc			;0d0b	d0 	. 
	neg		;0d0c	ed 44 	. D 
	push bc			;0d0e	c5 	. 
	ld b,a			;0d0f	47 	G 
	ld hl,(05c8fh)		;0d10	2a 8f 5c 	* . \ 
	push hl			;0d13	e5 	. 
	ld hl,(05c91h)		;0d14	2a 91 5c 	* . \ 
	push hl			;0d17	e5 	. 
	call 00d4dh		;0d18	cd 4d 0d 	. M . 
	ld a,b			;0d1b	78 	x 
	push af			;0d1c	f5 	. 
	ld hl,05c6bh		;0d1d	21 6b 5c 	! k \ 
	ld b,(hl)			;0d20	46 	F 
	ld a,b			;0d21	78 	x 
	inc a			;0d22	3c 	< 
	ld (hl),a			;0d23	77 	w 
	ld hl,05c89h		;0d24	21 89 5c 	! . \ 
	cp (hl)			;0d27	be 	. 
	jr c,$+5		;0d28	38 03 	8 . 
	inc (hl)			;0d2a	34 	4 
	ld b,018h		;0d2b	06 18 	. . 
	call 00e00h		;0d2d	cd 00 0e 	. . . 
	pop af			;0d30	f1 	. 
	dec a			;0d31	3d 	= 
	jr nz,$-22		;0d32	20 e8 	  . 
	pop hl			;0d34	e1 	. 
	ld (iy+057h),l		;0d35	fd 75 57 	. u W 
	pop hl			;0d38	e1 	. 
	ld (05c8fh),hl		;0d39	22 8f 5c 	" . \ 
	ld bc,(05c88h)		;0d3c	ed 4b 88 5c 	. K . \ 
	res 0,(iy+002h)		;0d40	fd cb 02 86 	. . . . 
	call 00dd9h		;0d44	cd d9 0d 	. . . 
	set 0,(iy+002h)		;0d47	fd cb 02 c6 	. . . . 
	pop bc			;0d4b	c1 	. 
	ret			;0d4c	c9 	. 
	xor a			;0d4d	af 	. 
	ld hl,(05c8dh)		;0d4e	2a 8d 5c 	* . \ 
	bit 0,(iy+002h)		;0d51	fd cb 02 46 	. . . F 
	jr z,$+6		;0d55	28 04 	( . 
	ld h,a			;0d57	67 	g 
	ld l,(iy+00eh)		;0d58	fd 6e 0e 	. n . 
	ld (05c8fh),hl		;0d5b	22 8f 5c 	" . \ 
	ld hl,05c91h		;0d5e	21 91 5c 	! . \ 
	jr nz,$+4		;0d61	20 02 	  . 
	ld a,(hl)			;0d63	7e 	~ 
	rrca			;0d64	0f 	. 
	xor (hl)			;0d65	ae 	. 
	and 055h		;0d66	e6 55 	. U 
	xor (hl)			;0d68	ae 	. 
	ld (hl),a			;0d69	77 	w 
	ret			;0d6a	c9 	. 
	call 00dafh		;0d6b	cd af 0d 	. . . 
	ld hl,05c3ch		;0d6e	21 3c 5c 	! < \ 
	res 5,(hl)		;0d71	cb ae 	. . 
	set 0,(hl)		;0d73	cb c6 	. . 
	call 00d4dh		;0d75	cd 4d 0d 	. M . 
	ld b,(iy+031h)		;0d78	fd 46 31 	. F 1 
	call 00e44h		;0d7b	cd 44 0e 	. D . 
	ld hl,05ac0h		;0d7e	21 c0 5a 	! . Z 
	ld a,(05c8dh)		;0d81	3a 8d 5c 	: . \ 
	dec b			;0d84	05 	. 
	jr $+9		;0d85	18 07 	. . 
	ld c,020h		;0d87	0e 20 	.   
	dec hl			;0d89	2b 	+ 
	ld (hl),a			;0d8a	77 	w 
	dec c			;0d8b	0d 	. 
	jr nz,$-3		;0d8c	20 fb 	  . 
	djnz $-7		;0d8e	10 f7 	. . 
	ld (iy+031h),002h		;0d90	fd 36 31 02 	. 6 1 . 
	ld a,0fdh		;0d94	3e fd 	> . 
	call 01601h		;0d96	cd 01 16 	. . . 
	ld hl,(05c51h)		;0d99	2a 51 5c 	* Q \ 
	ld de,009f4h		;0d9c	11 f4 09 	. . . 
	and a			;0d9f	a7 	. 
	ld (hl),e			;0da0	73 	s 
	inc hl			;0da1	23 	# 
	ld (hl),d			;0da2	72 	r 
	inc hl			;0da3	23 	# 
	ld de,010a8h		;0da4	11 a8 10 	. . . 
	ccf			;0da7	3f 	? 
	jr c,$-8		;0da8	38 f6 	8 . 
	ld bc,01721h		;0daa	01 21 17 	. ! . 
	jr $+44		;0dad	18 2a 	. * 
	ld hl,00000h		;0daf	21 00 00 	! . . 
	ld (05c7dh),hl		;0db2	22 7d 5c 	" } \ 
	res 0,(iy+030h)		;0db5	fd cb 30 86 	. . 0 . 
	call 00d94h		;0db9	cd 94 0d 	. . . 
	ld a,0feh		;0dbc	3e fe 	> . 
	call 01601h		;0dbe	cd 01 16 	. . . 
	call 00d4dh		;0dc1	cd 4d 0d 	. M . 
	ld b,018h		;0dc4	06 18 	. . 
	call 00e44h		;0dc6	cd 44 0e 	. D . 
	ld hl,(05c51h)		;0dc9	2a 51 5c 	* Q \ 
	ld de,009f4h		;0dcc	11 f4 09 	. . . 
	ld (hl),e			;0dcf	73 	s 
	inc hl			;0dd0	23 	# 
	ld (hl),d			;0dd1	72 	r 
	ld (iy+052h),001h		;0dd2	fd 36 52 01 	. 6 R . 
	ld bc,01821h		;0dd6	01 21 18 	. ! . 
	ld hl,05b00h		;0dd9	21 00 5b 	! . [ 
	bit 1,(iy+001h)		;0ddc	fd cb 01 4e 	. . . N 
	jr nz,$+20		;0de0	20 12 	  . 
	ld a,b			;0de2	78 	x 
	bit 0,(iy+002h)		;0de3	fd cb 02 46 	. . . F 
	jr z,$+7		;0de7	28 05 	( . 
	add a,(iy+031h)		;0de9	fd 86 31 	. . 1 
	sub 018h		;0dec	d6 18 	. . 
	push bc			;0dee	c5 	. 
	ld b,a			;0def	47 	G 
	call 00e9bh		;0df0	cd 9b 0e 	. . . 
	pop bc			;0df3	c1 	. 
	ld a,021h		;0df4	3e 21 	> ! 
	sub c			;0df6	91 	. 
	ld e,a			;0df7	5f 	_ 
	ld d,000h		;0df8	16 00 	. . 
	add hl,de			;0dfa	19 	. 
	jp 00adch		;0dfb	c3 dc 0a 	. . . 
	ld b,017h		;0dfe	06 17 	. . 
	call 00e9bh		;0e00	cd 9b 0e 	. . . 
	ld c,008h		;0e03	0e 08 	. . 
	push bc			;0e05	c5 	. 
	push hl			;0e06	e5 	. 
	ld a,b			;0e07	78 	x 
	and 007h		;0e08	e6 07 	. . 
	ld a,b			;0e0a	78 	x 
	jr nz,$+14		;0e0b	20 0c 	  . 
	ex de,hl			;0e0d	eb 	. 
	ld hl,0f8e0h		;0e0e	21 e0 f8 	! . . 
	add hl,de			;0e11	19 	. 
	ex de,hl			;0e12	eb 	. 
	ld bc,00020h		;0e13	01 20 00 	.   . 
	dec a			;0e16	3d 	= 
	ldir		;0e17	ed b0 	. . 
	ex de,hl			;0e19	eb 	. 
	ld hl,0ffe0h		;0e1a	21 e0 ff 	! . . 
	add hl,de			;0e1d	19 	. 
	ex de,hl			;0e1e	eb 	. 
	ld b,a			;0e1f	47 	G 
	and 007h		;0e20	e6 07 	. . 
	rrca			;0e22	0f 	. 
	rrca			;0e23	0f 	. 
	rrca			;0e24	0f 	. 
	ld c,a			;0e25	4f 	O 
	ld a,b			;0e26	78 	x 
	ld b,000h		;0e27	06 00 	. . 
	ldir		;0e29	ed b0 	. . 
	ld b,007h		;0e2b	06 07 	. . 
	add hl,bc			;0e2d	09 	. 
	and 0f8h		;0e2e	e6 f8 	. . 
	jr nz,$-35		;0e30	20 db 	  . 
	pop hl			;0e32	e1 	. 
	inc h			;0e33	24 	$ 
	pop bc			;0e34	c1 	. 
	dec c			;0e35	0d 	. 
	jr nz,$-49		;0e36	20 cd 	  . 
	call 00e88h		;0e38	cd 88 0e 	. . . 
	ld hl,0ffe0h		;0e3b	21 e0 ff 	! . . 
	add hl,de			;0e3e	19 	. 
	ex de,hl			;0e3f	eb 	. 
	ldir		;0e40	ed b0 	. . 
	ld b,001h		;0e42	06 01 	. . 
	push bc			;0e44	c5 	. 
	call 00e9bh		;0e45	cd 9b 0e 	. . . 
	ld c,008h		;0e48	0e 08 	. . 
	push bc			;0e4a	c5 	. 
	push hl			;0e4b	e5 	. 
	ld a,b			;0e4c	78 	x 
	and 007h		;0e4d	e6 07 	. . 
	rrca			;0e4f	0f 	. 
	rrca			;0e50	0f 	. 
	rrca			;0e51	0f 	. 
	ld c,a			;0e52	4f 	O 
	ld a,b			;0e53	78 	x 
	ld b,000h		;0e54	06 00 	. . 
	dec c			;0e56	0d 	. 
	ld d,h			;0e57	54 	T 
	ld e,l			;0e58	5d 	] 
	ld (hl),000h		;0e59	36 00 	6 . 
	inc de			;0e5b	13 	. 
	ldir		;0e5c	ed b0 	. . 
	ld de,00701h		;0e5e	11 01 07 	. . . 
	add hl,de			;0e61	19 	. 
	dec a			;0e62	3d 	= 
	and 0f8h		;0e63	e6 f8 	. . 
	ld b,a			;0e65	47 	G 
	jr nz,$-25		;0e66	20 e5 	  . 
	pop hl			;0e68	e1 	. 
	inc h			;0e69	24 	$ 
	pop bc			;0e6a	c1 	. 
	dec c			;0e6b	0d 	. 
	jr nz,$-34		;0e6c	20 dc 	  . 
	call 00e88h		;0e6e	cd 88 0e 	. . . 
	ld h,d			;0e71	62 	b 
	ld l,e			;0e72	6b 	k 
	inc de			;0e73	13 	. 
	ld a,(05c8dh)		;0e74	3a 8d 5c 	: . \ 
	bit 0,(iy+002h)		;0e77	fd cb 02 46 	. . . F 
	jr z,$+5		;0e7b	28 03 	( . 
	ld a,(05c48h)		;0e7d	3a 48 5c 	: H \ 
	ld (hl),a			;0e80	77 	w 
	dec bc			;0e81	0b 	. 
	ldir		;0e82	ed b0 	. . 
	pop bc			;0e84	c1 	. 
	ld c,021h		;0e85	0e 21 	. ! 
	ret			;0e87	c9 	. 
	ld a,h			;0e88	7c 	| 
	rrca			;0e89	0f 	. 
	rrca			;0e8a	0f 	. 
	rrca			;0e8b	0f 	. 
	dec a			;0e8c	3d 	= 
	or 050h		;0e8d	f6 50 	. P 
	ld h,a			;0e8f	67 	g 
	ex de,hl			;0e90	eb 	. 
	ld h,c			;0e91	61 	a 
	ld l,b			;0e92	68 	h 
	add hl,hl			;0e93	29 	) 
	add hl,hl			;0e94	29 	) 
	add hl,hl			;0e95	29 	) 
	add hl,hl			;0e96	29 	) 
	add hl,hl			;0e97	29 	) 
	ld b,h			;0e98	44 	D 
	ld c,l			;0e99	4d 	M 
	ret			;0e9a	c9 	. 
	ld a,018h		;0e9b	3e 18 	> . 
	sub b			;0e9d	90 	. 
	ld d,a			;0e9e	57 	W 
	rrca			;0e9f	0f 	. 
	rrca			;0ea0	0f 	. 
	rrca			;0ea1	0f 	. 
	and 0e0h		;0ea2	e6 e0 	. . 
	ld l,a			;0ea4	6f 	o 
	ld a,d			;0ea5	7a 	z 
	and 018h		;0ea6	e6 18 	. . 
	or 040h		;0ea8	f6 40 	. @ 
	ld h,a			;0eaa	67 	g 
	ret			;0eab	c9 	. 
	di			;0eac	f3 	. 
	ld b,0b0h		;0ead	06 b0 	. . 
	ld hl,04000h		;0eaf	21 00 40 	! . @ 
	push hl			;0eb2	e5 	. 
	push bc			;0eb3	c5 	. 
	call 00ef4h		;0eb4	cd f4 0e 	. . . 
	pop bc			;0eb7	c1 	. 
	pop hl			;0eb8	e1 	. 
	inc h			;0eb9	24 	$ 
	ld a,h			;0eba	7c 	| 
	and 007h		;0ebb	e6 07 	. . 
	jr nz,$+12		;0ebd	20 0a 	  . 
	ld a,l			;0ebf	7d 	} 
	add a,020h		;0ec0	c6 20 	.   
	ld l,a			;0ec2	6f 	o 
	ccf			;0ec3	3f 	? 
	sbc a,a			;0ec4	9f 	. 
	and 0f8h		;0ec5	e6 f8 	. . 
	add a,h			;0ec7	84 	. 
	ld h,a			;0ec8	67 	g 
	djnz $-23		;0ec9	10 e7 	. . 
	jr $+15		;0ecb	18 0d 	. . 
	di			;0ecd	f3 	. 
	ld hl,05b00h		;0ece	21 00 5b 	! . [ 
	ld b,008h		;0ed1	06 08 	. . 
	push bc			;0ed3	c5 	. 
	call 00ef4h		;0ed4	cd f4 0e 	. . . 
	pop bc			;0ed7	c1 	. 
	djnz $-5		;0ed8	10 f9 	. . 
	ld a,004h		;0eda	3e 04 	> . 
	out (0fbh),a		;0edc	d3 fb 	. . 
	ei			;0ede	fb 	. 
	ld hl,05b00h		;0edf	21 00 5b 	! . [ 
	ld (iy+046h),l		;0ee2	fd 75 46 	. u F 
	xor a			;0ee5	af 	. 
	ld b,a			;0ee6	47 	G 
	ld (hl),a			;0ee7	77 	w 
	inc hl			;0ee8	23 	# 
	djnz $-2		;0ee9	10 fc 	. . 
	res 1,(iy+030h)		;0eeb	fd cb 30 8e 	. . 0 . 
	ld c,021h		;0eef	0e 21 	. ! 
	jp 00dd9h		;0ef1	c3 d9 0d 	. . . 
	ld a,b			;0ef4	78 	x 
	cp 003h		;0ef5	fe 03 	. . 
	sbc a,a			;0ef7	9f 	. 
	and 002h		;0ef8	e6 02 	. . 
	out (0fbh),a		;0efa	d3 fb 	. . 
	ld d,a			;0efc	57 	W 
	call 01f54h		;0efd	cd 54 1f 	. T . 
	jr c,$+12		;0f00	38 0a 	8 . 
	ld a,004h		;0f02	3e 04 	> . 
	out (0fbh),a		;0f04	d3 fb 	. . 
	ei			;0f06	fb 	. 
	call 00edfh		;0f07	cd df 0e 	. . . 
	rst 8			;0f0a	cf 	. 
	inc c			;0f0b	0c 	. 
	in a,(0fbh)		;0f0c	db fb 	. . 
	add a,a			;0f0e	87 	. 
	ret m			;0f0f	f8 	. 
	jr nc,$-19		;0f10	30 eb 	0 . 
	ld c,020h		;0f12	0e 20 	.   
	ld e,(hl)			;0f14	5e 	^ 
	inc hl			;0f15	23 	# 
	ld b,008h		;0f16	06 08 	. . 
	rl d		;0f18	cb 12 	. . 
	rl e		;0f1a	cb 13 	. . 
	rr d		;0f1c	cb 1a 	. . 
	in a,(0fbh)		;0f1e	db fb 	. . 
	rra			;0f20	1f 	. 
	jr nc,$-3		;0f21	30 fb 	0 . 
	ld a,d			;0f23	7a 	z 
	out (0fbh),a		;0f24	d3 fb 	. . 
	djnz $-14		;0f26	10 f0 	. . 
	dec c			;0f28	0d 	. 
	jr nz,$-21		;0f29	20 e9 	  . 
	ret			;0f2b	c9 	. 
	ld hl,(05c3dh)		;0f2c	2a 3d 5c 	* = \ 
	push hl			;0f2f	e5 	. 
	ld hl,0107fh		;0f30	21 7f 10 	!  . 
	push hl			;0f33	e5 	. 
	ld (05c3dh),sp		;0f34	ed 73 3d 5c 	. s = \ 
	call 015d4h		;0f38	cd d4 15 	. . . 
	push af			;0f3b	f5 	. 
	ld d,000h		;0f3c	16 00 	. . 
	ld e,(iy-001h)		;0f3e	fd 5e ff 	. ^ . 
	ld hl,000c8h		;0f41	21 c8 00 	! . . 
	call 003b5h		;0f44	cd b5 03 	. . . 
	pop af			;0f47	f1 	. 
	ld hl,00f38h		;0f48	21 38 0f 	! 8 . 
	push hl			;0f4b	e5 	. 
	cp 018h		;0f4c	fe 18 	. . 
	jr nc,$+51		;0f4e	30 31 	0 1 
	cp 007h		;0f50	fe 07 	. . 
	jr c,$+47		;0f52	38 2d 	8 - 
	cp 010h		;0f54	fe 10 	. . 
	jr c,$+60		;0f56	38 3a 	8 : 
	ld bc,00002h		;0f58	01 02 00 	. . . 
	ld d,a			;0f5b	57 	W 
	cp 016h		;0f5c	fe 16 	. . 
	jr c,$+14		;0f5e	38 0c 	8 . 
	inc bc			;0f60	03 	. 
	bit 7,(iy+037h)		;0f61	fd cb 37 7e 	. . 7 ~ 
	jp z,0101eh		;0f65	ca 1e 10 	. . . 
	call 015d4h		;0f68	cd d4 15 	. . . 
	ld e,a			;0f6b	5f 	_ 
	call 015d4h		;0f6c	cd d4 15 	. . . 
	push de			;0f6f	d5 	. 
	ld hl,(05c5bh)		;0f70	2a 5b 5c 	* [ \ 
	res 0,(iy+007h)		;0f73	fd cb 07 86 	. . . . 
	call 01655h		;0f77	cd 55 16 	. U . 
	pop bc			;0f7a	c1 	. 
	inc hl			;0f7b	23 	# 
	ld (hl),b			;0f7c	70 	p 
	inc hl			;0f7d	23 	# 
	ld (hl),c			;0f7e	71 	q 
	jr $+12		;0f7f	18 0a 	. . 
	res 0,(iy+007h)		;0f81	fd cb 07 86 	. . . . 
	ld hl,(05c5bh)		;0f85	2a 5b 5c 	* [ \ 
	call 01652h		;0f88	cd 52 16 	. R . 
	ld (de),a			;0f8b	12 	. 
	inc de			;0f8c	13 	. 
	ld (05c5bh),de		;0f8d	ed 53 5b 5c 	. S [ \ 
	ret			;0f91	c9 	. 
	ld e,a			;0f92	5f 	_ 
	ld d,000h		;0f93	16 00 	. . 
	ld hl,00f99h		;0f95	21 99 0f 	! . . 
	add hl,de			;0f98	19 	. 
	ld e,(hl)			;0f99	5e 	^ 
	add hl,de			;0f9a	19 	. 
	push hl			;0f9b	e5 	. 
	ld hl,(05c5bh)		;0f9c	2a 5b 5c 	* [ \ 
	ret			;0f9f	c9 	. 
	add hl,bc			;0fa0	09 	. 
	ld h,(hl)			;0fa1	66 	f 
	ld l,d			;0fa2	6a 	j 
	ld d,b			;0fa3	50 	P 
	or l			;0fa4	b5 	. 
	ld (hl),b			;0fa5	70 	p 
	ld a,(hl)			;0fa6	7e 	~ 
	rst 8			;0fa7	cf 	. 
	call nc,0492ah		;0fa8	d4 2a 49 	. * I 
	ld e,h			;0fab	5c 	\ 
	bit 5,(iy+037h)		;0fac	fd cb 37 6e 	. . 7 n 
	jp nz,01097h		;0fb0	c2 97 10 	. . . 
	call 0196eh		;0fb3	cd 6e 19 	. n . 
	call 01695h		;0fb6	cd 95 16 	. . . 
	ld a,d			;0fb9	7a 	z 
	or e			;0fba	b3 	. 
	jp z,01097h		;0fbb	ca 97 10 	. . . 
	push hl			;0fbe	e5 	. 
	inc hl			;0fbf	23 	# 
	ld c,(hl)			;0fc0	4e 	N 
	inc hl			;0fc1	23 	# 
	ld b,(hl)			;0fc2	46 	F 
	ld hl,0000ah		;0fc3	21 0a 00 	! . . 
	add hl,bc			;0fc6	09 	. 
	ld b,h			;0fc7	44 	D 
	ld c,l			;0fc8	4d 	M 
	call 01f05h		;0fc9	cd 05 1f 	. . . 
	call 01097h		;0fcc	cd 97 10 	. . . 
	ld hl,(05c51h)		;0fcf	2a 51 5c 	* Q \ 
	ex (sp),hl			;0fd2	e3 	. 
	push hl			;0fd3	e5 	. 
	ld a,0ffh		;0fd4	3e ff 	> . 
	call 01601h		;0fd6	cd 01 16 	. . . 
	pop hl			;0fd9	e1 	. 
	dec hl			;0fda	2b 	+ 
	dec (iy+00fh)		;0fdb	fd 35 0f 	. 5 . 
	call 01855h		;0fde	cd 55 18 	. U . 
	inc (iy+00fh)		;0fe1	fd 34 0f 	. 4 . 
	ld hl,(05c59h)		;0fe4	2a 59 5c 	* Y \ 
	inc hl			;0fe7	23 	# 
	inc hl			;0fe8	23 	# 
	inc hl			;0fe9	23 	# 
	inc hl			;0fea	23 	# 
	ld (05c5bh),hl		;0feb	22 5b 5c 	" [ \ 
	pop hl			;0fee	e1 	. 
	call 01615h		;0fef	cd 15 16 	. . . 
	ret			;0ff2	c9 	. 
	bit 5,(iy+037h)		;0ff3	fd cb 37 6e 	. . 7 n 
	jr nz,$+10		;0ff7	20 08 	  . 
	ld hl,05c49h		;0ff9	21 49 5c 	! I \ 
	call 0190fh		;0ffc	cd 0f 19 	. . . 
	jr $+111		;0fff	18 6d 	. m 
	ld (iy+000h),010h		;1001	fd 36 00 10 	. 6 . . 
	jr $+31		;1005	18 1d 	. . 
	call 01031h		;1007	cd 31 10 	. 1 . 
	jr $+7		;100a	18 05 	. . 
	ld a,(hl)			;100c	7e 	~ 
	cp 00dh		;100d	fe 0d 	. . 
	ret z			;100f	c8 	. 
	inc hl			;1010	23 	# 
	ld (05c5bh),hl		;1011	22 5b 5c 	" [ \ 
	ret			;1014	c9 	. 
	call 01031h		;1015	cd 31 10 	. 1 . 
	ld bc,00001h		;1018	01 01 00 	. . . 
	jp 019e8h		;101b	c3 e8 19 	. . . 
	call 015d4h		;101e	cd d4 15 	. . . 
	call 015d4h		;1021	cd d4 15 	. . . 
	pop hl			;1024	e1 	. 
	pop hl			;1025	e1 	. 
	pop hl			;1026	e1 	. 
	ld (05c3dh),hl		;1027	22 3d 5c 	" = \ 
	bit 7,(iy+000h)		;102a	fd cb 00 7e 	. . . ~ 
	ret nz			;102e	c0 	. 
	ld sp,hl			;102f	f9 	. 
	ret			;1030	c9 	. 
	scf			;1031	37 	7 
	call 01195h		;1032	cd 95 11 	. . . 
	sbc hl,de		;1035	ed 52 	. R 
	add hl,de			;1037	19 	. 
	inc hl			;1038	23 	# 
	pop bc			;1039	c1 	. 
	ret c			;103a	d8 	. 
	push bc			;103b	c5 	. 
	ld b,h			;103c	44 	D 
	ld c,l			;103d	4d 	M 
	ld h,d			;103e	62 	b 
	ld l,e			;103f	6b 	k 
	inc hl			;1040	23 	# 
	ld a,(de)			;1041	1a 	. 
	and 0f0h		;1042	e6 f0 	. . 
	cp 010h		;1044	fe 10 	. . 
	jr nz,$+11		;1046	20 09 	  . 
	inc hl			;1048	23 	# 
	ld a,(de)			;1049	1a 	. 
	sub 017h		;104a	d6 17 	. . 
	adc a,000h		;104c	ce 00 	. . 
	jr nz,$+3		;104e	20 01 	  . 
	inc hl			;1050	23 	# 
	and a			;1051	a7 	. 
	sbc hl,bc		;1052	ed 42 	. B 
	add hl,bc			;1054	09 	. 
	ex de,hl			;1055	eb 	. 
	jr c,$-24		;1056	38 e6 	8 . 
	ret			;1058	c9 	. 
	bit 5,(iy+037h)		;1059	fd cb 37 6e 	. . 7 n 
	ret nz			;105d	c0 	. 
	ld hl,(05c49h)		;105e	2a 49 5c 	* I \ 
	call 0196eh		;1061	cd 6e 19 	. n . 
	ex de,hl			;1064	eb 	. 
	call 01695h		;1065	cd 95 16 	. . . 
	ld hl,05c4ah		;1068	21 4a 5c 	! J \ 
	call 0191ch		;106b	cd 1c 19 	. . . 
	call 01795h		;106e	cd 95 17 	. . . 
	ld a,000h		;1071	3e 00 	> . 
	jp 01601h		;1073	c3 01 16 	. . . 
	bit 7,(iy+037h)		;1076	fd cb 37 7e 	. . 7 ~ 
	jr z,$-86		;107a	28 a8 	( . 
	jp 00f81h		;107c	c3 81 0f 	. . . 
	bit 4,(iy+030h)		;107f	fd cb 30 66 	. . 0 f 
	jr z,$-93		;1083	28 a1 	( . 
	ld (iy+000h),0ffh		;1085	fd 36 00 ff 	. 6 . . 
	ld d,000h		;1089	16 00 	. . 
	ld e,(iy-002h)		;108b	fd 5e fe 	. ^ . 
	ld hl,01a90h		;108e	21 90 1a 	! . . 
	call 003b5h		;1091	cd b5 03 	. . . 
	jp 00f30h		;1094	c3 30 0f 	. 0 . 
	push hl			;1097	e5 	. 
	call 01190h		;1098	cd 90 11 	. . . 
	dec hl			;109b	2b 	+ 
	call 019e5h		;109c	cd e5 19 	. . . 
	ld (05c5bh),hl		;109f	22 5b 5c 	" [ \ 
	ld (iy+007h),000h		;10a2	fd 36 07 00 	. 6 . . 
	pop hl			;10a6	e1 	. 
	ret			;10a7	c9 	. 
	bit 3,(iy+002h)		;10a8	fd cb 02 5e 	. . . ^ 
	call nz,0111dh		;10ac	c4 1d 11 	. . . 
	and a			;10af	a7 	. 
	bit 5,(iy+001h)		;10b0	fd cb 01 6e 	. . . n 
	ret z			;10b4	c8 	. 
	ld a,(05c08h)		;10b5	3a 08 5c 	: . \ 
	res 5,(iy+001h)		;10b8	fd cb 01 ae 	. . . . 
	push af			;10bc	f5 	. 
	bit 5,(iy+002h)		;10bd	fd cb 02 6e 	. . . n 
	call nz,00d6eh		;10c1	c4 6e 0d 	. n . 
	pop af			;10c4	f1 	. 
	cp 020h		;10c5	fe 20 	.   
	jr nc,$+84		;10c7	30 52 	0 R 
	cp 010h		;10c9	fe 10 	. . 
	jr nc,$+47		;10cb	30 2d 	0 - 
	cp 006h		;10cd	fe 06 	. . 
	jr nc,$+12		;10cf	30 0a 	0 . 
	ld b,a			;10d1	47 	G 
	and 001h		;10d2	e6 01 	. . 
	ld c,a			;10d4	4f 	O 
	ld a,b			;10d5	78 	x 
	rra			;10d6	1f 	. 
	add a,012h		;10d7	c6 12 	. . 
	jr $+44		;10d9	18 2a 	. * 
	jr nz,$+11		;10db	20 09 	  . 
	ld hl,05c6ah		;10dd	21 6a 5c 	! j \ 
	ld a,008h		;10e0	3e 08 	> . 
	xor (hl)			;10e2	ae 	. 
	ld (hl),a			;10e3	77 	w 
	jr $+16		;10e4	18 0e 	. . 
	cp 00eh		;10e6	fe 0e 	. . 
	ret c			;10e8	d8 	. 
	sub 00dh		;10e9	d6 0d 	. . 
	ld hl,05c41h		;10eb	21 41 5c 	! A \ 
	cp (hl)			;10ee	be 	. 
	ld (hl),a			;10ef	77 	w 
	jr nz,$+4		;10f0	20 02 	  . 
	ld (hl),000h		;10f2	36 00 	6 . 
	set 3,(iy+002h)		;10f4	fd cb 02 de 	. . . . 
	cp a			;10f8	bf 	. 
	ret			;10f9	c9 	. 
	ld b,a			;10fa	47 	G 
	and 007h		;10fb	e6 07 	. . 
	ld c,a			;10fd	4f 	O 
	ld a,010h		;10fe	3e 10 	> . 
	bit 3,b		;1100	cb 58 	. X 
	jr nz,$+3		;1102	20 01 	  . 
	inc a			;1104	3c 	< 
	ld (iy-02dh),c		;1105	fd 71 d3 	. q . 
	ld de,0110dh		;1108	11 0d 11 	. . . 
	jr $+8		;110b	18 06 	. . 
	ld a,(05c0dh)		;110d	3a 0d 5c 	: . \ 
	ld de,010a8h		;1110	11 a8 10 	. . . 
	ld hl,(05c4fh)		;1113	2a 4f 5c 	* O \ 
	inc hl			;1116	23 	# 
	inc hl			;1117	23 	# 
	ld (hl),e			;1118	73 	s 
	inc hl			;1119	23 	# 
	ld (hl),d			;111a	72 	r 
	scf			;111b	37 	7 
	ret			;111c	c9 	. 
	call 00d4dh		;111d	cd 4d 0d 	. M . 
	res 3,(iy+002h)		;1120	fd cb 02 9e 	. . . . 
	res 5,(iy+002h)		;1124	fd cb 02 ae 	. . . . 
	ld hl,(05c8ah)		;1128	2a 8a 5c 	* . \ 
	push hl			;112b	e5 	. 
	ld hl,(05c3dh)		;112c	2a 3d 5c 	* = \ 
	push hl			;112f	e5 	. 
	ld hl,01167h		;1130	21 67 11 	! g . 
	push hl			;1133	e5 	. 
	ld (05c3dh),sp		;1134	ed 73 3d 5c 	. s = \ 
	ld hl,(05c82h)		;1138	2a 82 5c 	* . \ 
	push hl			;113b	e5 	. 
	scf			;113c	37 	7 
	call 01195h		;113d	cd 95 11 	. . . 
	ex de,hl			;1140	eb 	. 
	call 0187dh		;1141	cd 7d 18 	. } . 
	ex de,hl			;1144	eb 	. 
	call 018e1h		;1145	cd e1 18 	. . . 
	ld hl,(05c8ah)		;1148	2a 8a 5c 	* . \ 
	ex (sp),hl			;114b	e3 	. 
	ex de,hl			;114c	eb 	. 
	call 00d4dh		;114d	cd 4d 0d 	. M . 
	ld a,(05c8bh)		;1150	3a 8b 5c 	: . \ 
	sub d			;1153	92 	. 
	jr c,$+40		;1154	38 26 	8 & 
	jr nz,$+8		;1156	20 06 	  . 
	ld a,e			;1158	7b 	{ 
	sub (iy+050h)		;1159	fd 96 50 	. . P 
	jr nc,$+32		;115c	30 1e 	0 . 
	ld a,020h		;115e	3e 20 	>   
	push de			;1160	d5 	. 
	call 009f4h		;1161	cd f4 09 	. . . 
	pop de			;1164	d1 	. 
	jr $-21		;1165	18 e9 	. . 
	ld d,000h		;1167	16 00 	. . 
	ld e,(iy-002h)		;1169	fd 5e fe 	. ^ . 
	ld hl,01a90h		;116c	21 90 1a 	! . . 
	call 003b5h		;116f	cd b5 03 	. . . 
	ld (iy+000h),0ffh		;1172	fd 36 00 ff 	. 6 . . 
	ld de,(05c8ah)		;1176	ed 5b 8a 5c 	. [ . \ 
	jr $+4		;117a	18 02 	. . 
	pop de			;117c	d1 	. 
	pop hl			;117d	e1 	. 
	pop hl			;117e	e1 	. 
	ld (05c3dh),hl		;117f	22 3d 5c 	" = \ 
	pop bc			;1182	c1 	. 
	push de			;1183	d5 	. 
	call 00dd9h		;1184	cd d9 0d 	. . . 
	pop hl			;1187	e1 	. 
	ld (05c82h),hl		;1188	22 82 5c 	" . \ 
	ld (iy+026h),000h		;118b	fd 36 26 00 	. 6 & . 
	ret			;118f	c9 	. 
	ld hl,(05c61h)		;1190	2a 61 5c 	* a \ 
	dec hl			;1193	2b 	+ 
	and a			;1194	a7 	. 
	ld de,(05c59h)		;1195	ed 5b 59 5c 	. [ Y \ 
	bit 5,(iy+037h)		;1199	fd cb 37 6e 	. . 7 n 
	ret z			;119d	c8 	. 
	ld de,(05c61h)		;119e	ed 5b 61 5c 	. [ a \ 
	ret c			;11a2	d8 	. 
	ld hl,(05c63h)		;11a3	2a 63 5c 	* c \ 
	ret			;11a6	c9 	. 
	ld a,(hl)			;11a7	7e 	~ 
	cp 00eh		;11a8	fe 0e 	. . 
	ld bc,00006h		;11aa	01 06 00 	. . . 
	call z,019e8h		;11ad	cc e8 19 	. . . 
	ld a,(hl)			;11b0	7e 	~ 
	inc hl			;11b1	23 	# 
	cp 00dh		;11b2	fe 0d 	. . 
	jr nz,$-13		;11b4	20 f1 	  . 
	ret			;11b6	c9 	. 
	di			;11b7	f3 	. 
	ld a,0ffh		;11b8	3e ff 	> . 
	ld de,(05cb2h)		;11ba	ed 5b b2 5c 	. [ . \ 
	exx			;11be	d9 	. 
	ld bc,(05cb4h)		;11bf	ed 4b b4 5c 	. K . \ 
	ld de,(05c38h)		;11c3	ed 5b 38 5c 	. [ 8 \ 
	ld hl,(05c7bh)		;11c7	2a 7b 5c 	* { \ 
	exx			;11ca	d9 	. 
	ld b,a			;11cb	47 	G 
	ld a,007h		;11cc	3e 07 	> . 
	out (0feh),a		;11ce	d3 fe 	. . 
	ld a,03fh		;11d0	3e 3f 	> ? 
	ld i,a		;11d2	ed 47 	. G 
	nop			;11d4	00 	. 
	nop			;11d5	00 	. 
	nop			;11d6	00 	. 
	nop			;11d7	00 	. 
	nop			;11d8	00 	. 
	nop			;11d9	00 	. 
	ld h,d			;11da	62 	b 
	ld l,e			;11db	6b 	k 
	ld (hl),002h		;11dc	36 02 	6 . 
	dec hl			;11de	2b 	+ 
	cp h			;11df	bc 	. 
	jr nz,$-4		;11e0	20 fa 	  . 
	and a			;11e2	a7 	. 
	sbc hl,de		;11e3	ed 52 	. R 
	add hl,de			;11e5	19 	. 
	inc hl			;11e6	23 	# 
	jr nc,$+8		;11e7	30 06 	0 . 
	dec (hl)			;11e9	35 	5 
	jr z,$+5		;11ea	28 03 	( . 
	dec (hl)			;11ec	35 	5 
	jr z,$-11		;11ed	28 f3 	( . 
	dec hl			;11ef	2b 	+ 
	exx			;11f0	d9 	. 
	ld (05cb4h),bc		;11f1	ed 43 b4 5c 	. C . \ 
	ld (05c38h),de		;11f5	ed 53 38 5c 	. S 8 \ 
	ld (05c7bh),hl		;11f9	22 7b 5c 	" { \ 
	exx			;11fc	d9 	. 
	inc b			;11fd	04 	. 
	jr z,$+27		;11fe	28 19 	( . 
	ld (05cb4h),hl		;1200	22 b4 5c 	" . \ 
	ld de,03eafh		;1203	11 af 3e 	. . > 
	ld bc,000a8h		;1206	01 a8 00 	. . . 
	ex de,hl			;1209	eb 	. 
	lddr		;120a	ed b8 	. . 
	ex de,hl			;120c	eb 	. 
	inc hl			;120d	23 	# 
	ld (05c7bh),hl		;120e	22 7b 5c 	" { \ 
	dec hl			;1211	2b 	+ 
	ld bc,00040h		;1212	01 40 00 	. @ . 
	ld (05c38h),bc		;1215	ed 43 38 5c 	. C 8 \ 
	ld (05cb2h),hl		;1219	22 b2 5c 	" . \ 
	ld hl,03c00h		;121c	21 00 3c 	! . < 
	ld (05c36h),hl		;121f	22 36 5c 	" 6 \ 
	ld hl,(05cb2h)		;1222	2a b2 5c 	* . \ 
	ld (hl),03eh		;1225	36 3e 	6 > 
	dec hl			;1227	2b 	+ 
	ld sp,hl			;1228	f9 	. 
	dec hl			;1229	2b 	+ 
	dec hl			;122a	2b 	+ 
	ld (05c3dh),hl		;122b	22 3d 5c 	" = \ 
	im 1		;122e	ed 56 	. V 
	ld iy,05c3ah		;1230	fd 21 3a 5c 	. ! : \ 
	ei			;1234	fb 	. 
	ld hl,05cb6h		;1235	21 b6 5c 	! . \ 
	ld (05c4fh),hl		;1238	22 4f 5c 	" O \ 
	ld de,015afh		;123b	11 af 15 	. . . 
	ld bc,00015h		;123e	01 15 00 	. . . 
	ex de,hl			;1241	eb 	. 
	ldir		;1242	ed b0 	. . 
	ex de,hl			;1244	eb 	. 
	dec hl			;1245	2b 	+ 
	ld (05c57h),hl		;1246	22 57 5c 	" W \ 
	inc hl			;1249	23 	# 
	ld (05c53h),hl		;124a	22 53 5c 	" S \ 
	ld (05c4bh),hl		;124d	22 4b 5c 	" K \ 
	ld (hl),080h		;1250	36 80 	6 . 
	inc hl			;1252	23 	# 
	ld (05c59h),hl		;1253	22 59 5c 	" Y \ 
	ld (hl),00dh		;1256	36 0d 	6 . 
	inc hl			;1258	23 	# 
	ld (hl),080h		;1259	36 80 	6 . 
	inc hl			;125b	23 	# 
	ld (05c61h),hl		;125c	22 61 5c 	" a \ 
	ld (05c63h),hl		;125f	22 63 5c 	" c \ 
	ld (05c65h),hl		;1262	22 65 5c 	" e \ 
	ld a,038h		;1265	3e 38 	> 8 
	ld (05c8dh),a		;1267	32 8d 5c 	2 . \ 
	ld (05c8fh),a		;126a	32 8f 5c 	2 . \ 
	ld (05c48h),a		;126d	32 48 5c 	2 H \ 
	ld hl,00523h		;1270	21 23 05 	! # . 
	ld (05c09h),hl		;1273	22 09 5c 	" . \ 
	dec (iy-03ah)		;1276	fd 35 c6 	. 5 . 
	dec (iy-036h)		;1279	fd 35 ca 	. 5 . 
	ld hl,015c6h		;127c	21 c6 15 	! . . 
	ld de,05c10h		;127f	11 10 5c 	. . \ 
	ld bc,0000eh		;1282	01 0e 00 	. . . 
	ldir		;1285	ed b0 	. . 
	set 1,(iy+001h)		;1287	fd cb 01 ce 	. . . . 
	call 00edfh		;128b	cd df 0e 	. . . 
	ld (iy+031h),002h		;128e	fd 36 31 02 	. 6 1 . 
	call 00d6bh		;1292	cd 6b 0d 	. k . 
	xor a			;1295	af 	. 
	ld de,01538h		;1296	11 38 15 	. 8 . 
	call 00c0ah		;1299	cd 0a 0c 	. . . 
	set 5,(iy+002h)		;129c	fd cb 02 ee 	. . . . 
	jr $+9		;12a0	18 07 	. . 
	ld (iy+031h),002h		;12a2	fd 36 31 02 	. 6 1 . 
	call 01795h		;12a6	cd 95 17 	. . . 
	call 016b0h		;12a9	cd b0 16 	. . . 
	ld a,000h		;12ac	3e 00 	> . 
	call 01601h		;12ae	cd 01 16 	. . . 
	call 00f2ch		;12b1	cd 2c 0f 	. , . 
	call 01b17h		;12b4	cd 17 1b 	. . . 
	bit 7,(iy+000h)		;12b7	fd cb 00 7e 	. . . ~ 
	jr nz,$+20		;12bb	20 12 	  . 
	bit 4,(iy+030h)		;12bd	fd cb 30 66 	. . 0 f 
	jr z,$+66		;12c1	28 40 	( @ 
	ld hl,(05c59h)		;12c3	2a 59 5c 	* Y \ 
	call 011a7h		;12c6	cd a7 11 	. . . 
	ld (iy+000h),0ffh		;12c9	fd 36 00 ff 	. 6 . . 
	jr $-33		;12cd	18 dd 	. . 
	ld hl,(05c59h)		;12cf	2a 59 5c 	* Y \ 
	ld (05c5dh),hl		;12d2	22 5d 5c 	" ] \ 
	call 019fbh		;12d5	cd fb 19 	. . . 
	ld a,b			;12d8	78 	x 
	or c			;12d9	b1 	. 
	jp nz,0155dh		;12da	c2 5d 15 	. ] . 
	rst 18h			;12dd	df 	. 
	cp 00dh		;12de	fe 0d 	. . 
	jr z,$-62		;12e0	28 c0 	( . 
	bit 0,(iy+030h)		;12e2	fd cb 30 46 	. . 0 F 
	call nz,00dafh		;12e6	c4 af 0d 	. . . 
	call 00d6eh		;12e9	cd 6e 0d 	. n . 
	ld a,019h		;12ec	3e 19 	> . 
	sub (iy+04fh)		;12ee	fd 96 4f 	. . O 
	ld (05c8ch),a		;12f1	32 8c 5c 	2 . \ 
	set 7,(iy+001h)		;12f4	fd cb 01 fe 	. . . . 
	ld (iy+000h),0ffh		;12f8	fd 36 00 ff 	. 6 . . 
	ld (iy+00ah),001h		;12fc	fd 36 0a 01 	. 6 . . 
	call 01b8ah		;1300	cd 8a 1b 	. . . 
	halt			;1303	76 	v 
	res 5,(iy+001h)		;1304	fd cb 01 ae 	. . . . 
	bit 1,(iy+030h)		;1308	fd cb 30 4e 	. . 0 N 
	call nz,00ecdh		;130c	c4 cd 0e 	. . . 
	ld a,(05c3ah)		;130f	3a 3a 5c 	: : \ 
	inc a			;1312	3c 	< 
	push af			;1313	f5 	. 
	ld hl,00000h		;1314	21 00 00 	! . . 
	ld (iy+037h),h		;1317	fd 74 37 	. t 7 
	ld (iy+026h),h		;131a	fd 74 26 	. t & 
	ld (05c0bh),hl		;131d	22 0b 5c 	" . \ 
	ld hl,00001h		;1320	21 01 00 	! . . 
	ld (05c16h),hl		;1323	22 16 5c 	" . \ 
	call 016b0h		;1326	cd b0 16 	. . . 
	res 5,(iy+037h)		;1329	fd cb 37 ae 	. . 7 . 
	call 00d6eh		;132d	cd 6e 0d 	. n . 
	set 5,(iy+002h)		;1330	fd cb 02 ee 	. . . . 
	pop af			;1334	f1 	. 
	ld b,a			;1335	47 	G 
	cp 00ah		;1336	fe 0a 	. . 
	jr c,$+4		;1338	38 02 	8 . 
	add a,007h		;133a	c6 07 	. . 
	call 015efh		;133c	cd ef 15 	. . . 
	ld a,020h		;133f	3e 20 	>   
	rst 10h			;1341	d7 	. 
	ld a,b			;1342	78 	x 
	ld de,01391h		;1343	11 91 13 	. . . 
	call 00c0ah		;1346	cd 0a 0c 	. . . 
	xor a			;1349	af 	. 
	ld de,01536h		;134a	11 36 15 	. 6 . 
	call 00c0ah		;134d	cd 0a 0c 	. . . 
	ld bc,(05c45h)		;1350	ed 4b 45 5c 	. K E \ 
	call 01a1bh		;1354	cd 1b 1a 	. . . 
	ld a,03ah		;1357	3e 3a 	> : 
	rst 10h			;1359	d7 	. 
	ld c,(iy+00dh)		;135a	fd 4e 0d 	. N . 
	ld b,000h		;135d	06 00 	. . 
	call 01a1bh		;135f	cd 1b 1a 	. . . 
	call 01097h		;1362	cd 97 10 	. . . 
	ld a,(05c3ah)		;1365	3a 3a 5c 	: : \ 
	inc a			;1368	3c 	< 
	jr z,$+29		;1369	28 1b 	( . 
	cp 009h		;136b	fe 09 	. . 
	jr z,$+6		;136d	28 04 	( . 
	cp 015h		;136f	fe 15 	. . 
	jr nz,$+5		;1371	20 03 	  . 
	inc (iy+00dh)		;1373	fd 34 0d 	. 4 . 
	ld bc,00003h		;1376	01 03 00 	. . . 
	ld de,05c70h		;1379	11 70 5c 	. p \ 
	ld hl,05c44h		;137c	21 44 5c 	! D \ 
	bit 7,(hl)		;137f	cb 7e 	. ~ 
	jr z,$+3		;1381	28 01 	( . 
	add hl,bc			;1383	09 	. 
	lddr		;1384	ed b8 	. . 
	ld (iy+00ah),0ffh		;1386	fd 36 0a ff 	. 6 . . 
	res 3,(iy+001h)		;138a	fd cb 01 9e 	. . . . 
	jp 012ach		;138e	c3 ac 12 	. . . 
	add a,b			;1391	80 	. 
	ld c,a			;1392	4f 	O 
	bit 1,(hl)		;1393	cb 4e 	. N 
	ld b,l			;1395	45 	E 
	ld e,b			;1396	58 	X 
	ld d,h			;1397	54 	T 
	jr nz,$+121		;1398	20 77 	  w 
	ld l,c			;139a	69 	i 
	ld (hl),h			;139b	74 	t 
	ld l,b			;139c	68 	h 
	ld l,a			;139d	6f 	o 
	ld (hl),l			;139e	75 	u 
	ld (hl),h			;139f	74 	t 
	jr nz,$+72		;13a0	20 46 	  F 
	ld c,a			;13a2	4f 	O 
	jp nc,06156h		;13a3	d2 56 61 	. V a 
	ld (hl),d			;13a6	72 	r 
	ld l,c			;13a7	69 	i 
	ld h,c			;13a8	61 	a 
	ld h,d			;13a9	62 	b 
	ld l,h			;13aa	6c 	l 
	ld h,l			;13ab	65 	e 
	jr nz,$+112		;13ac	20 6e 	  n 
	ld l,a			;13ae	6f 	o 
	ld (hl),h			;13af	74 	t 
	jr nz,$+104		;13b0	20 66 	  f 
	ld l,a			;13b2	6f 	o 
	ld (hl),l			;13b3	75 	u 
	ld l,(hl)			;13b4	6e 	n 
	call po,07553h		;13b5	e4 53 75 	. S u 
	ld h,d			;13b8	62 	b 
	ld (hl),e			;13b9	73 	s 
	ld h,e			;13ba	63 	c 
	ld (hl),d			;13bb	72 	r 
	ld l,c			;13bc	69 	i 
	ld (hl),b			;13bd	70 	p 
	ld (hl),h			;13be	74 	t 
	jr nz,$+121		;13bf	20 77 	  w 
	ld (hl),d			;13c1	72 	r 
	ld l,a			;13c2	6f 	o 
	ld l,(hl)			;13c3	6e 	n 
	rst 20h			;13c4	e7 	. 
	ld c,a			;13c5	4f 	O 
	ld (hl),l			;13c6	75 	u 
	ld (hl),h			;13c7	74 	t 
	jr nz,$+113		;13c8	20 6f 	  o 
	ld h,(hl)			;13ca	66 	f 
	jr nz,$+111		;13cb	20 6d 	  m 
	ld h,l			;13cd	65 	e 
	ld l,l			;13ce	6d 	m 
	ld l,a			;13cf	6f 	o 
	ld (hl),d			;13d0	72 	r 
	ld sp,hl			;13d1	f9 	. 
	ld c,a			;13d2	4f 	O 
	ld (hl),l			;13d3	75 	u 
	ld (hl),h			;13d4	74 	t 
	jr nz,$+113		;13d5	20 6f 	  o 
	ld h,(hl)			;13d7	66 	f 
	jr nz,$+117		;13d8	20 73 	  s 
	ld h,e			;13da	63 	c 
	ld (hl),d			;13db	72 	r 
	ld h,l			;13dc	65 	e 
	ld h,l			;13dd	65 	e 
	xor 04eh		;13de	ee 4e 	. N 
	ld (hl),l			;13e0	75 	u 
	ld l,l			;13e1	6d 	m 
	ld h,d			;13e2	62 	b 
	ld h,l			;13e3	65 	e 
	ld (hl),d			;13e4	72 	r 
	jr nz,$+118		;13e5	20 74 	  t 
	ld l,a			;13e7	6f 	o 
	ld l,a			;13e8	6f 	o 
	jr nz,$+100		;13e9	20 62 	  b 
	ld l,c			;13eb	69 	i 
	rst 20h			;13ec	e7 	. 
	ld d,d			;13ed	52 	R 
	ld b,l			;13ee	45 	E 
	ld d,h			;13ef	54 	T 
	ld d,l			;13f0	55 	U 
	ld d,d			;13f1	52 	R 
	ld c,(hl)			;13f2	4e 	N 
	jr nz,$+121		;13f3	20 77 	  w 
	ld l,c			;13f5	69 	i 
	ld (hl),h			;13f6	74 	t 
	ld l,b			;13f7	68 	h 
	ld l,a			;13f8	6f 	o 
	ld (hl),l			;13f9	75 	u 
	ld (hl),h			;13fa	74 	t 
	jr nz,$+73		;13fb	20 47 	  G 
	ld c,a			;13fd	4f 	O 
	ld d,e			;13fe	53 	S 
	ld d,l			;13ff	55 	U 
	jp nz,06e45h		;1400	c2 45 6e 	. E n 
	ld h,h			;1403	64 	d 
	jr nz,$+113		;1404	20 6f 	  o 
	ld h,(hl)			;1406	66 	f 
	jr nz,$+104		;1407	20 66 	  f 
	ld l,c			;1409	69 	i 
	ld l,h			;140a	6c 	l 
	push hl			;140b	e5 	. 
	ld d,e			;140c	53 	S 
	ld d,h			;140d	54 	T 
	ld c,a			;140e	4f 	O 
	ld d,b			;140f	50 	P 
	jr nz,$+117		;1410	20 73 	  s 
	ld (hl),h			;1412	74 	t 
	ld h,c			;1413	61 	a 
	ld (hl),h			;1414	74 	t 
	ld h,l			;1415	65 	e 
	ld l,l			;1416	6d 	m 
	ld h,l			;1417	65 	e 
	ld l,(hl)			;1418	6e 	n 
	call p,06e49h		;1419	f4 49 6e 	. I n 
	halt			;141c	76 	v 
	ld h,c			;141d	61 	a 
	ld l,h			;141e	6c 	l 
	ld l,c			;141f	69 	i 
	ld h,h			;1420	64 	d 
	jr nz,$+99		;1421	20 61 	  a 
	ld (hl),d			;1423	72 	r 
	ld h,a			;1424	67 	g 
	ld (hl),l			;1425	75 	u 
	ld l,l			;1426	6d 	m 
	ld h,l			;1427	65 	e 
	ld l,(hl)			;1428	6e 	n 
	call p,06e49h		;1429	f4 49 6e 	. I n 
	ld (hl),h			;142c	74 	t 
	ld h,l			;142d	65 	e 
	ld h,a			;142e	67 	g 
	ld h,l			;142f	65 	e 
	ld (hl),d			;1430	72 	r 
	jr nz,$+113		;1431	20 6f 	  o 
	ld (hl),l			;1433	75 	u 
	ld (hl),h			;1434	74 	t 
	jr nz,$+113		;1435	20 6f 	  o 
	ld h,(hl)			;1437	66 	f 
	jr nz,$+116		;1438	20 72 	  r 
	ld h,c			;143a	61 	a 
	ld l,(hl)			;143b	6e 	n 
	ld h,a			;143c	67 	g 
	push hl			;143d	e5 	. 
	ld c,(hl)			;143e	4e 	N 
	ld l,a			;143f	6f 	o 
	ld l,(hl)			;1440	6e 	n 
	ld (hl),e			;1441	73 	s 
	ld h,l			;1442	65 	e 
	ld l,(hl)			;1443	6e 	n 
	ld (hl),e			;1444	73 	s 
	ld h,l			;1445	65 	e 
	jr nz,$+107		;1446	20 69 	  i 
	ld l,(hl)			;1448	6e 	n 
	jr nz,$+68		;1449	20 42 	  B 
	ld b,c			;144b	41 	A 
	ld d,e			;144c	53 	S 
	ld c,c			;144d	49 	I 
	jp 05242h		;144e	c3 42 52 	. B R 
	ld b,l			;1451	45 	E 
	ld b,c			;1452	41 	A 
	ld c,e			;1453	4b 	K 
	jr nz,$+47		;1454	20 2d 	  - 
	jr nz,$+69		;1456	20 43 	  C 
	ld c,a			;1458	4f 	O 
	ld c,(hl)			;1459	4e 	N 
	ld d,h			;145a	54 	T 
	jr nz,$+116		;145b	20 72 	  r 
	ld h,l			;145d	65 	e 
	ld (hl),b			;145e	70 	p 
	ld h,l			;145f	65 	e 
	ld h,c			;1460	61 	a 
	ld (hl),h			;1461	74 	t 
	di			;1462	f3 	. 
	ld c,a			;1463	4f 	O 
	ld (hl),l			;1464	75 	u 
	ld (hl),h			;1465	74 	t 
	jr nz,$+113		;1466	20 6f 	  o 
	ld h,(hl)			;1468	66 	f 
	jr nz,$+70		;1469	20 44 	  D 
	ld b,c			;146b	41 	A 
	ld d,h			;146c	54 	T 
	pop bc			;146d	c1 	. 
	ld c,c			;146e	49 	I 
	ld l,(hl)			;146f	6e 	n 
	halt			;1470	76 	v 
	ld h,c			;1471	61 	a 
	ld l,h			;1472	6c 	l 
	ld l,c			;1473	69 	i 
	ld h,h			;1474	64 	d 
	jr nz,$+104		;1475	20 66 	  f 
	ld l,c			;1477	69 	i 
	ld l,h			;1478	6c 	l 
	ld h,l			;1479	65 	e 
	jr nz,$+112		;147a	20 6e 	  n 
	ld h,c			;147c	61 	a 
	ld l,l			;147d	6d 	m 
	push hl			;147e	e5 	. 
	ld c,(hl)			;147f	4e 	N 
	ld l,a			;1480	6f 	o 
	jr nz,$+116		;1481	20 72 	  r 
	ld l,a			;1483	6f 	o 
	ld l,a			;1484	6f 	o 
	ld l,l			;1485	6d 	m 
	jr nz,$+104		;1486	20 66 	  f 
	ld l,a			;1488	6f 	o 
	ld (hl),d			;1489	72 	r 
	jr nz,$+110		;148a	20 6c 	  l 
	ld l,c			;148c	69 	i 
	ld l,(hl)			;148d	6e 	n 
	push hl			;148e	e5 	. 
	ld d,e			;148f	53 	S 
	ld d,h			;1490	54 	T 
	ld c,a			;1491	4f 	O 
	ld d,b			;1492	50 	P 
	jr nz,$+107		;1493	20 69 	  i 
	ld l,(hl)			;1495	6e 	n 
	jr nz,$+75		;1496	20 49 	  I 
	ld c,(hl)			;1498	4e 	N 
	ld d,b			;1499	50 	P 
	ld d,l			;149a	55 	U 
	call nc,04f46h		;149b	d4 46 4f 	. F O 
	ld d,d			;149e	52 	R 
	jr nz,$+121		;149f	20 77 	  w 
	ld l,c			;14a1	69 	i 
	ld (hl),h			;14a2	74 	t 
	ld l,b			;14a3	68 	h 
	ld l,a			;14a4	6f 	o 
	ld (hl),l			;14a5	75 	u 
	ld (hl),h			;14a6	74 	t 
	jr nz,$+80		;14a7	20 4e 	  N 
	ld b,l			;14a9	45 	E 
	ld e,b			;14aa	58 	X 
	call nc,06e49h		;14ab	d4 49 6e 	. I n 
	halt			;14ae	76 	v 
	ld h,c			;14af	61 	a 
	ld l,h			;14b0	6c 	l 
	ld l,c			;14b1	69 	i 
	ld h,h			;14b2	64 	d 
	jr nz,$+75		;14b3	20 49 	  I 
	cpl			;14b5	2f 	/ 
	ld c,a			;14b6	4f 	O 
	jr nz,$+102		;14b7	20 64 	  d 
	ld h,l			;14b9	65 	e 
	halt			;14ba	76 	v 
	ld l,c			;14bb	69 	i 
	ld h,e			;14bc	63 	c 
	push hl			;14bd	e5 	. 
	ld c,c			;14be	49 	I 
	ld l,(hl)			;14bf	6e 	n 
	halt			;14c0	76 	v 
	ld h,c			;14c1	61 	a 
	ld l,h			;14c2	6c 	l 
	ld l,c			;14c3	69 	i 
	ld h,h			;14c4	64 	d 
	jr nz,$+101		;14c5	20 63 	  c 
	ld l,a			;14c7	6f 	o 
	ld l,h			;14c8	6c 	l 
	ld l,a			;14c9	6f 	o 
	ld (hl),l			;14ca	75 	u 
	jp p,05242h		;14cb	f2 42 52 	. B R 
	ld b,l			;14ce	45 	E 
	ld b,c			;14cf	41 	A 
	ld c,e			;14d0	4b 	K 
	jr nz,$+107		;14d1	20 69 	  i 
	ld l,(hl)			;14d3	6e 	n 
	ld (hl),h			;14d4	74 	t 
	ld l,a			;14d5	6f 	o 
	jr nz,$+114		;14d6	20 70 	  p 
	ld (hl),d			;14d8	72 	r 
	ld l,a			;14d9	6f 	o 
	ld h,a			;14da	67 	g 
	ld (hl),d			;14db	72 	r 
	ld h,c			;14dc	61 	a 
	sbc hl,de		;14dd	ed 52 	. R 
	ld b,c			;14df	41 	A 
	ld c,l			;14e0	4d 	M 
	ld d,h			;14e1	54 	T 
	ld c,a			;14e2	4f 	O 
	ld d,b			;14e3	50 	P 
	jr nz,$+112		;14e4	20 6e 	  n 
	ld l,a			;14e6	6f 	o 
	jr nz,$+105		;14e7	20 67 	  g 
	ld l,a			;14e9	6f 	o 
	ld l,a			;14ea	6f 	o 
	call po,07453h		;14eb	e4 53 74 	. S t 
	ld h,c			;14ee	61 	a 
	ld (hl),h			;14ef	74 	t 
	ld h,l			;14f0	65 	e 
	ld l,l			;14f1	6d 	m 
	ld h,l			;14f2	65 	e 
	ld l,(hl)			;14f3	6e 	n 
	ld (hl),h			;14f4	74 	t 
	jr nz,$+110		;14f5	20 6c 	  l 
	ld l,a			;14f7	6f 	o 
	ld (hl),e			;14f8	73 	s 
	call p,06e49h		;14f9	f4 49 6e 	. I n 
	halt			;14fc	76 	v 
	ld h,c			;14fd	61 	a 
	ld l,h			;14fe	6c 	l 
	ld l,c			;14ff	69 	i 
	ld h,h			;1500	64 	d 
	jr nz,$+117		;1501	20 73 	  s 
	ld (hl),h			;1503	74 	t 
	ld (hl),d			;1504	72 	r 
	ld h,l			;1505	65 	e 
	ld h,c			;1506	61 	a 
	im 0		;1507	ed 46 	. F 
	ld c,(hl)			;1509	4e 	N 
	jr nz,$+121		;150a	20 77 	  w 
	ld l,c			;150c	69 	i 
	ld (hl),h			;150d	74 	t 
	ld l,b			;150e	68 	h 
	ld l,a			;150f	6f 	o 
	ld (hl),l			;1510	75 	u 
	ld (hl),h			;1511	74 	t 
	jr nz,$+70		;1512	20 44 	  D 
	ld b,l			;1514	45 	E 
	add a,050h		;1515	c6 50 	. P 
	ld h,c			;1517	61 	a 
	ld (hl),d			;1518	72 	r 
	ld h,c			;1519	61 	a 
	ld l,l			;151a	6d 	m 
	ld h,l			;151b	65 	e 
	ld (hl),h			;151c	74 	t 
	ld h,l			;151d	65 	e 
	ld (hl),d			;151e	72 	r 
	jr nz,$+103		;151f	20 65 	  e 
	ld (hl),d			;1521	72 	r 
	ld (hl),d			;1522	72 	r 
	ld l,a			;1523	6f 	o 
	jp p,06154h		;1524	f2 54 61 	. T a 
	ld (hl),b			;1527	70 	p 
	ld h,l			;1528	65 	e 
	jr nz,$+110		;1529	20 6c 	  l 
	ld l,a			;152b	6f 	o 
	ld h,c			;152c	61 	a 
	ld h,h			;152d	64 	d 
	ld l,c			;152e	69 	i 
	ld l,(hl)			;152f	6e 	n 
	ld h,a			;1530	67 	g 
	jr nz,$+103		;1531	20 65 	  e 
	ld (hl),d			;1533	72 	r 
	ld (hl),d			;1534	72 	r 
	ld l,a			;1535	6f 	o 
	jp p,0a02ch		;1536	f2 2c a0 	. , . 
	ld a,a			;1539	7f 	 
	jr nz,$+51		;153a	20 31 	  1 
	add hl,sp			;153c	39 	9 
	jr c,$+52		;153d	38 32 	8 2 
	jr nz,$+85		;153f	20 53 	  S 
	ld l,c			;1541	69 	i 
	ld l,(hl)			;1542	6e 	n 
	ld h,e			;1543	63 	c 
	ld l,h			;1544	6c 	l 
	ld h,c			;1545	61 	a 
	ld l,c			;1546	69 	i 
	ld (hl),d			;1547	72 	r 
	jr nz,$+84		;1548	20 52 	  R 
	ld h,l			;154a	65 	e 
	ld (hl),e			;154b	73 	s 
	ld h,l			;154c	65 	e 
	ld h,c			;154d	61 	a 
	ld (hl),d			;154e	72 	r 
	ld h,e			;154f	63 	c 
	ld l,b			;1550	68 	h 
	jr nz,$+78		;1551	20 4c 	  L 
	ld (hl),h			;1553	74 	t 
	call po,0103eh		;1554	e4 3e 10 	. > . 
	ld bc,00000h		;1557	01 00 00 	. . . 
	jp 01313h		;155a	c3 13 13 	. . . 
	ld (05c49h),bc		;155d	ed 43 49 5c 	. C I \ 
	ld hl,(05c5dh)		;1561	2a 5d 5c 	* ] \ 
	ex de,hl			;1564	eb 	. 
	ld hl,01555h		;1565	21 55 15 	! U . 
	push hl			;1568	e5 	. 
	ld hl,(05c61h)		;1569	2a 61 5c 	* a \ 
	scf			;156c	37 	7 
	sbc hl,de		;156d	ed 52 	. R 
	push hl			;156f	e5 	. 
	ld h,b			;1570	60 	` 
	ld l,c			;1571	69 	i 
	call 0196eh		;1572	cd 6e 19 	. n . 
	jr nz,$+8		;1575	20 06 	  . 
	call 019b8h		;1577	cd b8 19 	. . . 
	call 019e8h		;157a	cd e8 19 	. . . 
	pop bc			;157d	c1 	. 
	ld a,c			;157e	79 	y 
	dec a			;157f	3d 	= 
	or b			;1580	b0 	. 
	jr z,$+42		;1581	28 28 	( ( 
	push bc			;1583	c5 	. 
	inc bc			;1584	03 	. 
	inc bc			;1585	03 	. 
	inc bc			;1586	03 	. 
	inc bc			;1587	03 	. 
	dec hl			;1588	2b 	+ 
	ld de,(05c53h)		;1589	ed 5b 53 5c 	. [ S \ 
	push de			;158d	d5 	. 
	call 01655h		;158e	cd 55 16 	. U . 
	pop hl			;1591	e1 	. 
	ld (05c53h),hl		;1592	22 53 5c 	" S \ 
	pop bc			;1595	c1 	. 
	push bc			;1596	c5 	. 
	inc de			;1597	13 	. 
	ld hl,(05c61h)		;1598	2a 61 5c 	* a \ 
	dec hl			;159b	2b 	+ 
	dec hl			;159c	2b 	+ 
	lddr		;159d	ed b8 	. . 
	ld hl,(05c49h)		;159f	2a 49 5c 	* I \ 
	ex de,hl			;15a2	eb 	. 
	pop bc			;15a3	c1 	. 
	ld (hl),b			;15a4	70 	p 
	dec hl			;15a5	2b 	+ 
	ld (hl),c			;15a6	71 	q 
	dec hl			;15a7	2b 	+ 
	ld (hl),e			;15a8	73 	s 
	dec hl			;15a9	2b 	+ 
	ld (hl),d			;15aa	72 	r 
	pop af			;15ab	f1 	. 
	jp 012a2h		;15ac	c3 a2 12 	. . . 
	call p,0a809h		;15af	f4 09 a8 	. . . 
	djnz $+77		;15b2	10 4b 	. K 
	call p,0c409h		;15b4	f4 09 c4 	. . . 
	dec d			;15b7	15 	. 
	ld d,e			;15b8	53 	S 
	add a,c			;15b9	81 	. 
	rrca			;15ba	0f 	. 
	call nz,05215h		;15bb	c4 15 52 	. . R 
	call p,0c409h		;15be	f4 09 c4 	. . . 
	dec d			;15c1	15 	. 
	ld d,b			;15c2	50 	P 
	add a,b			;15c3	80 	. 
	rst 8			;15c4	cf 	. 
	ld (de),a			;15c5	12 	. 
	ld bc,00600h		;15c6	01 00 06 	. . . 
	nop			;15c9	00 	. 
	dec bc			;15ca	0b 	. 
	nop			;15cb	00 	. 
	ld bc,00100h		;15cc	01 00 01 	. . . 
	nop			;15cf	00 	. 
	ld b,000h		;15d0	06 00 	. . 
	djnz $+2		;15d2	10 00 	. . 
	bit 5,(iy+002h)		;15d4	fd cb 02 6e 	. . . n 
	jr nz,$+6		;15d8	20 04 	  . 
	set 3,(iy+002h)		;15da	fd cb 02 de 	. . . . 
	call 015e6h		;15de	cd e6 15 	. . . 
	ret c			;15e1	d8 	. 
	jr z,$-4		;15e2	28 fa 	( . 
	rst 8			;15e4	cf 	. 
	rlca			;15e5	07 	. 
	exx			;15e6	d9 	. 
	push hl			;15e7	e5 	. 
	ld hl,(05c51h)		;15e8	2a 51 5c 	* Q \ 
	inc hl			;15eb	23 	# 
	inc hl			;15ec	23 	# 
	jr $+10		;15ed	18 08 	. . 
	ld e,030h		;15ef	1e 30 	. 0 
	add a,e			;15f1	83 	. 
	exx			;15f2	d9 	. 
	push hl			;15f3	e5 	. 
	ld hl,(05c51h)		;15f4	2a 51 5c 	* Q \ 
	ld e,(hl)			;15f7	5e 	^ 
	inc hl			;15f8	23 	# 
	ld d,(hl)			;15f9	56 	V 
	ex de,hl			;15fa	eb 	. 
	call 0162ch		;15fb	cd 2c 16 	. , . 
	pop hl			;15fe	e1 	. 
	exx			;15ff	d9 	. 
	ret			;1600	c9 	. 
	add a,a			;1601	87 	. 
	add a,016h		;1602	c6 16 	. . 
	ld l,a			;1604	6f 	o 
	ld h,05ch		;1605	26 5c 	& \ 
	ld e,(hl)			;1607	5e 	^ 
	inc hl			;1608	23 	# 
	ld d,(hl)			;1609	56 	V 
	ld a,d			;160a	7a 	z 
	or e			;160b	b3 	. 
	jr nz,$+4		;160c	20 02 	  . 
	rst 8			;160e	cf 	. 
	rla			;160f	17 	. 
	dec de			;1610	1b 	. 
	ld hl,(05c4fh)		;1611	2a 4f 5c 	* O \ 
	add hl,de			;1614	19 	. 
	ld (05c51h),hl		;1615	22 51 5c 	" Q \ 
	res 4,(iy+030h)		;1618	fd cb 30 a6 	. . 0 . 
	inc hl			;161c	23 	# 
	inc hl			;161d	23 	# 
	inc hl			;161e	23 	# 
	inc hl			;161f	23 	# 
	ld c,(hl)			;1620	4e 	N 
	ld hl,0162dh		;1621	21 2d 16 	! - . 
	call 016dch		;1624	cd dc 16 	. . . 
	ret nc			;1627	d0 	. 
	ld d,000h		;1628	16 00 	. . 
	ld e,(hl)			;162a	5e 	^ 
	add hl,de			;162b	19 	. 
	jp (hl)			;162c	e9 	. 
	ld c,e			;162d	4b 	K 
	ld b,053h		;162e	06 53 	. S 
	ld (de),a			;1630	12 	. 
	ld d,b			;1631	50 	P 
	dec de			;1632	1b 	. 
	nop			;1633	00 	. 
	set 0,(iy+002h)		;1634	fd cb 02 c6 	. . . . 
	res 5,(iy+001h)		;1638	fd cb 01 ae 	. . . . 
	set 4,(iy+030h)		;163c	fd cb 30 e6 	. . 0 . 
	jr $+6		;1640	18 04 	. . 
	res 0,(iy+002h)		;1642	fd cb 02 86 	. . . . 
	res 1,(iy+001h)		;1646	fd cb 01 8e 	. . . . 
	jp 00d4dh		;164a	c3 4d 0d 	. M . 
	set 1,(iy+001h)		;164d	fd cb 01 ce 	. . . . 
	ret			;1651	c9 	. 
	ld bc,00001h		;1652	01 01 00 	. . . 
	push hl			;1655	e5 	. 
	call 01f05h		;1656	cd 05 1f 	. . . 
	pop hl			;1659	e1 	. 
	call 01664h		;165a	cd 64 16 	. d . 
	ld hl,(05c65h)		;165d	2a 65 5c 	* e \ 
	ex de,hl			;1660	eb 	. 
	lddr		;1661	ed b8 	. . 
	ret			;1663	c9 	. 
	push af			;1664	f5 	. 
	push hl			;1665	e5 	. 
	ld hl,05c4bh		;1666	21 4b 5c 	! K \ 
	ld a,00eh		;1669	3e 0e 	> . 
	ld e,(hl)			;166b	5e 	^ 
	inc hl			;166c	23 	# 
	ld d,(hl)			;166d	56 	V 
	ex (sp),hl			;166e	e3 	. 
	and a			;166f	a7 	. 
	sbc hl,de		;1670	ed 52 	. R 
	add hl,de			;1672	19 	. 
	ex (sp),hl			;1673	e3 	. 
	jr nc,$+11		;1674	30 09 	0 . 
	push de			;1676	d5 	. 
	ex de,hl			;1677	eb 	. 
	add hl,bc			;1678	09 	. 
	ex de,hl			;1679	eb 	. 
	ld (hl),d			;167a	72 	r 
	dec hl			;167b	2b 	+ 
	ld (hl),e			;167c	73 	s 
	inc hl			;167d	23 	# 
	pop de			;167e	d1 	. 
	inc hl			;167f	23 	# 
	dec a			;1680	3d 	= 
	jr nz,$-22		;1681	20 e8 	  . 
	ex de,hl			;1683	eb 	. 
	pop de			;1684	d1 	. 
	pop af			;1685	f1 	. 
	and a			;1686	a7 	. 
	sbc hl,de		;1687	ed 52 	. R 
	ld b,h			;1689	44 	D 
	ld c,l			;168a	4d 	M 
	inc bc			;168b	03 	. 
	add hl,de			;168c	19 	. 
	ex de,hl			;168d	eb 	. 
	ret			;168e	c9 	. 
	nop			;168f	00 	. 
	nop			;1690	00 	. 
	ex de,hl			;1691	eb 	. 
	ld de,0168fh		;1692	11 8f 16 	. . . 
	ld a,(hl)			;1695	7e 	~ 
	and 0c0h		;1696	e6 c0 	. . 
	jr nz,$-7		;1698	20 f7 	  . 
	ld d,(hl)			;169a	56 	V 
	inc hl			;169b	23 	# 
	ld e,(hl)			;169c	5e 	^ 
	ret			;169d	c9 	. 
	ld hl,(05c63h)		;169e	2a 63 5c 	* c \ 
	dec hl			;16a1	2b 	+ 
	call 01655h		;16a2	cd 55 16 	. U . 
	inc hl			;16a5	23 	# 
	inc hl			;16a6	23 	# 
	pop bc			;16a7	c1 	. 
	ld (05c61h),bc		;16a8	ed 43 61 5c 	. C a \ 
	pop bc			;16ac	c1 	. 
	ex de,hl			;16ad	eb 	. 
	inc hl			;16ae	23 	# 
	ret			;16af	c9 	. 
	ld hl,(05c59h)		;16b0	2a 59 5c 	* Y \ 
	ld (hl),00dh		;16b3	36 0d 	6 . 
	ld (05c5bh),hl		;16b5	22 5b 5c 	" [ \ 
	inc hl			;16b8	23 	# 
	ld (hl),080h		;16b9	36 80 	6 . 
	inc hl			;16bb	23 	# 
	ld (05c61h),hl		;16bc	22 61 5c 	" a \ 
	ld hl,(05c61h)		;16bf	2a 61 5c 	* a \ 
	ld (05c63h),hl		;16c2	22 63 5c 	" c \ 
	ld hl,(05c63h)		;16c5	2a 63 5c 	* c \ 
	ld (05c65h),hl		;16c8	22 65 5c 	" e \ 
	push hl			;16cb	e5 	. 
	ld hl,05c92h		;16cc	21 92 5c 	! . \ 
	ld (05c68h),hl		;16cf	22 68 5c 	" h \ 
	pop hl			;16d2	e1 	. 
	ret			;16d3	c9 	. 
	ld de,(05c59h)		;16d4	ed 5b 59 5c 	. [ Y \ 
	jp 019e5h		;16d8	c3 e5 19 	. . . 
	inc hl			;16db	23 	# 
	ld a,(hl)			;16dc	7e 	~ 
	and a			;16dd	a7 	. 
	ret z			;16de	c8 	. 
	cp c			;16df	b9 	. 
	inc hl			;16e0	23 	# 
	jr nz,$-6		;16e1	20 f8 	  . 
	scf			;16e3	37 	7 
	ret			;16e4	c9 	. 
	call 0171eh		;16e5	cd 1e 17 	. . . 
	call 01701h		;16e8	cd 01 17 	. . . 
	ld bc,00000h		;16eb	01 00 00 	. . . 
	ld de,0a3e2h		;16ee	11 e2 a3 	. . . 
	ex de,hl			;16f1	eb 	. 
	add hl,de			;16f2	19 	. 
	jr c,$+9		;16f3	38 07 	8 . 
	ld bc,015d4h		;16f5	01 d4 15 	. . . 
	add hl,bc			;16f8	09 	. 
	ld c,(hl)			;16f9	4e 	N 
	inc hl			;16fa	23 	# 
	ld b,(hl)			;16fb	46 	F 
	ex de,hl			;16fc	eb 	. 
	ld (hl),c			;16fd	71 	q 
	inc hl			;16fe	23 	# 
	ld (hl),b			;16ff	70 	p 
	ret			;1700	c9 	. 
	push hl			;1701	e5 	. 
	ld hl,(05c4fh)		;1702	2a 4f 5c 	* O \ 
	add hl,bc			;1705	09 	. 
	inc hl			;1706	23 	# 
	inc hl			;1707	23 	# 
	inc hl			;1708	23 	# 
	ld c,(hl)			;1709	4e 	N 
	ex de,hl			;170a	eb 	. 
	ld hl,01716h		;170b	21 16 17 	! . . 
	call 016dch		;170e	cd dc 16 	. . . 
	ld c,(hl)			;1711	4e 	N 
	ld b,000h		;1712	06 00 	. . 
	add hl,bc			;1714	09 	. 
	jp (hl)			;1715	e9 	. 
	ld c,e			;1716	4b 	K 
	dec b			;1717	05 	. 
	ld d,e			;1718	53 	S 
	inc bc			;1719	03 	. 
	ld d,b			;171a	50 	P 
	ld bc,0c9e1h		;171b	01 e1 c9 	. . . 
	call 01e94h		;171e	cd 94 1e 	. . . 
	cp 010h		;1721	fe 10 	. . 
	jr c,$+4		;1723	38 02 	8 . 
	rst 8			;1725	cf 	. 
	rla			;1726	17 	. 
	add a,003h		;1727	c6 03 	. . 
	rlca			;1729	07 	. 
	ld hl,05c10h		;172a	21 10 5c 	! . \ 
	ld c,a			;172d	4f 	O 
	ld b,000h		;172e	06 00 	. . 
	add hl,bc			;1730	09 	. 
	ld c,(hl)			;1731	4e 	N 
	inc hl			;1732	23 	# 
	ld b,(hl)			;1733	46 	F 
	dec hl			;1734	2b 	+ 
	ret			;1735	c9 	. 
	rst 28h			;1736	ef 	. 
	ld bc,0cd38h		;1737	01 38 cd 	. 8 . 
	ld e,017h		;173a	1e 17 	. . 
	ld a,b			;173c	78 	x 
	or c			;173d	b1 	. 
	jr z,$+24		;173e	28 16 	( . 
	ex de,hl			;1740	eb 	. 
	ld hl,(05c4fh)		;1741	2a 4f 5c 	* O \ 
	add hl,bc			;1744	09 	. 
	inc hl			;1745	23 	# 
	inc hl			;1746	23 	# 
	inc hl			;1747	23 	# 
	ld a,(hl)			;1748	7e 	~ 
	ex de,hl			;1749	eb 	. 
	cp 04bh		;174a	fe 4b 	. K 
	jr z,$+10		;174c	28 08 	( . 
	cp 053h		;174e	fe 53 	. S 
	jr z,$+6		;1750	28 04 	( . 
	cp 050h		;1752	fe 50 	. P 
	jr nz,$-47		;1754	20 cf 	  . 
	call 0175dh		;1756	cd 5d 17 	. ] . 
	ld (hl),e			;1759	73 	s 
	inc hl			;175a	23 	# 
	ld (hl),d			;175b	72 	r 
	ret			;175c	c9 	. 
	push hl			;175d	e5 	. 
	call 02bf1h		;175e	cd f1 2b 	. . + 
	ld a,b			;1761	78 	x 
	or c			;1762	b1 	. 
	jr nz,$+4		;1763	20 02 	  . 
	rst 8			;1765	cf 	. 
	ld c,0c5h		;1766	0e c5 	. . 
	ld a,(de)			;1768	1a 	. 
	and 0dfh		;1769	e6 df 	. . 
	ld c,a			;176b	4f 	O 
	ld hl,0177ah		;176c	21 7a 17 	! z . 
	call 016dch		;176f	cd dc 16 	. . . 
	jr nc,$-13		;1772	30 f1 	0 . 
	ld c,(hl)			;1774	4e 	N 
	ld b,000h		;1775	06 00 	. . 
	add hl,bc			;1777	09 	. 
	pop bc			;1778	c1 	. 
	jp (hl)			;1779	e9 	. 
	ld c,e			;177a	4b 	K 
	ld b,053h		;177b	06 53 	. S 
	ex af,af'			;177d	08 	. 
	ld d,b			;177e	50 	P 
	ld a,(bc)			;177f	0a 	. 
	nop			;1780	00 	. 
	ld e,001h		;1781	1e 01 	. . 
	jr $+8		;1783	18 06 	. . 
	ld e,006h		;1785	1e 06 	. . 
	jr $+4		;1787	18 02 	. . 
	ld e,010h		;1789	1e 10 	. . 
	dec bc			;178b	0b 	. 
	ld a,b			;178c	78 	x 
	or c			;178d	b1 	. 
	jr nz,$-41		;178e	20 d5 	  . 
	ld d,a			;1790	57 	W 
	pop hl			;1791	e1 	. 
	ret			;1792	c9 	. 
	jr $-110		;1793	18 90 	. . 
	ld (05c3fh),sp		;1795	ed 73 3f 5c 	. s ? \ 
	ld (iy+002h),010h		;1799	fd 36 02 10 	. 6 . . 
	call 00dafh		;179d	cd af 0d 	. . . 
	set 0,(iy+002h)		;17a0	fd cb 02 c6 	. . . . 
	ld b,(iy+031h)		;17a4	fd 46 31 	. F 1 
	call 00e44h		;17a7	cd 44 0e 	. D . 
	res 0,(iy+002h)		;17aa	fd cb 02 86 	. . . . 
	set 0,(iy+030h)		;17ae	fd cb 30 c6 	. . 0 . 
	ld hl,(05c49h)		;17b2	2a 49 5c 	* I \ 
	ld de,(05c6ch)		;17b5	ed 5b 6c 5c 	. [ l \ 
	and a			;17b9	a7 	. 
	sbc hl,de		;17ba	ed 52 	. R 
	add hl,de			;17bc	19 	. 
	jr c,$+36		;17bd	38 22 	8 " 
	push de			;17bf	d5 	. 
	call 0196eh		;17c0	cd 6e 19 	. n . 
	ld de,002c0h		;17c3	11 c0 02 	. . . 
	ex de,hl			;17c6	eb 	. 
	sbc hl,de		;17c7	ed 52 	. R 
	ex (sp),hl			;17c9	e3 	. 
	call 0196eh		;17ca	cd 6e 19 	. n . 
	pop bc			;17cd	c1 	. 
	push bc			;17ce	c5 	. 
	call 019b8h		;17cf	cd b8 19 	. . . 
	pop bc			;17d2	c1 	. 
	add hl,bc			;17d3	09 	. 
	jr c,$+16		;17d4	38 0e 	8 . 
	ex de,hl			;17d6	eb 	. 
	ld d,(hl)			;17d7	56 	V 
	inc hl			;17d8	23 	# 
	ld e,(hl)			;17d9	5e 	^ 
	dec hl			;17da	2b 	+ 
	ld (05c6ch),de		;17db	ed 53 6c 5c 	. S l \ 
	jr $-17		;17df	18 ed 	. . 
	ld (05c6ch),hl		;17e1	22 6c 5c 	" l \ 
	ld hl,(05c6ch)		;17e4	2a 6c 5c 	* l \ 
	call 0196eh		;17e7	cd 6e 19 	. n . 
	jr z,$+3		;17ea	28 01 	( . 
	ex de,hl			;17ec	eb 	. 
	call 01833h		;17ed	cd 33 18 	. 3 . 
	res 4,(iy+002h)		;17f0	fd cb 02 a6 	. . . . 
	ret			;17f4	c9 	. 
	ld a,003h		;17f5	3e 03 	> . 
	jr $+4		;17f7	18 02 	. . 
	ld a,002h		;17f9	3e 02 	> . 
	ld (iy+002h),000h		;17fb	fd 36 02 00 	. 6 . . 
	call 02530h		;17ff	cd 30 25 	. 0 % 
	call nz,01601h		;1802	c4 01 16 	. . . 
	rst 18h			;1805	df 	. 
	call 02070h		;1806	cd 70 20 	. p   
	jr c,$+22		;1809	38 14 	8 . 
	rst 18h			;180b	df 	. 
	cp 03bh		;180c	fe 3b 	. ; 
	jr z,$+6		;180e	28 04 	( . 
	cp 02ch		;1810	fe 2c 	. , 
	jr nz,$+8		;1812	20 06 	  . 
	rst 20h			;1814	e7 	. 
	call 01c82h		;1815	cd 82 1c 	. . . 
	jr $+10		;1818	18 08 	. . 
	call 01ce6h		;181a	cd e6 1c 	. . . 
	jr $+5		;181d	18 03 	. . 
	call 01cdeh		;181f	cd de 1c 	. . . 
	call 01beeh		;1822	cd ee 1b 	. . . 
	call 01e99h		;1825	cd 99 1e 	. . . 
	ld a,b			;1828	78 	x 
	and 03fh		;1829	e6 3f 	. ? 
	ld h,a			;182b	67 	g 
	ld l,c			;182c	69 	i 
	ld (05c49h),hl		;182d	22 49 5c 	" I \ 
	call 0196eh		;1830	cd 6e 19 	. n . 
	ld e,001h		;1833	1e 01 	. . 
	call 01855h		;1835	cd 55 18 	. U . 
	rst 10h			;1838	d7 	. 
	bit 4,(iy+002h)		;1839	fd cb 02 66 	. . . f 
	jr z,$-8		;183d	28 f6 	( . 
	ld a,(05c6bh)		;183f	3a 6b 5c 	: k \ 
	sub (iy+04fh)		;1842	fd 96 4f 	. . O 
	jr nz,$-16		;1845	20 ee 	  . 
	xor e			;1847	ab 	. 
	ret z			;1848	c8 	. 
	push hl			;1849	e5 	. 
	push de			;184a	d5 	. 
	ld hl,05c6ch		;184b	21 6c 5c 	! l \ 
	call 0190fh		;184e	cd 0f 19 	. . . 
	pop de			;1851	d1 	. 
	pop hl			;1852	e1 	. 
	jr $-30		;1853	18 e0 	. . 
	ld bc,(05c49h)		;1855	ed 4b 49 5c 	. K I \ 
	call 01980h		;1859	cd 80 19 	. . . 
	ld d,03eh		;185c	16 3e 	. > 
	jr z,$+7		;185e	28 05 	( . 
	ld de,00000h		;1860	11 00 00 	. . . 
	rl e		;1863	cb 13 	. . 
	ld (iy+02dh),e		;1865	fd 73 2d 	. s - 
	ld a,(hl)			;1868	7e 	~ 
	cp 040h		;1869	fe 40 	. @ 
	pop bc			;186b	c1 	. 
	ret nc			;186c	d0 	. 
	push bc			;186d	c5 	. 
	call 01a28h		;186e	cd 28 1a 	. ( . 
	inc hl			;1871	23 	# 
	inc hl			;1872	23 	# 
	inc hl			;1873	23 	# 
	res 0,(iy+001h)		;1874	fd cb 01 86 	. . . . 
	ld a,d			;1878	7a 	z 
	and a			;1879	a7 	. 
	jr z,$+7		;187a	28 05 	( . 
	rst 10h			;187c	d7 	. 
	set 0,(iy+001h)		;187d	fd cb 01 c6 	. . . . 
	push de			;1881	d5 	. 
	ex de,hl			;1882	eb 	. 
	res 2,(iy+030h)		;1883	fd cb 30 96 	. . 0 . 
	ld hl,05c3bh		;1887	21 3b 5c 	! ; \ 
	res 2,(hl)		;188a	cb 96 	. . 
	bit 5,(iy+037h)		;188c	fd cb 37 6e 	. . 7 n 
	jr z,$+4		;1890	28 02 	( . 
	set 2,(hl)		;1892	cb d6 	. . 
	ld hl,(05c5fh)		;1894	2a 5f 5c 	* _ \ 
	and a			;1897	a7 	. 
	sbc hl,de		;1898	ed 52 	. R 
	jr nz,$+7		;189a	20 05 	  . 
	ld a,03fh		;189c	3e 3f 	> ? 
	call 018c1h		;189e	cd c1 18 	. . . 
	call 018e1h		;18a1	cd e1 18 	. . . 
	ex de,hl			;18a4	eb 	. 
	ld a,(hl)			;18a5	7e 	~ 
	call 018b6h		;18a6	cd b6 18 	. . . 
	inc hl			;18a9	23 	# 
	cp 00dh		;18aa	fe 0d 	. . 
	jr z,$+8		;18ac	28 06 	( . 
	ex de,hl			;18ae	eb 	. 
	call 01937h		;18af	cd 37 19 	. 7 . 
	jr $-30		;18b2	18 e0 	. . 
	pop de			;18b4	d1 	. 
	ret			;18b5	c9 	. 
	cp 00eh		;18b6	fe 0e 	. . 
	ret nz			;18b8	c0 	. 
	inc hl			;18b9	23 	# 
	inc hl			;18ba	23 	# 
	inc hl			;18bb	23 	# 
	inc hl			;18bc	23 	# 
	inc hl			;18bd	23 	# 
	inc hl			;18be	23 	# 
	ld a,(hl)			;18bf	7e 	~ 
	ret			;18c0	c9 	. 
	exx			;18c1	d9 	. 
	ld hl,(05c8fh)		;18c2	2a 8f 5c 	* . \ 
	push hl			;18c5	e5 	. 
	res 7,h		;18c6	cb bc 	. . 
	set 7,l		;18c8	cb fd 	. . 
	ld (05c8fh),hl		;18ca	22 8f 5c 	" . \ 
	ld hl,05c91h		;18cd	21 91 5c 	! . \ 
	ld d,(hl)			;18d0	56 	V 
	push de			;18d1	d5 	. 
	ld (hl),000h		;18d2	36 00 	6 . 
	call 009f4h		;18d4	cd f4 09 	. . . 
	pop hl			;18d7	e1 	. 
	ld (iy+057h),h		;18d8	fd 74 57 	. t W 
	pop hl			;18db	e1 	. 
	ld (05c8fh),hl		;18dc	22 8f 5c 	" . \ 
	exx			;18df	d9 	. 
	ret			;18e0	c9 	. 
	ld hl,(05c5bh)		;18e1	2a 5b 5c 	* [ \ 
	and a			;18e4	a7 	. 
	sbc hl,de		;18e5	ed 52 	. R 
	ret nz			;18e7	c0 	. 
	ld a,(05c41h)		;18e8	3a 41 5c 	: A \ 
	rlc a		;18eb	cb 07 	. . 
	jr z,$+6		;18ed	28 04 	( . 
	add a,043h		;18ef	c6 43 	. C 
	jr $+24		;18f1	18 16 	. . 
	ld hl,05c3bh		;18f3	21 3b 5c 	! ; \ 
	res 3,(hl)		;18f6	cb 9e 	. . 
	ld a,04bh		;18f8	3e 4b 	> K 
	bit 2,(hl)		;18fa	cb 56 	. V 
	jr z,$+13		;18fc	28 0b 	( . 
	set 3,(hl)		;18fe	cb de 	. . 
	inc a			;1900	3c 	< 
	bit 3,(iy+030h)		;1901	fd cb 30 5e 	. . 0 ^ 
	jr z,$+4		;1905	28 02 	( . 
	ld a,043h		;1907	3e 43 	> C 
	push de			;1909	d5 	. 
	call 018c1h		;190a	cd c1 18 	. . . 
	pop de			;190d	d1 	. 
	ret			;190e	c9 	. 
	ld e,(hl)			;190f	5e 	^ 
	inc hl			;1910	23 	# 
	ld d,(hl)			;1911	56 	V 
	push hl			;1912	e5 	. 
	ex de,hl			;1913	eb 	. 
	inc hl			;1914	23 	# 
	call 0196eh		;1915	cd 6e 19 	. n . 
	call 01695h		;1918	cd 95 16 	. . . 
	pop hl			;191b	e1 	. 
	bit 5,(iy+037h)		;191c	fd cb 37 6e 	. . 7 n 
	ret nz			;1920	c0 	. 
	ld (hl),d			;1921	72 	r 
	dec hl			;1922	2b 	+ 
	ld (hl),e			;1923	73 	s 
	ret			;1924	c9 	. 
	ld a,e			;1925	7b 	{ 
	and a			;1926	a7 	. 
	ret m			;1927	f8 	. 
	jr $+15		;1928	18 0d 	. . 
	xor a			;192a	af 	. 
	add hl,bc			;192b	09 	. 
	inc a			;192c	3c 	< 
	jr c,$-2		;192d	38 fc 	8 . 
	sbc hl,bc		;192f	ed 42 	. B 
	dec a			;1931	3d 	= 
	jr z,$-13		;1932	28 f1 	( . 
	jp 015efh		;1934	c3 ef 15 	. . . 
	call 02d1bh		;1937	cd 1b 2d 	. . - 
	jr nc,$+50		;193a	30 30 	0 0 
	cp 021h		;193c	fe 21 	. ! 
	jr c,$+46		;193e	38 2c 	8 , 
	res 2,(iy+001h)		;1940	fd cb 01 96 	. . . . 
	cp 0cbh		;1944	fe cb 	. . 
	jr z,$+38		;1946	28 24 	( $ 
	cp 03ah		;1948	fe 3a 	. : 
	jr nz,$+16		;194a	20 0e 	  . 
	bit 5,(iy+037h)		;194c	fd cb 37 6e 	. . 7 n 
	jr nz,$+24		;1950	20 16 	  . 
	bit 2,(iy+030h)		;1952	fd cb 30 56 	. . 0 V 
	jr z,$+22		;1956	28 14 	( . 
	jr $+16		;1958	18 0e 	. . 
	cp 022h		;195a	fe 22 	. " 
	jr nz,$+12		;195c	20 0a 	  . 
	push af			;195e	f5 	. 
	ld a,(05c6ah)		;195f	3a 6a 5c 	: j \ 
	xor 004h		;1962	ee 04 	. . 
	ld (05c6ah),a		;1964	32 6a 5c 	2 j \ 
	pop af			;1967	f1 	. 
	set 2,(iy+001h)		;1968	fd cb 01 d6 	. . . . 
	rst 10h			;196c	d7 	. 
	ret			;196d	c9 	. 
	push hl			;196e	e5 	. 
	ld hl,(05c53h)		;196f	2a 53 5c 	* S \ 
	ld d,h			;1972	54 	T 
	ld e,l			;1973	5d 	] 
	pop bc			;1974	c1 	. 
	call 01980h		;1975	cd 80 19 	. . . 
	ret nc			;1978	d0 	. 
	push bc			;1979	c5 	. 
	call 019b8h		;197a	cd b8 19 	. . . 
	ex de,hl			;197d	eb 	. 
	jr $-10		;197e	18 f4 	. . 
	ld a,(hl)			;1980	7e 	~ 
	cp b			;1981	b8 	. 
	ret nz			;1982	c0 	. 
	inc hl			;1983	23 	# 
	ld a,(hl)			;1984	7e 	~ 
	dec hl			;1985	2b 	+ 
	cp c			;1986	b9 	. 
	ret			;1987	c9 	. 
	inc hl			;1988	23 	# 
	inc hl			;1989	23 	# 
	inc hl			;198a	23 	# 
	ld (05c5dh),hl		;198b	22 5d 5c 	" ] \ 
	ld c,000h		;198e	0e 00 	. . 
	dec d			;1990	15 	. 
	ret z			;1991	c8 	. 
	rst 20h			;1992	e7 	. 
	cp e			;1993	bb 	. 
	jr nz,$+6		;1994	20 04 	  . 
	and a			;1996	a7 	. 
	ret			;1997	c9 	. 
	inc hl			;1998	23 	# 
	ld a,(hl)			;1999	7e 	~ 
	call 018b6h		;199a	cd b6 18 	. . . 
	ld (05c5dh),hl		;199d	22 5d 5c 	" ] \ 
	cp 022h		;19a0	fe 22 	. " 
	jr nz,$+3		;19a2	20 01 	  . 
	dec c			;19a4	0d 	. 
	cp 03ah		;19a5	fe 3a 	. : 
	jr z,$+6		;19a7	28 04 	( . 
	cp 0cbh		;19a9	fe cb 	. . 
	jr nz,$+6		;19ab	20 04 	  . 
	bit 0,c		;19ad	cb 41 	. A 
	jr z,$-31		;19af	28 df 	( . 
	cp 00dh		;19b1	fe 0d 	. . 
	jr nz,$-27		;19b3	20 e3 	  . 
	dec d			;19b5	15 	. 
	scf			;19b6	37 	7 
	ret			;19b7	c9 	. 
	push hl			;19b8	e5 	. 
	ld a,(hl)			;19b9	7e 	~ 
	cp 040h		;19ba	fe 40 	. @ 
	jr c,$+25		;19bc	38 17 	8 . 
	bit 5,a		;19be	cb 6f 	. o 
	jr z,$+22		;19c0	28 14 	( . 
	add a,a			;19c2	87 	. 
	jp m,019c7h		;19c3	fa c7 19 	. . . 
	ccf			;19c6	3f 	? 
	ld bc,00005h		;19c7	01 05 00 	. . . 
	jr nc,$+4		;19ca	30 02 	0 . 
	ld c,012h		;19cc	0e 12 	. . 
	rla			;19ce	17 	. 
	inc hl			;19cf	23 	# 
	ld a,(hl)			;19d0	7e 	~ 
	jr nc,$-3		;19d1	30 fb 	0 . 
	jr $+8		;19d3	18 06 	. . 
	inc hl			;19d5	23 	# 
	inc hl			;19d6	23 	# 
	ld c,(hl)			;19d7	4e 	N 
	inc hl			;19d8	23 	# 
	ld b,(hl)			;19d9	46 	F 
	inc hl			;19da	23 	# 
	add hl,bc			;19db	09 	. 
	pop de			;19dc	d1 	. 
	and a			;19dd	a7 	. 
	sbc hl,de		;19de	ed 52 	. R 
	ld b,h			;19e0	44 	D 
	ld c,l			;19e1	4d 	M 
	add hl,de			;19e2	19 	. 
	ex de,hl			;19e3	eb 	. 
	ret			;19e4	c9 	. 
	call 019ddh		;19e5	cd dd 19 	. . . 
	push bc			;19e8	c5 	. 
	ld a,b			;19e9	78 	x 
	cpl			;19ea	2f 	/ 
	ld b,a			;19eb	47 	G 
	ld a,c			;19ec	79 	y 
	cpl			;19ed	2f 	/ 
	ld c,a			;19ee	4f 	O 
	inc bc			;19ef	03 	. 
	call 01664h		;19f0	cd 64 16 	. d . 
	ex de,hl			;19f3	eb 	. 
	pop hl			;19f4	e1 	. 
	add hl,de			;19f5	19 	. 
	push de			;19f6	d5 	. 
	ldir		;19f7	ed b0 	. . 
	pop hl			;19f9	e1 	. 
	ret			;19fa	c9 	. 
	ld hl,(05c59h)		;19fb	2a 59 5c 	* Y \ 
	dec hl			;19fe	2b 	+ 
	ld (05c5dh),hl		;19ff	22 5d 5c 	" ] \ 
	rst 20h			;1a02	e7 	. 
	ld hl,05c92h		;1a03	21 92 5c 	! . \ 
	ld (05c65h),hl		;1a06	22 65 5c 	" e \ 
	call 02d3bh		;1a09	cd 3b 2d 	. ; - 
	call 02da2h		;1a0c	cd a2 2d 	. . - 
	jr c,$+6		;1a0f	38 04 	8 . 
	ld hl,0d8f0h		;1a11	21 f0 d8 	! . . 
	add hl,bc			;1a14	09 	. 
	jp c,01c8ah		;1a15	da 8a 1c 	. . . 
	jp 016c5h		;1a18	c3 c5 16 	. . . 
	push de			;1a1b	d5 	. 
	push hl			;1a1c	e5 	. 
	xor a			;1a1d	af 	. 
	bit 7,b		;1a1e	cb 78 	. x 
	jr nz,$+34		;1a20	20 20 	    
	ld h,b			;1a22	60 	` 
	ld l,c			;1a23	69 	i 
	ld e,0ffh		;1a24	1e ff 	. . 
	jr $+10		;1a26	18 08 	. . 
	push de			;1a28	d5 	. 
	ld d,(hl)			;1a29	56 	V 
	inc hl			;1a2a	23 	# 
	ld e,(hl)			;1a2b	5e 	^ 
	push hl			;1a2c	e5 	. 
	ex de,hl			;1a2d	eb 	. 
	ld e,020h		;1a2e	1e 20 	.   
	ld bc,0fc18h		;1a30	01 18 fc 	. . . 
	call 0192ah		;1a33	cd 2a 19 	. * . 
	ld bc,0ff9ch		;1a36	01 9c ff 	. . . 
	call 0192ah		;1a39	cd 2a 19 	. * . 
	ld c,0f6h		;1a3c	0e f6 	. . 
	call 0192ah		;1a3e	cd 2a 19 	. * . 
	ld a,l			;1a41	7d 	} 
	call 015efh		;1a42	cd ef 15 	. . . 
	pop hl			;1a45	e1 	. 
	pop de			;1a46	d1 	. 
	ret			;1a47	c9 	. 
	or c			;1a48	b1 	. 
	res 7,h		;1a49	cb bc 	. . 
	cp a			;1a4b	bf 	. 
	call nz,0b4afh		;1a4c	c4 af b4 	. . . 
	sub e			;1a4f	93 	. 
	sub c			;1a50	91 	. 
	sub d			;1a51	92 	. 
	sub l			;1a52	95 	. 
	sbc a,b			;1a53	98 	. 
	sbc a,b			;1a54	98 	. 
	sbc a,b			;1a55	98 	. 
	sbc a,b			;1a56	98 	. 
	sbc a,b			;1a57	98 	. 
	sbc a,b			;1a58	98 	. 
	sbc a,b			;1a59	98 	. 
	ld a,a			;1a5a	7f 	 
	add a,c			;1a5b	81 	. 
	ld l,06ch		;1a5c	2e 6c 	. l 
	ld l,(hl)			;1a5e	6e 	n 
	ld (hl),b			;1a5f	70 	p 
	ld c,b			;1a60	48 	H 
	sub h			;1a61	94 	. 
	ld d,(hl)			;1a62	56 	V 
	ccf			;1a63	3f 	? 
	ld b,c			;1a64	41 	A 
	dec hl			;1a65	2b 	+ 
	rla			;1a66	17 	. 
	rra			;1a67	1f 	. 
	scf			;1a68	37 	7 
	ld (hl),a			;1a69	77 	w 
	ld b,h			;1a6a	44 	D 
	rrca			;1a6b	0f 	. 
	ld e,c			;1a6c	59 	Y 
	dec hl			;1a6d	2b 	+ 
	ld b,e			;1a6e	43 	C 
	dec l			;1a6f	2d 	- 
	ld d,c			;1a70	51 	Q 
	ld a,(0426dh)		;1a71	3a 6d 42 	: m B 
	dec c			;1a74	0d 	. 
	ld c,c			;1a75	49 	I 
	ld e,h			;1a76	5c 	\ 
	ld b,h			;1a77	44 	D 
	dec d			;1a78	15 	. 
	ld e,l			;1a79	5d 	] 
	ld bc,0023dh		;1a7a	01 3d 02 	. = . 
	ld b,000h		;1a7d	06 00 	. . 
	ld h,a			;1a7f	67 	g 
	ld e,006h		;1a80	1e 06 	. . 
	rlc l		;1a82	cb 05 	. . 
	ret p			;1a84	f0 	. 
	inc e			;1a85	1c 	. 
	ld b,000h		;1a86	06 00 	. . 
	defb 0edh;next byte illegal after ed		;1a88	ed 	. 
	ld e,000h		;1a89	1e 00 	. . 
	xor 01ch		;1a8b	ee 1c 	. . 
	nop			;1a8d	00 	. 
	inc hl			;1a8e	23 	# 
	rra			;1a8f	1f 	. 
	inc b			;1a90	04 	. 
	dec a			;1a91	3d 	= 
	ld b,0cch		;1a92	06 cc 	. . 
	ld b,005h		;1a94	06 05 	. . 
	inc bc			;1a96	03 	. 
	dec e			;1a97	1d 	. 
	inc b			;1a98	04 	. 
	nop			;1a99	00 	. 
	xor e			;1a9a	ab 	. 
	dec e			;1a9b	1d 	. 
	dec b			;1a9c	05 	. 
	call 0051fh		;1a9d	cd 1f 05 	. . . 
	adc a,c			;1aa0	89 	. 
	jr nz,$+7		;1aa1	20 05 	  . 
	ld (bc),a			;1aa3	02 	. 
	inc l			;1aa4	2c 	, 
	dec b			;1aa5	05 	. 
	or d			;1aa6	b2 	. 
	dec de			;1aa7	1b 	. 
	nop			;1aa8	00 	. 
	or a			;1aa9	b7 	. 
	ld de,0a103h		;1aaa	11 03 a1 	. . . 
	ld e,005h		;1aad	1e 05 	. . 
	ld sp,hl			;1aaf	f9 	. 
	rla			;1ab0	17 	. 
	ex af,af'			;1ab1	08 	. 
	nop			;1ab2	00 	. 
	add a,b			;1ab3	80 	. 
	ld e,003h		;1ab4	1e 03 	. . 
	ld c,a			;1ab6	4f 	O 
	ld e,000h		;1ab7	1e 00 	. . 
	ld e,a			;1ab9	5f 	_ 
	ld e,003h		;1aba	1e 03 	. . 
	xor h			;1abc	ac 	. 
	ld e,000h		;1abd	1e 00 	. . 
	ld l,e			;1abf	6b 	k 
	dec c			;1ac0	0d 	. 
	add hl,bc			;1ac1	09 	. 
	nop			;1ac2	00 	. 
	call c,00622h		;1ac3	dc 22 06 	. " . 
	nop			;1ac6	00 	. 
	ld a,(0051fh)		;1ac7	3a 1f 05 	: . . 
	defb 0edh;next byte illegal after ed		;1aca	ed 	. 
	dec e			;1acb	1d 	. 
	dec b			;1acc	05 	. 
	daa			;1acd	27 	' 
	ld e,003h		;1ace	1e 03 	. . 
	ld b,d			;1ad0	42 	B 
	ld e,009h		;1ad1	1e 09 	. . 
	dec b			;1ad3	05 	. 
	add a,d			;1ad4	82 	. 
	inc hl			;1ad5	23 	# 
	nop			;1ad6	00 	. 
	xor h			;1ad7	ac 	. 
	ld c,005h		;1ad8	0e 05 	. . 
	ret			;1ada	c9 	. 
	rra			;1adb	1f 	. 
	dec b			;1adc	05 	. 
	push af			;1add	f5 	. 
	rla			;1ade	17 	. 
	dec bc			;1adf	0b 	. 
	dec bc			;1ae0	0b 	. 
	dec bc			;1ae1	0b 	. 
	dec bc			;1ae2	0b 	. 
	ex af,af'			;1ae3	08 	. 
	nop			;1ae4	00 	. 
	ret m			;1ae5	f8 	. 
	inc bc			;1ae6	03 	. 
	add hl,bc			;1ae7	09 	. 
	dec b			;1ae8	05 	. 
	jr nz,$+37		;1ae9	20 23 	  # 
	rlca			;1aeb	07 	. 
	rlca			;1aec	07 	. 
	rlca			;1aed	07 	. 
	rlca			;1aee	07 	. 
	rlca			;1aef	07 	. 
	rlca			;1af0	07 	. 
	ex af,af'			;1af1	08 	. 
	nop			;1af2	00 	. 
	ld a,d			;1af3	7a 	z 
	ld e,006h		;1af4	1e 06 	. . 
	nop			;1af6	00 	. 
	sub h			;1af7	94 	. 
	ld (06005h),hl		;1af8	22 05 60 	" . ` 
	rra			;1afb	1f 	. 
	ld b,02ch		;1afc	06 2c 	. , 
	ld a,(bc)			;1afe	0a 	. 
	nop			;1aff	00 	. 
	ld (hl),017h		;1b00	36 17 	6 . 
	ld b,000h		;1b02	06 00 	. . 
	push hl			;1b04	e5 	. 
	ld d,00ah		;1b05	16 0a 	. . 
	nop			;1b07	00 	. 
	sub e			;1b08	93 	. 
	rla			;1b09	17 	. 
	ld a,(bc)			;1b0a	0a 	. 
	inc l			;1b0b	2c 	, 
	ld a,(bc)			;1b0c	0a 	. 
	nop			;1b0d	00 	. 
	sub e			;1b0e	93 	. 
	rla			;1b0f	17 	. 
	ld a,(bc)			;1b10	0a 	. 
	nop			;1b11	00 	. 
	sub e			;1b12	93 	. 
	rla			;1b13	17 	. 
	nop			;1b14	00 	. 
	sub e			;1b15	93 	. 
	rla			;1b16	17 	. 
	res 7,(iy+001h)		;1b17	fd cb 01 be 	. . . . 
	call 019fbh		;1b1b	cd fb 19 	. . . 
	xor a			;1b1e	af 	. 
	ld (05c47h),a		;1b1f	32 47 5c 	2 G \ 
	dec a			;1b22	3d 	= 
	ld (05c3ah),a		;1b23	32 3a 5c 	2 : \ 
	jr $+3		;1b26	18 01 	. . 
	rst 20h			;1b28	e7 	. 
	call 016bfh		;1b29	cd bf 16 	. . . 
	inc (iy+00dh)		;1b2c	fd 34 0d 	. 4 . 
	jp m,01c8ah		;1b2f	fa 8a 1c 	. . . 
	rst 18h			;1b32	df 	. 
	ld b,000h		;1b33	06 00 	. . 
	cp 00dh		;1b35	fe 0d 	. . 
	jr z,$+124		;1b37	28 7a 	( z 
	cp 03ah		;1b39	fe 3a 	. : 
	jr z,$-19		;1b3b	28 eb 	( . 
	ld hl,01b76h		;1b3d	21 76 1b 	! v . 
	push hl			;1b40	e5 	. 
	ld c,a			;1b41	4f 	O 
	rst 20h			;1b42	e7 	. 
	ld a,c			;1b43	79 	y 
	sub 0ceh		;1b44	d6 ce 	. . 
	jp c,01c8ah		;1b46	da 8a 1c 	. . . 
	ld c,a			;1b49	4f 	O 
	ld hl,01a48h		;1b4a	21 48 1a 	! H . 
	add hl,bc			;1b4d	09 	. 
	ld c,(hl)			;1b4e	4e 	N 
	add hl,bc			;1b4f	09 	. 
	jr $+5		;1b50	18 03 	. . 
	ld hl,(05c74h)		;1b52	2a 74 5c 	* t \ 
	ld a,(hl)			;1b55	7e 	~ 
	inc hl			;1b56	23 	# 
	ld (05c74h),hl		;1b57	22 74 5c 	" t \ 
	ld bc,01b52h		;1b5a	01 52 1b 	. R . 
	push bc			;1b5d	c5 	. 
	ld c,a			;1b5e	4f 	O 
	cp 020h		;1b5f	fe 20 	.   
	jr nc,$+14		;1b61	30 0c 	0 . 
	ld hl,01c01h		;1b63	21 01 1c 	! . . 
	ld b,000h		;1b66	06 00 	. . 
	add hl,bc			;1b68	09 	. 
	ld c,(hl)			;1b69	4e 	N 
	add hl,bc			;1b6a	09 	. 
	push hl			;1b6b	e5 	. 
	rst 18h			;1b6c	df 	. 
	dec b			;1b6d	05 	. 
	ret			;1b6e	c9 	. 
	rst 18h			;1b6f	df 	. 
	cp c			;1b70	b9 	. 
	jp nz,01c8ah		;1b71	c2 8a 1c 	. . . 
	rst 20h			;1b74	e7 	. 
	ret			;1b75	c9 	. 
	call 01f54h		;1b76	cd 54 1f 	. T . 
	jr c,$+4		;1b79	38 02 	8 . 
	rst 8			;1b7b	cf 	. 
	inc d			;1b7c	14 	. 
	bit 7,(iy+00ah)		;1b7d	fd cb 0a 7e 	. . . ~ 
	jr nz,$+115		;1b81	20 71 	  q 
	ld hl,(05c42h)		;1b83	2a 42 5c 	* B \ 
	bit 7,h		;1b86	cb 7c 	. | 
	jr z,$+22		;1b88	28 14 	( . 
	ld hl,0fffeh		;1b8a	21 fe ff 	! . . 
	ld (05c45h),hl		;1b8d	22 45 5c 	" E \ 
	ld hl,(05c61h)		;1b90	2a 61 5c 	* a \ 
	dec hl			;1b93	2b 	+ 
	ld de,(05c59h)		;1b94	ed 5b 59 5c 	. [ Y \ 
	dec de			;1b98	1b 	. 
	ld a,(05c44h)		;1b99	3a 44 5c 	: D \ 
	jr $+53		;1b9c	18 33 	. 3 
	call 0196eh		;1b9e	cd 6e 19 	. n . 
	ld a,(05c44h)		;1ba1	3a 44 5c 	: D \ 
	jr z,$+27		;1ba4	28 19 	( . 
	and a			;1ba6	a7 	. 
	jr nz,$+69		;1ba7	20 43 	  C 
	ld b,a			;1ba9	47 	G 
	ld a,(hl)			;1baa	7e 	~ 
	and 0c0h		;1bab	e6 c0 	. . 
	ld a,b			;1bad	78 	x 
	jr z,$+17		;1bae	28 0f 	( . 
	rst 8			;1bb0	cf 	. 
	rst 38h			;1bb1	ff 	. 
	pop bc			;1bb2	c1 	. 
	call 02530h		;1bb3	cd 30 25 	. 0 % 
	ret z			;1bb6	c8 	. 
	ld hl,(05c55h)		;1bb7	2a 55 5c 	* U \ 
	ld a,0c0h		;1bba	3e c0 	> . 
	and (hl)			;1bbc	a6 	. 
	ret nz			;1bbd	c0 	. 
	xor a			;1bbe	af 	. 
	cp 001h		;1bbf	fe 01 	. . 
	adc a,000h		;1bc1	ce 00 	. . 
	ld d,(hl)			;1bc3	56 	V 
	inc hl			;1bc4	23 	# 
	ld e,(hl)			;1bc5	5e 	^ 
	ld (05c45h),de		;1bc6	ed 53 45 5c 	. S E \ 
	inc hl			;1bca	23 	# 
	ld e,(hl)			;1bcb	5e 	^ 
	inc hl			;1bcc	23 	# 
	ld d,(hl)			;1bcd	56 	V 
	ex de,hl			;1bce	eb 	. 
	add hl,de			;1bcf	19 	. 
	inc hl			;1bd0	23 	# 
	ld (05c55h),hl		;1bd1	22 55 5c 	" U \ 
	ex de,hl			;1bd4	eb 	. 
	ld (05c5dh),hl		;1bd5	22 5d 5c 	" ] \ 
	ld d,a			;1bd8	57 	W 
	ld e,000h		;1bd9	1e 00 	. . 
	ld (iy+00ah),0ffh		;1bdb	fd 36 0a ff 	. 6 . . 
	dec d			;1bdf	15 	. 
	ld (iy+00dh),d		;1be0	fd 72 0d 	. r . 
	jp z,01b28h		;1be3	ca 28 1b 	. ( . 
	inc d			;1be6	14 	. 
	call 0198bh		;1be7	cd 8b 19 	. . . 
	jr z,$+10		;1bea	28 08 	( . 
	rst 8			;1bec	cf 	. 
	ld d,0cdh		;1bed	16 cd 	. . 
	jr nc,$+39		;1bef	30 25 	0 % 
	ret nz			;1bf1	c0 	. 
	pop bc			;1bf2	c1 	. 
	pop bc			;1bf3	c1 	. 
	rst 18h			;1bf4	df 	. 
	cp 00dh		;1bf5	fe 0d 	. . 
	jr z,$-68		;1bf7	28 ba 	( . 
	cp 03ah		;1bf9	fe 3a 	. : 
	jp z,01b28h		;1bfb	ca 28 1b 	. ( . 
	jp 01c8ah		;1bfe	c3 8a 1c 	. . . 
	rrca			;1c01	0f 	. 
	dec e			;1c02	1d 	. 
	ld c,e			;1c03	4b 	K 
	add hl,bc			;1c04	09 	. 
	ld h,a			;1c05	67 	g 
	dec bc			;1c06	0b 	. 
	ld a,e			;1c07	7b 	{ 
	adc a,(hl)			;1c08	8e 	. 
	ld (hl),c			;1c09	71 	q 
	or h			;1c0a	b4 	. 
	add a,c			;1c0b	81 	. 
	rst 8			;1c0c	cf 	. 
	call 01cdeh		;1c0d	cd de 1c 	. . . 
	cp a			;1c10	bf 	. 
	pop bc			;1c11	c1 	. 
	call z,01beeh		;1c12	cc ee 1b 	. . . 
	ex de,hl			;1c15	eb 	. 
	ld hl,(05c74h)		;1c16	2a 74 5c 	* t \ 
	ld c,(hl)			;1c19	4e 	N 
	inc hl			;1c1a	23 	# 
	ld b,(hl)			;1c1b	46 	F 
	ex de,hl			;1c1c	eb 	. 
	push bc			;1c1d	c5 	. 
	ret			;1c1e	c9 	. 
	call 028b2h		;1c1f	cd b2 28 	. . ( 
	ld (iy+037h),000h		;1c22	fd 36 37 00 	. 6 7 . 
	jr nc,$+10		;1c26	30 08 	0 . 
	set 1,(iy+037h)		;1c28	fd cb 37 ce 	. . 7 . 
	jr nz,$+26		;1c2c	20 18 	  . 
	rst 8			;1c2e	cf 	. 
	ld bc,096cch		;1c2f	01 cc 96 	. . . 
	add hl,hl			;1c32	29 	) 
	bit 6,(iy+001h)		;1c33	fd cb 01 76 	. . . v 
	jr nz,$+15		;1c37	20 0d 	  . 
	xor a			;1c39	af 	. 
	call 02530h		;1c3a	cd 30 25 	. 0 % 
	call nz,02bf1h		;1c3d	c4 f1 2b 	. . + 
	ld hl,05c71h		;1c40	21 71 5c 	! q \ 
	or (hl)			;1c43	b6 	. 
	ld (hl),a			;1c44	77 	w 
	ex de,hl			;1c45	eb 	. 
	ld (05c72h),bc		;1c46	ed 43 72 5c 	. C r \ 
	ld (05c4dh),hl		;1c4a	22 4d 5c 	" M \ 
	ret			;1c4d	c9 	. 
	pop bc			;1c4e	c1 	. 
	call 01c56h		;1c4f	cd 56 1c 	. V . 
	call 01beeh		;1c52	cd ee 1b 	. . . 
	ret			;1c55	c9 	. 
	ld a,(05c3bh)		;1c56	3a 3b 5c 	: ; \ 
	push af			;1c59	f5 	. 
	call 024fbh		;1c5a	cd fb 24 	. . $ 
	pop af			;1c5d	f1 	. 
	ld d,(iy+001h)		;1c5e	fd 56 01 	. V . 
	xor d			;1c61	aa 	. 
	and 040h		;1c62	e6 40 	. @ 
	jr nz,$+38		;1c64	20 24 	  $ 
	bit 7,d		;1c66	cb 7a 	. z 
	jp nz,02affh		;1c68	c2 ff 2a 	. . * 
	ret			;1c6b	c9 	. 
	call 028b2h		;1c6c	cd b2 28 	. . ( 
	push af			;1c6f	f5 	. 
	ld a,c			;1c70	79 	y 
	or 09fh		;1c71	f6 9f 	. . 
	inc a			;1c73	3c 	< 
	jr nz,$+22		;1c74	20 14 	  . 
	pop af			;1c76	f1 	. 
	jr $-85		;1c77	18 a9 	. . 
	rst 20h			;1c79	e7 	. 
	call 01c82h		;1c7a	cd 82 1c 	. . . 
	cp 02ch		;1c7d	fe 2c 	. , 
	jr nz,$+11		;1c7f	20 09 	  . 
	rst 20h			;1c81	e7 	. 
	call 024fbh		;1c82	cd fb 24 	. . $ 
	bit 6,(iy+001h)		;1c85	fd cb 01 76 	. . . v 
	ret nz			;1c89	c0 	. 
	rst 8			;1c8a	cf 	. 
	dec bc			;1c8b	0b 	. 
	call 024fbh		;1c8c	cd fb 24 	. . $ 
	bit 6,(iy+001h)		;1c8f	fd cb 01 76 	. . . v 
	ret z			;1c93	c8 	. 
	jr $-10		;1c94	18 f4 	. . 
	bit 7,(iy+001h)		;1c96	fd cb 01 7e 	. . . ~ 
	res 0,(iy+002h)		;1c9a	fd cb 02 86 	. . . . 
	call nz,00d4dh		;1c9e	c4 4d 0d 	. M . 
	pop af			;1ca1	f1 	. 
	ld a,(05c74h)		;1ca2	3a 74 5c 	: t \ 
	sub 013h		;1ca5	d6 13 	. . 
	call 021fch		;1ca7	cd fc 21 	. . ! 
	call 01beeh		;1caa	cd ee 1b 	. . . 
	ld hl,(05c8fh)		;1cad	2a 8f 5c 	* . \ 
	ld (05c8dh),hl		;1cb0	22 8d 5c 	" . \ 
	ld hl,05c91h		;1cb3	21 91 5c 	! . \ 
	ld a,(hl)			;1cb6	7e 	~ 
	rlca			;1cb7	07 	. 
	xor (hl)			;1cb8	ae 	. 
	and 0aah		;1cb9	e6 aa 	. . 
	xor (hl)			;1cbb	ae 	. 
	ld (hl),a			;1cbc	77 	w 
	ret			;1cbd	c9 	. 
	call 02530h		;1cbe	cd 30 25 	. 0 % 
	jr z,$+21		;1cc1	28 13 	( . 
	res 0,(iy+002h)		;1cc3	fd cb 02 86 	. . . . 
	call 00d4dh		;1cc7	cd 4d 0d 	. M . 
	ld hl,05c90h		;1cca	21 90 5c 	! . \ 
	ld a,(hl)			;1ccd	7e 	~ 
	or 0f8h		;1cce	f6 f8 	. . 
	ld (hl),a			;1cd0	77 	w 
	res 6,(iy+057h)		;1cd1	fd cb 57 b6 	. . W . 
	rst 18h			;1cd5	df 	. 
	call 021e2h		;1cd6	cd e2 21 	. . ! 
	jr $-95		;1cd9	18 9f 	. . 
	jp 00605h		;1cdb	c3 05 06 	. . . 
	cp 00dh		;1cde	fe 0d 	. . 
	jr z,$+6		;1ce0	28 04 	( . 
	cp 03ah		;1ce2	fe 3a 	. : 
	jr nz,$-98		;1ce4	20 9c 	  . 
	call 02530h		;1ce6	cd 30 25 	. 0 % 
	ret z			;1ce9	c8 	. 
	rst 28h			;1cea	ef 	. 
	and b			;1ceb	a0 	. 
	jr c,$-53		;1cec	38 c9 	8 . 
	rst 8			;1cee	cf 	. 
	ex af,af'			;1cef	08 	. 
	pop bc			;1cf0	c1 	. 
	call 02530h		;1cf1	cd 30 25 	. 0 % 
	jr z,$+12		;1cf4	28 0a 	( . 
	rst 28h			;1cf6	ef 	. 
	ld (bc),a			;1cf7	02 	. 
	jr c,$-19		;1cf8	38 eb 	8 . 
	call 034e9h		;1cfa	cd e9 34 	. . 4 
	jp c,01bb3h		;1cfd	da b3 1b 	. . . 
	jp 01b29h		;1d00	c3 29 1b 	. ) . 
	cp 0cdh		;1d03	fe cd 	. . 
	jr nz,$+11		;1d05	20 09 	  . 
	rst 20h			;1d07	e7 	. 
	call 01c82h		;1d08	cd 82 1c 	. . . 
	call 01beeh		;1d0b	cd ee 1b 	. . . 
	jr $+8		;1d0e	18 06 	. . 
	call 01beeh		;1d10	cd ee 1b 	. . . 
	rst 28h			;1d13	ef 	. 
	and c			;1d14	a1 	. 
	jr c,$-15		;1d15	38 ef 	8 . 
	ret nz			;1d17	c0 	. 
	ld (bc),a			;1d18	02 	. 
	ld bc,001e0h		;1d19	01 e0 01 	. . . 
	jr c,$-49		;1d1c	38 cd 	8 . 
	rst 38h			;1d1e	ff 	. 
	ld hl,(06822h)		;1d1f	2a 22 68 	* " h 
	ld e,h			;1d22	5c 	\ 
	dec hl			;1d23	2b 	+ 
	ld a,(hl)			;1d24	7e 	~ 
	set 7,(hl)		;1d25	cb fe 	. . 
	ld bc,00006h		;1d27	01 06 00 	. . . 
	add hl,bc			;1d2a	09 	. 
	rlca			;1d2b	07 	. 
	jr c,$+8		;1d2c	38 06 	8 . 
	ld c,00dh		;1d2e	0e 0d 	. . 
	call 01655h		;1d30	cd 55 16 	. U . 
	inc hl			;1d33	23 	# 
	push hl			;1d34	e5 	. 
	rst 28h			;1d35	ef 	. 
	ld (bc),a			;1d36	02 	. 
	ld (bc),a			;1d37	02 	. 
	jr c,$-29		;1d38	38 e1 	8 . 
	ex de,hl			;1d3a	eb 	. 
	ld c,00ah		;1d3b	0e 0a 	. . 
	ldir		;1d3d	ed b0 	. . 
	ld hl,(05c45h)		;1d3f	2a 45 5c 	* E \ 
	ex de,hl			;1d42	eb 	. 
	ld (hl),e			;1d43	73 	s 
	inc hl			;1d44	23 	# 
	ld (hl),d			;1d45	72 	r 
	ld d,(iy+00dh)		;1d46	fd 56 0d 	. V . 
	inc d			;1d49	14 	. 
	inc hl			;1d4a	23 	# 
	ld (hl),d			;1d4b	72 	r 
	call 01ddah		;1d4c	cd da 1d 	. . . 
	ret nc			;1d4f	d0 	. 
	ld b,(iy+038h)		;1d50	fd 46 38 	. F 8 
	ld hl,(05c45h)		;1d53	2a 45 5c 	* E \ 
	ld (05c42h),hl		;1d56	22 42 5c 	" B \ 
	ld a,(05c47h)		;1d59	3a 47 5c 	: G \ 
	neg		;1d5c	ed 44 	. D 
	ld d,a			;1d5e	57 	W 
	ld hl,(05c5dh)		;1d5f	2a 5d 5c 	* ] \ 
	ld e,0f3h		;1d62	1e f3 	. . 
	push bc			;1d64	c5 	. 
	ld bc,(05c55h)		;1d65	ed 4b 55 5c 	. K U \ 
	call 01d86h		;1d69	cd 86 1d 	. . . 
	ld (05c55h),bc		;1d6c	ed 43 55 5c 	. C U \ 
	pop bc			;1d70	c1 	. 
	jr c,$+19		;1d71	38 11 	8 . 
	rst 20h			;1d73	e7 	. 
	or 020h		;1d74	f6 20 	.   
	cp b			;1d76	b8 	. 
	jr z,$+5		;1d77	28 03 	( . 
	rst 20h			;1d79	e7 	. 
	jr $-22		;1d7a	18 e8 	. . 
	rst 20h			;1d7c	e7 	. 
	ld a,001h		;1d7d	3e 01 	> . 
	sub d			;1d7f	92 	. 
	ld (05c44h),a		;1d80	32 44 5c 	2 D \ 
	ret			;1d83	c9 	. 
	rst 8			;1d84	cf 	. 
	ld de,0fe7eh		;1d85	11 7e fe 	. ~ . 
	ld a,(01828h)		;1d88	3a 28 18 	: ( . 
	inc hl			;1d8b	23 	# 
	ld a,(hl)			;1d8c	7e 	~ 
	and 0c0h		;1d8d	e6 c0 	. . 
	scf			;1d8f	37 	7 
	ret nz			;1d90	c0 	. 
	ld b,(hl)			;1d91	46 	F 
	inc hl			;1d92	23 	# 
	ld c,(hl)			;1d93	4e 	N 
	ld (05c42h),bc		;1d94	ed 43 42 5c 	. C B \ 
	inc hl			;1d98	23 	# 
	ld c,(hl)			;1d99	4e 	N 
	inc hl			;1d9a	23 	# 
	ld b,(hl)			;1d9b	46 	F 
	push hl			;1d9c	e5 	. 
	add hl,bc			;1d9d	09 	. 
	ld b,h			;1d9e	44 	D 
	ld c,l			;1d9f	4d 	M 
	pop hl			;1da0	e1 	. 
	ld d,000h		;1da1	16 00 	. . 
	push bc			;1da3	c5 	. 
	call 0198bh		;1da4	cd 8b 19 	. . . 
	pop bc			;1da7	c1 	. 
	ret nc			;1da8	d0 	. 
	jr $-30		;1da9	18 e0 	. . 
	bit 1,(iy+037h)		;1dab	fd cb 37 4e 	. . 7 N 
	jp nz,01c2eh		;1daf	c2 2e 1c 	. . . 
	ld hl,(05c4dh)		;1db2	2a 4d 5c 	* M \ 
	bit 7,(hl)		;1db5	cb 7e 	. ~ 
	jr z,$+33		;1db7	28 1f 	( . 
	inc hl			;1db9	23 	# 
	ld (05c68h),hl		;1dba	22 68 5c 	" h \ 
	rst 28h			;1dbd	ef 	. 
	ret po			;1dbe	e0 	. 
	jp po,0c00fh		;1dbf	e2 0f c0 	. . . 
	ld (bc),a			;1dc2	02 	. 
	jr c,$-49		;1dc3	38 cd 	8 . 
	jp c,0d81dh		;1dc5	da 1d d8 	. . . 
	ld hl,(05c68h)		;1dc8	2a 68 5c 	* h \ 
	ld de,0000fh		;1dcb	11 0f 00 	. . . 
	add hl,de			;1dce	19 	. 
	ld e,(hl)			;1dcf	5e 	^ 
	inc hl			;1dd0	23 	# 
	ld d,(hl)			;1dd1	56 	V 
	inc hl			;1dd2	23 	# 
	ld h,(hl)			;1dd3	66 	f 
	ex de,hl			;1dd4	eb 	. 
	jp 01e73h		;1dd5	c3 73 1e 	. s . 
	rst 8			;1dd8	cf 	. 
	nop			;1dd9	00 	. 
	rst 28h			;1dda	ef 	. 
	pop hl			;1ddb	e1 	. 
	ret po			;1ddc	e0 	. 
	jp po,00036h		;1ddd	e2 36 00 	. 6 . 
	ld (bc),a			;1de0	02 	. 
	ld bc,03703h		;1de1	01 03 37 	. . 7 
	nop			;1de4	00 	. 
	inc b			;1de5	04 	. 
	jr c,$-87		;1de6	38 a7 	8 . 
	ret			;1de8	c9 	. 
	jr c,$+57		;1de9	38 37 	8 7 
	ret			;1deb	c9 	. 
	rst 20h			;1dec	e7 	. 
	call 01c1fh		;1ded	cd 1f 1c 	. . . 
	call 02530h		;1df0	cd 30 25 	. 0 % 
	jr z,$+43		;1df3	28 29 	( ) 
	rst 18h			;1df5	df 	. 
	ld (05c5fh),hl		;1df6	22 5f 5c 	" _ \ 
	ld hl,(05c57h)		;1df9	2a 57 5c 	* W \ 
	ld a,(hl)			;1dfc	7e 	~ 
	cp 02ch		;1dfd	fe 2c 	. , 
	jr z,$+11		;1dff	28 09 	( . 
	ld e,0e4h		;1e01	1e e4 	. . 
	call 01d86h		;1e03	cd 86 1d 	. . . 
	jr nc,$+4		;1e06	30 02 	0 . 
	rst 8			;1e08	cf 	. 
	dec c			;1e09	0d 	. 
	call 00077h		;1e0a	cd 77 00 	. w . 
	call 01c56h		;1e0d	cd 56 1c 	. V . 
	rst 18h			;1e10	df 	. 
	ld (05c57h),hl		;1e11	22 57 5c 	" W \ 
	ld hl,(05c5fh)		;1e14	2a 5f 5c 	* _ \ 
	ld (iy+026h),000h		;1e17	fd 36 26 00 	. 6 & . 
	call 00078h		;1e1b	cd 78 00 	. x . 
	rst 18h			;1e1e	df 	. 
	cp 02ch		;1e1f	fe 2c 	. , 
	jr z,$-53		;1e21	28 c9 	( . 
	call 01beeh		;1e23	cd ee 1b 	. . . 
	ret			;1e26	c9 	. 
	call 02530h		;1e27	cd 30 25 	. 0 % 
	jr nz,$+13		;1e2a	20 0b 	  . 
	call 024fbh		;1e2c	cd fb 24 	. . $ 
	cp 02ch		;1e2f	fe 2c 	. , 
	call nz,01beeh		;1e31	c4 ee 1b 	. . . 
	rst 20h			;1e34	e7 	. 
	jr $-9		;1e35	18 f5 	. . 
	ld a,0e4h		;1e37	3e e4 	> . 
	ld b,a			;1e39	47 	G 
	cpdr		;1e3a	ed b9 	. . 
	ld de,00200h		;1e3c	11 00 02 	. . . 
	jp 0198bh		;1e3f	c3 8b 19 	. . . 
	call 01e99h		;1e42	cd 99 1e 	. . . 
	ld h,b			;1e45	60 	` 
	ld l,c			;1e46	69 	i 
	call 0196eh		;1e47	cd 6e 19 	. n . 
	dec hl			;1e4a	2b 	+ 
	ld (05c57h),hl		;1e4b	22 57 5c 	" W \ 
	ret			;1e4e	c9 	. 
	call 01e99h		;1e4f	cd 99 1e 	. . . 
	ld a,b			;1e52	78 	x 
	or c			;1e53	b1 	. 
	jr nz,$+6		;1e54	20 04 	  . 
	ld bc,(05c78h)		;1e56	ed 4b 78 5c 	. K x \ 
	ld (05c76h),bc		;1e5a	ed 43 76 5c 	. C v \ 
	ret			;1e5e	c9 	. 
	ld hl,(05c6eh)		;1e5f	2a 6e 5c 	* n \ 
	ld d,(iy+036h)		;1e62	fd 56 36 	. V 6 
	jr $+14		;1e65	18 0c 	. . 
	call 01e99h		;1e67	cd 99 1e 	. . . 
	ld h,b			;1e6a	60 	` 
	ld l,c			;1e6b	69 	i 
	ld d,000h		;1e6c	16 00 	. . 
	ld a,h			;1e6e	7c 	| 
	cp 0f0h		;1e6f	fe f0 	. . 
	jr nc,$+46		;1e71	30 2c 	0 , 
	ld (05c42h),hl		;1e73	22 42 5c 	" B \ 
	ld (iy+00ah),d		;1e76	fd 72 0a 	. r . 
	ret			;1e79	c9 	. 
	call 01e85h		;1e7a	cd 85 1e 	. . . 
	out (c),a		;1e7d	ed 79 	. y 
	ret			;1e7f	c9 	. 
	call 01e85h		;1e80	cd 85 1e 	. . . 
	ld (bc),a			;1e83	02 	. 
	ret			;1e84	c9 	. 
	call 02dd5h		;1e85	cd d5 2d 	. . - 
	jr c,$+23		;1e88	38 15 	8 . 
	jr z,$+4		;1e8a	28 02 	( . 
	neg		;1e8c	ed 44 	. D 
	push af			;1e8e	f5 	. 
	call 01e99h		;1e8f	cd 99 1e 	. . . 
	pop af			;1e92	f1 	. 
	ret			;1e93	c9 	. 
	call 02dd5h		;1e94	cd d5 2d 	. . - 
	jr $+5		;1e97	18 03 	. . 
	call 02da2h		;1e99	cd a2 2d 	. . - 
	jr c,$+3		;1e9c	38 01 	8 . 
	ret z			;1e9e	c8 	. 
	rst 8			;1e9f	cf 	. 
	ld a,(bc)			;1ea0	0a 	. 
	call 01e67h		;1ea1	cd 67 1e 	. g . 
	ld bc,00000h		;1ea4	01 00 00 	. . . 
	call 01e45h		;1ea7	cd 45 1e 	. E . 
	jr $+5		;1eaa	18 03 	. . 
	call 01e99h		;1eac	cd 99 1e 	. . . 
	ld a,b			;1eaf	78 	x 
	or c			;1eb0	b1 	. 
	jr nz,$+6		;1eb1	20 04 	  . 
	ld bc,(05cb2h)		;1eb3	ed 4b b2 5c 	. K . \ 
	push bc			;1eb7	c5 	. 
	ld de,(05c4bh)		;1eb8	ed 5b 4b 5c 	. [ K \ 
	ld hl,(05c59h)		;1ebc	2a 59 5c 	* Y \ 
	dec hl			;1ebf	2b 	+ 
	call 019e5h		;1ec0	cd e5 19 	. . . 
	call 00d6bh		;1ec3	cd 6b 0d 	. k . 
	ld hl,(05c65h)		;1ec6	2a 65 5c 	* e \ 
	ld de,00032h		;1ec9	11 32 00 	. 2 . 
	add hl,de			;1ecc	19 	. 
	pop de			;1ecd	d1 	. 
	sbc hl,de		;1ece	ed 52 	. R 
	jr nc,$+10		;1ed0	30 08 	0 . 
	ld hl,(05cb4h)		;1ed2	2a b4 5c 	* . \ 
	and a			;1ed5	a7 	. 
	sbc hl,de		;1ed6	ed 52 	. R 
	jr nc,$+4		;1ed8	30 02 	0 . 
	rst 8			;1eda	cf 	. 
	dec d			;1edb	15 	. 
	ex de,hl			;1edc	eb 	. 
	ld (05cb2h),hl		;1edd	22 b2 5c 	" . \ 
	pop de			;1ee0	d1 	. 
	pop bc			;1ee1	c1 	. 
	ld (hl),03eh		;1ee2	36 3e 	6 > 
	dec hl			;1ee4	2b 	+ 
	ld sp,hl			;1ee5	f9 	. 
	push bc			;1ee6	c5 	. 
	ld (05c3dh),sp		;1ee7	ed 73 3d 5c 	. s = \ 
	ex de,hl			;1eeb	eb 	. 
	jp (hl)			;1eec	e9 	. 
	pop de			;1eed	d1 	. 
	ld h,(iy+00dh)		;1eee	fd 66 0d 	. f . 
	inc h			;1ef1	24 	$ 
	ex (sp),hl			;1ef2	e3 	. 
	inc sp			;1ef3	33 	3 
	ld bc,(05c45h)		;1ef4	ed 4b 45 5c 	. K E \ 
	push bc			;1ef8	c5 	. 
	push hl			;1ef9	e5 	. 
	ld (05c3dh),sp		;1efa	ed 73 3d 5c 	. s = \ 
	push de			;1efe	d5 	. 
	call 01e67h		;1eff	cd 67 1e 	. g . 
	ld bc,00014h		;1f02	01 14 00 	. . . 
	ld hl,(05c65h)		;1f05	2a 65 5c 	* e \ 
	add hl,bc			;1f08	09 	. 
	jr c,$+12		;1f09	38 0a 	8 . 
	ex de,hl			;1f0b	eb 	. 
	ld hl,00050h		;1f0c	21 50 00 	! P . 
	add hl,de			;1f0f	19 	. 
	jr c,$+5		;1f10	38 03 	8 . 
	sbc hl,sp		;1f12	ed 72 	. r 
	ret c			;1f14	d8 	. 
	ld l,003h		;1f15	2e 03 	. . 
	jp 00055h		;1f17	c3 55 00 	. U . 
	ld bc,00000h		;1f1a	01 00 00 	. . . 
	call 01f05h		;1f1d	cd 05 1f 	. . . 
	ld b,h			;1f20	44 	D 
	ld c,l			;1f21	4d 	M 
	ret			;1f22	c9 	. 
	pop bc			;1f23	c1 	. 
	pop hl			;1f24	e1 	. 
	pop de			;1f25	d1 	. 
	ld a,d			;1f26	7a 	z 
	cp 03eh		;1f27	fe 3e 	. > 
	jr z,$+13		;1f29	28 0b 	( . 
	dec sp			;1f2b	3b 	; 
	ex (sp),hl			;1f2c	e3 	. 
	ex de,hl			;1f2d	eb 	. 
	ld (05c3dh),sp		;1f2e	ed 73 3d 5c 	. s = \ 
	push bc			;1f32	c5 	. 
	jp 01e73h		;1f33	c3 73 1e 	. s . 
	push de			;1f36	d5 	. 
	push hl			;1f37	e5 	. 
	rst 8			;1f38	cf 	. 
	ld b,0cdh		;1f39	06 cd 	. . 
	sbc a,c			;1f3b	99 	. 
	ld e,076h		;1f3c	1e 76 	. v 
	dec bc			;1f3e	0b 	. 
	ld a,b			;1f3f	78 	x 
	or c			;1f40	b1 	. 
	jr z,$+14		;1f41	28 0c 	( . 
	ld a,b			;1f43	78 	x 
	and c			;1f44	a1 	. 
	inc a			;1f45	3c 	< 
	jr nz,$+3		;1f46	20 01 	  . 
	inc bc			;1f48	03 	. 
	bit 5,(iy+001h)		;1f49	fd cb 01 6e 	. . . n 
	jr z,$-16		;1f4d	28 ee 	( . 
	res 5,(iy+001h)		;1f4f	fd cb 01 ae 	. . . . 
	ret			;1f53	c9 	. 
	ld a,07fh		;1f54	3e 7f 	>  
	in a,(0feh)		;1f56	db fe 	. . 
	rra			;1f58	1f 	. 
	ret c			;1f59	d8 	. 
	ld a,0feh		;1f5a	3e fe 	> . 
	in a,(0feh)		;1f5c	db fe 	. . 
	rra			;1f5e	1f 	. 
	ret			;1f5f	c9 	. 
	call 02530h		;1f60	cd 30 25 	. 0 % 
	jr z,$+7		;1f63	28 05 	( . 
	ld a,0ceh		;1f65	3e ce 	> . 
	jp 01e39h		;1f67	c3 39 1e 	. 9 . 
	set 6,(iy+001h)		;1f6a	fd cb 01 f6 	. . . . 
	call 02c8dh		;1f6e	cd 8d 2c 	. . , 
	jr nc,$+24		;1f71	30 16 	0 . 
	rst 20h			;1f73	e7 	. 
	cp 024h		;1f74	fe 24 	. $ 
	jr nz,$+7		;1f76	20 05 	  . 
	res 6,(iy+001h)		;1f78	fd cb 01 b6 	. . . . 
	rst 20h			;1f7c	e7 	. 
	cp 028h		;1f7d	fe 28 	. ( 
	jr nz,$+62		;1f7f	20 3c 	  < 
	rst 20h			;1f81	e7 	. 
	cp 029h		;1f82	fe 29 	. ) 
	jr z,$+34		;1f84	28 20 	(   
	call 02c8dh		;1f86	cd 8d 2c 	. . , 
	jp nc,01c8ah		;1f89	d2 8a 1c 	. . . 
	ex de,hl			;1f8c	eb 	. 
	rst 20h			;1f8d	e7 	. 
	cp 024h		;1f8e	fe 24 	. $ 
	jr nz,$+4		;1f90	20 02 	  . 
	ex de,hl			;1f92	eb 	. 
	rst 20h			;1f93	e7 	. 
	ex de,hl			;1f94	eb 	. 
	ld bc,00006h		;1f95	01 06 00 	. . . 
	call 01655h		;1f98	cd 55 16 	. U . 
	inc hl			;1f9b	23 	# 
	inc hl			;1f9c	23 	# 
	ld (hl),00eh		;1f9d	36 0e 	6 . 
	cp 02ch		;1f9f	fe 2c 	. , 
	jr nz,$+5		;1fa1	20 03 	  . 
	rst 20h			;1fa3	e7 	. 
	jr $-30		;1fa4	18 e0 	. . 
	cp 029h		;1fa6	fe 29 	. ) 
	jr nz,$+21		;1fa8	20 13 	  . 
	rst 20h			;1faa	e7 	. 
	cp 03dh		;1fab	fe 3d 	. = 
	jr nz,$+16		;1fad	20 0e 	  . 
	rst 20h			;1faf	e7 	. 
	ld a,(05c3bh)		;1fb0	3a 3b 5c 	: ; \ 
	push af			;1fb3	f5 	. 
	call 024fbh		;1fb4	cd fb 24 	. . $ 
	pop af			;1fb7	f1 	. 
	xor (iy+001h)		;1fb8	fd ae 01 	. . . 
	and 040h		;1fbb	e6 40 	. @ 
	jp nz,01c8ah		;1fbd	c2 8a 1c 	. . . 
	call 01beeh		;1fc0	cd ee 1b 	. . . 
	call 02530h		;1fc3	cd 30 25 	. 0 % 
	pop hl			;1fc6	e1 	. 
	ret z			;1fc7	c8 	. 
	jp (hl)			;1fc8	e9 	. 
	ld a,003h		;1fc9	3e 03 	> . 
	jr $+4		;1fcb	18 02 	. . 
	ld a,002h		;1fcd	3e 02 	> . 
	call 02530h		;1fcf	cd 30 25 	. 0 % 
	call nz,01601h		;1fd2	c4 01 16 	. . . 
	call 00d4dh		;1fd5	cd 4d 0d 	. M . 
	call 01fdfh		;1fd8	cd df 1f 	. . . 
	call 01beeh		;1fdb	cd ee 1b 	. . . 
	ret			;1fde	c9 	. 
	rst 18h			;1fdf	df 	. 
	call 02045h		;1fe0	cd 45 20 	. E   
	jr z,$+15		;1fe3	28 0d 	( . 
	call 0204eh		;1fe5	cd 4e 20 	. N   
	jr z,$-3		;1fe8	28 fb 	( . 
	call 01ffch		;1fea	cd fc 1f 	. . . 
	call 0204eh		;1fed	cd 4e 20 	. N   
	jr z,$-11		;1ff0	28 f3 	( . 
	cp 029h		;1ff2	fe 29 	. ) 
	ret z			;1ff4	c8 	. 
	call 01fc3h		;1ff5	cd c3 1f 	. . . 
	ld a,00dh		;1ff8	3e 0d 	> . 
	rst 10h			;1ffa	d7 	. 
	ret			;1ffb	c9 	. 
	rst 18h			;1ffc	df 	. 
	cp 0ach		;1ffd	fe ac 	. . 
	jr nz,$+15		;1fff	20 0d 	  . 
	call 01c79h		;2001	cd 79 1c 	. y . 
	call 01fc3h		;2004	cd c3 1f 	. . . 
	call 02307h		;2007	cd 07 23 	. . # 
	ld a,016h		;200a	3e 16 	> . 
	jr $+18		;200c	18 10 	. . 
	cp 0adh		;200e	fe ad 	. . 
	jr nz,$+20		;2010	20 12 	  . 
	rst 20h			;2012	e7 	. 
	call 01c82h		;2013	cd 82 1c 	. . . 
	call 01fc3h		;2016	cd c3 1f 	. . . 
	call 01e99h		;2019	cd 99 1e 	. . . 
	ld a,017h		;201c	3e 17 	> . 
	rst 10h			;201e	d7 	. 
	ld a,c			;201f	79 	y 
	rst 10h			;2020	d7 	. 
	ld a,b			;2021	78 	x 
	rst 10h			;2022	d7 	. 
	ret			;2023	c9 	. 
	call 021f2h		;2024	cd f2 21 	. . ! 
	ret nc			;2027	d0 	. 
	call 02070h		;2028	cd 70 20 	. p   
	ret nc			;202b	d0 	. 
	call 024fbh		;202c	cd fb 24 	. . $ 
	call 01fc3h		;202f	cd c3 1f 	. . . 
	bit 6,(iy+001h)		;2032	fd cb 01 76 	. . . v 
	call z,02bf1h		;2036	cc f1 2b 	. . + 
	jp nz,02de3h		;2039	c2 e3 2d 	. . - 
	ld a,b			;203c	78 	x 
	or c			;203d	b1 	. 
	dec bc			;203e	0b 	. 
	ret z			;203f	c8 	. 
	ld a,(de)			;2040	1a 	. 
	inc de			;2041	13 	. 
	rst 10h			;2042	d7 	. 
	jr $-7		;2043	18 f7 	. . 
	cp 029h		;2045	fe 29 	. ) 
	ret z			;2047	c8 	. 
	cp 00dh		;2048	fe 0d 	. . 
	ret z			;204a	c8 	. 
	cp 03ah		;204b	fe 3a 	. : 
	ret			;204d	c9 	. 
	rst 18h			;204e	df 	. 
	cp 03bh		;204f	fe 3b 	. ; 
	jr z,$+22		;2051	28 14 	( . 
	cp 02ch		;2053	fe 2c 	. , 
	jr nz,$+12		;2055	20 0a 	  . 
	call 02530h		;2057	cd 30 25 	. 0 % 
	jr z,$+13		;205a	28 0b 	( . 
	ld a,006h		;205c	3e 06 	> . 
	rst 10h			;205e	d7 	. 
	jr $+8		;205f	18 06 	. . 
	cp 027h		;2061	fe 27 	. ' 
	ret nz			;2063	c0 	. 
	call 01ff5h		;2064	cd f5 1f 	. . . 
	rst 20h			;2067	e7 	. 
	call 02045h		;2068	cd 45 20 	. E   
	jr nz,$+3		;206b	20 01 	  . 
	pop bc			;206d	c1 	. 
	cp a			;206e	bf 	. 
	ret			;206f	c9 	. 
	cp 023h		;2070	fe 23 	. # 
	scf			;2072	37 	7 
	ret nz			;2073	c0 	. 
	rst 20h			;2074	e7 	. 
	call 01c82h		;2075	cd 82 1c 	. . . 
	and a			;2078	a7 	. 
	call 01fc3h		;2079	cd c3 1f 	. . . 
	call 01e94h		;207c	cd 94 1e 	. . . 
	cp 010h		;207f	fe 10 	. . 
	jp nc,0160eh		;2081	d2 0e 16 	. . . 
	call 01601h		;2084	cd 01 16 	. . . 
	and a			;2087	a7 	. 
	ret			;2088	c9 	. 
	call 02530h		;2089	cd 30 25 	. 0 % 
	jr z,$+10		;208c	28 08 	( . 
	ld a,001h		;208e	3e 01 	> . 
	call 01601h		;2090	cd 01 16 	. . . 
	call 00d6eh		;2093	cd 6e 0d 	. n . 
	ld (iy+002h),001h		;2096	fd 36 02 01 	. 6 . . 
	call 020c1h		;209a	cd c1 20 	. .   
	call 01beeh		;209d	cd ee 1b 	. . . 
	ld bc,(05c88h)		;20a0	ed 4b 88 5c 	. K . \ 
	ld a,(05c6bh)		;20a4	3a 6b 5c 	: k \ 
	cp b			;20a7	b8 	. 
	jr c,$+5		;20a8	38 03 	8 . 
	ld c,021h		;20aa	0e 21 	. ! 
	ld b,a			;20ac	47 	G 
	ld (05c88h),bc		;20ad	ed 43 88 5c 	. C . \ 
	ld a,019h		;20b1	3e 19 	> . 
	sub b			;20b3	90 	. 
	ld (05c8ch),a		;20b4	32 8c 5c 	2 . \ 
	res 0,(iy+002h)		;20b7	fd cb 02 86 	. . . . 
	call 00dd9h		;20bb	cd d9 0d 	. . . 
	jp 00d6eh		;20be	c3 6e 0d 	. n . 
	call 0204eh		;20c1	cd 4e 20 	. N   
	jr z,$-3		;20c4	28 fb 	( . 
	cp 028h		;20c6	fe 28 	. ( 
	jr nz,$+16		;20c8	20 0e 	  . 
	rst 20h			;20ca	e7 	. 
	call 01fdfh		;20cb	cd df 1f 	. . . 
	rst 18h			;20ce	df 	. 
	cp 029h		;20cf	fe 29 	. ) 
	jp nz,01c8ah		;20d1	c2 8a 1c 	. . . 
	rst 20h			;20d4	e7 	. 
	jp 021b2h		;20d5	c3 b2 21 	. . ! 
	cp 0cah		;20d8	fe ca 	. . 
	jr nz,$+19		;20da	20 11 	  . 
	rst 20h			;20dc	e7 	. 
	call 01c1fh		;20dd	cd 1f 1c 	. . . 
	set 7,(iy+037h)		;20e0	fd cb 37 fe 	. . 7 . 
	bit 6,(iy+001h)		;20e4	fd cb 01 76 	. . . v 
	jp nz,01c8ah		;20e8	c2 8a 1c 	. . . 
	jr $+15		;20eb	18 0d 	. . 
	call 02c8dh		;20ed	cd 8d 2c 	. . , 
	jp nc,021afh		;20f0	d2 af 21 	. . ! 
	call 01c1fh		;20f3	cd 1f 1c 	. . . 
	res 7,(iy+037h)		;20f6	fd cb 37 be 	. . 7 . 
	call 02530h		;20fa	cd 30 25 	. 0 % 
	jp z,021b2h		;20fd	ca b2 21 	. . ! 
	call 016bfh		;2100	cd bf 16 	. . . 
	ld hl,05c71h		;2103	21 71 5c 	! q \ 
	res 6,(hl)		;2106	cb b6 	. . 
	set 5,(hl)		;2108	cb ee 	. . 
	ld bc,00001h		;210a	01 01 00 	. . . 
	bit 7,(hl)		;210d	cb 7e 	. ~ 
	jr nz,$+13		;210f	20 0b 	  . 
	ld a,(05c3bh)		;2111	3a 3b 5c 	: ; \ 
	and 040h		;2114	e6 40 	. @ 
	jr nz,$+4		;2116	20 02 	  . 
	ld c,003h		;2118	0e 03 	. . 
	or (hl)			;211a	b6 	. 
	ld (hl),a			;211b	77 	w 
	rst 30h			;211c	f7 	. 
	ld (hl),00dh		;211d	36 0d 	6 . 
	ld a,c			;211f	79 	y 
	rrca			;2120	0f 	. 
	rrca			;2121	0f 	. 
	jr nc,$+7		;2122	30 05 	0 . 
	ld a,022h		;2124	3e 22 	> " 
	ld (de),a			;2126	12 	. 
	dec hl			;2127	2b 	+ 
	ld (hl),a			;2128	77 	w 
	ld (05c5bh),hl		;2129	22 5b 5c 	" [ \ 
	bit 7,(iy+037h)		;212c	fd cb 37 7e 	. . 7 ~ 
	jr nz,$+46		;2130	20 2c 	  , 
	ld hl,(05c5dh)		;2132	2a 5d 5c 	* ] \ 
	push hl			;2135	e5 	. 
	ld hl,(05c3dh)		;2136	2a 3d 5c 	* = \ 
	push hl			;2139	e5 	. 
	ld hl,0213ah		;213a	21 3a 21 	! : ! 
	push hl			;213d	e5 	. 
	bit 4,(iy+030h)		;213e	fd cb 30 66 	. . 0 f 
	jr z,$+6		;2142	28 04 	( . 
	ld (05c3dh),sp		;2144	ed 73 3d 5c 	. s = \ 
	ld hl,(05c61h)		;2148	2a 61 5c 	* a \ 
	call 011a7h		;214b	cd a7 11 	. . . 
	ld (iy+000h),0ffh		;214e	fd 36 00 ff 	. 6 . . 
	call 00f2ch		;2152	cd 2c 0f 	. , . 
	res 7,(iy+001h)		;2155	fd cb 01 be 	. . . . 
	call 021b9h		;2159	cd b9 21 	. . ! 
	jr $+5		;215c	18 03 	. . 
	call 00f2ch		;215e	cd 2c 0f 	. , . 
	ld (iy+022h),000h		;2161	fd 36 22 00 	. 6 " . 
	call 021d6h		;2165	cd d6 21 	. . ! 
	jr nz,$+12		;2168	20 0a 	  . 
	call 0111dh		;216a	cd 1d 11 	. . . 
	ld bc,(05c82h)		;216d	ed 4b 82 5c 	. K . \ 
	call 00dd9h		;2171	cd d9 0d 	. . . 
	ld hl,05c71h		;2174	21 71 5c 	! q \ 
	res 5,(hl)		;2177	cb ae 	. . 
	bit 7,(hl)		;2179	cb 7e 	. ~ 
	res 7,(hl)		;217b	cb be 	. . 
	jr nz,$+30		;217d	20 1c 	  . 
	pop hl			;217f	e1 	. 
	pop hl			;2180	e1 	. 
	ld (05c3dh),hl		;2181	22 3d 5c 	" = \ 
	pop hl			;2184	e1 	. 
	ld (05c5fh),hl		;2185	22 5f 5c 	" _ \ 
	set 7,(iy+001h)		;2188	fd cb 01 fe 	. . . . 
	call 021b9h		;218c	cd b9 21 	. . ! 
	ld hl,(05c5fh)		;218f	2a 5f 5c 	* _ \ 
	ld (iy+026h),000h		;2192	fd 36 26 00 	. 6 & . 
	ld (05c5dh),hl		;2196	22 5d 5c 	" ] \ 
	jr $+25		;2199	18 17 	. . 
	ld hl,(05c63h)		;219b	2a 63 5c 	* c \ 
	ld de,(05c61h)		;219e	ed 5b 61 5c 	. [ a \ 
	scf			;21a2	37 	7 
	sbc hl,de		;21a3	ed 52 	. R 
	ld b,h			;21a5	44 	D 
	ld c,l			;21a6	4d 	M 
	call 02ab2h		;21a7	cd b2 2a 	. . * 
	call 02affh		;21aa	cd ff 2a 	. . * 
	jr $+5		;21ad	18 03 	. . 
	call 01ffch		;21af	cd fc 1f 	. . . 
	call 0204eh		;21b2	cd 4e 20 	. N   
	jp z,020c1h		;21b5	ca c1 20 	. .   
	ret			;21b8	c9 	. 
	ld hl,(05c61h)		;21b9	2a 61 5c 	* a \ 
	ld (05c5dh),hl		;21bc	22 5d 5c 	" ] \ 
	rst 18h			;21bf	df 	. 
	cp 0e2h		;21c0	fe e2 	. . 
	jr z,$+14		;21c2	28 0c 	( . 
	ld a,(05c71h)		;21c4	3a 71 5c 	: q \ 
	call 01c59h		;21c7	cd 59 1c 	. Y . 
	rst 18h			;21ca	df 	. 
	cp 00dh		;21cb	fe 0d 	. . 
	ret z			;21cd	c8 	. 
	rst 8			;21ce	cf 	. 
	dec bc			;21cf	0b 	. 
	call 02530h		;21d0	cd 30 25 	. 0 % 
	ret z			;21d3	c8 	. 
	rst 8			;21d4	cf 	. 
	djnz $+44		;21d5	10 2a 	. * 
	ld d,c			;21d7	51 	Q 
	ld e,h			;21d8	5c 	\ 
	inc hl			;21d9	23 	# 
	inc hl			;21da	23 	# 
	inc hl			;21db	23 	# 
	inc hl			;21dc	23 	# 
	ld a,(hl)			;21dd	7e 	~ 
	cp 04bh		;21de	fe 4b 	. K 
	ret			;21e0	c9 	. 
	rst 20h			;21e1	e7 	. 
	call 021f2h		;21e2	cd f2 21 	. . ! 
	ret c			;21e5	d8 	. 
	rst 18h			;21e6	df 	. 
	cp 02ch		;21e7	fe 2c 	. , 
	jr z,$-8		;21e9	28 f6 	( . 
	cp 03bh		;21eb	fe 3b 	. ; 
	jr z,$-12		;21ed	28 f2 	( . 
	jp 01c8ah		;21ef	c3 8a 1c 	. . . 
	cp 0d9h		;21f2	fe d9 	. . 
	ret c			;21f4	d8 	. 
	cp 0dfh		;21f5	fe df 	. . 
	ccf			;21f7	3f 	? 
	ret c			;21f8	d8 	. 
	push af			;21f9	f5 	. 
	rst 20h			;21fa	e7 	. 
	pop af			;21fb	f1 	. 
	sub 0c9h		;21fc	d6 c9 	. . 
	push af			;21fe	f5 	. 
	call 01c82h		;21ff	cd 82 1c 	. . . 
	pop af			;2202	f1 	. 
	and a			;2203	a7 	. 
	call 01fc3h		;2204	cd c3 1f 	. . . 
	push af			;2207	f5 	. 
	call 01e94h		;2208	cd 94 1e 	. . . 
	ld d,a			;220b	57 	W 
	pop af			;220c	f1 	. 
	rst 10h			;220d	d7 	. 
	ld a,d			;220e	7a 	z 
	rst 10h			;220f	d7 	. 
	ret			;2210	c9 	. 
	sub 011h		;2211	d6 11 	. . 
	adc a,000h		;2213	ce 00 	. . 
	jr z,$+31		;2215	28 1d 	( . 
	sub 002h		;2217	d6 02 	. . 
	adc a,000h		;2219	ce 00 	. . 
	jr z,$+88		;221b	28 56 	( V 
	cp 001h		;221d	fe 01 	. . 
	ld a,d			;221f	7a 	z 
	ld b,001h		;2220	06 01 	. . 
	jr nz,$+6		;2222	20 04 	  . 
	rlca			;2224	07 	. 
	rlca			;2225	07 	. 
	ld b,004h		;2226	06 04 	. . 
	ld c,a			;2228	4f 	O 
	ld a,d			;2229	7a 	z 
	cp 002h		;222a	fe 02 	. . 
	jr nc,$+24		;222c	30 16 	0 . 
	ld a,c			;222e	79 	y 
	ld hl,05c91h		;222f	21 91 5c 	! . \ 
	jr $+58		;2232	18 38 	. 8 
	ld a,d			;2234	7a 	z 
	ld b,007h		;2235	06 07 	. . 
	jr c,$+7		;2237	38 05 	8 . 
	rlca			;2239	07 	. 
	rlca			;223a	07 	. 
	rlca			;223b	07 	. 
	ld b,038h		;223c	06 38 	. 8 
	ld c,a			;223e	4f 	O 
	ld a,d			;223f	7a 	z 
	cp 00ah		;2240	fe 0a 	. . 
	jr c,$+4		;2242	38 02 	8 . 
	rst 8			;2244	cf 	. 
	inc de			;2245	13 	. 
	ld hl,05c8fh		;2246	21 8f 5c 	! . \ 
	cp 008h		;2249	fe 08 	. . 
	jr c,$+13		;224b	38 0b 	8 . 
	ld a,(hl)			;224d	7e 	~ 
	jr z,$+9		;224e	28 07 	( . 
	or b			;2250	b0 	. 
	cpl			;2251	2f 	/ 
	and 024h		;2252	e6 24 	. $ 
	jr z,$+3		;2254	28 01 	( . 
	ld a,b			;2256	78 	x 
	ld c,a			;2257	4f 	O 
	ld a,c			;2258	79 	y 
	call 0226ch		;2259	cd 6c 22 	. l " 
	ld a,007h		;225c	3e 07 	> . 
	cp d			;225e	ba 	. 
	sbc a,a			;225f	9f 	. 
	call 0226ch		;2260	cd 6c 22 	. l " 
	rlca			;2263	07 	. 
	rlca			;2264	07 	. 
	and 050h		;2265	e6 50 	. P 
	ld b,a			;2267	47 	G 
	ld a,008h		;2268	3e 08 	> . 
	cp d			;226a	ba 	. 
	sbc a,a			;226b	9f 	. 
	xor (hl)			;226c	ae 	. 
	and b			;226d	a0 	. 
	xor (hl)			;226e	ae 	. 
	ld (hl),a			;226f	77 	w 
	inc hl			;2270	23 	# 
	ld a,b			;2271	78 	x 
	ret			;2272	c9 	. 
	sbc a,a			;2273	9f 	. 
	ld a,d			;2274	7a 	z 
	rrca			;2275	0f 	. 
	ld b,080h		;2276	06 80 	. . 
	jr nz,$+5		;2278	20 03 	  . 
	rrca			;227a	0f 	. 
	ld b,040h		;227b	06 40 	. @ 
	ld c,a			;227d	4f 	O 
	ld a,d			;227e	7a 	z 
	cp 008h		;227f	fe 08 	. . 
	jr z,$+6		;2281	28 04 	( . 
	cp 002h		;2283	fe 02 	. . 
	jr nc,$-65		;2285	30 bd 	0 . 
	ld a,c			;2287	79 	y 
	ld hl,05c8fh		;2288	21 8f 5c 	! . \ 
	call 0226ch		;228b	cd 6c 22 	. l " 
	ld a,c			;228e	79 	y 
	rrca			;228f	0f 	. 
	rrca			;2290	0f 	. 
	rrca			;2291	0f 	. 
	jr $-38		;2292	18 d8 	. . 
	call 01e94h		;2294	cd 94 1e 	. . . 
	cp 008h		;2297	fe 08 	. . 
	jr nc,$-85		;2299	30 a9 	0 . 
	out (0feh),a		;229b	d3 fe 	. . 
	rlca			;229d	07 	. 
	rlca			;229e	07 	. 
	rlca			;229f	07 	. 
	bit 5,a		;22a0	cb 6f 	. o 
	jr nz,$+4		;22a2	20 02 	  . 
	xor 007h		;22a4	ee 07 	. . 
	ld (05c48h),a		;22a6	32 48 5c 	2 H \ 
	ret			;22a9	c9 	. 
	ld a,0afh		;22aa	3e af 	> . 
	sub b			;22ac	90 	. 
	jp c,024f9h		;22ad	da f9 24 	. . $ 
	ld b,a			;22b0	47 	G 
	and a			;22b1	a7 	. 
	rra			;22b2	1f 	. 
	scf			;22b3	37 	7 
	rra			;22b4	1f 	. 
	and a			;22b5	a7 	. 
	rra			;22b6	1f 	. 
	xor b			;22b7	a8 	. 
	and 0f8h		;22b8	e6 f8 	. . 
	xor b			;22ba	a8 	. 
	ld h,a			;22bb	67 	g 
	ld a,c			;22bc	79 	y 
	rlca			;22bd	07 	. 
	rlca			;22be	07 	. 
	rlca			;22bf	07 	. 
	xor b			;22c0	a8 	. 
	and 0c7h		;22c1	e6 c7 	. . 
	xor b			;22c3	a8 	. 
	rlca			;22c4	07 	. 
	rlca			;22c5	07 	. 
	ld l,a			;22c6	6f 	o 
	ld a,c			;22c7	79 	y 
	and 007h		;22c8	e6 07 	. . 
	ret			;22ca	c9 	. 
	call 02307h		;22cb	cd 07 23 	. . # 
	call 022aah		;22ce	cd aa 22 	. . " 
	ld b,a			;22d1	47 	G 
	inc b			;22d2	04 	. 
	ld a,(hl)			;22d3	7e 	~ 
	rlca			;22d4	07 	. 
	djnz $-1		;22d5	10 fd 	. . 
	and 001h		;22d7	e6 01 	. . 
	jp 02d28h		;22d9	c3 28 2d 	. ( - 
	call 02307h		;22dc	cd 07 23 	. . # 
	call 022e5h		;22df	cd e5 22 	. . " 
	jp 00d4dh		;22e2	c3 4d 0d 	. M . 
	ld (05c7dh),bc		;22e5	ed 43 7d 5c 	. C } \ 
	call 022aah		;22e9	cd aa 22 	. . " 
	ld b,a			;22ec	47 	G 
	inc b			;22ed	04 	. 
	ld a,0feh		;22ee	3e fe 	> . 
	rrca			;22f0	0f 	. 
	djnz $-1		;22f1	10 fd 	. . 
	ld b,a			;22f3	47 	G 
	ld a,(hl)			;22f4	7e 	~ 
	ld c,(iy+057h)		;22f5	fd 4e 57 	. N W 
	bit 0,c		;22f8	cb 41 	. A 
	jr nz,$+3		;22fa	20 01 	  . 
	and b			;22fc	a0 	. 
	bit 2,c		;22fd	cb 51 	. Q 
	jr nz,$+4		;22ff	20 02 	  . 
	xor b			;2301	a8 	. 
	cpl			;2302	2f 	/ 
	ld (hl),a			;2303	77 	w 
	jp 00bdbh		;2304	c3 db 0b 	. . . 
	call 02314h		;2307	cd 14 23 	. . # 
	ld b,a			;230a	47 	G 
	push bc			;230b	c5 	. 
	call 02314h		;230c	cd 14 23 	. . # 
	ld e,c			;230f	59 	Y 
	pop bc			;2310	c1 	. 
	ld d,c			;2311	51 	Q 
	ld c,a			;2312	4f 	O 
	ret			;2313	c9 	. 
	call 02dd5h		;2314	cd d5 2d 	. . - 
	jp c,024f9h		;2317	da f9 24 	. . $ 
	ld c,001h		;231a	0e 01 	. . 
	ret z			;231c	c8 	. 
	ld c,0ffh		;231d	0e ff 	. . 
	ret			;231f	c9 	. 
	rst 18h			;2320	df 	. 
	cp 02ch		;2321	fe 2c 	. , 
	jp nz,01c8ah		;2323	c2 8a 1c 	. . . 
	rst 20h			;2326	e7 	. 
	call 01c82h		;2327	cd 82 1c 	. . . 
	call 01beeh		;232a	cd ee 1b 	. . . 
	rst 28h			;232d	ef 	. 
	ld hl,(0383dh)		;232e	2a 3d 38 	* = 8 
	ld a,(hl)			;2331	7e 	~ 
	cp 081h		;2332	fe 81 	. . 
	jr nc,$+7		;2334	30 05 	0 . 
	rst 28h			;2336	ef 	. 
	ld (bc),a			;2337	02 	. 
	jr c,$+26		;2338	38 18 	8 . 
	and c			;233a	a1 	. 
	rst 28h			;233b	ef 	. 
	and e			;233c	a3 	. 
	jr c,$+56		;233d	38 36 	8 6 
	add a,e			;233f	83 	. 
	rst 28h			;2340	ef 	. 
	push bc			;2341	c5 	. 
	ld (bc),a			;2342	02 	. 
	jr c,$-49		;2343	38 cd 	8 . 
	ld a,l			;2345	7d 	} 
	inc h			;2346	24 	$ 
	push bc			;2347	c5 	. 
	rst 28h			;2348	ef 	. 
	ld sp,004e1h		;2349	31 e1 04 	1 . . 
	jr c,$+128		;234c	38 7e 	8 ~ 
	cp 080h		;234e	fe 80 	. . 
	jr nc,$+10		;2350	30 08 	0 . 
	rst 28h			;2352	ef 	. 
	ld (bc),a			;2353	02 	. 
	ld (bc),a			;2354	02 	. 
	jr c,$-61		;2355	38 c1 	8 . 
	jp 022dch		;2357	c3 dc 22 	. . " 
	rst 28h			;235a	ef 	. 
	jp nz,0c001h		;235b	c2 01 c0 	. . . 
	ld (bc),a			;235e	02 	. 
	inc bc			;235f	03 	. 
	ld bc,00fe0h		;2360	01 e0 0f 	. . . 
	ret nz			;2363	c0 	. 
	ld bc,0e031h		;2364	01 31 e0 	. 1 . 
	ld bc,0e031h		;2367	01 31 e0 	. 1 . 
	and b			;236a	a0 	. 
	pop bc			;236b	c1 	. 
	ld (bc),a			;236c	02 	. 
	jr c,$-1		;236d	38 fd 	8 . 
	inc (hl)			;236f	34 	4 
	ld h,d			;2370	62 	b 
	call 01e94h		;2371	cd 94 1e 	. . . 
	ld l,a			;2374	6f 	o 
	push hl			;2375	e5 	. 
	call 01e94h		;2376	cd 94 1e 	. . . 
	pop hl			;2379	e1 	. 
	ld h,a			;237a	67 	g 
	ld (05c7dh),hl		;237b	22 7d 5c 	" } \ 
	pop bc			;237e	c1 	. 
	jp 02420h		;237f	c3 20 24 	.   $ 
	rst 18h			;2382	df 	. 
	cp 02ch		;2383	fe 2c 	. , 
	jr z,$+8		;2385	28 06 	( . 
	call 01beeh		;2387	cd ee 1b 	. . . 
	jp 02477h		;238a	c3 77 24 	. w $ 
	rst 20h			;238d	e7 	. 
	call 01c82h		;238e	cd 82 1c 	. . . 
	call 01beeh		;2391	cd ee 1b 	. . . 
	rst 28h			;2394	ef 	. 
	push bc			;2395	c5 	. 
	and d			;2396	a2 	. 
	inc b			;2397	04 	. 
	rra			;2398	1f 	. 
	ld sp,03030h		;2399	31 30 30 	1 0 0 
	nop			;239c	00 	. 
	ld b,002h		;239d	06 02 	. . 
	jr c,$-59		;239f	38 c3 	8 . 
	ld (hl),a			;23a1	77 	w 
	inc h			;23a2	24 	$ 
	ret nz			;23a3	c0 	. 
	ld (bc),a			;23a4	02 	. 
	pop bc			;23a5	c1 	. 
	ld (bc),a			;23a6	02 	. 
	ld sp,0e12ah		;23a7	31 2a e1 	1 * . 
	ld bc,02ae1h		;23aa	01 e1 2a 	. . * 
	rrca			;23ad	0f 	. 
	ret po			;23ae	e0 	. 
	dec b			;23af	05 	. 
	ld hl,(001e0h)		;23b0	2a e0 01 	* . . 
	dec a			;23b3	3d 	= 
	jr c,$+128		;23b4	38 7e 	8 ~ 
	cp 081h		;23b6	fe 81 	. . 
	jr nc,$+9		;23b8	30 07 	0 . 
	rst 28h			;23ba	ef 	. 
	ld (bc),a			;23bb	02 	. 
	ld (bc),a			;23bc	02 	. 
	jr c,$-59		;23bd	38 c3 	8 . 
	ld (hl),a			;23bf	77 	w 
	inc h			;23c0	24 	$ 
	call 0247dh		;23c1	cd 7d 24 	. } $ 
	push bc			;23c4	c5 	. 
	rst 28h			;23c5	ef 	. 
	ld (bc),a			;23c6	02 	. 
	pop hl			;23c7	e1 	. 
	ld bc,0c105h		;23c8	01 05 c1 	. . . 
	ld (bc),a			;23cb	02 	. 
	ld bc,0e131h		;23cc	01 31 e1 	. 1 . 
	inc b			;23cf	04 	. 
	jp nz,00102h		;23d0	c2 02 01 	. . . 
	ld sp,004e1h		;23d3	31 e1 04 	1 . . 
	jp po,0e0e5h		;23d6	e2 e5 e0 	. . . 
	inc bc			;23d9	03 	. 
	and d			;23da	a2 	. 
	inc b			;23db	04 	. 
	ld sp,0c51fh		;23dc	31 1f c5 	1 . . 
	ld (bc),a			;23df	02 	. 
	jr nz,$-62		;23e0	20 c0 	  . 
	ld (bc),a			;23e2	02 	. 
	jp nz,0c102h		;23e3	c2 02 c1 	. . . 
	push hl			;23e6	e5 	. 
	inc b			;23e7	04 	. 
	ret po			;23e8	e0 	. 
	jp po,00f04h		;23e9	e2 04 0f 	. . . 
	pop hl			;23ec	e1 	. 
	ld bc,002c1h		;23ed	01 c1 02 	. . . 
	ret po			;23f0	e0 	. 
	inc b			;23f1	04 	. 
	jp po,004e5h		;23f2	e2 e5 04 	. . . 
	inc bc			;23f5	03 	. 
	jp nz,0e12ah		;23f6	c2 2a e1 	. * . 
	ld hl,(0020fh)		;23f9	2a 0f 02 	* . . 
	jr c,$+28		;23fc	38 1a 	8 . 
	cp 081h		;23fe	fe 81 	. . 
	pop bc			;2400	c1 	. 
	jp c,02477h		;2401	da 77 24 	. w $ 
	push bc			;2404	c5 	. 
	rst 28h			;2405	ef 	. 
	ld bc,03a38h		;2406	01 38 3a 	. 8 : 
	ld a,l			;2409	7d 	} 
	ld e,h			;240a	5c 	\ 
	call 02d28h		;240b	cd 28 2d 	. ( - 
	rst 28h			;240e	ef 	. 
	ret nz			;240f	c0 	. 
	rrca			;2410	0f 	. 
	ld bc,03a38h		;2411	01 38 3a 	. 8 : 
	ld a,(hl)			;2414	7e 	~ 
	ld e,h			;2415	5c 	\ 
	call 02d28h		;2416	cd 28 2d 	. ( - 
	rst 28h			;2419	ef 	. 
	push bc			;241a	c5 	. 
	rrca			;241b	0f 	. 
	ret po			;241c	e0 	. 
	push hl			;241d	e5 	. 
	jr c,$-61		;241e	38 c1 	8 . 
	dec b			;2420	05 	. 
	jr z,$+62		;2421	28 3c 	( < 
	jr $+22		;2423	18 14 	. . 
	rst 28h			;2425	ef 	. 
	pop hl			;2426	e1 	. 
	ld sp,004e3h		;2427	31 e3 04 	1 . . 
	jp po,004e4h		;242a	e2 e4 04 	. . . 
	inc bc			;242d	03 	. 
	pop bc			;242e	c1 	. 
	ld (bc),a			;242f	02 	. 
	call po,0e204h		;2430	e4 04 e2 	. . . 
	ex (sp),hl			;2433	e3 	. 
	inc b			;2434	04 	. 
	rrca			;2435	0f 	. 
	jp nz,03802h		;2436	c2 02 38 	. . 8 
	push bc			;2439	c5 	. 
	rst 28h			;243a	ef 	. 
	ret nz			;243b	c0 	. 
	ld (bc),a			;243c	02 	. 
	pop hl			;243d	e1 	. 
	rrca			;243e	0f 	. 
	ld sp,03a38h		;243f	31 38 3a 	1 8 : 
	ld a,l			;2442	7d 	} 
	ld e,h			;2443	5c 	\ 
	call 02d28h		;2444	cd 28 2d 	. ( - 
	rst 28h			;2447	ef 	. 
	inc bc			;2448	03 	. 
	ret po			;2449	e0 	. 
	jp po,0c00fh		;244a	e2 0f c0 	. . . 
	ld bc,038e0h		;244d	01 e0 38 	. . 8 
	ld a,(05c7eh)		;2450	3a 7e 5c 	: ~ \ 
	call 02d28h		;2453	cd 28 2d 	. ( - 
	rst 28h			;2456	ef 	. 
	inc bc			;2457	03 	. 
	jr c,$-49		;2458	38 cd 	8 . 
	or a			;245a	b7 	. 
	inc h			;245b	24 	$ 
	pop bc			;245c	c1 	. 
	djnz $-56		;245d	10 c6 	. . 
	rst 28h			;245f	ef 	. 
	ld (bc),a			;2460	02 	. 
	ld (bc),a			;2461	02 	. 
	ld bc,03a38h		;2462	01 38 3a 	. 8 : 
	ld a,l			;2465	7d 	} 
	ld e,h			;2466	5c 	\ 
	call 02d28h		;2467	cd 28 2d 	. ( - 
	rst 28h			;246a	ef 	. 
	inc bc			;246b	03 	. 
	ld bc,03a38h		;246c	01 38 3a 	. 8 : 
	ld a,(hl)			;246f	7e 	~ 
	ld e,h			;2470	5c 	\ 
	call 02d28h		;2471	cd 28 2d 	. ( - 
	rst 28h			;2474	ef 	. 
	inc bc			;2475	03 	. 
	jr c,$-49		;2476	38 cd 	8 . 
	or a			;2478	b7 	. 
	inc h			;2479	24 	$ 
	jp 00d4dh		;247a	c3 4d 0d 	. M . 
	rst 28h			;247d	ef 	. 
	ld sp,03428h		;247e	31 28 34 	1 ( 4 
	ld (00100h),a		;2481	32 00 01 	2 . . 
	dec b			;2484	05 	. 
	push hl			;2485	e5 	. 
	ld bc,02a05h		;2486	01 05 2a 	. . * 
	jr c,$-49		;2489	38 cd 	8 . 
	push de			;248b	d5 	. 
	dec l			;248c	2d 	- 
	jr c,$+8		;248d	38 06 	8 . 
	and 0fch		;248f	e6 fc 	. . 
	add a,004h		;2491	c6 04 	. . 
	jr nc,$+4		;2493	30 02 	0 . 
	ld a,0fch		;2495	3e fc 	> . 
	push af			;2497	f5 	. 
	call 02d28h		;2498	cd 28 2d 	. ( - 
	rst 28h			;249b	ef 	. 
	push hl			;249c	e5 	. 
	ld bc,03105h		;249d	01 05 31 	. . 1 
	rra			;24a0	1f 	. 
	call nz,03102h		;24a1	c4 02 31 	. . 1 
	and d			;24a4	a2 	. 
	inc b			;24a5	04 	. 
	rra			;24a6	1f 	. 
	pop bc			;24a7	c1 	. 
	ld bc,002c0h		;24a8	01 c0 02 	. . . 
	ld sp,03104h		;24ab	31 04 31 	1 . 1 
	rrca			;24ae	0f 	. 
	and c			;24af	a1 	. 
	inc bc			;24b0	03 	. 
	dec de			;24b1	1b 	. 
	jp 03802h		;24b2	c3 02 38 	. . 8 
	pop bc			;24b5	c1 	. 
	ret			;24b6	c9 	. 
	call 02307h		;24b7	cd 07 23 	. . # 
	ld a,c			;24ba	79 	y 
	cp b			;24bb	b8 	. 
	jr nc,$+8		;24bc	30 06 	0 . 
	ld l,c			;24be	69 	i 
	push de			;24bf	d5 	. 
	xor a			;24c0	af 	. 
	ld e,a			;24c1	5f 	_ 
	jr $+9		;24c2	18 07 	. . 
	or c			;24c4	b1 	. 
	ret z			;24c5	c8 	. 
	ld l,b			;24c6	68 	h 
	ld b,c			;24c7	41 	A 
	push de			;24c8	d5 	. 
	ld d,000h		;24c9	16 00 	. . 
	ld h,b			;24cb	60 	` 
	ld a,b			;24cc	78 	x 
	rra			;24cd	1f 	. 
	add a,l			;24ce	85 	. 
	jr c,$+5		;24cf	38 03 	8 . 
	cp h			;24d1	bc 	. 
	jr c,$+9		;24d2	38 07 	8 . 
	sub h			;24d4	94 	. 
	ld c,a			;24d5	4f 	O 
	exx			;24d6	d9 	. 
	pop bc			;24d7	c1 	. 
	push bc			;24d8	c5 	. 
	jr $+6		;24d9	18 04 	. . 
	ld c,a			;24db	4f 	O 
	push de			;24dc	d5 	. 
	exx			;24dd	d9 	. 
	pop bc			;24de	c1 	. 
	ld hl,(05c7dh)		;24df	2a 7d 5c 	* } \ 
	ld a,b			;24e2	78 	x 
	add a,h			;24e3	84 	. 
	ld b,a			;24e4	47 	G 
	ld a,c			;24e5	79 	y 
	inc a			;24e6	3c 	< 
	add a,l			;24e7	85 	. 
	jr c,$+15		;24e8	38 0d 	8 . 
	jr z,$+15		;24ea	28 0d 	( . 
	dec a			;24ec	3d 	= 
	ld c,a			;24ed	4f 	O 
	call 022e5h		;24ee	cd e5 22 	. . " 
	exx			;24f1	d9 	. 
	ld a,c			;24f2	79 	y 
	djnz $-37		;24f3	10 d9 	. . 
	pop de			;24f5	d1 	. 
	ret			;24f6	c9 	. 
	jr z,$-11		;24f7	28 f3 	( . 
	rst 8			;24f9	cf 	. 
	ld a,(bc)			;24fa	0a 	. 
	rst 18h			;24fb	df 	. 
	ld b,000h		;24fc	06 00 	. . 
	push bc			;24fe	c5 	. 
	ld c,a			;24ff	4f 	O 
	ld hl,02596h		;2500	21 96 25 	! . % 
	call 016dch		;2503	cd dc 16 	. . . 
	ld a,c			;2506	79 	y 
	jp nc,02684h		;2507	d2 84 26 	. . & 
	ld b,000h		;250a	06 00 	. . 
	ld c,(hl)			;250c	4e 	N 
	add hl,bc			;250d	09 	. 
	jp (hl)			;250e	e9 	. 
	call 00074h		;250f	cd 74 00 	. t . 
	inc bc			;2512	03 	. 
	cp 00dh		;2513	fe 0d 	. . 
	jp z,01c8ah		;2515	ca 8a 1c 	. . . 
	cp 022h		;2518	fe 22 	. " 
	jr nz,$-11		;251a	20 f3 	  . 
	call 00074h		;251c	cd 74 00 	. t . 
	cp 022h		;251f	fe 22 	. " 
	ret			;2521	c9 	. 
	rst 20h			;2522	e7 	. 
	cp 028h		;2523	fe 28 	. ( 
	jr nz,$+8		;2525	20 06 	  . 
	call 01c79h		;2527	cd 79 1c 	. y . 
	rst 18h			;252a	df 	. 
	cp 029h		;252b	fe 29 	. ) 
	jp nz,01c8ah		;252d	c2 8a 1c 	. . . 
	bit 7,(iy+001h)		;2530	fd cb 01 7e 	. . . ~ 
	ret			;2534	c9 	. 
	call 02307h		;2535	cd 07 23 	. . # 
	ld hl,(05c36h)		;2538	2a 36 5c 	* 6 \ 
	ld de,00100h		;253b	11 00 01 	. . . 
	add hl,de			;253e	19 	. 
	ld a,c			;253f	79 	y 
	rrca			;2540	0f 	. 
	rrca			;2541	0f 	. 
	rrca			;2542	0f 	. 
	and 0e0h		;2543	e6 e0 	. . 
	xor b			;2545	a8 	. 
	ld e,a			;2546	5f 	_ 
	ld a,c			;2547	79 	y 
	and 018h		;2548	e6 18 	. . 
	xor 040h		;254a	ee 40 	. @ 
	ld d,a			;254c	57 	W 
	ld b,060h		;254d	06 60 	. ` 
	push bc			;254f	c5 	. 
	push de			;2550	d5 	. 
	push hl			;2551	e5 	. 
	ld a,(de)			;2552	1a 	. 
	xor (hl)			;2553	ae 	. 
	jr z,$+6		;2554	28 04 	( . 
	inc a			;2556	3c 	< 
	jr nz,$+28		;2557	20 1a 	  . 
	dec a			;2559	3d 	= 
	ld c,a			;255a	4f 	O 
	ld b,007h		;255b	06 07 	. . 
	inc d			;255d	14 	. 
	inc hl			;255e	23 	# 
	ld a,(de)			;255f	1a 	. 
	xor (hl)			;2560	ae 	. 
	xor c			;2561	a9 	. 
	jr nz,$+17		;2562	20 0f 	  . 
	djnz $-7		;2564	10 f7 	. . 
	pop bc			;2566	c1 	. 
	pop bc			;2567	c1 	. 
	pop bc			;2568	c1 	. 
	ld a,080h		;2569	3e 80 	> . 
	sub b			;256b	90 	. 
	ld bc,00001h		;256c	01 01 00 	. . . 
	rst 30h			;256f	f7 	. 
	ld (de),a			;2570	12 	. 
	jr $+12		;2571	18 0a 	. . 
	pop hl			;2573	e1 	. 
	ld de,00008h		;2574	11 08 00 	. . . 
	add hl,de			;2577	19 	. 
	pop de			;2578	d1 	. 
	pop bc			;2579	c1 	. 
	djnz $-43		;257a	10 d3 	. . 
	ld c,b			;257c	48 	H 
	jp 02ab2h		;257d	c3 b2 2a 	. . * 
	call 02307h		;2580	cd 07 23 	. . # 
	ld a,c			;2583	79 	y 
	rrca			;2584	0f 	. 
	rrca			;2585	0f 	. 
	rrca			;2586	0f 	. 
	ld c,a			;2587	4f 	O 
	and 0e0h		;2588	e6 e0 	. . 
	xor b			;258a	a8 	. 
	ld l,a			;258b	6f 	o 
	ld a,c			;258c	79 	y 
	and 003h		;258d	e6 03 	. . 
	xor 058h		;258f	ee 58 	. X 
	ld h,a			;2591	67 	g 
	ld a,(hl)			;2592	7e 	~ 
	jp 02d28h		;2593	c3 28 2d 	. ( - 
	ld (0281ch),hl		;2596	22 1c 28 	" . ( 
	ld c,a			;2599	4f 	O 
	ld l,0f2h		;259a	2e f2 	. . 
	dec hl			;259c	2b 	+ 
	ld (de),a			;259d	12 	. 
	xor b			;259e	a8 	. 
	ld d,(hl)			;259f	56 	V 
	and l			;25a0	a5 	. 
	ld d,a			;25a1	57 	W 
	and a			;25a2	a7 	. 
	add a,h			;25a3	84 	. 
	and (hl)			;25a4	a6 	. 
	adc a,a			;25a5	8f 	. 
	call nz,0aae6h		;25a6	c4 e6 aa 	. . . 
	cp a			;25a9	bf 	. 
	xor e			;25aa	ab 	. 
	rst 0			;25ab	c7 	. 
	xor c			;25ac	a9 	. 
	adc a,000h		;25ad	ce 00 	. . 
	rst 20h			;25af	e7 	. 
	jp 024ffh		;25b0	c3 ff 24 	. . $ 
	rst 18h			;25b3	df 	. 
	inc hl			;25b4	23 	# 
	push hl			;25b5	e5 	. 
	ld bc,00000h		;25b6	01 00 00 	. . . 
	call 0250fh		;25b9	cd 0f 25 	. . % 
	jr nz,$+29		;25bc	20 1b 	  . 
	call 0250fh		;25be	cd 0f 25 	. . % 
	jr z,$-3		;25c1	28 fb 	( . 
	call 02530h		;25c3	cd 30 25 	. 0 % 
	jr z,$+19		;25c6	28 11 	( . 
	rst 30h			;25c8	f7 	. 
	pop hl			;25c9	e1 	. 
	push de			;25ca	d5 	. 
	ld a,(hl)			;25cb	7e 	~ 
	inc hl			;25cc	23 	# 
	ld (de),a			;25cd	12 	. 
	inc de			;25ce	13 	. 
	cp 022h		;25cf	fe 22 	. " 
	jr nz,$-6		;25d1	20 f8 	  . 
	ld a,(hl)			;25d3	7e 	~ 
	inc hl			;25d4	23 	# 
	cp 022h		;25d5	fe 22 	. " 
	jr z,$-12		;25d7	28 f2 	( . 
	dec bc			;25d9	0b 	. 
	pop de			;25da	d1 	. 
	ld hl,05c3bh		;25db	21 3b 5c 	! ; \ 
	res 6,(hl)		;25de	cb b6 	. . 
	bit 7,(hl)		;25e0	cb 7e 	. ~ 
	call nz,02ab2h		;25e2	c4 b2 2a 	. . * 
	jp 02712h		;25e5	c3 12 27 	. . ' 
	rst 20h			;25e8	e7 	. 
	call 024fbh		;25e9	cd fb 24 	. . $ 
	cp 029h		;25ec	fe 29 	. ) 
	jp nz,01c8ah		;25ee	c2 8a 1c 	. . . 
	rst 20h			;25f1	e7 	. 
	jp 02712h		;25f2	c3 12 27 	. . ' 
	jp 027bdh		;25f5	c3 bd 27 	. . ' 
	call 02530h		;25f8	cd 30 25 	. 0 % 
	jr z,$+42		;25fb	28 28 	( ( 
	ld bc,(05c76h)		;25fd	ed 4b 76 5c 	. K v \ 
	call 02d2bh		;2601	cd 2b 2d 	. + - 
	rst 28h			;2604	ef 	. 
	and c			;2605	a1 	. 
	rrca			;2606	0f 	. 
	inc (hl)			;2607	34 	4 
	scf			;2608	37 	7 
	ld d,004h		;2609	16 04 	. . 
	inc (hl)			;260b	34 	4 
	add a,b			;260c	80 	. 
	ld b,c			;260d	41 	A 
	nop			;260e	00 	. 
	nop			;260f	00 	. 
	add a,b			;2610	80 	. 
	ld (0a102h),a		;2611	32 02 a1 	2 . . 
	inc bc			;2614	03 	. 
	ld sp,0cd38h		;2615	31 38 cd 	1 8 . 
	and d			;2618	a2 	. 
	dec l			;2619	2d 	- 
	ld (05c76h),bc		;261a	ed 43 76 5c 	. C v \ 
	ld a,(hl)			;261e	7e 	~ 
	and a			;261f	a7 	. 
	jr z,$+5		;2620	28 03 	( . 
	sub 010h		;2622	d6 10 	. . 
	ld (hl),a			;2624	77 	w 
	jr $+11		;2625	18 09 	. . 
	call 02530h		;2627	cd 30 25 	. 0 % 
	jr z,$+6		;262a	28 04 	( . 
	rst 28h			;262c	ef 	. 
	and e			;262d	a3 	. 
	jr c,$+54		;262e	38 34 	8 4 
	rst 20h			;2630	e7 	. 
	jp 026c3h		;2631	c3 c3 26 	. . & 
	ld bc,0105ah		;2634	01 5a 10 	. Z . 
	rst 20h			;2637	e7 	. 
	cp 023h		;2638	fe 23 	. # 
	jp z,0270dh		;263a	ca 0d 27 	. . ' 
	ld hl,05c3bh		;263d	21 3b 5c 	! ; \ 
	res 6,(hl)		;2640	cb b6 	. . 
	bit 7,(hl)		;2642	cb 7e 	. ~ 
	jr z,$+33		;2644	28 1f 	( . 
	call 0028eh		;2646	cd 8e 02 	. . . 
	ld c,000h		;2649	0e 00 	. . 
	jr nz,$+21		;264b	20 13 	  . 
	call 0031eh		;264d	cd 1e 03 	. . . 
	jr nc,$+16		;2650	30 0e 	0 . 
	dec d			;2652	15 	. 
	ld e,a			;2653	5f 	_ 
	call 00333h		;2654	cd 33 03 	. 3 . 
	push af			;2657	f5 	. 
	ld bc,00001h		;2658	01 01 00 	. . . 
	rst 30h			;265b	f7 	. 
	pop af			;265c	f1 	. 
	ld (de),a			;265d	12 	. 
	ld c,001h		;265e	0e 01 	. . 
	ld b,000h		;2660	06 00 	. . 
	call 02ab2h		;2662	cd b2 2a 	. . * 
	jp 02712h		;2665	c3 12 27 	. . ' 
	call 02522h		;2668	cd 22 25 	. " % 
	call nz,02535h		;266b	c4 35 25 	. 5 % 
	rst 20h			;266e	e7 	. 
	jp 025dbh		;266f	c3 db 25 	. . % 
	call 02522h		;2672	cd 22 25 	. " % 
	call nz,02580h		;2675	c4 80 25 	. . % 
	rst 20h			;2678	e7 	. 
	jr $+74		;2679	18 48 	. H 
	call 02522h		;267b	cd 22 25 	. " % 
	call nz,022cbh		;267e	c4 cb 22 	. . " 
	rst 20h			;2681	e7 	. 
	jr $+65		;2682	18 3f 	. ? 
	call 02c88h		;2684	cd 88 2c 	. . , 
	jr nc,$+88		;2687	30 56 	0 V 
	cp 041h		;2689	fe 41 	. A 
	jr nc,$+62		;268b	30 3c 	0 < 
	call 02530h		;268d	cd 30 25 	. 0 % 
	jr nz,$+37		;2690	20 23 	  # 
	call 02c9bh		;2692	cd 9b 2c 	. . , 
	rst 18h			;2695	df 	. 
	ld bc,00006h		;2696	01 06 00 	. . . 
	call 01655h		;2699	cd 55 16 	. U . 
	inc hl			;269c	23 	# 
	ld (hl),00eh		;269d	36 0e 	6 . 
	inc hl			;269f	23 	# 
	ex de,hl			;26a0	eb 	. 
	ld hl,(05c65h)		;26a1	2a 65 5c 	* e \ 
	ld c,005h		;26a4	0e 05 	. . 
	and a			;26a6	a7 	. 
	sbc hl,bc		;26a7	ed 42 	. B 
	ld (05c65h),hl		;26a9	22 65 5c 	" e \ 
	ldir		;26ac	ed b0 	. . 
	ex de,hl			;26ae	eb 	. 
	dec hl			;26af	2b 	+ 
	call 00077h		;26b0	cd 77 00 	. w . 
	jr $+16		;26b3	18 0e 	. . 
	rst 18h			;26b5	df 	. 
	inc hl			;26b6	23 	# 
	ld a,(hl)			;26b7	7e 	~ 
	cp 00eh		;26b8	fe 0e 	. . 
	jr nz,$-4		;26ba	20 fa 	  . 
	inc hl			;26bc	23 	# 
	call 033b4h		;26bd	cd b4 33 	. . 3 
	ld (05c5dh),hl		;26c0	22 5d 5c 	" ] \ 
	set 6,(iy+001h)		;26c3	fd cb 01 f6 	. . . . 
	jr $+22		;26c7	18 14 	. . 
	call 028b2h		;26c9	cd b2 28 	. . ( 
	jp c,01c2eh		;26cc	da 2e 1c 	. . . 
	call z,02996h		;26cf	cc 96 29 	. . ) 
	ld a,(05c3bh)		;26d2	3a 3b 5c 	: ; \ 
	cp 0c0h		;26d5	fe c0 	. . 
	jr c,$+6		;26d7	38 04 	8 . 
	inc hl			;26d9	23 	# 
	call 033b4h		;26da	cd b4 33 	. . 3 
	jr $+53		;26dd	18 33 	. 3 
	ld bc,009dbh		;26df	01 db 09 	. . . 
	cp 02dh		;26e2	fe 2d 	. - 
	jr z,$+41		;26e4	28 27 	( ' 
	ld bc,01018h		;26e6	01 18 10 	. . . 
	cp 0aeh		;26e9	fe ae 	. . 
	jr z,$+34		;26eb	28 20 	(   
	sub 0afh		;26ed	d6 af 	. . 
	jp c,01c8ah		;26ef	da 8a 1c 	. . . 
	ld bc,004f0h		;26f2	01 f0 04 	. . . 
	cp 014h		;26f5	fe 14 	. . 
	jr z,$+22		;26f7	28 14 	( . 
	jp nc,01c8ah		;26f9	d2 8a 1c 	. . . 
	ld b,010h		;26fc	06 10 	. . 
	add a,0dch		;26fe	c6 dc 	. . 
	ld c,a			;2700	4f 	O 
	cp 0dfh		;2701	fe df 	. . 
	jr nc,$+4		;2703	30 02 	0 . 
	res 6,c		;2705	cb b1 	. . 
	cp 0eeh		;2707	fe ee 	. . 
	jr c,$+4		;2709	38 02 	8 . 
	res 7,c		;270b	cb b9 	. . 
	push bc			;270d	c5 	. 
	rst 20h			;270e	e7 	. 
	jp 024ffh		;270f	c3 ff 24 	. . $ 
	rst 18h			;2712	df 	. 
	cp 028h		;2713	fe 28 	. ( 
	jr nz,$+14		;2715	20 0c 	  . 
	bit 6,(iy+001h)		;2717	fd cb 01 76 	. . . v 
	jr nz,$+25		;271b	20 17 	  . 
	call 02a52h		;271d	cd 52 2a 	. R * 
	rst 20h			;2720	e7 	. 
	jr $-14		;2721	18 f0 	. . 
	ld b,000h		;2723	06 00 	. . 
	ld c,a			;2725	4f 	O 
	ld hl,02795h		;2726	21 95 27 	! . ' 
	call 016dch		;2729	cd dc 16 	. . . 
	jr nc,$+8		;272c	30 06 	0 . 
	ld c,(hl)			;272e	4e 	N 
	ld hl,026edh		;272f	21 ed 26 	! . & 
	add hl,bc			;2732	09 	. 
	ld b,(hl)			;2733	46 	F 
	pop de			;2734	d1 	. 
	ld a,d			;2735	7a 	z 
	cp b			;2736	b8 	. 
	jr c,$+60		;2737	38 3a 	8 : 
	and a			;2739	a7 	. 
	jp z,00018h		;273a	ca 18 00 	. . . 
	push bc			;273d	c5 	. 
	ld hl,05c3bh		;273e	21 3b 5c 	! ; \ 
	ld a,e			;2741	7b 	{ 
	cp 0edh		;2742	fe ed 	. . 
	jr nz,$+8		;2744	20 06 	  . 
	bit 6,(hl)		;2746	cb 76 	. v 
	jr nz,$+4		;2748	20 02 	  . 
	ld e,099h		;274a	1e 99 	. . 
	push de			;274c	d5 	. 
	call 02530h		;274d	cd 30 25 	. 0 % 
	jr z,$+11		;2750	28 09 	( . 
	ld a,e			;2752	7b 	{ 
	and 03fh		;2753	e6 3f 	. ? 
	ld b,a			;2755	47 	G 
	rst 28h			;2756	ef 	. 
	dec sp			;2757	3b 	; 
	jr c,$+26		;2758	38 18 	8 . 
	add hl,bc			;275a	09 	. 
	ld a,e			;275b	7b 	{ 
	xor (iy+001h)		;275c	fd ae 01 	. . . 
	and 040h		;275f	e6 40 	. @ 
	jp nz,01c8ah		;2761	c2 8a 1c 	. . . 
	pop de			;2764	d1 	. 
	ld hl,05c3bh		;2765	21 3b 5c 	! ; \ 
	set 6,(hl)		;2768	cb f6 	. . 
	bit 7,e		;276a	cb 7b 	. { 
	jr nz,$+4		;276c	20 02 	  . 
	res 6,(hl)		;276e	cb b6 	. . 
	pop bc			;2770	c1 	. 
	jr $-61		;2771	18 c1 	. . 
	push de			;2773	d5 	. 
	ld a,c			;2774	79 	y 
	bit 6,(iy+001h)		;2775	fd cb 01 76 	. . . v 
	jr nz,$+23		;2779	20 15 	  . 
	and 03fh		;277b	e6 3f 	. ? 
	add a,008h		;277d	c6 08 	. . 
	ld c,a			;277f	4f 	O 
	cp 010h		;2780	fe 10 	. . 
	jr nz,$+6		;2782	20 04 	  . 
	set 6,c		;2784	cb f1 	. . 
	jr $+10		;2786	18 08 	. . 
	jr c,$-39		;2788	38 d7 	8 . 
	cp 017h		;278a	fe 17 	. . 
	jr z,$+4		;278c	28 02 	( . 
	set 7,c		;278e	cb f9 	. . 
	push bc			;2790	c5 	. 
	rst 20h			;2791	e7 	. 
	jp 024ffh		;2792	c3 ff 24 	. . $ 
	dec hl			;2795	2b 	+ 
	rst 8			;2796	cf 	. 
	dec l			;2797	2d 	- 
	jp 0c42ah		;2798	c3 2a c4 	. * . 
	cpl			;279b	2f 	/ 
	push bc			;279c	c5 	. 
	ld e,(hl)			;279d	5e 	^ 
	add a,03dh		;279e	c6 3d 	. = 
	adc a,03eh		;27a0	ce 3e 	. > 
	call z,0cd3ch		;27a2	cc 3c cd 	. < . 
	rst 0			;27a5	c7 	. 
	ret			;27a6	c9 	. 
	ret z			;27a7	c8 	. 
	jp z,0cbc9h		;27a8	ca c9 cb 	. . . 
	push bc			;27ab	c5 	. 
	rst 0			;27ac	c7 	. 
	add a,0c8h		;27ad	c6 c8 	. . 
	nop			;27af	00 	. 
	ld b,008h		;27b0	06 08 	. . 
	ex af,af'			;27b2	08 	. 
	ld a,(bc)			;27b3	0a 	. 
	ld (bc),a			;27b4	02 	. 
	inc bc			;27b5	03 	. 
	dec b			;27b6	05 	. 
	dec b			;27b7	05 	. 
	dec b			;27b8	05 	. 
	dec b			;27b9	05 	. 
	dec b			;27ba	05 	. 
	dec b			;27bb	05 	. 
	ld b,0cdh		;27bc	06 cd 	. . 
	jr nc,$+39		;27be	30 25 	0 % 
	jr nz,$+55		;27c0	20 35 	  5 
	rst 20h			;27c2	e7 	. 
	call 02c8dh		;27c3	cd 8d 2c 	. . , 
	jp nc,01c8ah		;27c6	d2 8a 1c 	. . . 
	rst 20h			;27c9	e7 	. 
	cp 024h		;27ca	fe 24 	. $ 
	push af			;27cc	f5 	. 
	jr nz,$+3		;27cd	20 01 	  . 
	rst 20h			;27cf	e7 	. 
	cp 028h		;27d0	fe 28 	. ( 
	jr nz,$+20		;27d2	20 12 	  . 
	rst 20h			;27d4	e7 	. 
	cp 029h		;27d5	fe 29 	. ) 
	jr z,$+18		;27d7	28 10 	( . 
	call 024fbh		;27d9	cd fb 24 	. . $ 
	rst 18h			;27dc	df 	. 
	cp 02ch		;27dd	fe 2c 	. , 
	jr nz,$+5		;27df	20 03 	  . 
	rst 20h			;27e1	e7 	. 
	jr $-9		;27e2	18 f5 	. . 
	cp 029h		;27e4	fe 29 	. ) 
	jp nz,01c8ah		;27e6	c2 8a 1c 	. . . 
	rst 20h			;27e9	e7 	. 
	ld hl,05c3bh		;27ea	21 3b 5c 	! ; \ 
	res 6,(hl)		;27ed	cb b6 	. . 
	pop af			;27ef	f1 	. 
	jr z,$+4		;27f0	28 02 	( . 
	set 6,(hl)		;27f2	cb f6 	. . 
	jp 02712h		;27f4	c3 12 27 	. . ' 
	rst 20h			;27f7	e7 	. 
	and 0dfh		;27f8	e6 df 	. . 
	ld b,a			;27fa	47 	G 
	rst 20h			;27fb	e7 	. 
	sub 024h		;27fc	d6 24 	. $ 
	ld c,a			;27fe	4f 	O 
	jr nz,$+3		;27ff	20 01 	  . 
	rst 20h			;2801	e7 	. 
	rst 20h			;2802	e7 	. 
	push hl			;2803	e5 	. 
	ld hl,(05c53h)		;2804	2a 53 5c 	* S \ 
	dec hl			;2807	2b 	+ 
	ld de,000ceh		;2808	11 ce 00 	. . . 
	push bc			;280b	c5 	. 
	call 01d86h		;280c	cd 86 1d 	. . . 
	pop bc			;280f	c1 	. 
	jr nc,$+4		;2810	30 02 	0 . 
	rst 8			;2812	cf 	. 
	jr $-25		;2813	18 e5 	. . 
	call 028abh		;2815	cd ab 28 	. . ( 
	and 0dfh		;2818	e6 df 	. . 
	cp b			;281a	b8 	. 
	jr nz,$+10		;281b	20 08 	  . 
	call 028abh		;281d	cd ab 28 	. . ( 
	sub 024h		;2820	d6 24 	. $ 
	cp c			;2822	b9 	. 
	jr z,$+14		;2823	28 0c 	( . 
	pop hl			;2825	e1 	. 
	dec hl			;2826	2b 	+ 
	ld de,00200h		;2827	11 00 02 	. . . 
	push bc			;282a	c5 	. 
	call 0198bh		;282b	cd 8b 19 	. . . 
	pop bc			;282e	c1 	. 
	jr $-39		;282f	18 d7 	. . 
	and a			;2831	a7 	. 
	call z,028abh		;2832	cc ab 28 	. . ( 
	pop de			;2835	d1 	. 
	pop de			;2836	d1 	. 
	ld (05c5dh),de		;2837	ed 53 5d 5c 	. S ] \ 
	call 028abh		;283b	cd ab 28 	. . ( 
	push hl			;283e	e5 	. 
	cp 029h		;283f	fe 29 	. ) 
	jr z,$+68		;2841	28 42 	( B 
	inc hl			;2843	23 	# 
	ld a,(hl)			;2844	7e 	~ 
	cp 00eh		;2845	fe 0e 	. . 
	ld d,040h		;2847	16 40 	. @ 
	jr z,$+9		;2849	28 07 	( . 
	dec hl			;284b	2b 	+ 
	call 028abh		;284c	cd ab 28 	. . ( 
	inc hl			;284f	23 	# 
	ld d,000h		;2850	16 00 	. . 
	inc hl			;2852	23 	# 
	push hl			;2853	e5 	. 
	push de			;2854	d5 	. 
	call 024fbh		;2855	cd fb 24 	. . $ 
	pop af			;2858	f1 	. 
	xor (iy+001h)		;2859	fd ae 01 	. . . 
	and 040h		;285c	e6 40 	. @ 
	jr nz,$+45		;285e	20 2b 	  + 
	pop hl			;2860	e1 	. 
	ex de,hl			;2861	eb 	. 
	ld hl,(05c65h)		;2862	2a 65 5c 	* e \ 
	ld bc,00005h		;2865	01 05 00 	. . . 
	sbc hl,bc		;2868	ed 42 	. B 
	ld (05c65h),hl		;286a	22 65 5c 	" e \ 
	ldir		;286d	ed b0 	. . 
	ex de,hl			;286f	eb 	. 
	dec hl			;2870	2b 	+ 
	call 028abh		;2871	cd ab 28 	. . ( 
	cp 029h		;2874	fe 29 	. ) 
	jr z,$+15		;2876	28 0d 	( . 
	push hl			;2878	e5 	. 
	rst 18h			;2879	df 	. 
	cp 02ch		;287a	fe 2c 	. , 
	jr nz,$+15		;287c	20 0d 	  . 
	rst 20h			;287e	e7 	. 
	pop hl			;287f	e1 	. 
	call 028abh		;2880	cd ab 28 	. . ( 
	jr $-64		;2883	18 be 	. . 
	push hl			;2885	e5 	. 
	rst 18h			;2886	df 	. 
	cp 029h		;2887	fe 29 	. ) 
	jr z,$+4		;2889	28 02 	( . 
	rst 8			;288b	cf 	. 
	add hl,de			;288c	19 	. 
	pop de			;288d	d1 	. 
	ex de,hl			;288e	eb 	. 
	ld (05c5dh),hl		;288f	22 5d 5c 	" ] \ 
	ld hl,(05c0bh)		;2892	2a 0b 5c 	* . \ 
	ex (sp),hl			;2895	e3 	. 
	ld (05c0bh),hl		;2896	22 0b 5c 	" . \ 
	push de			;2899	d5 	. 
	rst 20h			;289a	e7 	. 
	rst 20h			;289b	e7 	. 
	call 024fbh		;289c	cd fb 24 	. . $ 
	pop hl			;289f	e1 	. 
	ld (05c5dh),hl		;28a0	22 5d 5c 	" ] \ 
	pop hl			;28a3	e1 	. 
	ld (05c0bh),hl		;28a4	22 0b 5c 	" . \ 
	rst 20h			;28a7	e7 	. 
	jp 02712h		;28a8	c3 12 27 	. . ' 
	inc hl			;28ab	23 	# 
	ld a,(hl)			;28ac	7e 	~ 
	cp 021h		;28ad	fe 21 	. ! 
	jr c,$-4		;28af	38 fa 	8 . 
	ret			;28b1	c9 	. 
	set 6,(iy+001h)		;28b2	fd cb 01 f6 	. . . . 
	rst 18h			;28b6	df 	. 
	call 02c8dh		;28b7	cd 8d 2c 	. . , 
	jp nc,01c8ah		;28ba	d2 8a 1c 	. . . 
	push hl			;28bd	e5 	. 
	and 01fh		;28be	e6 1f 	. . 
	ld c,a			;28c0	4f 	O 
	rst 20h			;28c1	e7 	. 
	push hl			;28c2	e5 	. 
	cp 028h		;28c3	fe 28 	. ( 
	jr z,$+42		;28c5	28 28 	( ( 
	set 6,c		;28c7	cb f1 	. . 
	cp 024h		;28c9	fe 24 	. $ 
	jr z,$+19		;28cb	28 11 	( . 
	set 5,c		;28cd	cb e9 	. . 
	call 02c88h		;28cf	cd 88 2c 	. . , 
	jr nc,$+17		;28d2	30 0f 	0 . 
	call 02c88h		;28d4	cd 88 2c 	. . , 
	jr nc,$+24		;28d7	30 16 	0 . 
	res 6,c		;28d9	cb b1 	. . 
	rst 20h			;28db	e7 	. 
	jr $-8		;28dc	18 f6 	. . 
	rst 20h			;28de	e7 	. 
	res 6,(iy+001h)		;28df	fd cb 01 b6 	. . . . 
	ld a,(05c0ch)		;28e3	3a 0c 5c 	: . \ 
	and a			;28e6	a7 	. 
	jr z,$+8		;28e7	28 06 	( . 
	call 02530h		;28e9	cd 30 25 	. 0 % 
	jp nz,02951h		;28ec	c2 51 29 	. Q ) 
	ld b,c			;28ef	41 	A 
	call 02530h		;28f0	cd 30 25 	. 0 % 
	jr nz,$+10		;28f3	20 08 	  . 
	ld a,c			;28f5	79 	y 
	and 0e0h		;28f6	e6 e0 	. . 
	set 7,a		;28f8	cb ff 	. . 
	ld c,a			;28fa	4f 	O 
	jr $+57		;28fb	18 37 	. 7 
	ld hl,(05c4bh)		;28fd	2a 4b 5c 	* K \ 
	ld a,(hl)			;2900	7e 	~ 
	and 07fh		;2901	e6 7f 	.  
	jr z,$+47		;2903	28 2d 	( - 
	cp c			;2905	b9 	. 
	jr nz,$+36		;2906	20 22 	  " 
	rla			;2908	17 	. 
	add a,a			;2909	87 	. 
	jp p,0293fh		;290a	f2 3f 29 	. ? ) 
	jr c,$+50		;290d	38 30 	8 0 
	pop de			;290f	d1 	. 
	push de			;2910	d5 	. 
	push hl			;2911	e5 	. 
	inc hl			;2912	23 	# 
	ld a,(de)			;2913	1a 	. 
	inc de			;2914	13 	. 
	cp 020h		;2915	fe 20 	.   
	jr z,$-4		;2917	28 fa 	( . 
	or 020h		;2919	f6 20 	.   
	cp (hl)			;291b	be 	. 
	jr z,$-10		;291c	28 f4 	( . 
	or 080h		;291e	f6 80 	. . 
	cp (hl)			;2920	be 	. 
	jr nz,$+8		;2921	20 06 	  . 
	ld a,(de)			;2923	1a 	. 
	call 02c88h		;2924	cd 88 2c 	. . , 
	jr nc,$+23		;2927	30 15 	0 . 
	pop hl			;2929	e1 	. 
	push bc			;292a	c5 	. 
	call 019b8h		;292b	cd b8 19 	. . . 
	ex de,hl			;292e	eb 	. 
	pop bc			;292f	c1 	. 
	jr $-48		;2930	18 ce 	. . 
	set 7,b		;2932	cb f8 	. . 
	pop de			;2934	d1 	. 
	rst 18h			;2935	df 	. 
	cp 028h		;2936	fe 28 	. ( 
	jr z,$+11		;2938	28 09 	( . 
	set 5,b		;293a	cb e8 	. . 
	jr $+15		;293c	18 0d 	. . 
	pop de			;293e	d1 	. 
	pop de			;293f	d1 	. 
	pop de			;2940	d1 	. 
	push hl			;2941	e5 	. 
	rst 18h			;2942	df 	. 
	call 02c88h		;2943	cd 88 2c 	. . , 
	jr nc,$+5		;2946	30 03 	0 . 
	rst 20h			;2948	e7 	. 
	jr $-6		;2949	18 f8 	. . 
	pop hl			;294b	e1 	. 
	rl b		;294c	cb 10 	. . 
	bit 6,b		;294e	cb 70 	. p 
	ret			;2950	c9 	. 
	ld hl,(05c0bh)		;2951	2a 0b 5c 	* . \ 
	ld a,(hl)			;2954	7e 	~ 
	cp 029h		;2955	fe 29 	. ) 
	jp z,028efh		;2957	ca ef 28 	. . ( 
	ld a,(hl)			;295a	7e 	~ 
	or 060h		;295b	f6 60 	. ` 
	ld b,a			;295d	47 	G 
	inc hl			;295e	23 	# 
	ld a,(hl)			;295f	7e 	~ 
	cp 00eh		;2960	fe 0e 	. . 
	jr z,$+9		;2962	28 07 	( . 
	dec hl			;2964	2b 	+ 
	call 028abh		;2965	cd ab 28 	. . ( 
	inc hl			;2968	23 	# 
	res 5,b		;2969	cb a8 	. . 
	ld a,b			;296b	78 	x 
	cp c			;296c	b9 	. 
	jr z,$+20		;296d	28 12 	( . 
	inc hl			;296f	23 	# 
	inc hl			;2970	23 	# 
	inc hl			;2971	23 	# 
	inc hl			;2972	23 	# 
	inc hl			;2973	23 	# 
	call 028abh		;2974	cd ab 28 	. . ( 
	cp 029h		;2977	fe 29 	. ) 
	jp z,028efh		;2979	ca ef 28 	. . ( 
	call 028abh		;297c	cd ab 28 	. . ( 
	jr $-37		;297f	18 d9 	. . 
	bit 5,c		;2981	cb 69 	. i 
	jr nz,$+14		;2983	20 0c 	  . 
	inc hl			;2985	23 	# 
	ld de,(05c65h)		;2986	ed 5b 65 5c 	. [ e \ 
	call 033c0h		;298a	cd c0 33 	. . 3 
	ex de,hl			;298d	eb 	. 
	ld (05c65h),hl		;298e	22 65 5c 	" e \ 
	pop de			;2991	d1 	. 
	pop de			;2992	d1 	. 
	xor a			;2993	af 	. 
	inc a			;2994	3c 	< 
	ret			;2995	c9 	. 
	xor a			;2996	af 	. 
	ld b,a			;2997	47 	G 
	bit 7,c		;2998	cb 79 	. y 
	jr nz,$+77		;299a	20 4b 	  K 
	bit 7,(hl)		;299c	cb 7e 	. ~ 
	jr nz,$+16		;299e	20 0e 	  . 
	inc a			;29a0	3c 	< 
	inc hl			;29a1	23 	# 
	ld c,(hl)			;29a2	4e 	N 
	inc hl			;29a3	23 	# 
	ld b,(hl)			;29a4	46 	F 
	inc hl			;29a5	23 	# 
	ex de,hl			;29a6	eb 	. 
	call 02ab2h		;29a7	cd b2 2a 	. . * 
	rst 18h			;29aa	df 	. 
	jp 02a49h		;29ab	c3 49 2a 	. I * 
	inc hl			;29ae	23 	# 
	inc hl			;29af	23 	# 
	inc hl			;29b0	23 	# 
	ld b,(hl)			;29b1	46 	F 
	bit 6,c		;29b2	cb 71 	. q 
	jr z,$+12		;29b4	28 0a 	( . 
	dec b			;29b6	05 	. 
	jr z,$-22		;29b7	28 e8 	( . 
	ex de,hl			;29b9	eb 	. 
	rst 18h			;29ba	df 	. 
	cp 028h		;29bb	fe 28 	. ( 
	jr nz,$+99		;29bd	20 61 	  a 
	ex de,hl			;29bf	eb 	. 
	ex de,hl			;29c0	eb 	. 
	jr $+38		;29c1	18 24 	. $ 
	push hl			;29c3	e5 	. 
	rst 18h			;29c4	df 	. 
	pop hl			;29c5	e1 	. 
	cp 02ch		;29c6	fe 2c 	. , 
	jr z,$+34		;29c8	28 20 	(   
	bit 7,c		;29ca	cb 79 	. y 
	jr z,$+84		;29cc	28 52 	( R 
	bit 6,c		;29ce	cb 71 	. q 
	jr nz,$+8		;29d0	20 06 	  . 
	cp 029h		;29d2	fe 29 	. ) 
	jr nz,$+62		;29d4	20 3c 	  < 
	rst 20h			;29d6	e7 	. 
	ret			;29d7	c9 	. 
	cp 029h		;29d8	fe 29 	. ) 
	jr z,$+110		;29da	28 6c 	( l 
	cp 0cch		;29dc	fe cc 	. . 
	jr nz,$+52		;29de	20 32 	  2 
	rst 18h			;29e0	df 	. 
	dec hl			;29e1	2b 	+ 
	ld (05c5dh),hl		;29e2	22 5d 5c 	" ] \ 
	jr $+96		;29e5	18 5e 	. ^ 
	ld hl,00000h		;29e7	21 00 00 	! . . 
	push hl			;29ea	e5 	. 
	rst 20h			;29eb	e7 	. 
	pop hl			;29ec	e1 	. 
	ld a,c			;29ed	79 	y 
	cp 0c0h		;29ee	fe c0 	. . 
	jr nz,$+11		;29f0	20 09 	  . 
	rst 18h			;29f2	df 	. 
	cp 029h		;29f3	fe 29 	. ) 
	jr z,$+83		;29f5	28 51 	( Q 
	cp 0cch		;29f7	fe cc 	. . 
	jr z,$-25		;29f9	28 e5 	( . 
	push bc			;29fb	c5 	. 
	push hl			;29fc	e5 	. 
	call 02aeeh		;29fd	cd ee 2a 	. . * 
	ex (sp),hl			;2a00	e3 	. 
	ex de,hl			;2a01	eb 	. 
	call 02acch		;2a02	cd cc 2a 	. . * 
	jr c,$+27		;2a05	38 19 	8 . 
	dec bc			;2a07	0b 	. 
	call 02af4h		;2a08	cd f4 2a 	. . * 
	add hl,bc			;2a0b	09 	. 
	pop de			;2a0c	d1 	. 
	pop bc			;2a0d	c1 	. 
	djnz $-75		;2a0e	10 b3 	. . 
	bit 7,c		;2a10	cb 79 	. y 
	jr nz,$+104		;2a12	20 66 	  f 
	push hl			;2a14	e5 	. 
	bit 6,c		;2a15	cb 71 	. q 
	jr nz,$+21		;2a17	20 13 	  . 
	ld b,d			;2a19	42 	B 
	ld c,e			;2a1a	4b 	K 
	rst 18h			;2a1b	df 	. 
	cp 029h		;2a1c	fe 29 	. ) 
	jr z,$+4		;2a1e	28 02 	( . 
	rst 8			;2a20	cf 	. 
	ld (bc),a			;2a21	02 	. 
	rst 20h			;2a22	e7 	. 
	pop hl			;2a23	e1 	. 
	ld de,00005h		;2a24	11 05 00 	. . . 
	call 02af4h		;2a27	cd f4 2a 	. . * 
	add hl,bc			;2a2a	09 	. 
	ret			;2a2b	c9 	. 
	call 02aeeh		;2a2c	cd ee 2a 	. . * 
	ex (sp),hl			;2a2f	e3 	. 
	call 02af4h		;2a30	cd f4 2a 	. . * 
	pop bc			;2a33	c1 	. 
	add hl,bc			;2a34	09 	. 
	inc hl			;2a35	23 	# 
	ld b,d			;2a36	42 	B 
	ld c,e			;2a37	4b 	K 
	ex de,hl			;2a38	eb 	. 
	call 02ab1h		;2a39	cd b1 2a 	. . * 
	rst 18h			;2a3c	df 	. 
	cp 029h		;2a3d	fe 29 	. ) 
	jr z,$+9		;2a3f	28 07 	( . 
	cp 02ch		;2a41	fe 2c 	. , 
	jr nz,$-35		;2a43	20 db 	  . 
	call 02a52h		;2a45	cd 52 2a 	. R * 
	rst 20h			;2a48	e7 	. 
	cp 028h		;2a49	fe 28 	. ( 
	jr z,$-6		;2a4b	28 f8 	( . 
	res 6,(iy+001h)		;2a4d	fd cb 01 b6 	. . . . 
	ret			;2a51	c9 	. 
	call 02530h		;2a52	cd 30 25 	. 0 % 
	call nz,02bf1h		;2a55	c4 f1 2b 	. . + 
	rst 20h			;2a58	e7 	. 
	cp 029h		;2a59	fe 29 	. ) 
	jr z,$+82		;2a5b	28 50 	( P 
	push de			;2a5d	d5 	. 
	xor a			;2a5e	af 	. 
	push af			;2a5f	f5 	. 
	push bc			;2a60	c5 	. 
	ld de,00001h		;2a61	11 01 00 	. . . 
	rst 18h			;2a64	df 	. 
	pop hl			;2a65	e1 	. 
	cp 0cch		;2a66	fe cc 	. . 
	jr z,$+25		;2a68	28 17 	( . 
	pop af			;2a6a	f1 	. 
	call 02acdh		;2a6b	cd cd 2a 	. . * 
	push af			;2a6e	f5 	. 
	ld d,b			;2a6f	50 	P 
	ld e,c			;2a70	59 	Y 
	push hl			;2a71	e5 	. 
	rst 18h			;2a72	df 	. 
	pop hl			;2a73	e1 	. 
	cp 0cch		;2a74	fe cc 	. . 
	jr z,$+11		;2a76	28 09 	( . 
	cp 029h		;2a78	fe 29 	. ) 
	jp nz,01c8ah		;2a7a	c2 8a 1c 	. . . 
	ld h,d			;2a7d	62 	b 
	ld l,e			;2a7e	6b 	k 
	jr $+21		;2a7f	18 13 	. . 
	push hl			;2a81	e5 	. 
	rst 20h			;2a82	e7 	. 
	pop hl			;2a83	e1 	. 
	cp 029h		;2a84	fe 29 	. ) 
	jr z,$+14		;2a86	28 0c 	( . 
	pop af			;2a88	f1 	. 
	call 02acdh		;2a89	cd cd 2a 	. . * 
	push af			;2a8c	f5 	. 
	rst 18h			;2a8d	df 	. 
	ld h,b			;2a8e	60 	` 
	ld l,c			;2a8f	69 	i 
	cp 029h		;2a90	fe 29 	. ) 
	jr nz,$-24		;2a92	20 e6 	  . 
	pop af			;2a94	f1 	. 
	ex (sp),hl			;2a95	e3 	. 
	add hl,de			;2a96	19 	. 
	dec hl			;2a97	2b 	+ 
	ex (sp),hl			;2a98	e3 	. 
	and a			;2a99	a7 	. 
	sbc hl,de		;2a9a	ed 52 	. R 
	ld bc,00000h		;2a9c	01 00 00 	. . . 
	jr c,$+9		;2a9f	38 07 	8 . 
	inc hl			;2aa1	23 	# 
	and a			;2aa2	a7 	. 
	jp m,02a20h		;2aa3	fa 20 2a 	.   * 
	ld b,h			;2aa6	44 	D 
	ld c,l			;2aa7	4d 	M 
	pop de			;2aa8	d1 	. 
	res 6,(iy+001h)		;2aa9	fd cb 01 b6 	. . . . 
	call 02530h		;2aad	cd 30 25 	. 0 % 
	ret z			;2ab0	c8 	. 
	xor a			;2ab1	af 	. 
	res 6,(iy+001h)		;2ab2	fd cb 01 b6 	. . . . 
	push bc			;2ab6	c5 	. 
	call 033a9h		;2ab7	cd a9 33 	. . 3 
	pop bc			;2aba	c1 	. 
	ld hl,(05c65h)		;2abb	2a 65 5c 	* e \ 
	ld (hl),a			;2abe	77 	w 
	inc hl			;2abf	23 	# 
	ld (hl),e			;2ac0	73 	s 
	inc hl			;2ac1	23 	# 
	ld (hl),d			;2ac2	72 	r 
	inc hl			;2ac3	23 	# 
	ld (hl),c			;2ac4	71 	q 
	inc hl			;2ac5	23 	# 
	ld (hl),b			;2ac6	70 	p 
	inc hl			;2ac7	23 	# 
	ld (05c65h),hl		;2ac8	22 65 5c 	" e \ 
	ret			;2acb	c9 	. 
	xor a			;2acc	af 	. 
	push de			;2acd	d5 	. 
	push hl			;2ace	e5 	. 
	push af			;2acf	f5 	. 
	call 01c82h		;2ad0	cd 82 1c 	. . . 
	pop af			;2ad3	f1 	. 
	call 02530h		;2ad4	cd 30 25 	. 0 % 
	jr z,$+20		;2ad7	28 12 	( . 
	push af			;2ad9	f5 	. 
	call 01e99h		;2ada	cd 99 1e 	. . . 
	pop de			;2add	d1 	. 
	ld a,b			;2ade	78 	x 
	or c			;2adf	b1 	. 
	scf			;2ae0	37 	7 
	jr z,$+7		;2ae1	28 05 	( . 
	pop hl			;2ae3	e1 	. 
	push hl			;2ae4	e5 	. 
	and a			;2ae5	a7 	. 
	sbc hl,bc		;2ae6	ed 42 	. B 
	ld a,d			;2ae8	7a 	z 
	sbc a,000h		;2ae9	de 00 	. . 
	pop hl			;2aeb	e1 	. 
	pop de			;2aec	d1 	. 
	ret			;2aed	c9 	. 
	ex de,hl			;2aee	eb 	. 
	inc hl			;2aef	23 	# 
	ld e,(hl)			;2af0	5e 	^ 
	inc hl			;2af1	23 	# 
	ld d,(hl)			;2af2	56 	V 
	ret			;2af3	c9 	. 
	call 02530h		;2af4	cd 30 25 	. 0 % 
	ret z			;2af7	c8 	. 
	call 030a9h		;2af8	cd a9 30 	. . 0 
	jp c,01f15h		;2afb	da 15 1f 	. . . 
	ret			;2afe	c9 	. 
	ld hl,(05c4dh)		;2aff	2a 4d 5c 	* M \ 
	bit 1,(iy+037h)		;2b02	fd cb 37 4e 	. . 7 N 
	jr z,$+96		;2b06	28 5e 	( ^ 
	ld bc,00005h		;2b08	01 05 00 	. . . 
	inc bc			;2b0b	03 	. 
	inc hl			;2b0c	23 	# 
	ld a,(hl)			;2b0d	7e 	~ 
	cp 020h		;2b0e	fe 20 	.   
	jr z,$-4		;2b10	28 fa 	( . 
	jr nc,$+13		;2b12	30 0b 	0 . 
	cp 010h		;2b14	fe 10 	. . 
	jr c,$+19		;2b16	38 11 	8 . 
	cp 016h		;2b18	fe 16 	. . 
	jr nc,$+15		;2b1a	30 0d 	0 . 
	inc hl			;2b1c	23 	# 
	jr $-17		;2b1d	18 ed 	. . 
	call 02c88h		;2b1f	cd 88 2c 	. . , 
	jr c,$-23		;2b22	38 e7 	8 . 
	cp 024h		;2b24	fe 24 	. $ 
	jp z,02bc0h		;2b26	ca c0 2b 	. . + 
	ld a,c			;2b29	79 	y 
	ld hl,(05c59h)		;2b2a	2a 59 5c 	* Y \ 
	dec hl			;2b2d	2b 	+ 
	call 01655h		;2b2e	cd 55 16 	. U . 
	inc hl			;2b31	23 	# 
	inc hl			;2b32	23 	# 
	ex de,hl			;2b33	eb 	. 
	push de			;2b34	d5 	. 
	ld hl,(05c4dh)		;2b35	2a 4d 5c 	* M \ 
	dec de			;2b38	1b 	. 
	sub 006h		;2b39	d6 06 	. . 
	ld b,a			;2b3b	47 	G 
	jr z,$+19		;2b3c	28 11 	( . 
	inc hl			;2b3e	23 	# 
	ld a,(hl)			;2b3f	7e 	~ 
	cp 021h		;2b40	fe 21 	. ! 
	jr c,$-4		;2b42	38 fa 	8 . 
	or 020h		;2b44	f6 20 	.   
	inc de			;2b46	13 	. 
	ld (de),a			;2b47	12 	. 
	djnz $-10		;2b48	10 f4 	. . 
	or 080h		;2b4a	f6 80 	. . 
	ld (de),a			;2b4c	12 	. 
	ld a,0c0h		;2b4d	3e c0 	> . 
	ld hl,(05c4dh)		;2b4f	2a 4d 5c 	* M \ 
	xor (hl)			;2b52	ae 	. 
	or 020h		;2b53	f6 20 	.   
	pop hl			;2b55	e1 	. 
	call 02beah		;2b56	cd ea 2b 	. . + 
	push hl			;2b59	e5 	. 
	rst 28h			;2b5a	ef 	. 
	ld (bc),a			;2b5b	02 	. 
	jr c,$-29		;2b5c	38 e1 	8 . 
	ld bc,00005h		;2b5e	01 05 00 	. . . 
	and a			;2b61	a7 	. 
	sbc hl,bc		;2b62	ed 42 	. B 
	jr $+66		;2b64	18 40 	. @ 
	bit 6,(iy+001h)		;2b66	fd cb 01 76 	. . . v 
	jr z,$+8		;2b6a	28 06 	( . 
	ld de,00006h		;2b6c	11 06 00 	. . . 
	add hl,de			;2b6f	19 	. 
	jr $-23		;2b70	18 e7 	. . 
	ld hl,(05c4dh)		;2b72	2a 4d 5c 	* M \ 
	ld bc,(05c72h)		;2b75	ed 4b 72 5c 	. K r \ 
	bit 0,(iy+037h)		;2b79	fd cb 37 46 	. . 7 F 
	jr nz,$+50		;2b7d	20 30 	  0 
	ld a,b			;2b7f	78 	x 
	or c			;2b80	b1 	. 
	ret z			;2b81	c8 	. 
	push hl			;2b82	e5 	. 
	rst 30h			;2b83	f7 	. 
	push de			;2b84	d5 	. 
	push bc			;2b85	c5 	. 
	ld d,h			;2b86	54 	T 
	ld e,l			;2b87	5d 	] 
	inc hl			;2b88	23 	# 
	ld (hl),020h		;2b89	36 20 	6   
	lddr		;2b8b	ed b8 	. . 
	push hl			;2b8d	e5 	. 
	call 02bf1h		;2b8e	cd f1 2b 	. . + 
	pop hl			;2b91	e1 	. 
	ex (sp),hl			;2b92	e3 	. 
	and a			;2b93	a7 	. 
	sbc hl,bc		;2b94	ed 42 	. B 
	add hl,bc			;2b96	09 	. 
	jr nc,$+4		;2b97	30 02 	0 . 
	ld b,h			;2b99	44 	D 
	ld c,l			;2b9a	4d 	M 
	ex (sp),hl			;2b9b	e3 	. 
	ex de,hl			;2b9c	eb 	. 
	ld a,b			;2b9d	78 	x 
	or c			;2b9e	b1 	. 
	jr z,$+4		;2b9f	28 02 	( . 
	ldir		;2ba1	ed b0 	. . 
	pop bc			;2ba3	c1 	. 
	pop de			;2ba4	d1 	. 
	pop hl			;2ba5	e1 	. 
	ex de,hl			;2ba6	eb 	. 
	ld a,b			;2ba7	78 	x 
	or c			;2ba8	b1 	. 
	ret z			;2ba9	c8 	. 
	push de			;2baa	d5 	. 
	ldir		;2bab	ed b0 	. . 
	pop hl			;2bad	e1 	. 
	ret			;2bae	c9 	. 
	dec hl			;2baf	2b 	+ 
	dec hl			;2bb0	2b 	+ 
	dec hl			;2bb1	2b 	+ 
	ld a,(hl)			;2bb2	7e 	~ 
	push hl			;2bb3	e5 	. 
	push bc			;2bb4	c5 	. 
	call 02bc6h		;2bb5	cd c6 2b 	. . + 
	pop bc			;2bb8	c1 	. 
	pop hl			;2bb9	e1 	. 
	inc bc			;2bba	03 	. 
	inc bc			;2bbb	03 	. 
	inc bc			;2bbc	03 	. 
	jp 019e8h		;2bbd	c3 e8 19 	. . . 
	ld a,0dfh		;2bc0	3e df 	> . 
	ld hl,(05c4dh)		;2bc2	2a 4d 5c 	* M \ 
	and (hl)			;2bc5	a6 	. 
	push af			;2bc6	f5 	. 
	call 02bf1h		;2bc7	cd f1 2b 	. . + 
	ex de,hl			;2bca	eb 	. 
	add hl,bc			;2bcb	09 	. 
	push bc			;2bcc	c5 	. 
	dec hl			;2bcd	2b 	+ 
	ld (05c4dh),hl		;2bce	22 4d 5c 	" M \ 
	inc bc			;2bd1	03 	. 
	inc bc			;2bd2	03 	. 
	inc bc			;2bd3	03 	. 
	ld hl,(05c59h)		;2bd4	2a 59 5c 	* Y \ 
	dec hl			;2bd7	2b 	+ 
	call 01655h		;2bd8	cd 55 16 	. U . 
	ld hl,(05c4dh)		;2bdb	2a 4d 5c 	* M \ 
	pop bc			;2bde	c1 	. 
	push bc			;2bdf	c5 	. 
	inc bc			;2be0	03 	. 
	lddr		;2be1	ed b8 	. . 
	ex de,hl			;2be3	eb 	. 
	inc hl			;2be4	23 	# 
	pop bc			;2be5	c1 	. 
	ld (hl),b			;2be6	70 	p 
	dec hl			;2be7	2b 	+ 
	ld (hl),c			;2be8	71 	q 
	pop af			;2be9	f1 	. 
	dec hl			;2bea	2b 	+ 
	ld (hl),a			;2beb	77 	w 
	ld hl,(05c59h)		;2bec	2a 59 5c 	* Y \ 
	dec hl			;2bef	2b 	+ 
	ret			;2bf0	c9 	. 
	ld hl,(05c65h)		;2bf1	2a 65 5c 	* e \ 
	dec hl			;2bf4	2b 	+ 
	ld b,(hl)			;2bf5	46 	F 
	dec hl			;2bf6	2b 	+ 
	ld c,(hl)			;2bf7	4e 	N 
	dec hl			;2bf8	2b 	+ 
	ld d,(hl)			;2bf9	56 	V 
	dec hl			;2bfa	2b 	+ 
	ld e,(hl)			;2bfb	5e 	^ 
	dec hl			;2bfc	2b 	+ 
	ld a,(hl)			;2bfd	7e 	~ 
	ld (05c65h),hl		;2bfe	22 65 5c 	" e \ 
	ret			;2c01	c9 	. 
	call 028b2h		;2c02	cd b2 28 	. . ( 
	jp nz,01c8ah		;2c05	c2 8a 1c 	. . . 
	call 02530h		;2c08	cd 30 25 	. 0 % 
	jr nz,$+10		;2c0b	20 08 	  . 
	res 6,c		;2c0d	cb b1 	. . 
	call 02996h		;2c0f	cd 96 29 	. . ) 
	call 01beeh		;2c12	cd ee 1b 	. . . 
	jr c,$+10		;2c15	38 08 	8 . 
	push bc			;2c17	c5 	. 
	call 019b8h		;2c18	cd b8 19 	. . . 
	call 019e8h		;2c1b	cd e8 19 	. . . 
	pop bc			;2c1e	c1 	. 
	set 7,c		;2c1f	cb f9 	. . 
	ld b,000h		;2c21	06 00 	. . 
	push bc			;2c23	c5 	. 
	ld hl,00001h		;2c24	21 01 00 	! . . 
	bit 6,c		;2c27	cb 71 	. q 
	jr nz,$+4		;2c29	20 02 	  . 
	ld l,005h		;2c2b	2e 05 	. . 
	ex de,hl			;2c2d	eb 	. 
	rst 20h			;2c2e	e7 	. 
	ld h,0ffh		;2c2f	26 ff 	& . 
	call 02acch		;2c31	cd cc 2a 	. . * 
	jp c,02a20h		;2c34	da 20 2a 	.   * 
	pop hl			;2c37	e1 	. 
	push bc			;2c38	c5 	. 
	inc h			;2c39	24 	$ 
	push hl			;2c3a	e5 	. 
	ld h,b			;2c3b	60 	` 
	ld l,c			;2c3c	69 	i 
	call 02af4h		;2c3d	cd f4 2a 	. . * 
	ex de,hl			;2c40	eb 	. 
	rst 18h			;2c41	df 	. 
	cp 02ch		;2c42	fe 2c 	. , 
	jr z,$-22		;2c44	28 e8 	( . 
	cp 029h		;2c46	fe 29 	. ) 
	jr nz,$-67		;2c48	20 bb 	  . 
	rst 20h			;2c4a	e7 	. 
	pop bc			;2c4b	c1 	. 
	ld a,c			;2c4c	79 	y 
	ld l,b			;2c4d	68 	h 
	ld h,000h		;2c4e	26 00 	& . 
	inc hl			;2c50	23 	# 
	inc hl			;2c51	23 	# 
	add hl,hl			;2c52	29 	) 
	add hl,de			;2c53	19 	. 
	jp c,01f15h		;2c54	da 15 1f 	. . . 
	push de			;2c57	d5 	. 
	push bc			;2c58	c5 	. 
	push hl			;2c59	e5 	. 
	ld b,h			;2c5a	44 	D 
	ld c,l			;2c5b	4d 	M 
	ld hl,(05c59h)		;2c5c	2a 59 5c 	* Y \ 
	dec hl			;2c5f	2b 	+ 
	call 01655h		;2c60	cd 55 16 	. U . 
	inc hl			;2c63	23 	# 
	ld (hl),a			;2c64	77 	w 
	pop bc			;2c65	c1 	. 
	dec bc			;2c66	0b 	. 
	dec bc			;2c67	0b 	. 
	dec bc			;2c68	0b 	. 
	inc hl			;2c69	23 	# 
	ld (hl),c			;2c6a	71 	q 
	inc hl			;2c6b	23 	# 
	ld (hl),b			;2c6c	70 	p 
	pop bc			;2c6d	c1 	. 
	ld a,b			;2c6e	78 	x 
	inc hl			;2c6f	23 	# 
	ld (hl),a			;2c70	77 	w 
	ld h,d			;2c71	62 	b 
	ld l,e			;2c72	6b 	k 
	dec de			;2c73	1b 	. 
	ld (hl),000h		;2c74	36 00 	6 . 
	bit 6,c		;2c76	cb 71 	. q 
	jr z,$+4		;2c78	28 02 	( . 
	ld (hl),020h		;2c7a	36 20 	6   
	pop bc			;2c7c	c1 	. 
	lddr		;2c7d	ed b8 	. . 
	pop bc			;2c7f	c1 	. 
	ld (hl),b			;2c80	70 	p 
	dec hl			;2c81	2b 	+ 
	ld (hl),c			;2c82	71 	q 
	dec hl			;2c83	2b 	+ 
	dec a			;2c84	3d 	= 
	jr nz,$-6		;2c85	20 f8 	  . 
	ret			;2c87	c9 	. 
	call 02d1bh		;2c88	cd 1b 2d 	. . - 
	ccf			;2c8b	3f 	? 
	ret c			;2c8c	d8 	. 
	cp 041h		;2c8d	fe 41 	. A 
	ccf			;2c8f	3f 	? 
	ret nc			;2c90	d0 	. 
	cp 05bh		;2c91	fe 5b 	. [ 
	ret c			;2c93	d8 	. 
	cp 061h		;2c94	fe 61 	. a 
	ccf			;2c96	3f 	? 
	ret nc			;2c97	d0 	. 
	cp 07bh		;2c98	fe 7b 	. { 
	ret			;2c9a	c9 	. 
	cp 0c4h		;2c9b	fe c4 	. . 
	jr nz,$+27		;2c9d	20 19 	  . 
	ld de,00000h		;2c9f	11 00 00 	. . . 
	rst 20h			;2ca2	e7 	. 
	sub 031h		;2ca3	d6 31 	. 1 
	adc a,000h		;2ca5	ce 00 	. . 
	jr nz,$+12		;2ca7	20 0a 	  . 
	ex de,hl			;2ca9	eb 	. 
	ccf			;2caa	3f 	? 
	adc hl,hl		;2cab	ed 6a 	. j 
	jp c,031adh		;2cad	da ad 31 	. . 1 
	ex de,hl			;2cb0	eb 	. 
	jr $-15		;2cb1	18 ef 	. . 
	ld b,d			;2cb3	42 	B 
	ld c,e			;2cb4	4b 	K 
	jp 02d2bh		;2cb5	c3 2b 2d 	. + - 
	cp 02eh		;2cb8	fe 2e 	. . 
	jr z,$+17		;2cba	28 0f 	( . 
	call 02d3bh		;2cbc	cd 3b 2d 	. ; - 
	cp 02eh		;2cbf	fe 2e 	. . 
	jr nz,$+42		;2cc1	20 28 	  ( 
	rst 20h			;2cc3	e7 	. 
	call 02d1bh		;2cc4	cd 1b 2d 	. . - 
	jr c,$+36		;2cc7	38 22 	8 " 
	jr $+12		;2cc9	18 0a 	. . 
	rst 20h			;2ccb	e7 	. 
	call 02d1bh		;2ccc	cd 1b 2d 	. . - 
	jp c,01c8ah		;2ccf	da 8a 1c 	. . . 
	rst 28h			;2cd2	ef 	. 
	and b			;2cd3	a0 	. 
	jr c,$-15		;2cd4	38 ef 	8 . 
	and c			;2cd6	a1 	. 
	ret nz			;2cd7	c0 	. 
	ld (bc),a			;2cd8	02 	. 
	jr c,$-31		;2cd9	38 df 	8 . 
	call 02d22h		;2cdb	cd 22 2d 	. " - 
	jr c,$+13		;2cde	38 0b 	8 . 
	rst 28h			;2ce0	ef 	. 
	ret po			;2ce1	e0 	. 
	and h			;2ce2	a4 	. 
	dec b			;2ce3	05 	. 
	ret nz			;2ce4	c0 	. 
	inc b			;2ce5	04 	. 
	rrca			;2ce6	0f 	. 
	jr c,$-23		;2ce7	38 e7 	8 . 
	jr $-15		;2ce9	18 ef 	. . 
	cp 045h		;2ceb	fe 45 	. E 
	jr z,$+5		;2ced	28 03 	( . 
	cp 065h		;2cef	fe 65 	. e 
	ret nz			;2cf1	c0 	. 
	ld b,0ffh		;2cf2	06 ff 	. . 
	rst 20h			;2cf4	e7 	. 
	cp 02bh		;2cf5	fe 2b 	. + 
	jr z,$+7		;2cf7	28 05 	( . 
	cp 02dh		;2cf9	fe 2d 	. - 
	jr nz,$+4		;2cfb	20 02 	  . 
	inc b			;2cfd	04 	. 
	rst 20h			;2cfe	e7 	. 
	call 02d1bh		;2cff	cd 1b 2d 	. . - 
	jr c,$-51		;2d02	38 cb 	8 . 
	push bc			;2d04	c5 	. 
	call 02d3bh		;2d05	cd 3b 2d 	. ; - 
	call 02dd5h		;2d08	cd d5 2d 	. . - 
	pop bc			;2d0b	c1 	. 
	jp c,031adh		;2d0c	da ad 31 	. . 1 
	and a			;2d0f	a7 	. 
	jp m,031adh		;2d10	fa ad 31 	. . 1 
	inc b			;2d13	04 	. 
	jr z,$+4		;2d14	28 02 	( . 
	neg		;2d16	ed 44 	. D 
	jp 02d4fh		;2d18	c3 4f 2d 	. O - 
	cp 030h		;2d1b	fe 30 	. 0 
	ret c			;2d1d	d8 	. 
	cp 03ah		;2d1e	fe 3a 	. : 
	ccf			;2d20	3f 	? 
	ret			;2d21	c9 	. 
	call 02d1bh		;2d22	cd 1b 2d 	. . - 
	ret c			;2d25	d8 	. 
	sub 030h		;2d26	d6 30 	. 0 
	ld c,a			;2d28	4f 	O 
	ld b,000h		;2d29	06 00 	. . 
	ld iy,05c3ah		;2d2b	fd 21 3a 5c 	. ! : \ 
	xor a			;2d2f	af 	. 
	ld e,a			;2d30	5f 	_ 
	ld d,c			;2d31	51 	Q 
	ld c,b			;2d32	48 	H 
	ld b,a			;2d33	47 	G 
	call 02ab6h		;2d34	cd b6 2a 	. . * 
	rst 28h			;2d37	ef 	. 
	jr c,$-87		;2d38	38 a7 	8 . 
	ret			;2d3a	c9 	. 
	push af			;2d3b	f5 	. 
	rst 28h			;2d3c	ef 	. 
	and b			;2d3d	a0 	. 
	jr c,$-13		;2d3e	38 f1 	8 . 
	call 02d22h		;2d40	cd 22 2d 	. " - 
	ret c			;2d43	d8 	. 
	rst 28h			;2d44	ef 	. 
	ld bc,004a4h		;2d45	01 a4 04 	. . . 
	rrca			;2d48	0f 	. 
	jr c,$-49		;2d49	38 cd 	8 . 
	ld (hl),h			;2d4b	74 	t 
	nop			;2d4c	00 	. 
	jr $-13		;2d4d	18 f1 	. . 
	rlca			;2d4f	07 	. 
	rrca			;2d50	0f 	. 
	jr nc,$+4		;2d51	30 02 	0 . 
	cpl			;2d53	2f 	/ 
	inc a			;2d54	3c 	< 
	push af			;2d55	f5 	. 
	ld hl,05c92h		;2d56	21 92 5c 	! . \ 
	call 0350bh		;2d59	cd 0b 35 	. . 5 
	rst 28h			;2d5c	ef 	. 
	and h			;2d5d	a4 	. 
	jr c,$-13		;2d5e	38 f1 	8 . 
	srl a		;2d60	cb 3f 	. ? 
	jr nc,$+15		;2d62	30 0d 	0 . 
	push af			;2d64	f5 	. 
	rst 28h			;2d65	ef 	. 
	pop bc			;2d66	c1 	. 
	ret po			;2d67	e0 	. 
	nop			;2d68	00 	. 
	inc b			;2d69	04 	. 
	inc b			;2d6a	04 	. 
	inc sp			;2d6b	33 	3 
	ld (bc),a			;2d6c	02 	. 
	dec b			;2d6d	05 	. 
	pop hl			;2d6e	e1 	. 
	jr c,$-13		;2d6f	38 f1 	8 . 
	jr z,$+10		;2d71	28 08 	( . 
	push af			;2d73	f5 	. 
	rst 28h			;2d74	ef 	. 
	ld sp,03804h		;2d75	31 04 38 	1 . 8 
	pop af			;2d78	f1 	. 
	jr $-25		;2d79	18 e5 	. . 
	rst 28h			;2d7b	ef 	. 
	ld (bc),a			;2d7c	02 	. 
	jr c,$-53		;2d7d	38 c9 	8 . 
	inc hl			;2d7f	23 	# 
	ld c,(hl)			;2d80	4e 	N 
	inc hl			;2d81	23 	# 
	ld a,(hl)			;2d82	7e 	~ 
	xor c			;2d83	a9 	. 
	sub c			;2d84	91 	. 
	ld e,a			;2d85	5f 	_ 
	inc hl			;2d86	23 	# 
	ld a,(hl)			;2d87	7e 	~ 
	adc a,c			;2d88	89 	. 
	xor c			;2d89	a9 	. 
	ld d,a			;2d8a	57 	W 
	ret			;2d8b	c9 	. 
	ld c,000h		;2d8c	0e 00 	. . 
	push hl			;2d8e	e5 	. 
	ld (hl),000h		;2d8f	36 00 	6 . 
	inc hl			;2d91	23 	# 
	ld (hl),c			;2d92	71 	q 
	inc hl			;2d93	23 	# 
	ld a,e			;2d94	7b 	{ 
	xor c			;2d95	a9 	. 
	sub c			;2d96	91 	. 
	ld (hl),a			;2d97	77 	w 
	inc hl			;2d98	23 	# 
	ld a,d			;2d99	7a 	z 
	adc a,c			;2d9a	89 	. 
	xor c			;2d9b	a9 	. 
	ld (hl),a			;2d9c	77 	w 
	inc hl			;2d9d	23 	# 
	ld (hl),000h		;2d9e	36 00 	6 . 
	pop hl			;2da0	e1 	. 
	ret			;2da1	c9 	. 
	rst 28h			;2da2	ef 	. 
	jr c,$+128		;2da3	38 7e 	8 ~ 
	and a			;2da5	a7 	. 
	jr z,$+7		;2da6	28 05 	( . 
	rst 28h			;2da8	ef 	. 
	and d			;2da9	a2 	. 
	rrca			;2daa	0f 	. 
	daa			;2dab	27 	' 
	jr c,$-15		;2dac	38 ef 	8 . 
	ld (bc),a			;2dae	02 	. 
	jr c,$-25		;2daf	38 e5 	8 . 
	push de			;2db1	d5 	. 
	ex de,hl			;2db2	eb 	. 
	ld b,(hl)			;2db3	46 	F 
	call 02d7fh		;2db4	cd 7f 2d 	.  - 
	xor a			;2db7	af 	. 
	sub b			;2db8	90 	. 
	bit 7,c		;2db9	cb 79 	. y 
	ld b,d			;2dbb	42 	B 
	ld c,e			;2dbc	4b 	K 
	ld a,e			;2dbd	7b 	{ 
	pop de			;2dbe	d1 	. 
	pop hl			;2dbf	e1 	. 
	ret			;2dc0	c9 	. 
	ld d,a			;2dc1	57 	W 
	rla			;2dc2	17 	. 
	sbc a,a			;2dc3	9f 	. 
	ld e,a			;2dc4	5f 	_ 
	ld c,a			;2dc5	4f 	O 
	xor a			;2dc6	af 	. 
	ld b,a			;2dc7	47 	G 
	call 02ab6h		;2dc8	cd b6 2a 	. . * 
	rst 28h			;2dcb	ef 	. 
	inc (hl)			;2dcc	34 	4 
	rst 28h			;2dcd	ef 	. 
	ld a,(de)			;2dce	1a 	. 
	jr nz,$-100		;2dcf	20 9a 	  . 
	add a,l			;2dd1	85 	. 
	inc b			;2dd2	04 	. 
	daa			;2dd3	27 	' 
	jr c,$-49		;2dd4	38 cd 	8 . 
	and d			;2dd6	a2 	. 
	dec l			;2dd7	2d 	- 
	ret c			;2dd8	d8 	. 
	push af			;2dd9	f5 	. 
	dec b			;2dda	05 	. 
	inc b			;2ddb	04 	. 
	jr z,$+5		;2ddc	28 03 	( . 
	pop af			;2dde	f1 	. 
	scf			;2ddf	37 	7 
	ret			;2de0	c9 	. 
	pop af			;2de1	f1 	. 
	ret			;2de2	c9 	. 
	rst 28h			;2de3	ef 	. 
	ld sp,00036h		;2de4	31 36 00 	1 6 . 
	dec bc			;2de7	0b 	. 
	ld sp,00037h		;2de8	31 37 00 	1 7 . 
	dec c			;2deb	0d 	. 
	ld (bc),a			;2dec	02 	. 
	jr c,$+64		;2ded	38 3e 	8 > 
	jr nc,$-39		;2def	30 d7 	0 . 
	ret			;2df1	c9 	. 
	ld hl,(03e38h)		;2df2	2a 38 3e 	* 8 > 
	dec l			;2df5	2d 	- 
	rst 10h			;2df6	d7 	. 
	rst 28h			;2df7	ef 	. 
	and b			;2df8	a0 	. 
	jp 0c5c4h		;2df9	c3 c4 c5 	. . . 
	ld (bc),a			;2dfc	02 	. 
	jr c,$-37		;2dfd	38 d9 	8 . 
	push hl			;2dff	e5 	. 
	exx			;2e00	d9 	. 
	rst 28h			;2e01	ef 	. 
	ld sp,0c227h		;2e02	31 27 c2 	1 ' . 
	inc bc			;2e05	03 	. 
	jp po,0c201h		;2e06	e2 01 c2 	. . . 
	ld (bc),a			;2e09	02 	. 
	jr c,$+128		;2e0a	38 7e 	8 ~ 
	and a			;2e0c	a7 	. 
	jr nz,$+73		;2e0d	20 47 	  G 
	call 02d7fh		;2e0f	cd 7f 2d 	.  - 
	ld b,010h		;2e12	06 10 	. . 
	ld a,d			;2e14	7a 	z 
	and a			;2e15	a7 	. 
	jr nz,$+8		;2e16	20 06 	  . 
	or e			;2e18	b3 	. 
	jr z,$+11		;2e19	28 09 	( . 
	ld d,e			;2e1b	53 	S 
	ld b,008h		;2e1c	06 08 	. . 
	push de			;2e1e	d5 	. 
	exx			;2e1f	d9 	. 
	pop de			;2e20	d1 	. 
	exx			;2e21	d9 	. 
	jr $+89		;2e22	18 57 	. W 
	rst 28h			;2e24	ef 	. 
	jp po,07e38h		;2e25	e2 38 7e 	. 8 ~ 
	sub 07eh		;2e28	d6 7e 	. ~ 
	call 02dc1h		;2e2a	cd c1 2d 	. . - 
	ld d,a			;2e2d	57 	W 
	ld a,(05cach)		;2e2e	3a ac 5c 	: . \ 
	sub d			;2e31	92 	. 
	ld (05cach),a		;2e32	32 ac 5c 	2 . \ 
	ld a,d			;2e35	7a 	z 
	call 02d4fh		;2e36	cd 4f 2d 	. O - 
	rst 28h			;2e39	ef 	. 
	ld sp,0c127h		;2e3a	31 27 c1 	1 ' . 
	inc bc			;2e3d	03 	. 
	pop hl			;2e3e	e1 	. 
	jr c,$-49		;2e3f	38 cd 	8 . 
	push de			;2e41	d5 	. 
	dec l			;2e42	2d 	- 
	push hl			;2e43	e5 	. 
	ld (05ca1h),a		;2e44	32 a1 5c 	2 . \ 
	dec a			;2e47	3d 	= 
	rla			;2e48	17 	. 
	sbc a,a			;2e49	9f 	. 
	inc a			;2e4a	3c 	< 
	ld hl,05cabh		;2e4b	21 ab 5c 	! . \ 
	ld (hl),a			;2e4e	77 	w 
	inc hl			;2e4f	23 	# 
	add a,(hl)			;2e50	86 	. 
	ld (hl),a			;2e51	77 	w 
	pop hl			;2e52	e1 	. 
	jp 02ecfh		;2e53	c3 cf 2e 	. . . 
	sub 080h		;2e56	d6 80 	. . 
	cp 01ch		;2e58	fe 1c 	. . 
	jr c,$+21		;2e5a	38 13 	8 . 
	call 02dc1h		;2e5c	cd c1 2d 	. . - 
	sub 007h		;2e5f	d6 07 	. . 
	ld b,a			;2e61	47 	G 
	ld hl,05cach		;2e62	21 ac 5c 	! . \ 
	add a,(hl)			;2e65	86 	. 
	ld (hl),a			;2e66	77 	w 
	ld a,b			;2e67	78 	x 
	neg		;2e68	ed 44 	. D 
	call 02d4fh		;2e6a	cd 4f 2d 	. O - 
	jr $-108		;2e6d	18 92 	. . 
	ex de,hl			;2e6f	eb 	. 
	call 02fbah		;2e70	cd ba 2f 	. . / 
	exx			;2e73	d9 	. 
	set 7,d		;2e74	cb fa 	. . 
	ld a,l			;2e76	7d 	} 
	exx			;2e77	d9 	. 
	sub 080h		;2e78	d6 80 	. . 
	ld b,a			;2e7a	47 	G 
	sla e		;2e7b	cb 23 	. # 
	rl d		;2e7d	cb 12 	. . 
	exx			;2e7f	d9 	. 
	rl e		;2e80	cb 13 	. . 
	rl d		;2e82	cb 12 	. . 
	exx			;2e84	d9 	. 
	ld hl,05caah		;2e85	21 aa 5c 	! . \ 
	ld c,005h		;2e88	0e 05 	. . 
	ld a,(hl)			;2e8a	7e 	~ 
	adc a,a			;2e8b	8f 	. 
	daa			;2e8c	27 	' 
	ld (hl),a			;2e8d	77 	w 
	dec hl			;2e8e	2b 	+ 
	dec c			;2e8f	0d 	. 
	jr nz,$-6		;2e90	20 f8 	  . 
	djnz $-23		;2e92	10 e7 	. . 
	xor a			;2e94	af 	. 
	ld hl,05ca6h		;2e95	21 a6 5c 	! . \ 
	ld de,05ca1h		;2e98	11 a1 5c 	. . \ 
	ld b,009h		;2e9b	06 09 	. . 
	rld		;2e9d	ed 6f 	. o 
	ld c,0ffh		;2e9f	0e ff 	. . 
	rld		;2ea1	ed 6f 	. o 
	jr nz,$+6		;2ea3	20 04 	  . 
	dec c			;2ea5	0d 	. 
	inc c			;2ea6	0c 	. 
	jr nz,$+12		;2ea7	20 0a 	  . 
	ld (de),a			;2ea9	12 	. 
	inc de			;2eaa	13 	. 
	inc (iy+071h)		;2eab	fd 34 71 	. 4 q 
	inc (iy+072h)		;2eae	fd 34 72 	. 4 r 
	ld c,000h		;2eb1	0e 00 	. . 
	bit 0,b		;2eb3	cb 40 	. @ 
	jr z,$+3		;2eb5	28 01 	( . 
	inc hl			;2eb7	23 	# 
	djnz $-23		;2eb8	10 e7 	. . 
	ld a,(05cabh)		;2eba	3a ab 5c 	: . \ 
	sub 009h		;2ebd	d6 09 	. . 
	jr c,$+12		;2ebf	38 0a 	8 . 
	dec (iy+071h)		;2ec1	fd 35 71 	. 5 q 
	ld a,004h		;2ec4	3e 04 	> . 
	cp (iy+06fh)		;2ec6	fd be 6f 	. . o 
	jr $+67		;2ec9	18 41 	. A 
	rst 28h			;2ecb	ef 	. 
	ld (bc),a			;2ecc	02 	. 
	jp po,0eb38h		;2ecd	e2 38 eb 	. 8 . 
	call 02fbah		;2ed0	cd ba 2f 	. . / 
	exx			;2ed3	d9 	. 
	ld a,080h		;2ed4	3e 80 	> . 
	sub l			;2ed6	95 	. 
	ld l,000h		;2ed7	2e 00 	. . 
	set 7,d		;2ed9	cb fa 	. . 
	exx			;2edb	d9 	. 
	call 02fddh		;2edc	cd dd 2f 	. . / 
	ld a,(iy+071h)		;2edf	fd 7e 71 	. ~ q 
	cp 008h		;2ee2	fe 08 	. . 
	jr c,$+8		;2ee4	38 06 	8 . 
	exx			;2ee6	d9 	. 
	rl d		;2ee7	cb 12 	. . 
	exx			;2ee9	d9 	. 
	jr $+34		;2eea	18 20 	.   
	ld bc,00200h		;2eec	01 00 02 	. . . 
	ld a,e			;2eef	7b 	{ 
	call 02f8bh		;2ef0	cd 8b 2f 	. . / 
	ld e,a			;2ef3	5f 	_ 
	ld a,d			;2ef4	7a 	z 
	call 02f8bh		;2ef5	cd 8b 2f 	. . / 
	ld d,a			;2ef8	57 	W 
	push bc			;2ef9	c5 	. 
	exx			;2efa	d9 	. 
	pop bc			;2efb	c1 	. 
	djnz $-13		;2efc	10 f1 	. . 
	ld hl,05ca1h		;2efe	21 a1 5c 	! . \ 
	ld a,c			;2f01	79 	y 
	ld c,(iy+071h)		;2f02	fd 4e 71 	. N q 
	add hl,bc			;2f05	09 	. 
	ld (hl),a			;2f06	77 	w 
	inc (iy+071h)		;2f07	fd 34 71 	. 4 q 
	jr $-43		;2f0a	18 d3 	. . 
	push af			;2f0c	f5 	. 
	ld hl,05ca1h		;2f0d	21 a1 5c 	! . \ 
	ld c,(iy+071h)		;2f10	fd 4e 71 	. N q 
	ld b,000h		;2f13	06 00 	. . 
	add hl,bc			;2f15	09 	. 
	ld b,c			;2f16	41 	A 
	pop af			;2f17	f1 	. 
	dec hl			;2f18	2b 	+ 
	ld a,(hl)			;2f19	7e 	~ 
	adc a,000h		;2f1a	ce 00 	. . 
	ld (hl),a			;2f1c	77 	w 
	and a			;2f1d	a7 	. 
	jr z,$+7		;2f1e	28 05 	( . 
	cp 00ah		;2f20	fe 0a 	. . 
	ccf			;2f22	3f 	? 
	jr nc,$+10		;2f23	30 08 	0 . 
	djnz $-13		;2f25	10 f1 	. . 
	ld (hl),001h		;2f27	36 01 	6 . 
	inc b			;2f29	04 	. 
	inc (iy+072h)		;2f2a	fd 34 72 	. 4 r 
	ld (iy+071h),b		;2f2d	fd 70 71 	. p q 
	rst 28h			;2f30	ef 	. 
	ld (bc),a			;2f31	02 	. 
	jr c,$-37		;2f32	38 d9 	8 . 
	pop hl			;2f34	e1 	. 
	exx			;2f35	d9 	. 
	ld bc,(05cabh)		;2f36	ed 4b ab 5c 	. K . \ 
	ld hl,05ca1h		;2f3a	21 a1 5c 	! . \ 
	ld a,b			;2f3d	78 	x 
	cp 009h		;2f3e	fe 09 	. . 
	jr c,$+6		;2f40	38 04 	8 . 
	cp 0fch		;2f42	fe fc 	. . 
	jr c,$+40		;2f44	38 26 	8 & 
	and a			;2f46	a7 	. 
	call z,015efh		;2f47	cc ef 15 	. . . 
	xor a			;2f4a	af 	. 
	sub b			;2f4b	90 	. 
	jp m,02f52h		;2f4c	fa 52 2f 	. R / 
	ld b,a			;2f4f	47 	G 
	jr $+14		;2f50	18 0c 	. . 
	ld a,c			;2f52	79 	y 
	and a			;2f53	a7 	. 
	jr z,$+5		;2f54	28 03 	( . 
	ld a,(hl)			;2f56	7e 	~ 
	inc hl			;2f57	23 	# 
	dec c			;2f58	0d 	. 
	call 015efh		;2f59	cd ef 15 	. . . 
	djnz $-10		;2f5c	10 f4 	. . 
	ld a,c			;2f5e	79 	y 
	and a			;2f5f	a7 	. 
	ret z			;2f60	c8 	. 
	inc b			;2f61	04 	. 
	ld a,02eh		;2f62	3e 2e 	> . 
	rst 10h			;2f64	d7 	. 
	ld a,030h		;2f65	3e 30 	> 0 
	djnz $-3		;2f67	10 fb 	. . 
	ld b,c			;2f69	41 	A 
	jr $-24		;2f6a	18 e6 	. . 
	ld d,b			;2f6c	50 	P 
	dec d			;2f6d	15 	. 
	ld b,001h		;2f6e	06 01 	. . 
	call 02f4ah		;2f70	cd 4a 2f 	. J / 
	ld a,045h		;2f73	3e 45 	> E 
	rst 10h			;2f75	d7 	. 
	ld c,d			;2f76	4a 	J 
	ld a,c			;2f77	79 	y 
	and a			;2f78	a7 	. 
	jp p,02f83h		;2f79	f2 83 2f 	. . / 
	neg		;2f7c	ed 44 	. D 
	ld c,a			;2f7e	4f 	O 
	ld a,02dh		;2f7f	3e 2d 	> - 
	jr $+4		;2f81	18 02 	. . 
	ld a,02bh		;2f83	3e 2b 	> + 
	rst 10h			;2f85	d7 	. 
	ld b,000h		;2f86	06 00 	. . 
	jp 01a1bh		;2f88	c3 1b 1a 	. . . 
	push de			;2f8b	d5 	. 
	ld l,a			;2f8c	6f 	o 
	ld h,000h		;2f8d	26 00 	& . 
	ld e,l			;2f8f	5d 	] 
	ld d,h			;2f90	54 	T 
	add hl,hl			;2f91	29 	) 
	add hl,hl			;2f92	29 	) 
	add hl,de			;2f93	19 	. 
	add hl,hl			;2f94	29 	) 
	ld e,c			;2f95	59 	Y 
	add hl,de			;2f96	19 	. 
	ld c,h			;2f97	4c 	L 
	ld a,l			;2f98	7d 	} 
	pop de			;2f99	d1 	. 
	ret			;2f9a	c9 	. 
	ld a,(hl)			;2f9b	7e 	~ 
	ld (hl),000h		;2f9c	36 00 	6 . 
	and a			;2f9e	a7 	. 
	ret z			;2f9f	c8 	. 
	inc hl			;2fa0	23 	# 
	bit 7,(hl)		;2fa1	cb 7e 	. ~ 
	set 7,(hl)		;2fa3	cb fe 	. . 
	dec hl			;2fa5	2b 	+ 
	ret z			;2fa6	c8 	. 
	push bc			;2fa7	c5 	. 
	ld bc,00005h		;2fa8	01 05 00 	. . . 
	add hl,bc			;2fab	09 	. 
	ld b,c			;2fac	41 	A 
	ld c,a			;2fad	4f 	O 
	scf			;2fae	37 	7 
	dec hl			;2faf	2b 	+ 
	ld a,(hl)			;2fb0	7e 	~ 
	cpl			;2fb1	2f 	/ 
	adc a,000h		;2fb2	ce 00 	. . 
	ld (hl),a			;2fb4	77 	w 
	djnz $-6		;2fb5	10 f8 	. . 
	ld a,c			;2fb7	79 	y 
	pop bc			;2fb8	c1 	. 
	ret			;2fb9	c9 	. 
	push hl			;2fba	e5 	. 
	push af			;2fbb	f5 	. 
	ld c,(hl)			;2fbc	4e 	N 
	inc hl			;2fbd	23 	# 
	ld b,(hl)			;2fbe	46 	F 
	ld (hl),a			;2fbf	77 	w 
	inc hl			;2fc0	23 	# 
	ld a,c			;2fc1	79 	y 
	ld c,(hl)			;2fc2	4e 	N 
	push bc			;2fc3	c5 	. 
	inc hl			;2fc4	23 	# 
	ld c,(hl)			;2fc5	4e 	N 
	inc hl			;2fc6	23 	# 
	ld b,(hl)			;2fc7	46 	F 
	ex de,hl			;2fc8	eb 	. 
	ld d,a			;2fc9	57 	W 
	ld e,(hl)			;2fca	5e 	^ 
	push de			;2fcb	d5 	. 
	inc hl			;2fcc	23 	# 
	ld d,(hl)			;2fcd	56 	V 
	inc hl			;2fce	23 	# 
	ld e,(hl)			;2fcf	5e 	^ 
	push de			;2fd0	d5 	. 
	exx			;2fd1	d9 	. 
	pop de			;2fd2	d1 	. 
	pop hl			;2fd3	e1 	. 
	pop bc			;2fd4	c1 	. 
	exx			;2fd5	d9 	. 
	inc hl			;2fd6	23 	# 
	ld d,(hl)			;2fd7	56 	V 
	inc hl			;2fd8	23 	# 
	ld e,(hl)			;2fd9	5e 	^ 
	pop af			;2fda	f1 	. 
	pop hl			;2fdb	e1 	. 
	ret			;2fdc	c9 	. 
	and a			;2fdd	a7 	. 
	ret z			;2fde	c8 	. 
	cp 021h		;2fdf	fe 21 	. ! 
	jr nc,$+24		;2fe1	30 16 	0 . 
	push bc			;2fe3	c5 	. 
	ld b,a			;2fe4	47 	G 
	exx			;2fe5	d9 	. 
	sra l		;2fe6	cb 2d 	. - 
	rr d		;2fe8	cb 1a 	. . 
	rr e		;2fea	cb 1b 	. . 
	exx			;2fec	d9 	. 
	rr d		;2fed	cb 1a 	. . 
	rr e		;2fef	cb 1b 	. . 
	djnz $-12		;2ff1	10 f2 	. . 
	pop bc			;2ff3	c1 	. 
	ret nc			;2ff4	d0 	. 
	call 03004h		;2ff5	cd 04 30 	. . 0 
	ret nz			;2ff8	c0 	. 
	exx			;2ff9	d9 	. 
	xor a			;2ffa	af 	. 
	ld l,000h		;2ffb	2e 00 	. . 
	ld d,a			;2ffd	57 	W 
	ld e,l			;2ffe	5d 	] 
	exx			;2fff	d9 	. 
	ld de,00000h		;3000	11 00 00 	. . . 
	ret			;3003	c9 	. 
	inc e			;3004	1c 	. 
	ret nz			;3005	c0 	. 
	inc d			;3006	14 	. 
	ret nz			;3007	c0 	. 
	exx			;3008	d9 	. 
	inc e			;3009	1c 	. 
	jr nz,$+3		;300a	20 01 	  . 
	inc d			;300c	14 	. 
	exx			;300d	d9 	. 
	ret			;300e	c9 	. 
	ex de,hl			;300f	eb 	. 
	call 0346eh		;3010	cd 6e 34 	. n 4 
	ex de,hl			;3013	eb 	. 
	ld a,(de)			;3014	1a 	. 
	or (hl)			;3015	b6 	. 
	jr nz,$+40		;3016	20 26 	  & 
	push de			;3018	d5 	. 
	inc hl			;3019	23 	# 
	push hl			;301a	e5 	. 
	inc hl			;301b	23 	# 
	ld e,(hl)			;301c	5e 	^ 
	inc hl			;301d	23 	# 
	ld d,(hl)			;301e	56 	V 
	inc hl			;301f	23 	# 
	inc hl			;3020	23 	# 
	inc hl			;3021	23 	# 
	ld a,(hl)			;3022	7e 	~ 
	inc hl			;3023	23 	# 
	ld c,(hl)			;3024	4e 	N 
	inc hl			;3025	23 	# 
	ld b,(hl)			;3026	46 	F 
	pop hl			;3027	e1 	. 
	ex de,hl			;3028	eb 	. 
	add hl,bc			;3029	09 	. 
	ex de,hl			;302a	eb 	. 
	adc a,(hl)			;302b	8e 	. 
	rrca			;302c	0f 	. 
	adc a,000h		;302d	ce 00 	. . 
	jr nz,$+13		;302f	20 0b 	  . 
	sbc a,a			;3031	9f 	. 
	ld (hl),a			;3032	77 	w 
	inc hl			;3033	23 	# 
	ld (hl),e			;3034	73 	s 
	inc hl			;3035	23 	# 
	ld (hl),d			;3036	72 	r 
	dec hl			;3037	2b 	+ 
	dec hl			;3038	2b 	+ 
	dec hl			;3039	2b 	+ 
	pop de			;303a	d1 	. 
	ret			;303b	c9 	. 
	dec hl			;303c	2b 	+ 
	pop de			;303d	d1 	. 
	call 03293h		;303e	cd 93 32 	. . 2 
	exx			;3041	d9 	. 
	push hl			;3042	e5 	. 
	exx			;3043	d9 	. 
	push de			;3044	d5 	. 
	push hl			;3045	e5 	. 
	call 02f9bh		;3046	cd 9b 2f 	. . / 
	ld b,a			;3049	47 	G 
	ex de,hl			;304a	eb 	. 
	call 02f9bh		;304b	cd 9b 2f 	. . / 
	ld c,a			;304e	4f 	O 
	cp b			;304f	b8 	. 
	jr nc,$+5		;3050	30 03 	0 . 
	ld a,b			;3052	78 	x 
	ld b,c			;3053	41 	A 
	ex de,hl			;3054	eb 	. 
	push af			;3055	f5 	. 
	sub b			;3056	90 	. 
	call 02fbah		;3057	cd ba 2f 	. . / 
	call 02fddh		;305a	cd dd 2f 	. . / 
	pop af			;305d	f1 	. 
	pop hl			;305e	e1 	. 
	ld (hl),a			;305f	77 	w 
	push hl			;3060	e5 	. 
	ld l,b			;3061	68 	h 
	ld h,c			;3062	61 	a 
	add hl,de			;3063	19 	. 
	exx			;3064	d9 	. 
	ex de,hl			;3065	eb 	. 
	adc hl,bc		;3066	ed 4a 	. J 
	ex de,hl			;3068	eb 	. 
	ld a,h			;3069	7c 	| 
	adc a,l			;306a	8d 	. 
	ld l,a			;306b	6f 	o 
	rra			;306c	1f 	. 
	xor l			;306d	ad 	. 
	exx			;306e	d9 	. 
	ex de,hl			;306f	eb 	. 
	pop hl			;3070	e1 	. 
	rra			;3071	1f 	. 
	jr nc,$+10		;3072	30 08 	0 . 
	ld a,001h		;3074	3e 01 	> . 
	call 02fddh		;3076	cd dd 2f 	. . / 
	inc (hl)			;3079	34 	4 
	jr z,$+37		;307a	28 23 	( # 
	exx			;307c	d9 	. 
	ld a,l			;307d	7d 	} 
	and 080h		;307e	e6 80 	. . 
	exx			;3080	d9 	. 
	inc hl			;3081	23 	# 
	ld (hl),a			;3082	77 	w 
	dec hl			;3083	2b 	+ 
	jr z,$+33		;3084	28 1f 	( . 
	ld a,e			;3086	7b 	{ 
	neg		;3087	ed 44 	. D 
	ccf			;3089	3f 	? 
	ld e,a			;308a	5f 	_ 
	ld a,d			;308b	7a 	z 
	cpl			;308c	2f 	/ 
	adc a,000h		;308d	ce 00 	. . 
	ld d,a			;308f	57 	W 
	exx			;3090	d9 	. 
	ld a,e			;3091	7b 	{ 
	cpl			;3092	2f 	/ 
	adc a,000h		;3093	ce 00 	. . 
	ld e,a			;3095	5f 	_ 
	ld a,d			;3096	7a 	z 
	cpl			;3097	2f 	/ 
	adc a,000h		;3098	ce 00 	. . 
	jr nc,$+9		;309a	30 07 	0 . 
	rra			;309c	1f 	. 
	exx			;309d	d9 	. 
	inc (hl)			;309e	34 	4 
	jp z,031adh		;309f	ca ad 31 	. . 1 
	exx			;30a2	d9 	. 
	ld d,a			;30a3	57 	W 
	exx			;30a4	d9 	. 
	xor a			;30a5	af 	. 
	jp 03155h		;30a6	c3 55 31 	. U 1 
	push bc			;30a9	c5 	. 
	ld b,010h		;30aa	06 10 	. . 
	ld a,h			;30ac	7c 	| 
	ld c,l			;30ad	4d 	M 
	ld hl,00000h		;30ae	21 00 00 	! . . 
	add hl,hl			;30b1	29 	) 
	jr c,$+12		;30b2	38 0a 	8 . 
	rl c		;30b4	cb 11 	. . 
	rla			;30b6	17 	. 
	jr nc,$+5		;30b7	30 03 	0 . 
	add hl,de			;30b9	19 	. 
	jr c,$+4		;30ba	38 02 	8 . 
	djnz $-11		;30bc	10 f3 	. . 
	pop bc			;30be	c1 	. 
	ret			;30bf	c9 	. 
	call 034e9h		;30c0	cd e9 34 	. . 4 
	ret c			;30c3	d8 	. 
	inc hl			;30c4	23 	# 
	xor (hl)			;30c5	ae 	. 
	set 7,(hl)		;30c6	cb fe 	. . 
	dec hl			;30c8	2b 	+ 
	ret			;30c9	c9 	. 
	ld a,(de)			;30ca	1a 	. 
	or (hl)			;30cb	b6 	. 
	jr nz,$+36		;30cc	20 22 	  " 
	push de			;30ce	d5 	. 
	push hl			;30cf	e5 	. 
	push de			;30d0	d5 	. 
	call 02d7fh		;30d1	cd 7f 2d 	.  - 
	ex de,hl			;30d4	eb 	. 
	ex (sp),hl			;30d5	e3 	. 
	ld b,c			;30d6	41 	A 
	call 02d7fh		;30d7	cd 7f 2d 	.  - 
	ld a,b			;30da	78 	x 
	xor c			;30db	a9 	. 
	ld c,a			;30dc	4f 	O 
	pop hl			;30dd	e1 	. 
	call 030a9h		;30de	cd a9 30 	. . 0 
	ex de,hl			;30e1	eb 	. 
	pop hl			;30e2	e1 	. 
	jr c,$+12		;30e3	38 0a 	8 . 
	ld a,d			;30e5	7a 	z 
	or e			;30e6	b3 	. 
	jr nz,$+3		;30e7	20 01 	  . 
	ld c,a			;30e9	4f 	O 
	call 02d8eh		;30ea	cd 8e 2d 	. . - 
	pop de			;30ed	d1 	. 
	ret			;30ee	c9 	. 
	pop de			;30ef	d1 	. 
	call 03293h		;30f0	cd 93 32 	. . 2 
	xor a			;30f3	af 	. 
	call 030c0h		;30f4	cd c0 30 	. . 0 
	ret c			;30f7	d8 	. 
	exx			;30f8	d9 	. 
	push hl			;30f9	e5 	. 
	exx			;30fa	d9 	. 
	push de			;30fb	d5 	. 
	ex de,hl			;30fc	eb 	. 
	call 030c0h		;30fd	cd c0 30 	. . 0 
	ex de,hl			;3100	eb 	. 
	jr c,$+92		;3101	38 5a 	8 Z 
	push hl			;3103	e5 	. 
	call 02fbah		;3104	cd ba 2f 	. . / 
	ld a,b			;3107	78 	x 
	and a			;3108	a7 	. 
	sbc hl,hl		;3109	ed 62 	. b 
	exx			;310b	d9 	. 
	push hl			;310c	e5 	. 
	sbc hl,hl		;310d	ed 62 	. b 
	exx			;310f	d9 	. 
	ld b,021h		;3110	06 21 	. ! 
	jr $+19		;3112	18 11 	. . 
	jr nc,$+7		;3114	30 05 	0 . 
	add hl,de			;3116	19 	. 
	exx			;3117	d9 	. 
	adc hl,de		;3118	ed 5a 	. Z 
	exx			;311a	d9 	. 
	exx			;311b	d9 	. 
	rr h		;311c	cb 1c 	. . 
	rr l		;311e	cb 1d 	. . 
	exx			;3120	d9 	. 
	rr h		;3121	cb 1c 	. . 
	rr l		;3123	cb 1d 	. . 
	exx			;3125	d9 	. 
	rr b		;3126	cb 18 	. . 
	rr c		;3128	cb 19 	. . 
	exx			;312a	d9 	. 
	rr c		;312b	cb 19 	. . 
	rra			;312d	1f 	. 
	djnz $-26		;312e	10 e4 	. . 
	ex de,hl			;3130	eb 	. 
	exx			;3131	d9 	. 
	ex de,hl			;3132	eb 	. 
	exx			;3133	d9 	. 
	pop bc			;3134	c1 	. 
	pop hl			;3135	e1 	. 
	ld a,b			;3136	78 	x 
	add a,c			;3137	81 	. 
	jr nz,$+3		;3138	20 01 	  . 
	and a			;313a	a7 	. 
	dec a			;313b	3d 	= 
	ccf			;313c	3f 	? 
	rla			;313d	17 	. 
	ccf			;313e	3f 	? 
	rra			;313f	1f 	. 
	jp p,03146h		;3140	f2 46 31 	. F 1 
	jr nc,$+106		;3143	30 68 	0 h 
	and a			;3145	a7 	. 
	inc a			;3146	3c 	< 
	jr nz,$+10		;3147	20 08 	  . 
	jr c,$+8		;3149	38 06 	8 . 
	exx			;314b	d9 	. 
	bit 7,d		;314c	cb 7a 	. z 
	exx			;314e	d9 	. 
	jr nz,$+94		;314f	20 5c 	  \ 
	ld (hl),a			;3151	77 	w 
	exx			;3152	d9 	. 
	ld a,b			;3153	78 	x 
	exx			;3154	d9 	. 
	jr nc,$+23		;3155	30 15 	0 . 
	ld a,(hl)			;3157	7e 	~ 
	and a			;3158	a7 	. 
	ld a,080h		;3159	3e 80 	> . 
	jr z,$+3		;315b	28 01 	( . 
	xor a			;315d	af 	. 
	exx			;315e	d9 	. 
	and d			;315f	a2 	. 
	call 02ffbh		;3160	cd fb 2f 	. . / 
	rlca			;3163	07 	. 
	ld (hl),a			;3164	77 	w 
	jr c,$+48		;3165	38 2e 	8 . 
	inc hl			;3167	23 	# 
	ld (hl),a			;3168	77 	w 
	dec hl			;3169	2b 	+ 
	jr $+43		;316a	18 29 	. ) 
	ld b,020h		;316c	06 20 	.   
	exx			;316e	d9 	. 
	bit 7,d		;316f	cb 7a 	. z 
	exx			;3171	d9 	. 
	jr nz,$+20		;3172	20 12 	  . 
	rlca			;3174	07 	. 
	rl e		;3175	cb 13 	. . 
	rl d		;3177	cb 12 	. . 
	exx			;3179	d9 	. 
	rl e		;317a	cb 13 	. . 
	rl d		;317c	cb 12 	. . 
	exx			;317e	d9 	. 
	dec (hl)			;317f	35 	5 
	jr z,$-39		;3180	28 d7 	( . 
	djnz $-20		;3182	10 ea 	. . 
	jr $-39		;3184	18 d7 	. . 
	rla			;3186	17 	. 
	jr nc,$+14		;3187	30 0c 	0 . 
	call 03004h		;3189	cd 04 30 	. . 0 
	jr nz,$+9		;318c	20 07 	  . 
	exx			;318e	d9 	. 
	ld d,080h		;318f	16 80 	. . 
	exx			;3191	d9 	. 
	inc (hl)			;3192	34 	4 
	jr z,$+26		;3193	28 18 	( . 
	push hl			;3195	e5 	. 
	inc hl			;3196	23 	# 
	exx			;3197	d9 	. 
	push de			;3198	d5 	. 
	exx			;3199	d9 	. 
	pop bc			;319a	c1 	. 
	ld a,b			;319b	78 	x 
	rla			;319c	17 	. 
	rl (hl)		;319d	cb 16 	. . 
	rra			;319f	1f 	. 
	ld (hl),a			;31a0	77 	w 
	inc hl			;31a1	23 	# 
	ld (hl),c			;31a2	71 	q 
	inc hl			;31a3	23 	# 
	ld (hl),d			;31a4	72 	r 
	inc hl			;31a5	23 	# 
	ld (hl),e			;31a6	73 	s 
	pop hl			;31a7	e1 	. 
	pop de			;31a8	d1 	. 
	exx			;31a9	d9 	. 
	pop hl			;31aa	e1 	. 
	exx			;31ab	d9 	. 
	ret			;31ac	c9 	. 
	rst 8			;31ad	cf 	. 
	dec b			;31ae	05 	. 
	call 03293h		;31af	cd 93 32 	. . 2 
	ex de,hl			;31b2	eb 	. 
	xor a			;31b3	af 	. 
	call 030c0h		;31b4	cd c0 30 	. . 0 
	jr c,$-10		;31b7	38 f4 	8 . 
	ex de,hl			;31b9	eb 	. 
	call 030c0h		;31ba	cd c0 30 	. . 0 
	ret c			;31bd	d8 	. 
	exx			;31be	d9 	. 
	push hl			;31bf	e5 	. 
	exx			;31c0	d9 	. 
	push de			;31c1	d5 	. 
	push hl			;31c2	e5 	. 
	call 02fbah		;31c3	cd ba 2f 	. . / 
	exx			;31c6	d9 	. 
	push hl			;31c7	e5 	. 
	ld h,b			;31c8	60 	` 
	ld l,c			;31c9	69 	i 
	exx			;31ca	d9 	. 
	ld h,c			;31cb	61 	a 
	ld l,b			;31cc	68 	h 
	xor a			;31cd	af 	. 
	ld b,0dfh		;31ce	06 df 	. . 
	jr $+18		;31d0	18 10 	. . 
	rla			;31d2	17 	. 
	rl c		;31d3	cb 11 	. . 
	exx			;31d5	d9 	. 
	rl c		;31d6	cb 11 	. . 
	rl b		;31d8	cb 10 	. . 
	exx			;31da	d9 	. 
	add hl,hl			;31db	29 	) 
	exx			;31dc	d9 	. 
	adc hl,hl		;31dd	ed 6a 	. j 
	exx			;31df	d9 	. 
	jr c,$+18		;31e0	38 10 	8 . 
	sbc hl,de		;31e2	ed 52 	. R 
	exx			;31e4	d9 	. 
	sbc hl,de		;31e5	ed 52 	. R 
	exx			;31e7	d9 	. 
	jr nc,$+17		;31e8	30 0f 	0 . 
	add hl,de			;31ea	19 	. 
	exx			;31eb	d9 	. 
	adc hl,de		;31ec	ed 5a 	. Z 
	exx			;31ee	d9 	. 
	and a			;31ef	a7 	. 
	jr $+10		;31f0	18 08 	. . 
	and a			;31f2	a7 	. 
	sbc hl,de		;31f3	ed 52 	. R 
	exx			;31f5	d9 	. 
	sbc hl,de		;31f6	ed 52 	. R 
	exx			;31f8	d9 	. 
	scf			;31f9	37 	7 
	inc b			;31fa	04 	. 
	jp m,031d2h		;31fb	fa d2 31 	. . 1 
	push af			;31fe	f5 	. 
	jr z,$-29		;31ff	28 e1 	( . 
	ld e,a			;3201	5f 	_ 
	ld d,c			;3202	51 	Q 
	exx			;3203	d9 	. 
	ld e,c			;3204	59 	Y 
	ld d,b			;3205	50 	P 
	pop af			;3206	f1 	. 
	rr b		;3207	cb 18 	. . 
	pop af			;3209	f1 	. 
	rr b		;320a	cb 18 	. . 
	exx			;320c	d9 	. 
	pop bc			;320d	c1 	. 
	pop hl			;320e	e1 	. 
	ld a,b			;320f	78 	x 
	sub c			;3210	91 	. 
	jp 0313dh		;3211	c3 3d 31 	. = 1 
	ld a,(hl)			;3214	7e 	~ 
	and a			;3215	a7 	. 
	ret z			;3216	c8 	. 
	cp 081h		;3217	fe 81 	. . 
	jr nc,$+8		;3219	30 06 	0 . 
	ld (hl),000h		;321b	36 00 	6 . 
	ld a,020h		;321d	3e 20 	>   
	jr $+83		;321f	18 51 	. Q 
	cp 091h		;3221	fe 91 	. . 
	jr nz,$+28		;3223	20 1a 	  . 
	inc hl			;3225	23 	# 
	inc hl			;3226	23 	# 
	inc hl			;3227	23 	# 
	ld a,080h		;3228	3e 80 	> . 
	and (hl)			;322a	a6 	. 
	dec hl			;322b	2b 	+ 
	or (hl)			;322c	b6 	. 
	dec hl			;322d	2b 	+ 
	jr nz,$+5		;322e	20 03 	  . 
	ld a,080h		;3230	3e 80 	> . 
	xor (hl)			;3232	ae 	. 
	dec hl			;3233	2b 	+ 
	jr nz,$+56		;3234	20 36 	  6 
	ld (hl),a			;3236	77 	w 
	inc hl			;3237	23 	# 
	ld (hl),0ffh		;3238	36 ff 	6 . 
	dec hl			;323a	2b 	+ 
	ld a,018h		;323b	3e 18 	> . 
	jr $+53		;323d	18 33 	. 3 
	jr nc,$+46		;323f	30 2c 	0 , 
	push de			;3241	d5 	. 
	cpl			;3242	2f 	/ 
	add a,091h		;3243	c6 91 	. . 
	inc hl			;3245	23 	# 
	ld d,(hl)			;3246	56 	V 
	inc hl			;3247	23 	# 
	ld e,(hl)			;3248	5e 	^ 
	dec hl			;3249	2b 	+ 
	dec hl			;324a	2b 	+ 
	ld c,000h		;324b	0e 00 	. . 
	bit 7,d		;324d	cb 7a 	. z 
	jr z,$+3		;324f	28 01 	( . 
	dec c			;3251	0d 	. 
	set 7,d		;3252	cb fa 	. . 
	ld b,008h		;3254	06 08 	. . 
	sub b			;3256	90 	. 
	add a,b			;3257	80 	. 
	jr c,$+6		;3258	38 04 	8 . 
	ld e,d			;325a	5a 	Z 
	ld d,000h		;325b	16 00 	. . 
	sub b			;325d	90 	. 
	jr z,$+9		;325e	28 07 	( . 
	ld b,a			;3260	47 	G 
	srl d		;3261	cb 3a 	. : 
	rr e		;3263	cb 1b 	. . 
	djnz $-4		;3265	10 fa 	. . 
	call 02d8eh		;3267	cd 8e 2d 	. . - 
	pop de			;326a	d1 	. 
	ret			;326b	c9 	. 
	ld a,(hl)			;326c	7e 	~ 
	sub 0a0h		;326d	d6 a0 	. . 
	ret p			;326f	f0 	. 
	neg		;3270	ed 44 	. D 
	push de			;3272	d5 	. 
	ex de,hl			;3273	eb 	. 
	dec hl			;3274	2b 	+ 
	ld b,a			;3275	47 	G 
	srl b		;3276	cb 38 	. 8 
	srl b		;3278	cb 38 	. 8 
	srl b		;327a	cb 38 	. 8 
	jr z,$+7		;327c	28 05 	( . 
	ld (hl),000h		;327e	36 00 	6 . 
	dec hl			;3280	2b 	+ 
	djnz $-3		;3281	10 fb 	. . 
	and 007h		;3283	e6 07 	. . 
	jr z,$+11		;3285	28 09 	( . 
	ld b,a			;3287	47 	G 
	ld a,0ffh		;3288	3e ff 	> . 
	sla a		;328a	cb 27 	. ' 
	djnz $-2		;328c	10 fc 	. . 
	and (hl)			;328e	a6 	. 
	ld (hl),a			;328f	77 	w 
	ex de,hl			;3290	eb 	. 
	pop de			;3291	d1 	. 
	ret			;3292	c9 	. 
	call 03296h		;3293	cd 96 32 	. . 2 
	ex de,hl			;3296	eb 	. 
	ld a,(hl)			;3297	7e 	~ 
	and a			;3298	a7 	. 
	ret nz			;3299	c0 	. 
	push de			;329a	d5 	. 
	call 02d7fh		;329b	cd 7f 2d 	.  - 
	xor a			;329e	af 	. 
	inc hl			;329f	23 	# 
	ld (hl),a			;32a0	77 	w 
	dec hl			;32a1	2b 	+ 
	ld (hl),a			;32a2	77 	w 
	ld b,091h		;32a3	06 91 	. . 
	ld a,d			;32a5	7a 	z 
	and a			;32a6	a7 	. 
	jr nz,$+10		;32a7	20 08 	  . 
	or e			;32a9	b3 	. 
	ld b,d			;32aa	42 	B 
	jr z,$+18		;32ab	28 10 	( . 
	ld d,e			;32ad	53 	S 
	ld e,b			;32ae	58 	X 
	ld b,089h		;32af	06 89 	. . 
	ex de,hl			;32b1	eb 	. 
	dec b			;32b2	05 	. 
	add hl,hl			;32b3	29 	) 
	jr nc,$-2		;32b4	30 fc 	0 . 
	rrc c		;32b6	cb 09 	. . 
	rr h		;32b8	cb 1c 	. . 
	rr l		;32ba	cb 1d 	. . 
	ex de,hl			;32bc	eb 	. 
	dec hl			;32bd	2b 	+ 
	ld (hl),e			;32be	73 	s 
	dec hl			;32bf	2b 	+ 
	ld (hl),d			;32c0	72 	r 
	dec hl			;32c1	2b 	+ 
	ld (hl),b			;32c2	70 	p 
	pop de			;32c3	d1 	. 
	ret			;32c4	c9 	. 
	nop			;32c5	00 	. 
	or b			;32c6	b0 	. 
	nop			;32c7	00 	. 
	ld b,b			;32c8	40 	@ 
	or b			;32c9	b0 	. 
	nop			;32ca	00 	. 
	ld bc,00030h		;32cb	01 30 00 	. 0 . 
	pop af			;32ce	f1 	. 
	ld c,c			;32cf	49 	I 
	rrca			;32d0	0f 	. 
	jp c,040a2h		;32d1	da a2 40 	. . @ 
	or b			;32d4	b0 	. 
	nop			;32d5	00 	. 
	ld a,(bc)			;32d6	0a 	. 
	adc a,a			;32d7	8f 	. 
	ld (hl),03ch		;32d8	36 3c 	6 < 
	inc (hl)			;32da	34 	4 
	and c			;32db	a1 	. 
	inc sp			;32dc	33 	3 
	rrca			;32dd	0f 	. 
	jr nc,$-52		;32de	30 ca 	0 . 
	jr nc,$-79		;32e0	30 af 	0 . 
	ld sp,03851h		;32e2	31 51 38 	1 Q 8 
	dec de			;32e5	1b 	. 
	dec (hl)			;32e6	35 	5 
	inc h			;32e7	24 	$ 
	dec (hl)			;32e8	35 	5 
	dec sp			;32e9	3b 	; 
	dec (hl)			;32ea	35 	5 
	dec sp			;32eb	3b 	; 
	dec (hl)			;32ec	35 	5 
	dec sp			;32ed	3b 	; 
	dec (hl)			;32ee	35 	5 
	dec sp			;32ef	3b 	; 
	dec (hl)			;32f0	35 	5 
	dec sp			;32f1	3b 	; 
	dec (hl)			;32f2	35 	5 
	dec sp			;32f3	3b 	; 
	dec (hl)			;32f4	35 	5 
	inc d			;32f5	14 	. 
	jr nc,$+47		;32f6	30 2d 	0 - 
	dec (hl)			;32f8	35 	5 
	dec sp			;32f9	3b 	; 
	dec (hl)			;32fa	35 	5 
	dec sp			;32fb	3b 	; 
	dec (hl)			;32fc	35 	5 
	dec sp			;32fd	3b 	; 
	dec (hl)			;32fe	35 	5 
	dec sp			;32ff	3b 	; 
	dec (hl)			;3300	35 	5 
	dec sp			;3301	3b 	; 
	dec (hl)			;3302	35 	5 
	dec sp			;3303	3b 	; 
	dec (hl)			;3304	35 	5 
	sbc a,h			;3305	9c 	. 
	dec (hl)			;3306	35 	5 
	sbc a,035h		;3307	de 35 	. 5 
	cp h			;3309	bc 	. 
	inc (hl)			;330a	34 	4 
	ld b,l			;330b	45 	E 
	ld (hl),06eh		;330c	36 6e 	6 n 
	inc (hl)			;330e	34 	4 
	ld l,c			;330f	69 	i 
	ld (hl),0deh		;3310	36 de 	6 . 
	dec (hl)			;3312	35 	5 
	ld (hl),h			;3313	74 	t 
	ld (hl),0b5h		;3314	36 b5 	6 . 
	scf			;3316	37 	7 
	xor d			;3317	aa 	. 
	scf			;3318	37 	7 
	jp c,03337h		;3319	da 37 33 	. 7 3 
	jr c,$+69		;331c	38 43 	8 C 
	jr c,$-28		;331e	38 e2 	8 . 
	scf			;3320	37 	7 
	inc de			;3321	13 	. 
	scf			;3322	37 	7 
	call nz,0af36h		;3323	c4 36 af 	. 6 . 
	ld (hl),04ah		;3326	36 4a 	6 J 
	jr c,$-108		;3328	38 92 	8 . 
	inc (hl)			;332a	34 	4 
	ld l,d			;332b	6a 	j 
	inc (hl)			;332c	34 	4 
	xor h			;332d	ac 	. 
	inc (hl)			;332e	34 	4 
	and l			;332f	a5 	. 
	inc (hl)			;3330	34 	4 
	or e			;3331	b3 	. 
	inc (hl)			;3332	34 	4 
	rra			;3333	1f 	. 
	ld (hl),0c9h		;3334	36 c9 	6 . 
	dec (hl)			;3336	35 	5 
	ld bc,0c035h		;3337	01 35 c0 	. 5 . 
	inc sp			;333a	33 	3 
	and b			;333b	a0 	. 
	ld (hl),086h		;333c	36 86 	6 . 
	ld (hl),0c6h		;333e	36 c6 	6 . 
	inc sp			;3340	33 	3 
	ld a,d			;3341	7a 	z 
	ld (hl),006h		;3342	36 06 	6 . 
	dec (hl)			;3344	35 	5 
	ld sp,hl			;3345	f9 	. 
	inc (hl)			;3346	34 	4 
	sbc a,e			;3347	9b 	. 
	ld (hl),083h		;3348	36 83 	6 . 
	scf			;334a	37 	7 
	inc d			;334b	14 	. 
	ld (033a2h),a		;334c	32 a2 33 	2 . 3 
	ld c,a			;334f	4f 	O 
	dec l			;3350	2d 	- 
	sub a			;3351	97 	. 
	ld (03449h),a		;3352	32 49 34 	2 I 4 
	dec de			;3355	1b 	. 
	inc (hl)			;3356	34 	4 
	dec l			;3357	2d 	- 
	inc (hl)			;3358	34 	4 
	rrca			;3359	0f 	. 
	inc (hl)			;335a	34 	4 
	call 035bfh		;335b	cd bf 35 	. . 5 
	ld a,b			;335e	78 	x 
	ld (05c67h),a		;335f	32 67 5c 	2 g \ 
	exx			;3362	d9 	. 
	ex (sp),hl			;3363	e3 	. 
	exx			;3364	d9 	. 
	ld (05c65h),de		;3365	ed 53 65 5c 	. S e \ 
	exx			;3369	d9 	. 
	ld a,(hl)			;336a	7e 	~ 
	inc hl			;336b	23 	# 
	push hl			;336c	e5 	. 
	and a			;336d	a7 	. 
	jp p,03380h		;336e	f2 80 33 	. . 3 
	ld d,a			;3371	57 	W 
	and 060h		;3372	e6 60 	. ` 
	rrca			;3374	0f 	. 
	rrca			;3375	0f 	. 
	rrca			;3376	0f 	. 
	rrca			;3377	0f 	. 
	add a,07ch		;3378	c6 7c 	. | 
	ld l,a			;337a	6f 	o 
	ld a,d			;337b	7a 	z 
	and 01fh		;337c	e6 1f 	. . 
	jr $+16		;337e	18 0e 	. . 
	cp 018h		;3380	fe 18 	. . 
	jr nc,$+10		;3382	30 08 	0 . 
	exx			;3384	d9 	. 
	ld bc,0fffbh		;3385	01 fb ff 	. . . 
	ld d,h			;3388	54 	T 
	ld e,l			;3389	5d 	] 
	add hl,bc			;338a	09 	. 
	exx			;338b	d9 	. 
	rlca			;338c	07 	. 
	ld l,a			;338d	6f 	o 
	ld de,032d7h		;338e	11 d7 32 	. . 2 
	ld h,000h		;3391	26 00 	& . 
	add hl,de			;3393	19 	. 
	ld e,(hl)			;3394	5e 	^ 
	inc hl			;3395	23 	# 
	ld d,(hl)			;3396	56 	V 
	ld hl,03365h		;3397	21 65 33 	! e 3 
	ex (sp),hl			;339a	e3 	. 
	push de			;339b	d5 	. 
	exx			;339c	d9 	. 
	ld bc,(05c66h)		;339d	ed 4b 66 5c 	. K f \ 
	ret			;33a1	c9 	. 
	pop af			;33a2	f1 	. 
	ld a,(05c67h)		;33a3	3a 67 5c 	: g \ 
	exx			;33a6	d9 	. 
	jr $-59		;33a7	18 c3 	. . 
	push de			;33a9	d5 	. 
	push hl			;33aa	e5 	. 
	ld bc,00005h		;33ab	01 05 00 	. . . 
	call 01f05h		;33ae	cd 05 1f 	. . . 
	pop hl			;33b1	e1 	. 
	pop de			;33b2	d1 	. 
	ret			;33b3	c9 	. 
	ld de,(05c65h)		;33b4	ed 5b 65 5c 	. [ e \ 
	call 033c0h		;33b8	cd c0 33 	. . 3 
	ld (05c65h),de		;33bb	ed 53 65 5c 	. S e \ 
	ret			;33bf	c9 	. 
	call 033a9h		;33c0	cd a9 33 	. . 3 
	ldir		;33c3	ed b0 	. . 
	ret			;33c5	c9 	. 
	ld h,d			;33c6	62 	b 
	ld l,e			;33c7	6b 	k 
	call 033a9h		;33c8	cd a9 33 	. . 3 
	exx			;33cb	d9 	. 
	push hl			;33cc	e5 	. 
	exx			;33cd	d9 	. 
	ex (sp),hl			;33ce	e3 	. 
	push bc			;33cf	c5 	. 
	ld a,(hl)			;33d0	7e 	~ 
	and 0c0h		;33d1	e6 c0 	. . 
	rlca			;33d3	07 	. 
	rlca			;33d4	07 	. 
	ld c,a			;33d5	4f 	O 
	inc c			;33d6	0c 	. 
	ld a,(hl)			;33d7	7e 	~ 
	and 03fh		;33d8	e6 3f 	. ? 
	jr nz,$+4		;33da	20 02 	  . 
	inc hl			;33dc	23 	# 
	ld a,(hl)			;33dd	7e 	~ 
	add a,050h		;33de	c6 50 	. P 
	ld (de),a			;33e0	12 	. 
	ld a,005h		;33e1	3e 05 	> . 
	sub c			;33e3	91 	. 
	inc hl			;33e4	23 	# 
	inc de			;33e5	13 	. 
	ld b,000h		;33e6	06 00 	. . 
	ldir		;33e8	ed b0 	. . 
	pop bc			;33ea	c1 	. 
	ex (sp),hl			;33eb	e3 	. 
	exx			;33ec	d9 	. 
	pop hl			;33ed	e1 	. 
	exx			;33ee	d9 	. 
	ld b,a			;33ef	47 	G 
	xor a			;33f0	af 	. 
	dec b			;33f1	05 	. 
	ret z			;33f2	c8 	. 
	ld (de),a			;33f3	12 	. 
	inc de			;33f4	13 	. 
	jr $-4		;33f5	18 fa 	. . 
	and a			;33f7	a7 	. 
	ret z			;33f8	c8 	. 
	push af			;33f9	f5 	. 
	push de			;33fa	d5 	. 
	ld de,00000h		;33fb	11 00 00 	. . . 
	call 033c8h		;33fe	cd c8 33 	. . 3 
	pop de			;3401	d1 	. 
	pop af			;3402	f1 	. 
	dec a			;3403	3d 	= 
	jr $-12		;3404	18 f2 	. . 
	ld c,a			;3406	4f 	O 
	rlca			;3407	07 	. 
	rlca			;3408	07 	. 
	add a,c			;3409	81 	. 
	ld c,a			;340a	4f 	O 
	ld b,000h		;340b	06 00 	. . 
	add hl,bc			;340d	09 	. 
	ret			;340e	c9 	. 
	push de			;340f	d5 	. 
	ld hl,(05c68h)		;3410	2a 68 5c 	* h \ 
	call 03406h		;3413	cd 06 34 	. . 4 
	call 033c0h		;3416	cd c0 33 	. . 3 
	pop hl			;3419	e1 	. 
	ret			;341a	c9 	. 
	ld h,d			;341b	62 	b 
	ld l,e			;341c	6b 	k 
	exx			;341d	d9 	. 
	push hl			;341e	e5 	. 
	ld hl,032c5h		;341f	21 c5 32 	! . 2 
	exx			;3422	d9 	. 
	call 033f7h		;3423	cd f7 33 	. . 3 
	call 033c8h		;3426	cd c8 33 	. . 3 
	exx			;3429	d9 	. 
	pop hl			;342a	e1 	. 
	exx			;342b	d9 	. 
	ret			;342c	c9 	. 
	push hl			;342d	e5 	. 
	ex de,hl			;342e	eb 	. 
	ld hl,(05c68h)		;342f	2a 68 5c 	* h \ 
	call 03406h		;3432	cd 06 34 	. . 4 
	ex de,hl			;3435	eb 	. 
	call 033c0h		;3436	cd c0 33 	. . 3 
	ex de,hl			;3439	eb 	. 
	pop hl			;343a	e1 	. 
	ret			;343b	c9 	. 
	ld b,005h		;343c	06 05 	. . 
	ld a,(de)			;343e	1a 	. 
	ld c,(hl)			;343f	4e 	N 
	ex de,hl			;3440	eb 	. 
	ld (de),a			;3441	12 	. 
	ld (hl),c			;3442	71 	q 
	inc hl			;3443	23 	# 
	inc de			;3444	13 	. 
	djnz $-7		;3445	10 f7 	. . 
	ex de,hl			;3447	eb 	. 
	ret			;3448	c9 	. 
	ld b,a			;3449	47 	G 
	call 0335eh		;344a	cd 5e 33 	. ^ 3 
	ld sp,0c00fh		;344d	31 0f c0 	1 . . 
	ld (bc),a			;3450	02 	. 
	and b			;3451	a0 	. 
	jp nz,0e031h		;3452	c2 31 e0 	. 1 . 
	inc b			;3455	04 	. 
	jp po,003c1h		;3456	e2 c1 03 	. . . 
	jr c,$-49		;3459	38 cd 	8 . 
	add a,033h		;345b	c6 33 	. 3 
	call 03362h		;345d	cd 62 33 	. b 3 
	rrca			;3460	0f 	. 
	ld bc,002c2h		;3461	01 c2 02 	. . . 
	dec (hl)			;3464	35 	5 
	xor 0e1h		;3465	ee e1 	. . 
	inc bc			;3467	03 	. 
	jr c,$-53		;3468	38 c9 	8 . 
	ld b,0ffh		;346a	06 ff 	. . 
	jr $+8		;346c	18 06 	. . 
	call 034e9h		;346e	cd e9 34 	. . 4 
	ret c			;3471	d8 	. 
	ld b,000h		;3472	06 00 	. . 
	ld a,(hl)			;3474	7e 	~ 
	and a			;3475	a7 	. 
	jr z,$+13		;3476	28 0b 	( . 
	inc hl			;3478	23 	# 
	ld a,b			;3479	78 	x 
	and 080h		;347a	e6 80 	. . 
	or (hl)			;347c	b6 	. 
	rla			;347d	17 	. 
	ccf			;347e	3f 	? 
	rra			;347f	1f 	. 
	ld (hl),a			;3480	77 	w 
	dec hl			;3481	2b 	+ 
	ret			;3482	c9 	. 
	push de			;3483	d5 	. 
	push hl			;3484	e5 	. 
	call 02d7fh		;3485	cd 7f 2d 	.  - 
	pop hl			;3488	e1 	. 
	ld a,b			;3489	78 	x 
	or c			;348a	b1 	. 
	cpl			;348b	2f 	/ 
	ld c,a			;348c	4f 	O 
	call 02d8eh		;348d	cd 8e 2d 	. . - 
	pop de			;3490	d1 	. 
	ret			;3491	c9 	. 
	call 034e9h		;3492	cd e9 34 	. . 4 
	ret c			;3495	d8 	. 
	push de			;3496	d5 	. 
	ld de,00001h		;3497	11 01 00 	. . . 
	inc hl			;349a	23 	# 
	rl (hl)		;349b	cb 16 	. . 
	dec hl			;349d	2b 	+ 
	sbc a,a			;349e	9f 	. 
	ld c,a			;349f	4f 	O 
	call 02d8eh		;34a0	cd 8e 2d 	. . - 
	pop de			;34a3	d1 	. 
	ret			;34a4	c9 	. 
	call 01e99h		;34a5	cd 99 1e 	. . . 
	in a,(c)		;34a8	ed 78 	. x 
	jr $+6		;34aa	18 04 	. . 
	call 01e99h		;34ac	cd 99 1e 	. . . 
	ld a,(bc)			;34af	0a 	. 
	jp 02d28h		;34b0	c3 28 2d 	. ( - 
	call 01e99h		;34b3	cd 99 1e 	. . . 
	ld hl,02d2bh		;34b6	21 2b 2d 	! + - 
	push hl			;34b9	e5 	. 
	push bc			;34ba	c5 	. 
	ret			;34bb	c9 	. 
	call 02bf1h		;34bc	cd f1 2b 	. . + 
	dec bc			;34bf	0b 	. 
	ld a,b			;34c0	78 	x 
	or c			;34c1	b1 	. 
	jr nz,$+37		;34c2	20 23 	  # 
	ld a,(de)			;34c4	1a 	. 
	call 02c8dh		;34c5	cd 8d 2c 	. . , 
	jr c,$+11		;34c8	38 09 	8 . 
	sub 090h		;34ca	d6 90 	. . 
	jr c,$+27		;34cc	38 19 	8 . 
	cp 015h		;34ce	fe 15 	. . 
	jr nc,$+23		;34d0	30 15 	0 . 
	inc a			;34d2	3c 	< 
	dec a			;34d3	3d 	= 
	add a,a			;34d4	87 	. 
	add a,a			;34d5	87 	. 
	add a,a			;34d6	87 	. 
	cp 0a8h		;34d7	fe a8 	. . 
	jr nc,$+14		;34d9	30 0c 	0 . 
	ld bc,(05c7bh)		;34db	ed 4b 7b 5c 	. K { \ 
	add a,c			;34df	81 	. 
	ld c,a			;34e0	4f 	O 
	jr nc,$+3		;34e1	30 01 	0 . 
	inc b			;34e3	04 	. 
	jp 02d2bh		;34e4	c3 2b 2d 	. + - 
	rst 8			;34e7	cf 	. 
	add hl,bc			;34e8	09 	. 
	push hl			;34e9	e5 	. 
	push bc			;34ea	c5 	. 
	ld b,a			;34eb	47 	G 
	ld a,(hl)			;34ec	7e 	~ 
	inc hl			;34ed	23 	# 
	or (hl)			;34ee	b6 	. 
	inc hl			;34ef	23 	# 
	or (hl)			;34f0	b6 	. 
	inc hl			;34f1	23 	# 
	or (hl)			;34f2	b6 	. 
	ld a,b			;34f3	78 	x 
	pop bc			;34f4	c1 	. 
	pop hl			;34f5	e1 	. 
	ret nz			;34f6	c0 	. 
	scf			;34f7	37 	7 
	ret			;34f8	c9 	. 
	call 034e9h		;34f9	cd e9 34 	. . 4 
	ret c			;34fc	d8 	. 
	ld a,0ffh		;34fd	3e ff 	> . 
	jr $+8		;34ff	18 06 	. . 
	call 034e9h		;3501	cd e9 34 	. . 4 
	jr $+7		;3504	18 05 	. . 
	xor a			;3506	af 	. 
	inc hl			;3507	23 	# 
	xor (hl)			;3508	ae 	. 
	dec hl			;3509	2b 	+ 
	rlca			;350a	07 	. 
	push hl			;350b	e5 	. 
	ld a,000h		;350c	3e 00 	> . 
	ld (hl),a			;350e	77 	w 
	inc hl			;350f	23 	# 
	ld (hl),a			;3510	77 	w 
	inc hl			;3511	23 	# 
	rla			;3512	17 	. 
	ld (hl),a			;3513	77 	w 
	rra			;3514	1f 	. 
	inc hl			;3515	23 	# 
	ld (hl),a			;3516	77 	w 
	inc hl			;3517	23 	# 
	ld (hl),a			;3518	77 	w 
	pop hl			;3519	e1 	. 
	ret			;351a	c9 	. 
	ex de,hl			;351b	eb 	. 
	call 034e9h		;351c	cd e9 34 	. . 4 
	ex de,hl			;351f	eb 	. 
	ret c			;3520	d8 	. 
	scf			;3521	37 	7 
	jr $-23		;3522	18 e7 	. . 
	ex de,hl			;3524	eb 	. 
	call 034e9h		;3525	cd e9 34 	. . 4 
	ex de,hl			;3528	eb 	. 
	ret nc			;3529	d0 	. 
	and a			;352a	a7 	. 
	jr $-32		;352b	18 de 	. . 
	ex de,hl			;352d	eb 	. 
	call 034e9h		;352e	cd e9 34 	. . 4 
	ex de,hl			;3531	eb 	. 
	ret nc			;3532	d0 	. 
	push de			;3533	d5 	. 
	dec de			;3534	1b 	. 
	xor a			;3535	af 	. 
	ld (de),a			;3536	12 	. 
	dec de			;3537	1b 	. 
	ld (de),a			;3538	12 	. 
	pop de			;3539	d1 	. 
	ret			;353a	c9 	. 
	ld a,b			;353b	78 	x 
	sub 008h		;353c	d6 08 	. . 
	bit 2,a		;353e	cb 57 	. W 
	jr nz,$+3		;3540	20 01 	  . 
	dec a			;3542	3d 	= 
	rrca			;3543	0f 	. 
	jr nc,$+10		;3544	30 08 	0 . 
	push af			;3546	f5 	. 
	push hl			;3547	e5 	. 
	call 0343ch		;3548	cd 3c 34 	. < 4 
	pop de			;354b	d1 	. 
	ex de,hl			;354c	eb 	. 
	pop af			;354d	f1 	. 
	bit 2,a		;354e	cb 57 	. W 
	jr nz,$+9		;3550	20 07 	  . 
	rrca			;3552	0f 	. 
	push af			;3553	f5 	. 
	call 0300fh		;3554	cd 0f 30 	. . 0 
	jr $+53		;3557	18 33 	. 3 
	rrca			;3559	0f 	. 
	push af			;355a	f5 	. 
	call 02bf1h		;355b	cd f1 2b 	. . + 
	push de			;355e	d5 	. 
	push bc			;355f	c5 	. 
	call 02bf1h		;3560	cd f1 2b 	. . + 
	pop hl			;3563	e1 	. 
	ld a,h			;3564	7c 	| 
	or l			;3565	b5 	. 
	ex (sp),hl			;3566	e3 	. 
	ld a,b			;3567	78 	x 
	jr nz,$+13		;3568	20 0b 	  . 
	or c			;356a	b1 	. 
	pop bc			;356b	c1 	. 
	jr z,$+6		;356c	28 04 	( . 
	pop af			;356e	f1 	. 
	ccf			;356f	3f 	? 
	jr $+24		;3570	18 16 	. . 
	pop af			;3572	f1 	. 
	jr $+21		;3573	18 13 	. . 
	or c			;3575	b1 	. 
	jr z,$+15		;3576	28 0d 	( . 
	ld a,(de)			;3578	1a 	. 
	sub (hl)			;3579	96 	. 
	jr c,$+11		;357a	38 09 	8 . 
	jr nz,$-17		;357c	20 ed 	  . 
	dec bc			;357e	0b 	. 
	inc de			;357f	13 	. 
	inc hl			;3580	23 	# 
	ex (sp),hl			;3581	e3 	. 
	dec hl			;3582	2b 	+ 
	jr $-31		;3583	18 df 	. . 
	pop bc			;3585	c1 	. 
	pop af			;3586	f1 	. 
	and a			;3587	a7 	. 
	push af			;3588	f5 	. 
	rst 28h			;3589	ef 	. 
	and b			;358a	a0 	. 
	jr c,$-13		;358b	38 f1 	8 . 
	push af			;358d	f5 	. 
	call c,03501h		;358e	dc 01 35 	. . 5 
	pop af			;3591	f1 	. 
	push af			;3592	f5 	. 
	call nc,034f9h		;3593	d4 f9 34 	. . 4 
	pop af			;3596	f1 	. 
	rrca			;3597	0f 	. 
	call nc,03501h		;3598	d4 01 35 	. . 5 
	ret			;359b	c9 	. 
	call 02bf1h		;359c	cd f1 2b 	. . + 
	push de			;359f	d5 	. 
	push bc			;35a0	c5 	. 
	call 02bf1h		;35a1	cd f1 2b 	. . + 
	pop hl			;35a4	e1 	. 
	push hl			;35a5	e5 	. 
	push de			;35a6	d5 	. 
	push bc			;35a7	c5 	. 
	add hl,bc			;35a8	09 	. 
	ld b,h			;35a9	44 	D 
	ld c,l			;35aa	4d 	M 
	rst 30h			;35ab	f7 	. 
	call 02ab2h		;35ac	cd b2 2a 	. . * 
	pop bc			;35af	c1 	. 
	pop hl			;35b0	e1 	. 
	ld a,b			;35b1	78 	x 
	or c			;35b2	b1 	. 
	jr z,$+4		;35b3	28 02 	( . 
	ldir		;35b5	ed b0 	. . 
	pop bc			;35b7	c1 	. 
	pop hl			;35b8	e1 	. 
	ld a,b			;35b9	78 	x 
	or c			;35ba	b1 	. 
	jr z,$+4		;35bb	28 02 	( . 
	ldir		;35bd	ed b0 	. . 
	ld hl,(05c65h)		;35bf	2a 65 5c 	* e \ 
	ld de,0fffbh		;35c2	11 fb ff 	. . . 
	push hl			;35c5	e5 	. 
	add hl,de			;35c6	19 	. 
	pop de			;35c7	d1 	. 
	ret			;35c8	c9 	. 
	call 02dd5h		;35c9	cd d5 2d 	. . - 
	jr c,$+16		;35cc	38 0e 	8 . 
	jr nz,$+14		;35ce	20 0c 	  . 
	push af			;35d0	f5 	. 
	ld bc,00001h		;35d1	01 01 00 	. . . 
	rst 30h			;35d4	f7 	. 
	pop af			;35d5	f1 	. 
	ld (de),a			;35d6	12 	. 
	call 02ab2h		;35d7	cd b2 2a 	. . * 
	ex de,hl			;35da	eb 	. 
	ret			;35db	c9 	. 
	rst 8			;35dc	cf 	. 
	ld a,(bc)			;35dd	0a 	. 
	ld hl,(05c5dh)		;35de	2a 5d 5c 	* ] \ 
	push hl			;35e1	e5 	. 
	ld a,b			;35e2	78 	x 
	add a,0e3h		;35e3	c6 e3 	. . 
	sbc a,a			;35e5	9f 	. 
	push af			;35e6	f5 	. 
	call 02bf1h		;35e7	cd f1 2b 	. . + 
	push de			;35ea	d5 	. 
	inc bc			;35eb	03 	. 
	rst 30h			;35ec	f7 	. 
	pop hl			;35ed	e1 	. 
	ld (05c5dh),de		;35ee	ed 53 5d 5c 	. S ] \ 
	push de			;35f2	d5 	. 
	ldir		;35f3	ed b0 	. . 
	ex de,hl			;35f5	eb 	. 
	dec hl			;35f6	2b 	+ 
	ld (hl),00dh		;35f7	36 0d 	6 . 
	res 7,(iy+001h)		;35f9	fd cb 01 be 	. . . . 
	call 024fbh		;35fd	cd fb 24 	. . $ 
	rst 18h			;3600	df 	. 
	cp 00dh		;3601	fe 0d 	. . 
	jr nz,$+9		;3603	20 07 	  . 
	pop hl			;3605	e1 	. 
	pop af			;3606	f1 	. 
	xor (iy+001h)		;3607	fd ae 01 	. . . 
	and 040h		;360a	e6 40 	. @ 
	jp nz,01c8ah		;360c	c2 8a 1c 	. . . 
	ld (05c5dh),hl		;360f	22 5d 5c 	" ] \ 
	set 7,(iy+001h)		;3612	fd cb 01 fe 	. . . . 
	call 024fbh		;3616	cd fb 24 	. . $ 
	pop hl			;3619	e1 	. 
	ld (05c5dh),hl		;361a	22 5d 5c 	" ] \ 
	jr $-94		;361d	18 a0 	. . 
	ld bc,00001h		;361f	01 01 00 	. . . 
	rst 30h			;3622	f7 	. 
	ld (05c5bh),hl		;3623	22 5b 5c 	" [ \ 
	push hl			;3626	e5 	. 
	ld hl,(05c51h)		;3627	2a 51 5c 	* Q \ 
	push hl			;362a	e5 	. 
	ld a,0ffh		;362b	3e ff 	> . 
	call 01601h		;362d	cd 01 16 	. . . 
	call 02de3h		;3630	cd e3 2d 	. . - 
	pop hl			;3633	e1 	. 
	call 01615h		;3634	cd 15 16 	. . . 
	pop de			;3637	d1 	. 
	ld hl,(05c5bh)		;3638	2a 5b 5c 	* [ \ 
	and a			;363b	a7 	. 
	sbc hl,de		;363c	ed 52 	. R 
	ld b,h			;363e	44 	D 
	ld c,l			;363f	4d 	M 
	call 02ab2h		;3640	cd b2 2a 	. . * 
	ex de,hl			;3643	eb 	. 
	ret			;3644	c9 	. 
	call 01e94h		;3645	cd 94 1e 	. . . 
	cp 010h		;3648	fe 10 	. . 
	jp nc,01e9fh		;364a	d2 9f 1e 	. . . 
	ld hl,(05c51h)		;364d	2a 51 5c 	* Q \ 
	push hl			;3650	e5 	. 
	call 01601h		;3651	cd 01 16 	. . . 
	call 015e6h		;3654	cd e6 15 	. . . 
	ld bc,00000h		;3657	01 00 00 	. . . 
	jr nc,$+5		;365a	30 03 	0 . 
	inc c			;365c	0c 	. 
	rst 30h			;365d	f7 	. 
	ld (de),a			;365e	12 	. 
	call 02ab2h		;365f	cd b2 2a 	. . * 
	pop hl			;3662	e1 	. 
	call 01615h		;3663	cd 15 16 	. . . 
	jp 035bfh		;3666	c3 bf 35 	. . 5 
	call 02bf1h		;3669	cd f1 2b 	. . + 
	ld a,b			;366c	78 	x 
	or c			;366d	b1 	. 
	jr z,$+3		;366e	28 01 	( . 
	ld a,(de)			;3670	1a 	. 
	jp 02d28h		;3671	c3 28 2d 	. ( - 
	call 02bf1h		;3674	cd f1 2b 	. . + 
	jp 02d2bh		;3677	c3 2b 2d 	. + - 
	exx			;367a	d9 	. 
	push hl			;367b	e5 	. 
	ld hl,05c67h		;367c	21 67 5c 	! g \ 
	dec (hl)			;367f	35 	5 
	pop hl			;3680	e1 	. 
	jr nz,$+6		;3681	20 04 	  . 
	inc hl			;3683	23 	# 
	exx			;3684	d9 	. 
	ret			;3685	c9 	. 
	exx			;3686	d9 	. 
	ld e,(hl)			;3687	5e 	^ 
	ld a,e			;3688	7b 	{ 
	rla			;3689	17 	. 
	sbc a,a			;368a	9f 	. 
	ld d,a			;368b	57 	W 
	add hl,de			;368c	19 	. 
	exx			;368d	d9 	. 
	ret			;368e	c9 	. 
	inc de			;368f	13 	. 
	inc de			;3690	13 	. 
	ld a,(de)			;3691	1a 	. 
	dec de			;3692	1b 	. 
	dec de			;3693	1b 	. 
	and a			;3694	a7 	. 
	jr nz,$-15		;3695	20 ef 	  . 
	exx			;3697	d9 	. 
	inc hl			;3698	23 	# 
	exx			;3699	d9 	. 
	ret			;369a	c9 	. 
	pop af			;369b	f1 	. 
	exx			;369c	d9 	. 
	ex (sp),hl			;369d	e3 	. 
	exx			;369e	d9 	. 
	ret			;369f	c9 	. 
	rst 28h			;36a0	ef 	. 
	ret nz			;36a1	c0 	. 
	ld (bc),a			;36a2	02 	. 
	ld sp,005e0h		;36a3	31 e0 05 	1 . . 
	daa			;36a6	27 	' 
	ret po			;36a7	e0 	. 
	ld bc,004c0h		;36a8	01 c0 04 	. . . 
	inc bc			;36ab	03 	. 
	ret po			;36ac	e0 	. 
	jr c,$-53		;36ad	38 c9 	8 . 
	rst 28h			;36af	ef 	. 
	ld sp,00036h		;36b0	31 36 00 	1 6 . 
	inc b			;36b3	04 	. 
	ld a,(0c938h)		;36b4	3a 38 c9 	: 8 . 
	ld sp,0c03ah		;36b7	31 3a c0 	1 : . 
	inc bc			;36ba	03 	. 
	ret po			;36bb	e0 	. 
	ld bc,00030h		;36bc	01 30 00 	. 0 . 
	inc bc			;36bf	03 	. 
	and c			;36c0	a1 	. 
	inc bc			;36c1	03 	. 
	jr c,$-53		;36c2	38 c9 	8 . 
	rst 28h			;36c4	ef 	. 
	dec a			;36c5	3d 	= 
	inc (hl)			;36c6	34 	4 
	pop af			;36c7	f1 	. 
	jr c,$-84		;36c8	38 aa 	8 . 
	dec sp			;36ca	3b 	; 
	add hl,hl			;36cb	29 	) 
	inc b			;36cc	04 	. 
	ld sp,0c327h		;36cd	31 27 c3 	1 ' . 
	inc bc			;36d0	03 	. 
	ld sp,0a10fh		;36d1	31 0f a1 	1 . . 
	inc bc			;36d4	03 	. 
	adc a,b			;36d5	88 	. 
	inc de			;36d6	13 	. 
	ld (hl),058h		;36d7	36 58 	6 X 
	ld h,l			;36d9	65 	e 
	ld h,(hl)			;36da	66 	f 
	sbc a,l			;36db	9d 	. 
	ld a,b			;36dc	78 	x 
	ld h,l			;36dd	65 	e 
	ld b,b			;36de	40 	@ 
	and d			;36df	a2 	. 
	ld h,b			;36e0	60 	` 
	ld (0e7c9h),a		;36e1	32 c9 e7 	2 . . 
	ld hl,0aff7h		;36e4	21 f7 af 	! . . 
	inc h			;36e7	24 	$ 
	ex de,hl			;36e8	eb 	. 
	cpl			;36e9	2f 	/ 
	or b			;36ea	b0 	. 
	or b			;36eb	b0 	. 
	inc d			;36ec	14 	. 
	xor 07eh		;36ed	ee 7e 	. ~ 
	cp e			;36ef	bb 	. 
	sub h			;36f0	94 	. 
	ld e,b			;36f1	58 	X 
	pop af			;36f2	f1 	. 
	ld a,(0f87eh)		;36f3	3a 7e f8 	: ~ . 
	rst 8			;36f6	cf 	. 
	ex (sp),hl			;36f7	e3 	. 
	jr c,$-49		;36f8	38 cd 	8 . 
	push de			;36fa	d5 	. 
	dec l			;36fb	2d 	- 
	jr nz,$+9		;36fc	20 07 	  . 
	jr c,$+5		;36fe	38 03 	8 . 
	add a,(hl)			;3700	86 	. 
	jr nc,$+11		;3701	30 09 	0 . 
	rst 8			;3703	cf 	. 
	dec b			;3704	05 	. 
	jr c,$+9		;3705	38 07 	8 . 
	sub (hl)			;3707	96 	. 
	jr nc,$+6		;3708	30 04 	0 . 
	neg		;370a	ed 44 	. D 
	ld (hl),a			;370c	77 	w 
	ret			;370d	c9 	. 
	rst 28h			;370e	ef 	. 
	ld (bc),a			;370f	02 	. 
	and b			;3710	a0 	. 
	jr c,$-53		;3711	38 c9 	8 . 
	rst 28h			;3713	ef 	. 
	dec a			;3714	3d 	= 
	ld sp,00037h		;3715	31 37 00 	1 7 . 
	inc b			;3718	04 	. 
	jr c,$-47		;3719	38 cf 	8 . 
	add hl,bc			;371b	09 	. 
	and b			;371c	a0 	. 
	ld (bc),a			;371d	02 	. 
	jr c,$+128		;371e	38 7e 	8 ~ 
	ld (hl),080h		;3720	36 80 	6 . 
	call 02d28h		;3722	cd 28 2d 	. ( - 
	rst 28h			;3725	ef 	. 
	inc (hl)			;3726	34 	4 
	jr c,$+2		;3727	38 00 	8 . 
	inc bc			;3729	03 	. 
	ld bc,03431h		;372a	01 31 34 	. 1 4 
	ret p			;372d	f0 	. 
	ld c,h			;372e	4c 	L 
	call z,0cdcch		;372f	cc cc cd 	. . . 
	inc bc			;3732	03 	. 
	scf			;3733	37 	7 
	nop			;3734	00 	. 
	ex af,af'			;3735	08 	. 
	ld bc,003a1h		;3736	01 a1 03 	. . . 
	ld bc,03438h		;3739	01 38 34 	. 8 4 
	rst 28h			;373c	ef 	. 
	ld bc,0f034h		;373d	01 34 f0 	. 4 . 
	ld sp,01772h		;3740	31 72 17 	1 r . 
	ret m			;3743	f8 	. 
	inc b			;3744	04 	. 
	ld bc,003a2h		;3745	01 a2 03 	. . . 
	and d			;3748	a2 	. 
	inc bc			;3749	03 	. 
	ld sp,03234h		;374a	31 34 32 	1 4 2 
	jr nz,$+6		;374d	20 04 	  . 
	and d			;374f	a2 	. 
	inc bc			;3750	03 	. 
	adc a,h			;3751	8c 	. 
	ld de,014ach		;3752	11 ac 14 	. . . 
	add hl,bc			;3755	09 	. 
	ld d,(hl)			;3756	56 	V 
	jp c,059a5h		;3757	da a5 59 	. . Y 
	jr nc,$-57		;375a	30 c5 	0 . 
	ld e,h			;375c	5c 	\ 
	sub b			;375d	90 	. 
	xor d			;375e	aa 	. 
	sbc a,(hl)			;375f	9e 	. 
	ld (hl),b			;3760	70 	p 
	ld l,a			;3761	6f 	o 
	ld h,c			;3762	61 	a 
	and c			;3763	a1 	. 
	set 3,d		;3764	cb da 	. . 
	sub (hl)			;3766	96 	. 
	and h			;3767	a4 	. 
	ld sp,0b49fh		;3768	31 9f b4 	1 . . 
	rst 20h			;376b	e7 	. 
	and b			;376c	a0 	. 
	cp 05ch		;376d	fe 5c 	. \ 
	call m,01beah		;376f	fc ea 1b 	. . . 
	ld b,e			;3772	43 	C 
	jp z,0ed36h		;3773	ca 36 ed 	. 6 . 
	and a			;3776	a7 	. 
	sbc a,h			;3777	9c 	. 
	ld a,(hl)			;3778	7e 	~ 
	ld e,(hl)			;3779	5e 	^ 
	ret p			;377a	f0 	. 
	ld l,(hl)			;377b	6e 	n 
	inc hl			;377c	23 	# 
	add a,b			;377d	80 	. 
	sub e			;377e	93 	. 
	inc b			;377f	04 	. 
	rrca			;3780	0f 	. 
	jr c,$-53		;3781	38 c9 	8 . 
	rst 28h			;3783	ef 	. 
	dec a			;3784	3d 	= 
	inc (hl)			;3785	34 	4 
	xor 022h		;3786	ee 22 	. " 
	ld sp,hl			;3788	f9 	. 
	add a,e			;3789	83 	. 
	ld l,(hl)			;378a	6e 	n 
	inc b			;378b	04 	. 
	ld sp,00fa2h		;378c	31 a2 0f 	1 . . 
	daa			;378f	27 	' 
	inc bc			;3790	03 	. 
	ld sp,0310fh		;3791	31 0f 31 	1 . 1 
	rrca			;3794	0f 	. 
	ld sp,0a12ah		;3795	31 2a a1 	1 * . 
	inc bc			;3798	03 	. 
	ld sp,0c037h		;3799	31 37 c0 	1 7 . 
	nop			;379c	00 	. 
	inc b			;379d	04 	. 
	ld (bc),a			;379e	02 	. 
	jr c,$-53		;379f	38 c9 	8 . 
	and c			;37a1	a1 	. 
	inc bc			;37a2	03 	. 
	ld bc,00036h		;37a3	01 36 00 	. 6 . 
	ld (bc),a			;37a6	02 	. 
	dec de			;37a7	1b 	. 
	jr c,$-53		;37a8	38 c9 	8 . 
	rst 28h			;37aa	ef 	. 
	add hl,sp			;37ab	39 	9 
	ld hl,(003a1h)		;37ac	2a a1 03 	* . . 
	ret po			;37af	e0 	. 
	nop			;37b0	00 	. 
	ld b,01bh		;37b1	06 1b 	. . 
	inc sp			;37b3	33 	3 
	inc bc			;37b4	03 	. 
	rst 28h			;37b5	ef 	. 
	add hl,sp			;37b6	39 	9 
	ld sp,00431h		;37b7	31 31 04 	1 1 . 
	ld sp,0a10fh		;37ba	31 0f a1 	1 . . 
	inc bc			;37bd	03 	. 
	add a,(hl)			;37be	86 	. 
	inc d			;37bf	14 	. 
	and 05ch		;37c0	e6 5c 	. \ 
	rra			;37c2	1f 	. 
	dec bc			;37c3	0b 	. 
	and e			;37c4	a3 	. 
	adc a,a			;37c5	8f 	. 
	jr c,$-16		;37c6	38 ee 	8 . 
	jp (hl)			;37c8	e9 	. 
	dec d			;37c9	15 	. 
	ld h,e			;37ca	63 	c 
	cp e			;37cb	bb 	. 
	inc hl			;37cc	23 	# 
	xor 092h		;37cd	ee 92 	. . 
	dec c			;37cf	0d 	. 
	call 0f1edh		;37d0	cd ed f1 	. . . 
	inc hl			;37d3	23 	# 
	ld e,l			;37d4	5d 	] 
	dec de			;37d5	1b 	. 
	jp pe,03804h		;37d6	ea 04 38 	. . 8 
	ret			;37d9	c9 	. 
	rst 28h			;37da	ef 	. 
	ld sp,0011fh		;37db	31 1f 01 	1 . . 
	jr nz,$+7		;37de	20 05 	  . 
	jr c,$-53		;37e0	38 c9 	8 . 
	call 03297h		;37e2	cd 97 32 	. . 2 
	ld a,(hl)			;37e5	7e 	~ 
	cp 081h		;37e6	fe 81 	. . 
	jr c,$+16		;37e8	38 0e 	8 . 
	rst 28h			;37ea	ef 	. 
	and c			;37eb	a1 	. 
	dec de			;37ec	1b 	. 
	ld bc,03105h		;37ed	01 05 31 	. . 1 
	ld (hl),0a3h		;37f0	36 a3 	6 . 
	ld bc,00600h		;37f2	01 00 06 	. . . 
	dec de			;37f5	1b 	. 
	inc sp			;37f6	33 	3 
	inc bc			;37f7	03 	. 
	rst 28h			;37f8	ef 	. 
	and b			;37f9	a0 	. 
	ld bc,03131h		;37fa	01 31 31 	. 1 1 
	inc b			;37fd	04 	. 
	ld sp,0a10fh		;37fe	31 0f a1 	1 . . 
	inc bc			;3801	03 	. 
	adc a,h			;3802	8c 	. 
	djnz $-76		;3803	10 b2 	. . 
	inc de			;3805	13 	. 
	ld c,055h		;3806	0e 55 	. U 
	call po,0588dh		;3808	e4 8d 58 	. . X 
	add hl,sp			;380b	39 	9 
	cp h			;380c	bc 	. 
	ld e,e			;380d	5b 	[ 
	sbc a,b			;380e	98 	. 
	sbc a,(iy+000h)		;380f	fd 9e 00 	. . . 
	ld (hl),075h		;3812	36 75 	6 u 
	and b			;3814	a0 	. 
	in a,(0e8h)		;3815	db e8 	. . 
	or h			;3817	b4 	. 
	ld h,e			;3818	63 	c 
	ld b,d			;3819	42 	B 
	call nz,0b5e6h		;381a	c4 e6 b5 	. . . 
	add hl,bc			;381d	09 	. 
	ld (hl),0beh		;381e	36 be 	6 . 
	jp (hl)			;3820	e9 	. 
	ld (hl),073h		;3821	36 73 	6 s 
	dec de			;3823	1b 	. 
	ld e,l			;3824	5d 	] 
	call pe,0ded8h		;3825	ec d8 de 	. . . 
	ld h,e			;3828	63 	c 
	cp (hl)			;3829	be 	. 
	ret p			;382a	f0 	. 
	ld h,c			;382b	61 	a 
	and c			;382c	a1 	. 
	or e			;382d	b3 	. 
	inc c			;382e	0c 	. 
	inc b			;382f	04 	. 
	rrca			;3830	0f 	. 
	jr c,$-53		;3831	38 c9 	8 . 
	rst 28h			;3833	ef 	. 
	ld sp,00431h		;3834	31 31 04 	1 1 . 
	and c			;3837	a1 	. 
	inc bc			;3838	03 	. 
	dec de			;3839	1b 	. 
	jr z,$-93		;383a	28 a1 	( . 
	rrca			;383c	0f 	. 
	dec b			;383d	05 	. 
	inc h			;383e	24 	$ 
	ld sp,0380fh		;383f	31 0f 38 	1 . 8 
	ret			;3842	c9 	. 
	rst 28h			;3843	ef 	. 
	ld (003a3h),hl		;3844	22 a3 03 	" . . 
	dec de			;3847	1b 	. 
	jr c,$-53		;3848	38 c9 	8 . 
	rst 28h			;384a	ef 	. 
	ld sp,00030h		;384b	31 30 00 	1 0 . 
	ld e,0a2h		;384e	1e a2 	. . 
	jr c,$-15		;3850	38 ef 	8 . 
	ld bc,03031h		;3852	01 31 30 	. 1 0 
	nop			;3855	00 	. 
	rlca			;3856	07 	. 
	dec h			;3857	25 	% 
	inc b			;3858	04 	. 
	jr c,$-59		;3859	38 c3 	8 . 
	call nz,00236h		;385b	c4 36 02 	. 6 . 
	ld sp,00030h		;385e	31 30 00 	1 0 . 
	add hl,bc			;3861	09 	. 
	and b			;3862	a0 	. 
	ld bc,00037h		;3863	01 37 00 	. 7 . 
	ld b,0a1h		;3866	06 a1 	. . 
	ld bc,00205h		;3868	01 05 02 	. . . 
	and c			;386b	a1 	. 
	jr c,$-53		;386c	38 c9 	8 . 
	rst 38h			;386e	ff 	. 
	rst 38h			;386f	ff 	. 
	rst 38h			;3870	ff 	. 
	rst 38h			;3871	ff 	. 
	rst 38h			;3872	ff 	. 
	rst 38h			;3873	ff 	. 
	rst 38h			;3874	ff 	. 
	rst 38h			;3875	ff 	. 
	rst 38h			;3876	ff 	. 
	rst 38h			;3877	ff 	. 
	rst 38h			;3878	ff 	. 
	rst 38h			;3879	ff 	. 
	rst 38h			;387a	ff 	. 
	rst 38h			;387b	ff 	. 
	rst 38h			;387c	ff 	. 
	rst 38h			;387d	ff 	. 
	rst 38h			;387e	ff 	. 
	rst 38h			;387f	ff 	. 
	rst 38h			;3880	ff 	. 
	rst 38h			;3881	ff 	. 
	rst 38h			;3882	ff 	. 
	rst 38h			;3883	ff 	. 
	rst 38h			;3884	ff 	. 
	rst 38h			;3885	ff 	. 
	rst 38h			;3886	ff 	. 
	rst 38h			;3887	ff 	. 
	rst 38h			;3888	ff 	. 
	rst 38h			;3889	ff 	. 
	rst 38h			;388a	ff 	. 
	rst 38h			;388b	ff 	. 
	rst 38h			;388c	ff 	. 
	rst 38h			;388d	ff 	. 
	rst 38h			;388e	ff 	. 
	rst 38h			;388f	ff 	. 
	rst 38h			;3890	ff 	. 
	rst 38h			;3891	ff 	. 
	rst 38h			;3892	ff 	. 
	rst 38h			;3893	ff 	. 
	rst 38h			;3894	ff 	. 
	rst 38h			;3895	ff 	. 
	rst 38h			;3896	ff 	. 
	rst 38h			;3897	ff 	. 
	rst 38h			;3898	ff 	. 
	rst 38h			;3899	ff 	. 
	rst 38h			;389a	ff 	. 
	rst 38h			;389b	ff 	. 
	rst 38h			;389c	ff 	. 
	rst 38h			;389d	ff 	. 
	rst 38h			;389e	ff 	. 
	rst 38h			;389f	ff 	. 
	rst 38h			;38a0	ff 	. 
	rst 38h			;38a1	ff 	. 
	rst 38h			;38a2	ff 	. 
	rst 38h			;38a3	ff 	. 
	rst 38h			;38a4	ff 	. 
	rst 38h			;38a5	ff 	. 
	rst 38h			;38a6	ff 	. 
	rst 38h			;38a7	ff 	. 
	rst 38h			;38a8	ff 	. 
	rst 38h			;38a9	ff 	. 
	rst 38h			;38aa	ff 	. 
	rst 38h			;38ab	ff 	. 
	rst 38h			;38ac	ff 	. 
	rst 38h			;38ad	ff 	. 
	rst 38h			;38ae	ff 	. 
	rst 38h			;38af	ff 	. 
	rst 38h			;38b0	ff 	. 
	rst 38h			;38b1	ff 	. 
	rst 38h			;38b2	ff 	. 
	rst 38h			;38b3	ff 	. 
	rst 38h			;38b4	ff 	. 
	rst 38h			;38b5	ff 	. 
	rst 38h			;38b6	ff 	. 
	rst 38h			;38b7	ff 	. 
	rst 38h			;38b8	ff 	. 
	rst 38h			;38b9	ff 	. 
	rst 38h			;38ba	ff 	. 
	rst 38h			;38bb	ff 	. 
	rst 38h			;38bc	ff 	. 
	rst 38h			;38bd	ff 	. 
	rst 38h			;38be	ff 	. 
	rst 38h			;38bf	ff 	. 
	rst 38h			;38c0	ff 	. 
	rst 38h			;38c1	ff 	. 
	rst 38h			;38c2	ff 	. 
	rst 38h			;38c3	ff 	. 
	rst 38h			;38c4	ff 	. 
	rst 38h			;38c5	ff 	. 
	rst 38h			;38c6	ff 	. 
	rst 38h			;38c7	ff 	. 
	rst 38h			;38c8	ff 	. 
	rst 38h			;38c9	ff 	. 
	rst 38h			;38ca	ff 	. 
	rst 38h			;38cb	ff 	. 
	rst 38h			;38cc	ff 	. 
	rst 38h			;38cd	ff 	. 
	rst 38h			;38ce	ff 	. 
	rst 38h			;38cf	ff 	. 
	rst 38h			;38d0	ff 	. 
	rst 38h			;38d1	ff 	. 
	rst 38h			;38d2	ff 	. 
	rst 38h			;38d3	ff 	. 
	rst 38h			;38d4	ff 	. 
	rst 38h			;38d5	ff 	. 
	rst 38h			;38d6	ff 	. 
	rst 38h			;38d7	ff 	. 
	rst 38h			;38d8	ff 	. 
	rst 38h			;38d9	ff 	. 
	rst 38h			;38da	ff 	. 
	rst 38h			;38db	ff 	. 
	rst 38h			;38dc	ff 	. 
	rst 38h			;38dd	ff 	. 
	rst 38h			;38de	ff 	. 
	rst 38h			;38df	ff 	. 
	rst 38h			;38e0	ff 	. 
	rst 38h			;38e1	ff 	. 
	rst 38h			;38e2	ff 	. 
	rst 38h			;38e3	ff 	. 
	rst 38h			;38e4	ff 	. 
	rst 38h			;38e5	ff 	. 
	rst 38h			;38e6	ff 	. 
	rst 38h			;38e7	ff 	. 
	rst 38h			;38e8	ff 	. 
	rst 38h			;38e9	ff 	. 
	rst 38h			;38ea	ff 	. 
	rst 38h			;38eb	ff 	. 
	rst 38h			;38ec	ff 	. 
	rst 38h			;38ed	ff 	. 
	rst 38h			;38ee	ff 	. 
	rst 38h			;38ef	ff 	. 
	rst 38h			;38f0	ff 	. 
	rst 38h			;38f1	ff 	. 
	rst 38h			;38f2	ff 	. 
	rst 38h			;38f3	ff 	. 
	rst 38h			;38f4	ff 	. 
	rst 38h			;38f5	ff 	. 
	rst 38h			;38f6	ff 	. 
	rst 38h			;38f7	ff 	. 
	rst 38h			;38f8	ff 	. 
	rst 38h			;38f9	ff 	. 
	rst 38h			;38fa	ff 	. 
	rst 38h			;38fb	ff 	. 
	rst 38h			;38fc	ff 	. 
	rst 38h			;38fd	ff 	. 
	rst 38h			;38fe	ff 	. 
	rst 38h			;38ff	ff 	. 
	rst 38h			;3900	ff 	. 
	rst 38h			;3901	ff 	. 
	rst 38h			;3902	ff 	. 
	rst 38h			;3903	ff 	. 
	rst 38h			;3904	ff 	. 
	rst 38h			;3905	ff 	. 
	rst 38h			;3906	ff 	. 
	rst 38h			;3907	ff 	. 
	rst 38h			;3908	ff 	. 
	rst 38h			;3909	ff 	. 
	rst 38h			;390a	ff 	. 
	rst 38h			;390b	ff 	. 
	rst 38h			;390c	ff 	. 
	rst 38h			;390d	ff 	. 
	rst 38h			;390e	ff 	. 
	rst 38h			;390f	ff 	. 
	rst 38h			;3910	ff 	. 
	rst 38h			;3911	ff 	. 
	rst 38h			;3912	ff 	. 
	rst 38h			;3913	ff 	. 
	rst 38h			;3914	ff 	. 
	rst 38h			;3915	ff 	. 
	rst 38h			;3916	ff 	. 
	rst 38h			;3917	ff 	. 
	rst 38h			;3918	ff 	. 
	rst 38h			;3919	ff 	. 
	rst 38h			;391a	ff 	. 
	rst 38h			;391b	ff 	. 
	rst 38h			;391c	ff 	. 
	rst 38h			;391d	ff 	. 
	rst 38h			;391e	ff 	. 
	rst 38h			;391f	ff 	. 
	rst 38h			;3920	ff 	. 
	rst 38h			;3921	ff 	. 
	rst 38h			;3922	ff 	. 
	rst 38h			;3923	ff 	. 
	rst 38h			;3924	ff 	. 
	rst 38h			;3925	ff 	. 
	rst 38h			;3926	ff 	. 
	rst 38h			;3927	ff 	. 
	rst 38h			;3928	ff 	. 
	rst 38h			;3929	ff 	. 
	rst 38h			;392a	ff 	. 
	rst 38h			;392b	ff 	. 
	rst 38h			;392c	ff 	. 
	rst 38h			;392d	ff 	. 
	rst 38h			;392e	ff 	. 
	rst 38h			;392f	ff 	. 
	rst 38h			;3930	ff 	. 
	rst 38h			;3931	ff 	. 
	rst 38h			;3932	ff 	. 
	rst 38h			;3933	ff 	. 
	rst 38h			;3934	ff 	. 
	rst 38h			;3935	ff 	. 
	rst 38h			;3936	ff 	. 
	rst 38h			;3937	ff 	. 
	rst 38h			;3938	ff 	. 
	rst 38h			;3939	ff 	. 
	rst 38h			;393a	ff 	. 
	rst 38h			;393b	ff 	. 
	rst 38h			;393c	ff 	. 
	rst 38h			;393d	ff 	. 
	rst 38h			;393e	ff 	. 
	rst 38h			;393f	ff 	. 
	rst 38h			;3940	ff 	. 
	rst 38h			;3941	ff 	. 
	rst 38h			;3942	ff 	. 
	rst 38h			;3943	ff 	. 
	rst 38h			;3944	ff 	. 
	rst 38h			;3945	ff 	. 
	rst 38h			;3946	ff 	. 
	rst 38h			;3947	ff 	. 
	rst 38h			;3948	ff 	. 
	rst 38h			;3949	ff 	. 
	rst 38h			;394a	ff 	. 
	rst 38h			;394b	ff 	. 
	rst 38h			;394c	ff 	. 
	rst 38h			;394d	ff 	. 
	rst 38h			;394e	ff 	. 
	rst 38h			;394f	ff 	. 
	rst 38h			;3950	ff 	. 
	rst 38h			;3951	ff 	. 
	rst 38h			;3952	ff 	. 
	rst 38h			;3953	ff 	. 
	rst 38h			;3954	ff 	. 
	rst 38h			;3955	ff 	. 
	rst 38h			;3956	ff 	. 
	rst 38h			;3957	ff 	. 
	rst 38h			;3958	ff 	. 
	rst 38h			;3959	ff 	. 
	rst 38h			;395a	ff 	. 
	rst 38h			;395b	ff 	. 
	rst 38h			;395c	ff 	. 
	rst 38h			;395d	ff 	. 
	rst 38h			;395e	ff 	. 
	rst 38h			;395f	ff 	. 
	rst 38h			;3960	ff 	. 
	rst 38h			;3961	ff 	. 
	rst 38h			;3962	ff 	. 
	rst 38h			;3963	ff 	. 
	rst 38h			;3964	ff 	. 
	rst 38h			;3965	ff 	. 
	rst 38h			;3966	ff 	. 
	rst 38h			;3967	ff 	. 
	rst 38h			;3968	ff 	. 
	rst 38h			;3969	ff 	. 
	rst 38h			;396a	ff 	. 
	rst 38h			;396b	ff 	. 
	rst 38h			;396c	ff 	. 
	rst 38h			;396d	ff 	. 
	rst 38h			;396e	ff 	. 
	rst 38h			;396f	ff 	. 
	rst 38h			;3970	ff 	. 
	rst 38h			;3971	ff 	. 
	rst 38h			;3972	ff 	. 
	rst 38h			;3973	ff 	. 
	rst 38h			;3974	ff 	. 
	rst 38h			;3975	ff 	. 
	rst 38h			;3976	ff 	. 
	rst 38h			;3977	ff 	. 
	rst 38h			;3978	ff 	. 
	rst 38h			;3979	ff 	. 
	rst 38h			;397a	ff 	. 
	rst 38h			;397b	ff 	. 
	rst 38h			;397c	ff 	. 
	rst 38h			;397d	ff 	. 
	rst 38h			;397e	ff 	. 
	rst 38h			;397f	ff 	. 
	rst 38h			;3980	ff 	. 
	rst 38h			;3981	ff 	. 
	rst 38h			;3982	ff 	. 
	rst 38h			;3983	ff 	. 
	rst 38h			;3984	ff 	. 
	rst 38h			;3985	ff 	. 
	rst 38h			;3986	ff 	. 
	rst 38h			;3987	ff 	. 
	rst 38h			;3988	ff 	. 
	rst 38h			;3989	ff 	. 
	rst 38h			;398a	ff 	. 
	rst 38h			;398b	ff 	. 
	rst 38h			;398c	ff 	. 
	rst 38h			;398d	ff 	. 
	rst 38h			;398e	ff 	. 
	rst 38h			;398f	ff 	. 
	rst 38h			;3990	ff 	. 
	rst 38h			;3991	ff 	. 
	rst 38h			;3992	ff 	. 
	rst 38h			;3993	ff 	. 
	rst 38h			;3994	ff 	. 
	rst 38h			;3995	ff 	. 
	rst 38h			;3996	ff 	. 
	rst 38h			;3997	ff 	. 
	rst 38h			;3998	ff 	. 
	rst 38h			;3999	ff 	. 
	rst 38h			;399a	ff 	. 
	rst 38h			;399b	ff 	. 
	rst 38h			;399c	ff 	. 
	rst 38h			;399d	ff 	. 
	rst 38h			;399e	ff 	. 
	rst 38h			;399f	ff 	. 
	rst 38h			;39a0	ff 	. 
	rst 38h			;39a1	ff 	. 
	rst 38h			;39a2	ff 	. 
	rst 38h			;39a3	ff 	. 
	rst 38h			;39a4	ff 	. 
	rst 38h			;39a5	ff 	. 
	rst 38h			;39a6	ff 	. 
	rst 38h			;39a7	ff 	. 
	rst 38h			;39a8	ff 	. 
	rst 38h			;39a9	ff 	. 
	rst 38h			;39aa	ff 	. 
	rst 38h			;39ab	ff 	. 
	rst 38h			;39ac	ff 	. 
	rst 38h			;39ad	ff 	. 
	rst 38h			;39ae	ff 	. 
	rst 38h			;39af	ff 	. 
	rst 38h			;39b0	ff 	. 
	rst 38h			;39b1	ff 	. 
	rst 38h			;39b2	ff 	. 
	rst 38h			;39b3	ff 	. 
	rst 38h			;39b4	ff 	. 
	rst 38h			;39b5	ff 	. 
	rst 38h			;39b6	ff 	. 
	rst 38h			;39b7	ff 	. 
	rst 38h			;39b8	ff 	. 
	rst 38h			;39b9	ff 	. 
	rst 38h			;39ba	ff 	. 
	rst 38h			;39bb	ff 	. 
	rst 38h			;39bc	ff 	. 
	rst 38h			;39bd	ff 	. 
	rst 38h			;39be	ff 	. 
	rst 38h			;39bf	ff 	. 
	rst 38h			;39c0	ff 	. 
	rst 38h			;39c1	ff 	. 
	rst 38h			;39c2	ff 	. 
	rst 38h			;39c3	ff 	. 
	rst 38h			;39c4	ff 	. 
	rst 38h			;39c5	ff 	. 
	rst 38h			;39c6	ff 	. 
	rst 38h			;39c7	ff 	. 
	rst 38h			;39c8	ff 	. 
	rst 38h			;39c9	ff 	. 
	rst 38h			;39ca	ff 	. 
	rst 38h			;39cb	ff 	. 
	rst 38h			;39cc	ff 	. 
	rst 38h			;39cd	ff 	. 
	rst 38h			;39ce	ff 	. 
	rst 38h			;39cf	ff 	. 
	rst 38h			;39d0	ff 	. 
	rst 38h			;39d1	ff 	. 
	rst 38h			;39d2	ff 	. 
	rst 38h			;39d3	ff 	. 
	rst 38h			;39d4	ff 	. 
	rst 38h			;39d5	ff 	. 
	rst 38h			;39d6	ff 	. 
	rst 38h			;39d7	ff 	. 
	rst 38h			;39d8	ff 	. 
	rst 38h			;39d9	ff 	. 
	rst 38h			;39da	ff 	. 
	rst 38h			;39db	ff 	. 
	rst 38h			;39dc	ff 	. 
	rst 38h			;39dd	ff 	. 
	rst 38h			;39de	ff 	. 
	rst 38h			;39df	ff 	. 
	rst 38h			;39e0	ff 	. 
	rst 38h			;39e1	ff 	. 
	rst 38h			;39e2	ff 	. 
	rst 38h			;39e3	ff 	. 
	rst 38h			;39e4	ff 	. 
	rst 38h			;39e5	ff 	. 
	rst 38h			;39e6	ff 	. 
	rst 38h			;39e7	ff 	. 
	rst 38h			;39e8	ff 	. 
	rst 38h			;39e9	ff 	. 
	rst 38h			;39ea	ff 	. 
	rst 38h			;39eb	ff 	. 
	rst 38h			;39ec	ff 	. 
	rst 38h			;39ed	ff 	. 
	rst 38h			;39ee	ff 	. 
	rst 38h			;39ef	ff 	. 
	rst 38h			;39f0	ff 	. 
	rst 38h			;39f1	ff 	. 
	rst 38h			;39f2	ff 	. 
	rst 38h			;39f3	ff 	. 
	rst 38h			;39f4	ff 	. 
	rst 38h			;39f5	ff 	. 
	rst 38h			;39f6	ff 	. 
	rst 38h			;39f7	ff 	. 
	rst 38h			;39f8	ff 	. 
	rst 38h			;39f9	ff 	. 
	rst 38h			;39fa	ff 	. 
	rst 38h			;39fb	ff 	. 
	rst 38h			;39fc	ff 	. 
	rst 38h			;39fd	ff 	. 
	rst 38h			;39fe	ff 	. 
	rst 38h			;39ff	ff 	. 
	rst 38h			;3a00	ff 	. 
	rst 38h			;3a01	ff 	. 
	rst 38h			;3a02	ff 	. 
	rst 38h			;3a03	ff 	. 
	rst 38h			;3a04	ff 	. 
	rst 38h			;3a05	ff 	. 
	rst 38h			;3a06	ff 	. 
	rst 38h			;3a07	ff 	. 
	rst 38h			;3a08	ff 	. 
	rst 38h			;3a09	ff 	. 
	rst 38h			;3a0a	ff 	. 
	rst 38h			;3a0b	ff 	. 
	rst 38h			;3a0c	ff 	. 
	rst 38h			;3a0d	ff 	. 
	rst 38h			;3a0e	ff 	. 
	rst 38h			;3a0f	ff 	. 
	rst 38h			;3a10	ff 	. 
	rst 38h			;3a11	ff 	. 
	rst 38h			;3a12	ff 	. 
	rst 38h			;3a13	ff 	. 
	rst 38h			;3a14	ff 	. 
	rst 38h			;3a15	ff 	. 
	rst 38h			;3a16	ff 	. 
	rst 38h			;3a17	ff 	. 
	rst 38h			;3a18	ff 	. 
	rst 38h			;3a19	ff 	. 
	rst 38h			;3a1a	ff 	. 
	rst 38h			;3a1b	ff 	. 
	rst 38h			;3a1c	ff 	. 
	rst 38h			;3a1d	ff 	. 
	rst 38h			;3a1e	ff 	. 
	rst 38h			;3a1f	ff 	. 
	rst 38h			;3a20	ff 	. 
	rst 38h			;3a21	ff 	. 
	rst 38h			;3a22	ff 	. 
	rst 38h			;3a23	ff 	. 
	rst 38h			;3a24	ff 	. 
	rst 38h			;3a25	ff 	. 
	rst 38h			;3a26	ff 	. 
	rst 38h			;3a27	ff 	. 
	rst 38h			;3a28	ff 	. 
	rst 38h			;3a29	ff 	. 
	rst 38h			;3a2a	ff 	. 
	rst 38h			;3a2b	ff 	. 
	rst 38h			;3a2c	ff 	. 
	rst 38h			;3a2d	ff 	. 
	rst 38h			;3a2e	ff 	. 
	rst 38h			;3a2f	ff 	. 
	rst 38h			;3a30	ff 	. 
	rst 38h			;3a31	ff 	. 
	rst 38h			;3a32	ff 	. 
	rst 38h			;3a33	ff 	. 
	rst 38h			;3a34	ff 	. 
	rst 38h			;3a35	ff 	. 
	rst 38h			;3a36	ff 	. 
	rst 38h			;3a37	ff 	. 
	rst 38h			;3a38	ff 	. 
	rst 38h			;3a39	ff 	. 
	rst 38h			;3a3a	ff 	. 
	rst 38h			;3a3b	ff 	. 
	rst 38h			;3a3c	ff 	. 
	rst 38h			;3a3d	ff 	. 
	rst 38h			;3a3e	ff 	. 
	rst 38h			;3a3f	ff 	. 
	rst 38h			;3a40	ff 	. 
	rst 38h			;3a41	ff 	. 
	rst 38h			;3a42	ff 	. 
	rst 38h			;3a43	ff 	. 
	rst 38h			;3a44	ff 	. 
	rst 38h			;3a45	ff 	. 
	rst 38h			;3a46	ff 	. 
	rst 38h			;3a47	ff 	. 
	rst 38h			;3a48	ff 	. 
	rst 38h			;3a49	ff 	. 
	rst 38h			;3a4a	ff 	. 
	rst 38h			;3a4b	ff 	. 
	rst 38h			;3a4c	ff 	. 
	rst 38h			;3a4d	ff 	. 
	rst 38h			;3a4e	ff 	. 
	rst 38h			;3a4f	ff 	. 
	rst 38h			;3a50	ff 	. 
	rst 38h			;3a51	ff 	. 
	rst 38h			;3a52	ff 	. 
	rst 38h			;3a53	ff 	. 
	rst 38h			;3a54	ff 	. 
	rst 38h			;3a55	ff 	. 
	rst 38h			;3a56	ff 	. 
	rst 38h			;3a57	ff 	. 
	rst 38h			;3a58	ff 	. 
	rst 38h			;3a59	ff 	. 
	rst 38h			;3a5a	ff 	. 
	rst 38h			;3a5b	ff 	. 
	rst 38h			;3a5c	ff 	. 
	rst 38h			;3a5d	ff 	. 
	rst 38h			;3a5e	ff 	. 
	rst 38h			;3a5f	ff 	. 
	rst 38h			;3a60	ff 	. 
	rst 38h			;3a61	ff 	. 
	rst 38h			;3a62	ff 	. 
	rst 38h			;3a63	ff 	. 
	rst 38h			;3a64	ff 	. 
	rst 38h			;3a65	ff 	. 
	rst 38h			;3a66	ff 	. 
	rst 38h			;3a67	ff 	. 
	rst 38h			;3a68	ff 	. 
	rst 38h			;3a69	ff 	. 
	rst 38h			;3a6a	ff 	. 
	rst 38h			;3a6b	ff 	. 
	rst 38h			;3a6c	ff 	. 
	rst 38h			;3a6d	ff 	. 
	rst 38h			;3a6e	ff 	. 
	rst 38h			;3a6f	ff 	. 
	rst 38h			;3a70	ff 	. 
	rst 38h			;3a71	ff 	. 
	rst 38h			;3a72	ff 	. 
	rst 38h			;3a73	ff 	. 
	rst 38h			;3a74	ff 	. 
	rst 38h			;3a75	ff 	. 
	rst 38h			;3a76	ff 	. 
	rst 38h			;3a77	ff 	. 
	rst 38h			;3a78	ff 	. 
	rst 38h			;3a79	ff 	. 
	rst 38h			;3a7a	ff 	. 
	rst 38h			;3a7b	ff 	. 
	rst 38h			;3a7c	ff 	. 
	rst 38h			;3a7d	ff 	. 
	rst 38h			;3a7e	ff 	. 
	rst 38h			;3a7f	ff 	. 
	rst 38h			;3a80	ff 	. 
	rst 38h			;3a81	ff 	. 
	rst 38h			;3a82	ff 	. 
	rst 38h			;3a83	ff 	. 
	rst 38h			;3a84	ff 	. 
	rst 38h			;3a85	ff 	. 
	rst 38h			;3a86	ff 	. 
	rst 38h			;3a87	ff 	. 
	rst 38h			;3a88	ff 	. 
	rst 38h			;3a89	ff 	. 
	rst 38h			;3a8a	ff 	. 
	rst 38h			;3a8b	ff 	. 
	rst 38h			;3a8c	ff 	. 
	rst 38h			;3a8d	ff 	. 
	rst 38h			;3a8e	ff 	. 
	rst 38h			;3a8f	ff 	. 
	rst 38h			;3a90	ff 	. 
	rst 38h			;3a91	ff 	. 
	rst 38h			;3a92	ff 	. 
	rst 38h			;3a93	ff 	. 
	rst 38h			;3a94	ff 	. 
	rst 38h			;3a95	ff 	. 
	rst 38h			;3a96	ff 	. 
	rst 38h			;3a97	ff 	. 
	rst 38h			;3a98	ff 	. 
	rst 38h			;3a99	ff 	. 
	rst 38h			;3a9a	ff 	. 
	rst 38h			;3a9b	ff 	. 
	rst 38h			;3a9c	ff 	. 
	rst 38h			;3a9d	ff 	. 
	rst 38h			;3a9e	ff 	. 
	rst 38h			;3a9f	ff 	. 
	rst 38h			;3aa0	ff 	. 
	rst 38h			;3aa1	ff 	. 
	rst 38h			;3aa2	ff 	. 
	rst 38h			;3aa3	ff 	. 
	rst 38h			;3aa4	ff 	. 
	rst 38h			;3aa5	ff 	. 
	rst 38h			;3aa6	ff 	. 
	rst 38h			;3aa7	ff 	. 
	rst 38h			;3aa8	ff 	. 
	rst 38h			;3aa9	ff 	. 
	rst 38h			;3aaa	ff 	. 
	rst 38h			;3aab	ff 	. 
	rst 38h			;3aac	ff 	. 
	rst 38h			;3aad	ff 	. 
	rst 38h			;3aae	ff 	. 
	rst 38h			;3aaf	ff 	. 
	rst 38h			;3ab0	ff 	. 
	rst 38h			;3ab1	ff 	. 
	rst 38h			;3ab2	ff 	. 
	rst 38h			;3ab3	ff 	. 
	rst 38h			;3ab4	ff 	. 
	rst 38h			;3ab5	ff 	. 
	rst 38h			;3ab6	ff 	. 
	rst 38h			;3ab7	ff 	. 
	rst 38h			;3ab8	ff 	. 
	rst 38h			;3ab9	ff 	. 
	rst 38h			;3aba	ff 	. 
	rst 38h			;3abb	ff 	. 
	rst 38h			;3abc	ff 	. 
	rst 38h			;3abd	ff 	. 
	rst 38h			;3abe	ff 	. 
	rst 38h			;3abf	ff 	. 
	rst 38h			;3ac0	ff 	. 
	rst 38h			;3ac1	ff 	. 
	rst 38h			;3ac2	ff 	. 
	rst 38h			;3ac3	ff 	. 
	rst 38h			;3ac4	ff 	. 
	rst 38h			;3ac5	ff 	. 
	rst 38h			;3ac6	ff 	. 
	rst 38h			;3ac7	ff 	. 
	rst 38h			;3ac8	ff 	. 
	rst 38h			;3ac9	ff 	. 
	rst 38h			;3aca	ff 	. 
	rst 38h			;3acb	ff 	. 
	rst 38h			;3acc	ff 	. 
	rst 38h			;3acd	ff 	. 
	rst 38h			;3ace	ff 	. 
	rst 38h			;3acf	ff 	. 
	rst 38h			;3ad0	ff 	. 
	rst 38h			;3ad1	ff 	. 
	rst 38h			;3ad2	ff 	. 
	rst 38h			;3ad3	ff 	. 
	rst 38h			;3ad4	ff 	. 
	rst 38h			;3ad5	ff 	. 
	rst 38h			;3ad6	ff 	. 
	rst 38h			;3ad7	ff 	. 
	rst 38h			;3ad8	ff 	. 
	rst 38h			;3ad9	ff 	. 
	rst 38h			;3ada	ff 	. 
	rst 38h			;3adb	ff 	. 
	rst 38h			;3adc	ff 	. 
	rst 38h			;3add	ff 	. 
	rst 38h			;3ade	ff 	. 
	rst 38h			;3adf	ff 	. 
	rst 38h			;3ae0	ff 	. 
	rst 38h			;3ae1	ff 	. 
	rst 38h			;3ae2	ff 	. 
	rst 38h			;3ae3	ff 	. 
	rst 38h			;3ae4	ff 	. 
	rst 38h			;3ae5	ff 	. 
	rst 38h			;3ae6	ff 	. 
	rst 38h			;3ae7	ff 	. 
	rst 38h			;3ae8	ff 	. 
	rst 38h			;3ae9	ff 	. 
	rst 38h			;3aea	ff 	. 
	rst 38h			;3aeb	ff 	. 
	rst 38h			;3aec	ff 	. 
	rst 38h			;3aed	ff 	. 
	rst 38h			;3aee	ff 	. 
	rst 38h			;3aef	ff 	. 
	rst 38h			;3af0	ff 	. 
	rst 38h			;3af1	ff 	. 
	rst 38h			;3af2	ff 	. 
	rst 38h			;3af3	ff 	. 
	rst 38h			;3af4	ff 	. 
	rst 38h			;3af5	ff 	. 
	rst 38h			;3af6	ff 	. 
	rst 38h			;3af7	ff 	. 
	rst 38h			;3af8	ff 	. 
	rst 38h			;3af9	ff 	. 
	rst 38h			;3afa	ff 	. 
	rst 38h			;3afb	ff 	. 
	rst 38h			;3afc	ff 	. 
	rst 38h			;3afd	ff 	. 
	rst 38h			;3afe	ff 	. 
	rst 38h			;3aff	ff 	. 
	rst 38h			;3b00	ff 	. 
	rst 38h			;3b01	ff 	. 
	rst 38h			;3b02	ff 	. 
	rst 38h			;3b03	ff 	. 
	rst 38h			;3b04	ff 	. 
	rst 38h			;3b05	ff 	. 
	rst 38h			;3b06	ff 	. 
	rst 38h			;3b07	ff 	. 
	rst 38h			;3b08	ff 	. 
	rst 38h			;3b09	ff 	. 
	rst 38h			;3b0a	ff 	. 
	rst 38h			;3b0b	ff 	. 
	rst 38h			;3b0c	ff 	. 
	rst 38h			;3b0d	ff 	. 
	rst 38h			;3b0e	ff 	. 
	rst 38h			;3b0f	ff 	. 
	rst 38h			;3b10	ff 	. 
	rst 38h			;3b11	ff 	. 
	rst 38h			;3b12	ff 	. 
	rst 38h			;3b13	ff 	. 
	rst 38h			;3b14	ff 	. 
	rst 38h			;3b15	ff 	. 
	rst 38h			;3b16	ff 	. 
	rst 38h			;3b17	ff 	. 
	rst 38h			;3b18	ff 	. 
	rst 38h			;3b19	ff 	. 
	rst 38h			;3b1a	ff 	. 
	rst 38h			;3b1b	ff 	. 
	rst 38h			;3b1c	ff 	. 
	rst 38h			;3b1d	ff 	. 
	rst 38h			;3b1e	ff 	. 
	rst 38h			;3b1f	ff 	. 
	rst 38h			;3b20	ff 	. 
	rst 38h			;3b21	ff 	. 
	rst 38h			;3b22	ff 	. 
	rst 38h			;3b23	ff 	. 
	rst 38h			;3b24	ff 	. 
	rst 38h			;3b25	ff 	. 
	rst 38h			;3b26	ff 	. 
	rst 38h			;3b27	ff 	. 
	rst 38h			;3b28	ff 	. 
	rst 38h			;3b29	ff 	. 
	rst 38h			;3b2a	ff 	. 
	rst 38h			;3b2b	ff 	. 
	rst 38h			;3b2c	ff 	. 
	rst 38h			;3b2d	ff 	. 
	rst 38h			;3b2e	ff 	. 
	rst 38h			;3b2f	ff 	. 
	rst 38h			;3b30	ff 	. 
	rst 38h			;3b31	ff 	. 
	rst 38h			;3b32	ff 	. 
	rst 38h			;3b33	ff 	. 
	rst 38h			;3b34	ff 	. 
	rst 38h			;3b35	ff 	. 
	rst 38h			;3b36	ff 	. 
	rst 38h			;3b37	ff 	. 
	rst 38h			;3b38	ff 	. 
	rst 38h			;3b39	ff 	. 
	rst 38h			;3b3a	ff 	. 
	rst 38h			;3b3b	ff 	. 
	rst 38h			;3b3c	ff 	. 
	rst 38h			;3b3d	ff 	. 
	rst 38h			;3b3e	ff 	. 
	rst 38h			;3b3f	ff 	. 
	rst 38h			;3b40	ff 	. 
	rst 38h			;3b41	ff 	. 
	rst 38h			;3b42	ff 	. 
	rst 38h			;3b43	ff 	. 
	rst 38h			;3b44	ff 	. 
	rst 38h			;3b45	ff 	. 
	rst 38h			;3b46	ff 	. 
	rst 38h			;3b47	ff 	. 
	rst 38h			;3b48	ff 	. 
	rst 38h			;3b49	ff 	. 
	rst 38h			;3b4a	ff 	. 
	rst 38h			;3b4b	ff 	. 
	rst 38h			;3b4c	ff 	. 
	rst 38h			;3b4d	ff 	. 
	rst 38h			;3b4e	ff 	. 
	rst 38h			;3b4f	ff 	. 
	rst 38h			;3b50	ff 	. 
	rst 38h			;3b51	ff 	. 
	rst 38h			;3b52	ff 	. 
	rst 38h			;3b53	ff 	. 
	rst 38h			;3b54	ff 	. 
	rst 38h			;3b55	ff 	. 
	rst 38h			;3b56	ff 	. 
	rst 38h			;3b57	ff 	. 
	rst 38h			;3b58	ff 	. 
	rst 38h			;3b59	ff 	. 
	rst 38h			;3b5a	ff 	. 
	rst 38h			;3b5b	ff 	. 
	rst 38h			;3b5c	ff 	. 
	rst 38h			;3b5d	ff 	. 
	rst 38h			;3b5e	ff 	. 
	rst 38h			;3b5f	ff 	. 
	rst 38h			;3b60	ff 	. 
	rst 38h			;3b61	ff 	. 
	rst 38h			;3b62	ff 	. 
	rst 38h			;3b63	ff 	. 
	rst 38h			;3b64	ff 	. 
	rst 38h			;3b65	ff 	. 
	rst 38h			;3b66	ff 	. 
	rst 38h			;3b67	ff 	. 
	rst 38h			;3b68	ff 	. 
	rst 38h			;3b69	ff 	. 
	rst 38h			;3b6a	ff 	. 
	rst 38h			;3b6b	ff 	. 
	rst 38h			;3b6c	ff 	. 
	rst 38h			;3b6d	ff 	. 
	rst 38h			;3b6e	ff 	. 
	rst 38h			;3b6f	ff 	. 
	rst 38h			;3b70	ff 	. 
	rst 38h			;3b71	ff 	. 
	rst 38h			;3b72	ff 	. 
	rst 38h			;3b73	ff 	. 
	rst 38h			;3b74	ff 	. 
	rst 38h			;3b75	ff 	. 
	rst 38h			;3b76	ff 	. 
	rst 38h			;3b77	ff 	. 
	rst 38h			;3b78	ff 	. 
	rst 38h			;3b79	ff 	. 
	rst 38h			;3b7a	ff 	. 
	rst 38h			;3b7b	ff 	. 
	rst 38h			;3b7c	ff 	. 
	rst 38h			;3b7d	ff 	. 
	rst 38h			;3b7e	ff 	. 
	rst 38h			;3b7f	ff 	. 
	rst 38h			;3b80	ff 	. 
	rst 38h			;3b81	ff 	. 
	rst 38h			;3b82	ff 	. 
	rst 38h			;3b83	ff 	. 
	rst 38h			;3b84	ff 	. 
	rst 38h			;3b85	ff 	. 
	rst 38h			;3b86	ff 	. 
	rst 38h			;3b87	ff 	. 
	rst 38h			;3b88	ff 	. 
	rst 38h			;3b89	ff 	. 
	rst 38h			;3b8a	ff 	. 
	rst 38h			;3b8b	ff 	. 
	rst 38h			;3b8c	ff 	. 
	rst 38h			;3b8d	ff 	. 
	rst 38h			;3b8e	ff 	. 
	rst 38h			;3b8f	ff 	. 
	rst 38h			;3b90	ff 	. 
	rst 38h			;3b91	ff 	. 
	rst 38h			;3b92	ff 	. 
	rst 38h			;3b93	ff 	. 
	rst 38h			;3b94	ff 	. 
	rst 38h			;3b95	ff 	. 
	rst 38h			;3b96	ff 	. 
	rst 38h			;3b97	ff 	. 
	rst 38h			;3b98	ff 	. 
	rst 38h			;3b99	ff 	. 
	rst 38h			;3b9a	ff 	. 
	rst 38h			;3b9b	ff 	. 
	rst 38h			;3b9c	ff 	. 
	rst 38h			;3b9d	ff 	. 
	rst 38h			;3b9e	ff 	. 
	rst 38h			;3b9f	ff 	. 
	rst 38h			;3ba0	ff 	. 
	rst 38h			;3ba1	ff 	. 
	rst 38h			;3ba2	ff 	. 
	rst 38h			;3ba3	ff 	. 
	rst 38h			;3ba4	ff 	. 
	rst 38h			;3ba5	ff 	. 
	rst 38h			;3ba6	ff 	. 
	rst 38h			;3ba7	ff 	. 
	rst 38h			;3ba8	ff 	. 
	rst 38h			;3ba9	ff 	. 
	rst 38h			;3baa	ff 	. 
	rst 38h			;3bab	ff 	. 
	rst 38h			;3bac	ff 	. 
	rst 38h			;3bad	ff 	. 
	rst 38h			;3bae	ff 	. 
	rst 38h			;3baf	ff 	. 
	rst 38h			;3bb0	ff 	. 
	rst 38h			;3bb1	ff 	. 
	rst 38h			;3bb2	ff 	. 
	rst 38h			;3bb3	ff 	. 
	rst 38h			;3bb4	ff 	. 
	rst 38h			;3bb5	ff 	. 
	rst 38h			;3bb6	ff 	. 
	rst 38h			;3bb7	ff 	. 
	rst 38h			;3bb8	ff 	. 
	rst 38h			;3bb9	ff 	. 
	rst 38h			;3bba	ff 	. 
	rst 38h			;3bbb	ff 	. 
	rst 38h			;3bbc	ff 	. 
	rst 38h			;3bbd	ff 	. 
	rst 38h			;3bbe	ff 	. 
	rst 38h			;3bbf	ff 	. 
	rst 38h			;3bc0	ff 	. 
	rst 38h			;3bc1	ff 	. 
	rst 38h			;3bc2	ff 	. 
	rst 38h			;3bc3	ff 	. 
	rst 38h			;3bc4	ff 	. 
	rst 38h			;3bc5	ff 	. 
	rst 38h			;3bc6	ff 	. 
	rst 38h			;3bc7	ff 	. 
	rst 38h			;3bc8	ff 	. 
	rst 38h			;3bc9	ff 	. 
	rst 38h			;3bca	ff 	. 
	rst 38h			;3bcb	ff 	. 
	rst 38h			;3bcc	ff 	. 
	rst 38h			;3bcd	ff 	. 
	rst 38h			;3bce	ff 	. 
	rst 38h			;3bcf	ff 	. 
	rst 38h			;3bd0	ff 	. 
	rst 38h			;3bd1	ff 	. 
	rst 38h			;3bd2	ff 	. 
	rst 38h			;3bd3	ff 	. 
	rst 38h			;3bd4	ff 	. 
	rst 38h			;3bd5	ff 	. 
	rst 38h			;3bd6	ff 	. 
	rst 38h			;3bd7	ff 	. 
	rst 38h			;3bd8	ff 	. 
	rst 38h			;3bd9	ff 	. 
	rst 38h			;3bda	ff 	. 
	rst 38h			;3bdb	ff 	. 
	rst 38h			;3bdc	ff 	. 
	rst 38h			;3bdd	ff 	. 
	rst 38h			;3bde	ff 	. 
	rst 38h			;3bdf	ff 	. 
	rst 38h			;3be0	ff 	. 
	rst 38h			;3be1	ff 	. 
	rst 38h			;3be2	ff 	. 
	rst 38h			;3be3	ff 	. 
	rst 38h			;3be4	ff 	. 
	rst 38h			;3be5	ff 	. 
	rst 38h			;3be6	ff 	. 
	rst 38h			;3be7	ff 	. 
	rst 38h			;3be8	ff 	. 
	rst 38h			;3be9	ff 	. 
	rst 38h			;3bea	ff 	. 
	rst 38h			;3beb	ff 	. 
	rst 38h			;3bec	ff 	. 
	rst 38h			;3bed	ff 	. 
	rst 38h			;3bee	ff 	. 
	rst 38h			;3bef	ff 	. 
	rst 38h			;3bf0	ff 	. 
	rst 38h			;3bf1	ff 	. 
	rst 38h			;3bf2	ff 	. 
	rst 38h			;3bf3	ff 	. 
	rst 38h			;3bf4	ff 	. 
	rst 38h			;3bf5	ff 	. 
	rst 38h			;3bf6	ff 	. 
	rst 38h			;3bf7	ff 	. 
	rst 38h			;3bf8	ff 	. 
	rst 38h			;3bf9	ff 	. 
	rst 38h			;3bfa	ff 	. 
	rst 38h			;3bfb	ff 	. 
	rst 38h			;3bfc	ff 	. 
	rst 38h			;3bfd	ff 	. 
	rst 38h			;3bfe	ff 	. 
	rst 38h			;3bff	ff 	. 
	rst 38h			;3c00	ff 	. 
	rst 38h			;3c01	ff 	. 
	rst 38h			;3c02	ff 	. 
	rst 38h			;3c03	ff 	. 
	rst 38h			;3c04	ff 	. 
	rst 38h			;3c05	ff 	. 
	rst 38h			;3c06	ff 	. 
	rst 38h			;3c07	ff 	. 
	rst 38h			;3c08	ff 	. 
	rst 38h			;3c09	ff 	. 
	rst 38h			;3c0a	ff 	. 
	rst 38h			;3c0b	ff 	. 
	rst 38h			;3c0c	ff 	. 
	rst 38h			;3c0d	ff 	. 
	rst 38h			;3c0e	ff 	. 
	rst 38h			;3c0f	ff 	. 
	rst 38h			;3c10	ff 	. 
	rst 38h			;3c11	ff 	. 
	rst 38h			;3c12	ff 	. 
	rst 38h			;3c13	ff 	. 
	rst 38h			;3c14	ff 	. 
	rst 38h			;3c15	ff 	. 
	rst 38h			;3c16	ff 	. 
	rst 38h			;3c17	ff 	. 
	rst 38h			;3c18	ff 	. 
	rst 38h			;3c19	ff 	. 
	rst 38h			;3c1a	ff 	. 
	rst 38h			;3c1b	ff 	. 
	rst 38h			;3c1c	ff 	. 
	rst 38h			;3c1d	ff 	. 
	rst 38h			;3c1e	ff 	. 
	rst 38h			;3c1f	ff 	. 
	rst 38h			;3c20	ff 	. 
	rst 38h			;3c21	ff 	. 
	rst 38h			;3c22	ff 	. 
	rst 38h			;3c23	ff 	. 
	rst 38h			;3c24	ff 	. 
	rst 38h			;3c25	ff 	. 
	rst 38h			;3c26	ff 	. 
	rst 38h			;3c27	ff 	. 
	rst 38h			;3c28	ff 	. 
	rst 38h			;3c29	ff 	. 
	rst 38h			;3c2a	ff 	. 
	rst 38h			;3c2b	ff 	. 
	rst 38h			;3c2c	ff 	. 
	rst 38h			;3c2d	ff 	. 
	rst 38h			;3c2e	ff 	. 
	rst 38h			;3c2f	ff 	. 
	rst 38h			;3c30	ff 	. 
	rst 38h			;3c31	ff 	. 
	rst 38h			;3c32	ff 	. 
	rst 38h			;3c33	ff 	. 
	rst 38h			;3c34	ff 	. 
	rst 38h			;3c35	ff 	. 
	rst 38h			;3c36	ff 	. 
	rst 38h			;3c37	ff 	. 
	rst 38h			;3c38	ff 	. 
	rst 38h			;3c39	ff 	. 
	rst 38h			;3c3a	ff 	. 
	rst 38h			;3c3b	ff 	. 
	rst 38h			;3c3c	ff 	. 
	rst 38h			;3c3d	ff 	. 
	rst 38h			;3c3e	ff 	. 
	rst 38h			;3c3f	ff 	. 
	rst 38h			;3c40	ff 	. 
	rst 38h			;3c41	ff 	. 
	rst 38h			;3c42	ff 	. 
	rst 38h			;3c43	ff 	. 
	rst 38h			;3c44	ff 	. 
	rst 38h			;3c45	ff 	. 
	rst 38h			;3c46	ff 	. 
	rst 38h			;3c47	ff 	. 
	rst 38h			;3c48	ff 	. 
	rst 38h			;3c49	ff 	. 
	rst 38h			;3c4a	ff 	. 
	rst 38h			;3c4b	ff 	. 
	rst 38h			;3c4c	ff 	. 
	rst 38h			;3c4d	ff 	. 
	rst 38h			;3c4e	ff 	. 
	rst 38h			;3c4f	ff 	. 
	rst 38h			;3c50	ff 	. 
	rst 38h			;3c51	ff 	. 
	rst 38h			;3c52	ff 	. 
	rst 38h			;3c53	ff 	. 
	rst 38h			;3c54	ff 	. 
	rst 38h			;3c55	ff 	. 
	rst 38h			;3c56	ff 	. 
	rst 38h			;3c57	ff 	. 
	rst 38h			;3c58	ff 	. 
	rst 38h			;3c59	ff 	. 
	rst 38h			;3c5a	ff 	. 
	rst 38h			;3c5b	ff 	. 
	rst 38h			;3c5c	ff 	. 
	rst 38h			;3c5d	ff 	. 
	rst 38h			;3c5e	ff 	. 
	rst 38h			;3c5f	ff 	. 
	rst 38h			;3c60	ff 	. 
	rst 38h			;3c61	ff 	. 
	rst 38h			;3c62	ff 	. 
	rst 38h			;3c63	ff 	. 
	rst 38h			;3c64	ff 	. 
	rst 38h			;3c65	ff 	. 
	rst 38h			;3c66	ff 	. 
	rst 38h			;3c67	ff 	. 
	rst 38h			;3c68	ff 	. 
	rst 38h			;3c69	ff 	. 
	rst 38h			;3c6a	ff 	. 
	rst 38h			;3c6b	ff 	. 
	rst 38h			;3c6c	ff 	. 
	rst 38h			;3c6d	ff 	. 
	rst 38h			;3c6e	ff 	. 
	rst 38h			;3c6f	ff 	. 
	rst 38h			;3c70	ff 	. 
	rst 38h			;3c71	ff 	. 
	rst 38h			;3c72	ff 	. 
	rst 38h			;3c73	ff 	. 
	rst 38h			;3c74	ff 	. 
	rst 38h			;3c75	ff 	. 
	rst 38h			;3c76	ff 	. 
	rst 38h			;3c77	ff 	. 
	rst 38h			;3c78	ff 	. 
	rst 38h			;3c79	ff 	. 
	rst 38h			;3c7a	ff 	. 
	rst 38h			;3c7b	ff 	. 
	rst 38h			;3c7c	ff 	. 
	rst 38h			;3c7d	ff 	. 
	rst 38h			;3c7e	ff 	. 
	rst 38h			;3c7f	ff 	. 
	rst 38h			;3c80	ff 	. 
	rst 38h			;3c81	ff 	. 
	rst 38h			;3c82	ff 	. 
	rst 38h			;3c83	ff 	. 
	rst 38h			;3c84	ff 	. 
	rst 38h			;3c85	ff 	. 
	rst 38h			;3c86	ff 	. 
	rst 38h			;3c87	ff 	. 
	rst 38h			;3c88	ff 	. 
	rst 38h			;3c89	ff 	. 
	rst 38h			;3c8a	ff 	. 
	rst 38h			;3c8b	ff 	. 
	rst 38h			;3c8c	ff 	. 
	rst 38h			;3c8d	ff 	. 
	rst 38h			;3c8e	ff 	. 
	rst 38h			;3c8f	ff 	. 
	rst 38h			;3c90	ff 	. 
	rst 38h			;3c91	ff 	. 
	rst 38h			;3c92	ff 	. 
	rst 38h			;3c93	ff 	. 
	rst 38h			;3c94	ff 	. 
	rst 38h			;3c95	ff 	. 
	rst 38h			;3c96	ff 	. 
	rst 38h			;3c97	ff 	. 
	rst 38h			;3c98	ff 	. 
	rst 38h			;3c99	ff 	. 
	rst 38h			;3c9a	ff 	. 
	rst 38h			;3c9b	ff 	. 
	rst 38h			;3c9c	ff 	. 
	rst 38h			;3c9d	ff 	. 
	rst 38h			;3c9e	ff 	. 
	rst 38h			;3c9f	ff 	. 
	rst 38h			;3ca0	ff 	. 
	rst 38h			;3ca1	ff 	. 
	rst 38h			;3ca2	ff 	. 
	rst 38h			;3ca3	ff 	. 
	rst 38h			;3ca4	ff 	. 
	rst 38h			;3ca5	ff 	. 
	rst 38h			;3ca6	ff 	. 
	rst 38h			;3ca7	ff 	. 
	rst 38h			;3ca8	ff 	. 
	rst 38h			;3ca9	ff 	. 
	rst 38h			;3caa	ff 	. 
	rst 38h			;3cab	ff 	. 
	rst 38h			;3cac	ff 	. 
	rst 38h			;3cad	ff 	. 
	rst 38h			;3cae	ff 	. 
	rst 38h			;3caf	ff 	. 
	rst 38h			;3cb0	ff 	. 
	rst 38h			;3cb1	ff 	. 
	rst 38h			;3cb2	ff 	. 
	rst 38h			;3cb3	ff 	. 
	rst 38h			;3cb4	ff 	. 
	rst 38h			;3cb5	ff 	. 
	rst 38h			;3cb6	ff 	. 
	rst 38h			;3cb7	ff 	. 
	rst 38h			;3cb8	ff 	. 
	rst 38h			;3cb9	ff 	. 
	rst 38h			;3cba	ff 	. 
	rst 38h			;3cbb	ff 	. 
	rst 38h			;3cbc	ff 	. 
	rst 38h			;3cbd	ff 	. 
	rst 38h			;3cbe	ff 	. 
	rst 38h			;3cbf	ff 	. 
	rst 38h			;3cc0	ff 	. 
	rst 38h			;3cc1	ff 	. 
	rst 38h			;3cc2	ff 	. 
	rst 38h			;3cc3	ff 	. 
	rst 38h			;3cc4	ff 	. 
	rst 38h			;3cc5	ff 	. 
	rst 38h			;3cc6	ff 	. 
	rst 38h			;3cc7	ff 	. 
	rst 38h			;3cc8	ff 	. 
	rst 38h			;3cc9	ff 	. 
	rst 38h			;3cca	ff 	. 
	rst 38h			;3ccb	ff 	. 
	rst 38h			;3ccc	ff 	. 
	rst 38h			;3ccd	ff 	. 
	rst 38h			;3cce	ff 	. 
	rst 38h			;3ccf	ff 	. 
	rst 38h			;3cd0	ff 	. 
	rst 38h			;3cd1	ff 	. 
	rst 38h			;3cd2	ff 	. 
	rst 38h			;3cd3	ff 	. 
	rst 38h			;3cd4	ff 	. 
	rst 38h			;3cd5	ff 	. 
	rst 38h			;3cd6	ff 	. 
	rst 38h			;3cd7	ff 	. 
	rst 38h			;3cd8	ff 	. 
	rst 38h			;3cd9	ff 	. 
	rst 38h			;3cda	ff 	. 
	rst 38h			;3cdb	ff 	. 
	rst 38h			;3cdc	ff 	. 
	rst 38h			;3cdd	ff 	. 
	rst 38h			;3cde	ff 	. 
	rst 38h			;3cdf	ff 	. 
	rst 38h			;3ce0	ff 	. 
	rst 38h			;3ce1	ff 	. 
	rst 38h			;3ce2	ff 	. 
	rst 38h			;3ce3	ff 	. 
	rst 38h			;3ce4	ff 	. 
	rst 38h			;3ce5	ff 	. 
	rst 38h			;3ce6	ff 	. 
	rst 38h			;3ce7	ff 	. 
	rst 38h			;3ce8	ff 	. 
	rst 38h			;3ce9	ff 	. 
	rst 38h			;3cea	ff 	. 
	rst 38h			;3ceb	ff 	. 
	rst 38h			;3cec	ff 	. 
	rst 38h			;3ced	ff 	. 
	rst 38h			;3cee	ff 	. 
	rst 38h			;3cef	ff 	. 
	rst 38h			;3cf0	ff 	. 
	rst 38h			;3cf1	ff 	. 
	rst 38h			;3cf2	ff 	. 
	rst 38h			;3cf3	ff 	. 
	rst 38h			;3cf4	ff 	. 
	rst 38h			;3cf5	ff 	. 
	rst 38h			;3cf6	ff 	. 
	rst 38h			;3cf7	ff 	. 
	rst 38h			;3cf8	ff 	. 
	rst 38h			;3cf9	ff 	. 
	rst 38h			;3cfa	ff 	. 
	rst 38h			;3cfb	ff 	. 
	rst 38h			;3cfc	ff 	. 
	rst 38h			;3cfd	ff 	. 
	rst 38h			;3cfe	ff 	. 
	rst 38h			;3cff	ff 	. 
	nop			;3d00	00 	. 
	nop			;3d01	00 	. 
	nop			;3d02	00 	. 
	nop			;3d03	00 	. 
	nop			;3d04	00 	. 
	nop			;3d05	00 	. 
	nop			;3d06	00 	. 
	nop			;3d07	00 	. 
	nop			;3d08	00 	. 
	djnz $+18		;3d09	10 10 	. . 
	djnz $+18		;3d0b	10 10 	. . 
	nop			;3d0d	00 	. 
	djnz $+2		;3d0e	10 00 	. . 
	nop			;3d10	00 	. 
	inc h			;3d11	24 	$ 
	inc h			;3d12	24 	$ 
	nop			;3d13	00 	. 
	nop			;3d14	00 	. 
	nop			;3d15	00 	. 
	nop			;3d16	00 	. 
	nop			;3d17	00 	. 
	nop			;3d18	00 	. 
	inc h			;3d19	24 	$ 
	ld a,(hl)			;3d1a	7e 	~ 
	inc h			;3d1b	24 	$ 
	inc h			;3d1c	24 	$ 
	ld a,(hl)			;3d1d	7e 	~ 
	inc h			;3d1e	24 	$ 
	nop			;3d1f	00 	. 
	nop			;3d20	00 	. 
	ex af,af'			;3d21	08 	. 
	ld a,028h		;3d22	3e 28 	> ( 
	ld a,00ah		;3d24	3e 0a 	> . 
	ld a,008h		;3d26	3e 08 	> . 
	nop			;3d28	00 	. 
	ld h,d			;3d29	62 	b 
	ld h,h			;3d2a	64 	d 
	ex af,af'			;3d2b	08 	. 
	djnz $+40		;3d2c	10 26 	. & 
	ld b,(hl)			;3d2e	46 	F 
	nop			;3d2f	00 	. 
	nop			;3d30	00 	. 
	djnz $+42		;3d31	10 28 	. ( 
	djnz $+44		;3d33	10 2a 	. * 
	ld b,h			;3d35	44 	D 
	ld a,(00000h)		;3d36	3a 00 00 	: . . 
	ex af,af'			;3d39	08 	. 
	djnz $+2		;3d3a	10 00 	. . 
	nop			;3d3c	00 	. 
	nop			;3d3d	00 	. 
	nop			;3d3e	00 	. 
	nop			;3d3f	00 	. 
	nop			;3d40	00 	. 
	inc b			;3d41	04 	. 
	ex af,af'			;3d42	08 	. 
	ex af,af'			;3d43	08 	. 
	ex af,af'			;3d44	08 	. 
	ex af,af'			;3d45	08 	. 
	inc b			;3d46	04 	. 
	nop			;3d47	00 	. 
	nop			;3d48	00 	. 
	jr nz,$+18		;3d49	20 10 	  . 
	djnz $+18		;3d4b	10 10 	. . 
	djnz $+34		;3d4d	10 20 	.   
	nop			;3d4f	00 	. 
	nop			;3d50	00 	. 
	nop			;3d51	00 	. 
	inc d			;3d52	14 	. 
	ex af,af'			;3d53	08 	. 
	ld a,008h		;3d54	3e 08 	> . 
	inc d			;3d56	14 	. 
	nop			;3d57	00 	. 
	nop			;3d58	00 	. 
	nop			;3d59	00 	. 
	ex af,af'			;3d5a	08 	. 
	ex af,af'			;3d5b	08 	. 
	ld a,008h		;3d5c	3e 08 	> . 
	ex af,af'			;3d5e	08 	. 
	nop			;3d5f	00 	. 
	nop			;3d60	00 	. 
	nop			;3d61	00 	. 
	nop			;3d62	00 	. 
	nop			;3d63	00 	. 
	nop			;3d64	00 	. 
	ex af,af'			;3d65	08 	. 
	ex af,af'			;3d66	08 	. 
	djnz $+2		;3d67	10 00 	. . 
	nop			;3d69	00 	. 
	nop			;3d6a	00 	. 
	nop			;3d6b	00 	. 
	ld a,000h		;3d6c	3e 00 	> . 
	nop			;3d6e	00 	. 
	nop			;3d6f	00 	. 
	nop			;3d70	00 	. 
	nop			;3d71	00 	. 
	nop			;3d72	00 	. 
	nop			;3d73	00 	. 
	nop			;3d74	00 	. 
	jr $+26		;3d75	18 18 	. . 
	nop			;3d77	00 	. 
	nop			;3d78	00 	. 
	nop			;3d79	00 	. 
	ld (bc),a			;3d7a	02 	. 
	inc b			;3d7b	04 	. 
	ex af,af'			;3d7c	08 	. 
	djnz $+34		;3d7d	10 20 	.   
	nop			;3d7f	00 	. 
	nop			;3d80	00 	. 
	inc a			;3d81	3c 	< 
	ld b,(hl)			;3d82	46 	F 
	ld c,d			;3d83	4a 	J 
	ld d,d			;3d84	52 	R 
	ld h,d			;3d85	62 	b 
	inc a			;3d86	3c 	< 
	nop			;3d87	00 	. 
	nop			;3d88	00 	. 
	jr $+42		;3d89	18 28 	. ( 
	ex af,af'			;3d8b	08 	. 
	ex af,af'			;3d8c	08 	. 
	ex af,af'			;3d8d	08 	. 
	ld a,000h		;3d8e	3e 00 	> . 
	nop			;3d90	00 	. 
	inc a			;3d91	3c 	< 
	ld b,d			;3d92	42 	B 
	ld (bc),a			;3d93	02 	. 
	inc a			;3d94	3c 	< 
	ld b,b			;3d95	40 	@ 
	ld a,(hl)			;3d96	7e 	~ 
	nop			;3d97	00 	. 
	nop			;3d98	00 	. 
	inc a			;3d99	3c 	< 
	ld b,d			;3d9a	42 	B 
	inc c			;3d9b	0c 	. 
	ld (bc),a			;3d9c	02 	. 
	ld b,d			;3d9d	42 	B 
	inc a			;3d9e	3c 	< 
	nop			;3d9f	00 	. 
	nop			;3da0	00 	. 
	ex af,af'			;3da1	08 	. 
	jr $+42		;3da2	18 28 	. ( 
	ld c,b			;3da4	48 	H 
	ld a,(hl)			;3da5	7e 	~ 
	ex af,af'			;3da6	08 	. 
	nop			;3da7	00 	. 
	nop			;3da8	00 	. 
	ld a,(hl)			;3da9	7e 	~ 
	ld b,b			;3daa	40 	@ 
	ld a,h			;3dab	7c 	| 
	ld (bc),a			;3dac	02 	. 
	ld b,d			;3dad	42 	B 
	inc a			;3dae	3c 	< 
	nop			;3daf	00 	. 
	nop			;3db0	00 	. 
	inc a			;3db1	3c 	< 
	ld b,b			;3db2	40 	@ 
	ld a,h			;3db3	7c 	| 
	ld b,d			;3db4	42 	B 
	ld b,d			;3db5	42 	B 
	inc a			;3db6	3c 	< 
	nop			;3db7	00 	. 
	nop			;3db8	00 	. 
	ld a,(hl)			;3db9	7e 	~ 
	ld (bc),a			;3dba	02 	. 
	inc b			;3dbb	04 	. 
	ex af,af'			;3dbc	08 	. 
	djnz $+18		;3dbd	10 10 	. . 
	nop			;3dbf	00 	. 
	nop			;3dc0	00 	. 
	inc a			;3dc1	3c 	< 
	ld b,d			;3dc2	42 	B 
	inc a			;3dc3	3c 	< 
	ld b,d			;3dc4	42 	B 
	ld b,d			;3dc5	42 	B 
	inc a			;3dc6	3c 	< 
	nop			;3dc7	00 	. 
	nop			;3dc8	00 	. 
	inc a			;3dc9	3c 	< 
	ld b,d			;3dca	42 	B 
	ld b,d			;3dcb	42 	B 
	ld a,002h		;3dcc	3e 02 	> . 
	inc a			;3dce	3c 	< 
	nop			;3dcf	00 	. 
	nop			;3dd0	00 	. 
	nop			;3dd1	00 	. 
	nop			;3dd2	00 	. 
	djnz $+2		;3dd3	10 00 	. . 
	nop			;3dd5	00 	. 
	djnz $+2		;3dd6	10 00 	. . 
	nop			;3dd8	00 	. 
	nop			;3dd9	00 	. 
	djnz $+2		;3dda	10 00 	. . 
	nop			;3ddc	00 	. 
	djnz $+18		;3ddd	10 10 	. . 
	jr nz,$+2		;3ddf	20 00 	  . 
	nop			;3de1	00 	. 
	inc b			;3de2	04 	. 
	ex af,af'			;3de3	08 	. 
	djnz $+10		;3de4	10 08 	. . 
	inc b			;3de6	04 	. 
	nop			;3de7	00 	. 
	nop			;3de8	00 	. 
	nop			;3de9	00 	. 
	nop			;3dea	00 	. 
	ld a,000h		;3deb	3e 00 	> . 
	ld a,000h		;3ded	3e 00 	> . 
	nop			;3def	00 	. 
	nop			;3df0	00 	. 
	nop			;3df1	00 	. 
	djnz $+10		;3df2	10 08 	. . 
	inc b			;3df4	04 	. 
	ex af,af'			;3df5	08 	. 
	djnz $+2		;3df6	10 00 	. . 
	nop			;3df8	00 	. 
	inc a			;3df9	3c 	< 
	ld b,d			;3dfa	42 	B 
	inc b			;3dfb	04 	. 
	ex af,af'			;3dfc	08 	. 
	nop			;3dfd	00 	. 
	ex af,af'			;3dfe	08 	. 
	nop			;3dff	00 	. 
	nop			;3e00	00 	. 
	inc a			;3e01	3c 	< 
	ld c,d			;3e02	4a 	J 
	ld d,(hl)			;3e03	56 	V 
	ld e,(hl)			;3e04	5e 	^ 
	ld b,b			;3e05	40 	@ 
	inc a			;3e06	3c 	< 
	nop			;3e07	00 	. 
	nop			;3e08	00 	. 
	inc a			;3e09	3c 	< 
	ld b,d			;3e0a	42 	B 
	ld b,d			;3e0b	42 	B 
	ld a,(hl)			;3e0c	7e 	~ 
	ld b,d			;3e0d	42 	B 
	ld b,d			;3e0e	42 	B 
	nop			;3e0f	00 	. 
	nop			;3e10	00 	. 
	ld a,h			;3e11	7c 	| 
	ld b,d			;3e12	42 	B 
	ld a,h			;3e13	7c 	| 
	ld b,d			;3e14	42 	B 
	ld b,d			;3e15	42 	B 
	ld a,h			;3e16	7c 	| 
	nop			;3e17	00 	. 
	nop			;3e18	00 	. 
	inc a			;3e19	3c 	< 
	ld b,d			;3e1a	42 	B 
	ld b,b			;3e1b	40 	@ 
	ld b,b			;3e1c	40 	@ 
	ld b,d			;3e1d	42 	B 
	inc a			;3e1e	3c 	< 
	nop			;3e1f	00 	. 
	nop			;3e20	00 	. 
	ld a,b			;3e21	78 	x 
	ld b,h			;3e22	44 	D 
	ld b,d			;3e23	42 	B 
	ld b,d			;3e24	42 	B 
	ld b,h			;3e25	44 	D 
	ld a,b			;3e26	78 	x 
	nop			;3e27	00 	. 
	nop			;3e28	00 	. 
	ld a,(hl)			;3e29	7e 	~ 
	ld b,b			;3e2a	40 	@ 
	ld a,h			;3e2b	7c 	| 
	ld b,b			;3e2c	40 	@ 
	ld b,b			;3e2d	40 	@ 
	ld a,(hl)			;3e2e	7e 	~ 
	nop			;3e2f	00 	. 
	nop			;3e30	00 	. 
	ld a,(hl)			;3e31	7e 	~ 
	ld b,b			;3e32	40 	@ 
	ld a,h			;3e33	7c 	| 
	ld b,b			;3e34	40 	@ 
	ld b,b			;3e35	40 	@ 
	ld b,b			;3e36	40 	@ 
	nop			;3e37	00 	. 
	nop			;3e38	00 	. 
	inc a			;3e39	3c 	< 
	ld b,d			;3e3a	42 	B 
	ld b,b			;3e3b	40 	@ 
	ld c,(hl)			;3e3c	4e 	N 
	ld b,d			;3e3d	42 	B 
	inc a			;3e3e	3c 	< 
	nop			;3e3f	00 	. 
	nop			;3e40	00 	. 
	ld b,d			;3e41	42 	B 
	ld b,d			;3e42	42 	B 
	ld a,(hl)			;3e43	7e 	~ 
	ld b,d			;3e44	42 	B 
	ld b,d			;3e45	42 	B 
	ld b,d			;3e46	42 	B 
	nop			;3e47	00 	. 
	nop			;3e48	00 	. 
	ld a,008h		;3e49	3e 08 	> . 
	ex af,af'			;3e4b	08 	. 
	ex af,af'			;3e4c	08 	. 
	ex af,af'			;3e4d	08 	. 
	ld a,000h		;3e4e	3e 00 	> . 
	nop			;3e50	00 	. 
	ld (bc),a			;3e51	02 	. 
	ld (bc),a			;3e52	02 	. 
	ld (bc),a			;3e53	02 	. 
	ld b,d			;3e54	42 	B 
	ld b,d			;3e55	42 	B 
	inc a			;3e56	3c 	< 
	nop			;3e57	00 	. 
	nop			;3e58	00 	. 
	ld b,h			;3e59	44 	D 
	ld c,b			;3e5a	48 	H 
	ld (hl),b			;3e5b	70 	p 
	ld c,b			;3e5c	48 	H 
	ld b,h			;3e5d	44 	D 
	ld b,d			;3e5e	42 	B 
	nop			;3e5f	00 	. 
	nop			;3e60	00 	. 
	ld b,b			;3e61	40 	@ 
	ld b,b			;3e62	40 	@ 
	ld b,b			;3e63	40 	@ 
	ld b,b			;3e64	40 	@ 
	ld b,b			;3e65	40 	@ 
	ld a,(hl)			;3e66	7e 	~ 
	nop			;3e67	00 	. 
	nop			;3e68	00 	. 
	ld b,d			;3e69	42 	B 
	ld h,(hl)			;3e6a	66 	f 
	ld e,d			;3e6b	5a 	Z 
	ld b,d			;3e6c	42 	B 
	ld b,d			;3e6d	42 	B 
	ld b,d			;3e6e	42 	B 
	nop			;3e6f	00 	. 
	nop			;3e70	00 	. 
	ld b,d			;3e71	42 	B 
	ld h,d			;3e72	62 	b 
	ld d,d			;3e73	52 	R 
	ld c,d			;3e74	4a 	J 
	ld b,(hl)			;3e75	46 	F 
	ld b,d			;3e76	42 	B 
	nop			;3e77	00 	. 
	nop			;3e78	00 	. 
	inc a			;3e79	3c 	< 
	ld b,d			;3e7a	42 	B 
	ld b,d			;3e7b	42 	B 
	ld b,d			;3e7c	42 	B 
	ld b,d			;3e7d	42 	B 
	inc a			;3e7e	3c 	< 
	nop			;3e7f	00 	. 
	nop			;3e80	00 	. 
	ld a,h			;3e81	7c 	| 
	ld b,d			;3e82	42 	B 
	ld b,d			;3e83	42 	B 
	ld a,h			;3e84	7c 	| 
	ld b,b			;3e85	40 	@ 
	ld b,b			;3e86	40 	@ 
	nop			;3e87	00 	. 
	nop			;3e88	00 	. 
	inc a			;3e89	3c 	< 
	ld b,d			;3e8a	42 	B 
	ld b,d			;3e8b	42 	B 
	ld d,d			;3e8c	52 	R 
	ld c,d			;3e8d	4a 	J 
	inc a			;3e8e	3c 	< 
	nop			;3e8f	00 	. 
	nop			;3e90	00 	. 
	ld a,h			;3e91	7c 	| 
	ld b,d			;3e92	42 	B 
	ld b,d			;3e93	42 	B 
	ld a,h			;3e94	7c 	| 
	ld b,h			;3e95	44 	D 
	ld b,d			;3e96	42 	B 
	nop			;3e97	00 	. 
	nop			;3e98	00 	. 
	inc a			;3e99	3c 	< 
	ld b,b			;3e9a	40 	@ 
	inc a			;3e9b	3c 	< 
	ld (bc),a			;3e9c	02 	. 
	ld b,d			;3e9d	42 	B 
	inc a			;3e9e	3c 	< 
	nop			;3e9f	00 	. 
	nop			;3ea0	00 	. 
	cp 010h		;3ea1	fe 10 	. . 
	djnz $+18		;3ea3	10 10 	. . 
	djnz $+18		;3ea5	10 10 	. . 
	nop			;3ea7	00 	. 
	nop			;3ea8	00 	. 
	ld b,d			;3ea9	42 	B 
	ld b,d			;3eaa	42 	B 
	ld b,d			;3eab	42 	B 
	ld b,d			;3eac	42 	B 
	ld b,d			;3ead	42 	B 
	inc a			;3eae	3c 	< 
	nop			;3eaf	00 	. 
	nop			;3eb0	00 	. 
	ld b,d			;3eb1	42 	B 
	ld b,d			;3eb2	42 	B 
	ld b,d			;3eb3	42 	B 
	ld b,d			;3eb4	42 	B 
	inc h			;3eb5	24 	$ 
	jr $+2		;3eb6	18 00 	. . 
	nop			;3eb8	00 	. 
	ld b,d			;3eb9	42 	B 
	ld b,d			;3eba	42 	B 
	ld b,d			;3ebb	42 	B 
	ld b,d			;3ebc	42 	B 
	ld e,d			;3ebd	5a 	Z 
	inc h			;3ebe	24 	$ 
	nop			;3ebf	00 	. 
	nop			;3ec0	00 	. 
	ld b,d			;3ec1	42 	B 
	inc h			;3ec2	24 	$ 
	jr $+26		;3ec3	18 18 	. . 
	inc h			;3ec5	24 	$ 
	ld b,d			;3ec6	42 	B 
	nop			;3ec7	00 	. 
	nop			;3ec8	00 	. 
	add a,d			;3ec9	82 	. 
	ld b,h			;3eca	44 	D 
	jr z,$+18		;3ecb	28 10 	( . 
	djnz $+18		;3ecd	10 10 	. . 
	nop			;3ecf	00 	. 
	nop			;3ed0	00 	. 
	ld a,(hl)			;3ed1	7e 	~ 
	inc b			;3ed2	04 	. 
	ex af,af'			;3ed3	08 	. 
	djnz $+34		;3ed4	10 20 	.   
	ld a,(hl)			;3ed6	7e 	~ 
	nop			;3ed7	00 	. 
	nop			;3ed8	00 	. 
	ld c,008h		;3ed9	0e 08 	. . 
	ex af,af'			;3edb	08 	. 
	ex af,af'			;3edc	08 	. 
	ex af,af'			;3edd	08 	. 
	ld c,000h		;3ede	0e 00 	. . 
	nop			;3ee0	00 	. 
	nop			;3ee1	00 	. 
	ld b,b			;3ee2	40 	@ 
	jr nz,$+18		;3ee3	20 10 	  . 
	ex af,af'			;3ee5	08 	. 
	inc b			;3ee6	04 	. 
	nop			;3ee7	00 	. 
	nop			;3ee8	00 	. 
	ld (hl),b			;3ee9	70 	p 
	djnz $+18		;3eea	10 10 	. . 
	djnz $+18		;3eec	10 10 	. . 
	ld (hl),b			;3eee	70 	p 
	nop			;3eef	00 	. 
	nop			;3ef0	00 	. 
	djnz $+58		;3ef1	10 38 	. 8 
	ld d,h			;3ef3	54 	T 
	djnz $+18		;3ef4	10 10 	. . 
	djnz $+2		;3ef6	10 00 	. . 
	nop			;3ef8	00 	. 
	nop			;3ef9	00 	. 
	nop			;3efa	00 	. 
	nop			;3efb	00 	. 
	nop			;3efc	00 	. 
	nop			;3efd	00 	. 
	nop			;3efe	00 	. 
	rst 38h			;3eff	ff 	. 
	nop			;3f00	00 	. 
	inc e			;3f01	1c 	. 
	ld (02078h),hl		;3f02	22 78 20 	" x   
	jr nz,$+128		;3f05	20 7e 	  ~ 
	nop			;3f07	00 	. 
	nop			;3f08	00 	. 
	nop			;3f09	00 	. 
	jr c,$+6		;3f0a	38 04 	8 . 
	inc a			;3f0c	3c 	< 
	ld b,h			;3f0d	44 	D 
	inc a			;3f0e	3c 	< 
	nop			;3f0f	00 	. 
	nop			;3f10	00 	. 
	jr nz,$+34		;3f11	20 20 	    
	inc a			;3f13	3c 	< 
	ld (03c22h),hl		;3f14	22 22 3c 	" " < 
	nop			;3f17	00 	. 
	nop			;3f18	00 	. 
	nop			;3f19	00 	. 
	inc e			;3f1a	1c 	. 
	jr nz,$+34		;3f1b	20 20 	    
	jr nz,$+30		;3f1d	20 1c 	  . 
	nop			;3f1f	00 	. 
	nop			;3f20	00 	. 
	inc b			;3f21	04 	. 
	inc b			;3f22	04 	. 
	inc a			;3f23	3c 	< 
	ld b,h			;3f24	44 	D 
	ld b,h			;3f25	44 	D 
	inc a			;3f26	3c 	< 
	nop			;3f27	00 	. 
	nop			;3f28	00 	. 
	nop			;3f29	00 	. 
	jr c,$+70		;3f2a	38 44 	8 D 
	ld a,b			;3f2c	78 	x 
	ld b,b			;3f2d	40 	@ 
	inc a			;3f2e	3c 	< 
	nop			;3f2f	00 	. 
	nop			;3f30	00 	. 
	inc c			;3f31	0c 	. 
	djnz $+26		;3f32	10 18 	. . 
	djnz $+18		;3f34	10 10 	. . 
	djnz $+2		;3f36	10 00 	. . 
	nop			;3f38	00 	. 
	nop			;3f39	00 	. 
	inc a			;3f3a	3c 	< 
	ld b,h			;3f3b	44 	D 
	ld b,h			;3f3c	44 	D 
	inc a			;3f3d	3c 	< 
	inc b			;3f3e	04 	. 
	jr c,$+2		;3f3f	38 00 	8 . 
	ld b,b			;3f41	40 	@ 
	ld b,b			;3f42	40 	@ 
	ld a,b			;3f43	78 	x 
	ld b,h			;3f44	44 	D 
	ld b,h			;3f45	44 	D 
	ld b,h			;3f46	44 	D 
	nop			;3f47	00 	. 
	nop			;3f48	00 	. 
	djnz $+2		;3f49	10 00 	. . 
	jr nc,$+18		;3f4b	30 10 	0 . 
	djnz $+58		;3f4d	10 38 	. 8 
	nop			;3f4f	00 	. 
	nop			;3f50	00 	. 
	inc b			;3f51	04 	. 
	nop			;3f52	00 	. 
	inc b			;3f53	04 	. 
	inc b			;3f54	04 	. 
	inc b			;3f55	04 	. 
	inc h			;3f56	24 	$ 
	jr $+2		;3f57	18 00 	. . 
	jr nz,$+42		;3f59	20 28 	  ( 
	jr nc,$+50		;3f5b	30 30 	0 0 
	jr z,$+38		;3f5d	28 24 	( $ 
	nop			;3f5f	00 	. 
	nop			;3f60	00 	. 
	djnz $+18		;3f61	10 10 	. . 
	djnz $+18		;3f63	10 10 	. . 
	djnz $+14		;3f65	10 0c 	. . 
	nop			;3f67	00 	. 
	nop			;3f68	00 	. 
	nop			;3f69	00 	. 
	ld l,b			;3f6a	68 	h 
	ld d,h			;3f6b	54 	T 
	ld d,h			;3f6c	54 	T 
	ld d,h			;3f6d	54 	T 
	ld d,h			;3f6e	54 	T 
	nop			;3f6f	00 	. 
	nop			;3f70	00 	. 
	nop			;3f71	00 	. 
	ld a,b			;3f72	78 	x 
	ld b,h			;3f73	44 	D 
	ld b,h			;3f74	44 	D 
	ld b,h			;3f75	44 	D 
	ld b,h			;3f76	44 	D 
	nop			;3f77	00 	. 
	nop			;3f78	00 	. 
	nop			;3f79	00 	. 
	jr c,$+70		;3f7a	38 44 	8 D 
	ld b,h			;3f7c	44 	D 
	ld b,h			;3f7d	44 	D 
	jr c,$+2		;3f7e	38 00 	8 . 
	nop			;3f80	00 	. 
	nop			;3f81	00 	. 
	ld a,b			;3f82	78 	x 
	ld b,h			;3f83	44 	D 
	ld b,h			;3f84	44 	D 
	ld a,b			;3f85	78 	x 
	ld b,b			;3f86	40 	@ 
	ld b,b			;3f87	40 	@ 
	nop			;3f88	00 	. 
	nop			;3f89	00 	. 
	inc a			;3f8a	3c 	< 
	ld b,h			;3f8b	44 	D 
	ld b,h			;3f8c	44 	D 
	inc a			;3f8d	3c 	< 
	inc b			;3f8e	04 	. 
	ld b,000h		;3f8f	06 00 	. . 
	nop			;3f91	00 	. 
	inc e			;3f92	1c 	. 
	jr nz,$+34		;3f93	20 20 	    
	jr nz,$+34		;3f95	20 20 	    
	nop			;3f97	00 	. 
	nop			;3f98	00 	. 
	nop			;3f99	00 	. 
	jr c,$+66		;3f9a	38 40 	8 @ 
	jr c,$+6		;3f9c	38 04 	8 . 
	ld a,b			;3f9e	78 	x 
	nop			;3f9f	00 	. 
	nop			;3fa0	00 	. 
	djnz $+58		;3fa1	10 38 	. 8 
	djnz $+18		;3fa3	10 10 	. . 
	djnz $+14		;3fa5	10 0c 	. . 
	nop			;3fa7	00 	. 
	nop			;3fa8	00 	. 
	nop			;3fa9	00 	. 
	ld b,h			;3faa	44 	D 
	ld b,h			;3fab	44 	D 
	ld b,h			;3fac	44 	D 
	ld b,h			;3fad	44 	D 
	jr c,$+2		;3fae	38 00 	8 . 
	nop			;3fb0	00 	. 
	nop			;3fb1	00 	. 
	ld b,h			;3fb2	44 	D 
	ld b,h			;3fb3	44 	D 
	jr z,$+42		;3fb4	28 28 	( ( 
	djnz $+2		;3fb6	10 00 	. . 
	nop			;3fb8	00 	. 
	nop			;3fb9	00 	. 
	ld b,h			;3fba	44 	D 
	ld d,h			;3fbb	54 	T 
	ld d,h			;3fbc	54 	T 
	ld d,h			;3fbd	54 	T 
	jr z,$+2		;3fbe	28 00 	( . 
	nop			;3fc0	00 	. 
	nop			;3fc1	00 	. 
	ld b,h			;3fc2	44 	D 
	jr z,$+18		;3fc3	28 10 	( . 
	jr z,$+70		;3fc5	28 44 	( D 
	nop			;3fc7	00 	. 
	nop			;3fc8	00 	. 
	nop			;3fc9	00 	. 
	ld b,h			;3fca	44 	D 
	ld b,h			;3fcb	44 	D 
	ld b,h			;3fcc	44 	D 
	inc a			;3fcd	3c 	< 
	inc b			;3fce	04 	. 
	jr c,$+2		;3fcf	38 00 	8 . 
	nop			;3fd1	00 	. 
	ld a,h			;3fd2	7c 	| 
	ex af,af'			;3fd3	08 	. 
	djnz $+34		;3fd4	10 20 	.   
	ld a,h			;3fd6	7c 	| 
	nop			;3fd7	00 	. 
	nop			;3fd8	00 	. 
	ld c,008h		;3fd9	0e 08 	. . 
	jr nc,$+10		;3fdb	30 08 	0 . 
	ex af,af'			;3fdd	08 	. 
	ld c,000h		;3fde	0e 00 	. . 
	nop			;3fe0	00 	. 
	ex af,af'			;3fe1	08 	. 
	ex af,af'			;3fe2	08 	. 
	ex af,af'			;3fe3	08 	. 
	ex af,af'			;3fe4	08 	. 
	ex af,af'			;3fe5	08 	. 
	ex af,af'			;3fe6	08 	. 
	nop			;3fe7	00 	. 
	nop			;3fe8	00 	. 
	ld (hl),b			;3fe9	70 	p 
	djnz $+14		;3fea	10 0c 	. . 
	djnz $+18		;3fec	10 10 	. . 
	ld (hl),b			;3fee	70 	p 
	nop			;3fef	00 	. 
	nop			;3ff0	00 	. 
	inc d			;3ff1	14 	. 
	jr z,$+2		;3ff2	28 00 	( . 
	nop			;3ff4	00 	. 
	nop			;3ff5	00 	. 
	nop			;3ff6	00 	. 
	nop			;3ff7	00 	. 
	inc a			;3ff8	3c 	< 
	ld b,d			;3ff9	42 	B 
	sbc a,c			;3ffa	99 	. 
	and c			;3ffb	a1 	. 
	and c			;3ffc	a1 	. 
	sbc a,c			;3ffd	99 	. 
	ld b,d			;3ffe	42 	B 
	inc a			;3fff	3c 	< 
