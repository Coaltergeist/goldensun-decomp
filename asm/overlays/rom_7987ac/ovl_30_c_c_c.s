	.include "macros.inc"

.thumb_func_start OvlFunc_902_20084e4
	push	{r5, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xe0
	ldr	r3, [r3]
	lsl	r2, #1
	add	r3, r2
	add	r2, #0x49
	str	r2, [r3]
	ldr	r3, =ewram_2000240
	sub	r2, #0x47
	add	r3, r2
	mov	r2, #0
	ldrsh	r3, [r3, r2]
	sub	sp, #8
	cmp	r3, #5
	bne	.L536
	mov	r3, #4
	mov	r2, #3
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x78
	mov	r2, #8
	mov	r3, #0x43
	mov	r0, #0
	bl	__Func_8010424
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r5, #0
	add	r0, #0x55
	strb	r5, [r0]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0xc]
	mov	r0, #8
	bl	__MapActor_GetActor
	str	r5, [r0, #0x14]
	b	.L55a
.L536:
	cmp	r3, #7
	beq	.L53e
	cmp	r3, #0xb
	bne	.L55a
.L53e:
	mov	r1, #0x8e
	mov	r2, #0x80
	mov	r3, #0xa8
	lsl	r1, #18
	mov	r0, #0xe7
	lsl	r2, #13
	lsl	r3, #18
	bl	OvlFunc_902_2008570
	mov	r1, #0xc8
	ldr	r0, =OvlFunc_902_2008030
	lsl	r1, #4
	bl	__StartTask
.L55a:
	mov	r0, #0
	add	sp, #8
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_902_20084e4

.thumb_func_start OvlFunc_902_2008570
	push	{r5, r6, r7, lr}
	mov	r7, r0
	mov	r0, #0x16
	mov	r5, #0
	bl	__Func_800c150
	cmp	r0, #0
	beq	.L5d4
	ldr	r6, [r0, #0x50]
	mov	r3, r6
	add	r3, #0x26
	strb	r5, [r3]
	add	r3, #1
	strb	r5, [r3]
	mov	r3, #0x21
	ldrb	r2, [r6, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r6, #9]
	strb	r3, [r6, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r6, #9]
	mov	r3, r0
	add	r3, #0x55
	mov	r2, r0
	strb	r5, [r3]
	add	r2, #0x5c
	mov	r3, #1
	mov	r1, #0xc1
	strb	r3, [r2]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__Func_80048b0
	mov	r5, r0
	mov	r0, r7
	bl	__Func_801a370
	mov	r3, #0x80
	lsl	r3, #3
	add	r5, r3
	ldrb	r0, [r6, #0x1c]
	mov	r1, #0x80
	mov	r2, r5
	bl	__Func_8003fa4
	mov	r0, #0x11
	bl	__Func_8002dd8
.L5d4:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_902_2008570

	.section .data
	.global .L7f4
	.global .L6dc

.L6dc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x6dc, (0x7cc-0x6dc)
.L7cc:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7cc, (0x7f4-0x7cc)
.L7f4:
	.incbin "overlays/rom_7987ac/orig.bin", 0x7f4, (0x98c-0x7f4)
.L98c:
	.incbin "overlays/rom_7987ac/orig.bin", 0x98c
