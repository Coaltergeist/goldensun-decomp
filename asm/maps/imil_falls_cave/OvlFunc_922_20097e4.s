	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_922_20097e4
	push	{r5, r6, r7, lr}
	sub	sp, #8
	bl	OvlFunc_922_2009948
	ldr	r6, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r6, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x40
	cmp	r2, r3
	bne	.Lm922_1852
	ldr	r0, =0xf13
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm922_181a
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	bne	.Lm922_181a
	bl	OvlFunc_922_2009b1c
.Lm922_181a:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	ldrh	r3, [r3]
	mov	r1, #0xc0
	sub	r3, #2
	lsl	r3, #16
	lsl	r1, #10
	cmp	r3, r1
	bhi	.Lm922_191e
	mov	r5, #0xe2
	lsl	r5, #17
	mov	r0, #0x9c
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	lsl	r0, #16
	bl	OvlFunc_922_2008ed8
	mov	r0, #0xbc
	lsl	r0, #16
	mov	r1, #0
	mov	r2, r5
	mov	r3, #0xdf
	bl	OvlFunc_922_2008ed8
	b	.Lm922_191e
.Lm922_1852:
	ldr	r3, =0x43
	cmp	r2, r3
	bne	.Lm922_191e
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r7, =.Lm922_3328
	mov	r3, r0
	add	r3, #0x55
	mov	r5, #0
	str	r5, [r7]
	mov	r1, #1
	strb	r5, [r3]
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__Func_8092b08
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r6, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #1
	blt	.Lm922_18b2
	cmp	r3, #2
	ble	.Lm922_1894
	cmp	r3, #5
	beq	.Lm922_18a0
	b	.Lm922_18b2
.Lm922_1894:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	b	.Lm922_18b2
.Lm922_18a0:
	mov	r0, #0
	bl	__Func_8091494
	mov	r3, #1
	str	r3, [r7]
	ldr	r3, =iwram_3001ee0
	ldr	r5, [r3]
	mov	r3, #0
	str	r3, [r5, #0x18]
.Lm922_18b2:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #6
	bgt	.Lm922_191e
	mov	r0, #0x82
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm922_18f4
	mov	r3, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #0x39
	mov	r2, #0x13
	mov	r3, #0x39
	bl	__CopyMapTiles
	mov	r2, #7
	mov	r3, #8
	str	r2, [sp, #4]
	mov	r0, #0x1e
	mov	r1, #8
	mov	r2, #0xc
	str	r3, [sp]
	bl	__CopyMapTiles
	b	.Lm922_191e
.Lm922_18f4:
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	sub	r2, #0xc0
	str	r2, [r3]
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091220
	ldr	r0, =0x203108
	mov	r1, #1
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__WaitFrames
.Lm922_191e:
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_922_20097e4

