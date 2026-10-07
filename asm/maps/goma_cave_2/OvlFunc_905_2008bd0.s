	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_905_2008bd0
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001e40
	ldr	r7, [r3]
	mov	r9, r3
	mov	r3, #7
	and	r7, r3
	sub	sp, #0xc
	cmp	r7, #0
	bne	.Lm905_cca
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r3, #0
	mov	r0, r8
	mov	r2, r6
	str	r7, [sp, #8]
	str	r5, [sp]
	bl	OvlFunc_905_2008a68
	mov	r3, r9
	ldr	r7, [r3]
	mov	r3, #0xf
	and	r7, r3
	cmp	r7, #0
	bne	.Lm905_cca
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	ldr	r5, [r5, #8]
	lsl	r3, #2
	lsr	r3, #16
	lsl	r3, #16
	mov	r8, r5
	mov	r0, #9
	add	r8, r3
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	ldr	r6, [r0, #0x10]
	lsl	r3, #11
	add	r6, r3
	bl	__Random
	lsl	r2, r0, #2
	add	r2, r0
	lsr	r2, #16
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r3, r2
	lsl	r5, r3, #6
	sub	r5, r3
	lsl	r5, #3
	add	r5, r2
	bl	__Random
	lsl	r0, #1
	lsr	r0, #16
	mov	r3, r10
	ldr	r1, [r3, #0xc]
	neg	r5, r5
	str	r0, [sp, #4]
	mov	r2, r6
	mov	r0, r8
	mov	r3, #0
	str	r5, [sp]
	str	r7, [sp, #8]
	bl	OvlFunc_905_2008a68
.Lm905_cca:
	add	sp, #0xc
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_905_2008bd0

