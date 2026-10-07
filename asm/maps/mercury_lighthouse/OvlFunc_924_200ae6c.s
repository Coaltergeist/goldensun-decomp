	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200ae6c
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	mov	r5, r0
	bl	__MapActor_GetActor
	mov	r7, r0
	mov	r2, r7
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r1, #0x80
	mov	r0, r5
	lsl	r1, #1
	bl	__Func_8092950
	mov	r0, #0xdd
	bl	__PlaySound
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #5
	str	r3, [r2, #4]
	mov	r3, #0x8f
	lsl	r3, #1
	strh	r3, [r2, #0x18]
	ldr	r3, =.Lm924_5e70
	str	r3, [r2, #0x1c]
	mov	r3, #0
	mov	r10, r2
	mov	r8, r3
.Lm924_2eb6:
	mov	r2, r8
	cmp	r2, #0x1f
	bhi	.Lm924_2ec6
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	ldr	r2, [r7, #0x10]
	bl	OvlFunc_924_200bbd4
.Lm924_2ec6:
	mov	r3, #1
	mov	r2, r8
	and	r3, r2
	cmp	r3, #0
	beq	.Lm924_2f2a
	mov	r0, #0xf6
	bl	__PlaySound
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	lsl	r3, #3
	ldr	r6, [r7, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Random
	lsl	r0, #5
	ldr	r5, [r7, #0xc]
	lsr	r0, #16
	ldr	r2, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r2
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r3, #0x80
	lsl	r3, #8
	lsl	r0, #15
	add	r0, r3
	mov	r3, #0
	ldr	r2, [r7, #0x10]
	str	r3, [sp, #4]
	mov	r3, #0xcc
	lsl	r3, #14
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
.Lm924_2f2a:
	ldr	r3, =0x1999
	mov	r2, r8
	mul	r2, r3
	ldr	r3, [r7, #0xc]
	add	r3, r2
	str	r3, [r7, #0xc]
	str	r3, [r7, #0x3c]
	mov	r0, #2
	bl	__WaitFrames
	mov	r2, #1
	add	r8, r2
	mov	r3, r8
	cmp	r3, #0x2f
	bls	.Lm924_2eb6
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_200ae6c

