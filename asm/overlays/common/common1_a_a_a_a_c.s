	.include "macros.inc"
	.include "gba.inc"

	.section .text.after_8588, "ax", %progbits

.thumb_func_start OvlFunc_common1_5e4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r10, r1
	sub	sp, #0xc
	mov	r6, r0
	mov	r0, r10
	str	r2, [sp]
	bl	__MapActor_GetActor
	mov	r5, r0
	mov	r2, #0xa
	ldrsh	r0, [r5, r2]
	mov	r9, r0
	mov	r0, #0x12
	ldrsh	r3, [r5, r0]
	mov	r11, r3
	cmp	r6, #3
	beq	.L6f6
	bl	__GetPartySize
	mov	r7, r0
	cmp	r7, #0
	ble	.L636
	ldr	r3, =gState
	mov	r0, #0xfc
	lsl	r0, #1
	add	r2, sp, #4
	add	r1, r3, r0
	mov	r5, r7
.L628:
	ldrb	r3, [r1]
	sub	r5, #1
	strb	r3, [r2]
	add	r1, #1
	add	r2, #1
	cmp	r5, #0
	bne	.L628
.L636:
	cmp	r7, #1
	bgt	.L63e
	ldr	r0, =0x2083
	b	.L6f8
.L63e:
	ldr	r2, [sp]
	mov	r3, #0x80
	lsl	r3, #2
	add	r0, r2, r3
	bl	__GetFlag
	cmp	r0, #0
	beq	.L652
	ldr	r0, =0x2084
	b	.L6f8
.L652:
	cmp	r6, #2
	bne	.L660
	mov	r0, #6
	mov	r5, #0
	bl	__WaitFrames
	b	.L678
.L660:
	ldr	r0, =0x207d
	bl	__MessageID
	mov	r1, #0
	mov	r0, r10
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	mov	r5, r0
.L678:
	cmp	r5, #0
	bne	.L6f6
	cmp	r5, r7
	bge	.L696
	add	r6, sp, #4
	mov	r5, r7
.L684:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.L684
.L696:
	cmp	r7, #0
	ble	.L6b4
	add	r6, sp, #4
	mov	r5, r7
.L69e:
	ldrb	r3, [r6]
	lsl	r3, #24
	asr	r0, r3, #24
	add	r6, #1
	cmp	r0, #0
	beq	.L6ae
	bl	__AddPartyMember
.L6ae:
	sub	r5, #1
	cmp	r5, #0
	bne	.L69e
.L6b4:
	bl	__Func_80a7380
	mov	r8, r0
	cmp	r7, #0
	ble	.L6d4
	add	r6, sp, #4
	mov	r5, r7
.L6c2:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__Func_8079664
	cmp	r5, #0
	bne	.L6c2
.L6d4:
	cmp	r7, #0
	ble	.L6ee
	add	r6, sp, #4
	mov	r5, r7
.L6dc:
	ldrb	r0, [r6]
	lsl	r0, #24
	asr	r0, #24
	sub	r5, #1
	add	r6, #1
	bl	__AddPartyMember
	cmp	r5, #0
	bne	.L6dc
.L6ee:
	mov	r0, #1
	neg	r0, r0
	cmp	r8, r0
	bne	.L706
.L6f6:
	ldr	r0, =0x207e
.L6f8:
	bl	__MessageID
	mov	r0, r10
	mov	r1, #0
	bl	__ActorMessage
	b	.L826
