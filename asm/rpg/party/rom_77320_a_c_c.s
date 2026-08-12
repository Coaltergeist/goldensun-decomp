	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8077f70  @ 0x08077f70
	push	{r5, r6, lr}
	mov	r0, #0x20
	bl	ClearFlag
	mov	r0, #0x21
	bl	ClearFlag
	ldr	r0, =0x901
	bl	SetFlag
	mov	r0, #5
	bl	Func_8079ae8
	mov	r0, #5
	bl	CalcStats
	ldr	r0, =0x11b
	bl	ClearFlag
	mov	r0, #0x8d
	lsl	r0, #1
	bl	SetFlag
	mov	r6, #0
.L77fa0:
	mov	r0, r6
	bl	GetUnit
	mov	r5, r0
	ldrh	r1, [r5, #0x34]
	ldrh	r3, [r5, #0x36]
	strh	r1, [r5, #0x38]
	strh	r3, [r5, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L77fca
	mov	r3, #0
	cmp	r0, #0
	blt	.L77fca
	mov	r3, r0
.L77fca:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L77fde
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L77fde
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L77fde:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L77ffc
	mov	r3, #0
	cmp	r0, #0
	blt	.L77ffc
	mov	r3, r0
.L77ffc:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L78010
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L78010
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L78010:
	ldr	r0, .L78018	@ 0x1ff
	mov	r1, #0
	mov	r2, #0xd8
	b	.L78028

	.align	2, 0
.L78018:
	.word	0x1ff
	.pool

.L78024:
	add	r2, #2
	add	r1, #1
.L78028:
	cmp	r1, #0xe
	bgt	.L78044
	ldrh	r3, [r2, r5]
	and	r3, r0
	cmp	r3, #0xf
	bne	.L78024
	ldr	r3, =0x10
	mov	r0, r6
	strh	r3, [r2, r5]
	bl	EquipItem
	b	.L78044

	.pool_aligned

.L78044:
	mov	r0, r6
	bl	Func_8079ae8
	mov	r0, r6
	add	r6, #1
	bl	CalcStats
	cmp	r6, #1
	ble	.L77fa0
	mov	r1, #0x8c
	mov	r0, #0
	bl	GiveInnateMove
	mov	r1, #0x95
	mov	r0, #0
	bl	GiveInnateMove
	mov	r1, #0x8c
	mov	r0, #1
	bl	GiveInnateMove
	mov	r1, #0x8d
	mov	r0, #2
	bl	GiveInnateMove
	ldr	r2, =gState
	mov	r1, #0x96
	ldr	r3, [r2, #0x10]
	lsl	r1, #1
	add	r3, r1
	str	r3, [r2, #0x10]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_8077f70

.thumb_func_start Func_807808c  @ 0x0807808c
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	bl	GetPartySize
	mov	r6, #0
	mov	r7, r0
	cmp	r6, r7
	bge	.L78132
.L780a0:
	mov	r1, #0xfc
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r6, r1
	ldrb	r0, [r2, r3]
	bl	GetUnit
	mov	r5, r0
	ldrh	r1, [r5, #0x34]
	ldrh	r3, [r5, #0x36]
	strh	r1, [r5, #0x38]
	strh	r3, [r5, #0x3a]
	lsl	r1, #16
	asr	r1, #16
	lsl	r0, r1, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L780d2
	mov	r3, #0
	cmp	r0, #0
	blt	.L780d2
	mov	r3, r0
.L780d2:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L780e6
	mov	r2, #0x38
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	beq	.L780e6
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L780e6:
	mov	r3, #0x3a
	ldrsh	r0, [r5, r3]
	mov	r2, #0x36
	ldrsh	r1, [r5, r2]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L78104
	mov	r3, #0
	cmp	r0, #0
	blt	.L78104
	mov	r3, r0
.L78104:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L78118
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L78118
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L78118:
	mov	r2, r8
	cmp	r2, #1
	bne	.L7812c
	ldr	r1, =0x131
	mov	r2, #0
	add	r3, r5, r1
	add	r1, #0xf
	strb	r2, [r3]
	add	r3, r5, r1
	strb	r2, [r3]
.L7812c:
	add	r6, #1
	cmp	r6, r7
	blt	.L780a0
.L78132:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_807808c

.thumb_func_start Func_8078144  @ 0x08078144
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	bl	GetPartySize
	mov	r7, #0
	mov	r8, r0
	cmp	r7, r8
	bge	.L7820c
.L78156:
	mov	r1, #0xfc
	ldr	r2, =gState
	lsl	r1, #1
	add	r3, r7, r1
	ldrb	r6, [r2, r3]
	ldr	r3, =.L7a828
	ldrb	r3, [r3, r6]
	mov	r5, #0
	cmp	r3, #0
	bne	.L7817c
	mov	r0, #0x88
	lsl	r0, #1
	bl	GetFlag
	cmp	r0, #0
	bne	.L78190
	mov	r0, #0x89
	lsl	r0, #1
	b	.L78188
.L7817c:
	ldr	r0, =0x111
	bl	GetFlag
	cmp	r0, #0
	bne	.L78190
	ldr	r0, =0x113
.L78188:
	bl	GetFlag
	cmp	r0, #0
	beq	.L78192
.L78190:
	mov	r5, #1
.L78192:
	cmp	r5, #0
	beq	.L78206
	mov	r0, r6
	bl	GetUnit
	mov	r5, r0
	ldrh	r3, [r5, #0x36]
	strh	r3, [r5, #0x3a]
	mov	r2, #0x38
	ldrsh	r0, [r5, r2]
	mov	r3, #0x34
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L781c0
	mov	r3, #0
	cmp	r0, #0
	blt	.L781c0
	mov	r3, r0
.L781c0:
	strh	r3, [r5, #0x14]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L781d4
	mov	r1, #0x38
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L781d4
	mov	r3, #1
	strh	r3, [r5, #0x14]
.L781d4:
	mov	r2, #0x3a
	ldrsh	r0, [r5, r2]
	mov	r3, #0x36
	ldrsh	r1, [r5, r3]
	lsl	r0, #14
	bl	__divsi3
	mov	r3, #0x80
	lsl	r3, #7
	cmp	r0, r3
	bgt	.L781f2
	mov	r3, #0
	cmp	r0, #0
	blt	.L781f2
	mov	r3, r0
.L781f2:
	strh	r3, [r5, #0x16]
	lsl	r3, #16
	cmp	r3, #0
	bne	.L78206
	mov	r1, #0x3a
	ldrsh	r3, [r5, r1]
	cmp	r3, #0
	beq	.L78206
	mov	r3, #1
	strh	r3, [r5, #0x16]
.L78206:
	add	r7, #1
	cmp	r7, r8
	blt	.L78156
.L7820c:
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8078144

