	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009a70
	push	{lr}
	sub	sp, #8
	mov	r3, #0x29
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x2c
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009a70

.thumb_func_start OvlFunc_948_2009a9c
	push	{lr}
	sub	sp, #8
	mov	r3, #0x28
	mov	r2, #0x2a
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x27
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009a9c

.thumb_func_start OvlFunc_948_2009ac8
	push	{r5, r6, lr}
	mov	r0, #8
	sub	sp, #8
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	ldr	r2, [r0, #0xc]
	cmp	r3, #0
	bge	.Lm948_1ade
	ldr	r1, =0xfffff
	add	r3, r1
.Lm948_1ade:
	asr	r5, r3, #20
	cmp	r2, #0
	bne	.Lm948_1af0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.Lm948_1af0:
	bl	OvlFunc_948_20099e8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	mov	r6, #0
	strb	r3, [r0]
	cmp	r5, #0x28
	bne	.Lm948_1b0c
	bl	OvlFunc_948_2009a9c
	b	.Lm948_1b54
.Lm948_1b0c:
	cmp	r5, #0x2a
	bne	.Lm948_1b16
	bl	OvlFunc_948_2009a48
	b	.Lm948_1b54
.Lm948_1b16:
	cmp	r5, #0x29
	bne	.Lm948_1b20
	bl	OvlFunc_948_2009a70
	b	.Lm948_1b54
.Lm948_1b20:
	cmp	r5, #0x27
	beq	.Lm948_1b2c
	cmp	r5, #0x26
	beq	.Lm948_1b2c
	cmp	r5, #0x25
	bne	.Lm948_1b54
.Lm948_1b2c:
	mov	r3, #0x2a
	str	r3, [sp, #4]
	mov	r1, #0x24
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x3d
	str	r5, [sp]
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r0, #0x55
	strb	r6, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #0x80
	lsl	r3, #14
	str	r3, [r0, #0xc]
.Lm948_1b54:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009ac8

.thumb_func_start OvlFunc_948_2009b60
	push	{r5, lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.Lm948_1b7a
	ldr	r2, =0xfffff
	add	r3, r2
.Lm948_1b7a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.Lm948_1b86
	ldr	r2, =0xfffff
	add	r0, r2
.Lm948_1b86:
	asr	r0, #20
	cmp	r3, #0x26
	bne	.Lm948_1bae
	cmp	r0, #0x26
	beq	.Lm948_1bae
	mov	r3, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r3, #8
	cmp	r0, r3
	bne	.Lm948_1ba0
	bl	__Func_8093fa0
	b	.Lm948_1bba
.Lm948_1ba0:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bne	.Lm948_1bae
	bl	__Func_8093e28
	b	.Lm948_1bba
.Lm948_1bae:
	bl	OvlFunc_948_20099e8
	bl	OvlFunc_948_20080c4
	bl	OvlFunc_948_2009ac8
.Lm948_1bba:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009b60

.thumb_func_start OvlFunc_948_2009bc4
	push	{lr}
	ldr	r0, =OvlFunc_948_2009e94
	sub	sp, #8
	bl	__StopTask
	mov	r0, #0xe
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm948_1bf8
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.Lm948_1c0c
.Lm948_1bf8:
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.Lm948_1c0c:
	bl	OvlFunc_948_2009ec0
	ldr	r0, =0x206
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009bc4

