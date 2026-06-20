	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_968_2008f38
	push	{r5, r6, lr}
	sub	sp, #8
	bl	__CutsceneStart
	mov	r1, #3
	mov	r0, #8
	bl	__Func_80925cc
	ldr	r0, =0x266d
	bl	__MessageID
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0x14
	mov	r6, #0xa
	mov	r5, #8
	bl	__Func_8093040
.Lf5c:
	mov	r1, #0xf
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #2
	bl	__WaitFrames
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, r5
	bl	__WaitFrames
	cmp	r5, #3
	bls	.Lf7e
	sub	r5, #1
.Lf7e:
	sub	r6, #1
	cmp	r6, #0
	bne	.Lf5c
	ldr	r0, =0x981
	bl	__SetFlag
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r3, #7
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #7
	mov	r1, #0x11
	mov	r2, #2
	mov	r3, #1
	bl	__Func_8010704
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008f38

.thumb_func_start OvlFunc_968_2008fbc
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x2670
	bl	__MessageID
	mov	r2, #0x14
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8093040
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80925cc
	mov	r0, #0xb
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_968_2008fbc

