	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_945_2009894
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xffffe000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #24
	cmp	r3, r2
	bls	.Lm945_18d0
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_18c8
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_18c8
	mov	r0, #0x11
	bl	__UI_Sanctum
	b	.Lm945_194e
.Lm945_18c8:
	mov	r0, #0xf
	bl	__UI_Sanctum
	b	.Lm945_194e
.Lm945_18d0:
	bl	__CutsceneStart
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_18e6
	ldr	r0, =0x1f81
	bl	__MessageID
	b	.Lm945_1924
.Lm945_18e6:
	mov	r0, #0x8a
	lsl	r0, #4
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_18fa
	ldr	r0, =0x1f48
	bl	__MessageID
	b	.Lm945_1924
.Lm945_18fa:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_190c
	ldr	r0, =0x1f7f
	bl	__MessageID
	b	.Lm945_1924
.Lm945_190c:
	ldr	r0, =0x925
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_191e
	ldr	r0, =0x1f7d
	bl	__MessageID
	b	.Lm945_1924
.Lm945_191e:
	ldr	r0, =0x1f7b
	bl	__MessageID
.Lm945_1924:
	ldr	r0, =0x928
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm945_1942
	ldr	r0, =0x93e
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm945_1942
	mov	r0, #0x11
	mov	r1, #0
	bl	__ActorMessage
	b	.Lm945_194a
.Lm945_1942:
	mov	r0, #0xf
	mov	r1, #0
	bl	__ActorMessage
.Lm945_194a:
	bl	__CutsceneEnd
.Lm945_194e:
	pop	{r0}
	bx	r0
.func_end OvlFunc_945_2009894

