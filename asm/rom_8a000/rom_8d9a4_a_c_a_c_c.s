	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808e9c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	sub	sp, #0xc
	mov	r1, #0
	ldr	r2, [r3]
	ldr	r3, [r3, #0x4c]
	str	r1, [sp]
	ldr	r2, [r2, #0x10]
	mov	r10, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r2, r3
	mov	r8, r2
	add	r0, sp, #8
	str	r1, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000014
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r10
	cmp	r3, #0
	bne	.L8e9fc
	b	.L8ebe2
.L8e9fc:
	mov	r4, #1
	add	r10, r4
	ldrb	r7, [r3]
	mov	r1, r10
	ldrb	r5, [r1]
	add	r10, r4
	cmp	r7, #0xff
	bne	.L8ea12
	cmp	r5, #0xff
	bne	.L8ea12
	b	.L8ebe2
.L8ea12:
	mov	r2, r10
	ldrb	r2, [r2]
	mov	r3, #1
	add	r10, r3
	mov	r3, r2
	sub	r3, #0x64
	str	r2, [sp, #4]
	cmp	r3, #0x8b
	bls	.L8ea26
	b	.L8ebc8
.L8ea26:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r4, #1
	ldr	r2, [r6]
	neg	r4, r4
	cmp	r2, r4
	bne	.L8ea3c
	b	.L8ebc8
.L8ea3c:
	mov	r1, #0x80
	lsl	r7, #20
	lsl	r1, #12
	mov	r11, r7
	mov	r9, r1
	lsl	r7, r5, #20
.L8ea48:
	mov	r4, #4
	ldrsh	r3, [r6, r4]
	ldr	r1, [sp, #4]
	cmp	r3, r1
	beq	.L8ea54
	b	.L8ebb8
.L8ea54:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8eb02
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x14
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_CreateActor
	mov	r5, r0
	cmp	r5, #0
	bne	.L8ea74
	b	.L8ebb8
.L8ea74:
	bl	Func_808e9a8
	mov	r0, r5
	mov	r1, #0
	bl	_Actor_SetSpriteFlags
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	bl	_GetFlag
	cmp	r0, #0
	beq	.L8eaaa
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8eaa2
	mov	r0, r5
	bl	_DeleteActor
	b	.L8ebb8
.L8eaa2:
	mov	r0, r5
	mov	r1, #2
	bl	_Actor_SetAnim
.L8eaaa:
	mov	r0, r5
	bl	_Actor_Stop
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eaba
	ldr	r4, =0xffff
	add	r2, r4
.L8eaba:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eacc
	ldr	r1, =0xffff
	add	r3, r1
.L8eacc:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0x43
	strb	r3, [r2]
	add	r2, #0x36
	strb	r3, [r2]
	ldrh	r3, [r6, #4]
	mov	r2, r8
	strb	r3, [r2, #4]
	ldr	r3, [r5, #8]
	str	r5, [r2]
	cmp	r3, #0
	bge	.L8eaf0
	ldr	r4, =0xfffff
	add	r3, r4
.L8eaf0:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r1, r8
	strb	r3, [r1, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r2, =0xfffff
	add	r0, r2
	b	.L8eba2
.L8eb02:
	cmp	r3, #3
	bne	.L8ebb8
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xc0
	lsl	r3, #14
	cmp	r2, r3
	bne	.L8ebb8
	mov	r4, #6
	ldrsh	r0, [r6, r4]
	bl	_GetFlag
	cmp	r0, #0
	bne	.L8ebb8
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x1c
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L8ebb8
	bl	Func_808e9a8
	mov	r1, #0
	mov	r0, r5
	bl	_Actor_SetSpriteFlags
	mov	r0, r5
	bl	_Actor_Stop
	mov	r0, r5
	mov	r1, #1
	bl	_Actor_SetAnim
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eb5a
	ldr	r1, =0xffff
	add	r2, r1
.L8eb5a:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eb6c
	ldr	r2, =0xffff
	add	r3, r2
.L8eb6c:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0xd
	strb	r3, [r2]
	sub	r2, #0x36
	strb	r3, [r2]
	mov	r3, r8
	str	r5, [r3]
	ldrh	r3, [r6, #4]
	mov	r4, r8
	strb	r3, [r4, #4]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8eb92
	ldr	r1, =0xfffff
	add	r3, r1
.L8eb92:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r2, r8
	strb	r3, [r2, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r3, =0xfffff
	add	r0, r3
.L8eba2:
	mov	r4, r8
	asr	r3, r0, #20
	strb	r3, [r4, #7]
	ldr	r2, [sp]
	mov	r1, #8
	add	r2, #1
	add	r8, r1
	str	r2, [sp]
	cmp	r2, #9
	ble	.L8ebc8
	b	.L8ebe2
.L8ebb8:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r4, #1
	neg	r4, r4
	mov	r2, r3
	cmp	r3, r4
	beq	.L8ebc8
	b	.L8ea48
.L8ebc8:
	mov	r1, r10
	mov	r2, #1
	add	r10, r2
	ldrb	r7, [r1]
	mov	r3, r10
	ldrb	r5, [r3]
	add	r10, r2
	cmp	r7, #0xff
	beq	.L8ebdc
	b	.L8ea12
.L8ebdc:
	cmp	r5, #0xff
	beq	.L8ebe2
	b	.L8ea12
.L8ebe2:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808e9c0

