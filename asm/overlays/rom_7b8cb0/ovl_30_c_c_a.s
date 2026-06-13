	.include "macros.inc"

.thumb_func_start OvlFunc_931_200807c
	push	{r5, lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.Lac
	ldr	r0, =0x909
	bl	__GetFlag
	cmp	r0, #0
	beq	.La8
	ldr	r3, =.L140c
	mov	r1, r3
	mov	r2, #0
	add	r1, #0x8e
	add	r3, #0xa6
	strb	r2, [r1]
	strb	r2, [r3]
.La8:
	ldr	r0, =.L140c
	b	.Lee
.Lac:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.Lec
	ldr	r0, =0x8fd
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lc4
	ldr	r3, =.L15bc
	mov	r2, #1
	add	r3, #0x2e
	strb	r2, [r3]
.Lc4:
	ldr	r0, =0x8fe
	bl	__GetFlag
	cmp	r0, #0
	bne	.Ld8
	ldr	r0, =0x907
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le0
.Ld8:
	ldr	r3, =.L15bc
	mov	r2, #1
	add	r3, #0x5e
	strb	r2, [r3]
.Le0:
	ldr	r5, =.L15bc
	mov	r0, r5
	bl	__Func_808b868
	mov	r0, r5
	b	.Lee
.Lec:
	ldr	r0, =.L13f4
.Lee:
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_931_200807c

.thumb_func_start OvlFunc_931_200811c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4b
	cmp	r2, r3
	bne	.L134
	ldr	r0, =gScript_930__02009730
	b	.L140
.L134:
	ldr	r3, =0x4c
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L19f4
	b	.L140
.L13e:
	ldr	r0, =.L1724
.L140:
	pop	{r1}
	bx	r1
.func_end OvlFunc_931_200811c

.thumb_func_start OvlFunc_931_200815c
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x18bd
	bl	__MessageID
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #1
	bne	.L186
	mov	r0, #8
	mov	r1, #0
	bl	__ActorMessage
	b	.L19e
.L186:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8093054
.L19e:
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_931_200815c

