	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_970_20080b0
	push	{r5, lr}
	ldr	r5, =.L181c
	mov	r1, #6
	ldrh	r0, [r5]
	bl	_udivsi3_RAM
	ldr	r2, =.L14ac
	lsl	r0, #16
	lsr	r0, #15
	add	r0, r2
	ldr	r3, =REG_DMA3SAD
	ldr	r1, =0x50000e8
	ldr	r2, =0x80000006
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	ldrh	r3, [r5]
	mov	r2, #0x8c
	add	r3, #1
	strh	r3, [r5]
	lsl	r2, #14
	lsl	r3, #16
	cmp	r3, r2
	bls	.Le2
	ldr	r3, .Le8	@ 0
	strh	r3, [r5]
.Le2:
	pop	{r5}
	pop	{r0}
	bx	r0

	.align	2, 0
.Le8:
	.word	0
.func_end OvlFunc_970_20080b0

.thumb_func_start OvlFunc_970_2008100
	push	{r5, r6, lr}
	mov	r6, r0
	mov	r2, r6
	add	r2, #0x64
	mov	r0, #0
	ldrsh	r1, [r2, r0]
	ldrh	r3, [r2]
	cmp	r1, #0
	beq	.L132
	sub	r3, #1
	strh	r3, [r2]
	bl	__Random
	mov	r5, r0
	bl	__Random
	ldr	r3, [r6, #8]
	sub	r5, r0
	add	r3, r5
	str	r3, [r6, #8]
	ldr	r2, =0xcccc
	ldr	r3, [r6, #0xc]
	add	r3, r2
	str	r3, [r6, #0xc]
	b	.L158
.L132:
	mov	r2, r6
	add	r2, #0x66
	mov	r0, #0
	ldrsh	r3, [r2, r0]
	cmp	r3, #0
	beq	.L158
	strh	r1, [r2]
	mov	r0, r6
	mov	r1, #1
	bl	__Actor_SetAnim
	mov	r2, r6
	add	r2, #0x5e
	mov	r3, #0x14
	strh	r3, [r2]
	ldr	r1, =gScript_970__020094c4
	mov	r0, r6
	bl	__Actor_SetScript
.L158:
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008100

.thumb_func_start OvlFunc_970_2008168
	push	{lr}
	ldr	r2, =.L17f4
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
	cmp	r3, #0x28
	bne	.L186
	ldr	r1, =.L17f0
	ldr	r3, [r1]
	cmp	r3, #4
	ble	.L186
	sub	r3, #1
	str	r3, [r1]
	mov	r3, #0
	str	r3, [r2]
.L186:
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008168

.thumb_func_start OvlFunc_970_2008194
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	mov	r9, r3
	ldr	r3, =gOvl_020097e8
	ldr	r3, [r3]
	sub	sp, #0x14
	cmp	r3, #0
	beq	.L1e0
	ldr	r5, =.L17ec
	ldr	r0, [r5]
	lsl	r0, #9
	bl	__sin
	ldr	r3, =Func_8000888
	mov	r1, #3
	.call_via r3
	ldr	r3, =.L17f0
	add	r0, #8
	ldr	r3, [r3]
	mov	r2, sp
	lsl	r0, #8
	add	r2, #0x12
	add	r3, r0
	strh	r3, [r2]
	ldrh	r2, [r2]
	ldr	r3, =REG_BLDALPHA
	strh	r2, [r3]
	ldr	r3, [r5]
	add	r3, #1
	str	r3, [r5]
.L1e0:
	ldr	r3, =.L17fc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2bc
	ldr	r2, =.L1800
	ldr	r0, [r2]
	lsl	r0, #9
	mov	r11, r2
	bl	__sin
	ldr	r3, =Func_8000888
	mov	r1, #2
	.call_via r3
	ldr	r3, =.L1804
	mov	r2, #0xa0
	ldr	r3, [r3]
	lsl	r6, r0, #16
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.L1808
	mov	r2, #0xb8
	ldr	r3, [r3]
	lsl	r2, #1
	add	r2, r9
	add	r3, r6
	str	r3, [r2]
	ldr	r3, =.L180c
	ldr	r2, =0xffff0000
	mov	r8, r3
	ldr	r3, [r3]
	mov	r10, r2
	cmp	r3, r10
	beq	.L242
	mov	r0, #0
	bl	__MapActor_GetActor
	mov	r2, r8
	ldr	r3, [r2]
	mov	r5, r0
	add	r3, r6
	mov	r2, r5
	str	r3, [r5, #0xc]
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L242:
	ldr	r7, =.L1810
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L268
	mov	r0, #1
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L268:
	ldr	r7, =gOvl_02009814
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L28e
	mov	r0, #3
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L28e:
	ldr	r7, =.L1818
	ldr	r3, [r7]
	cmp	r3, r10
	beq	.L2b4
	mov	r0, #2
	bl	__MapActor_GetActor
	ldr	r3, [r7]
	mov	r5, r0
	add	r3, r6
	str	r3, [r5, #0xc]
	mov	r2, r8
	ldr	r3, [r2]
	mov	r2, r5
	add	r3, r6
	str	r3, [r5, #0x14]
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
.L2b4:
	mov	r2, r11
	ldr	r3, [r2]
	add	r3, #1
	str	r3, [r2]
.L2bc:
	ldr	r3, =.L17f8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L3ac
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r7, #1
	and	r3, r7
	cmp	r3, #0
	beq	.L3ac
	mov	r3, r9
	add	r3, #0xe4
	ldr	r6, [r3]
	add	r3, #4
	ldr	r2, =0xffff0000
	ldr	r5, [r3]
	and	r6, r2
	and	r5, r2
	bl	__Random
	lsl	r3, r0, #4
	sub	r3, r0
	lsl	r3, #4
	add	r2, sp, #4
	add	r6, r3
	mov	r3, #0
	str	r3, [r2, #4]
	str	r6, [r2]
	str	r2, [sp]
	bl	__Random
	lsl	r3, r0, #2
	add	r3, r0
	lsl	r3, #5
	add	r5, r3
	mov	r3, #0xf0
	ldr	r2, [sp]
	lsl	r3, #13
	add	r5, r3
	str	r5, [r2, #8]
	ldr	r1, [r2]
	mov	r3, r5
	ldr	r2, [r2, #4]
	ldr	r0, =0x1f7
	bl	__CreateActor
	mov	r5, r0
	cmp	r5, #0
	beq	.L3ac
	ldr	r3, =OvlFunc_970_2008100
	mov	r2, r5
	str	r3, [r5, #0x6c]
	add	r2, #0x64
	mov	r3, #0x3c
	strh	r3, [r2]
	mov	r3, r5
	ldr	r1, .L35c	@ 0
	add	r3, #0x66
	strh	r7, [r3]
	sub	r3, #0x11
	strb	r1, [r3]
	sub	r2, #0x41
	mov	r3, #2
	strb	r3, [r2]
	ldr	r1, [r5, #0x50]
	ldrb	r2, [r1, #9]
	sub	r3, #0xf
	and	r3, r2
	mov	r2, #8
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r0, r5
	mov	r1, #0
	bl	__Actor_SetAnim
	b	.L3ac

	.align	2, 0
.L35c:
	.word	0
	.pool

.L3ac:
	add	sp, #0x14
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_970_2008194
