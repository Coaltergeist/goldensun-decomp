	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ccc38
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r6, =iwram_3001eec
	mov	r3, r6
	ldmia	r3!, {r7}
	ldr	r2, =0x7828
	ldr	r3, [r3]
	add	r5, r7, r2
	str	r0, [r5]
	mov	r0, #0
	mov	r9, r3
	sub	sp, #0x20
	mov	r10, r1
	bl	Func_80cd594
	ldr	r3, .Lccc7c	@ 0x100
	ldr	r2, =REG_BG2PA
	strh	r3, [r2]
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.Lccc8c
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #3
	b	.Lccc98

	.align	2, 0
.Lccc7c:
	.word	0x100
	.pool

.Lccc8c:
	mov	r3, #1
	str	r3, [sp]
	mov	r0, #0x2e
	mov	r1, #7
	mov	r2, #7
	mov	r3, #7
.Lccc98:
	bl	Func_80ed408
	ldr	r6, [r6, #0x1c]
	str	r6, [sp, #0xc]
	ldr	r0, =_FILE_71
	mov	r1, r7
	mov	r2, #1
	mov	r3, #1
	bl	Func_80e0524
	mov	r3, #0
	ldr	r0, =_FILE_72
	ldr	r1, =ewram_2010000
	mov	r2, #1
	bl	Func_80e0524
	mov	r3, r10
	cmp	r3, #0
	bne	.Lcccd2
	ldr	r0, =_FILE_a0
	bl	GetFile
	mov	r1, r0
	mov	r0, #0xa0
	ldr	r3, =Func_8001af8
	lsl	r0, #19
	mov	r2, #0x80
	bl	_call_via_r3
.Lcccd2:
	mov	r4, #0xef
	lsl	r4, #7
	ldr	r0, =0x7784
	add	r2, r7, r4
	mov	r3, #2
	str	r3, [r2]
	mov	r1, #0x90
	add	r2, r7, r0
	mov	r3, #0x4b
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_80cd260
	bl	StartTask
	ldr	r2, =0x7828
	add	r5, r7, r2
	ldr	r3, [r5]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	bl	_Func_80b7dd0
	ldr	r3, [r5]
	ldr	r0, [r0]
	add	r6, sp, #0x14
	mov	r8, r0
	mov	r1, r6
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	Func_80e396c
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.Lccd1c
	ldr	r2, [r6]
	mov	r3, #0x10
	b	.Lccd20
.Lccd1c:
	ldr	r2, [r6]
	mov	r3, #0x70
.Lccd20:
	ldr	r1, =REG_BG2X
	sub	r3, r2
	lsl	r3, #8
	str	r3, [r1]
	mov	r3, #0x4a
	mov	r4, r10
	str	r3, [sp, #8]
	cmp	r4, #1
	beq	.Lccd36
	mov	r0, #0x30
	str	r0, [sp, #8]
.Lccd36:
	ldr	r2, [sp, #8]
	mov	r5, #0
	cmp	r2, #0
	bne	.Lccd40
	b	.Lcce54
.Lccd40:
	ldr	r3, =0x7828
	ldr	r4, =.Lee070
	add	r6, r7, r3
	mov	r11, r4
.Lccd48:
	mov	r3, r5
	cmp	r5, #0
	bge	.Lccd50
	add	r3, r5, #3
.Lccd50:
	asr	r4, r3, #2
	cmp	r4, #5
	bgt	.Lccdc2
	cmp	r4, #3
	bgt	.Lccd8e
	lsl	r3, r4, #1
	mov	r0, r11
	ldrh	r1, [r0, r3]
	ldr	r3, [r6]
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r0, =.Lee07c
	lsl	r3, #1
	add	r3, r4, r3
	ldrb	r2, [r0, r3]
	ldr	r0, =.Lee064
	ldr	r3, =.Lee088
	ldrb	r0, [r0, r4]
	ldrsb	r3, [r3, r4]
	str	r0, [sp]
	ldr	r0, =.Lee06a
	ldrb	r0, [r0, r4]
	add	r1, r7, r1
	str	r0, [sp, #4]
	add	r3, #0x20
	mov	r0, r9
	ldr	r4, [sp, #0xc]
	bl	_call_via_r4
	b	.Lccdc2
.Lccd8e:
	lsl	r3, r4, #1
	mov	r0, r11
	ldrh	r1, [r0, r3]
	ldr	r2, =ewram_2010000
	ldr	r3, [r6]
	add	r1, r2
	ldr	r2, [r3, #4]
	lsl	r3, r2, #1
	add	r3, r2
	ldr	r0, =.Lee07c
	lsl	r3, #1
	add	r3, r4, r3
	ldrb	r2, [r0, r3]
	ldr	r0, =.Lee064
	ldr	r3, =.Lee088
	ldrb	r0, [r0, r4]
	ldrsb	r3, [r3, r4]
	str	r0, [sp]
	ldr	r0, =.Lee06a
	ldrb	r0, [r0, r4]
	add	r3, #0x20
	str	r0, [sp, #4]
	ldr	r4, [sp, #0xc]
	mov	r0, r9
	bl	_call_via_r4
.Lccdc2:
	cmp	r5, #8
	bne	.Lcce02
	mov	r0, r10
	cmp	r0, #0
	bne	.Lccde0
	mov	r0, #0x85
	bl	_Func_80bd7dc
	ldr	r3, [r6]
	mov	r1, #1
	mov	r2, #0x24
	ldrsh	r0, [r3, r2]
	bl	_Func_80b8228
	b	.Lccdfa
.Lccde0:
	mov	r0, #0x86
	bl	_Func_80f9080
	ldr	r3, [r6]
	mov	r4, #0x24
	ldrsh	r0, [r3, r4]
	mov	r3, #4
	str	r3, [sp]
	mov	r1, #7
	mov	r2, #5
	mov	r3, #0
	bl	Func_80d6888
.Lccdfa:
	ldr	r0, =0x77a8
	mov	r3, #8
	add	r2, r7, r0
	str	r3, [r2]
.Lcce02:
	mov	r2, r10
	cmp	r2, #1
	bne	.Lcce30
	cmp	r5, #0xd
	bne	.Lcce1e
	mov	r3, #0xc0
	mov	r4, r8
	lsl	r3, #12
	str	r3, [r4, #0x28]
	ldr	r3, =0x7851
	str	r3, [r4, #0x48]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r4, #0x44]
.Lcce1e:
	cmp	r5, #0x41
	bne	.Lcce30
	ldr	r0, =0x77a8
	mov	r3, #4
	add	r2, r7, r0
	str	r3, [r2]
	mov	r0, #0x86
	bl	_Func_80bd7dc
.Lcce30:
	mov	r0, #8
	mov	r1, #8
	bl	Func_80e155c
	bl	Func_80cd52c
	ldr	r3, =0x7824
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	ldr	r4, [sp, #8]
	add	r5, #1
	cmp	r5, r4
	beq	.Lcce54
	b	.Lccd48
.Lcce54:
	ldr	r0, =Func_80cd260
	bl	StopTask
	mov	r0, #0x2e
	bl	Func_8002dd8
	bl	Func_80cdbc0
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ccc38

.thumb_func_start Func_80ccebc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r1, =iwram_3001ef0
	mov	r8, r1
	mov	r3, r8
	sub	r3, #4
	ldr	r7, [r3]
	ldr	r3, =0x7828
	ldr	r2, [r1]
	add	r5, r7, r3
	str	r0, [r5]
	mov	r0, #2
	sub	sp, #0x20
	mov	r11, r2
	bl	Func_80cd594
	ldr	r1, =REG_BLDALPHA
	ldr	r2, =REG_BG2PA
	ldr	r3, .Lccf24	@ 0x100
	mov	r10, r1
	strh	r3, [r2]
	ldr	r3, .Lccf28	@ 0x1000
	mov	r2, r10
	strh	r3, [r2]
	ldr	r3, [r5]
	add	r6, sp, #0x14
	mov	r1, #0x24
	ldrsh	r0, [r3, r1]
	mov	r1, r6
	bl	Func_80e396c
	ldr	r2, [r5]
	ldr	r3, [r2, #0x14]
	lsl	r3, #1
	add	r5, sp, #8
	add	r3, #0x22
	ldrsh	r0, [r2, r3]
	mov	r1, r5
	bl	Func_80e396c
	ldr	r1, [r6]
	ldr	r3, [r5]
	sub	r3, r1
	lsr	r2, r3, #31
	add	r3, r2
	asr	r3, #1
	b	.Lccf3c

	.align	2, 0
.Lccf24:
	.word	0x100
.Lccf28:
	.word	0x1000
	.pool

.Lccf3c:
	add	r1, r3
	mov	r3, #0x40
	ldr	r2, =REG_BG2X
	sub	r3, r1
	lsl	r3, #8
	str	r1, [r6]
	ldr	r0, =_FILE_59
	str	r3, [r2]
	mov	r1, r7
	mov	r2, #1
	mov	r3, #1
	bl	Func_80e0524
	mov	r3, #0xef
	lsl	r3, #7
	ldr	r1, =0x7784
	add	r2, r7, r3
	mov	r3, #1
	str	r3, [r2]
	add	r2, r7, r1
	mov	r3, #0
	mov	r1, #0x90
	str	r3, [r2]
	lsl	r1, #3
	ldr	r0, =Func_80cd260
	bl	StartTask
	mov	r0, #0x8f
	bl	_Func_80f9080
	mov	r2, #0
	mov	r3, #1
	mov	r1, #0x20
	mov	r9, r2
	mov	r10, r3
	mov	r8, r1
.Lccf84:
	mov	r2, r9
	cmp	r2, #8
	bgt	.Lccf94
	lsl	r3, r2, #1
	ldr	r2, .Lccfac	@ 0x1000
	ldr	r1, =REG_BLDALPHA
	orr	r3, r2
	strh	r3, [r1]
.Lccf94:
	mov	r2, r9
	cmp	r2, #0x35
	ble	.Lccfc8
	lsl	r3, r2, #1
	ldr	r2, .Lccfb0	@ 0x7c
	sub	r2, r3
	ldr	r3, .Lccfac	@ 0x1000
	orr	r2, r3
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	b	.Lccfc8

	.align	2, 0
.Lccfac:
	.word	0x1000
.Lccfb0:
	.word	0x7c
	.pool

.Lccfc8:
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #3
	mov	r0, #0x2e
	bl	Func_80ed408
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x21
	mov	r3, #0x29
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_8002dd8
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #7
	mov	r0, #0x2e
	bl	Func_80ed408
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x40
	mov	r3, #0x29
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_8002dd8
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xb
	mov	r0, #0x2e
	bl	Func_80ed408
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x21
	mov	r3, #0x48
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_8002dd8
	mov	r1, r10
	str	r1, [sp]
	mov	r2, #7
	mov	r1, #7
	mov	r3, #0xf
	mov	r0, #0x2e
	bl	Func_80ed408
	mov	r2, r8
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r3, =iwram_3001f08
	mov	r1, r7
	ldr	r4, [r3]
	mov	r2, #0x40
	mov	r3, #0x48
	mov	r0, r11
	bl	_call_via_r4
	mov	r0, #0x2e
	bl	Func_8002dd8
	mov	r1, r9
	cmp	r1, #0x20
	bne	.Lcd084
	mov	r0, #0x8f
	bl	_Func_80bd7dc
.Lcd084:
	ldr	r2, =0x7828
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x14]
	mov	r5, #0
	cmp	r3, #0
	beq	.Lcd0ba
	mov	r6, #0x24
.Lcd092:
	mov	r3, r9
	cmp	r3, #0xa
	bne	.Lcd0ac
	ldr	r3, [r7, r2]
	mov	r2, #1
	ldrsh	r0, [r3, r6]
	mov	r3, #8
	str	r3, [sp]
	mov	r1, #7
	neg	r2, r2
	mov	r3, r5
	bl	Func_80d6888
.Lcd0ac:
	ldr	r2, =0x7828
	ldr	r3, [r7, r2]
	ldr	r3, [r3, #0x14]
	add	r5, #1
	add	r6, #2
	cmp	r5, r3
	bne	.Lcd092
.Lcd0ba:
	bl	Func_80cd52c
	ldr	r2, =0x7824
	mov	r1, r10
	add	r3, r7, r2
	str	r1, [r3]
	mov	r0, #1
	bl	Func_80030f8
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #0x3f
	beq	.Lcd0d8
	b	.Lccf84
.Lcd0d8:
	ldr	r0, =Func_80cd260
	bl	StopTask
	bl	Func_80cdbc0
	add	sp, #0x20
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ccebc

.thumb_func_start Func_80cd104
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x88
	str	r1, [sp, #4]
	ldr	r3, =iwram_3001ef0
	ldr	r1, [r3]
	sub	r3, #4
	ldr	r3, [r3]
	add	r2, sp, #8
	str	r3, [sp]
	mov	r11, r2
	add	r3, sp, #0x88
	mov	r7, r0
	mov	r9, r1
	mov	r6, #0x3f
	mov	r5, r11
	mov	r8, r3
.Lcd130:
	bl	Random
	and	r0, r6
	strb	r0, [r5]
	add	r5, #1
	cmp	r5, r8
	bne	.Lcd130
	cmp	r7, #1
	bne	.Lcd1c0
	mov	r1, #0
	mov	r2, #1
	mov	r8, r1
	mov	r10, r2
	mov	r5, #0
.Lcd14c:
	add	r8, r10
	mov	r3, #1
	add	r10, r3
	cmp	r5, r8
	beq	.Lcd1a6
	ldr	r1, [sp, #4]
	mov	r12, r11
	mov	r4, #7
	sub	r7, r3, r1
.Lcd15e:
	mov	r6, #0
	mov	r0, r12
.Lcd162:
	ldrb	r3, [r0]
	sub	r1, r5, r3
	add	r0, #1
	cmp	r1, #0
	blt	.Lcd19a
	cmp	r1, #0x7f
	bgt	.Lcd19a
	mov	r2, r6
	cmp	r6, #0
	bge	.Lcd178
	add	r2, r6, #7
.Lcd178:
	asr	r2, #3
	mov	r3, r1
	cmp	r1, #0
	bge	.Lcd182
	add	r3, r1, #7
.Lcd182:
	asr	r3, #3
	lsl	r2, #4
	add	r2, r3
	mov	r3, r6
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r9
	strb	r7, [r3, r2]
.Lcd19a:
	add	r6, #1
	cmp	r6, #0x80
	bne	.Lcd162
	add	r5, #1
	cmp	r5, r8
	bne	.Lcd15e
.Lcd1a6:
	ldr	r1, [sp]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, #0x80
	lsl	r1, #1
	cmp	r8, r1
	ble	.Lcd14c
	b	.Lcd244
.Lcd1c0:
	mov	r2, #0
	mov	r3, #1
	mov	r8, r2
	mov	r10, r3
	mov	r6, #0
.Lcd1ca:
	mov	r1, r10
	lsr	r3, r1, #31
	add	r3, r10
	asr	r3, #1
	mov	r2, #4
	add	r8, r3
	add	r10, r2
	cmp	r6, r8
	beq	.Lcd22e
	ldr	r1, [sp, #4]
	mov	r3, #1
	mov	r12, r11
	mov	r4, #7
	sub	r7, r3, r1
.Lcd1e6:
	mov	r5, #0
	mov	r0, r12
.Lcd1ea:
	ldrb	r3, [r0]
	sub	r1, r6, r3
	add	r0, #1
	cmp	r1, #0
	blt	.Lcd222
	cmp	r1, #0x7f
	bgt	.Lcd222
	mov	r2, r1
	cmp	r1, #0
	bge	.Lcd200
	add	r2, r1, #7
.Lcd200:
	asr	r2, #3
	mov	r3, r5
	cmp	r5, #0
	bge	.Lcd20a
	add	r3, r5, #7
.Lcd20a:
	asr	r3, #3
	lsl	r2, #4
	add	r2, r3
	and	r1, r4
	lsl	r2, #3
	add	r2, r1
	mov	r3, r5
	and	r3, r4
	lsl	r2, #3
	add	r2, r3
	mov	r3, r9
	strb	r7, [r3, r2]
.Lcd222:
	add	r5, #1
	cmp	r5, #0x80
	bne	.Lcd1ea
	add	r6, #1
	cmp	r6, r8
	bne	.Lcd1e6
.Lcd22e:
	ldr	r1, [sp]
	ldr	r3, =0x7824
	add	r2, r1, r3
	mov	r3, #1
	str	r3, [r2]
	mov	r0, #1
	bl	Func_80030f8
	mov	r1, r8
	cmp	r1, #0xbf
	ble	.Lcd1ca
.Lcd244:
	add	sp, #0x88
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80cd104

	.section .rodata
	.global .Lee058
	.global .Lee05c
	.global .Lee060

.Lee058:
	.incrom 0xee058, 0xee05c
.Lee05c:
	.incrom 0xee05c, 0xee060
.Lee060:
	.incrom 0xee060, 0xee064
.Lee064:
	.incrom 0xee064, 0xee06a
.Lee06a:
	.incrom 0xee06a, 0xee070
.Lee070:
	.incrom 0xee070, 0xee07c
.Lee07c:
	.incrom 0xee07c, 0xee088
.Lee088:
	.incrom 0xee088, 0xee090
