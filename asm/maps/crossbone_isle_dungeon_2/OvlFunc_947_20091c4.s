	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_947_20091c4
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0
	sub	sp, #0x38
	bl	__MapActor_GetActor
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r3, #3
	and	r7, r3
	mov	r10, r0
	cmp	r7, #0
	bne	.Lm947_124c
	add	r2, sp, #0x10
	mov	r3, #0xa
	str	r3, [r2, #4]
	ldr	r3, =0xb333
	str	r3, [r2, #8]
	str	r3, [r2, #0xc]
	mov	r8, r2
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r6, [r2, #8]
	sub	r3, #8
	lsl	r3, #16
	add	r6, r3
	bl	__Random
	lsl	r3, r0, #4
	add	r3, r0
	mov	r2, r10
	lsr	r3, #16
	ldr	r5, [r2, #0x10]
	sub	r3, #8
	lsl	r3, #16
	add	r5, r3
	bl	__Random
	mov	r3, r0
	lsl	r0, r3, #2
	add	r0, r3
	lsr	r0, #16
	mov	r3, #0xc0
	lsl	r3, #10
	lsl	r0, #16
	add	r0, r3
	mov	r1, #0xa
	bl	_divsi3_RAM
	ldr	r3, =0x90001
	mov	r2, r10
	ldr	r1, [r2, #0xc]
	str	r3, [sp, #8]
	mov	r3, r8
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r2, r5
	mov	r3, #0
	str	r7, [sp, #4]
	bl	OvlFunc_common0_10c
.Lm947_124c:
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_20091c4

