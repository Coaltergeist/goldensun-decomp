	.include "macros.inc"

.arm_func_start Func_800a494  @ 0x0800a494
	push	{r5, r6, r7, r8, r9, r10, lr}
	mov	r2, #0
	ldr	r3, =iwram_3001e64
	sub	sp, #0x10
	ldr	r5, [r3]
.La4a8:
	ldr	r3, [r5]
	add	r2, #1
	str	r2, [sp]
	add	r1, r5, #0x70
	str	r1, [sp, #4]
	cmp	r3, #0
	beq	.La940
	ldr	r3, [r5, #0x6c]
	cmp	r3, #0
	beq	.La4dc
	mov	r0, r5
	mov	lr, pc
	bx	r3
.La4dc:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La940
	ldrb	r3, [r5, #0x5b]
	cmp	r3, #0
	bne	.La940
	ldrsh	r3, [r5, #0x5e]
	cmp	r3, #0
	ldrh	r3, [r5, #0x5e]
	subne	r3, #1
	strneh	r3, [r5, #0x5e]
	bne	.La558
	ldr	r6, =Data_8013624
	b	.La520
.La514:
	ldrh	r3, [r5, #4]
	add	r3, #1
	strh	r3, [r5, #4]
.La520:
	ldrsh	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0x3f
	bhi	.La514
	mov	r0, r5
	ldr	r12, [r6, r3, lsl #2]
	mov	lr, pc
	bx	r12
	cmp	r0, #0
	bne	.La520
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.La940
.La558:
	ldr	r3, [r5, #0xc]
	ldr	r9, [r5, #8]
	str	r3, [sp, #0xc]
	ldrb	r3, [r5, #0x61]
	cmp	r3, #0
	ldr	r10, [r5, #0x10]
	bne	.La7ac
	ldr	r2, [r5, #0x38]
	str	r3, [sp, #8]
	cmp	r2, #0x80000000
	beq	.La6c0
	rsb	r2, r9, r2
	add	r3, r2, #0xff00
	add	r3, #0xff
	cmp	r2, #0
	ldr	r1, [r5, #0x40]
	asrge	r6, r2, #16
	asrlt	r6, r3, #16
	rsb	r1, r10, r1
	add	r3, r1, #0xff00
	add	r3, #0xff
	cmp	r1, #0
	asrge	r7, r1, #16
	asrlt	r7, r3, #16
	mul	r2, r7, r7
	mla	r0, r6, r6, r2
	ldr	r1, =Func_8000948
	mov	lr, pc
	bx	r1
	lsl	r0, #16
	cmp	r0, #0x1000000
	bge	.La614
	ldr	r3, [r5, #0x38]
	ldr	r2, [r5, #0x40]
	rsb	r6, r9, r3
	rsb	r7, r10, r2
	smull	r1, r3, r6, r6
	lsl	r3, #16
	orr	r3, r1, lsr #16
	smull	r2, r0, r7, r7
	lsl	r0, #16
	orr	r0, r2, lsr #16
	add	r0, r3, r0
	ldr	r3, =Func_8000948
	mov	lr, pc
	bx	r3
	lsl	r0, #8
.La614:
	cmp	r0, #0
	ldreq	r9, [r5, #0x38]
	ldreq	r10, [r5, #0x40]
	beq	.La73c
	ldr	r1, [r5, #0x34]
	ldr	r3, =Func_80008ac
	mov	lr, pc
	bx	r3
	smull	r1, r3, r0, r6
	lsl	r3, #16
	orr	r3, r1, lsr #16
	ldr	r2, [r5, #0x24]
	add	r8, r2, r3
	str	r8, [r5, #0x24]
	smull	r1, r3, r0, r7
	lsl	r3, #16
	orr	r3, r1, lsr #16
	ldr	r2, [r5, #0x2c]
	add	r6, r2, r3
	str	r6, [r5, #0x2c]
	smull	r2, r3, r8, r8
	lsl	r3, #16
	orr	r3, r2, lsr #16
	smull	r1, r0, r6, r6
	lsl	r0, #16
	orr	r0, r1, lsr #16
	ldr	r1, =Func_8000948
	add	r0, r3, r0
	mov	lr, pc
	bx	r1
	ldr	r1, [r5, #0x30]
	lsl	r0, #8
	cmp	r0, r1
	ble	.La73c
	ldr	r3, =Func_80008ac
	mov	lr, pc
	bx	r3
	smull	r2, r3, r0, r8
	lsl	r3, #16
	orr	r3, r2, lsr #16
	str	r3, [r5, #0x24]
	smull	r1, r2, r0, r6
	b	.La720
.La6c0:
	ldr	r6, [r5, #0x24]
	ldr	r7, [r5, #0x2c]
	smull	r2, r3, r6, r6
	lsl	r3, #16
	orr	r3, r2, lsr #16
	smull	r1, r0, r7, r7
	lsl	r0, #16
	orr	r0, r1, lsr #16
	add	r0, r3, r0
	bl	Func_800a960
	lsls	r0, #8
	beq	.La730
	ldr	r3, [r5, #0x34]
	subs	r1, r0, r3
	ldrmi	r1, [sp, #8]
	strmi	r1, [r5, #0x24]
	strmi	r1, [r5, #0x2c]
	bmi	.La73c
	bl	Func_800a968
	smull	r2, r3, r0, r6
	lsl	r3, #16
	orr	r3, r2, lsr #16
	str	r3, [r5, #0x24]
	smull	r1, r2, r0, r7
.La720:
	lsl	r2, #16
	orr	r2, r1, lsr #16
	str	r2, [r5, #0x2c]
	b	.La73c
.La730:
	ldr	r3, [sp, #8]
	str	r3, [r5, #0x24]
	str	r3, [r5, #0x2c]
.La73c:
	ldrb	r3, [r5, #0x55]
	tst	r3, #2
	beq	.La7ac
	ldr	r1, [r5, #0x14]
	ldr	r3, [sp, #0xc]
	cmp	r3, r1
	ble	.La76c
	ldr	r3, [r5, #0x28]
	ldr	r2, [r5, #0x48]
	rsb	r3, r2, r3
	str	r3, [r5, #0x28]
	bgt	.La7ac
.La76c:
	ldr	r2, [r5, #0x28]
	cmp	r2, #0
	bge	.La7ac
	str	r1, [sp, #0xc]
	ldr	r3, [r5, #0x44]
	smull	r2, r3, r3, r2
	lsl	r3, #16
	orr	r3, r2, lsr #16
	rsb	r3, #0
	str	r3, [r5, #0x28]
	ldr	r2, [r5, #0x48]
	cmp	r3, #0
	rsblt	r3, #0
	cmp	r3, r2
	movle	r3, #0
	strle	r3, [r5, #0x28]
.La7ac:
	ldr	r3, [r5, #0x24]
	ldr	r2, [r5, #0x28]
	add	r9, r3
	ldr	r3, [sp, #0xc]
	ldr	r1, [r5, #0x2c]
	add	r3, r2
	str	r3, [sp, #0xc]
	ldrb	r3, [r5, #0x56]
	add	r10, r1
	cmp	r3, #0x11
	beq	.La810
	bgt	.La7e8
	cmp	r3, #0x10
	beq	.La7f4
	b	.La87c
.La7e8:
	cmp	r3, #0x12
	beq	.La854
	b	.La87c
.La7f4:
	ldr	r2, [r5, #0x38]
	cmp	r9, r2
	beq	.La874
	ldr	r3, [r5, #8]
	rsb	r3, r2, r3
	rsb	r2, r9
	b	.La86c
.La810:
	ldr	r2, [r5, #0x3c]
	ldr	r3, [sp, #0xc]
	cmp	r3, r2
	beq	.La838
	ldr	r3, [r5, #0xc]
	ldr	r1, [sp, #0xc]
	rsb	r3, r2, r3
	rsb	r2, r1
	teq	r3, r2
	bpl	.La87c
.La838:
	mov	r3, #1
	str	r3, [sp, #8]
	b	.La87c

	.pool

.La854:
	ldr	r2, [r5, #0x40]
	cmp	r10, r2
	beq	.La874
	ldr	r3, [r5, #0x10]
	rsb	r3, r2, r3
	rsb	r2, r10
.La86c:
	teq	r3, r2
	bpl	.La87c
.La874:
	mov	r1, #1
	str	r1, [sp, #8]
.La87c:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.La8d4
	ldrb	r3, [r5, #0x58]
	cmp	r3, #0
	beq	.La8bc
	ldr	r9, [r5, #0x38]
	mov	r3, #0
	str	r3, [r5, #0x24]
	ldr	r10, [r5, #0x40]
	ldrb	r2, [r5, #0x55]
	str	r3, [r5, #0x2c]
	cmp	r2, r3
	ldreq	r1, [r5, #0x3c]
	streq	r1, [sp, #0xc]
	streq	r2, [r5, #0x28]
.La8bc:
	mov	r3, #0x80000000
	str	r3, [r5, #0x38]
	str	r3, [r5, #0x3c]
	str	r3, [r5, #0x40]
	mov	r2, #0
	strb	r2, [r5, #0x56]
.La8d4:
	str	r9, [r5, #8]
	ldr	r3, [sp, #0xc]
	str	r3, [r5, #0xc]
	ldrb	r3, [r5, #0x5a]
	str	r10, [r5, #0x10]
	tst	r3, #1
	beq	.La940
	ldr	r9, [r5, #0x24]
	ldr	r10, [r5, #0x2c]
	cmp	r10, #0
	cmpeq	r9, #0
	beq	.La940
	mov	r0, r10
	mov	r1, r9
	bl	Func_800a958
	lsl	r0, #16
	ldrh	r3, [r5, #6]
	mov	r2, #0x80000000
	rsb	r0, r3, r0, lsr #16
	lsl	r0, #16
	asr	r0, #16
	cmp	r0, #0x1000
	movge	r0, #0x1000
	cmn	r0, #0x1000
	asrlt	r0, r2, #19
	add	r3, r0
	strh	r3, [r5, #6]
.La940:
	ldm	sp, {r2, r5}
	cmp	r2, #7
	ble	.La4a8
	add	sp, #0x10
	pop	{r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.func_end Func_800a494

.arm_func_start Func_800a958  @ 0x0800a958
	ldr	r4, =atan2
	bx	r4
.ssize	Func_800a958

.arm_func_start Func_800a960  @ 0x0800a960
	ldr	r4, =Func_8000948
	bx	r4
.ssize	Func_800a960

.arm_func_start Func_800a968  @ 0x0800a968
	ldr	r4, =Func_80008ac
	bx	r4
.ssize	Func_800a968

.pool
