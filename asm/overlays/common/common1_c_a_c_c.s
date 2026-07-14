	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_common1_172c
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r3, [r5, #0x28]
	mov	r2, #0xff
	add	r3, #0xff
	lsl	r2, #1
	sub	sp, #0xc
	cmp	r3, r2
	bhi	.L1746
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L1746:
	bl	__Random
	mov	r3, #0x64
	mul	r3, r0
	lsr	r3, #16
	cmp	r3, #9
	bhi	.L17b0
	ldr	r3, [r5, #8]
	mov	r6, sp
	str	r3, [r6]
	ldr	r3, [r5, #0xc]
	str	r3, [r6, #4]
	ldr	r3, [r5, #0x10]
	str	r3, [r6, #8]
	bl	__Random
	mov	r5, r0
	bl	__Random
	lsl	r5, #4
	mov	r1, r0
	mov	r2, r6
	mov	r0, r5
	bl	__vec3_translate
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	ldr	r3, [r6, #8]
	ldr	r0, =0x11d
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L17b0
	mov	r2, r5
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	ldr	r1, =.L7
	mov	r0, r5
	bl	__Actor_SetScript
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetAnim
.L17b0:
	add	sp, #0xc
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_172c

	.section .text.after_17c0, "ax", %progbits

.thumb_func_start OvlFunc_common1_1814
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	ldr	r3, =iwram_3001f3c
	mov	r10, r0
	ldr	r0, =0x211
	mov	r8, r1
	ldr	r5, [r3]
	bl	__GetFlag
	ldr	r3, =gState
	mov	r7, r0
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	bl	__MapActor_GetActor
	mov	r3, r5
	mov	r6, r0
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r0, #0xc0
	ldr	r3, [r6, #8]
	lsl	r0, #12
	add	r1, r2, r0
	cmp	r2, r3
	blt	.L1852
	ldr	r3, =0xfff40000
	add	r1, r2, r3
.L1852:
	cmp	r7, #0
	beq	.L1868
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r0, #0x80
	lsl	r0, #13
	add	r4, r3, r0
	mov	r3, r5
	add	r3, #0xe4
	b	.L1876
.L1868:
	mov	r3, r5
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r5
	add	r3, #0xe2
.L1876:
	ldrh	r3, [r3]
	mov	r5, r6
	add	r5, #0x64
	strh	r3, [r5]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r6, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r2, #0
	str	r3, [r6, #0x30]
	mov	r0, r6
	mov	r3, r4
	bl	__Actor_TravelTo
	ldr	r0, =0x211
	bl	__SetFlag
	mov	r0, r6
	ldr	r1, =.L16
	bl	__Actor_SetScript
	mov	r0, #0
	ldrsh	r3, [r5, r0]
	cmp	r3, #0
	beq	.L18b8
.L18aa:
	mov	r0, #1
	bl	__WaitFrames
	mov	r2, #0
	ldrsh	r3, [r5, r2]
	cmp	r3, #0
	bne	.L18aa
.L18b8:
	cmp	r7, #0
	bne	.L18ce
	mov	r1, r10
	mov	r0, #0
	bl	OvlFunc_common1_850
	mov	r0, r10
	mov	r1, #2
	bl	__Func_8019908
	b	.L18de
.L18ce:
	mov	r1, r8
	mov	r0, #0
	bl	OvlFunc_common1_850
	mov	r0, r8
	mov	r1, #2
	bl	__Func_8019908
.L18de:
	ldr	r3, =gState
	mov	r0, #0xfa
	lsl	r0, #1
	add	r3, r0
	ldr	r0, [r3]
	mov	r1, #1
	bl	__Func_8019908
	mov	r1, #3
	ldr	r0, =0x96a
	bl	__Func_801776c
	mov	r0, r6
	bl	__Actor_WaitScript
	mov	r0, r7
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_common1_1814

.thumb_func_start OvlFunc_common1_1928
	push	{r5, r6, r7, lr}
	mov	r7, r8
	push	{r7}
	ldr	r1, =ewram_2001000
	ldr	r3, =iwram_3001f3c
	mov	r2, #4
	ldrsh	r0, [r1, r2]
	sub	sp, #4
	ldr	r6, [r3]
	mov	r8, r1
	bl	__MapActor_GetActor
	mov	r5, r0
	cmp	r5, #0
	bne	.L1948
	b	.L1afc
.L1948:
	mov	r2, r8
	mov	r1, #0
	ldrsh	r3, [r2, r1]
	cmp	r3, #1
	beq	.L1954
	b	.L1a98
.L1954:
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	add	r3, #0xf0
	ldrsh	r7, [r6, r3]
	add	r3, r2, #1
	lsl	r2, #16
	asr	r2, #15
	mov	r1, r8
	add	r2, #0xf0
	strh	r3, [r1, #6]
	ldrsh	r4, [r6, r2]
	cmp	r7, #0
	bne	.L19f0
	cmp	r4, #0
	bne	.L19f0
	mov	r3, #9
	strh	r3, [r1]
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r6
	add	r3, #0xe8
	ldr	r2, [r3]
	mov	r1, #0xc0
	ldr	r3, [r5, #8]
	lsl	r1, #12
	add	r7, r2, r1
	cmp	r2, r3
	blt	.L1996
	ldr	r3, =0xfff40000
	add	r7, r2, r3
.L1996:
	ldr	r0, =0x211
	bl	__GetFlag
	cmp	r0, #0
	beq	.L19b2
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r1, #0x80
	lsl	r1, #13
	add	r4, r3, r1
	mov	r3, r6
	add	r3, #0xe4
	b	.L19c0
.L19b2:
	mov	r3, r6
	add	r3, #0xec
	ldr	r3, [r3]
	ldr	r2, =0xfff00000
	add	r4, r3, r2
	mov	r3, r6
	add	r3, #0xe2
.L19c0:
	ldrh	r2, [r3]
	mov	r3, r5
	add	r3, #0x64
	strh	r2, [r3]
	mov	r3, #0x80
	lsl	r3, #7
	str	r3, [r5, #0x34]
	mov	r3, #0x80
	lsl	r3, #9
	mov	r1, r7
	str	r3, [r5, #0x30]
	mov	r0, r5
	mov	r2, #0
	mov	r3, r4
	bl	__Actor_TravelTo
	ldr	r0, =0x211
	bl	__SetFlag
	ldr	r1, =.L15
	mov	r0, r5
	bl	__Actor_SetScript
	b	.L1afc
.L19f0:
	mov	r2, r8
	mov	r1, #2
	ldrsh	r3, [r2, r1]
	lsl	r7, #16
	lsl	r4, #16
	cmp	r3, #0
	beq	.L1a08
	mov	r3, r6
	add	r3, #0xe8
	ldr	r3, [r3]
	lsl	r3, #1
	sub	r7, r3, r7
.L1a08:
	ldr	r2, [r5, #8]
	cmp	r2, r7
	bne	.L1a16
	ldr	r3, [r5, #0x10]
	cmp	r3, r4
	beq	.L1a52
	b	.L1a18
.L1a16:
	ldr	r3, [r5, #0x10]
.L1a18:
	sub	r0, r4, r3
	sub	r1, r7, r2
	str	r4, [sp]
	bl	__atan2
	ldrh	r3, [r5, #6]
	lsl	r0, #16
	lsr	r0, #16
	sub	r0, r3
	lsl	r0, #16
	mov	r2, #0x80
	asr	r0, #16
	lsl	r2, #5
	ldr	r4, [sp]
	cmp	r0, r2
	ble	.L1a3a
	mov	r0, r2
.L1a3a:
	ldr	r2, =0xfffff000
	cmp	r0, r2
	bge	.L1a42
	mov	r0, r2
.L1a42:
	add	r3, r0
	mov	r2, #0
	strh	r3, [r5, #6]
	mov	r3, r8
	str	r7, [r5, #8]
	str	r4, [r5, #0x10]
	strh	r2, [r3, #8]
	b	.L1a5c
.L1a52:
	mov	r1, r8
	ldrh	r3, [r1, #8]
	mov	r2, r8
	add	r3, #1
	strh	r3, [r2, #8]
.L1a5c:
	mov	r2, r8
	mov	r1, #8
	ldrsh	r3, [r2, r1]
	cmp	r3, #2
	ble	.L1a70
	mov	r0, r5
	mov	r1, #1
	bl	__Actor_SetAnim
	b	.L1afc
.L1a70:
	mov	r0, r5
	mov	r1, #5
	bl	__Actor_SetAnim
	b	.L1afc

	.pool_aligned

.L1a98:
	cmp	r3, #2
	bne	.L1afc
	mov	r2, r8
	mov	r3, #0xa
	ldrsh	r7, [r5, r3]
	ldrh	r3, [r2, #6]
	add	r2, r3, #1
	lsl	r3, #16
	asr	r3, #15
	mov	r1, #0x12
	ldrsh	r4, [r5, r1]
	add	r3, #0xf0
	add	r1, r2, #1
	lsl	r2, #16
	strh	r7, [r6, r3]
	asr	r2, #15
	mov	r3, r8
	add	r2, #0xf0
	strh	r1, [r3, #6]
	lsl	r3, r1, #16
	strh	r4, [r6, r2]
	asr	r2, r3, #16
	ldr	r3, =0x383e
	cmp	r2, r3
	bne	.L1afc
	add	r3, r1, #1
	lsl	r3, #16
	ldr	r1, .L1af4	@ 0
	lsl	r2, #1
	asr	r3, #15
	add	r2, #0xf0
	add	r3, #0xf0
	strh	r1, [r6, r2]
	strh	r1, [r6, r3]
	mov	r3, r6
	add	r3, #0xe0
	ldrh	r3, [r3]
	mov	r1, r8
	strh	r3, [r1, #4]
	mov	r2, #0
	mov	r3, r8
	strh	r2, [r3, #6]
	mov	r3, #1
	strh	r3, [r1]
	b	.L1afc

	.align	2, 0
.L1af4:
	.word	0
	.pool

.L1afc:
	add	sp, #4
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1928

.thumb_func_start OvlFunc_common1_1b08
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f3c
	ldr	r3, [r3]
	mov	r1, r3
	sub	sp, #0x14
	mov	r8, r1
	str	r3, [sp, #0xc]
	str	r3, [sp, #0x10]
	mov	r7, r8
	add	r7, #0xd8
	mov	r1, #0
	ldrsh	r3, [r7, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	str	r3, [sp, #8]
	mov	r3, r8
	add	r3, #0xe6
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	sub	r3, #0xa
	mov	r11, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L1b56
	mov	r6, r8
	add	r6, #0xda
	mov	r3, #2
	strh	r3, [r6]
	b	.L1bc4
.L1b56:
	mov	r0, #0x83
	lsl	r0, #1
	bl	__GetFlag
	cmp	r0, #0
	beq	.L1b76
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #0
	ble	.L1bc4
	sub	r3, r2, #1
	strh	r3, [r6]
	b	.L1bc4
.L1b76:
	mov	r6, r8
	add	r6, #0xda
	mov	r1, #0
	ldrsh	r3, [r6, r1]
	ldrh	r2, [r6]
	cmp	r3, #1
	bgt	.L1bc4
	add	r3, r2, #1
	mov	r2, #0x80
	strh	r3, [r6]
	lsl	r2, #9
	lsl	r3, #16
	cmp	r3, r2
	bne	.L1bc4
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L4
	ldr	r1, =0x50003c0
	ldr	r2, =0x80000010
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8004970
	mov	r5, r0
	mov	r1, r5
	ldr	r0, =.L5
	bl	__DecompressLZ
	mov	r1, #0x80
	mov	r3, #0
	ldrsh	r0, [r7, r3]
	lsl	r1, #2
	mov	r2, r5
	bl	__UploadSpriteGFX
	mov	r0, r5
	bl	__free
.L1bc4:
	mov	r1, #0
	ldrsh	r2, [r6, r1]
	cmp	r2, #0
	bne	.L1bda
	ldr	r3, [sp, #0xc]
	add	r3, #0xd8
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8003f78
	b	.L1e9a
.L1bda:
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	mov	r7, r3
	sub	r7, #8
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	lsl	r3, #4
	str	r3, [sp, #4]
	mov	r2, #0x80
	ldr	r1, [sp, #4]
	lsl	r2, #8
	mov	r3, #0x68
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	sub	r4, r3, r1
	mov	r3, #0
	stmia	r2!, {r3}
	lsl	r3, r4, #16
	mov	r1, r2
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r3, [sp, #8]
	mov	r5, #0xe4
	lsl	r5, #8
	mov	r1, r2
	orr	r3, r5
	str	r1, [sp, #0xc]
	stmia	r2!, {r3}
	mov	r1, r2
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	mov	r6, #0
	add	r8, r2
	bl	__Func_8003dec
	cmp	r6, r11
	bcs	.L1c74
	ldr	r3, [sp, #8]
	mov	r1, #0x80
	add	r3, #2
	orr	r3, r5
	lsl	r1, #23
	ldr	r5, [sp, #0xc]
	mov	r9, r1
	mov	r10, r3
.L1c42:
	lsl	r2, r6, #4
	mov	r3, #0x60
	sub	r4, r3, r2
	mov	r3, #0
	str	r3, [r5]
	lsl	r3, r4, #16
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	str	r3, [r5, #4]
	mov	r3, r10
	str	r3, [r5, #8]
	ldr	r1, [sp, #0xc]
	add	r1, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r6, #1
	add	r8, r2
	add	r5, #0xc
	bl	__Func_8003dec
	cmp	r6, r11
	bcc	.L1c42
.L1c74:
	ldr	r2, [sp, #0xc]
	mov	r6, #0
	mov	r3, #0x80
	stmia	r2!, {r6}
	lsl	r3, #8
	mov	r9, r3
	mov	r3, #0xe0
	mov	r1, r2
	lsl	r3, #15
	str	r1, [sp, #0xc]
	orr	r3, r7
	mov	r1, r9
	orr	r3, r1
	stmia	r2!, {r3}
	ldr	r5, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	add	r5, #6
	orr	r5, r2
	stmia	r1!, {r5}
	mov	r0, r8
	mov	r3, r1
	mov	r10, r2
	mov	r1, #0xff
	mov	r2, #0xc
	add	r8, r2
	str	r3, [sp, #0xc]
	bl	__Func_8003dec
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r6}
	mov	r3, r1
	str	r3, [sp, #0xc]
	mov	r3, #0xf0
	lsl	r3, #15
	mov	r2, r9
	orr	r3, r7
	orr	r3, r2
	mov	r2, #0x80
	lsl	r2, #21
	orr	r3, r2
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	stmia	r1!, {r5}
	mov	r3, r1
	mov	r1, #0xc
	mov	r0, r8
	add	r8, r1
	mov	r1, #0xff
	str	r3, [sp, #0xc]
	bl	__Func_8003dec
	cmp	r6, r11
	bcs	.L1d36
	ldr	r4, [sp, #8]
	mov	r2, #0x80
	mov	r1, #0x80
	mov	r3, r10
	add	r4, #2
	lsl	r2, #23
	lsl	r1, #16
	ldr	r5, [sp, #0xc]
	mov	r9, r2
	orr	r4, r3
	mov	r10, r1
.L1cfa:
	mov	r3, #0
	str	r3, [r5]
	mov	r2, r10
	mov	r3, r7
	orr	r3, r2
	mov	r1, r9
	mov	r2, #0x80
	orr	r3, r1
	lsl	r2, #21
	orr	r3, r2
	str	r3, [r5, #4]
	str	r4, [r5, #8]
	ldr	r2, [sp, #0xc]
	mov	r0, r8
	add	r2, #0xc
	mov	r3, #0xc
	mov	r1, #0xff
	str	r4, [sp]
	str	r2, [sp, #0xc]
	add	r8, r3
	bl	__Func_8003dec
	mov	r1, #0x80
	lsl	r1, #13
	add	r6, #1
	add	r5, #0xc
	add	r10, r1
	ldr	r4, [sp]
	cmp	r6, r11
	bcc	.L1cfa
.L1d36:
	mov	r2, #0x80
	ldr	r4, [sp, #4]
	lsl	r2, #8
	mov	r9, r2
	ldr	r2, [sp, #0xc]
	mov	r3, #0
	add	r4, #0x80
	stmia	r2!, {r3}
	mov	r11, r3
	lsl	r3, r4, #16
	orr	r7, r3
	mov	r3, r9
	orr	r7, r3
	mov	r3, #0x80
	lsl	r3, #21
	mov	r1, r2
	orr	r7, r3
	str	r1, [sp, #0xc]
	stmia	r2!, {r7}
	ldr	r3, [sp, #8]
	mov	r1, r2
	mov	r2, #0xe4
	lsl	r2, #8
	orr	r3, r2
	mov	r10, r2
	mov	r2, r1
	stmia	r2!, {r3}
	mov	r1, r2
	mov	r3, #0xc
	str	r1, [sp, #0xc]
	mov	r0, r8
	mov	r1, #0xff
	add	r8, r3
	bl	__Func_8003dec
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #0xf
	and	r3, r2
	cmp	r3, #4
	bhi	.L1d8a
	b	.L1e9a
.L1d8a:
	ldr	r3, [sp, #0x10]
	mov	r1, #0x80
	add	r3, #0xe0
	lsl	r1, #23
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	mov	r9, r1
	bl	__GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L1e18
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_divsi3_RAM
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_divsi3_RAM
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #0xc
	orr	r3, r1
	ldr	r1, [sp, #0xc]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #0xc]
	mov	r0, r8
	mov	r2, #0xc
	mov	r1, #0xff
	add	r8, r2
	bl	__Func_8003dec
.L1e18:
	ldr	r3, [sp, #0x10]
	add	r3, #0xde
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	bl	__GetFieldActor
	mov	r6, r0
	cmp	r6, #0
	beq	.L1e9a
	ldr	r3, [sp, #0x10]
	add	r3, #0xe8
	ldr	r3, [r3]
	ldr	r0, [r6, #8]
	mov	r5, #0xe0
	lsl	r5, #12
	sub	r0, r3
	mov	r1, r5
	bl	_divsi3_RAM
	ldr	r3, [sp, #0x10]
	add	r3, #0xec
	ldr	r3, [r3]
	mov	r4, r0
	ldr	r0, [r6, #0x10]
	add	r4, #0x70
	mov	r1, r5
	sub	r0, r3
	str	r4, [sp]
	bl	_divsi3_RAM
	ldr	r3, [sp, #0x10]
	add	r3, #0xda
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #1
	add	r0, r3
	ldr	r1, [sp, #0xc]
	sub	r7, r0, #4
	mov	r3, #0xff
	and	r7, r3
	mov	r3, r11
	stmia	r1!, {r3}
	ldr	r4, [sp]
	mov	r2, r1
	lsl	r3, r4, #16
	str	r2, [sp, #0xc]
	orr	r7, r3
	mov	r2, r9
	orr	r7, r2
	stmia	r1!, {r7}
	mov	r3, r1
	str	r3, [sp, #0xc]
	ldr	r3, [sp, #8]
	mov	r1, r10
	add	r3, #8
	ldr	r2, [sp, #0xc]
	orr	r3, r1
	str	r3, [r2]
	mov	r3, r8
	mov	r0, r3
	mov	r1, #0xff
	bl	__Func_8003dec
.L1e9a:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1b08

.thumb_func_start OvlFunc_common1_1ecc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #4
	mov	r8, r0
	mov	r10, r1
	mov	r0, #0x3b
	ldr	r1, =0x7170
	ldr	r5, [sp, #0x28]
	ldr	r6, [sp, #0x2c]
	str	r3, [sp]
	mov	r9, r2
	bl	__galloc_ewram
	mov	r7, r0
	mov	r0, #0x80
	lsl	r0, #2
	bl	__Func_8004970
	mov	r3, r7
	add	r3, #0xde
	mov	r2, r8
	strh	r2, [r3]
	add	r3, #2
	mov	r2, r10
	strh	r2, [r3]
	add	r3, #2
	strh	r5, [r3]
	add	r3, #2
	strh	r6, [r3]
	mov	r2, r9
	add	r3, #2
	strh	r2, [r3]
	ldr	r2, [sp]
	add	r3, #2
	str	r2, [r3]
	ldr	r2, [sp, #0x24]
	add	r3, #4
	str	r2, [r3]
	mov	r11, r0
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r6, r0
	mov	r0, r10
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r0, =0x109
	bl	__GetFlag
	cmp	r0, #0
	bne	.L1f4c
	ldr	r2, [sp]
	lsl	r3, r2, #1
	ldr	r2, [r6, #8]
	sub	r3, r2
	str	r3, [r5, #8]
	ldr	r3, [r6, #0x10]
	str	r3, [r5, #0x10]
.L1f4c:
	ldr	r2, .L1f8c	@ 0
	mov	r3, r7
	add	r3, #0xda
	strh	r2, [r3]
	add	r3, #2
	strh	r2, [r3]
	mov	r1, r11
	ldr	r0, =.L5
	bl	__DecompressLZ
	bl	__AllocSpriteSlot
	mov	r3, r7
	add	r3, #0xd8
	strh	r0, [r3]
	mov	r1, #0x80
	lsl	r0, #16
	mov	r2, r11
	lsl	r1, #2
	asr	r0, #16
	bl	__UploadSpriteGFX
	ldr	r1, =0xc76
	ldr	r0, =OvlFunc_common1_1b08
	bl	__StartTask
	mov	r0, r11
	bl	__free
	add	sp, #4
	b	.L1fa4

	.align	2, 0
.L1f8c:
	.word	0
	.pool

.L1fa4:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1ecc
