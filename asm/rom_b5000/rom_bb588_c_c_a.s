	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bb938  @ 0x080bb938
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e74
	mov	r2, #0xd7
	ldr	r3, [r3]
	lsl	r2, #3
	add	r6, r3, r2
	ldr	r2, =0x7fc
	add	r3, r2
	ldr	r3, [r3]
	mov	r7, #0
	cmp	r7, r3
	blt	.Lbb952
	b	.Lbba98
.Lbb952:
	ldrb	r3, [r6, r7]
	cmp	r3, #0xd
	bls	.Lbb95a
	b	.Lbba88
.Lbb95a:
	ldr	r2, =.Lbb964
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbb964:
	.word	.Lbb9b6
	.word	.Lbb9c4
	.word	.Lbb9d2
	.word	.Lbb9de
	.word	.Lbb9fa
	.word	.Lbba12
	.word	.Lbb9f0
	.word	.Lbba0c
	.word	.Lbba22
	.word	.Lbba42
	.word	.Lbba62
	.word	.Lbba70
	.word	.Lbb9aa
	.word	.Lbb99c
.Lbb99c:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r1, [r6, r3]
	mov	r0, r6
	bl	Func_80bb928
	b	.Lbba88
.Lbb9aa:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	bl	Func_80bb8e8
	b	.Lbba88
.Lbb9b6:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #1
	bl	_Func_8019908
	b	.Lbba88
.Lbb9c4:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #5
	bl	_Func_8019908
	b	.Lbba88
.Lbb9d2:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	ldr	r3, =0x1ff
	mov	r1, #2
	b	.Lbb9e8
.Lbb9de:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	ldr	r3, =0x3fff
	mov	r1, #4
.Lbb9e8:
	and	r0, r3
	bl	_Func_8019908
	b	.Lbba88
.Lbb9f0:
	ldr	r3, =iwram_3001ee4
	ldr	r2, [r3]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.Lbba88
.Lbb9fa:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	cmp	r0, #0
	blt	.Lbba08
	bl	_Func_80175a0
.Lbba08:
	bl	WaitTextPrompt
.Lbba0c:
	bl	_Func_80198dc
	b	.Lbba88
.Lbba12:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	cmp	r0, #0
	blt	.Lbba0c
	bl	_Func_80175a0
	b	.Lbba0c
.Lbba22:
	mov	r2, #0xb4
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r0, [r3]
	cmp	r0, #0
	ble	.Lbba32
	bl	_PlaySound
.Lbba32:
	lsl	r3, r7, #2
	add	r3, #0x40
	ldr	r0, [r6, r3]
	mov	r1, #0
	mov	r2, #0
	bl	Func_80babdc
	b	.Lbba88
.Lbba42:
	mov	r2, #0xb6
	lsl	r2, #1
	lsl	r5, r7, #2
	add	r5, #0x40
	add	r3, r6, r2
	ldr	r1, [r3]
	ldr	r0, [r6, r5]
	bl	Func_80c24f0
	ldr	r0, [r6, r5]
	bl	Func_80bb588
	ldr	r0, [r6, r5]
	bl	Func_80bace8
	b	.Lbba88
.Lbba62:
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_801f200
	b	.Lbba88
.Lbba70:
	lsl	r5, r7, #2
	add	r5, #0x40
	ldr	r0, [r6, r5]
	bl	GetBattleActor
	mov	r1, r0
	ldr	r0, [r6, r5]
	bl	Func_80b78e4
	ldr	r0, [r6, r5]
	bl	Func_80b7aac
.Lbba88:
	mov	r2, #0xa2
	lsl	r2, #1
	add	r3, r6, r2
	ldr	r3, [r3]
	add	r7, #1
	cmp	r7, r3
	bge	.Lbba98
	b	.Lbb952
.Lbba98:
	bl	Func_80bdfec
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bb938

.thumb_func_start Func_80bbabc  @ 0x080bbabc
	push	{r5, lr}
	ldr	r3, =iwram_3001e74
	ldr	r4, [r3]
	mov	r3, #0xd7
	lsl	r3, #3
	add	r5, r4, r3
	ldr	r3, =0x7fc
	add	r4, r3
	ldr	r2, [r4]
	lsl	r3, r2, #2
	strb	r0, [r5, r2]
	add	r3, #0x40
	add	r2, #1
	str	r1, [r5, r3]
	str	r2, [r4]
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80bbabc

