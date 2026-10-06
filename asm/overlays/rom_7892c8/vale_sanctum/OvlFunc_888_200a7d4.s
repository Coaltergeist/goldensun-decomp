	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_888_200a7d4
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r0, #8
	mov	r1, #0
	mov	r2, #0
	sub	sp, #0x14
	bl	__MapActor_SetPos
	mov	r0, #9
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xa
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r0, #0xc
	mov	r1, #0
	mov	r2, #0
	bl	__MapActor_SetPos
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0
	bl	__MapActor_SetPos
	mov	r0, #0x80
	mov	r1, #2
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #1
	bl	__Func_8091254
	mov	r0, #1
	bl	__CutsceneWait
	mov	r3, #1
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #0x19
	mov	r3, #5
	mov	r0, #2
	bl	__CreateUIBox
	ldr	r5, =0x116e
	mov	r7, r0
	mov	r1, r7
	mov	r0, r5
	mov	r2, #0x10
	mov	r3, #0
	bl	__DrawSmallText
	mov	r0, #1
	bl	__Func_801f730
	cmp	r0, #0
	bne	.Lm888_2870
	add	r0, r5, #2
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
	b	.Lm888_287c
.Lm888_2870:
	add	r0, r5, #1
	mov	r1, r7
	mov	r2, #0x10
	mov	r3, #0x10
	bl	__DrawSmallText
.Lm888_287c:
	add	r1, sp, #4
	add	r0, sp, #8
	bl	__Func_801c0dc
	mov	r2, #0x3c
	add	r0, sp, #8
	mov	r1, #0x48
	bl	__Func_801c154
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	mov	r5, #0
	cmp	r3, #0
	bne	.Lm888_28dc
	ldr	r2, =.Lm888_411c
	mov	r6, #1
	mov	r8, r2
.Lm888_28a2:
	ldr	r3, =gKeyRepeat
	ldr	r3, [r3]
	mov	r2, #0xc0
	and	r3, r2
	cmp	r3, #0
	beq	.Lm888_28b0
	eor	r5, r6
.Lm888_28b0:
	ldr	r3, =iwram_3001800
	ldr	r3, [r3]
	mov	r2, #0xf
	lsr	r3, #1
	and	r3, r2
	lsl	r3, #2
	mov	r2, r8
	ldr	r1, [r2, r3]
	lsl	r2, r5, #4
	add	r0, sp, #8
	add	r1, #0x18
	add	r2, #0x3c
	bl	__Func_801c154
	mov	r0, #1
	bl	__CutsceneWait
	ldr	r3, =gKeyPress
	ldr	r3, [r3]
	and	r3, r6
	cmp	r3, #0
	beq	.Lm888_28a2
.Lm888_28dc:
	ldr	r0, [sp, #4]
	bl	__Func_801c17c
	mov	r0, r7
	mov	r1, #1
	bl	__CloseUIBox
	mov	r0, r5
	add	sp, #0x14
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_888_200a7d4

