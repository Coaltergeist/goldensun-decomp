	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80bbb0c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x64
	str	r0, [sp, #0x50]
	mov	r0, #0
	str	r0, [sp, #0x3c]
	ldr	r3, =iwram_3001e74
	mov	r5, #0xa6
	ldr	r3, [r3]
	lsl	r5, #1
	str	r0, [sp, #0x34]
	str	r0, [sp, #0x2c]
	str	r0, [sp, #0x28]
	str	r0, [sp, #0x1c]
	str	r0, [sp, #0x14]
	mov	r0, r5
	str	r3, [sp, #0x38]
	mov	r6, r1
	bl	Func_8004938
	str	r0, [sp, #0x10]
	ldr	r1, [sp, #0x50]
	ldrb	r1, [r1]
	ldr	r2, [sp, #0x50]
	str	r1, [sp, #0x44]
	ldr	r4, [sp, #0x50]
	add	r2, #2
	ldrb	r3, [r2, r6]
	ldr	r4, [r4, #0x4c]
	mov	r10, r3
	str	r4, [sp, #0x40]
	mov	r3, r6
	add	r3, #0x1c
	ldrsb	r3, [r2, r3]
	ldr	r0, [sp, #0x50]
	ldr	r1, [sp, #0x50]
	ldr	r0, [r0, #0x50]
	str	r3, [sp, #0x30]
	mov	r3, r6
	add	r3, #0x2c
	ldrsb	r3, [r1, r3]
	mov	r9, r0
	mov	r0, r4
	str	r3, [sp, #0x20]
	mov	r8, r2
	bl	_Func_8078b9c
	str	r0, [sp, #0x4c]
	ldr	r0, [sp, #0x44]
	bl	_Func_8077394
	str	r0, [sp, #0x48]
	mov	r0, r10
	bl	_Func_8077394
	mov	r7, r0
	ldr	r3, =Func_8001af8
	mov	r2, r5
	ldr	r0, [sp, #0x10]
	mov	r1, r7
	bl	_call_via_r3
	ldr	r2, [sp, #0x4c]
	ldrb	r3, [r2, #8]
	cmp	r3, #0xff
	beq	.Lbbbb0
	mov	r3, r6
	ldr	r4, [sp, #0x50]
	add	r3, #0x10
	ldrsb	r3, [r4, r3]
	mov	r11, r3
	cmp	r3, #0
	bge	.Lbbbb4
	mov	r5, r11
	neg	r5, r5
	mov	r11, r5
	b	.Lbbbb4
.Lbbbb0:
	mov	r0, #0
	mov	r11, r0
.Lbbbb4:
	mov	r1, r9
	cmp	r1, #4
	beq	.Lbbc12
	lsl	r3, r1, #2
	mov	r4, r7
	add	r3, r7
	add	r4, #0x24
	mov	r2, #0x26
	ldrsh	r0, [r3, r2]
	mov	r5, #2
	ldrsh	r3, [r4, r5]
	mov	r1, #0
	cmp	r0, r3
	blt	.Lbbbe2
	mov	r2, r4
.Lbbbd2:
	add	r1, #1
	add	r2, #4
	cmp	r1, #3
	bgt	.Lbbbe2
	mov	r5, #2
	ldrsh	r3, [r2, r5]
	cmp	r0, r3
	bge	.Lbbbd2
.Lbbbe2:
	cmp	r1, #4
	bne	.Lbbbec
	mov	r1, #1
	neg	r1, r1
	str	r1, [sp, #0x14]
.Lbbbec:
	mov	r2, #2
	ldrsh	r3, [r4, r2]
	mov	r1, #0
	cmp	r0, r3
	bgt	.Lbbc0a
	mov	r2, r7
	add	r2, #0x24
.Lbbbfa:
	add	r1, #1
	add	r2, #4
	cmp	r1, #3
	bgt	.Lbbc0a
	mov	r4, #2
	ldrsh	r3, [r2, r4]
	cmp	r0, r3
	ble	.Lbbbfa
.Lbbc0a:
	cmp	r1, #4
	bne	.Lbbc12
	mov	r5, #1
	str	r5, [sp, #0x14]
.Lbbc12:
	ldr	r0, [sp, #0x50]
	ldr	r2, [r0, #0x50]
	cmp	r2, #3
	bhi	.Lbbc32
	add	r0, #0x48
	str	r0, [sp, #4]
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	cmp	r3, #2
	beq	.Lbbc38
	lsl	r3, r2, #2
	ldr	r4, [sp, #0x48]
	add	r3, #0x48
	ldrsh	r4, [r4, r3]
	str	r4, [sp, #0xc]
	b	.Lbbc3c
.Lbbc32:
	ldr	r0, [sp, #0x50]
	add	r0, #0x48
	str	r0, [sp, #4]
.Lbbc38:
	mov	r1, #0x64
	str	r1, [sp, #0xc]
.Lbbc3c:
	ldr	r5, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r5, r4]
	cmp	r3, #5
	bne	.Lbbc78
	cmp	r2, #3
	bhi	.Lbbc78
	ldr	r0, [sp, #0x14]
	cmp	r0, #0
	ble	.Lbbc78
	lsl	r3, r2, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r1, #2
	ldrsh	r5, [r3, r1]
	ldr	r2, [sp, #0xc]
	ldr	r3, =0x28f
	sub	r5, r2, r5
	add	r5, #0x1e
	mul	r5, r3
	bl	_Func_8079bc4
	ldr	r3, =0xffff
	and	r0, r3
	cmp	r5, r0
	ble	.Lbbc78
	mov	r0, #0xd
	mov	r1, #5
	bl	Func_80bbabc
.Lbbc78:
	ldr	r4, [sp, #0x4c]
	ldrb	r3, [r4, #1]
	mov	r5, #0xf
	and	r5, r3
	str	r5, [sp, #0x18]
	mov	r3, r6
	add	r3, #0x38
	mov	r6, r8
	mov	r1, #1
	ldrsb	r0, [r6, r3]
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbbca6
	ldr	r2, =.Lc2ab8
	ldrb	r3, [r4, #3]
	mov	r4, r11
	ldrb	r2, [r2, r4]
	ldr	r0, [sp, #0x44]
	str	r2, [sp]
	mov	r1, r10
	mov	r2, r9
	bl	_Func_8079f10
.Lbbca6:
	str	r0, [sp, #0x24]
	ldr	r5, [sp, #0x4c]
	ldrb	r3, [r5, #3]
	mov	r6, #0x80
	add	r3, #0xce
	lsl	r3, #24
	lsl	r6, #17
	cmp	r3, r6
	bls	.Lbbcba
	b	.Lbbdda
.Lbbcba:
	ldr	r0, [sp, #0x48]
	mov	r1, #0x94
	lsl	r1, #1
	add	r3, r0, r1
	ldrb	r5, [r3]
	bl	Func_80b7514
	ldr	r2, [sp, #0x4c]
	ldrb	r3, [r2, #3]
	mov	r8, r0
	cmp	r3, #0x33
	bne	.Lbbcdc
	ldr	r3, [sp, #0x38]
	ldr	r0, [r3]
	bl	Func_80c1fa8
	mov	r5, r0
.Lbbcdc:
	ldr	r4, [sp, #0x24]
	cmp	r4, #0
	beq	.Lbbdc0
	mov	r0, r5
	bl	Func_80b6cdc
	cmp	r0, #0
	beq	.Lbbdc0
	mov	r6, r8
	cmp	r6, #0
	blt	.Lbbdc0
	mov	r0, r5
	mov	r1, #1
	bl	Func_80c1df4
	mov	r3, #0x80
	mov	r6, r0
	lsl	r3, #8
	and	r3, r6
	cmp	r3, #0
	beq	.Lbbd0c
	mov	r0, r5
	bl	Func_80c1f50
.Lbbd0c:
	ldr	r2, =0x7fff
	mov	r1, r5
	and	r2, r6
	mov	r0, r8
	bl	_Func_8079460
	ldr	r1, [sp, #0x38]
	mov	r2, #0x64
	add	r1, #2
	ldrsh	r3, [r1, r2]
	mov	r5, #0
	mov	r14, r5
	mov	r12, r1
	mov	r0, #0x64
	mov	r4, #0
	cmp	r3, #0xfe
	bne	.Lbbd40
	mov	r3, r8
	strh	r3, [r1, r2]
	b	.Lbbd5e
.Lbbd34:
	mov	r3, r14
	mov	r4, r8
	add	r3, #0x66
	strh	r4, [r1, r0]
	strh	r2, [r1, r3]
	b	.Lbbd5e
.Lbbd40:
	mov	r6, r12
	ldrsh	r2, [r0, r6]
	cmp	r2, #0xff
	beq	.Lbbd34
	add	r5, #1
	add	r0, #2
	add	r4, #2
	cmp	r5, #5
	bgt	.Lbbd5e
	ldrsh	r3, [r0, r1]
	mov	r14, r4
	cmp	r3, #0xfe
	bne	.Lbbd40
	mov	r2, r8
	strh	r2, [r0, r1]
.Lbbd5e:
	bl	Func_80b7548
	mov	r0, r8
	bl	Func_80b7dd0
	ldr	r2, [r0, #0xc]
	cmp	r2, #0
	bge	.Lbbd72
	ldr	r3, =0xffff
	add	r2, r3
.Lbbd72:
	ldr	r3, [r0, #0x10]
	asr	r2, #16
	cmp	r3, #0
	bge	.Lbbd7e
	ldr	r4, =0xffff
	add	r3, r4
.Lbbd7e:
	asr	r3, #16
	mov	r1, r8
	bl	Func_80b6f44
	bl	Func_80b6c90
	add	r5, sp, #0x54
	mov	r0, r5
	bl	Func_80b6ae0
	cmp	r0, #0
	ble	.Lbbda8
	mov	r6, r5
	mov	r5, r0
.Lbbd9a:
	ldrh	r0, [r6]
	sub	r5, #1
	add	r6, #2
	bl	Func_80b8000
	cmp	r5, #0
	bne	.Lbbd9a
.Lbbda8:
	mov	r0, #0
	mov	r1, r8
	bl	Func_80bbabc
	ldr	r6, =0x1f7
	ldr	r5, [sp, #0x40]
	cmp	r5, r6
	beq	.Lbbdbc
	ldr	r1, =0x8f5
	b	.Lbbdca
.Lbbdbc:
	ldr	r1, =0x8f3
	b	.Lbbdca
.Lbbdc0:
	ldr	r0, [sp, #0x40]
	ldr	r1, =0x1f7
	cmp	r0, r1
	bne	.Lbbdd2
	ldr	r1, =0x8f4
.Lbbdca:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbbdda
.Lbbdd2:
	ldr	r1, =0x8f6
	mov	r0, #4
	bl	Func_80bbabc
.Lbbdda:
	ldr	r2, [sp, #0x24]
	cmp	r2, #0
	beq	.Lbbe9a
	ldr	r3, [sp, #0x4c]
	ldrb	r2, [r3, #3]
	mov	r3, r2
	cmp	r3, #0x35
	bne	.Lbbe1e
	mov	r4, #0
	str	r4, [sp, #0x24]
	mov	r3, #0xbb
	ldr	r5, [sp, #0x38]
	lsl	r3, #2
	ldrsh	r3, [r5, r3]
	mov	r2, #0
	cmp	r3, r10
	bne	.Lbbe02
	mov	r0, #1
	str	r0, [sp, #0x24]
	b	.Lbbe9a
.Lbbe02:
	add	r2, #1
	cmp	r2, #0x13
	bhi	.Lbbe9a
	mov	r1, #0xbb
	lsl	r3, r2, #4
	lsl	r1, #2
	ldr	r4, [sp, #0x38]
	add	r3, r1
	ldrsh	r3, [r4, r3]
	cmp	r3, r10
	bne	.Lbbe02
	mov	r6, #1
	str	r6, [sp, #0x24]
	b	.Lbbe9a
.Lbbe1e:
	mov	r3, r2
	cmp	r3, #0x23
	bne	.Lbbe2a
	mov	r0, #1
	str	r0, [sp, #0x34]
	b	.Lbbe9a
.Lbbe2a:
	cmp	r3, #0x22
	bne	.Lbbe34
	mov	r1, #1
	str	r1, [sp, #0x28]
	b	.Lbbe9a
.Lbbe34:
	cmp	r3, #0x1b
	bne	.Lbbe6c
	mov	r2, #1
	str	r2, [sp, #0x1c]
	b	.Lbbe9a

	.pool_aligned

.Lbbe6c:
	cmp	r3, #0x37
	bne	.Lbbe84
	ldr	r5, [sp, #0x48]
	mov	r4, #0x38
	ldrsh	r3, [r5, r4]
	cmp	r3, #0
	beq	.Lbbe9a
	mov	r0, #0xc
	ldr	r1, [sp, #0x44]
	bl	Func_80bbabc
	b	.Lbbe9a
.Lbbe84:
	cmp	r3, #0x20
	bne	.Lbbe9a
	mov	r6, #0x3a
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	beq	.Lbbe96
	mov	r0, #0xa
	str	r0, [sp, #0x18]
	b	.Lbbe9a
.Lbbe96:
	mov	r1, #0
	str	r1, [sp, #0x24]
.Lbbe9a:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	beq	.Lbbea2
	b	.Lbc666
.Lbbea2:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
	cmp	r3, #0
	bne	.Lbbeb8
	ldr	r5, [sp, #0x4c]
	ldrb	r0, [r5, #3]
	bl	_Func_8079ef8
	cmp	r0, #0
	bne	.Lbbeb8
	b	.Lbc666
.Lbbeb8:
	ldr	r3, [sp, #0x18]
	add	r3, #1
	cmp	r3, #0xc
	bls	.Lbbec2
	b	.Lbc666
.Lbbec2:
	ldr	r2, =.Lbbecc
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbbecc:
	.word	.Lbc20c
	.word	.Lbc666
	.word	.Lbc150
	.word	.Lbc51e
	.word	.Lbbf00
	.word	.Lbbf00
	.word	.Lbc2ba
	.word	.Lbc2ba
	.word	.Lbc666
	.word	.Lbc2ba
	.word	.Lbc666
	.word	.Lbc084
	.word	.Lbc49a
.Lbbf00:
	ldrh	r1, [r7, #0x3e]
	ldr	r2, [sp, #0x34]
	mov	r0, #0x38
	ldrsh	r6, [r7, r0]
	mov	r11, r1
	cmp	r2, #0
	beq	.Lbbf12
	lsr	r1, #1
	mov	r11, r1
.Lbbf12:
	mov	r3, #1
	mov	r8, r3
.Lbbf16:
	mov	r4, r9
	cmp	r4, #4
	beq	.Lbbf2c
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbbf2c:
	mov	r1, r8
	cmp	r1, #0
	bne	.Lbbf36
	mov	r2, #0
	str	r2, [sp, #0x3c]
.Lbbf36:
	ldr	r3, [sp, #0x4c]
	ldr	r4, [sp, #0x18]
	ldrh	r5, [r3, #0xa]
	cmp	r4, #4
	bne	.Lbbf58
	ldr	r1, [sp, #0x48]
	mov	r2, #0
	ldrh	r0, [r1, #0x3c]
	ldr	r3, [sp, #0x3c]
	mov	r1, r11
	bl	_Func_8079bf8
	mov	r1, #0xa
	mul	r0, r5
	bl	Func_af0_from_thumb
	b	.Lbbf66
.Lbbf58:
	ldr	r2, [sp, #0x48]
	mov	r1, r11
	ldrh	r0, [r2, #0x3c]
	ldr	r3, [sp, #0x3c]
	mov	r2, r5
	bl	_Func_8079bf8
.Lbbf66:
	mov	r5, r0
	ldr	r3, [sp, #0x30]
	ldr	r4, [sp, #0x20]
	mul	r5, r3
	cmp	r4, #0
	beq	.Lbbfbc
	cmp	r4, #1
	bne	.Lbbf84
	lsl	r3, r5, #2
	add	r0, r3, r5
	cmp	r0, #0
	bge	.Lbbf80
	add	r0, #3
.Lbbf80:
	asr	r5, r0, #2
	b	.Lbbf8e
.Lbbf84:
	lsl	r3, r5, #1
	add	r3, r5
	lsr	r2, r3, #31
	add	r3, r2
	asr	r5, r3, #1
.Lbbf8e:
	ldrb	r0, [r7, #0xf]
	mov	r1, #5
	bl	Func_b60_from_thumb
	lsl	r0, #24
	lsr	r0, #24
	add	r0, r5, r0
	add	r5, r0, #6
	mov	r0, r8
	cmp	r0, #0
	bne	.Lbbfbc
	mov	r1, #0
	mov	r0, #6
	bl	Func_80bbabc
	mov	r2, r10
	ldr	r1, =0x822
	cmp	r2, #7
	bhi	.Lbbfb6
	add	r1, #1
.Lbbfb6:
	mov	r0, #5
	bl	Func_80bbabc
.Lbbfbc:
	bl	_Func_8079bc4
	mov	r3, #3
	ldr	r4, =0x12b
	and	r3, r0
	add	r5, r3
	add	r3, r7, r4
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbbfea
	cmp	r3, #1
	bne	.Lbbfe0
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbbfea
.Lbbfe0:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbbfea:
	cmp	r5, #0
	bgt	.Lbbff0
	mov	r5, #1
.Lbbff0:
	ldr	r0, [sp, #0x28]
	cmp	r0, #0
	beq	.Lbc004
	sub	r3, r6, #1
	cmp	r5, r3
	bge	.Lbc004
	mov	r5, r3
	cmp	r5, #0
	bgt	.Lbc004
	mov	r5, #1
.Lbc004:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.Lbc020
	ldr	r2, [sp, #4]
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #5
	bne	.Lbc020
	cmp	r6, r5
	bgt	.Lbc020
	sub	r5, r6, #1
.Lbc020:
	mov	r3, #1
	add	r8, r3
	mov	r4, r8
	cmp	r4, #1
	bgt	.Lbc02c
	b	.Lbbf16
.Lbc02c:
	mov	r1, r10
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	sub	r6, r5
	mov	r1, r5
	mov	r0, #1
	mov	r5, r10
	bl	Func_80bbabc
	cmp	r5, #7
	bhi	.Lbc054
	ldr	r3, =0x834
	ldr	r0, [sp, #0x14]
	add	r1, r0, r3
	b	.Lbc05a
.Lbc054:
	ldr	r3, =0x831
	ldr	r2, [sp, #0x14]
	add	r1, r2, r3
.Lbc05a:
	mov	r0, #4
	bl	Func_80bbabc
	cmp	r6, #0
	ble	.Lbc066
	b	.Lbc634
.Lbc066:
	mov	r1, r10
	mov	r0, #9
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r3, r10
	mov	r6, #0
	cmp	r3, #7
	bls	.Lbc080
	b	.Lbc62a
.Lbc080:
	ldr	r1, =0x825
	b	.Lbc62c
.Lbc084:
	ldr	r5, [sp, #0x4c]
	ldrh	r3, [r5, #0xa]
	cmp	r3, #0
	bne	.Lbc08e
	b	.Lbc666
.Lbc08e:
	mov	r1, r9
	mov	r0, #0x3a
	ldrsh	r6, [r7, r0]
	cmp	r1, #4
	beq	.Lbc0a8
	lsl	r3, r1, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	ldr	r4, [sp, #0xc]
	sub	r3, r4, r3
	str	r3, [sp, #0x3c]
.Lbc0a8:
	ldr	r0, [sp, #0x4c]
	ldrh	r5, [r0, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_8079c30
	ldr	r2, =.Lc2ac0
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r4, =0x12b
	add	r3, r7, r4
	ldr	r2, [sp, #0x30]
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r5, r0
	mul	r5, r2
	cmp	r3, #0
	beq	.Lbc0f6
	cmp	r3, #1
	bne	.Lbc0ec
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc0f6
.Lbc0ec:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc0f6:
	ldr	r0, [sp, #0x4c]
	ldrb	r3, [r0, #3]
	cmp	r3, #0x20
	bne	.Lbc104
	cmp	r5, r6
	ble	.Lbc104
	mov	r5, r6
.Lbc104:
	mov	r1, r10
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbc126
	ldr	r1, =0x82a
	b	.Lbc128
.Lbc126:
	ldr	r1, =0x829
.Lbc128:
	mov	r0, #4
	sub	r6, r5
	bl	Func_80bbabc
	cmp	r6, #0
	bgt	.Lbc136
	mov	r6, #0
.Lbc136:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_80bbabc
	mov	r2, #0x3a
	ldrsh	r3, [r7, r2]
	sub	r3, r6
	str	r3, [sp, #0x2c]
	mov	r0, r10
	strh	r6, [r7, #0x3a]
	bl	_Func_807822c
	b	.Lbc666
.Lbc150:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc15a
	b	.Lbc666
.Lbc15a:
	mov	r0, r9
	mov	r5, #0x38
	ldrsh	r6, [r7, r5]
	ldr	r1, [sp, #0xc]
	mov	r5, r3
	cmp	r0, #4
	bne	.Lbc16a
	mov	r1, #0x64
.Lbc16a:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_8079c5c
	ldr	r2, =.Lc2ad8
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	bl	_Func_8079bc4
	mov	r3, #3
	and	r3, r0
	add	r5, r3
	mov	r4, #0x34
	ldrsh	r3, [r7, r4]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbc1aa
	mov	r6, r3
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	sub	r5, r6, r3
.Lbc1aa:
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r0, #0x34
	ldrsh	r3, [r7, r0]
	cmp	r6, r3
	bne	.Lbc1c4
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbc1d4
.Lbc1c4:
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_80bbabc
.Lbc1d4:
	mov	r1, #0x38
	ldrsh	r3, [r7, r1]
	b	.Lbc640

	.pool_aligned

.Lbc20c:
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0
	bne	.Lbc216
	b	.Lbc666
.Lbc216:
	mov	r4, r9
	mov	r3, #0x3a
	ldrsh	r6, [r7, r3]
	cmp	r4, #4
	beq	.Lbc230
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbc230:
	ldr	r1, [sp, #0x4c]
	ldrh	r5, [r1, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_8079c30
	ldr	r2, =.Lc2af0
	mov	r4, r11
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r1, =0x12b
	add	r3, r7, r1
	mov	r5, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	ldr	r0, [sp, #0x30]
	mul	r5, r0
	cmp	r3, #0
	beq	.Lbc27e
	cmp	r3, #1
	bne	.Lbc274
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc27e
.Lbc274:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc27e:
	mov	r1, r10
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r2, r10
	cmp	r2, #7
	bhi	.Lbc2a0
	ldr	r1, =0x827
	b	.Lbc2a2
.Lbc2a0:
	ldr	r1, =0x826
.Lbc2a2:
	mov	r0, #4
	sub	r6, r5
	bl	Func_80bbabc
	cmp	r6, #0
	bgt	.Lbc2b0
	mov	r6, #0
.Lbc2b0:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_80bbabc
	b	.Lbc514
.Lbc2ba:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc2c4
	b	.Lbc666
.Lbc2c4:
	mov	r0, #1
	mov	r5, #0x38
	ldrsh	r6, [r7, r5]
	mov	r8, r0
.Lbc2cc:
	mov	r1, r9
	cmp	r1, #4
	beq	.Lbc2e2
	lsl	r3, r1, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r2, #2
	ldrsh	r3, [r3, r2]
	ldr	r4, [sp, #0xc]
	sub	r3, r4, r3
	str	r3, [sp, #0x3c]
.Lbc2e2:
	mov	r5, r8
	cmp	r5, #0
	bne	.Lbc2ec
	mov	r0, #0
	str	r0, [sp, #0x3c]
.Lbc2ec:
	ldr	r4, [sp, #4]
	ldr	r1, [sp, #0x4c]
	mov	r2, #0
	ldrsh	r3, [r4, r2]
	ldrh	r5, [r1, #0xa]
	cmp	r3, #6
	bne	.Lbc38c
	ldr	r0, [sp, #0x40]
	ldr	r1, =0xfffffe84
	add	r3, r0, r1
	cmp	r3, #0x15
	bhi	.Lbc37a
	ldr	r2, =.Lbc30c
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbc30c:
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
	.word	.Lbc37a
	.word	.Lbc37a
	.word	.Lbc364
	.word	.Lbc36a
	.word	.Lbc370
	.word	.Lbc376
.Lbc364:
	mov	r2, #3
	str	r2, [sp, #8]
	b	.Lbc37a
.Lbc36a:
	mov	r3, #6
	str	r3, [sp, #8]
	b	.Lbc37a
.Lbc370:
	mov	r4, #9
	str	r4, [sp, #8]
	b	.Lbc37a
.Lbc376:
	mov	r0, #0xc
	str	r0, [sp, #8]
.Lbc37a:
	mov	r1, #0x34
	ldrsh	r3, [r7, r1]
	ldr	r2, [sp, #8]
	mov	r1, #0x64
	mov	r0, r2
	mul	r0, r3
	bl	Func_af0_from_thumb
	add	r5, r0
.Lbc38c:
	mov	r2, #0x80
	mov	r0, r5
	lsl	r2, #1
	ldr	r1, [sp, #0x3c]
	bl	_Func_8079c30
	ldr	r3, [sp, #0x30]
	mov	r5, r0
	mul	r5, r3
	ldr	r3, [sp, #0x18]
	cmp	r3, #6
	beq	.Lbc3c4
	cmp	r3, #6
	bgt	.Lbc3ae
	cmp	r3, #5
	beq	.Lbc3b4
	b	.Lbc3d8
.Lbc3ae:
	cmp	r3, #8
	beq	.Lbc3bc
	b	.Lbc3d8
.Lbc3b4:
	ldr	r2, =.Lc2b08
	mov	r4, r11
	lsl	r3, r4, #2
	b	.Lbc3ca
.Lbc3bc:
	ldr	r2, =.Lc2b20
	mov	r0, r11
	lsl	r3, r0, #2
	b	.Lbc3ca
.Lbc3c4:
	ldr	r2, =.Lc2b38
	mov	r1, r11
	lsl	r3, r1, #2
.Lbc3ca:
	ldr	r3, [r2, r3]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r5
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc3d8:
	bl	_Func_8079bc4
	mov	r3, #3
	ldr	r2, =0x12b
	and	r3, r0
	add	r5, r3
	add	r3, r7, r2
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbc406
	cmp	r3, #1
	bne	.Lbc3fc
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc406
.Lbc3fc:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc406:
	mov	r0, #0xb7
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.Lbc422
	ldr	r0, [sp, #4]
	mov	r4, #0
	ldrsh	r3, [r0, r4]
	cmp	r3, #6
	bne	.Lbc422
	cmp	r6, r5
	ble	.Lbc422
	mov	r5, r6
.Lbc422:
	mov	r1, #1
	add	r8, r1
	mov	r2, r8
	cmp	r2, #1
	bgt	.Lbc42e
	b	.Lbc2cc
.Lbc42e:
	mov	r1, r10
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r3, r10
	cmp	r3, #7
	bhi	.Lbc454
	ldr	r3, =0x834
	ldr	r4, [sp, #0x14]
	add	r1, r4, r3
	b	.Lbc45a
.Lbc454:
	ldr	r3, =0x831
	ldr	r0, [sp, #0x14]
	add	r1, r0, r3
.Lbc45a:
	mov	r0, #4
	sub	r6, r5
	bl	Func_80bbabc
	cmp	r6, #0
	bgt	.Lbc48c
	mov	r1, r10
	mov	r0, #9
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r10
	mov	r6, #0
	cmp	r1, #7
	bhi	.Lbc482
	ldr	r1, =0x825
	b	.Lbc484
.Lbc482:
	ldr	r1, =0x824
.Lbc484:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbc494
.Lbc48c:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_80bbabc
.Lbc494:
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	b	.Lbc640
.Lbc49a:
	ldr	r4, [sp, #0x4c]
	ldrh	r3, [r4, #0xa]
	cmp	r3, #0
	bne	.Lbc4a4
	b	.Lbc666
.Lbc4a4:
	mov	r0, r9
	mov	r5, #0x3a
	ldrsh	r6, [r7, r5]
	ldr	r1, [sp, #0xc]
	mov	r5, r3
	cmp	r0, #4
	bne	.Lbc4b4
	mov	r1, #0x64
.Lbc4b4:
	mov	r2, #0x80
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_8079c5c
	ldr	r2, =.Lc2b50
	mov	r1, r11
	lsl	r3, r1, #2
	ldr	r3, [r2, r3]
	mov	r5, r0
	mov	r0, r3
	mul	r0, r5
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	mov	r4, #0x36
	ldrsh	r3, [r7, r4]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbc4ea
	mov	r6, r3
	mov	r5, #0x3a
	ldrsh	r3, [r7, r5]
	sub	r5, r6, r3
.Lbc4ea:
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r0, #0x36
	ldrsh	r3, [r7, r0]
	cmp	r6, r3
	bne	.Lbc504
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbc514
.Lbc504:
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_80bbabc
.Lbc514:
	strh	r6, [r7, #0x3a]
	mov	r0, r10
	bl	_Func_807822c
	b	.Lbc666
.Lbc51e:
	ldr	r1, [sp, #0x24]
	cmp	r1, #0
	bne	.Lbc526
	b	.Lbc64e
.Lbc526:
	ldr	r2, [sp, #0x4c]
	ldrh	r3, [r2, #0xa]
	cmp	r3, #0
	bne	.Lbc530
	b	.Lbc666
.Lbc530:
	mov	r4, r9
	mov	r3, #0x38
	ldrsh	r6, [r7, r3]
	cmp	r4, #4
	beq	.Lbc54a
	lsl	r3, r4, #2
	add	r3, #0x48
	add	r3, r7, r3
	mov	r5, #2
	ldrsh	r3, [r3, r5]
	ldr	r0, [sp, #0xc]
	sub	r3, r0, r3
	str	r3, [sp, #0x3c]
.Lbc54a:
	ldr	r1, [sp, #0x4c]
	ldrh	r5, [r1, #0xa]
	mov	r2, #0x80
	ldr	r1, [sp, #0x3c]
	lsl	r2, #1
	mov	r0, r5
	bl	_Func_8079c30
	ldr	r2, [sp, #0x30]
	mov	r5, r0
	mul	r5, r2
	mov	r4, r11
	ldr	r2, =.Lc2b68
	lsl	r3, r4, #2
	ldr	r3, [r2, r3]
	mov	r1, #0x64
	mov	r0, r3
	mul	r0, r5
	bl	Func_af0_from_thumb
	mov	r5, r0
	ldr	r0, =0x12b
	add	r3, r7, r0
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbc5de
	cmp	r3, #1
	bne	.Lbc5d4
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
	b	.Lbc5de

	.pool_aligned

.Lbc5d4:
	mov	r0, r5
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
.Lbc5de:
	mov	r1, r10
	mov	r0, #8
	bl	Func_80bbabc
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbc600
	ldr	r1, =0x827
	b	.Lbc602
.Lbc600:
	ldr	r1, =0x826
.Lbc602:
	mov	r0, #4
	sub	r6, r5
	bl	Func_80bbabc
	cmp	r6, #0
	bgt	.Lbc634
	mov	r1, r10
	mov	r0, #9
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	mov	r2, r10
	mov	r6, #0
	cmp	r2, #7
	bhi	.Lbc62a
	ldr	r1, =0x825
	b	.Lbc62c
.Lbc62a:
	ldr	r1, =0x824
.Lbc62c:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbc63c
.Lbc634:
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_80bbabc
.Lbc63c:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
.Lbc640:
	sub	r3, r6
	str	r3, [sp, #0x2c]
	mov	r0, r10
	strh	r6, [r7, #0x38]
	bl	_Func_807822c
	b	.Lbc666
.Lbc64e:
	mov	r1, r10
	mov	r0, #0xb
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x854
	mov	r0, #4
	bl	Func_80bbabc
.Lbc666:
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
	ldr	r5, [sp, #0x4c]
	ldrb	r0, [r5, #3]
	bl	_Func_8079ef8
	cmp	r0, #0
	bne	.Lbc690
	mov	r6, #0x38
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	bne	.Lbc690
	ldrb	r0, [r5, #3]
	bl	Func_80bbae8
	cmp	r0, #0
	bne	.Lbc690
	bl	.Lbd2c0
.Lbc690:
	ldr	r0, [sp, #0x24]
	cmp	r0, #0
	bne	.Lbc69a
	bl	.Lbd2c0
.Lbc69a:
	ldr	r1, [sp, #0x4c]
	ldrb	r3, [r1, #3]
	sub	r3, #3
	cmp	r3, #0x42
	bls	.Lbc6a8
	bl	.Lbd2c0
.Lbc6a8:
	ldr	r2, =.Lbc6b0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbc6b0:
	.word	.Lbcd38
	.word	.Lbc884
	.word	.Lbccd6
	.word	.Lbcb68
	.word	.Lbcb22
	.word	.Lbcad8
	.word	.Lbca8e
	.word	.Lbcc8c
	.word	.Lbcc42
	.word	.Lbcbfc
	.word	.Lbcbb2
	.word	.Lbce84
	.word	.Lbce30
	.word	.Lbcdde
	.word	.Lbcd8c
	.word	.Lbced8
	.word	.Lbcef4
	.word	.Lbcf10
	.word	.Lbcf20
	.word	.Lbcf32
	.word	.Lbcf42
	.word	.Lbcf50
	.word	.Lbcf5c
	.word	.Lbd1fa
	.word	.Lbcfa4
	.word	.Lbd20a
	.word	.Lbcfe0
	.word	.Lbcff4
	.word	.Lbd006
	.word	.Lbd068
	.word	.Lbd180
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2b6
	.word	.Lbd282
	.word	.Lbd29c
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd2c0
	.word	.Lbd274
	.word	.Lbd24e
	.word	.Lbd2c0
	.word	.Lbccf4
	.word	.Lbcd16
	.word	.Lbca5c
	.word	.Lbca2a
	.word	.Lbd006
	.word	.Lbc926
	.word	.Lbc926
	.word	.Lbc9dc
	.word	.Lbc7bc
	.word	.Lbd2c0
	.word	.Lbd23e
	.word	.Lbcf7e
	.word	.Lbd2c0
	.word	.Lbd128
.Lbc7bc:
	mov	r3, #0x9c
	lsl	r3, #1
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc7dc
	mov	r3, #0
	ldr	r1, =0x88b
	strb	r3, [r2]
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
.Lbc7dc:
	ldr	r4, =0x13b
	add	r2, r7, r4
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc802
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x88d
	mov	r0, #4
	bl	Func_80bbabc
.Lbc802:
	mov	r5, #0x9e
	lsl	r5, #1
	add	r3, r7, r5
	mov	r6, #0
	ldr	r0, =0x13d
	strb	r6, [r3]
	add	r2, r7, r0
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc828
	ldr	r1, =0x88c
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
.Lbc828:
	ldr	r1, =0x141
	add	r2, r7, r1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc844
	ldr	r1, =0x894
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
.Lbc844:
	mov	r3, #0xa0
	lsl	r3, #1
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc862
	ldr	r1, =0x88f
	strb	r6, [r2]
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0
	mov	r1, r10
	bl	Func_80bbabc
.Lbc862:
	ldr	r4, =0x131
	add	r5, r7, r4
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbc878
	ldr	r1, =0x884
	mov	r0, #4
	bl	Func_80bbabc
	strb	r6, [r5]
.Lbc878:
	mov	r0, #7
	mov	r1, #0
	bl	Func_80bbabc
	bl	.Lbd2c0
.Lbc884:
	mov	r5, #0x9c
	lsl	r5, #1
	add	r2, r7, r5
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc8ac
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x88b
	mov	r0, #4
	bl	Func_80bbabc
.Lbc8ac:
	ldr	r6, =0x13b
	add	r2, r7, r6
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc8d2
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x88d
	mov	r0, #4
	bl	Func_80bbabc
.Lbc8d2:
	mov	r0, #0x9e
	lsl	r0, #1
	add	r3, r7, r0
	mov	r5, #0
	ldr	r1, =0x13d
	strb	r5, [r3]
	add	r2, r7, r1
	ldrb	r3, [r2]
	cmp	r3, #0
	beq	.Lbc900
	strb	r5, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x88c
	mov	r0, #4
	bl	Func_80bbabc
.Lbc900:
	ldr	r3, =0x141
	add	r2, r7, r3
	ldrb	r3, [r2]
	cmp	r3, #0
	bne	.Lbc90e
	bl	.Lbd2c0
.Lbc90e:
	strb	r5, [r2]
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x894
	bl	.Lbd236
.Lbc926:
	ldr	r1, [sp, #0x4c]
	ldrh	r4, [r7, #0x38]
	ldrb	r3, [r1, #3]
	mov	r6, #0x38
	ldrsh	r5, [r7, r6]
	mov	r8, r4
	ldrh	r6, [r7, #0x34]
	mov	r0, #0x34
	ldrsh	r2, [r7, r0]
	cmp	r3, #0x3d
	bne	.Lbc944
	lsl	r0, r2, #4
	sub	r0, r2
	lsl	r0, #2
	b	.Lbc94a
.Lbc944:
	lsl	r0, r2, #4
	sub	r0, r2
	lsl	r0, #1
.Lbc94a:
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	add	r5, r0
	lsl	r3, r6, #16
	asr	r2, r3, #16
	cmp	r5, r2
	ble	.Lbc95c
	mov	r5, r2
.Lbc95c:
	mov	r4, r8
	lsl	r3, r4, #16
	asr	r3, #16
	sub	r1, r5, r3
	cmp	r1, #0
	bne	.Lbc972
	ldr	r6, [sp, #0x18]
	cmp	r6, #1
	beq	.Lbc972
	bl	.Lbd2c0
.Lbc972:
	cmp	r5, r2
	bne	.Lbc980
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbc98e
.Lbc980:
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_80bbabc
.Lbc98e:
	strh	r5, [r7, #0x38]
	b	.Lbcfd8

	.pool_aligned

.Lbc9dc:
	mov	r1, #0x36
	ldrsh	r6, [r7, r1]
	mov	r0, #0x3a
	ldrsh	r5, [r7, r0]
	lsl	r0, r6, #3
	sub	r0, r6
	mov	r1, #0x64
	bl	Func_af0_from_thumb
	mov	r8, r5
	add	r5, r0
	cmp	r5, r6
	ble	.Lbc9f8
	mov	r5, r6
.Lbc9f8:
	mov	r2, r8
	sub	r1, r5, r2
	cmp	r1, #0
	bne	.Lbca0a
	ldr	r3, [sp, #0x18]
	cmp	r3, #0xb
	beq	.Lbca0a
	bl	.Lbd2c0
.Lbca0a:
	cmp	r5, r6
	bne	.Lbca18
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbca26
.Lbca18:
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_80bbabc
.Lbca26:
	strh	r5, [r7, #0x3a]
	b	.Lbcfd8
.Lbca2a:
	ldr	r4, =0x147
	mov	r5, #0xa3
	add	r2, r7, r4
	mov	r3, #8
	lsl	r5, #1
	strb	r3, [r2]
	add	r2, r7, r5
	mov	r3, #5
	strb	r3, [r2]
	mov	r0, r10
	bl	_Func_8077428
	mov	r3, r7
	add	r3, #0x40
	ldrh	r1, [r3]
	ldr	r3, [sp, #0x10]
	add	r3, #0x40
	ldrh	r3, [r3]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x877
	bl	.Lbd236
.Lbca5c:
	ldr	r6, =0x147
	mov	r0, #0xa3
	add	r2, r7, r6
	mov	r3, #0xfc
	lsl	r0, #1
	strb	r3, [r2]
	add	r2, r7, r0
	mov	r3, #5
	strb	r3, [r2]
	mov	r0, r10
	bl	_Func_8077428
	ldr	r3, [sp, #0x10]
	add	r3, #0x40
	ldrh	r1, [r3]
	mov	r3, r7
	add	r3, #0x40
	ldrh	r3, [r3]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x878
	bl	.Lbd236
.Lbca8e:
	ldr	r1, =0x133
	add	r2, r7, r1
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcaa8
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcaa8:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcab4
	mov	r3, #4
	strb	r3, [r2]
.Lbcab4:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r5, [sp, #0x10]
	ldrh	r3, [r7, #0x3c]
	ldrh	r1, [r5, #0x3c]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x99
	bl	Func_80bbabc
	lsl	r6, #1
	ldr	r1, =0x860
	mov	r0, #4
	bl	Func_80bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcad8:
	ldr	r0, =0x133
	add	r2, r7, r0
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcaf2
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcaf2:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcafe
	mov	r3, #4
	strb	r3, [r2]
.Lbcafe:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r2, [sp, #0x10]
	ldrh	r3, [r7, #0x3c]
	ldrh	r1, [r2, #0x3c]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x860
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0x99
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcb22:
	ldr	r4, =0x133
	add	r2, r7, r4
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r5, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r5, r5
	cmp	r3, r5
	bge	.Lbcb3c
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcb3c:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcb48
	mov	r3, #4
	strb	r3, [r2]
.Lbcb48:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r6, [sp, #0x10]
	ldrh	r1, [r7, #0x3c]
	ldrh	r3, [r6, #0x3c]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x861
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x99
	b	.Lbcfea
.Lbcb68:
	ldr	r1, =0x133
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcb82
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcb82:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcb8e
	mov	r3, #4
	strb	r3, [r2]
.Lbcb8e:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r5, [sp, #0x10]
	ldrh	r1, [r7, #0x3c]
	ldrh	r3, [r5, #0x3c]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x99
	bl	Func_80bbabc
	lsl	r6, #1
	ldr	r1, =0x861
	mov	r0, #4
	bl	Func_80bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcbb2:
	ldr	r0, =0x135
	add	r2, r7, r0
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcbcc
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcbcc:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcbd8
	mov	r3, #4
	strb	r3, [r2]
.Lbcbd8:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r2, [sp, #0x10]
	ldrh	r3, [r7, #0x3e]
	ldrh	r1, [r2, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x862
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0x9a
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcbfc:
	ldr	r4, =0x135
	add	r2, r7, r4
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r5, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r5, r5
	cmp	r3, r5
	bge	.Lbcc16
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcc16:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcc22
	mov	r3, #4
	strb	r3, [r2]
.Lbcc22:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r6, [sp, #0x10]
	ldrh	r3, [r7, #0x3e]
	ldrh	r1, [r6, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x862
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9a
	b	.Lbcfea
.Lbcc42:
	ldr	r1, =0x135
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcc5c
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcc5c:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbcc68
	mov	r3, #4
	strb	r3, [r2]
.Lbcc68:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r5, [sp, #0x10]
	ldrh	r1, [r7, #0x3e]
	ldrh	r3, [r5, #0x3e]
	mov	r0, #1
	sub	r1, r3
	mov	r6, #0x9a
	bl	Func_80bbabc
	lsl	r6, #1
	ldr	r1, =0x863
	mov	r0, #4
	bl	Func_80bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcc8c:
	ldr	r0, =0x135
	add	r2, r7, r0
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r1, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r1, r1
	cmp	r3, r1
	bge	.Lbcca6
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcca6:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #4
	ble	.Lbccb2
	mov	r3, #4
	strb	r3, [r2]
.Lbccb2:
	mov	r0, r10
	bl	_Func_8077428
	ldr	r2, [sp, #0x10]
	ldrh	r1, [r7, #0x3e]
	ldrh	r3, [r2, #0x3e]
	mov	r0, #1
	sub	r1, r3
	bl	Func_80bbabc
	ldr	r1, =0x863
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0x9a
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbccd6:
	mov	r4, #0x38
	ldrsh	r3, [r7, r4]
	cmp	r3, #0
	beq	.Lbcce0
	b	.Lbd2c0
.Lbcce0:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_80bbabc
	ldrh	r3, [r7, #0x34]
	mov	r0, r10
	strh	r3, [r7, #0x38]
	bl	_Func_807822c
	b	.Lbd2c0
.Lbccf4:
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.Lbccfe
	b	.Lbd2c0
.Lbccfe:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_80bbabc
	ldrh	r3, [r7, #0x34]
	lsl	r3, #16
	asr	r2, r3, #16
	lsr	r3, #31
	add	r2, r3
	asr	r2, #1
	strh	r2, [r7, #0x38]
	b	.Lbcfd8
.Lbcd16:
	mov	r6, #0x38
	ldrsh	r3, [r7, r6]
	cmp	r3, #0
	beq	.Lbcd20
	b	.Lbd2c0
.Lbcd20:
	ldr	r1, =0x864
	mov	r0, #4
	bl	Func_80bbabc
	mov	r1, #0x34
	ldrsh	r0, [r7, r1]
	mov	r1, #0xa
	lsl	r0, #3
	bl	Func_af0_from_thumb
	strh	r0, [r7, #0x38]
	b	.Lbcfd8
.Lbcd38:
	ldr	r2, =0x131
	add	r5, r7, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbcd4c
	ldr	r1, =0x884
	mov	r0, #4
	bl	Func_80bbabc
.Lbcd4c:
	mov	r3, #0
	strb	r3, [r5]
	b	.Lbd2c0

	.pool_aligned

.Lbcd8c:
	ldr	r3, =0x137
	add	r2, r7, r3
	ldrb	r3, [r2]
	sub	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcda6
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcda6:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbcdb6
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbcdb6:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r3, r5, r6
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r2, r3
	lsl	r1, r2, #2
	add	r1, r2
	lsl	r1, #2
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x865
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbcdde:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	sub	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbcdf8
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbcdf8:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbce08
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbce08:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r3, r5, r6
	mov	r2, #0
	ldrsb	r2, [r3, r2]
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r2, r3
	lsl	r1, r2, #2
	add	r1, r2
	lsl	r1, #2
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x865
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbce30:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #1
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbce4a
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbce4a:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbce5a
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbce5a:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r2, r5, r6
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r3, r2
	lsl	r1, r3, #2
	add	r1, r3
	lsl	r1, #2
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x866
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbce84:
	ldr	r1, =0x137
	add	r2, r7, r1
	ldrb	r3, [r2]
	add	r3, #2
	strb	r3, [r2]
	mov	r4, #4
	lsl	r3, #24
	asr	r3, #24
	neg	r4, r4
	cmp	r3, r4
	bge	.Lbce9e
	mov	r3, #0xfc
	strb	r3, [r2]
.Lbce9e:
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	ldrb	r1, [r2]
	cmp	r3, #4
	ble	.Lbceae
	mov	r3, #4
	strb	r3, [r2]
	mov	r1, #4
.Lbceae:
	ldr	r5, [sp, #0x10]
	ldr	r6, =0x137
	add	r2, r5, r6
	ldrb	r2, [r2]
	lsl	r2, #24
	asr	r2, #24
	lsl	r3, r1, #24
	asr	r3, #24
	sub	r3, r2
	lsl	r1, r3, #2
	add	r1, r3
	lsl	r1, #2
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x866
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9b
	b	.Lbcfea
.Lbced8:
	ldr	r1, =0x131
	add	r5, r7, r1
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #0
	beq	.Lbcee6
	b	.Lbd2c0
.Lbcee6:
	ldr	r1, =0x867
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #1
	strb	r3, [r5]
	b	.Lbd2c0
.Lbcef4:
	ldr	r2, =0x131
	add	r5, r7, r2
	mov	r3, #0
	ldrsb	r3, [r5, r3]
	cmp	r3, #1
	ble	.Lbcf02
	b	.Lbd2c0
.Lbcf02:
	ldr	r1, =0x874
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #2
	strb	r3, [r5]
	b	.Lbd2c0
.Lbcf10:
	ldr	r1, =0x868
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0x9c
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbcfee
.Lbcf20:
	ldr	r1, =0x869
	mov	r0, #4
	bl	Func_80bbabc
	ldr	r4, =0x139
	mov	r3, #7
	add	r2, r7, r4
	strb	r3, [r2]
	b	.Lbd2c0
.Lbcf32:
	mov	r5, #0x9d
	ldr	r1, =0x86a
	mov	r0, #4
	lsl	r5, #1
	bl	Func_80bbabc
	add	r2, r7, r5
	b	.Lbcfee
.Lbcf42:
	ldr	r6, =0x13b
	ldr	r1, =0x86b
	mov	r0, #4
	bl	Func_80bbabc
	add	r2, r7, r6
	b	.Lbcfee
.Lbcf50:
	ldr	r1, =0x86c
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9e
	b	.Lbcfea
.Lbcf5c:
	mov	r1, r10
	cmp	r1, #7
	bhi	.Lbcf6c
	ldr	r1, =0x86d
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbcf74
.Lbcf6c:
	ldr	r1, =0x876
	mov	r0, #4
	bl	Func_80bbabc
.Lbcf74:
	ldr	r2, =0x13d
	add	r1, r7, r2
	ldrb	r2, [r1]
	mov	r3, #7
	b	.Lbcf9e
.Lbcf7e:
	mov	r3, r10
	cmp	r3, #7
	bhi	.Lbcf8e
	ldr	r1, =0x86d
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbcf96
.Lbcf8e:
	ldr	r1, =0x876
	mov	r0, #4
	bl	Func_80bbabc
.Lbcf96:
	ldr	r4, =0x13d
	add	r1, r7, r4
	ldrb	r2, [r1]
	mov	r3, #0x10
.Lbcf9e:
	orr	r3, r2
	strb	r3, [r1]
	b	.Lbd2c0
.Lbcfa4:
	mov	r5, #0x95
	mov	r0, #9
	mov	r1, r10
	lsl	r5, #1
	bl	Func_80bbabc
	add	r3, r7, r5
	ldrb	r3, [r3]
	cmp	r3, #2
	bne	.Lbcfbc
	ldr	r1, =0x84f
	b	.Lbcfc4
.Lbcfbc:
	ldr	r6, [sp, #0x40]
	cmp	r6, #0xdb
	bne	.Lbcfcc
	ldr	r1, =0x850
.Lbcfc4:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbcfd4
.Lbcfcc:
	ldr	r1, =0x84c
	mov	r0, #4
	bl	Func_80bbabc
.Lbcfd4:
	mov	r3, #0
	strh	r3, [r7, #0x38]
.Lbcfd8:
	mov	r0, r10
	bl	_Func_807822c
	b	.Lbd2c0
.Lbcfe0:
	ldr	r1, =0x86f
	mov	r0, #4
	bl	Func_80bbabc
	mov	r0, #0x9f
.Lbcfea:
	lsl	r0, #1
	add	r2, r7, r0
.Lbcfee:
	mov	r3, #7
	strb	r3, [r2]
	b	.Lbd2c0
.Lbcff4:
	ldr	r1, =0x870
	mov	r0, #4
	bl	Func_80bbabc
	ldr	r1, =0x13f
	mov	r3, #7
	add	r2, r7, r1
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd006:
	ldr	r3, [sp, #0x48]
	ldr	r4, [sp, #0x4c]
	mov	r2, #0x38
	ldrsh	r6, [r3, r2]
	ldrb	r3, [r4, #3]
	mov	r2, r6
	ldr	r5, [sp, #0x2c]
	cmp	r3, #0x3c
	bne	.Lbd01e
	lsr	r3, r5, #31
	add	r3, r5, r3
	asr	r5, r3, #1
.Lbd01e:
	ldr	r1, [sp, #0x48]
	mov	r0, #0x34
	ldrsh	r3, [r1, r0]
	add	r6, r5
	cmp	r6, r3
	ble	.Lbd02e
	mov	r6, r3
	sub	r5, r6, r2
.Lbd02e:
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r0, #0
	ldr	r1, [sp, #0x44]
	bl	Func_80bbabc
	ldr	r4, [sp, #0x48]
	mov	r2, #0x34
	ldrsh	r3, [r4, r2]
	cmp	r6, r3
	bne	.Lbd052
	ldr	r1, =0x820
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbd062
.Lbd052:
	mov	r1, r5
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81d
	mov	r0, #4
	bl	Func_80bbabc
.Lbd062:
	ldr	r5, [sp, #0x48]
	strh	r6, [r5, #0x38]
	b	.Lbd0b8
.Lbd068:
	ldr	r0, [sp, #0x48]
	mov	r6, #0x3a
	ldrsh	r5, [r0, r6]
	ldr	r6, [sp, #0x2c]
	mov	r1, #0x36
	ldrsh	r3, [r0, r1]
	mov	r2, r5
	add	r5, r6
	cmp	r5, r3
	ble	.Lbd080
	mov	r5, r3
	sub	r6, r5, r2
.Lbd080:
	mov	r1, #0
	mov	r0, #7
	bl	Func_80bbabc
	mov	r0, #0
	ldr	r1, [sp, #0x44]
	bl	Func_80bbabc
	ldr	r4, [sp, #0x48]
	mov	r2, #0x36
	ldrsh	r3, [r4, r2]
	cmp	r5, r3
	bne	.Lbd0a4
	ldr	r1, =0x821
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbd0b4
.Lbd0a4:
	mov	r1, r6
	mov	r0, #1
	bl	Func_80bbabc
	ldr	r1, =0x81e
	mov	r0, #4
	bl	Func_80bbabc
.Lbd0b4:
	ldr	r6, [sp, #0x48]
	strh	r5, [r6, #0x3a]
.Lbd0b8:
	ldr	r0, [sp, #0x44]
	bl	_Func_807822c
	b	.Lbd2c0

	.pool_aligned

.Lbd128:
	ldr	r0, [sp, #0x2c]
	mov	r1, #0xa
	bl	Func_af0_from_thumb
	mov	r5, r0
	mov	r0, #0x3a
	ldrsh	r3, [r7, r0]
	cmp	r3, r5
	bge	.Lbd13c
	mov	r5, r3
.Lbd13c:
	ldr	r3, [sp, #0x48]
	ldr	r6, [sp, #0x48]
	mov	r2, #0x3a
	ldrsh	r1, [r3, r2]
	mov	r4, #0x36
	ldrsh	r2, [r6, r4]
	add	r3, r1, r5
	cmp	r3, r2
	ble	.Lbd150
	sub	r5, r2, r1
.Lbd150:
	cmp	r5, #0
	bne	.Lbd156
	b	.Lbd2c0
.Lbd156:
	mov	r0, #1
	mov	r1, r5
	bl	Func_80bbabc
	mov	r0, r10
	cmp	r0, #7
	bhi	.Lbd16e
	ldr	r1, =0x85f
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbd176
.Lbd16e:
	ldr	r1, =0x85e
	mov	r0, #4
	bl	Func_80bbabc
.Lbd176:
	ldr	r0, [sp, #0x44]
	mov	r1, r5
	bl	_Func_80783dc
	b	.Lbd2c0
.Lbd180:
	ldr	r1, =0x133
	add	r2, r7, r1
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd198
	mov	r4, #0x99
	mov	r3, #0
	lsl	r4, #1
	strb	r3, [r2]
	add	r2, r7, r4
	strb	r3, [r2]
.Lbd198:
	ldr	r5, =0x135
	add	r1, r7, r5
	mov	r3, #0
	ldrsb	r3, [r1, r3]
	cmp	r3, #0
	ble	.Lbd1b0
	mov	r6, #0x9a
	lsl	r6, #1
	mov	r2, #0
	add	r3, r7, r6
	strb	r2, [r1]
	strb	r2, [r3]
.Lbd1b0:
	ldr	r0, =0x137
	add	r2, r7, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd1c8
	mov	r1, #0x9b
	mov	r3, #0
	lsl	r1, #1
	strb	r3, [r2]
	add	r2, r7, r1
	strb	r3, [r2]
.Lbd1c8:
	ldr	r3, =0x147
	add	r2, r7, r3
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	ble	.Lbd1d8
	mov	r3, #0
	strb	r3, [r2]
.Lbd1d8:
	mov	r4, #0x96
	lsl	r4, #1
	ldr	r5, =0x12d
	mov	r2, #0
	add	r3, r7, r4
	mov	r6, #0x97
	strb	r2, [r3]
	ldr	r0, =0x12f
	add	r3, r7, r5
	lsl	r6, #1
	strb	r2, [r3]
	add	r3, r7, r6
	strb	r2, [r3]
	add	r3, r7, r0
	strb	r2, [r3]
	ldr	r1, =0x896
	b	.Lbd236
.Lbd1fa:
	ldr	r1, =0x872
	mov	r0, #4
	bl	Func_80bbabc
	mov	r1, #0xa0
	lsl	r1, #1
	add	r2, r7, r1
	b	.Lbd296
.Lbd20a:
	ldr	r2, =0x141
	add	r5, r7, r2
	ldrb	r3, [r5]
	mov	r2, r3
	cmp	r2, #0
	bne	.Lbd224
	ldr	r1, =0x873
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #7
	strb	r3, [r5]
	b	.Lbd2c0
.Lbd224:
	cmp	r2, #1
	bls	.Lbd2c0
	add	r3, #0xff
	strb	r3, [r5]
	mov	r0, #1
	ldrb	r1, [r5]
	bl	Func_80bbabc
	ldr	r1, =0x875
.Lbd236:
	mov	r0, #4
	bl	Func_80bbabc
	b	.Lbd2c0
.Lbd23e:
	ldr	r1, =0x87d
	mov	r0, #4
	bl	Func_80bbabc
	mov	r3, #0xa2
	lsl	r3, #1
	add	r2, r7, r3
	b	.Lbd2b0
.Lbd24e:
	ldr	r1, =0x87e
	mov	r0, #4
	bl	Func_80bbabc
	mov	r4, #0xa4
	lsl	r4, #1
	add	r2, r7, r4
	mov	r3, #1
	mov	r5, r10
	strb	r3, [r2]
	cmp	r5, #7
	bhi	.Lbd2c0
	ldr	r3, [sp, #0x38]
	add	r3, #0x43
	ldrb	r2, [r3]
	mov	r1, #2
	orr	r2, r1
	strb	r2, [r3]
	b	.Lbd2c0
.Lbd274:
	ldr	r6, =0x145
	ldr	r1, =0x87f
	mov	r0, #4
	bl	Func_80bbabc
	add	r2, r7, r6
	b	.Lbd296
.Lbd282:
	ldr	r1, =0x881
	mov	r0, #4
	bl	Func_80bbabc
	ldr	r0, =0x12b
	add	r2, r7, r0
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #0
	bgt	.Lbd2c0
.Lbd296:
	mov	r3, #1
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd29c:
	ldr	r1, =0x882
	mov	r0, #4
	bl	Func_80bbabc
	ldr	r1, =0x12b
	add	r2, r7, r1
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #1
	bgt	.Lbd2c0
.Lbd2b0:
	mov	r3, #2
	strb	r3, [r2]
	b	.Lbd2c0
.Lbd2b6:
	mov	r1, #1
	neg	r1, r1
	mov	r0, #4
	bl	Func_80bbabc
.Lbd2c0:
	mov	r0, #7
	mov	r1, #0
	bl	Func_80bbabc
	mov	r2, #0x38
	ldrsh	r3, [r7, r2]
	cmp	r3, #0
	beq	.Lbd304
	mov	r3, #0x9e
	lsl	r3, #1
	add	r5, r7, r3
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.Lbd304
	cmp	r3, #6
	bhi	.Lbd304
	ldr	r4, [sp, #0x2c]
	cmp	r4, #0
	ble	.Lbd304
	bl	_Func_8079bc4
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbd304
	strb	r0, [r5]
	mov	r1, r10
	mov	r0, #0
	bl	Func_80bbabc
	ldr	r1, =0x883
	mov	r0, #4
	bl	Func_80bbabc
.Lbd304:
	ldr	r0, [sp, #0x10]
	bl	Func_8002df0
	mov	r0, r10
	bl	_Func_8077428
	ldr	r3, =iwram_3001e74
	ldr	r3, [r3]
	add	r3, #0x41
	ldrb	r0, [r3]
	bl	_Func_801f200
	mov	r5, #0x38
	ldrsh	r3, [r7, r5]
	cmp	r3, #0
	beq	.Lbd32c
	mov	r0, #0xb
	mov	r1, r10
	bl	Func_80bbabc
.Lbd32c:
	ldr	r6, [sp, #0x48]
	mov	r0, #0xa0
	lsl	r0, #1
	add	r3, r6, r0
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbd35c
	bl	_Func_8079bc4
	mov	r3, #3
	and	r0, r3
	cmp	r0, #0
	bne	.Lbd35c
	ldr	r1, [sp, #0x2c]
	cmp	r1, #0
	ble	.Lbd35c
	asr	r0, r1, #2
	cmp	r0, #0
	bne	.Lbd354
	mov	r0, #1
.Lbd354:
	ldr	r2, [sp, #0x50]
	ldr	r3, [r2, #0x60]
	add	r3, r0
	str	r3, [r2, #0x60]
.Lbd35c:
	add	sp, #0x64
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bbb0c

.thumb_func_start Func_80bd3c8
	push	{lr}
	cmp	r0, #0x7e
	bne	.Lbd3d2
	mov	r0, #1
	b	.Lbd3de
.Lbd3d2:
	bl	_Func_8078b9c
	ldrb	r3, [r0, #9]
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
.Lbd3de:
	pop	{r1}
	bx	r1
.func_end Func_80bd3c8

.thumb_func_start Func_80bd3e4
	push	{r5, lr}
	mov	r5, r9
	push	{r5}
	mov	r3, r9
	sub	sp, #4
	str	r3, [sp]
	mov	r5, r0
	bl	_Func_8079bc4
	mov	r3, #0xff
	ldrb	r2, [r5]
	and	r0, r3
	mov	r4, #0
	mov	r1, #0
	cmp	r0, r2
	blt	.Lbd414
.Lbd404:
	add	r1, #1
	cmp	r1, #7
	bgt	.Lbd414
	ldrb	r3, [r5, r1]
	add	r2, r3
	cmp	r0, r2
	bge	.Lbd404
	mov	r4, r1
.Lbd414:
	mov	r0, r4
	add	sp, #4
	pop	{r3}
	mov	r9, r3
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_80bd3e4

.thumb_func_start Func_80bd424
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x1c
	str	r1, [sp, #0x18]
	mov	r7, r0
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	_Func_8077394
	mov	r3, #0
	mov	r2, #1
	str	r3, [sp, #0xc]
	ldr	r3, =0x129
	mov	r11, r0
	str	r2, [sp, #0x10]
	str	r2, [sp, #8]
	add	r3, r11
	mov	r0, #1
	ldrb	r3, [r3]
	neg	r0, r0
	mov	r10, r0
	cmp	r3, #0
	beq	.Lbd45e
	b	.Lbd792
.Lbd45e:
	ldr	r1, [sp, #0x18]
	cmp	r1, #0
	beq	.Lbd46e
	mov	r2, #6
	ldrsh	r3, [r7, r2]
	cmp	r3, #4
	beq	.Lbd46e
	b	.Lbd792
.Lbd46e:
	mov	r3, #0x94
	lsl	r3, #1
	add	r3, r11
	ldrb	r0, [r3]
	bl	_Func_80773d8
	str	r0, [sp, #0x14]
	ldr	r1, [sp, #0x14]
	mov	r3, #0x90
	lsl	r3, #1
	add	r0, #0x36
	add	r1, #0x37
	add	r3, r11
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r8, r3
.Lbd48e:
	ldr	r2, [sp, #4]
	mov	r3, #0
	ldrsb	r3, [r2, r3]
	cmp	r3, #6
	bhi	.Lbd534
	ldr	r2, =.Lbd4a0
	lsl	r3, #2
	ldr	r3, [r3, r2]
	mov	pc, r3
	.align	2, 0
.Lbd4a0:
	.word	.Lbd4bc
	.word	.Lbd4c4
	.word	.Lbd4cc
	.word	.Lbd4da
	.word	.Lbd504
	.word	.Lbd530
	.word	.Lbd534
.Lbd4bc:
	add	r3, sp, #0x1c
	ldr	r0, =.Lc2b80
	mov	r9, r3
	b	.Lbd4d2
.Lbd4c4:
	add	r1, sp, #0x1c
	ldr	r0, =.Lc2b88
	mov	r9, r1
	b	.Lbd4d2
.Lbd4cc:
	add	r2, sp, #0x1c
	ldr	r0, =.Lc2b90
	mov	r9, r2
.Lbd4d2:
	bl	Func_80bd3e4
	mov	r10, r0
	b	.Lbd534
.Lbd4da:
	mov	r3, r8
	ldr	r2, [r3]
	lsl	r3, r2, #31
	cmp	r3, #0
	bne	.Lbd508
	bl	_Func_8079bc4
	mov	r1, r8
	mov	r3, #7
	ldrb	r2, [r1]
	and	r0, r3
	mov	r3, #0xf
	neg	r3, r3
	and	r3, r2
	lsl	r0, #1
	mov	r2, #1
	orr	r3, r0
	orr	r3, r2
	strb	r3, [r1]
	ldr	r2, [r1]
	b	.Lbd508
.Lbd504:
	mov	r3, r8
	ldr	r2, [r3]
.Lbd508:
	lsl	r3, r2, #28
	ldr	r0, [sp, #0x18]
	lsr	r3, #29
	mov	r10, r3
	cmp	r0, #0
	beq	.Lbd534
	mov	r2, r10
	mov	r3, #7
	add	r2, #1
	and	r2, r3
	mov	r3, r8
	ldrb	r1, [r3]
	mov	r3, #0xf
	neg	r3, r3
	lsl	r2, #1
	and	r3, r1
	orr	r3, r2
	mov	r0, r8
	strb	r3, [r0]
	b	.Lbd534
.Lbd530:
	mov	r1, #1
	add	r10, r1
.Lbd534:
	ldr	r2, [sp]
	ldrb	r6, [r2]
	mov	r3, r10
	asr	r6, r3
	mov	r1, r10
	mov	r3, #1
	and	r6, r3
	ldr	r2, [sp, #0x14]
	lsl	r3, r1, #1
	add	r3, #0x38
	ldr	r0, [sp, #0x10]
	ldrh	r3, [r2, r3]
	and	r6, r0
	mov	r9, r3
	mov	r3, #4
	strh	r3, [r7, #6]
	cmp	r6, #0
	beq	.Lbd5be
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd5be
	mov	r1, r11
	add	r1, #0xd8
	ldrh	r2, [r1]
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0
	bne	.Lbd586
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	mov	r6, #0
	cmp	r3, #0
	bne	.Lbd586
	mov	r3, #2
	strh	r3, [r7, #6]
	ldr	r3, =0x1fd
	strh	r3, [r7, #8]
	b	.Lbd792
.Lbd586:
	cmp	r6, #0
	beq	.Lbd5ba
	ldrh	r0, [r1]
	bl	_Func_8078414
	mov	r5, r0
	ldrb	r3, [r5, #0xc]
	cmp	r3, #1
	bne	.Lbd5b4
	ldrh	r0, [r5, #0x28]
	bl	_Func_8078b9c
	mov	r3, #2
	ldrh	r5, [r5, #0x28]
	strh	r3, [r7, #6]
	ldrb	r3, [r0, #1]
	mov	r2, #0
	mov	r9, r5
	strh	r2, [r7, #8]
	cmp	r3, #2
	bgt	.Lbd5b4
	cmp	r3, #1
	bge	.Lbd5b6
.Lbd5b4:
	mov	r6, #0
.Lbd5b6:
	cmp	r6, #0
	bne	.Lbd5be
.Lbd5ba:
	mov	r0, #0
	str	r0, [sp, #0x10]
.Lbd5be:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	bne	.Lbd5c6
	b	.Lbd766
.Lbd5c6:
	mov	r0, r9
	bl	_Func_8078b9c
	mov	r5, r0
	ldrb	r3, [r5, #3]
	cmp	r3, #0x2f
	beq	.Lbd5ee
	cmp	r3, #0x2f
	bgt	.Lbd5de
	cmp	r3, #0x2e
	beq	.Lbd5e4
	b	.Lbd606
.Lbd5de:
	cmp	r3, #0x31
	beq	.Lbd5f8
	b	.Lbd606
.Lbd5e4:
	mov	r3, #3
	strh	r3, [r7, #6]
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	b	.Lbd600
.Lbd5ee:
	mov	r3, #7
	strh	r3, [r7, #6]
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	b	.Lbd600
.Lbd5f8:
	mov	r3, #0x63
	strh	r3, [r7, #6]
	mov	r1, #0
	ldrsh	r0, [r7, r1]
.Lbd600:
	bl	Func_80b9a70
	strh	r0, [r7, #0xa]
.Lbd606:
	ldr	r2, [sp, #0x18]
	cmp	r2, #0
	bne	.Lbd61e
	mov	r0, #6
	ldrsh	r3, [r7, r0]
	ldrh	r2, [r7, #6]
	cmp	r3, #3
	beq	.Lbd620
	cmp	r3, #7
	beq	.Lbd61c
	b	.Lbd792
.Lbd61c:
	b	.Lbd620
.Lbd61e:
	ldrh	r2, [r7, #6]
.Lbd620:
	mov	r1, #0x80
	lsl	r3, r2, #16
	lsl	r1, #10
	cmp	r3, r1
	beq	.Lbd69a
	mov	r0, r9
	bl	Func_80bd3c8
	cmp	r0, #0
	beq	.Lbd674
	mov	r3, #1
	mov	r2, r9
	mov	r1, r11
	strh	r3, [r7, #6]
	strh	r2, [r7, #8]
	mov	r0, #0x3a
	ldrsh	r3, [r1, r0]
	ldrb	r2, [r5, #9]
	cmp	r2, r3
	ble	.Lbd658
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #0
	beq	.Lbd658
	b	.Lbd770
.Lbd658:
	ldr	r3, =0x13d
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.Lbd698
	ldr	r3, [sp, #0x14]
	add	r3, #0x35
	ldrb	r3, [r3]
	lsl	r3, #24
	asr	r3, #24
	cmp	r3, #2
	bne	.Lbd672
	b	.Lbd770
.Lbd672:
	b	.Lbd698
.Lbd674:
	ldrh	r2, [r7, #6]
	b	.Lbd69a

	.pool_aligned

.Lbd698:
	ldr	r2, =1
.Lbd69a:
	lsl	r3, r2, #16
	asr	r2, r3, #16
	cmp	r2, #0x63
	bne	.Lbd6ae
	mov	r3, #0xa4
	lsl	r3, #1
	add	r3, r11
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.Lbd770
.Lbd6ae:
	ldr	r3, [sp, #0x18]
	cmp	r3, #0
	beq	.Lbd6c4
	cmp	r2, #3
	beq	.Lbd770
	cmp	r2, #7
	beq	.Lbd770
	b	.Lbd6c4

	.pool_aligned

.Lbd6c4:
	cmp	r2, #4
	bne	.Lbd6d6
	mov	r0, r9
	mov	r1, r9
	mov	r3, #0
	strh	r0, [r7, #8]
	cmp	r1, #1
	bne	.Lbd6d6
	strh	r3, [r7, #6]
.Lbd6d6:
	ldrb	r3, [r5, #8]
	strh	r3, [r7, #0xc]
	ldrb	r3, [r5]
	cmp	r3, #2
	beq	.Lbd6f2
	cmp	r3, #2
	bgt	.Lbd6ea
	cmp	r3, #1
	beq	.Lbd722
	b	.Lbd758
.Lbd6ea:
	cmp	r3, #3
	beq	.Lbd74c
	cmp	r3, #4
	bne	.Lbd758
.Lbd6f2:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	mov	r1, r5
	bl	Func_80bae40
	mov	r3, #2
	neg	r3, r3
	cmp	r0, r3
	bne	.Lbd712
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd70e
	mov	r0, #1
.Lbd70e:
	bl	Func_80bad7c
.Lbd712:
	mov	r1, #1
	neg	r1, r1
	cmp	r0, r1
	beq	.Lbd766
	mov	r2, #0
	strh	r0, [r7, #0xa]
	str	r2, [sp, #8]
	b	.Lbd766
.Lbd722:
	mov	r1, r5
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	bl	Func_80bae40
	mov	r1, #2
	neg	r1, r1
	cmp	r0, r1
	bne	.Lbd742
	ldrh	r3, [r7]
	mov	r0, #0
	cmp	r3, #7
	bhi	.Lbd73e
	mov	r0, #1
.Lbd73e:
	bl	Func_80bad7c
.Lbd742:
	mov	r2, #1
	neg	r2, r2
	cmp	r0, r2
	beq	.Lbd766
	b	.Lbd760
.Lbd74c:
	mov	r1, #0
	ldrsh	r0, [r7, r1]
	bl	Func_80b9a70
	strh	r0, [r7, #0xa]
	b	.Lbd766
.Lbd758:
	mov	r2, #0
	ldrsh	r0, [r7, r2]
	bl	Func_80b9a70
.Lbd760:
	mov	r3, #0
	strh	r0, [r7, #0xa]
	str	r3, [sp, #8]
.Lbd766:
	ldr	r0, [sp, #0x18]
	cmp	r0, #0
	bne	.Lbd770
	mov	r1, #0
	str	r1, [sp, #8]
.Lbd770:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.Lbd784
	ldr	r3, [sp, #0xc]
	cmp	r3, #0x10
	ble	.Lbd784
	mov	r3, #3
	mov	r0, #0
	strh	r3, [r7, #6]
	str	r0, [sp, #8]
.Lbd784:
	ldr	r1, [sp, #0xc]
	ldr	r2, [sp, #8]
	add	r1, #1
	str	r1, [sp, #0xc]
	cmp	r2, #0
	beq	.Lbd792
	b	.Lbd48e
.Lbd792:
	add	sp, #0x1c
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_80bd424

.thumb_func_start Func_80bd7a4
	push	{lr}
	mov	r2, #0x84
	ldr	r3, =REG_DMA3SAD
	mov	r0, #0
	mov	r1, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0x84
	mov	r0, #0
	lsl	r2, #24
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldr	r3, =iwram_30000c4
	ldr	r0, [r3]
	bl	_call_via_r0
	pop	{r0}
	bx	r0
.func_end Func_80bd7a4

