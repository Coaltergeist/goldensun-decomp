	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_948_2009984
	push	{r5, lr}
	mov	r0, #0xd
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r3, #0x28
	mov	r2, #0x37
	mov	r5, r0
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x28
	mov	r1, #0x36
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	cmp	r5, #0
	beq	.L19bc
	mov	r0, #0xd
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	mov	r2, r5
	strb	r3, [r0]
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
.L19bc:
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009984

.thumb_func_start OvlFunc_948_20099cc
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldrh	r3, [r0, #6]
	cmp	r3, #0
	bne	.L19e0
	bl	__Func_8093c00
	b	.L19e4
.L19e0:
	bl	OvlFunc_948_2009b60
.L19e4:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20099cc

.thumb_func_start OvlFunc_948_20099e8
	push	{r5, lr}
	sub	sp, #8
	mov	r3, #0x28
	str	r3, [sp]
	mov	r5, #0x2a
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x29
	str	r3, [sp]
	mov	r0, #0x39
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #0x3a
	mov	r1, #0x2a
	mov	r2, #1
	mov	r3, #1
	str	r5, [sp]
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r3, #0x25
	str	r3, [sp]
	mov	r1, #0x25
	mov	r2, #3
	mov	r3, #1
	mov	r0, #0x3e
	str	r5, [sp, #4]
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r0, #0x55
	strb	r3, [r0]
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_20099e8

.thumb_func_start OvlFunc_948_2009a48
	push	{lr}
	sub	sp, #8
	mov	r3, #0x2a
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x3a
	bl	__Func_8010704
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009a48

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
	bge	.L1ade
	ldr	r1, =0xfffff
	add	r3, r1
.L1ade:
	asr	r5, r3, #20
	cmp	r2, #0
	bne	.L1af0
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #2
	add	r0, #0x23
	strb	r3, [r0]
.L1af0:
	bl	OvlFunc_948_20099e8
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r3, #3
	add	r0, #0x55
	mov	r6, #0
	strb	r3, [r0]
	cmp	r5, #0x28
	bne	.L1b0c
	bl	OvlFunc_948_2009a9c
	b	.L1b54
.L1b0c:
	cmp	r5, #0x2a
	bne	.L1b16
	bl	OvlFunc_948_2009a48
	b	.L1b54
.L1b16:
	cmp	r5, #0x29
	bne	.L1b20
	bl	OvlFunc_948_2009a70
	b	.L1b54
.L1b20:
	cmp	r5, #0x27
	beq	.L1b2c
	cmp	r5, #0x26
	beq	.L1b2c
	cmp	r5, #0x25
	bne	.L1b54
.L1b2c:
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
.L1b54:
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
	bge	.L1b7a
	ldr	r2, =0xfffff
	add	r3, r2
.L1b7a:
	ldr	r0, [r0, #8]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1b86
	ldr	r2, =0xfffff
	add	r0, r2
.L1b86:
	asr	r0, #20
	cmp	r3, #0x26
	bne	.L1bae
	cmp	r0, #0x26
	beq	.L1bae
	mov	r3, #0xc0
	ldrh	r0, [r5, #6]
	lsl	r3, #8
	cmp	r0, r3
	bne	.L1ba0
	bl	__Func_8093fa0
	b	.L1bba
.L1ba0:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r0, r2
	bne	.L1bae
	bl	__Func_8093e28
	b	.L1bba
.L1bae:
	bl	OvlFunc_948_20099e8
	bl	OvlFunc_948_20080c4
	bl	OvlFunc_948_2009ac8
.L1bba:
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
	beq	.L1bf8
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x3a
	mov	r1, #0x24
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	b	.L1c0c
.L1bf8:
	mov	r3, #0x2d
	mov	r2, #0x2b
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2e
	mov	r1, #0x2b
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
.L1c0c:
	bl	OvlFunc_948_2009ec0
	ldr	r0, =0x206
	bl	__SetFlag
	add	sp, #8
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009bc4

.thumb_func_start OvlFunc_948_2009c28
	push	{lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.L1c3a
	ldr	r2, =0xfffff
	add	r3, r2
.L1c3a:
	ldr	r0, [r0, #0x10]
	asr	r3, #20
	cmp	r0, #0
	bge	.L1c46
	ldr	r2, =0xfffff
	add	r0, r2
.L1c46:
	asr	r0, #20
	cmp	r3, #0x2d
	bne	.L1c54
	cmp	r0, #0x2b
	bne	.L1c54
	bl	OvlFunc_948_2009bc4
.L1c54:
	pop	{r0}
	bx	r0
.func_end OvlFunc_948_2009c28

