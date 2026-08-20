	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_880_2008de4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0x40
	mov	r0, #0xb
	str	r1, [sp, #0x1c]
	mov	r11, r2
	str	r0, [sp, #0x18]
	cmp	r1, #1
	beq	.Le18
	cmp	r1, #1
	bgt	.Le0a
	cmp	r1, #0
	beq	.Le12
	b	.Le22
.Le0a:
	ldr	r1, [sp, #0x1c]
	cmp	r1, #2
	beq	.Le1e
	b	.Le22
.Le12:
	mov	r2, #0xad
	str	r2, [sp, #0x18]
	b	.Le22
.Le18:
	mov	r3, #0x27
	str	r3, [sp, #0x18]
	b	.Le22
.Le1e:
	mov	r4, #9
	str	r4, [sp, #0x18]
.Le22:
	ldr	r0, [sp, #0x18]
	mov	r6, #0
	mov	r9, r6
	cmp	r0, #0
	beq	.Le3e
	mov	r2, #0
	mov	r3, r11
.Le30:
	strb	r2, [r3]
	mov	r1, #1
	ldr	r4, [sp, #0x18]
	add	r9, r1
	add	r3, #1
	cmp	r9, r4
	bne	.Le30
.Le3e:
	mov	r0, sp
	mov	r6, #0
	add	r0, #0x20
	str	r6, [sp, #0x14]
	str	r6, [sp, #0x10]
	str	r6, [sp, #0xc]
	str	r6, [sp, #8]
	str	r0, [sp, #4]
	mov	r9, r6
	mov	r2, #0
	mov	r3, r0
.Le54:
	mov	r1, #1
	add	r9, r1
	mov	r4, r9
	stmia	r3!, {r2}
	cmp	r4, #8
	bne	.Le54
	mov	r6, #0
	ldr	r5, =gOvl_020096d0
	mov	r9, r6
	mov	r6, #1
.Le68:
	ldrh	r0, [r5]
	add	r5, #2
	bl	__GetFlag
	cmp	r0, #0
	beq	.Le84
	ldr	r1, [sp, #8]
	mov	r3, r6
	mov	r0, r9
	lsl	r3, r0
	orr	r1, r3
	lsl	r3, r1, #24
	lsr	r3, #24
	str	r3, [sp, #8]
.Le84:
	mov	r2, #1
	add	r9, r2
	mov	r3, r9
	cmp	r3, #6
	bne	.Le68
	mov	r4, #0
	ldr	r7, [sp, #4]
	mov	r9, r4
.Le94:
	ldr	r2, =.L16c0
	mov	r6, r9
	lsl	r3, r6, #2
	ldr	r0, [r2, r3]
	bl	__GetUnit
	mov	r12, r0
	mov	r1, r12
	add	r1, #0x10
	mov	r0, #0
	ldrsh	r3, [r1, r0]
	ldr	r0, =0x7cf
	ldrh	r2, [r1]
	cmp	r3, r0
	ble	.Leb6
	strh	r0, [r1]
	mov	r2, r0
.Leb6:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.Lec0
	mov	r3, #0
	strh	r3, [r1]
.Lec0:
	mov	r4, #2
	ldrsh	r3, [r1, r4]
	ldrh	r2, [r1, #2]
	cmp	r3, r0
	ble	.Lece
	strh	r0, [r1, #2]
	mov	r2, r0
.Lece:
	lsl	r3, r2, #16
	cmp	r3, #0
	bge	.Led8
	mov	r3, #0
	strh	r3, [r1, #2]
.Led8:
	ldrh	r3, [r1, #8]
	ldr	r2, =0x3e7
	cmp	r3, r2
	bls	.Lee2
	strh	r2, [r1, #8]
.Lee2:
	ldrh	r3, [r1, #0xa]
	cmp	r3, r2
	bls	.Leea
	strh	r2, [r1, #0xa]
.Leea:
	ldrh	r3, [r1, #0xc]
	cmp	r3, r2
	bls	.Lef2
	strh	r2, [r1, #0xc]
.Lef2:
	ldrb	r3, [r1, #0xe]
	cmp	r3, #0x63
	bls	.Lefc
	mov	r3, #0x63
	strb	r3, [r1, #0xe]
.Lefc:
	mov	r3, #0
	ldrsh	r2, [r1, r3]
	mov	r4, #2
	ldrsh	r3, [r1, r4]
	lsl	r2, #21
	lsl	r3, #10
	orr	r2, r3
	ldrh	r3, [r1, #8]
	orr	r2, r3
	str	r2, [r7]
	ldrh	r3, [r1, #0xc]
	ldrh	r2, [r1, #0xa]
	lsl	r3, #12
	lsl	r2, #22
	orr	r2, r3
	ldrb	r3, [r1, #0xe]
	lsl	r3, #4
	orr	r2, r3
	mov	r6, r9
	str	r2, [r7, #4]
	lsl	r0, r6, #3
	mov	r6, r12
	ldrb	r2, [r6, #0xf]
	mov	r3, r2
	cmp	r3, #0x63
	bls	.Lf36
	mov	r3, #0x63
	strb	r3, [r6, #0xf]
	mov	r2, #0x63
.Lf36:
	mov	r3, r2
	cmp	r3, #0
	bne	.Lf42
	mov	r3, #1
	mov	r1, r12
	strb	r3, [r1, #0xf]
.Lf42:
	mov	r2, r12
	ldrb	r3, [r2, #0xf]
	mov	r4, r9
	sub	r2, r0, r4
	ldr	r6, [sp, #0x14]
	lsl	r3, r2
	orr	r6, r3
	mov	r2, r12
	str	r6, [sp, #0x14]
	mov	r5, #0
	add	r2, #0xf8
	mov	r1, #0
.Lf5a:
	ldmia	r2!, {r3}
	ldr	r0, [sp, #0x10]
	lsl	r3, r1
	add	r0, r3
	add	r5, #1
	str	r0, [sp, #0x10]
	add	r1, #7
	cmp	r5, #4
	bne	.Lf5a
	ldr	r1, =0x1ff
	ldr	r2, =.L16dc
	mov	r3, #1
	mov	r0, r12
	mov	r5, #0
	mov	r8, r1
	mov	r14, r2
	mov	r10, r3
	add	r0, #0xd8
.Lf7e:
	ldrh	r3, [r0]
	mov	r1, r8
	mov	r4, #0
	and	r1, r3
	mov	r2, r14
.Lf88:
	ldrh	r3, [r2]
	add	r2, #2
	cmp	r1, r3
	bne	.Lf9e
	ldr	r6, [sp, #0xc]
	mov	r3, r10
	lsl	r3, r4
	orr	r6, r3
	lsl	r3, r6, #24
	lsr	r3, #24
	str	r3, [sp, #0xc]
.Lf9e:
	add	r4, #1
	cmp	r4, #8
	bne	.Lf88
	add	r5, #1
	add	r0, #2
	cmp	r5, #0xf
	bne	.Lf7e
	mov	r0, #1
	add	r9, r0
	mov	r1, r9
	add	r7, #8
	cmp	r1, #4
	beq	.Lfba
	b	.Le94
.Lfba:
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	beq	.Lfc2
	b	.L1108
.Lfc2:
	mov	r3, #0x27
	mov	r6, #0
	mov	r10, r3
	mov	r9, r6
.Lfca:
	mov	r4, r9
	ldr	r3, =.L16c0
	lsl	r2, r4, #2
	ldr	r0, [r3, r2]
	bl	__GetUnit
	mov	r5, r10
	mov	r4, r0
	mov	r0, #0xd8
	mov	r7, #0
	mov	r8, r0
	add	r5, r11
.Lmm_fe2:
	mov	r1, r8
	ldrh	r0, [r1, r4]
	str	r4, [sp]
	bl	__GetItemInfo
	ldr	r4, [sp]
	mov	r2, r8
	ldrh	r1, [r2, r4]
	ldr	r3, .L1024	@ 0x1ff
	and	r1, r3
	add	r0, r6, #1
	ldrb	r3, [r5]
	mov	r2, r1
	asr	r2, r0
	add	r3, r2
	strb	r3, [r5]
	mov	r3, #7
	sub	r3, r6
	lsl	r1, r3
	ldrb	r3, [r5, #1]
	add	r3, r1
	strb	r3, [r5, #1]
	mov	r6, r0
	mov	r3, #1
	add	r5, #1
	add	r10, r3
	cmp	r6, #7
	bne	.L1040
	mov	r6, #0
	add	r5, #1
	add	r10, r3
	b	.L1040

	.align	2, 0
.L1024:
	.word	0x1ff
	.pool

.L1040:
	mov	r0, #2
	add	r7, #1
	add	r8, r0
	cmp	r7, #0xf
	bne	.Lmm_fe2
	mov	r1, #1
	add	r9, r1
	mov	r2, r9
	cmp	r2, #4
	bne	.Lfca
	mov	r3, #0x6b
	mov	r6, #1
	mov	r4, #0
	mov	r10, r3
	neg	r6, r6
	mov	r9, r4
.L1060:
	ldr	r3, =.L16c0
	mov	r0, r9
	lsl	r2, r0, #2
	ldr	r0, [r3, r2]
	bl	__GetUnit
	ldr	r2, =.L16ec
	mov	r8, r0
	mov	r1, #0
	mov	r0, r10
	mov	r14, r1
	mov	r12, r2
	add	r0, r11
.L107a:
	mov	r3, r12
	mov	r1, r8
	ldrh	r4, [r3]
	mov	r5, #0
	mov	r7, #0
	add	r1, #0xd8
.L1086:
	ldrh	r2, [r1]
	ldr	r3, =0x1ff
	and	r3, r2
	add	r1, #2
	cmp	r3, r4
	bne	.L109a
	mov	r3, #0xf8
	lsl	r3, #8
	and	r3, r2
	lsr	r5, r3, #11
.L109a:
	add	r7, #1
	cmp	r7, #0xf
	bne	.L1086
	lsl	r2, r5, #16
	cmp	r6, #0
	bge	.L10be
	lsr	r1, r2, #16
	neg	r3, r6
	mov	r2, r1
	asr	r2, r3
	ldrb	r3, [r0]
	mov	r4, #1
	add	r3, r2
	strb	r3, [r0]
	add	r10, r4
	add	r0, #1
	add	r6, #8
	b	.L10c0
.L10be:
	lsr	r1, r2, #16
.L10c0:
	ldrb	r3, [r0]
	lsl	r1, r6
	add	r3, r1
	mov	r1, #5
	sub	r6, #5
	neg	r1, r1
	strb	r3, [r0]
	cmp	r6, r1
	bne	.L10da
	mov	r2, #1
	add	r0, #1
	add	r10, r2
	mov	r6, #3
.L10da:
	mov	r4, #1
	add	r14, r4
	mov	r3, #2
	mov	r1, r14
	add	r12, r3
	cmp	r1, #0x17
	bne	.L107a
	add	r9, r4
	mov	r2, r9
	cmp	r2, #4
	bne	.L1060
	ldr	r2, =gState
	mov	r1, r11
	ldrh	r3, [r2, #0x12]
	add	r1, #0xa5
	strb	r3, [r1]
	ldr	r3, [r2, #0x10]
	add	r1, #1
	lsr	r3, #8
	strb	r3, [r1]
	ldr	r3, [r2, #0x10]
	add	r1, #1
	strb	r3, [r1]
.L1108:
	ldr	r3, [sp, #0x1c]
	cmp	r3, #2
	beq	.L117c
	ldr	r4, [sp, #0x1c]
	neg	r3, r3
	orr	r3, r4
	lsr	r3, #31
	add	r3, #8
	mov	r6, #0
	mov	r1, r11
	ldr	r4, [sp, #4]
	mov	r9, r6
	add	r0, r3, r1
.L1122:
	ldr	r2, [r4]
	lsr	r3, r2, #24
	strb	r3, [r0]
	lsr	r3, r2, #16
	strb	r3, [r0, #1]
	lsr	r3, r2, #8
	strb	r3, [r0, #2]
	strb	r2, [r0, #3]
	ldr	r1, [r4, #4]
	lsr	r3, r1, #24
	strb	r3, [r0, #4]
	lsr	r3, r1, #16
	strb	r3, [r0, #5]
	lsr	r3, r1, #8
	strb	r1, [r0, #7]
	strb	r3, [r0, #6]
	ldr	r2, [r4, #8]
	lsr	r3, r2, #28
	orr	r1, r3
	lsr	r3, r2, #20
	strb	r3, [r0, #8]
	lsr	r3, r2, #12
	strb	r3, [r0, #9]
	lsr	r3, r2, #4
	lsl	r2, #4
	strb	r2, [r0, #0xb]
	strb	r3, [r0, #0xa]
	strb	r1, [r0, #7]
	ldr	r1, [r4, #0xc]
	lsr	r3, r1, #28
	orr	r2, r3
	strb	r2, [r0, #0xb]
	lsr	r3, r1, #20
	mov	r2, #1
	strb	r3, [r0, #0xc]
	add	r9, r2
	lsr	r3, r1, #12
	strb	r3, [r0, #0xd]
	lsr	r1, #4
	mov	r3, r9
	strb	r1, [r0, #0xe]
	add	r4, #0x10
	add	r0, #0xf
	cmp	r3, #2
	bne	.L1122
.L117c:
	add	r4, sp, #0x14
	ldrb	r4, [r4]
	mov	r6, r11
	strb	r4, [r6]
	ldr	r6, [sp, #0x14]
	mov	r0, r11
	lsr	r3, r6, #8
	strb	r3, [r0, #1]
	lsr	r3, r6, #16
	strb	r3, [r0, #2]
	lsr	r2, r6, #20
	mov	r3, #0xf0
	and	r2, r3
	ldr	r3, [sp, #0x10]
	mov	r1, #0xf
	and	r3, r1
	orr	r2, r3
	strb	r2, [r0, #3]
	ldr	r1, [sp, #0x10]
	lsr	r3, r1, #4
	strb	r3, [r0, #4]
	lsr	r3, r1, #12
	strb	r3, [r0, #5]
	lsr	r3, r1, #20
	strb	r3, [r0, #6]
	add	r2, sp, #8
	ldrb	r2, [r2]
	strb	r2, [r0, #7]
	ldr	r3, [sp, #0x1c]
	cmp	r3, #0
	beq	.L11c0
	add	r4, sp, #0xc
	ldrb	r4, [r4]
	strb	r4, [r0, #8]
.L11c0:
	ldr	r0, [sp, #0x18]
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_880_2008de4

