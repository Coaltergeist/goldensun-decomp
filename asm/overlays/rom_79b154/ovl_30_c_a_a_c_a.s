	.include "macros.inc"

.thumb_func_start OvlFunc_907_200811c
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L134
	ldr	r0, =.L1498
	b	.L14a
.L134:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L13e
	ldr	r0, =.L1600
	b	.L14a
.L13e:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L148
	ldr	r0, =.L16f0
	b	.L14a
.L148:
	ldr	r0, =gScript_944__02009480
.L14a:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_200811c

.thumb_func_start OvlFunc_907_2008170
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29dd
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008170

.thumb_func_start OvlFunc_907_2008198
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x1e
	cmp	r2, r3
	bne	.L1b0
	ldr	r0, =.L1744
	b	.L1c6
.L1b0:
	ldr	r3, =0x23
	cmp	r2, r3
	bne	.L1ba
	ldr	r0, =.L1a2c
	b	.L1c6
.L1ba:
	ldr	r3, =0x20
	cmp	r2, r3
	bne	.L1c4
	ldr	r0, =.L1bc4
	b	.L1c6
.L1c4:
	ldr	r0, =.L1738
.L1c6:
	pop	{r1}
	bx	r1
.func_end OvlFunc_907_2008198

.thumb_func_start OvlFunc_907_20081ec
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1472
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_20081ec

.thumb_func_start OvlFunc_907_2008208
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x146e
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008208

.thumb_func_start OvlFunc_907_2008224
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x1470
	mov	r1, #1
	bl	__Func_801776c
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008224

.thumb_func_start OvlFunc_907_2008240
	push	{lr}
	bl	__CutsceneStart
	ldr	r0, =0x13ae
	bl	__MessageID
	ldr	r0, =0x301
	bl	__GetFlag
	cmp	r0, #0
	beq	.L266
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
.L266:
	mov	r1, #0
	mov	r0, #9
	bl	__ActorMessage
	ldr	r0, =0x301
	bl	__SetFlag
	bl	__CutsceneEnd
	pop	{r0}
	bx	r0
.func_end OvlFunc_907_2008240

