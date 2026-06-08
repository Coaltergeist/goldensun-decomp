	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_957_2008b30
	push	{r5, lr}
	ldr	r5, =iwram_3001ebc
	mov	r3, #0xe0
	ldr	r1, [r5]
	lsl	r3, #1
	add	r2, r1, r3
	sub	r3, #0xc0
	str	r3, [r2]
	add	r3, #0xc8
	add	r2, r1, r3
	mov	r3, #0x18
	str	r3, [r2]
	mov	r0, #1
	bl	__Func_80030f8
	mov	r0, #0x4d
	bl	__Func_808fe38
	ldr	r3, =0x52a
	ldr	r5, [r5, #0x10]
	add	r2, r5, r3
	mov	r3, #5
	strh	r3, [r2]
	ldr	r0, =0x201
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lb7e
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x1d1d
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x3f
	strh	r3, [r2]
	bl	OvlFunc_957_2008a54
	b	.Lb9a
.Lb7e:
	ldr	r3, =0x534
	add	r2, r5, r3
	ldr	r3, =0x3f3f
	strh	r3, [r2]
	ldr	r3, =0x536
	add	r2, r5, r3
	mov	r3, #0x1f
	strh	r3, [r2]
	ldr	r2, =0x3f42
	ldr	r3, =REG_BLDCNT
	strh	r2, [r3]
	ldr	r2, =0xc04
	add	r3, #2
	strh	r2, [r3]
.Lb9a:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008b30

.thumb_func_start OvlFunc_957_2008bc8
	push	{lr}
	ldr	r3, =gState
	mov	r0, #0xe0
	lsl	r0, #1
	add	r3, r0
	ldrh	r1, [r3]
	mov	r0, #0
	ldrsh	r2, [r3, r0]
	ldr	r3, =0x92
	cmp	r2, r3
	bne	.Lbe6
	mov	r2, #0x80
	ldr	r3, =REG_BLDALPHA
	lsl	r2, #5
	strh	r2, [r3]
.Lbe6:
	lsl	r3, r1, #16
	ldr	r2, =0x97
	asr	r3, #16
	cmp	r3, r2
	bne	.Lc18
	mov	r0, #0x10
	mov	r1, #1
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #4
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #0xb
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #2
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #3
	bl	__Func_8092950
.Lc18:
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008bc8

.thumb_func_start OvlFunc_957_2008c2c
	push	{r5, lr}
	ldr	r3, =iwram_3001f30
	mov	r0, #0x80
	lsl	r0, #2
	ldr	r5, [r3]
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Lc4a
	bl	OvlFunc_957_2008b30
	mov	r2, r5
	add	r2, #0x34
	mov	r3, #1
	strb	r3, [r2]
.Lc4a:
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x97
	cmp	r2, r3
	bne	.Lc84
	mov	r0, #0x10
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x11
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x12
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x13
	mov	r1, #6
	bl	__Func_8092950
	mov	r0, #0x14
	mov	r1, #6
	bl	__Func_8092950
.Lc84:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008c2c

.thumb_func_start OvlFunc_957_2008c98
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001f30
	ldr	r6, [r3]
	mov	r1, #0x80
	ldr	r5, [r6, #0x10]
	mov	r2, #0
	mov	r3, #0x18
	ldrsh	r0, [r6, r3]
	lsl	r1, #7
	bl	__Func_8092adc
	mov	r1, #0
	mov	r0, r5
	bl	__Func_800c598
	mov	r0, #0x14
	bl	__Func_809163c
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0xc]
	ldr	r3, [r5, #0x10]
	mov	r0, #0
	bl	__Func_800c150
	mov	r4, r0
	cmp	r4, #0
	beq	.Lce6
	ldr	r3, =REG_DMA3SAD
	mov	r0, r5
	mov	r1, r4
	ldr	r2, =0x8400001c
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r5
	mov	r2, #0
	add	r3, #0x54
	str	r2, [r5, #0x6c]
	str	r4, [r6, #0x10]
	strb	r2, [r3]
.Lce6:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008c98

.thumb_func_start OvlFunc_957_2008cf8
	push	{lr}
	mov	r0, #0xc
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1e
	bne	.Ld3c
	ldr	r3, [r0, #0x10]
	asr	r4, r3, #20
	cmp	r4, #0x14
	bne	.Ld3c
	mov	r1, r0
	mov	r2, #2
	add	r1, #0x55
	mov	r3, #0
	strb	r2, [r1]
	str	r3, [r0, #0x14]
	mov	r3, r0
	add	r3, #0x23
	strb	r2, [r3]
	mov	r3, #0x20
	str	r3, [sp]
	mov	r0, #0x1e
	mov	r1, #0x14
	mov	r2, #1
	mov	r3, #1
	str	r4, [sp, #4]
	bl	__Func_8010704
	ldr	r0, =0x212
	bl	__Func_8079358
.Ld3c:
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_957_2008cf8

