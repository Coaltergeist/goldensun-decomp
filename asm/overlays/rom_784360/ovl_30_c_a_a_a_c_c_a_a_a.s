	.include "macros.inc"

.thumb_func_start OvlFunc_884_2008158
	push	{lr}
	ldr	r0, =0x87a
	bl	__GetFlag
	cmp	r0, #0
	beq	.L168
	ldr	r0, =.L3cec
	b	.L19a
.L168:
	ldr	r0, =0x815
	bl	__GetFlag
	cmp	r0, #0
	beq	.L176
	ldr	r0, =.L3b3c
	b	.L19a
.L176:
	ldr	r3, =gState
	mov	r2, #0xe1
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0xc
	bne	.L18a
	ldr	r0, =.L3b30
	b	.L19a
.L18a:
	ldr	r0, =0x834
	bl	__GetFlag
	cmp	r0, #0
	beq	.L198
	ldr	r0, =.L3a64
	b	.L19a
.L198:
	ldr	r0, =gOvl_0200b938
.L19a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_884_2008158

.thumb_func_start OvlFunc_884_20081c4
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0xf3c
	bl	__MessageID
	mov	r2, #2
	mov	r0, #0x17
	mov	r1, #0
	bl	__Func_8092848
	mov	r1, #0
	mov	r0, #0x17
	bl	__Func_8093054
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_884_20081c4

