	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_956_20085e0
	push	{r5, r6, lr}
	sub	sp, #8
	mov	r6, #0xf
.L5e6:
	mov	r0, r6
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	__Func_8011f54
	cmp	r0, #0
	bne	.L644
	mov	r2, r5
	add	r2, #0x23
	mov	r3, #2
	strb	r3, [r2]
	mov	r3, r5
	add	r3, #0x55
	strb	r0, [r3]
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #0x10]
	asr	r2, #20
	asr	r3, #20
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r1, #0xd
	mov	r2, #1
	mov	r3, #1
	bl	__Func_8010704
	ldr	r3, [r5, #0x10]
	ldr	r2, [r5, #8]
	asr	r3, #20
	asr	r2, #20
	add	r3, #0x34
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r0, #0x53
	mov	r3, #1
	mov	r1, #0xd
	mov	r2, #1
	bl	__Func_8010704
	ldr	r3, =0x205
	add	r0, r6, r3
	bl	__SetFlag
.L644:
	add	r6, #1
	cmp	r6, #0x11
	ble	.L5e6
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_20085e0

.thumb_func_start OvlFunc_956_2008658
	push	{r5, lr}
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r1, r3, #20
	ldr	r3, [r0, #0x10]
	mov	r5, #0x17
	asr	r4, r3, #20
	cmp	r1, #0x51
	bne	.L698
	cmp	r4, #0xc
	bne	.L698
	ldrh	r2, [r0, #6]
	mov	r3, #0xe0
	lsl	r3, #8
	and	r3, r2
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	bne	.L68c
	mov	r5, #0xfd
.L68c:
	lsl	r1, #20
	lsl	r2, r4, #20
	mov	r0, #0
	mov	r3, r5
	bl	__Func_8012078
.L698:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_956_2008658

