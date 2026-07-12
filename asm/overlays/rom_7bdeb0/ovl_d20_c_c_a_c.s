	.include "macros.inc"
.thumb_func_start OvlFunc_934_2008e04
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x17
	beq	.Le22
	b	.Lf5a
.Le22:
	mov	r1, #0xb4
	mov	r2, #0xa6
	mov	r0, #0
	lsl	r1, #1
	lsl	r2, #2
	bl	__Func_8092158
	mov	r1, #0xe0
	lsl	r1, #8
	mov	r2, #0xa
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r2, #0x80
	ldr	r3, [r0, #8]
	lsl	r2, #10
	add	r3, r2
	str	r3, [r0, #8]
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	ldr	r0, [r5, #8]
	bl	OvlFunc_common0_18
	mov	r10, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #13
	mov	r0, #9
	add	r5, r3
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r8, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__PlaySound
	mov	r7, #0
.Leb2:
	bl	__Random
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xb8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Random
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0x9c
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__CutsceneWait
	cmp	r7, #0x43
	bls	.Leb2
	mov	r3, #0x17
	mov	r2, #0x27
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x29
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x17
	bl	__Func_8010704
	mov	r0, #9
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	mov	r0, #0x80
	lsl	r0, #2
	bl	__SetFlag
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #9
	bl	__MapActor_SetAnim
	mov	r0, r10
	bl	__DeleteActor
	mov	r0, r8
	bl	__DeleteActor
	mov	r0, #0x1e
	bl	__CutsceneWait
.Lf5a:
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2008e04

.thumb_func_start OvlFunc_934_2008f78
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	sub	sp, #0x38
	bl	__CutsceneStart
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	asr	r3, #20
	cmp	r3, #0x1b
	beq	.Lf96
	b	.L10a6
.Lf96:
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, =0xfff80000
	ldr	r5, [r0, #8]
	mov	r0, #0xa
	add	r5, r2
	bl	__MapActor_GetActor
	mov	r6, #0xd0
	ldr	r2, [r0, #0x10]
	lsl	r6, #14
	add	r2, r6
	mov	r1, #0
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r10, r0
	mov	r0, #0xa
	bl	__MapActor_GetActor
	mov	r3, #0x80
	ldr	r5, [r0, #8]
	lsl	r3, #12
	mov	r0, #0xa
	add	r5, r3
	bl	__MapActor_GetActor
	ldr	r2, [r0, #0x10]
	mov	r1, #0
	add	r2, r6
	mov	r3, #0xf1
	mov	r0, r5
	bl	OvlFunc_common0_18
	mov	r8, r0
	mov	r0, #9
	bl	__MapActor_GetActor
	mov	r3, #0
	add	r0, #0x55
	strb	r3, [r0]
	ldr	r3, =0x9999
	add	r6, sp, #0x10
	str	r3, [r6, #8]
	str	r3, [r6, #0xc]
	mov	r3, #7
	str	r3, [r6, #4]
	mov	r0, #0xd8
	bl	__PlaySound
	mov	r7, #0
.L1000:
	bl	__Random
	lsl	r5, r0, #4
	add	r5, r0
	lsr	r5, #16
	mov	r2, #0xd8
	lsl	r2, #17
	lsl	r5, #16
	add	r5, r2
	bl	__Random
	lsl	r2, r0, #3
	sub	r2, r0
	lsl	r2, #1
	lsr	r2, #16
	mov	r3, #0xa4
	lsl	r3, #18
	lsl	r2, #16
	add	r2, r3
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #4]
	mov	r3, #0x90
	lsl	r3, #12
	str	r3, [sp, #8]
	mov	r1, #0
	mov	r3, #0
	mov	r0, r5
	str	r6, [sp, #0xc]
	bl	OvlFunc_common0_10c
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r2, =0xffff8000
	ldr	r3, [r0, #0xc]
	add	r3, r2
	str	r3, [r0, #0xc]
	add	r7, #1
	mov	r0, #1
	bl	__CutsceneWait
	cmp	r7, #0x43
	bls	.L1000
	mov	r3, #0x1b
	mov	r2, #0x29
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x27
	mov	r2, #2
	mov	r3, #1
	mov	r0, #0x1f
	bl	__Func_8010704
	mov	r0, #0xa
	bl	__MapActor_GetActor
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #2
	orr	r3, r2
	strb	r3, [r0]
	ldr	r0, =0x201
	bl	__SetFlag
	mov	r0, #0xa
	bl	__MapActor_GetActor
	ldr	r3, =0xfff80000
	mov	r1, #2
	str	r3, [r0, #0xc]
	mov	r0, #0xa
	bl	__MapActor_SetAnim
	mov	r0, r10
	bl	__DeleteActor
	mov	r0, r8
	bl	__DeleteActor
	mov	r0, #0x1e
	bl	__CutsceneWait
.L10a6:
	bl	__CutsceneEnd
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_934_2008f78
