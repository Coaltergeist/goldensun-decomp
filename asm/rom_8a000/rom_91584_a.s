	.include "macros.inc"

.thumb_func_start Func_8091584
	push	{lr}
	bl	Func_808ba1c
	mov	r3, r0
	add	r3, #0x54
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L915a0
	ldr	r0, [r0, #0x50]
	cmp	r0, #0
	beq	.L915a0
	ldr	r0, [r0, #0x28]
	cmp	r0, #0
	bne	.L915a4
.L915a0:
	mov	r0, #0
	b	.L915a8
.L915a4:
	mov	r3, #0
	ldrsh	r0, [r0, r3]
.L915a8:
	pop	{r1}
	bx	r1
.func_end Func_8091584

.thumb_func_start Func_80915ac
	push	{lr}
	ldr	r3, =ewram_2000240
	ldr	r2, =0x20a
	add	r3, r2
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L915c4
	bl	Func_8091560
	ldrb	r0, [r0, #2]
	cmp	r0, #0xff
	bne	.L915c8
.L915c4:
	mov	r0, #0
	b	.L915ce
.L915c8:
	mov	r3, #0x80
	lsl	r3, #1
	add	r0, r3
.L915ce:
	pop	{r1}
	bx	r1
.func_end Func_80915ac

.thumb_func_start Func_80915dc
	push	{lr}
	bl	Func_8091584
	bl	Func_8091560
	ldrb	r0, [r0, #3]
	pop	{r1}
	bx	r1
.func_end Func_80915dc

.thumb_func_start Func_80915ec
	push	{lr}
	ldr	r3, =iwram_3001ebc
	ldr	r1, [r3]
	ldr	r3, =iwram_3001f54
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L9162a
	ldr	r0, =iwram_3001c94
	mov	r2, #0x80
	ldr	r3, [r0]
	lsl	r2, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L91612
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2]
.L91612:
	ldr	r3, [r0]
	mov	r2, #0x80
	lsl	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L9162a
	mov	r3, #0xe6
	lsl	r3, #1
	add	r2, r1, r3
	mov	r3, #1
	neg	r3, r3
	str	r3, [r2]
.L9162a:
	pop	{r0}
	bx	r0
.func_end Func_80915ec

.thumb_func_start Func_809163c
	push	{lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe6
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L91656
	cmp	r0, #0
	beq	.L91656
	bl	Func_80030f8
.L91656:
	pop	{r0}
	bx	r0
.func_end Func_809163c

.thumb_func_start Func_8091660
	push	{r5, lr}
	ldr	r5, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r5, r2
	ldr	r0, [r3]
	bl	Func_808ba1c
	mov	r3, #0x80
	lsl	r3, #9
	str	r3, [r0, #0x30]
	mov	r3, #0x80
	lsl	r3, #8
	str	r3, [r0, #0x34]
	mov	r3, #0x80
	lsl	r3, #24
	str	r3, [r0, #0x38]
	str	r3, [r0, #0x40]
	mov	r2, #0xf9
	mov	r3, #0
	str	r3, [r0, #0x24]
	str	r3, [r0, #0x2c]
	lsl	r2, #1
	add	r3, r5, r2
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L9169e
	mov	r1, #0xc
	bl	_Func_800c300
	b	.L916a4
.L9169e:
	mov	r1, #1
	bl	_Func_800c300
.L916a4:
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end Func_8091660

.thumb_func_start Func_80916b0
	push	{r5, r6, lr}
	ldr	r3, =iwram_3001ebc
	ldr	r6, [r3]
	bl	_Func_801c428
	bl	Func_8091660
	ldr	r2, =0xcb6
	add	r3, r6, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	cmp	r3, #0
	beq	.L916ce
	bl	Func_808e118
.L916ce:
	ldr	r2, =0xcc2
	mov	r5, #0
	add	r3, r6, r2
	add	r2, #2
	strh	r5, [r3]
	add	r3, r6, r2
	strh	r5, [r3]
	mov	r3, #0xe4
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #0x10
	str	r3, [r2]
	mov	r2, #0xe6
	lsl	r2, #1
	add	r3, r6, r2
	str	r5, [r3]
	mov	r3, #0xed
	lsl	r3, #1
	add	r2, r6, r3
	ldr	r3, =0xffff
	strh	r3, [r2]
	mov	r3, #0xee
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	strh	r3, [r2]
	mov	r3, #0xef
	lsl	r3, #1
	add	r2, r6, r3
	mov	r3, #1
	neg	r3, r3
	mov	r1, #0xc8
	strh	r3, [r2]
	lsl	r1, #4
	ldr	r0, =Func_80915ec
	bl	Func_80041d8
	mov	r0, #0x99
	lsl	r0, #1
	bl	_Func_8079374
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	ldr	r3, [r3, r2]
	str	r3, [r6, r2]
	add	r2, #4
	add	r3, r6, r2
	str	r5, [r3]
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end Func_80916b0

.thumb_func_start Func_8091750
	push	{lr}
	ldr	r0, =Func_80915ec
	bl	Func_8004278
	ldr	r3, =ewram_2000240
	mov	r2, #0xfa
	lsl	r2, #1
	add	r3, r2
	ldr	r0, [r3]
	mov	r1, #1
	bl	Func_809335c
	bl	_Func_8077c10
	pop	{r0}
	bx	r0
.func_end Func_8091750

