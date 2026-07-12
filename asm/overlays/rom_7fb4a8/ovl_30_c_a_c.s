	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_971_200906c
	push	{r5, r6, r7, lr}
	mov	r5, r0
	mov	r6, #0
	bl	__CutsceneStart
	cmp	r5, #0xd
	beq	.L1086
	cmp	r5, #0xd
	bgt	.L108a
	cmp	r5, #0xc
	bne	.L108a
	ldr	r7, =0x2985
	b	.L108c
.L1086:
	ldr	r7, =0x297f
	b	.L108c
.L108a:
	ldr	r7, =0x2982
.L108c:
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r5
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0xc1
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.L10bc
	ldr	r0, =0x305
	bl	__GetFlag
	neg	r3, r0
	orr	r3, r0
	lsr	r3, #31
	mov	r6, r3
	mov	r3, #2
	sub	r6, r3, r6
.L10bc:
	add	r0, r7, r6
	bl	__MessageID
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8092c40
	bl	__CutsceneEnd
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_200906c

.thumb_func_start OvlFunc_971_20090e8
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	mov	r0, r6
	ldr	r1, [r3]
	mov	r2, #0
	bl	__Func_809280c
	mov	r0, #0x81
	lsl	r0, #2
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1126
	bl	__GetPartySize
	cmp	r0, #3
	bgt	.L111a
	ldr	r5, =0x298d
	b	.L111c
.L111a:
	ldr	r5, =0x298c
.L111c:
	mov	r0, #0x81
	lsl	r0, #2
	bl	__SetFlag
	b	.L1130
.L1126:
	mov	r0, #0x81
	lsl	r0, #2
	ldr	r5, =0x298e
	bl	__ClearFlag
.L1130:
	mov	r0, r5
	bl	__MessageID
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_20090e8

.thumb_func_start OvlFunc_971_2009158
	push	{r5, r6, lr}
	mov	r6, r0
	bl	__CutsceneStart
	ldr	r5, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r1, [r3]
	mov	r2, #0
	mov	r0, r6
	bl	__Func_809280c
	mov	r3, #0xaa
	lsl	r3, #2
	add	r2, r5, r3
	ldrh	r3, [r2]
	cmp	r3, #0
	beq	.L118e
	mov	r0, r3
	mov	r1, #5
	bl	__Func_8019908
	ldr	r0, =0x298a
	bl	__MessageID
	b	.L1194
.L118e:
	ldr	r0, =0x298b
	bl	__MessageID
.L1194:
	mov	r1, #0
	mov	r0, r6
	bl	__Func_8092c40
	bl	__CutsceneEnd
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_971_2009158

