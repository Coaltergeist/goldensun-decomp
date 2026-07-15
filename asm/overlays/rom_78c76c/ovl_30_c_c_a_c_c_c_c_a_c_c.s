	.include "macros.inc"

.thumb_func_start OvlFunc_891_20096dc
	push	{r5, r6, lr}
	mov	r0, #0x11
	sub	sp, #8
	bl	__MapActor_GetActor
	mov	r1, #0x88
	mov	r2, #0x80
	mov	r6, r0
	lsl	r1, #17
	mov	r0, #2
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_8012078
	mov	r1, #0x90
	mov	r2, #0x80
	mov	r0, #2
	lsl	r1, #17
	lsl	r2, #16
	mov	r3, #0
	bl	__Func_8012078
	cmp	r6, #0
	bne	.L170e
	b	.L1924
.L170e:
	ldr	r5, [r6, #0x10]
	asr	r5, #20
	bl	__CutsceneStart
	cmp	r5, #8
	beq	.L171c
	b	.L1920
.L171c:
	ldr	r0, =0x207
	bl	__GetFlag
	cmp	r0, #0
	bne	.L174a
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	asr	r3, #19
	cmp	r3, #0x11
	bhi	.L174a
	mov	r0, #0
	ldr	r1, =0x121
	mov	r2, #0x9e
	bl	__Func_80921c4
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r3, #0xc0
	lsl	r3, #8
	strh	r3, [r0, #6]
.L174a:
	ldr	r0, =0x816
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1756
	b	.L1920
.L1756:
	ldr	r0, =0x817
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1762
	b	.L1920
.L1762:
	ldr	r0, =0x818
	bl	__SetFlag
	mov	r0, #0x80
	mov	r1, #0x80
	lsl	r0, #10
	lsl	r1, #7
	bl	__Func_80933d4
	mov	r0, #0x8f
	mov	r1, #1
	mov	r2, #0x92
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x11
	bl	__MapActor_GetActor
	add	r0, #0x5a
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r2, #9
	strb	r3, [r0]
	lsl	r1, #10
	mov	r0, #0x11
	bl	__MapActor_SetSpeed
	mov	r3, r6
	mov	r5, #0
	add	r3, #0x55
	strb	r5, [r3]
	mov	r1, #3
	mov	r0, #0x11
	bl	__Func_8092b08
	mov	r0, #0xbd
	bl	__PlaySound
	mov	r1, #0x90
	lsl	r1, #1
	mov	r2, #0xb2
	mov	r0, #0x11
	bl	__MapActor_TravelTo
	mov	r0, #8
	bl	__CutsceneWait
	mov	r1, #0x90
	mov	r2, #0xb2
	mov	r0, #0x12
	lsl	r1, #17
	lsl	r2, #16
	bl	__MapActor_SetPos
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r6, #0x38]
	str	r3, [r6, #0x3c]
	str	r3, [r6, #0x40]
	mov	r0, #0x11
	mov	r1, #0
	mov	r2, #0
	str	r5, [r6, #8]
	str	r5, [r6, #0xc]
	str	r5, [r6, #0x10]
	str	r5, [r6, #0x24]
	str	r5, [r6, #0x28]
	str	r5, [r6, #0x2c]
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0x8d
	bl	__PlaySound
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #0xa0
	mov	r1, #0xa0
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x23
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #11
	lsl	r2, #9
	lsl	r0, #11
	bl	__Func_8012330
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r0, #0xc0
	mov	r1, #0xc0
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #10
	lsl	r2, #9
	lsl	r0, #10
	bl	__Func_8012330
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #0x80
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #9
	lsl	r0, #9
	bl	__Func_8012330
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r0, #1
	mov	r1, #1
	neg	r1, r1
	ldr	r2, =0xe666
	neg	r0, r0
	bl	__Func_8012330
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #0xbc
	bl	__PlaySound
	ldr	r0, =0x80b
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80c
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80d
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80e
	bl	__GetFlag
	cmp	r0, #0
	beq	.L18ec
	ldr	r0, =0x80f
	bl	__SetFlag
.L18ec:
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x1038
	mov	r1, #1
	bl	__Func_801776c
	mov	r3, #8
	mov	r5, #0x11
	str	r3, [sp, #4]
	mov	r0, #0
	mov	r1, #1
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
	mov	r3, #7
	str	r3, [sp, #4]
	mov	r0, #0x11
	mov	r1, #9
	mov	r2, #2
	mov	r3, #1
	str	r5, [sp]
	bl	__Func_8010704
.L1920:
	bl	__CutsceneEnd
.L1924:
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_891_20096dc

