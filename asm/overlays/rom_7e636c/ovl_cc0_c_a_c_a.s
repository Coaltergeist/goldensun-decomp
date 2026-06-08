	.include "macros.inc"

.thumb_func_start OvlFunc_958_2008d20
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ld46
	ldr	r0, =0x96f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ld42
	ldr	r0, =.L19d4
	b	.Ld5c
.Ld42:
	ldr	r0, =.L1974
	b	.Ld5c
.Ld46:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ld50
	ldr	r0, =gScript_970__02009a4c
	b	.Ld5c
.Ld50:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ld5a
	ldr	r0, =.L1aac
	b	.Ld5c
.Ld5a:
	ldr	r0, =.L195c
.Ld5c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_958_2008d20

.thumb_func_start OvlFunc_958_2008d88
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x98
	cmp	r2, r3
	bne	.Ldae
	ldr	r0, =0x96f
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldaa
	ldr	r0, =.L1bcc
	b	.Ldc4
.Ldaa:
	ldr	r0, =.L1b48
	b	.Ldc4
.Ldae:
	ldr	r3, =0x9d
	cmp	r2, r3
	bne	.Ldb8
	ldr	r0, =.L1c80
	b	.Ldc4
.Ldb8:
	ldr	r3, =0x9e
	cmp	r2, r3
	bne	.Ldc2
	ldr	r0, =gScript_885__02009ce0
	b	.Ldc4
.Ldc2:
	ldr	r0, =.L1b3c
.Ldc4:
	pop	{r1}
	bx	r1
.func_end OvlFunc_958_2008d88

.thumb_func_start OvlFunc_958_2008df0
	push	{lr}
	ldr	r0, =0x98a
	bl	__Func_8079338
	cmp	r0, #0
	beq	.Ldfe
	b	.Lf2c
.Ldfe:
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	bne	.Le0c
	b	.Lf2c
.Le0c:
	bl	__Func_80916b0
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0xb
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Le32
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, #0xb
	bl	__Func_80923e4
.Le32:
	mov	r1, #8
	neg	r1, r1
	mov	r2, #0x10
	mov	r0, #0xb
	bl	__Func_809228c
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0xd0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_8092adc
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #0xb
	mov	r2, #0
	mov	r0, #0
	bl	__Func_809280c
	ldr	r0, =0x23da
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Leba
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r2, #0xe8
	mov	r1, #0x98
	mov	r0, #0xb
	bl	__Func_809218c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079374
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r0, #0xb
	mov	r1, #1
	bl	__Func_80924d4
	ldr	r1, =gState
	mov	r0, #0xe2
	ldr	r3, =0x88
	lsl	r0, #1
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r3, #0xe3
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0x1e
	strh	r3, [r2]
	b	.Lf28
.Leba:
	ldr	r3, =iwram_3001ebc
	mov	r0, #0xec
	ldr	r2, [r3]
	lsl	r0, #1
	add	r2, r0
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lef2
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_8092128
.Lef2:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xb
	bl	__Func_80923e4
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0
	mov	r1, #2
	bl	__Func_80924d4
	mov	r1, #0
	mov	r0, #0
	mov	r2, #0x10
	bl	__Func_809228c
	mov	r0, #0
	bl	__Func_80923c4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
.Lf28:
	bl	__Func_8091750
.Lf2c:
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008df0

.thumb_func_start OvlFunc_958_2008f44
	push	{lr}
	bl	__Func_80916b0
	mov	r0, #0xb
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r0, #0
	mov	r1, #0xb
	bl	__Func_809280c
	mov	r1, #1
	mov	r0, #0
	bl	__Func_80924d4
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0xb
	mov	r0, #0
	bl	__Func_8092848
	ldr	r0, =0x23d9
	bl	__Func_8092b94
	mov	r0, #0xb
	mov	r1, #0
	bl	__Func_8092f84
	mov	r0, #0xb
	mov	r1, #2
	bl	__Func_80924d4
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.Lfa4
	mov	r3, #0xa
	ldrsh	r1, [r0, r3]
	mov	r3, #0x12
	ldrsh	r2, [r0, r3]
	mov	r0, #0xb
	bl	__Func_8092128
.Lfa4:
	mov	r0, #0xb
	bl	__Func_80923c4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0xb
	bl	__Func_80923e4
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x9a
	lsl	r0, #4
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008f44

.thumb_func_start OvlFunc_958_2008fd0
	push	{r5, lr}
	ldr	r5, =0x23cc
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L1016
	mov	r0, #0x95
	lsl	r0, #4
	bl	__Func_8079338
	cmp	r0, #0
	beq	.L100c
	ldr	r0, =0x96f
	bl	__Func_8079338
	cmp	r0, #0
	bne	.L100c
	mov	r0, r5
	add	r0, #8
	bl	__Func_8092b94
.L100c:
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	b	.L102e
.L1016:
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
	bl	__Func_8092f84
.L102e:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_958_2008fd0

