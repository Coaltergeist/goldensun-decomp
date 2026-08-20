	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_2008cfc
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	mov	r7, r0
	mov	r0, #0xc0
	lsl	r0, #2
	ldr	r6, [r3]
	mov	r5, r1
	bl	__alloc_ewram
	mov	r8, r0
	mov	r1, r8
	mov	r0, r5
	bl	__DecompressLZ
	ldrh	r3, [r7, #0xe]
	ldrh	r2, [r7, #0xc]
	lsl	r3, #5
	add	r3, r2
	ldr	r1, =0x6002000
	lsl	r3, #1
	ldr	r4, .Ld34	@ 0xfffff000
	add	r2, r3, r1
	add	r6, r3
	mov	r0, #0
.Ld30:
	mov	r1, #0
	b	.Ld40

	.align	2, 0
.Ld34:
	.word	0xfffff000
	.pool

.Ld40:
	ldrh	r3, [r7, #8]
	mul	r3, r0
	add	r3, r1
	orr	r3, r4
	lsl	r3, #16
	asr	r3, #16
	add	r1, #1
	strh	r3, [r2]
	strh	r3, [r6]
	add	r2, #2
	add	r6, #2
	cmp	r1, #0xf
	ble	.Ld40
	add	r0, #1
	add	r2, #0x20
	add	r6, #0x20
	cmp	r0, #7
	ble	.Ld30
	mov	r0, r8
	bl	__free
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_880_2008cfc

