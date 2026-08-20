	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start KolimaForest4_MapInit
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =.Lm916_12c8
	ldr	r1, =.Lm916_12c4
	ldr	r2, =ewram_2001000
	mov	r8, r3
	ldr	r7, =.Lm916_12c0
	str	r2, [r1]
	add	r3, r2, #2
	mov	r10, r1
	add	r2, #4
	mov	r1, r8
	sub	sp, #8
	str	r3, [r1]
	str	r2, [r7]
	mov	r6, #0
	mov	r5, #0x40
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0x40
	mov	r3, #0x20
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_80105d4
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0x20
	mov	r3, #0x20
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x20
	mov	r0, #0x20
	mov	r1, #0
	mov	r2, #0x20
	str	r6, [sp]
	str	r3, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm916_9fa
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.Lm916_111c
	ldr	r1, [r7]
	ldr	r2, =0x84000012
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, r10
	ldr	r3, [r2]
	strh	r6, [r3]
	mov	r3, r8
	ldr	r2, [r3]
	ldr	r3, .Lm916_a30	@ 1
	strh	r3, [r2]
.Lm916_9fa:
	ldr	r0, [r7]
	bl	OvlFunc_916_2008a90
	mov	r1, #0xff
	ldr	r0, =.Lm916_111c
	bl	OvlFunc_916_2008b3c
	bl	OvlFunc_916_2008194
	mov	r1, #0
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #8
	strh	r3, [r0, #0x20]
	mov	r3, #0xc0
	lsl	r3, #8
	str	r3, [r0, #0x18]
	b	.Lm916_a54

	.align	2, 0
.Lm916_a30:
	.word	1
	.pool

.Lm916_a54:
	str	r3, [r0, #0x1c]
	ldr	r3, =iwram_3001ebc
	mov	r1, #0xe0
	ldr	r3, [r3]
	lsl	r1, #1
	mov	r2, #0x81
	add	r3, r1
	lsl	r2, #2
	str	r2, [r3]
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm916_a76
	mov	r0, #4
	bl	OvlFunc_916_2008e64
.Lm916_a76:
	mov	r0, #0
	add	sp, #8
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end KolimaForest4_MapInit

