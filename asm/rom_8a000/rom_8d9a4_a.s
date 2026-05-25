	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_808d9a4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r3, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	mov	r5, r8
	add	r3, r0
	sub	r5, #0xf2
	ldr	r6, [r3]
	cmp	r5, #5
	bhi	.L8d9e6
	bl	Func_8091660
	ldr	r3, =.L9e680
	ldrb	r3, [r3, r5]
	ldr	r0, =0x928
	mov	r8, r3
	add	r0, r8
	mov	r1, #1
	bl	_Func_801776c
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r8
	bl	_Func_801776c
	b	.L8dd72
.L8d9e6:
	mov	r0, #3
	mov	r1, r8
	bl	Func_808d48c
	mov	r7, r0
	cmp	r7, #0
	bne	.L8d9f6
	b	.L8dd5a
.L8d9f6:
	ldr	r3, [r7]
	asr	r5, r3, #4
	mov	r3, #0x1f
	mov	r2, #6
	ldrsh	r1, [r7, r2]
	and	r5, r3
	ldrh	r2, [r7, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	mov	r10, r1
	cmp	r3, #0
	bne	.L8da2c
	cmp	r5, #0
	beq	.L8da2c
	bl	Func_8091660
	ldr	r0, =0x928
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079358
	b	.L8da34
.L8da2c:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079374
.L8da34:
	ldr	r2, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #20
	and	r3, r2
	cmp	r3, #0
	bne	.L8da4e
	ldr	r3, =0xfff00000
	mov	r0, #0x80
	and	r3, r2
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8da9a
	b	.L8da82
.L8da4e:
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8da68
	ldr	r3, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r3, r1
	ldr	r0, [r3]
	ldr	r3, [r7, #8]
	bl	_call_via_r3
.L8da68:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8da76
	b	.L8dd6a
.L8da76:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
	b	.L8dd6a
.L8da82:
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	beq	.L8da90
	ldrh	r0, [r7, #8]
	b	.L8da92
.L8da90:
	ldr	r0, =0x976
.L8da92:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8dd6a
.L8da9a:
	bl	Func_80916b0
	mov	r0, r10
	bl	Func_808d428
	cmp	r0, #0
	bne	.L8daaa
	b	.L8dd46
.L8daaa:
	ldr	r1, [r7, #8]
	mov	r3, #0xf0
	lsl	r3, #12
	mov	r0, #0x80
	and	r3, r1
	lsl	r0, #9
	mov	r2, #1
	cmp	r3, r0
	bne	.L8dac2
	cmp	r6, #7
	bgt	.L8dac2
	mov	r2, #0
.L8dac2:
	cmp	r2, #0
	bne	.L8dac8
	b	.L8dd3c
.L8dac8:
	ldr	r2, =0x1ff
	ldr	r3, [r7]
	and	r3, r2
	mov	r11, r2
	cmp	r3, #0x13
	bne	.L8dadc
	mov	r0, r8
	bl	Func_808ece0
	ldr	r1, [r7, #8]
.L8dadc:
	ldr	r3, =0xfff00000
	mov	r0, #0xc0
	and	r3, r1
	lsl	r0, #14
	cmp	r3, r0
	bne	.L8db98
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8daf8
	mov	r0, r8
	bl	Func_808ed1c
.L8daf8:
	mov	r0, r8
	bl	Func_808ed4c
	mov	r6, r0
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_Func_80f9080
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_8019908
	ldr	r5, =0x970
	mov	r1, #3
	mov	r0, r5
	bl	_Func_801776c
	mov	r1, #0
	ldr	r0, =0x3e7
	bl	Func_808c2dc
	mov	r0, #1
	bl	_Func_801ef08
	mov	r0, #0x7e
	bl	_Func_80f9080
	add	r0, r5, #1
	mov	r1, #1
	bl	_Func_801776c
	bl	_Func_801f5d4
	mov	r1, #2
	mov	r0, r6
	bl	_Func_800c300
	mov	r0, #0xf6
	bl	_Func_80f9080
	add	r5, #2
	mov	r0, #0x1e
	bl	Func_809163c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, r8
	bl	Func_808ed78
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	bne	.L8db6a
	b	.L8dd50
.L8db6a:
	mov	r0, r10
	bl	_Func_8079358
	b	.L8dd50

	.pool_aligned

.L8db98:
	mov	r0, #0xa0
	lsl	r0, #15
	cmp	r3, r0
	bne	.L8dc18
	ldr	r3, =iwram_3001ebc
	ldr	r5, [r3]
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dbb4
	mov	r0, r8
	bl	Func_808ec8c
.L8dbb4:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dbd0
	ldr	r2, .L8dbf8	@ 0x1000
	mov	r1, r10
	orr	r1, r2
	ldr	r3, =ewram_2000240
	mov	r0, #0x8d
	lsl	r0, #2
	mov	r10, r1
	add	r3, r0
	mov	r2, r10
	strh	r2, [r3]
.L8dbd0:
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	Func_808b05c
	mov	r1, #0xbe
	lsl	r1, #1
	add	r3, r5, r1
	strh	r0, [r3]
	ldr	r5, =ewram_2000240
	ldr	r3, =0x22b
	add	r2, r5, r3
	mov	r3, #2
	strb	r3, [r2]
	ldrh	r1, [r7, #8]
	mov	r0, #0x63
	bl	Func_808b320
	mov	r0, #0xf7
	b	.L8dc08

	.align	2, 0
.L8dbf8:
	.word	0x1000
	.pool

.L8dc08:
	lsl	r0, #1
	add	r3, r5, r0
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	_Func_80f9080
	ldr	r0, =0x973
	b	.L8dd3e
.L8dc18:
	mov	r2, #0x80
	lsl	r2, #14
	cmp	r3, r2
	bne	.L8dc80
	ldr	r3, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #0
	bl	Func_808ef70
	mov	r5, r0
	mov	r0, #0x1e
	bl	Func_80030f8
	ldr	r3, [r7]
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0x13
	bne	.L8dc48
	mov	r0, r8
	bl	Func_808ed1c
.L8dc48:
	mov	r0, r5
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_Func_80f9080
	ldrh	r0, [r7, #8]
	mov	r1, #5
	bl	_Func_8019908
	ldr	r0, =0x969
	mov	r1, #3
	bl	_Func_801776c
	ldrh	r0, [r7, #8]
	bl	_Func_8079700
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dc78
	mov	r0, r10
	bl	_Func_8079358
.L8dc78:
	mov	r0, r5
	bl	_Func_800c0f4
	b	.L8dd50
.L8dc80:
	ldr	r3, =ewram_2000434
	ldr	r2, =0xfff
	ldr	r0, [r3]
	and	r1, r2
	bl	Func_808ef70
	mov	r9, r0
	mov	r0, #0x1e
	bl	Func_80030f8
	ldrh	r0, [r7, #8]
	bl	_Func_8078618
	mov	r3, #1
	mov	r6, r0
	neg	r3, r3
	ldr	r5, =0xffff
	cmp	r6, r3
	bne	.L8dcde
	ldr	r0, [r7, #8]
	ldr	r1, =0xfff
	and	r0, r1
	mov	r1, #2
	bl	_Func_8019908
	ldr	r5, =0x968
	mov	r1, #1
	mov	r0, r5
	add	r5, #4
	bl	_Func_801776c
	mov	r0, r5
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, r9
	bl	Func_808f0c8
	ldr	r3, [r7]
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8dd50
	mov	r0, r8
	bl	Func_808ec50
	b	.L8dd50
.L8dcde:
	ldr	r3, [r7]
	mov	r0, r11
	and	r3, r0
	cmp	r3, #0x13
	bne	.L8dcee
	mov	r0, r8
	bl	Func_808ed1c
.L8dcee:
	mov	r0, r9
	bl	Func_808f0d8
	mov	r0, #0x53
	bl	_Func_80f9080
	ldr	r0, [r7, #8]
	mov	r1, #2
	and	r0, r5
	bl	_Func_8019908
	ldr	r1, =ewram_2000434
	ldr	r3, [r1]
	cmp	r6, r3
	bne	.L8dd16
	ldr	r0, =0x96a
	mov	r1, #3
	bl	_Func_801776c
	b	.L8dd26
.L8dd16:
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	ldr	r0, =0x96b
	mov	r1, #3
	bl	_Func_801776c
.L8dd26:
	mov	r2, #1
	neg	r2, r2
	cmp	r10, r2
	beq	.L8dd34
	mov	r0, r10
	bl	_Func_8079358
.L8dd34:
	mov	r0, r9
	bl	_Func_800c0f4
	b	.L8dd50
.L8dd3c:
	ldr	r0, =0x96f
.L8dd3e:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8dd50
.L8dd46:
	ldr	r0, =0x948
	mov	r1, #1
	add	r0, r5, r0
	bl	_Func_801776c
.L8dd50:
	bl	Func_8091750
	bl	Func_809202c
	b	.L8dd6a
.L8dd5a:
	ldr	r0, =0x92d
	mov	r1, #1
	bl	_Func_801776c
	ldr	r0, =0x94d
	mov	r1, #1
	bl	_Func_801776c
.L8dd6a:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079374
.L8dd72:
	mov	r0, #0
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808d9a4

.thumb_func_start Func_808ddb8
	push	{lr}
	ldr	r2, =.L9e686
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
	mov	r1, #0x10
	b	.L8ddd2
.L8ddc8:
	add	r2, #2
	mov	r4, #0
	ldrsh	r3, [r2, r4]
	mov	r4, #1
	neg	r4, r4
.L8ddd2:
	cmp	r3, r4
	beq	.L8dde0
	add	r2, #2
	cmp	r0, r3
	bne	.L8ddc8
	mov	r3, #0
	ldrsh	r1, [r2, r3]
.L8dde0:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end Func_808ddb8

.thumb_func_start Func_808ddec
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r1, #1
	sub	sp, #4
	neg	r1, r1
	mov	r2, #0x20
	mov	r9, r0
	str	r1, [sp]
	mov	r11, r2
	bl	Func_808ba1c
	mov	r7, r0
	cmp	r7, #0
	beq	.L8def2
	mov	r3, #0
	mov	r10, r3
.L8de16:
	cmp	r10, r9
	beq	.L8dee8
	mov	r0, r10
	bl	Func_808ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8dee8
	mov	r1, #0x59
	add	r1, r6
	ldrb	r2, [r1]
	mov	r3, #8
	and	r3, r2
	mov	r8, r1
	cmp	r3, #0
	bne	.L8dee8
	ldr	r4, [r6, #0xc]
	ldr	r1, [r7, #0xc]
	sub	r3, r4, r1
	cmp	r3, #0
	blt	.L8de48
	ldr	r2, =0x2fffff
	cmp	r3, r2
	ble	.L8de50
	b	.L8dee8
.L8de48:
	ldr	r2, =0x2fffff
	sub	r3, r1, r4
	cmp	r3, r2
	bgt	.L8dee8
.L8de50:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L8de5e
	ldr	r3, =0xffff
	add	r0, r3
.L8de5e:
	sub	r2, r4, r1
	asr	r0, #16
	cmp	r2, #0
	bge	.L8de6a
	ldr	r1, =0xffff
	add	r2, r1
.L8de6a:
	asr	r1, r2, #16
	ldr	r3, [r7, #0x10]
	ldr	r2, [r6, #0x10]
	sub	r2, r3
	cmp	r2, #0
	bge	.L8de7a
	ldr	r3, =0xffff
	add	r2, r3
.L8de7a:
	asr	r3, r2, #16
	mov	r2, r0
	mul	r2, r0
	mov	r0, r2
	mov	r2, r1
	mul	r2, r1
	mov	r1, r3
	mul	r1, r3
	add	r0, r2
	mov	r3, r1
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r3, r8
	ldrb	r2, [r3]
	mov	r3, #4
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L8deb2
	lsl	r0, r5, #2
	add	r0, r5
	lsl	r0, #1
	mov	r1, #0xd
	bl	Func_af0_from_thumb
	mov	r5, r0
.L8deb2:
	cmp	r5, r11
	bge	.L8dee8
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	Func_80044d0
	lsl	r0, #16
	lsr	r0, #16
	cmp	r5, #0xb
	ble	.L8dee2
	ldrh	r3, [r7, #6]
	sub	r3, r0, r3
	lsl	r3, #16
	ldr	r1, =0xffffd001
	asr	r0, r3, #16
	cmp	r0, r1
	blt	.L8dee8
	ldr	r2, =0x2fff
	cmp	r0, r2
	bgt	.L8dee8
.L8dee2:
	mov	r3, r10
	str	r3, [sp]
	mov	r11, r5
.L8dee8:
	mov	r1, #1
	add	r10, r1
	mov	r2, r10
	cmp	r2, #0x42
	ble	.L8de16
.L8def2:
	ldr	r0, [sp]
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808ddec

.thumb_func_start Func_808df1c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	mov	r8, r1
	mov	r1, #1
	str	r0, [sp, #8]
	neg	r1, r1
	mov	r0, r8
	str	r1, [sp, #4]
	bl	Func_808ddb8
	str	r0, [sp]
	ldr	r0, [sp, #8]
	bl	Func_808ba1c
	mov	r7, r0
	cmp	r7, #0
	bne	.L8df4c
	b	.L8e05c
.L8df4c:
	ldrh	r3, [r7, #6]
	mov	r2, #0x80
	lsl	r2, #6
	add	r2, r3
	mov	r3, #0xc0
	lsl	r3, #8
	and	r2, r3
	mov	r3, #0
	mov	r11, r2
	mov	r9, r3
.L8df60:
	ldr	r1, [sp, #8]
	cmp	r9, r1
	beq	.L8e052
	mov	r0, r9
	bl	Func_808ba1c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e052
	mov	r2, #0x59
	add	r2, r6
	mov	r10, r2
	ldrb	r2, [r2]
	mov	r3, #8
	and	r3, r2
	cmp	r3, #0
	bne	.L8e052
	mov	r0, #0x80
	mov	r3, r8
	lsl	r0, #12
	cmp	r3, #0xd
	bne	.L8df90
	mov	r0, #0xc0
	lsl	r0, #14
.L8df90:
	mov	r1, r8
	cmp	r1, #5
	bne	.L8df9a
	mov	r0, #0x80
	lsl	r0, #15
.L8df9a:
	mov	r2, r8
	cmp	r2, #2
	bne	.L8dfa4
	mov	r0, #0x80
	lsl	r0, #13
.L8dfa4:
	ldr	r1, [r6, #0xc]
	ldr	r3, [r7, #0xc]
	sub	r2, r1, r3
	cmp	r2, #0
	blt	.L8dfb4
	cmp	r2, r0
	ble	.L8dfba
	b	.L8e052
.L8dfb4:
	sub	r3, r1
	cmp	r3, r0
	bgt	.L8e052
.L8dfba:
	ldr	r2, [r6, #8]
	ldr	r3, [r7, #8]
	sub	r0, r2, r3
	cmp	r0, #0
	bge	.L8dfc8
	ldr	r3, =0xffff
	add	r0, r3
.L8dfc8:
	ldr	r2, [r6, #0x10]
	ldr	r3, [r7, #0x10]
	sub	r2, r3
	asr	r0, #16
	cmp	r2, #0
	bge	.L8dfd8
	ldr	r1, =0xffff
	add	r2, r1
.L8dfd8:
	asr	r3, r2, #16
	mov	r1, r3
	mul	r1, r3
	mov	r2, r0
	mul	r2, r0
	mov	r3, r1
	mov	r0, r2
	add	r0, r3
	ldr	r3, =Func_8000948
	bl	_call_via_r3
	mov	r3, r10
	ldrb	r2, [r3]
	mov	r3, #0x10
	and	r3, r2
	mov	r5, r0
	cmp	r3, #0
	beq	.L8e006
	lsl	r0, r5, #1
	mov	r1, #3
	bl	Func_af0_from_thumb
	mov	r5, r0
.L8e006:
	ldr	r1, [sp]
	cmp	r5, r1
	bge	.L8e052
	ldr	r3, [r7, #0x10]
	ldr	r0, [r6, #0x10]
	ldr	r1, [r6, #8]
	sub	r0, r3
	ldr	r3, [r7, #8]
	sub	r1, r3
	bl	Func_80044d0
	mov	r2, #0xc0
	lsl	r0, #16
	lsr	r0, #16
	lsl	r2, #5
	cmp	r5, #0x13
	ble	.L8e02c
	mov	r2, #0x80
	lsl	r2, #5
.L8e02c:
	mov	r3, r8
	cmp	r3, #2
	bne	.L8e036
	mov	r2, #0x80
	lsl	r2, #6
.L8e036:
	cmp	r5, #0xb
	ble	.L8e04c
	mov	r1, r11
	sub	r3, r0, r1
	lsl	r3, #16
	asr	r0, r3, #16
	cmp	r0, #0
	bge	.L8e048
	neg	r0, r0
.L8e048:
	cmp	r0, r2
	bge	.L8e052
.L8e04c:
	mov	r2, r9
	str	r2, [sp, #4]
	str	r5, [sp]
.L8e052:
	mov	r3, #1
	add	r9, r3
	mov	r1, r9
	cmp	r1, #0x42
	ble	.L8df60
.L8e05c:
	ldr	r0, [sp, #4]
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808df1c

.thumb_func_start Func_808e078
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, r1
	mov	r6, r2
	bl	Func_8092054
	mov	r5, r0
	mov	r0, #0
	cmp	r5, #0
	beq	.L8e0a8
	mov	r0, #0x7c
	bl	_Func_80f9080
	mov	r1, #4
	mov	r0, r5
	bl	_Func_800c300
	mov	r0, #0xc
	bl	Func_80030f8
	mov	r0, r7
	mov	r1, r6
	bl	Func_808ef70
.L8e0a8:
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e078

.thumb_func_start Func_808e0b0
	push	{lr}
	mov	r3, r0
	add	r3, #0x54
	ldrb	r2, [r3]
	mov	r3, #0xf
	and	r3, r2
	cmp	r3, #1
	bne	.L8e10a
	ldr	r0, [r0, #0x50]
	sub	r4, r1, #1
	mov	r12, r0
	cmp	r1, #0
	bne	.L8e0d8
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	ldr	r1, =.L9e6b8
	lsr	r3, #1
	mov	r2, #7
	and	r3, r2
	ldrb	r4, [r1, r3]
.L8e0d8:
	mov	r3, r12
	add	r3, #0x27
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L8e102
	mov	r0, r12
	add	r0, #0x28
	mov	r1, r3
.L8e0e8:
	ldmia	r0!, {r2}
	cmp	r2, #0
	beq	.L8e0fc
	ldr	r3, [r2, #0x10]
	cmp	r3, #0
	beq	.L8e0fc
	ldrb	r3, [r2, #5]
	cmp	r3, #0xf
	beq	.L8e0fc
	strb	r4, [r2, #5]
.L8e0fc:
	sub	r1, #1
	cmp	r1, #0
	bne	.L8e0e8
.L8e102:
	mov	r2, r12
	add	r2, #0x25
	mov	r3, #1
	strb	r3, [r2]
.L8e10a:
	pop	{r0}
	bx	r0
.func_end Func_808e0b0

.thumb_func_start Func_808e118
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, =0xcb6
	ldr	r3, [r3]
	add	r1, r3, r2
	mov	r2, #0
	strh	r2, [r1]
	ldr	r2, =0xcb8
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L8e138
	ldr	r0, =0x2090
	bl	Func_808e5d8
.L8e138:
	pop	{r0}
	bx	r0
.func_end Func_808e118

.thumb_func_start Func_808e14c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001ebc
	ldr	r5, =ewram_2000240
	mov	r1, #0xfa
	lsl	r1, #1
	add	r5, r1
	ldr	r3, [r3]
	mov	r8, r0
	ldr	r0, [r5]
	ldr	r6, [r3, #0x10]
	sub	sp, #4
	bl	Func_808ba1c
	ldrh	r0, [r0, #6]
	mov	r11, r0
	ldr	r0, [r5]
	bl	Func_808ddec
	ldr	r3, =0x1ff
	mov	r2, r8
	and	r2, r3
	mov	r9, r0
	mov	r8, r2
	bl	Func_808bd24
	mov	r3, #1
	ldr	r1, [r6]
	neg	r3, r3
	mov	r10, r0
	cmp	r1, r3
	beq	.L8e224
.L8e196:
	mov	r3, #4
	ldrsh	r5, [r6, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r6, #4]
	and	r5, r3
	ldr	r3, .L8e1d4	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r7, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #4
	bne	.L8e216
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e216
	cmp	r7, #0
	beq	.L8e1f2
	mov	r2, r11
	ldr	r1, =0x17ff
	sub	r3, r5, r2
	add	r3, r1
	b	.L8e1e8

	.align	2, 0
.L8e1d4:
	.word	0x800
	.pool

.L8e1e8:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e216
.L8e1f2:
	mov	r1, r8
	ldr	r2, [r6]
	ldrb	r3, [r6, #1]
	cmp	r1, #0
	beq	.L8e200
	cmp	r3, r8
	bne	.L8e216
.L8e200:
	mov	r3, #0x10
	and	r3, r2
	cmp	r3, #0
	beq	.L8e210
	cmp	r4, r9
	bne	.L8e216
	mov	r0, r6
	b	.L8e226
.L8e210:
	mov	r0, r6
	cmp	r4, r10
	beq	.L8e226
.L8e216:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e196
.L8e224:
	mov	r0, #0
.L8e226:
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e14c

.thumb_func_start Func_808e23c
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =0x3ff
	mov	r2, #1
	sub	sp, #8
	mov	r11, r3
	neg	r2, r2
	str	r2, [sp]
	mov	r2, r11
	and	r2, r0
	mov	r3, #0xf
	asr	r0, #10
	and	r0, r3
	mov	r11, r2
	mov	r10, r0
	str	r1, [sp, #4]
	bl	_Func_80795fc
	mov	r2, r10
	mov	r7, #0
	mov	r8, r0
	cmp	r2, #0xf
	bne	.L8e2be
	mov	r3, #0
	mov	r10, r3
	mov	r6, #0
	cmp	r10, r8
	bge	.L8e2de
	ldr	r3, =ewram_2000240
	ldr	r0, =0x1ff
	mov	r2, #0xfc
	lsl	r2, #1
	mov	r9, r0
	add	r5, r3, r2
.L8e28a:
	ldrb	r0, [r5]
	bl	_Func_8077394
	mov	r4, #0
	add	r0, #0xd8
	mov	r1, #0xe
.L8e296:
	ldrh	r2, [r0]
	mov	r3, r9
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2a4
	add	r4, #1
.L8e2a4:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e296
	cmp	r7, r4
	bge	.L8e2b4
	ldrb	r3, [r5]
	mov	r7, r4
	mov	r10, r3
.L8e2b4:
	add	r6, #1
	add	r5, #1
	cmp	r6, r8
	blt	.L8e28a
	b	.L8e2de
.L8e2be:
	mov	r0, r10
	bl	_Func_8077394
	ldr	r4, =0x1ff
	add	r0, #0xd8
	mov	r1, #0xe
.L8e2ca:
	ldrh	r2, [r0]
	mov	r3, r4
	and	r3, r2
	add	r0, #2
	cmp	r3, r11
	bne	.L8e2d8
	add	r7, #1
.L8e2d8:
	sub	r1, #1
	cmp	r1, #0
	bge	.L8e2ca
.L8e2de:
	cmp	r7, #0
	bne	.L8e2f0
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_801776c
	mov	r0, #1
	neg	r0, r0
	b	.L8e470
.L8e2f0:
	mov	r0, r11
	bl	Func_808e14c
	mov	r6, r0
	cmp	r6, #0
	beq	.L8e376
	ldr	r3, [r6, #8]
	cmp	r3, #0
	beq	.L8e376
	ldr	r0, =0x143
	bl	_Func_8079374
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079374
	ldrh	r2, [r6, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	bne	.L8e334
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_801776c
.L8e334:
	mov	r0, #0x80
	ldr	r3, [r6, #8]
	lsl	r0, #9
	cmp	r3, r0
	bge	.L8e366
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	bl	Func_808ddec
	mov	r5, r0
	bl	Func_80916b0
	ldr	r0, [r6, #8]
	bl	Func_8092b94
	mov	r0, r5
	mov	r1, #0
	bl	Func_8092f84
	bl	Func_8091750
	b	.L8e370
.L8e366:
	mov	r0, r11
	mov	r1, r10
	ldr	r2, [sp, #4]
	bl	_call_via_r3
.L8e370:
	mov	r3, #0
	str	r3, [sp]
	b	.L8e448
.L8e376:
	mov	r7, #0xa1
	ldr	r0, =0x143
	lsl	r7, #1
	bl	_Func_8079374
	mov	r0, r7
	bl	_Func_8079358
	mov	r0, r11
	bl	_Func_8078414
	ldr	r3, =iwram_3001ebc
	ldrh	r5, [r0, #0x28]
	ldr	r3, [r3]
	mov	r8, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x145
	bl	_Func_8079358
	mov	r0, r7
	bl	_Func_8079374
	cmp	r5, #0x95
	bne	.L8e3fc
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8e3fc
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	mov	r1, #0xd
	ldr	r0, =0x924
	bl	_Func_801776c
	mov	r0, #1
	bl	Func_8091d84
	mov	r6, r0
	bl	_Func_8019a54
	mov	r0, #0
	cmp	r6, #0
	bne	.L8e470
	ldr	r1, =ewram_2000240
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r1, r0
	ldrh	r2, [r3]
	sub	r0, #0x80
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r2, =0x242
	add	r3, r1, r2
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r2, #0xb8
	lsl	r2, #1
	ldr	r3, =0x3e7
	add	r2, r8
	strh	r3, [r2]
.L8e3fc:
	mov	r0, r10
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r11
	mov	r1, #2
	bl	_Func_8019908
	ldr	r6, =0xcc6
	ldr	r0, =0x91c
	mov	r1, #1
	bl	_Func_801776c
	mov	r1, #0
	mov	r0, r5
	bl	Func_8096fb0
	add	r6, r8
	mov	r2, #0
	mov	r5, #1
	mov	r8, r2
	strb	r5, [r6]
	bl	Func_8096810
	mov	r3, r8
	strb	r3, [r6]
	bl	Func_8097194
	mov	r0, r11
	bl	_Func_8078414
	ldrb	r3, [r0, #0xc]
	and	r5, r3
	cmp	r5, #0
	beq	.L8e448
	ldr	r0, =0x143
	bl	_Func_8079358
.L8e448:
	mov	r0, #0xa1
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e45c
	ldr	r0, =0x927
	mov	r1, #1
	bl	_Func_801776c
.L8e45c:
	ldr	r0, =0x143
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e46e
	mov	r0, r10
	ldr	r1, [sp, #4]
	bl	_Func_80788c4
.L8e46e:
	ldr	r0, [sp]
.L8e470:
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e23c

.thumb_func_start Func_808e4b4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r6, r2
	ldr	r3, =iwram_3001ebc
	ldr	r5, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r5, r2
	ldr	r3, [r3]
	mov	r9, r0
	ldr	r0, [r5]
	sub	sp, #0xc
	ldr	r7, [r3, #0x10]
	mov	r10, r1
	bl	Func_808ba1c
	ldrh	r0, [r0, #6]
	str	r0, [sp, #8]
	mov	r1, r10
	ldr	r0, [r5]
	bl	Func_808df1c
	mov	r3, #0
	str	r0, [r6]
	mov	r8, r0
	mov	r11, r3
	bl	Func_808bd24
	ldr	r2, =0x70000005
	str	r0, [sp, #4]
	cmp	r9, r2
	bne	.L8e502
	mov	r3, #1
	mov	r11, r3
.L8e502:
	mov	r2, #1
	ldr	r1, [r7]
	neg	r2, r2
	cmp	r1, r2
	beq	.L8e5bc
.L8e50c:
	mov	r3, #4
	ldrsh	r5, [r7, r3]
	mov	r3, #0xf0
	lsl	r3, #8
	ldrh	r2, [r7, #4]
	and	r5, r3
	ldr	r3, .L8e54c	@ 0x800
	and	r3, r2
	lsl	r3, #16
	asr	r6, r3, #16
	mov	r3, #0xf
	mov	r4, #0xff
	and	r3, r1
	and	r4, r2
	cmp	r3, #5
	bne	.L8e5ae
	mov	r2, #6
	ldrsh	r0, [r7, r2]
	str	r4, [sp]
	bl	Func_808d428
	ldr	r4, [sp]
	cmp	r0, #0
	beq	.L8e5ae
	cmp	r6, #0
	beq	.L8e56a
	ldr	r2, [sp, #8]
	sub	r3, r5, r2
	ldr	r2, =0x17ff
	add	r3, r2
	b	.L8e560

	.align	2, 0
.L8e54c:
	.word	0x800
	.pool

.L8e560:
	lsl	r3, #16
	ldr	r2, =0x2ffe
	lsr	r3, #16
	cmp	r3, r2
	bhi	.L8e5ae
.L8e56a:
	ldrb	r0, [r7, #1]
	str	r4, [sp]
	bl	_Func_8078b9c
	ldrb	r3, [r0, #0xc]
	ldr	r4, [sp]
	cmp	r3, r10
	bne	.L8e5ae
	mov	r3, r11
	cmp	r3, #0
	bne	.L8e58c
	ldr	r1, [r7]
	ldr	r3, =0x7000000f
	and	r3, r1
	cmp	r3, r9
	bne	.L8e5ae
	b	.L8e58e
.L8e58c:
	ldr	r1, [r7]
.L8e58e:
	mov	r3, #0x80
	and	r3, r1
	mov	r0, r7
	cmp	r3, #0
	bne	.L8e5be
	mov	r3, #0x10
	and	r3, r1
	cmp	r3, #0
	beq	.L8e5a6
	cmp	r4, r8
	bne	.L8e5ae
	b	.L8e5be
.L8e5a6:
	ldr	r2, [sp, #4]
	mov	r0, r7
	cmp	r4, r2
	beq	.L8e5be
.L8e5ae:
	add	r7, #0xc
	ldr	r3, [r7]
	mov	r2, #1
	neg	r2, r2
	mov	r1, r3
	cmp	r3, r2
	bne	.L8e50c
.L8e5bc:
	mov	r0, #0
.L8e5be:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e4b4

.thumb_func_start Func_808e5d8
	push	{r5, r6, lr}
	mov	r6, r11
	mov	r5, r10
	push	{r5, r6}
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6}
	ldr	r3, =0x3ff
	mov	r5, r0
	and	r3, r5
	mov	r8, r3
	mov	r0, r8
	mov	r3, #0xf
	lsr	r5, #10
	sub	sp, #4
	and	r5, r3
	bl	_Func_8078b9c
	ldr	r6, =ewram_2000240
	mov	r3, #0xfa
	lsl	r3, #1
	ldrb	r0, [r0, #0xc]
	add	r6, r3
	mov	r9, r0
	ldr	r0, [r6]
	bl	Func_808ba1c
	mov	r10, sp
	mov	r1, r9
	mov	r2, r10
	ldr	r0, =0x30000005
	bl	Func_808e4b4
	mov	r2, r10
	mov	r11, r0
	mov	r1, r9
	ldr	r0, =0x20000005
	bl	Func_808e4b4
	mov	r1, #0
	mov	r10, r0
	mov	r0, r8
	bl	Func_8096fb0
	ldr	r0, [r6]
	ldr	r1, [sp]
	bl	Func_80970f8
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r11
	bl	Func_8096b28
	bl	Func_8096af0
	bl	Func_8097174
	mov	r1, r5
	ldr	r2, [sp]
	mov	r0, r10
	bl	Func_8096b28
	bl	Func_8097194
	mov	r0, #0
	add	sp, #4
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r3}
	mov	r11, r3
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end Func_808e5d8

.thumb_func_start Func_808e680
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r8, r0
	ldr	r0, =0x3ff
	ldr	r3, =iwram_3001ebc
	mov	r2, r8
	and	r2, r0
	mov	r9, r2
	ldr	r3, [r3]
	mov	r0, r9
	sub	sp, #0xc
	mov	r10, r3
	bl	_Func_8078b9c
	mov	r3, r8
	ldrb	r0, [r0, #0xc]
	lsr	r6, r3, #10
	mov	r3, #0xf
	and	r6, r3
	mov	r11, r0
	ldr	r3, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	Func_808ba1c
	mov	r2, #0
	str	r2, [sp]
	bl	Func_8091660
	ldr	r0, =0x145
	bl	_Func_8079374
	cmp	r6, #0xf
	bne	.L8e6d4
	mov	r6, #0
.L8e6d4:
	mov	r0, #0xbf
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e6fa
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r9
.L8e6ea:
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x91f
.L8e6f2:
	mov	r1, #1
	bl	_Func_801776c
	b	.L8e91e
.L8e6fa:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e71a
	mov	r2, r9
	cmp	r2, #0x90
	bne	.L8e71a
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #0x90
	b	.L8e6ea
.L8e71a:
	mov	r3, r9
	cmp	r3, #0x95
	bne	.L8e78e
	mov	r0, #0xa2
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e740
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x921
	b	.L8e6f2
.L8e740:
	mov	r0, #0x95
	mov	r1, #4
	bl	_Func_8019908
	mov	r1, #0xd
	ldr	r0, =0x920
	bl	_Func_801776c
	mov	r0, #1
	bl	Func_8091d84
	mov	r5, r0
	bl	_Func_8019a54
	mov	r0, #0
	cmp	r5, #0
	beq	.L8e764
	b	.L8e920
.L8e764:
	ldr	r1, =ewram_2000240
	mov	r0, #0x90
	lsl	r0, #2
	add	r3, r1, r0
	ldrh	r2, [r3]
	sub	r0, #0x80
	add	r3, r1, r0
	strh	r2, [r3]
	ldr	r2, =0x242
	add	r3, r1, r2
	ldrh	r3, [r3]
	add	r0, #2
	add	r2, r1, r0
	strh	r3, [r2]
	mov	r2, #0xb8
	lsl	r2, #1
	ldr	r3, =0x3e7
	add	r2, r10
	strh	r3, [r2]
	mov	r2, #1
	str	r2, [sp]
.L8e78e:
	mov	r7, #0x80
	lsl	r7, #6
	mov	r3, r8
	and	r7, r3
	cmp	r7, #0
	beq	.L8e7a2
	mov	r0, r8
	bl	Func_808e5d8
	b	.L8e920
.L8e7a2:
	cmp	r6, #7
	bgt	.L8e7ee
	mov	r0, r9
	bl	_Func_8078b9c
	ldrb	r5, [r0, #9]
	mov	r0, r6
	bl	_Func_8077394
	mov	r2, #0x3a
	ldrsh	r3, [r0, r2]
	cmp	r3, r5
	bge	.L8e7e6
	mov	r0, r6
	mov	r1, #1
	bl	_Func_8019908
	mov	r0, r9
	mov	r1, #4
	bl	_Func_8019908
	ldr	r0, =0x91e
	mov	r1, #1
	bl	_Func_801776c
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L8e7dc
	b	.L8e91e
.L8e7dc:
	mov	r3, #0xb8
	lsl	r3, #1
	add	r3, r10
	strh	r7, [r3]
	b	.L8e91e
.L8e7e6:
	neg	r1, r5
	mov	r0, r6
	bl	_Func_80783dc
.L8e7ee:
	add	r5, sp, #8
	mov	r2, r5
	mov	r1, r11
	ldr	r0, =0x10000005
	bl	Func_808e4b4
	mov	r2, r5
	str	r0, [sp, #4]
	mov	r1, r11
	mov	r0, #5
	bl	Func_808e4b4
	mov	r2, r5
	mov	r1, r11
	mov	r8, r0
	ldr	r0, =0x50000005
	bl	Func_808e4b4
	ldr	r5, =0x141
	mov	r7, r0
	mov	r3, #1
	mov	r0, #0xa0
	neg	r3, r3
	lsl	r0, #1
	str	r3, [sp, #8]
	bl	_Func_8079358
	mov	r0, r5
	bl	_Func_8079358
	ldr	r0, [sp, #4]
	cmp	r0, #0
	bne	.L8e83a
	mov	r2, r8
	cmp	r2, #0
	bne	.L8e83a
	cmp	r7, #0
	beq	.L8e86e
.L8e83a:
	ldr	r3, =ewram_2000240
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, r11
	bl	Func_808df1c
	mov	r2, r8
	str	r0, [sp, #8]
	cmp	r2, #0
	beq	.L8e874
	ldrh	r2, [r2, #4]
	mov	r3, #0x80
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L8e874
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_Func_8079374
	ldr	r0, =0x141
	bl	_Func_8079374
	b	.L8e874
.L8e86e:
	mov	r0, r5
	bl	_Func_8079374
.L8e874:
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e886
	bl	Func_808b8e8
.L8e886:
	mov	r0, r9
	mov	r1, #0
	bl	Func_8096fb0
	ldr	r2, =0xcc6
	mov	r3, #1
	add	r2, r10
	strb	r3, [r2]
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	ldr	r1, [sp, #8]
	bl	Func_80970f8
	bl	Func_809728c
	mov	r1, r6
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #4]
	bl	Func_8096b28
	mov	r0, #0xa0
	lsl	r0, #1
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e8d4
	ldr	r0, =0x141
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e8d0
	bl	Func_8096960
	b	.L8e8d4
.L8e8d0:
	bl	Func_8096810
.L8e8d4:
	bl	Func_8097174
	mov	r5, #0xa0
	ldr	r2, [sp, #8]
	mov	r0, r8
	mov	r1, r6
	lsl	r5, #1
	bl	Func_8096b28
	mov	r0, r5
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8e8f4
	bl	Func_8096ab0
.L8e8f4:
	mov	r0, r5
	bl	_Func_8079374
	ldr	r0, =0x141
	bl	_Func_8079374
	ldr	r2, =0xcc6
	mov	r3, #0
	add	r2, r10
	strb	r3, [r2]
	bl	Func_8097194
	mov	r3, #0xcf
	lsl	r3, #1
	add	r3, r10
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	cmp	r3, #3
	bne	.L8e91e
	bl	Func_808b98c
.L8e91e:
	mov	r0, #0
.L8e920:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_808e680

.thumb_func_start Func_808e96c
	push	{lr}
	mov	r1, r0
	sub	sp, #4
	lsl	r1, #16
	mov	r2, sp
	lsr	r1, #16
	ldr	r0, =0x70000005
	bl	Func_808e4b4
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	add	sp, #4
	pop	{r1}
	bx	r1
.func_end Func_808e96c

.thumb_func_start Func_808e990
	push	{lr}
	lsl	r0, #16
	lsr	r0, #16
	bl	Func_808e14c
	mov	r3, r0
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	pop	{r1}
	bx	r1
.func_end Func_808e990

.thumb_func_start Func_808e9a8
	push	{r5, lr}
	mov	r5, r0
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #0x10]
	mov	r0, #0
	bl	_Func_8011f54
	str	r0, [r5, #0xc]
	str	r0, [r5, #0x14]
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_808e9a8

.thumb_func_start Func_808e9c0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	sub	sp, #0xc
	mov	r1, #0
	ldr	r2, [r3]
	ldr	r3, [r3, #0x4c]
	str	r1, [sp]
	ldr	r2, [r2, #0x10]
	mov	r10, r2
	mov	r2, #0x8e
	lsl	r2, #1
	add	r2, r3
	mov	r8, r2
	add	r0, sp, #8
	str	r1, [r0]
	ldr	r3, =REG_DMA3SAD
	mov	r1, r8
	ldr	r2, =0x85000014
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r3, r10
	cmp	r3, #0
	bne	.L8e9fc
	b	.L8ebe2
.L8e9fc:
	mov	r4, #1
	add	r10, r4
	ldrb	r7, [r3]
	mov	r1, r10
	ldrb	r5, [r1]
	add	r10, r4
	cmp	r7, #0xff
	bne	.L8ea12
	cmp	r5, #0xff
	bne	.L8ea12
	b	.L8ebe2
.L8ea12:
	mov	r2, r10
	ldrb	r2, [r2]
	mov	r3, #1
	add	r10, r3
	mov	r3, r2
	sub	r3, #0x64
	str	r2, [sp, #4]
	cmp	r3, #0x8b
	bls	.L8ea26
	b	.L8ebc8
.L8ea26:
	ldr	r3, =__start_overlay
	ldr	r0, [r3, #0x24]
	bl	_call_via_r0
	mov	r6, r0
	mov	r4, #1
	ldr	r2, [r6]
	neg	r4, r4
	cmp	r2, r4
	bne	.L8ea3c
	b	.L8ebc8
.L8ea3c:
	mov	r1, #0x80
	lsl	r7, #20
	lsl	r1, #12
	mov	r11, r7
	mov	r9, r1
	lsl	r7, r5, #20
.L8ea48:
	mov	r4, #4
	ldrsh	r3, [r6, r4]
	ldr	r1, [sp, #4]
	cmp	r3, r1
	beq	.L8ea54
	b	.L8ebb8
.L8ea54:
	ldr	r3, =0x1ff
	and	r3, r2
	cmp	r3, #0x13
	bne	.L8eb02
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x14
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_Func_800c150
	mov	r5, r0
	cmp	r5, #0
	bne	.L8ea74
	b	.L8ebb8
.L8ea74:
	bl	Func_808e9a8
	mov	r0, r5
	mov	r1, #0
	bl	_Func_800c528
	mov	r1, #6
	ldrsh	r0, [r6, r1]
	bl	_Func_8079338
	cmp	r0, #0
	beq	.L8eaaa
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xa0
	lsl	r3, #15
	cmp	r2, r3
	bne	.L8eaa2
	mov	r0, r5
	bl	_Func_800c0f4
	b	.L8ebb8
.L8eaa2:
	mov	r0, r5
	mov	r1, #2
	bl	_Func_800c300
.L8eaaa:
	mov	r0, r5
	bl	_Func_800c4ac
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eaba
	ldr	r4, =0xffff
	add	r2, r4
.L8eaba:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eacc
	ldr	r1, =0xffff
	add	r3, r1
.L8eacc:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0x43
	strb	r3, [r2]
	add	r2, #0x36
	strb	r3, [r2]
	ldrh	r3, [r6, #4]
	mov	r2, r8
	strb	r3, [r2, #4]
	ldr	r3, [r5, #8]
	str	r5, [r2]
	cmp	r3, #0
	bge	.L8eaf0
	ldr	r4, =0xfffff
	add	r3, r4
.L8eaf0:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r1, r8
	strb	r3, [r1, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r2, =0xfffff
	add	r0, r2
	b	.L8eba2
.L8eb02:
	cmp	r3, #3
	bne	.L8ebb8
	ldr	r3, =0xfff00000
	ldr	r2, [r6, #8]
	and	r2, r3
	mov	r3, #0xc0
	lsl	r3, #14
	cmp	r2, r3
	bne	.L8ebb8
	mov	r4, #6
	ldrsh	r0, [r6, r4]
	bl	_Func_8079338
	cmp	r0, #0
	bne	.L8ebb8
	mov	r4, r9
	mov	r1, r11
	mov	r0, #0x1c
	add	r1, r9
	mov	r2, #0
	add	r3, r7, r4
	bl	_Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L8ebb8
	bl	Func_808e9a8
	mov	r1, #0
	mov	r0, r5
	bl	_Func_800c528
	mov	r0, r5
	bl	_Func_800c4ac
	mov	r0, r5
	mov	r1, #1
	bl	_Func_800c300
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L8eb5a
	ldr	r1, =0xffff
	add	r2, r1
.L8eb5a:
	mov	r3, r5
	add	r3, #0x64
	asr	r2, #16
	strh	r2, [r3]
	ldr	r3, [r5, #0x10]
	cmp	r3, #0
	bge	.L8eb6c
	ldr	r2, =0xffff
	add	r3, r2
.L8eb6c:
	mov	r2, r5
	asr	r3, #16
	add	r2, #0x66
	strh	r3, [r2]
	mov	r3, #1
	sub	r2, #0xd
	strb	r3, [r2]
	sub	r2, #0x36
	strb	r3, [r2]
	mov	r3, r8
	str	r5, [r3]
	ldrh	r3, [r6, #4]
	mov	r4, r8
	strb	r3, [r4, #4]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bge	.L8eb92
	ldr	r1, =0xfffff
	add	r3, r1
.L8eb92:
	ldr	r0, [r5, #0x10]
	asr	r3, #20
	mov	r2, r8
	strb	r3, [r2, #6]
	cmp	r0, #0
	bge	.L8eba2
	ldr	r3, =0xfffff
	add	r0, r3
.L8eba2:
	mov	r4, r8
	asr	r3, r0, #20
	strb	r3, [r4, #7]
	ldr	r2, [sp]
	mov	r1, #8
	add	r2, #1
	add	r8, r1
	str	r2, [sp]
	cmp	r2, #9
	ble	.L8ebc8
	b	.L8ebe2
.L8ebb8:
	add	r6, #0xc
	ldr	r3, [r6]
	mov	r4, #1
	neg	r4, r4
	mov	r2, r3
	cmp	r3, r4
	beq	.L8ebc8
	b	.L8ea48
.L8ebc8:
	mov	r1, r10
	mov	r2, #1
	add	r10, r2
	ldrb	r7, [r1]
	mov	r3, r10
	ldrb	r5, [r3]
	add	r10, r2
	cmp	r7, #0xff
	beq	.L8ebdc
	b	.L8ea12
.L8ebdc:
	cmp	r5, #0xff
	beq	.L8ebe2
	b	.L8ea12
.L8ebe2:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_808e9c0

.thumb_func_start Func_808ec14
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r1, #0x8e
	ldr	r3, [r3]
	lsl	r1, #1
	add	r2, r3, r1
	ldrb	r3, [r2, #4]
	mov	r4, #1
	neg	r4, r4
	mov	r1, #0
	cmp	r3, r0
	bne	.L8ec30
	mov	r4, #0
	b	.L8ec40
.L8ec30:
	add	r1, #1
	add	r2, #8
	cmp	r1, #9
	bgt	.L8ec40
	ldrb	r3, [r2, #4]
	cmp	r3, r0
	bne	.L8ec30
	mov	r4, r1
.L8ec40:
	mov	r0, r4
	pop	{r1}
	bx	r1
.func_end Func_808ec14