.L706:
	mov	r1, #1
	mov	r0, r8
	bl	__Func_8019908
	ldr	r0, =0x207f
	bl	__MessageID
	mov	r0, r10
	mov	r1, #0
	bl	__ActorMessage
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r8
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, r10
	lsl	r1, #9
	lsl	r2, #8
	bl	__MapActor_SetSpeed
	mov	r0, #0
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L75a
	ldr	r1, [r0, #8]
	ldr	r2, [r0, #0x10]
	mov	r0, r8
	bl	__MapActor_SetPos
.L75a:
	mov	r5, r11
	add	r5, #0x10
	mov	r6, r9
	mov	r2, r5
	add	r6, #0x10
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r1, r6
	mov	r2, r5
	mov	r0, #0
	bl	__Func_80921c4
	mov	r2, #0x1e
	mov	r0, r8
	mov	r1, #0
	bl	__Func_8092848
	mov	r0, r8
	mov	r1, #3
	bl	__MapActor_SetAnim
	sub	r5, #0x20
	mov	r0, #0
	mov	r1, #3
	bl	__MapActor_DoAnim
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_80921c4
	mov	r2, r5
	mov	r1, r6
	mov	r0, r10
	bl	__Func_809218c
	mov	r0, #0
	mov	r1, r8
	bl	__MapActor_SetExtra
	mov	r2, r5
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r0, r10
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r1, #0x80
	mov	r0, r10
	lsl	r1, #8
	mov	r2, #0
	bl	__Func_8092adc
	mov	r2, r11
	sub	r2, #0x30
	mov	r0, r8
	mov	r1, r9
	bl	__Func_80921c4
	mov	r2, r5
	mov	r0, r10
	mov	r1, r9
	bl	__Func_80921c4
	mov	r1, r9
	mov	r2, r11
	mov	r0, r10
	bl	__Func_80921c4
	mov	r0, r8
	bl	__Func_8079664
	mov	r3, #0x80
	ldr	r2, [sp]
	lsl	r3, #2
	add	r0, r2, r3
	bl	__SetFlag
	mov	r0, r8
	bl	__MapActor_GetActor
	mov	r5, r0
	ldr	r1, [r5, #8]
	mov	r0, r8
	mov	r2, #0xdc
	lsl	r6, r0, #4
	lsl	r2, #2
	asr	r1, #20
	add	r0, r6, r2
	bl	__SetFlagByte
	ldr	r1, [r5, #0x10]
	mov	r3, #0xde
	lsl	r3, #2
	asr	r1, #20
	add	r0, r6, r3
	bl	__SetFlagByte
.L826:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_5e4

	.section .text.after_850, "ax", %progbits

	.section .text.after_88c, "ax", %progbits

.thumb_func_start OvlFunc_common1_920
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r0, =.L43
	sub	sp, #0x14
	str	r0, [sp, #8]
	ldr	r3, =.L10
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r2, =gSpriteSlots
	lsl	r3, #2
	add	r3, r2
	ldrh	r3, [r3, #2]
	lsr	r3, #5
	mov	r10, r0
	mov	r8, r3
.L948:
	ldr	r1, =.L36
	mov	r2, #0
	ldrsh	r4, [r1, r2]
	ldrh	r3, [r1]
	cmp	r4, #0
	bne	.La1e
	ldr	r5, =.L37
	ldr	r0, [r5]
	ldrh	r3, [r0]
	mov	r2, #0x80
	lsl	r3, #16
	add	r0, #2
	asr	r3, #16
	lsl	r2, #6
	str	r0, [r5]
	cmp	r3, r2
	beq	.L9e4
	cmp	r3, r2
	bgt	.L980
	mov	r1, #1
	neg	r1, r1
	cmp	r3, r1
	beq	.La0c
	mov	r2, #0x80
	lsl	r2, #5
	cmp	r3, r2
	beq	.L9cc
	b	.L948
.L980:
	mov	r2, #0x80
	lsl	r2, #7
	cmp	r3, r2
	beq	.L99e
	cmp	r3, r2
	bgt	.L996
	mov	r1, #0xc0
	lsl	r1, #6
	cmp	r3, r1
	beq	.L9b4
	b	.L948
.L996:
	ldr	r2, =0x7fff
	cmp	r3, r2
	beq	.La02
	b	.L948
.L99e:
	mov	r1, #0
	ldrsh	r3, [r0, r1]
	ldr	r2, =.L25
	lsl	r3, #8
	str	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L46
	strh	r3, [r1]
	ldr	r3, =.L24
	b	.L9fa
.L9b4:
	ldr	r2, =.L46
	ldr	r1, =.L44
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L24
	strh	r3, [r1]
	ldr	r3, =.L28
	b	.L9fa
.L9cc:
	ldr	r2, =.L27
	ldr	r1, =.L23
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L18
	strh	r3, [r1]
	ldr	r3, =.L47
	b	.L9fa
.L9e4:
	ldr	r2, =.L34
	ldr	r1, =.L35
	ldrh	r3, [r2]
	strh	r3, [r1]
	ldrh	r3, [r0]
	strh	r3, [r2]
	add	r2, r0, #2
	ldrh	r3, [r2]
	ldr	r1, =.L39
	strh	r3, [r1]
	ldr	r3, =.L30
.L9fa:
	add	r2, #2
	str	r2, [r5]
	strh	r4, [r3]
	b	.L948
.La02:
	ldrh	r3, [r0]
	strh	r3, [r1]
	add	r3, r0, #2
	str	r3, [r5]
	b	.L948
.La0c:
	ldr	r0, =OvlFunc_common1_920
	bl	__StopTask
	ldr	r3, =.L10
	mov	r2, #0
	ldrsh	r0, [r3, r2]
	bl	__Func_8003f3c
	b	.Ldd4
.La1e:
	sub	r3, #1
	strh	r3, [r1]
	ldr	r3, =.L18
	mov	r5, #0
	ldrsh	r7, [r3, r5]
	mov	r9, r3
	cmp	r7, #0
	bne	.La38
	ldr	r3, =.L27
	mov	r1, #0
	ldrsh	r0, [r3, r1]
	mov	r11, r0
	b	.La6a
.La38:
	ldr	r3, =.L23
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	ldr	r2, =.L47
	ldr	r3, =.L27
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	mov	r11, r6
	cmp	r5, r7
	blt	.La6a
	ldr	r3, .La80	@ 0
	mov	r0, r9
	strh	r3, [r0]
.La6a:
	ldr	r1, =.L39
	mov	r2, #0
	ldrsh	r7, [r1, r2]
	mov	r9, r1
	cmp	r7, #0
	bne	.Lad4
	ldr	r3, =.L34
	mov	r0, #0
	ldrsh	r5, [r3, r0]
	str	r5, [sp, #4]
	b	.Lb06

	.align	2, 0
.La80:
	.word	0
	.pool

.Lad4:
	ldr	r3, =.L35
	mov	r1, #0
	ldrsh	r6, [r3, r1]
	ldr	r3, =.L34
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, =.L30
	ldrh	r5, [r2]
	add	r5, #1
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	str	r6, [sp, #4]
	cmp	r5, r7
	blt	.Lb06
	ldr	r3, .Lb1c	@ 0
	mov	r5, r9
	strh	r3, [r5]
.Lb06:
	ldr	r0, =.L24
	mov	r1, #0
	ldrsh	r7, [r0, r1]
	mov	r9, r0
	cmp	r7, #0
	bne	.Lb34
	ldr	r3, =.L46
	mov	r2, #0
	ldrsh	r6, [r3, r2]
	b	.Lb64

	.align	2, 0
.Lb1c:
	.word	0
	.pool

.Lb34:
	ldr	r2, =.L28
	ldr	r3, =.L44
	mov	r5, #0
	ldrsh	r6, [r3, r5]
	ldrh	r5, [r2]
	ldr	r3, =.L46
	add	r5, #1
	mov	r0, #0
	ldrsh	r3, [r3, r0]
	strh	r5, [r2]
	lsl	r5, #16
	sub	r3, r6
	asr	r5, #16
	mov	r0, r5
	mul	r0, r3
	mov	r1, r7
	bl	_divsi3_RAM
	add	r6, r0
	cmp	r5, r7
	blt	.Lb64
	ldr	r3, .Lb98	@ 0
	mov	r1, r9
	strh	r3, [r1]
.Lb64:
	add	r0, sp, #0xc
	ldr	r3, [r0, #4]
	ldr	r2, =0xffff0000
	and	r3, r2
	str	r3, [r0, #4]
	mov	r3, r11
	lsl	r1, r3, #16
	ldr	r3, [sp, #0xc]
	lsr	r1, #16
	and	r3, r2
	ldr	r2, =0xffff
	orr	r3, r1
	and	r3, r2
	lsl	r1, #16
	orr	r3, r1
	str	r3, [sp, #0xc]
	bl	__Func_8003d28
	ldr	r2, =.L25
	ldr	r3, [r2]
	lsl	r0, #16
	add	r3, r6
	asr	r0, #16
	str	r3, [r2]
	b	.Lbb4

	.align	2, 0
.Lb98:
	.word	0
	.pool

.Lbb4:
	cmp	r3, #0
	bge	.Lbba
	add	r3, #0xff
.Lbba:
	asr	r6, r3, #8
	ldr	r3, =.L33
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	cmp	r3, #2
	bne	.Lbc8
	b	.Ld20
.Lbc8:
	cmp	r3, #2
	bgt	.Lbd2
	cmp	r3, #1
	beq	.Lbdc
	b	.Ld72
.Lbd2:
	cmp	r3, #3
	beq	.Lc52
	cmp	r3, #4
	beq	.Lcce
	b	.Ld72
.Lbdc:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x38
	mov	r9, r0
.Lbe6:
	lsl	r3, r5, #5
	sub	r3, #0x30
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lbf6
	add	r3, #0xff
.Lbf6:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lc46
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	mov	r3, #0xf4
	mov	r0, r1
	lsl	r3, #8
	mov	r1, r8
	orr	r3, r1
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lc46:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #3
	ble	.Lbe6
	b	.Ld72
.Lc52:
	lsl	r0, #25
	ldr	r4, =0x80004000
	mov	r5, #0
	mov	r7, #0x30
	mov	r9, r0
.Lc5c:
	lsl	r3, r5, #5
	sub	r3, #0x10
	mov	r0, r11
	mul	r0, r3
	mov	r3, r0
	cmp	r3, #0
	bge	.Lc6c
	add	r3, #0xff
.Lc6c:
	asr	r3, #8
	add	r3, r6, r3
	ldr	r1, =0x12f
	mov	r2, r3
	add	r3, #0x98
	add	r2, #0x58
	cmp	r3, r1
	bhi	.Lcc2
	ldr	r3, =0x1ff
	ldr	r1, [sp, #8]
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	orr	r3, r4
	mov	r2, r9
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r0, r1
	orr	r3, r2
	str	r0, [sp, #8]
	stmia	r1!, {r3}
	ldr	r3, =.L22
	mov	r0, r1
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	lsl	r2, #8
	add	r3, r8
	orr	r3, r2
	stmia	r0!, {r3}
	mov	r1, #0xc
	mov	r2, r0
	mov	r0, r10
	add	r10, r1
	mov	r1, #0xec
	str	r4, [sp]
	str	r2, [sp, #8]
	bl	__Func_8003dec
	ldr	r4, [sp]
.Lcc2:
	mov	r2, #8
	add	r5, #1
	add	r8, r2
	cmp	r5, #1
	ble	.Lc5c
	b	.Ld72
.Lcce:
	mov	r3, r6
	mov	r5, #0x98
	mov	r2, r6
	add	r3, #0x78
	lsl	r5, #1
	mov	r7, #0x30
	ldr	r4, =0xc0004000
	add	r2, #0x38
	cmp	r3, r5
	bcs	.Ld72
	ldr	r3, =0x1ff
	mov	r1, r10
	and	r2, r3
	mov	r3, #0
	stmia	r1!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r5, r1
	orr	r3, r2
	str	r5, [sp, #8]
	stmia	r1!, {r3}
	mov	r2, r1
	str	r2, [sp, #8]
	ldr	r3, =.L22
	mov	r5, #0
	ldrsh	r3, [r3, r5]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r1]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
	b	.Ld72
.Ld20:
	mov	r3, r6
	mov	r1, #0x98
	mov	r4, #0x80
	mov	r2, r6
	add	r3, #0x98
	lsl	r1, #1
	mov	r7, #0x30
	lsl	r4, #24
	add	r2, #0x58
	cmp	r3, r1
	bcs	.Ld72
	ldr	r3, =0x1ff
	mov	r5, r10
	and	r2, r3
	mov	r3, #0
	stmia	r5!, {r3}
	lsl	r3, r2, #16
	orr	r3, r7
	lsl	r2, r0, #25
	orr	r3, r4
	orr	r3, r2
	mov	r2, #0xe0
	lsl	r2, #3
	mov	r1, r5
	orr	r3, r2
	str	r1, [sp, #8]
	stmia	r5!, {r3}
	mov	r0, r5
	str	r0, [sp, #8]
	ldr	r3, =.L22
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	mov	r2, #0xf4
	add	r3, r8
	lsl	r2, #8
	orr	r3, r2
	str	r3, [r5]
	mov	r0, r10
	mov	r1, #0xec
	bl	__Func_8003dec
.Ld72:
	ldr	r0, =gDMATaskCount
	ldr	r1, =REG_IME
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r2, [r0]
	cmp	r2, #0x1f
	bgt	.Lda0
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r0
	strh	r2, [r0]
	mov	r2, #0xfc
	add	r3, #4
	lsl	r2, #6
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.Lda0:
	strh	r4, [r1]
	ldrh	r3, [r1]
	mov	r4, r3
	strh	r1, [r1]
	ldrh	r3, [r0]
	cmp	r3, #0x1f
	bgt	.Ldd2
	lsl	r2, r3, #1
	add	r2, r3
	add	r3, #1
	strh	r3, [r0]
	ldr	r5, [sp, #4]
	mov	r3, #0x10
	lsl	r2, #2
	sub	r3, r5
	add	r2, r0
	lsl	r3, #8
	add	r2, #4
	orr	r3, r5
	stmia	r2!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r2!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r2]
.Ldd2:
	strh	r4, [r1]
.Ldd4:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_920

	.section .text.after_e10, "ax", %progbits

.thumb_func_start OvlFunc_common1_ea0
	push	{r5, lr}
	mov	r5, r0
	cmp	r5, #0
	bne	.Leda
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x59
	bl	__PlaySound
	mov	r0, #0
	bl	OvlFunc_common1_88c
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_common1_e10
	mov	r0, #0x78
	bl	__CutsceneWait
	bl	__CutsceneEnd
	b	.Lf98
.Leda:
	mov	r0, #0xf7
	bl	__PlaySound
	bl	__CutsceneStart
	bl	__MapTransitionIn
	bl	__WaitMapTransition
	lsl	r2, r5, #4
	ldr	r3, =.L11
	sub	r2, r5
	lsl	r2, #2
	strh	r2, [r3, #0x1e]
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, r5
	add	r0, #0x5a
	bl	__PlaySound
	mov	r0, r5
	bl	OvlFunc_common1_88c
	mov	r0, #1
	mov	r1, #0
	bl	OvlFunc_common1_e10
	mov	r0, #0x78
	bl	__CutsceneWait
	b	.Lf20
.Lf1a:
	mov	r0, #1
	bl	__WaitFrames
.Lf20:
	bl	__Func_80f954c
	cmp	r0, #0
	bne	.Lf1a
	ldr	r0, =0x121
	bl	__PlaySound
	mov	r0, #5
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r1, #1
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #6
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #2
	bl	OvlFunc_common1_e10
	mov	r0, #0xec
	bl	__PlaySound
	mov	r0, #0x3c
	bl	__CutsceneWait
	mov	r0, #7
	bl	OvlFunc_common1_88c
	mov	r1, #0
	mov	r0, #4
	bl	OvlFunc_common1_e10
	mov	r0, #0xed
	bl	__PlaySound
	bl	__PlayMapMusic
	bl	__CutsceneEnd
	ldr	r0, =0x123
	bl	__SetFlag
.Lf98:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_ea0

	.section .text.after_fac, "ax", %progbits

.thumb_func_start OvlFunc_common1_1078
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e68
	sub	sp, #4
	ldr	r6, [r3]
	mov	r11, r0
	mov	r8, r1
	mov	r10, r2
	bl	__MapActor_GetActor
	mov	r3, #1
	strb	r3, [r6, #6]
	mov	r3, #4
	mov	r7, r0
	strb	r3, [r6, #7]
	ldr	r3, [r7, #8]
	ldr	r2, =.L49
	str	r3, [r2]
	ldr	r3, [r7, #0x10]
	ldr	r2, =.L20
	str	r3, [r2]
	ldr	r0, [r7, #0x50]
	ldrh	r3, [r7, #6]
	ldr	r2, =.L31
	mov	r9, r0
	str	r3, [r2]
	mov	r0, r11
	mov	r1, #2
	bl	__Func_8092b08
	mov	r2, r7
	add	r2, #0x23
	ldrb	r3, [r2]
	mov	r5, #1
	orr	r5, r3
	strb	r5, [r2]
	mov	r5, #0x80
	lsl	r5, #7
	mov	r0, r7
	strh	r5, [r7, #6]
	mov	r1, #3
	bl	__Actor_SetSpriteFlags
	mov	r0, r7
	mov	r1, #0
	bl	__Actor_SetAnim
	mov	r0, r7
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r3, r10
	lsl	r3, #16
	mov	r10, r3
	mov	r1, r8
	lsl	r1, #16
	mov	r0, r11
	mov	r2, r10
	mov	r8, r1
	bl	__MapActor_SetPos
	mov	r0, #0
	mov	r1, r5
	mov	r2, #0
	bl	__Func_809280c
	ldr	r4, =gDMATaskCount
	ldr	r6, =REG_IME
	ldrh	r3, [r6]
	mov	r1, r3
	strh	r6, [r6]
	ldrh	r2, [r4]
	cmp	r2, #0x1f
	bgt	.L1134
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r4
	strh	r2, [r4]
	mov	r2, #0xf0
	add	r3, #4
	lsl	r2, #4
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDCNT
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L1134:
	strh	r1, [r6]
	mov	r0, r9
	mov	r2, #0xd
	ldrb	r1, [r0, #5]
	neg	r2, r2
	mov	r3, r2
	and	r3, r1
	mov	r1, #4
	orr	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	orr	r2, r1
	strb	r2, [r0, #0x11]
	mov	r0, #0xfc
	str	r4, [sp]
	bl	__PlaySound
	ldr	r4, [sp]
	mov	r5, #0
.L115c:
	mov	r1, #0x80
	lsl	r2, r5, #12
	lsl	r1, #5
	add	r3, r2, r1
	str	r3, [r7, #0x18]
	mov	r3, #0xf8
	lsl	r3, #9
	sub	r3, r2
	str	r3, [r7, #0x1c]
	ldrh	r3, [r6]
	mov	r0, r3
	strh	r6, [r6]
	ldrh	r3, [r4]
	cmp	r3, #0x1f
	bgt	.L119e
	lsl	r1, r3, #1
	add	r1, r3
	add	r3, #1
	strh	r3, [r4]
	mov	r3, #0xf
	lsl	r1, #2
	sub	r3, r5
	add	r1, r4, r1
	lsl	r3, #8
	add	r2, r5, #1
	add	r1, #4
	orr	r3, r2
	stmia	r1!, {r3}
	ldr	r3, =REG_BLDALPHA
	stmia	r1!, {r3}
	mov	r3, #0x80
	lsl	r3, #10
	str	r3, [r1]
.L119e:
	strh	r0, [r6]
	mov	r0, #1
	str	r4, [sp]
	bl	__WaitFrames
	add	r5, #2
	ldr	r4, [sp]
	cmp	r5, #0xf
	ble	.L115c
	ldr	r1, =gDMATaskCount
	ldr	r0, =REG_IME
	ldrh	r3, [r0]
	mov	r4, r3
	strh	r0, [r0]
	ldrh	r2, [r1]
	cmp	r2, #0x1f
	bgt	.L11dc
	lsl	r3, r2, #1
	add	r3, r2
	lsl	r3, #2
	add	r2, #1
	add	r3, r1
	add	r3, #4
	strh	r2, [r1]
	mov	r2, #0x10
	stmia	r3!, {r2}
	ldr	r2, =REG_BLDALPHA
	stmia	r3!, {r2}
	mov	r2, #0x80
	lsl	r2, #10
	str	r2, [r3]
.L11dc:
	strh	r4, [r0]
	mov	r3, #0x88
	lsl	r3, #9
	str	r3, [r7, #0x18]
	mov	r3, #0xf0
	lsl	r3, #8
	str	r3, [r7, #0x1c]
	mov	r0, #1
	bl	__CutsceneWait
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r7, #0x18]
	str	r3, [r7, #0x1c]
	mov	r0, #0xd
	bl	__CutsceneWait
	mov	r3, r9
	mov	r2, #0xd
	ldrb	r1, [r3, #5]
	neg	r2, r2
	mov	r3, r2
	mov	r0, r9
	and	r3, r1
	strb	r3, [r0, #5]
	ldrb	r3, [r0, #0x11]
	and	r2, r3
	strb	r2, [r0, #0x11]
	mov	r1, #3
	mov	r0, r11
	bl	__MapActor_DoAnim
	mov	r0, #0x14
	bl	__CutsceneWait
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_common1_1078
