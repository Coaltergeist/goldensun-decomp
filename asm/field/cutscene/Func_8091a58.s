	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091a58  @ 0x08091a58
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r7, #0xec
	mov	r11, r3
	lsl	r7, #1
	add	r7, r11
	mov	r3, #0
	ldrsh	r2, [r7, r3]
	sub	sp, #0xc
	str	r2, [sp]
	mov	r6, r0
	bl	_GiveItem
	mov	r2, #1
	mov	r8, r0
	neg	r2, r2
	cmp	r8, r2
	beq	.L91a8c
	b	.L91baa
.L91a8c:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x96a
	mov	r1, #1
	bl	_Func_801776c
	ldr	r0, =0x977
	mov	r1, #1
	bl	_Func_801776c
	mov	r3, #8
	mov	r2, #4
	add	r3, sp
	add	r2, sp
	mov	r9, r3
	mov	r10, r2
.L91ab0:
	ldr	r7, =0x978
	mov	r1, #1
	mov	r0, r7
	bl	_Func_801776c
	mov	r0, r9
	mov	r1, r10
	bl	_UI_SellMenu
	mov	r3, #1
	mov	r5, r0
	neg	r3, r3
	cmp	r5, r3
	bne	.L91b34
	mov	r0, r6
	bl	_GetItemInfo
	ldrb	r2, [r0, #3]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	beq	.L91aee
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	add	r0, r7, #4
	mov	r1, #1
	bl	_Func_801776c
	b	.L91ab0
.L91aee:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	add	r0, r7, #1
	mov	r1, #5
	bl	_Func_801776c
	mov	r0, #1
	bl	Func_8091d84
	mov	r5, r0
	bl	_Func_8019a54
	cmp	r5, #0
	bne	.L91ab0
	mov	r1, #1
	mov	r0, r6
	bl	_Func_8078ad0
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	add	r0, r7, #2
	mov	r1, #1
	bl	_Func_801776c
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91b34:
	ldr	r0, [sp, #8]
	bl	_GetUnit
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #8]
	bl	_GetInventoryItem
	cmp	r0, #0
	ble	.L91b56
	mov	r5, r0
.L91b48:
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #4]
	sub	r5, #1
	bl	_Func_8078948
	cmp	r5, #0
	bne	.L91b48
.L91b56:
	mov	r0, r6
	bl	_GiveItem
	mov	r8, r0
	mov	r0, #0x53
	bl	_PlaySound
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	bne	.L91b84
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_801776c
	b	.L91b9c
.L91b84:
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_801776c
.L91b9c:
	mov	r3, #0xec
	mov	r2, sp
	lsl	r3, #1
	ldrh	r2, [r2]
	add	r3, r11
	strh	r2, [r3]
	b	.L91bee
.L91baa:
	mov	r0, #0x53
	bl	_PlaySound
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	ldr	r5, =0x96a
	mov	r1, #3
	mov	r0, r5
	bl	_Func_801776c
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r8, r3
	beq	.L91be8
	mov	r0, r6
	mov	r1, #2
	bl	_Func_8019908
	mov	r0, r8
	mov	r1, #1
	bl	_Func_8019908
	add	r0, r5, #1
	mov	r1, #3
	bl	_Func_801776c
.L91be8:
	mov	r3, sp
	ldrh	r3, [r3]
	strh	r3, [r7]
.L91bee:
	mov	r0, r8
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8091a58

