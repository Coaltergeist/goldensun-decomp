	.include "macros.inc"

.thumb_func_start OvlFunc_936_2008180
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L198
	ldr	r0, =.L4768
	b	.L1b8
.L198:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L1a2
	ldr	r0, =.L4a20
	b	.L1b8
.L1a2:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L1ac
	ldr	r0, =.L4a80
	b	.L1b8
.L1ac:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L1b6
	ldr	r0, =.L4b58
	b	.L1b8
.L1b6:
	ldr	r0, =gScript_926__0200c750
.L1b8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008180

.thumb_func_start OvlFunc_936_20081e4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29df
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20081e4

.thumb_func_start OvlFunc_936_200820c
	push	{lr}
	bl	__CutsceneStart
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__MapActor_SetPos
	ldr	r0, =0xfd6
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
.func_end OvlFunc_936_200820c

.thumb_func_start OvlFunc_936_2008240
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L258
	ldr	r0, =.L4bf4
	b	.L28c
.L258:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L262
	ldr	r0, =gScript_882__0200ce88
	b	.L28c
.L262:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L26c
	ldr	r0, =gScript_882__0200cedc
	b	.L28c
.L26c:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L4f24
	b	.L28c
.L276:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L280
	ldr	r0, =.L4f54
	b	.L28c
.L280:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L28a
	ldr	r0, =.L4f9c
	b	.L28c
.L28a:
	ldr	r0, =.L4be8
.L28c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008240

