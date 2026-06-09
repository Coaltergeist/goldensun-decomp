	.include "macros.inc"

.thumb_func_start GetFlag  @ 0x08079338
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	lsl	r2, r3
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	ldrb	r3, [r3, r0]
	and	r3, r2
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	bx	lr
.func_end GetFlag

.thumb_func_start SetFlag  @ 0x08079358
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	ldr	r1, =gFlags
	lsl	r2, r3
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldrb	r3, [r1, r0]
	orr	r2, r3
	strb	r2, [r1, r0]
	bx	lr
.func_end SetFlag

.thumb_func_start ClearFlag  @ 0x08079374
	mov	r3, #7
	and	r3, r0
	mov	r2, #1
	lsl	r2, r3
	ldr	r1, =gFlags
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldrb	r3, [r1, r0]
	bic	r3, r2
	strb	r3, [r1, r0]
	bx	lr
.func_end ClearFlag

.thumb_func_start ToggleFlag  @ 0x08079390
	mov	r4, r0
	mov	r3, #7
	and	r3, r4
	mov	r1, #1
	lsl	r1, r3
	ldr	r2, =gFlags
	lsl	r3, r4, #20
	lsr	r4, r3, #23
	ldrb	r0, [r2, r4]
	mov	r3, r1
	eor	r3, r0
	strb	r3, [r2, r4]
	ldrb	r3, [r2, r4]
	and	r3, r1
	neg	r0, r3
	orr	r0, r3
	lsr	r0, #31
	bx	lr
.func_end ToggleFlag

.thumb_func_start GetFlagByte  @ 0x080793b8
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	ldrb	r0, [r3, r0]
	bx	lr
.func_end GetFlagByte

.thumb_func_start SetFlagByte  @ 0x080793c8
	lsl	r3, r0, #20
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	strb	r1, [r3, r0]
	bx	lr
.func_end SetFlagByte

.thumb_func_start IncFlagByte  @ 0x080793d8
	push	{lr}
	lsl	r3, r0, #20
	ldr	r1, =gFlags
	lsr	r0, r3, #23
	ldrb	r2, [r1, r0]
	mov	r3, r2
	cmp	r3, #0xfe
	bhi	.L793ec
	add	r3, r2, #1
	strb	r3, [r1, r0]
.L793ec:
	ldrb	r0, [r1, r0]
	pop	{r1}
	bx	r1
.func_end IncFlagByte

.thumb_func_start DecFlagByte  @ 0x080793f8
	push	{lr}
	lsl	r3, r0, #20
	ldr	r1, =gFlags
	lsr	r0, r3, #23
	ldrb	r2, [r1, r0]
	mov	r3, r2
	cmp	r3, #0
	beq	.L7940c
	add	r3, #0xff
	strb	r3, [r1, r0]
.L7940c:
	ldrb	r0, [r1, r0]
	pop	{r1}
	bx	r1
.func_end DecFlagByte

.thumb_func_start GetFlagNybble  @ 0x08079418
	lsl	r3, r0, #20
	mov	r1, #4
	and	r1, r0
	lsr	r0, r3, #23
	ldr	r3, =gFlags
	mov	r2, #0xf
	ldrb	r0, [r3, r0]
	lsl	r2, r1
	and	r0, r2
	asr	r0, r1
	bx	lr
.func_end GetFlagNybble

.thumb_func_start SetFlagNybble  @ 0x08079434
	push	{r5, r6, lr}
	mov	r6, r0
	ldr	r4, =gFlags
	lsl	r3, r6, #20
	mov	r0, #4
	and	r0, r6
	mov	r5, #0xf
	lsr	r6, r3, #23
	ldrb	r3, [r4, r6]
	mov	r2, r5
	lsl	r2, r0
	and	r1, r5
	bic	r3, r2
	lsl	r1, r0
	orr	r3, r1
	strb	r3, [r4, r6]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end SetFlagNybble
