	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_200e3ac
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r3, #0
	mov	r8, r0
	mov	r7, r1
	mov	r10, r3
	mov	r9, r3
	mov	r6, #0
	b	.Lm945_63ca
.Lm945_63c4:
	mov	r3, #1
	add	r10, r3
	add	r6, #1
.Lm945_63ca:
	cmp	r6, #8
	bhi	.Lm945_63e2
	mov	r3, r8
	add	r5, r3, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_63c4
	mov	r0, r5
	bl	__ClearFlag
.Lm945_63e2:
	mov	r6, #0
	b	.Lm945_63ec
.Lm945_63e6:
	mov	r3, #1
	add	r9, r3
	add	r6, #1
.Lm945_63ec:
	cmp	r6, #8
	bhi	.Lm945_6402
	add	r5, r7, r6
	mov	r0, r5
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_63e6
	mov	r0, r5
	bl	__ClearFlag
.Lm945_6402:
	mov	r3, r10
	add	r0, r7, r3
	bl	__SetFlag
	mov	r0, r8
	add	r0, r9
	bl	__SetFlag
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_200e3ac

	.section .data
	.global gScript_945__0200e6a8
	.global gScript_883__0200e6e4
	.global gScript_945__0200e6e4
	.global gScript_945__0200e738
	.global gScript_945__0200e840
	.global gScript_945__0200e8e4
	.global gScript_945__0200e958
	.global .Lm945_6968
	.global .Lm945_72a0
	.global .Lm945_7300
	.global .Lm945_7360
	.global .Lm945_73c0
	.global .Lm945_7f84
	.global .Lm945_6668
	.global .Lm945_6be0
	.global .Lm945_6bf8
	.global .Lm945_6c58
	.global .Lm945_6d48
	.global .Lm945_6d78
	.global .Lm945_6da8
	.global .Lm945_6eb0
	.global .Lm945_6fe8
	.global .Lm945_7420
	.global .Lm945_7444
	.global .Lm945_7570
	.global .Lm945_76fc
	.global .Lm945_781c
	.global .Lm945_7930
	.global .Lm945_7984
	.global .Lm945_79c0
	.global .Lm945_7b58
	.global .Lm945_7d44
	.global .Lm945_7edc
	.global .Lm945_696c
	.global .Lm945_6984

.Lm945_6668:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6668, (0x66a8-0x6668)
gScript_945__0200e6a8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66a8, (0x66e4-0x66a8)
gScript_883__0200e6e4:
gScript_945__0200e6e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x66e4, (0x6738-0x66e4)
gScript_945__0200e738:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6738, (0x67c8-0x6738)
	.global gScript_945__0200e7c8
gScript_945__0200e7c8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67c8, (0x67f0-0x67c8)
	.global gScript_945__0200e7f0
gScript_945__0200e7f0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x67f0, (0x6818-0x67f0)
	.global gScript_945__0200e818
gScript_945__0200e818:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6818, (0x6840-0x6818)
gScript_945__0200e840:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6840, (0x68e4-0x6840)
gScript_945__0200e8e4:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x68e4, (0x6904-0x68e4)
	.global gScript_945__0200e904
gScript_945__0200e904:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6904, (0x6938-0x6904)
	.global gScript_945__0200e938
gScript_945__0200e938:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6938, (0x6958-0x6938)
gScript_945__0200e958:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6958, (0x6968-0x6958)
.Lm945_6968:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6968, (0x696c-0x6968)
.Lm945_696c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x696c, (0x6984-0x696c)
.Lm945_6984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6984, (0x6b94-0x6984)
	.global gOvl_0200eb94
gOvl_0200eb94:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6b94, (0x6be0-0x6b94)
.Lm945_6be0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6be0, (0x6bf8-0x6be0)
.Lm945_6bf8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6bf8, (0x6c58-0x6bf8)
.Lm945_6c58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6c58, (0x6d48-0x6c58)
.Lm945_6d48:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d48, (0x6d78-0x6d48)
.Lm945_6d78:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6d78, (0x6da8-0x6d78)
.Lm945_6da8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6da8, (0x6eb0-0x6da8)
.Lm945_6eb0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6eb0, (0x6fe8-0x6eb0)
.Lm945_6fe8:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x6fe8, (0x72a0-0x6fe8)
.Lm945_72a0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x72a0, (0x7300-0x72a0)
.Lm945_7300:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7300, (0x7360-0x7300)
.Lm945_7360:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7360, (0x73c0-0x7360)
.Lm945_73c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x73c0, (0x7420-0x73c0)
.Lm945_7420:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7420, (0x7444-0x7420)
.Lm945_7444:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7444, (0x7570-0x7444)
.Lm945_7570:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7570, (0x76fc-0x7570)
.Lm945_76fc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x76fc, (0x781c-0x76fc)
.Lm945_781c:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x781c, (0x7930-0x781c)
.Lm945_7930:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7930, (0x7984-0x7930)
.Lm945_7984:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7984, (0x79c0-0x7984)
.Lm945_79c0:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x79c0, (0x7b58-0x79c0)
.Lm945_7b58:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7b58, (0x7d44-0x7b58)
.Lm945_7d44:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7d44, (0x7edc-0x7d44)
.Lm945_7edc:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7edc, (0x7f84-0x7edc)
.Lm945_7f84:
	.incbin "overlays/rom_7cb2c0/orig.bin", 0x7f84
