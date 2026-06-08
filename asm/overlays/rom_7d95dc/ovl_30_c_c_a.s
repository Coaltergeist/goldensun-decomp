	.include "macros.inc"

.thumb_func_start OvlFunc_953_200807c
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8c
	cmp	r2, r3
	beq	.L92
	b	.L1cc
.L92:
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	sub	r3, #5
	cmp	r3, #0x41
	bls	.La4
	b	.L1c8
.La4:
	ldr	r2, =.Lac
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lac:
	.word	.L1b4
	.word	.L1c8
	.word	.L1b8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c0
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1c8
	.word	.L1bc
	.word	.L1bc
	.word	.L1c4
	.word	.L1bc
	.word	.L1c4
	.word	.L1b4
	.word	.L1b8
.L1b4:
	ldr	r0, =.L339c
	b	.L1f6
.L1b8:
	ldr	r0, =.L35f4
	b	.L1f6
.L1bc:
	ldr	r0, =.L37bc
	b	.L1f6
.L1c0:
	ldr	r0, =.L387c
	b	.L1f6
.L1c4:
	ldr	r0, =.L399c
	b	.L1f6
.L1c8:
	ldr	r0, =.L375c
	b	.L1f6
.L1cc:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L1f4
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1e2
	ldr	r0, =.L3e1c
	b	.L1f6
.L1e2:
	ldr	r0, =0x962
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L1f0
	ldr	r0, =.L3bdc
	b	.L1f6
.L1f0:
	ldr	r0, =.L3a44
	b	.L1f6
.L1f4:
	ldr	r0, =.L3324
.L1f6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_953_200807c

.thumb_func_start OvlFunc_953_2008238
	push	{lr}
	ldr	r1, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r1, r0
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x8d
	cmp	r2, r3
	bne	.L250
	ldr	r0, =.L3e70
	b	.L278
.L250:
	ldr	r3, =0x8c
	cmp	r2, r3
	bne	.L26c
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r1, r2
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #0xc
	bne	.L268
	ldr	r0, =.L4110
	b	.L278
.L268:
	ldr	r0, =.L3e94
	b	.L278
.L26c:
	ldr	r3, =0x8e
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L3f60
	b	.L278
.L276:
	ldr	r0, =.L3e64
.L278:
	pop	{r1}
	bx	r1
.func_end OvlFunc_953_2008238

