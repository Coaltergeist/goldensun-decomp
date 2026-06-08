	.include "macros.inc"

.thumb_func_start Func_8092ba8  @ 0x08092ba8
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	ldr	r3, =0xfff
	and	r3, r0
	lsl	r3, #2
	add	r3, #0x14
	ldr	r2, [r2, r3]
	mov	r1, #1
	neg	r1, r1
	cmp	r2, #0
	beq	.L92bd2
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92bd2
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r1, [r3, r2]
.L92bd2:
	mov	r0, r1
	pop	{r1}
	bx	r1
.func_end Func_8092ba8

.thumb_func_start Func_8092be0  @ 0x08092be0
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r4, [r3]
	ldr	r2, [r4, #0x34]
	mov	r5, #1
	neg	r5, r5
	mov	r1, #8
	cmp	r2, #0
	beq	.L92c0c
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92c0c
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	bne	.L92c0c
	mov	r5, #8
	b	.L92c34
.L92c0c:
	add	r1, #1
	cmp	r1, #0x41
	bgt	.L92c34
	lsl	r3, r1, #2
	add	r3, #0x14
	ldr	r2, [r4, r3]
	cmp	r2, #0
	beq	.L92c0c
	mov	r3, r2
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L92c0c
	ldr	r3, [r2, #0x50]
	ldr	r3, [r3, #0x28]
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, r0
	bne	.L92c0c
	mov	r5, r1
.L92c34:
	mov	r0, r5
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end Func_8092be0

.thumb_func_start Func_8092c40  @ 0x08092c40
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e8c
	ldr	r1, [r3]
	sub	sp, #0x40
	str	r1, [sp, #0x20]
	ldr	r3, [r3, #0x30]
	mov	r2, #0
	mov	r6, r0
	str	r3, [sp, #0x1c]
	mov	r10, r2
	mov	r9, r2
	bl	Func_8092ba8
	mov	r2, #0xf0
	lsl	r2, #8
	mov	r3, #0
	mov	r11, r2
	mov	r1, #4
	str	r3, [sp, #0x14]
	str	r3, [sp, #0x10]
	str	r1, [sp, #0xc]
	mov	r3, r11
	ldr	r1, [sp, #0x1c]
	mov	r2, #0xec
	lsl	r2, #1
	str	r0, [sp, #0x18]
	and	r3, r6
	mov	r11, r3
	add	r3, r1, r2
	mov	r2, #0
	ldrsh	r1, [r3, r2]
	ldr	r3, =0xfff
	and	r6, r3
	mov	r4, #0
	mov	r0, r6
	mov	r8, r1
	str	r4, [sp, #4]
	bl	GetFieldActor
	mov	r2, #0xfa
	ldr	r1, [sp, #0x1c]
	lsl	r2, #1
	add	r3, r1, r2
	str	r6, [r3]
	sub	r2, #0x28
	add	r3, r1, r2
	ldr	r3, [r3]
	mov	r5, #0
	mov	r7, #0
	ldr	r4, [sp, #4]
	cmp	r3, #0
	beq	.L92cb6
	b	.L92f3c
.L92cb6:
	cmp	r0, #0
	beq	.L92ce6
	sub	r2, #0x2e
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L92cde
	add	r5, sp, #0x34
	mov	r1, r5
	add	r0, #8
	bl	PhysMove
	ldr	r3, [r5]
	asr	r4, r3, #3
	ldr	r3, [r5, #4]
	asr	r5, r3, #3
	mov	r7, #1
	sub	r5, #2
	b	.L92d38
.L92cde:
	add	r5, sp, #0x34
	mov	r1, r5
	mov	r0, r6
	b	.L92d24
.L92ce6:
	cmp	r6, #7
	bgt	.L92d38
	ldr	r3, =gState
	mov	r2, #0xfa
	lsl	r2, #1
	str	r6, [sp, #0x18]
	add	r5, r3, r2
	ldr	r0, [r5]
	bl	GetFieldActor
	mov	r2, #0xcf
	ldr	r1, [sp, #0x1c]
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, #0
	ldrsh	r3, [r3, r1]
	cmp	r3, #3
	bne	.L92d1e
	add	r5, sp, #0x34
	mov	r1, r5
	add	r0, #8
	bl	PhysMove
	ldr	r3, [r5]
	asr	r4, r3, #3
	ldr	r3, [r5, #4]
	mov	r7, #1
	b	.L92d36
.L92d1e:
	ldr	r0, [r5]
	add	r5, sp, #0x34
	mov	r1, r5
.L92d24:
	bl	Func_8094154
	mvn	r0, r0
	neg	r3, r0
	orr	r3, r0
	lsr	r7, r3, #31
	ldr	r3, [r5]
	asr	r4, r3, #3
	ldr	r3, [r5, #4]
.L92d36:
	asr	r5, r3, #3
.L92d38:
	cmp	r7, #0
	bne	.L92d44
	mov	r3, #0xf
	str	r3, [sp, #0x30]
	mov	r3, #0xa
	b	.L92d94
.L92d44:
	mov	r3, #0
	add	r0, sp, #0x24
	str	r3, [sp, #0x30]
	str	r3, [sp, #0x2c]
	add	r2, sp, #0x2c
	add	r3, sp, #0x28
	str	r0, [sp]
	add	r1, sp, #0x30
	mov	r0, r8
	str	r4, [sp, #4]
	bl	_DialogueBox
	ldr	r3, [sp, #0x28]
	lsr	r2, r3, #31
	add	r3, r2
	ldr	r4, [sp, #4]
	asr	r3, #1
	sub	r3, r4, r3
	str	r3, [sp, #0x30]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L92d7e
	ldr	r3, [sp, #0x24]
	sub	r3, r5, r3
	sub	r3, #1
	b	.L92d94
.L92d7e:
	mov	r1, r11
	lsr	r3, r1, #15
	cmp	r3, #0
	bne	.L92d92
	cmp	r5, #8
	bgt	.L92d92
	ldr	r3, [sp, #0x24]
	sub	r3, r5, r3
	sub	r3, #1
	b	.L92d94
.L92d92:
	add	r3, r5, #4
.L92d94:
	str	r3, [sp, #0x2c]
	ldr	r2, [sp, #0x20]
	ldr	r1, =0xea4
	add	r3, r2, r1
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L92da6
	mov	r2, #5
	str	r2, [sp, #0xc]
.L92da6:
	mov	r3, #0x80
	lsl	r3, #5
	mov	r1, r11
	and	r3, r1
	mov	r6, r4
	cmp	r3, #0
	beq	.L92dc2
	ldr	r2, [sp, #0xc]
	sub	r3, r6, r2
	sub	r6, r3, #2
	cmp	r6, #0
	bge	.L92dfe
	mov	r6, #0
	b	.L92dfe
.L92dc2:
	mov	r3, #0x80
	lsl	r3, #6
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L92dde
	ldr	r2, [sp, #0xc]
	add	r6, #2
	add	r3, r6, r2
	cmp	r3, #0x1d
	ble	.L92dfe
	mov	r3, #0x1d
	sub	r6, r3, r2
	b	.L92dfe
.L92dde:
	cmp	r6, #0xf
	bgt	.L92df0
	ldr	r1, [sp, #0xc]
	sub	r3, r6, r1
	sub	r6, r3, #2
	cmp	r6, #0
	bge	.L92dfe
	add	r6, r4, #2
	b	.L92dfe
.L92df0:
	ldr	r2, [sp, #0xc]
	add	r6, #2
	add	r3, r6, r2
	cmp	r3, #0x1d
	ble	.L92dfe
	sub	r3, r4, r2
	sub	r6, r3, #2
.L92dfe:
	ldr	r0, [sp, #0x18]
	bl	_GetPortrait
	mov	r3, #1
	neg	r3, r3
	mov	r7, r0
	mov	r10, r3
	cmp	r7, r10
	beq	.L92e80
	mov	r3, sp
	mov	r1, #0x30
	mov	r2, #0x2c
	add	r1, sp
	add	r2, sp
	add	r3, #0x28
	add	r7, sp, #0x24
	mov	r0, r8
	mov	r9, r1
	mov	r11, r2
	str	r3, [sp, #8]
	str	r7, [sp]
	bl	_DialogueBox
	ldr	r2, [sp, #0x2c]
	sub	r1, r2, #5
	mov	r8, r10
	str	r1, [sp, #0x10]
	cmp	r2, r5
	bgt	.L92e3e
	ldr	r3, [sp, #0x24]
	add	r3, r2, r3
	str	r3, [sp, #0x10]
.L92e3e:
	ldr	r3, [sp, #0x10]
	cmp	r3, #0
	bge	.L92e4c
	ldr	r3, [sp, #0x24]
	add	r3, r2, r3
	str	r3, [sp, #0x10]
	b	.L92e58
.L92e4c:
	ldr	r3, [sp, #0x10]
	add	r3, #5
	cmp	r3, #0x13
	ble	.L92e58
	sub	r1, r2, #5
	str	r1, [sp, #0x10]
.L92e58:
	ldr	r3, [sp, #0x10]
	cmp	r2, r3
	bge	.L92ea2
	mov	r0, #1
	mov	r1, r9
	ldr	r3, [sp, #8]
	neg	r0, r0
	mov	r2, r11
	ldr	r5, [sp, #0x24]
	str	r7, [sp]
	bl	_TextBox
	ldr	r3, [sp, #0x24]
	mov	r1, #1
	sub	r5, r3
	neg	r1, r1
	add	r5, #1
	mov	r8, r1
	str	r5, [sp, #0x14]
	b	.L92ea2
.L92e80:
	ldr	r3, [sp, #0x2c]
	cmp	r3, r5
	bge	.L92ea2
	add	r0, sp, #0x24
	add	r3, sp, #0x28
	str	r0, [sp]
	add	r1, sp, #0x30
	mov	r0, r8
	add	r2, sp, #0x2c
	ldr	r5, [sp, #0x24]
	bl	_TextBox
	ldr	r3, [sp, #0x24]
	sub	r5, r3
	add	r5, #1
	str	r5, [sp, #0x14]
	mov	r8, r7
.L92ea2:
	cmp	r6, #0
	bge	.L92eaa
	mov	r6, #0
	b	.L92eb6
.L92eaa:
	ldr	r2, [sp, #0xc]
	add	r3, r6, r2
	cmp	r3, #0x1d
	ble	.L92eb6
	mov	r3, #0x1d
	sub	r6, r3, r2
.L92eb6:
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea4
	add	r3, r1, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L92ee6
	mov	r0, #8
	bl	WaitFrames
	ldr	r3, [sp, #0x14]
	cmp	r3, #0
	beq	.L92edc
	ldr	r2, [sp, #0x2c]
	add	r2, r3
	ldr	r1, [sp, #0x30]
	sub	r2, #1
	mov	r0, r8
	mov	r3, #0x12
	b	.L92f10
.L92edc:
	ldr	r1, [sp, #0x30]
	ldr	r2, [sp, #0x2c]
	mov	r0, r8
	mov	r3, #2
	b	.L92f10
.L92ee6:
	ldr	r0, [sp, #0x18]
	bl	GetSpriteVoice
	ldr	r1, [sp, #0x14]
	cmp	r1, #0
	beq	.L92f04
	ldr	r3, [sp, #0x14]
	ldr	r2, [sp, #0x2c]
	add	r2, r3
	lsl	r3, r0, #16
	mov	r0, #0x11
	orr	r3, r0
	ldr	r1, [sp, #0x30]
	sub	r2, #1
	b	.L92f0e
.L92f04:
	lsl	r3, r0, #16
	mov	r0, #1
	orr	r3, r0
	ldr	r1, [sp, #0x30]
	ldr	r2, [sp, #0x2c]
.L92f0e:
	mov	r0, r8
.L92f10:
	bl	_Func_8017658
	mov	r10, r0
	ldr	r1, [sp, #0x20]
	ldr	r2, =0xea4
	add	r3, r1, r2
	ldrb	r3, [r3]
	ldr	r0, [sp, #0x18]
	mov	r1, #0
	mov	r2, r6
	ldr	r3, [sp, #0x10]
	bl	_Func_8019da8
	mov	r9, r0
	b	.L92f34
.L92f2e:
	mov	r0, #1
	bl	WaitFrames
.L92f34:
	bl	_Func_8017364
	cmp	r0, #0
	beq	.L92f2e
.L92f3c:
	ldr	r1, [sp, #0x1c]
	mov	r2, #0xfc
	lsl	r2, #1
	add	r3, r1, r2
	mov	r1, r10
	str	r1, [r3]
	ldr	r2, [sp, #0x1c]
	mov	r1, #0xfe
	lsl	r1, #1
	add	r3, r2, r1
	mov	r2, r9
	str	r2, [r3]
	ldr	r3, [sp, #0x1c]
	sub	r1, #0x24
	add	r2, r3, r1
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, r10
	strh	r3, [r2]
	add	sp, #0x40
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end Func_8092c40

.thumb_func_start ActorMessage  @ 0x08092f84
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	ldr	r3, =iwram_3001ebc
	ldr	r3, [r3]
	mov	r7, r0
	mov	r9, r3
	bl	Func_8092c40
	mov	r10, r0
	mov	r0, #1
	bl	WaitFrames
	mov	r0, r7
	bl	Func_8092ba8
	mov	r5, #0
	mov	r8, r0
	cmp	r7, #7
	bgt	.L92fc0
	ldr	r6, =0xfff
	and	r6, r7
	mov	r0, r6
	bl	Func_808d394
	cmp	r0, #0
	bne	.L92fc0
	mov	r8, r6
.L92fc0:
	mov	r0, r8
	bl	_Func_8019e48
	mov	r3, #0xe6
	lsl	r3, #1
	add	r3, r9
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L9301e
	b	.L93014
.L92fd4:
	mov	r0, #1
	bl	WaitFrames
	mov	r3, #0x96
	add	r5, #1
	lsl	r3, #2
	cmp	r5, r3
	bhi	.L93010
	ldr	r1, =gKeyHeld
	ldr	r2, [r1]
	mov	r3, #4
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r2, [r1]
	add	r3, #0xfc
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r2, [r1]
	mov	r3, #0x80
	lsl	r3, #2
	and	r2, r3
	cmp	r2, #0
	beq	.L93014
	ldr	r3, [r1]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L93014
.L93010:
	bl	_Func_8019a54
.L93014:
	mov	r0, r10
	bl	_Func_8017394
	cmp	r0, #0
	beq	.L92fd4
.L9301e:
	mov	r0, #1
	bl	WaitFrames
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end ActorMessage

