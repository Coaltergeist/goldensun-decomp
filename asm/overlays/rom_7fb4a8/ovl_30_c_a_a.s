	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_2008f8c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r6, r0
	mov	r0, #0
	ldr	r5, =0x294e
	bl	OvlFunc_971_2008f30
	mov	r8, r0
	mov	r0, r6
	bl	OvlFunc_971_2008f30
	mov	r7, r0
	bl	__CutsceneStart
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r6
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lffe
	mov	r0, #0xbc
	lsl	r0, #2
	bl	__GetFlag
	mov	r3, #0xbc
	lsl	r3, #2
	add	r0, r6, r3
	bl	__GetFlag
	mov	r5, r0
	ldr	r0, =0x305
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lff2
	cmp	r5, #0
	beq	.Lfee
	ldr	r5, =0x2967
	b	.L100e
.Lfee:
	ldr	r5, =0x296c
	b	.L100e
.Lff2:
	cmp	r5, #0
	beq	.Lffa
	ldr	r5, =0x2971
	b	.L100e
.Lffa:
	ldr	r5, =0x2976
	b	.L100e
.Lffe:
	mov	r2, r8
	cmp	r2, #0
	beq	.L100c
	cmp	r7, #0
	bne	.L100e
	ldr	r5, =0x2953
	b	.L100e
.L100c:
	ldr	r5, =0x2958
.L100e:
	add	r0, r5, r6
	sub	r0, #1
	bl	__MessageID
	mov	r0, r6
	mov	r1, #0
	bl	__ActorMessage
	bl	__CutsceneEnd
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2008f8c
