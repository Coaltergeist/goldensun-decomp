	.include "macros.inc"

.thumb_func_start OvlFunc_910_200809c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.Ld8
	ldr	r0, =0x84f
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc2
	ldr	r3, =.Lc7c
	mov	r2, #1
	add	r3, #0x76
	strb	r2, [r3]
.Lc2:
	ldr	r0, =0x845
	bl	__GetFlag
	cmp	r0, #0
	beq	.Ld4
	ldr	r3, =.Lc7c
	mov	r2, #0
	add	r3, #0x46
	strb	r2, [r3]
.Ld4:
	ldr	r0, =.Lc7c
	b	.Lda
.Ld8:
	ldr	r0, =gScript_889__02008c64
.Lda:
	pop	{r1}
	bx	r1
.func_end OvlFunc_910_200809c

.thumb_func_start OvlFunc_910_20080f8
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xd
	bl	__MapActor_SetPos
	ldr	r0, =0xfd2
	bl	__SetFlag
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_20080f8

.thumb_func_start OvlFunc_910_200812c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29de
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_200812c

.thumb_func_start OvlFunc_910_2008154
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x22
	cmp	r2, r3
	bne	.L16c
	ldr	r0, =.Ld30
	b	.L16e
.L16c:
	ldr	r0, =.Ld24
.L16e:
	pop	{r1}
	bx	r1
.func_end OvlFunc_910_2008154

.thumb_func_start OvlFunc_910_2008184
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13c0
	bl	__MessageID
	mov	r1, #0
	mov	r0, #9
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_910_2008184

