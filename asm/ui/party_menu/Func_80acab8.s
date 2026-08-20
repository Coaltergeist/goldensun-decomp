	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80acab8  @ 0x080acab8
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xac
	mov	r9, r0
	mov	r0, r3
	ldr	r5, [sp, #0xcc]
	ldr	r6, [sp, #0xd0]
	str	r1, [sp, #0x40]
	str	r2, [sp, #0x3c]
	str	r3, [sp, #0x38]
	bl	_GetUnit
	ldr	r3, =iwram_3001f2c
	str	r0, [sp, #0x34]
	mov	r1, #0x95
	ldr	r4, [r3]
	lsl	r1, #2
	add	r0, r4, #2
	add	r3, r5, r1
	ldrb	r2, [r0, r3]
	str	r2, [sp, #0x2c]
	ldrb	r3, [r4, r3]
	str	r3, [sp, #0x28]
	mov	r3, #0xbc
	lsl	r3, #1
	mov	r12, r3
	lsl	r5, #1
	add	r5, r12
	mov	r2, #0x80
	mov	r14, r0
	lsl	r2, #8
	ldrh	r0, [r4, r5]
	mov	r3, r2
	and	r3, r0
	lsl	r3, #16
	lsr	r3, #16
	str	r3, [sp, #0x24]
	add	r1, r6, r1
	mov	r0, r14
	ldrb	r0, [r0, r1]
	str	r0, [sp, #0x20]
	ldrb	r1, [r4, r1]
	lsl	r6, #1
	str	r1, [sp, #0x1c]
	add	r6, r12
	ldrh	r3, [r4, r6]
	mov	r5, #0xa6
	and	r2, r3
	lsl	r5, #1
	lsl	r2, #16
	lsr	r2, #16
	mov	r0, r5
	str	r2, [sp, #0x18]
	bl	alloc_iwram
	ldr	r3, =Func_8001af8
	ldr	r1, [sp, #0x34]
	str	r0, [sp, #0x30]
	mov	r2, r5
	bl	_call_via_r3
	ldr	r1, [sp, #0xd8]
	cmp	r1, #0
	beq	.Lacb44
	b	.Lacc66
.Lacb44:
	ldr	r2, [sp, #0xd4]
	cmp	r2, #3
	bne	.Lacbd2
	ldr	r1, [sp, #0x34]
	ldr	r2, [sp, #0x40]
	mov	r3, #0x34
	ldrsh	r0, [r1, r3]
	lsl	r2, #3
	ldr	r3, [sp, #0x3c]
	mov	r11, r2
	lsl	r7, r3, #3
	mov	r5, r11
	mov	r1, #0x38
	add	r5, #0x50
	add	r1, r7
	str	r1, [sp]
	mov	r10, r1
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	mov	r1, #0x40
	ldr	r3, [sp, #0x34]
	add	r1, r7
	mov	r2, #0x36
	ldrsh	r0, [r3, r2]
	mov	r8, r1
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	sub	r5, #0x20
	mov	r1, r10
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r2, r9
	mov	r3, r5
	mov	r1, #3
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	mov	r1, r8
	mov	r2, #0x3a
	ldrsh	r0, [r3, r2]
	str	r1, [sp]
	mov	r3, r5
	mov	r1, #3
	mov	r2, r9
	bl	_Func_801ea08
	mov	r6, r11
	ldr	r5, =.Laf290
	add	r6, #0x48
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r10
	bl	_Func_801e8b0
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r8
	bl	_Func_801e8b0
	b	.Lacc0c
.Lacbd2:
	ldr	r3, [sp, #0x34]
	ldr	r1, [sp, #0x40]
	mov	r2, #0x38
	ldrsh	r0, [r3, r2]
	ldr	r2, [sp, #0x3c]
	lsl	r1, #3
	lsl	r7, r2, #3
	mov	r11, r1
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x38
	str	r3, [sp]
	mov	r1, #3
	mov	r3, r5
	mov	r2, r9
	bl	_Func_801ea08
	ldr	r1, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r0, [r1, r3]
	mov	r3, r7
	add	r3, #0x40
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
.Lacc0c:
	ldr	r2, [sp, #0x34]
	mov	r5, r11
	mov	r3, r7
	add	r5, #0x30
	add	r3, #0x48
	ldrh	r0, [r2, #0x3c]
	mov	r1, #3
	str	r3, [sp]
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldrh	r0, [r3, #0x3e]
	mov	r3, r7
	add	r3, #0x50
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	add	r3, #0x40
	ldrh	r0, [r3]
	mov	r3, r7
	add	r3, #0x58
	str	r3, [sp]
	mov	r1, #3
	mov	r2, r9
	mov	r3, r5
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	mov	r2, r7
	add	r3, #0x42
	ldrb	r0, [r3]
	add	r2, #0x60
	mov	r3, r11
	str	r2, [sp]
	add	r3, #0x38
	mov	r1, #2
	mov	r2, r9
	bl	_Func_801ea08
.Lacc66:
	ldr	r0, [sp, #0xd4]
	cmp	r0, #1
	beq	.Lacc9e
	cmp	r0, #1
	bgt	.Lacc76
	cmp	r0, #0
	beq	.Lacc82
	b	.Lacd0a
.Lacc76:
	ldr	r1, [sp, #0xd4]
	cmp	r1, #2
	beq	.Laccb2
	cmp	r1, #4
	beq	.Laccea
	b	.Lacd0a
.Lacc82:
	ldr	r2, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r2
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	bl	_GiveDjinni
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_SetDjinni
	b	.Lacd0a
.Lacc9e:
	ldr	r0, [sp, #0x28]
	mov	r3, #0x1f
	and	r0, r3
	str	r0, [sp, #0x28]
	ldr	r1, [sp, #0x2c]
	ldr	r0, [sp, #0x38]
	ldr	r2, [sp, #0x28]
	bl	_Func_807a350
	b	.Lacd0a
.Laccb2:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0
	beq	.Laccc8
	ldr	r2, [sp, #0x28]
	mov	r3, #0x1f
	and	r2, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x2c]
	str	r2, [sp, #0x28]
	bl	_Func_807a350
.Laccc8:
	ldr	r3, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r3
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_GiveDjinni
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_SetDjinni
	b	.Lacd0a
.Laccea:
	ldr	r1, [sp, #0x1c]
	mov	r5, #0x1f
	and	r5, r1
	mov	r2, r5
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	bl	_GiveDjinni
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	beq	.Lacd0a
	ldr	r0, [sp, #0x38]
	ldr	r1, [sp, #0x20]
	mov	r2, r5
	bl	_SetDjinni
.Lacd0a:
	ldr	r0, [sp, #0x38]
	bl	_CalcStats
	ldr	r0, [sp, #0x38]
	bl	_GetUnit
	ldr	r3, [sp, #0xd8]
	str	r0, [sp, #0x34]
	cmp	r3, #0
	bne	.Lacdca
	ldr	r0, [sp, #0x40]
	ldr	r1, [sp, #0x3c]
	lsl	r0, #3
	mov	r11, r0
	lsl	r7, r1, #3
	mov	r6, r11
	add	r6, #0x28
	mov	r5, r7
	ldr	r0, [sp, #0x34]
	add	r5, #0x10
	mov	r1, r9
	mov	r2, r6
	mov	r3, r7
	bl	_Func_801e8b0
	mov	r3, r5
	ldr	r0, =.Laf28c
	mov	r1, r9
	mov	r2, r6
	bl	_Func_801e8b0
	ldr	r2, [sp, #0x34]
	mov	r3, r11
	ldrb	r0, [r2, #0xf]
	add	r3, #0x58
	mov	r1, #2
	mov	r2, r9
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r5, =0x8ae
	mov	r3, r7
	mov	r0, r5
	add	r3, #0x38
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #1
	add	r3, #0x40
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #2
	add	r3, #0x48
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #3
	add	r3, #0x50
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r3, r7
	add	r0, r5, #4
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	add	r5, #5
	mov	r3, r7
	add	r3, #0x60
	mov	r0, r5
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	ldr	r1, =0x129
	ldr	r0, [sp, #0x30]
	add	r3, r0, r1
	ldrb	r0, [r3]
	ldr	r3, =0x741
	add	r0, r3
	mov	r3, r7
	add	r3, #0x20
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
.Lacdca:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	beq	.Lacdd2
	b	.Lad062
.Lacdd2:
	ldr	r3, =0x129
	ldr	r0, [sp, #0x30]
	ldr	r1, [sp, #0x34]
	add	r6, r0, r3
	add	r5, r1, r3
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	mov	r12, r1
	cmp	r12, r3
	beq	.Lace38
	ldr	r1, [sp, #0x3c]
	ldr	r3, =0x741
	ldrb	r0, [r5]
	ldr	r2, [sp, #0x40]
	add	r0, r3
	lsl	r3, r1, #3
	lsl	r2, #3
	add	r3, #0x30
	mov	r1, r9
	mov	r11, r2
	bl	_Func_801e7c0
	ldr	r3, [sp, #0xd8]
	ldr	r2, [sp, #0x40]
	ldr	r1, =0xf296
	str	r3, [sp]
	add	r2, #2
	mov	r3, #5
	mov	r0, r9
	bl	_Func_8019000
	ldrb	r1, [r6]
	ldrb	r3, [r5]
	b	.Lace3e

	.pool_aligned

.Lace38:
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r11, r0
.Lace3e:
	mov	r12, r1
	ldr	r2, [sp, #0x40]
	cmp	r12, r3
	beq	.Lace48
	add	r2, #5
.Lace48:
	ldr	r1, [sp, #0x3c]
	ldr	r3, [sp, #0x34]
	mov	r0, #0x8e
	mov	r4, #0
	add	r1, #5
	lsl	r0, #1
	mov	r8, r1
	mov	r10, r4
	add	r7, r2, #1
	add	r6, r3, r0
	mov	r5, r2
.Lace5e:
	ldr	r2, =0x5001
	mov	r3, r10
	add	r1, r4, r2
	str	r3, [sp]
	mov	r2, r5
	mov	r0, r9
	mov	r3, r8
	str	r4, [sp, #8]
	bl	_Func_8019000
	ldrb	r1, [r6]
	ldr	r0, =0xf030
	mov	r2, r10
	add	r1, r0
	str	r2, [sp]
	mov	r0, r9
	mov	r2, r7
	mov	r3, r8
	bl	_Func_8019000
	ldr	r4, [sp, #8]
	add	r4, #1
	add	r6, #1
	add	r7, #2
	add	r5, #2
	cmp	r4, #3
	ble	.Lace5e
	ldr	r2, [sp, #0x34]
	mov	r3, #0x46
	mov	r1, #0x38
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	add	r3, r11
	mov	r8, r3
	mov	r1, #0x38
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Laceea
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x38
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x38
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x38
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacede
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Laceea
.Lacede:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Laceea:
	ldr	r2, [sp, #0x34]
	mov	r1, #0x3a
	ldrsh	r0, [r2, r1]
	ldr	r2, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r2, r1]
	cmp	r0, r3
	beq	.Lacf3a
	ldr	r1, [sp, #0x3c]
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r1, #4
	mov	r2, r9
	add	r5, #0x40
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r0, [sp, #0x34]
	mov	r3, #0x3a
	ldrsh	r2, [r0, r3]
	ldr	r0, [sp, #0x30]
	mov	r1, #0x3a
	ldrsh	r3, [r0, r1]
	cmp	r2, r3
	ble	.Lacf2e
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacf3a
.Lacf2e:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacf3a:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	beq	.Lacf84
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x48
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3c]
	ldrh	r3, [r0, #0x3c]
	cmp	r2, r3
	bls	.Lacf78
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacf84
.Lacf78:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacf84:
	ldr	r1, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r1, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	beq	.Lacfce
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r5, #0x50
	mov	r1, #4
	str	r5, [sp]
	bl	_Func_801ea08
	ldr	r3, [sp, #0x34]
	ldr	r0, [sp, #0x30]
	ldrh	r2, [r3, #0x3e]
	ldrh	r3, [r0, #0x3e]
	cmp	r2, r3
	bls	.Lacfc2
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lacfce
.Lacfc2:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lacfce:
	ldr	r5, [sp, #0x34]
	ldr	r7, [sp, #0x30]
	add	r5, #0x40
	add	r7, #0x40
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	beq	.Lad018
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r6, r2
	mov	r3, r11
	add	r3, #0x48
	mov	r2, r9
	add	r6, #0x58
	mov	r1, #4
	str	r6, [sp]
	bl	_Func_801ea08
	ldrh	r2, [r5]
	ldrh	r3, [r7]
	cmp	r2, r3
	bls	.Lad00c
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lad018
.Lad00c:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r6
	mov	r3, #1
	bl	Func_80ae9f0
.Lad018:
	ldr	r7, [sp, #0x34]
	ldr	r6, [sp, #0x30]
	add	r7, #0x42
	add	r6, #0x42
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	beq	.Lad062
	ldr	r1, [sp, #0x3c]
	mov	r0, r2
	lsl	r2, r1, #3
	mov	r5, r2
	mov	r3, r11
	add	r3, #0x58
	mov	r2, r9
	add	r5, #0x60
	mov	r1, #2
	str	r5, [sp]
	bl	_Func_801ea08
	ldrb	r2, [r7]
	ldrb	r3, [r6]
	cmp	r2, r3
	bls	.Lad056
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #0
	bl	Func_80ae9f0
	b	.Lad062
.Lad056:
	mov	r0, r9
	mov	r1, r8
	mov	r2, r5
	mov	r3, #1
	bl	Func_80ae9f0
.Lad062:
	ldr	r2, [sp, #0xd8]
	cmp	r2, #0
	bgt	.Lad06a
	b	.Lad212
.Lad06a:
	ldr	r3, [sp, #0xd4]
	mov	r2, #3
	eor	r2, r3
	neg	r3, r2
	orr	r3, r2
	lsr	r3, #31
	mov	r10, r3
	mov	r0, r10
	mov	r3, #6
	sub	r0, r3, r0
	ldr	r3, [sp, #0xd8]
	mov	r10, r0
	sub	r3, #1
	mov	r1, r10
	mul	r1, r3
	ldr	r0, [sp, #0x30]
	mov	r8, r1
	ldr	r1, [sp, #0x34]
	add	r2, sp, #0x44
	add	r5, sp, #0x4c
	add	r1, #0x58
	add	r3, sp, #0x48
	str	r2, [sp]
	add	r0, #0x58
	mov	r2, r5
	bl	Func_80aae14
	lsl	r0, #24
	str	r0, [sp, #0x10]
	asr	r3, r0, #24
	ldr	r0, [sp, #0x40]
	lsl	r0, #3
	mov	r2, #0
	mov	r1, #0
	mov	r11, r0
	cmp	r8, r3
	bge	.Lad182
	cmp	r1, r10
	bge	.Lad17c
	mov	r3, #0
	str	r0, [sp, #0x14]
	mov	r0, r8
	str	r3, [sp, #0xc]
	lsl	r3, r0, #1
	add	r7, r3, r5
.Lad0c4:
	ldr	r1, [sp, #0x3c]
	lsl	r6, r2, #24
	asr	r2, r6, #23
	add	r2, r1, r2
	ldrh	r3, [r7]
	ldr	r0, =0x3fff
	lsl	r2, #3
	and	r3, r0
	add	r2, #4
	mov	r0, r9
	mov	r1, r11
	bl	Func_80ae958
	ldrh	r2, [r7]
	ldr	r3, .Lad100	@ 0x8000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad0f0
	mov	r0, #4
	bl	_SetTextColor
	b	.Lad11a
.Lad0f0:
	ldr	r3, .Lad104	@ 0x4000
	and	r3, r2
	cmp	r3, #0
	beq	.Lad114
	mov	r0, #2
	bl	_SetTextColor
	b	.Lad11a

	.align	2, 0
.Lad100:
	.word	0x8000
.Lad104:
	.word	0x4000
	.pool

.Lad114:
	mov	r0, #0xf
	bl	_SetTextColor
.Lad11a:
	ldr	r1, [sp, #0x3c]
	asr	r6, #24
	ldrh	r3, [r7]
	lsl	r5, r6, #1
	ldr	r0, =0x3fff
	add	r5, r1, r5
	ldr	r2, [sp, #0x14]
	and	r0, r3
	lsl	r5, #3
	ldr	r3, =0x333
	add	r5, #8
	add	r0, r3
	mov	r1, r9
	add	r2, #0x10
	mov	r3, r5
	bl	_Func_801e7c0
	ldrh	r0, [r7]
	bl	_GetMoveInfo
	ldr	r3, [sp, #0x14]
	ldrb	r0, [r0, #9]
	mov	r1, #2
	mov	r2, r9
	add	r3, #0x58
	str	r5, [sp]
	bl	_Func_801e9d4
	mov	r1, #0x80
	ldr	r0, [sp, #0xc]
	lsl	r1, #17
	add	r3, r0, r1
	ldr	r0, [sp, #0x10]
	add	r6, #1
	lsr	r1, r3, #24
	mov	r3, #1
	lsl	r6, #24
	add	r8, r3
	asr	r3, r0, #24
	lsr	r2, r6, #24
	add	r7, #2
	cmp	r8, r3
	bge	.Lad182
	lsl	r3, r1, #24
	str	r3, [sp, #0xc]
	asr	r3, #24
	cmp	r3, r10
	blt	.Lad0c4
	b	.Lad182
.Lad17c:
	ldr	r1, [sp, #0x40]
	lsl	r1, #3
	mov	r11, r1
.Lad182:
	mov	r0, #0xf
	bl	_SetTextColor
	ldr	r3, [sp, #0x3c]
	mov	r2, r11
	lsl	r6, r3, #3
	ldr	r0, =0xaed
	add	r2, #0x58
	mov	r1, r9
	mov	r3, r6
	bl	_Func_801e7c0
	ldr	r0, [sp, #0xd4]
	cmp	r0, #3
	beq	.Lad206
	ldr	r3, [sp, #0x48]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lad1be
	mov	r0, #4
	bl	_SetTextColor
	mov	r3, r6
	ldr	r0, =0xba2
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	mov	r5, #1
.Lad1be:
	ldr	r3, [sp, #0x44]
	cmp	r3, #0
	beq	.Lad1de
	mov	r0, #2
	bl	_SetTextColor
	ldr	r1, [sp, #0x3c]
	add	r3, r1, r5
	lsl	r3, #3
	ldr	r0, =0xba3
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
	add	r5, #1
.Lad1de:
	cmp	r5, #0
	bne	.Lad1f0
	mov	r3, r6
	ldr	r0, =0xba8
	add	r3, #0x58
	mov	r1, r9
	mov	r2, r11
	bl	_Func_801e7c0
.Lad1f0:
	mov	r0, #0xf
	bl	_SetTextColor
	mov	r3, #0xb
	str	r3, [sp]
	mov	r0, r9
	mov	r1, #0
	mov	r2, #0xb
	mov	r3, #0xd
	bl	_Func_801e41c
.Lad206:
	ldr	r3, =iwram_3001e8c
	ldr	r2, =0xea3
	ldr	r3, [r3]
	add	r3, r2
	mov	r2, #1
	strb	r2, [r3]
.Lad212:
	ldr	r3, [sp, #0xd8]
	cmp	r3, #0
	bne	.Lad228
	str	r3, [sp]
	str	r3, [sp, #4]
	ldr	r0, [sp, #0x38]
	mov	r1, #0
	ldr	r2, [sp, #0xdc]
	mov	r3, r9
	bl	_Func_801ec6c
.Lad228:
	mov	r2, #0xa6
	ldr	r1, [sp, #0x30]
	ldr	r3, =Func_8001af8
	ldr	r0, [sp, #0x34]
	lsl	r2, #1
	bl	_call_via_r3
	ldr	r0, [sp, #0x30]
	bl	free
	mov	r0, #1
	add	sp, #0xac
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80acab8

	.section .rodata.rom_aa538_c_c_c
.Laf28c:
	.incrom 0xaf28c, 0xaf290
.Laf290:
	.incrom 0xaf290, 0xaf294
