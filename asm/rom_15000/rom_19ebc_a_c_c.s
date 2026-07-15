	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadOldUIIcon  @ 0x08019ee4
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	mov	r5, r1
	mov	r1, #0xc1
	sub	sp, #4
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	str	r3, [sp]
	mov	r11, r2
	bl	galloc_iwram
	ldr	r3, =.L29a10
	lsl	r5, #2
	ldr	r2, =0x604
	ldr	r3, [r3, r5]
	mov	r7, r0
	add	r2, r7
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #3
	add	r3, r7
	mov	r10, r3
	ldr	r3, =0x602
	add	r3, r7
	mov	r5, #2
	mov	r8, r3
	mov	r9, r2
	mov	r2, r10
	strh	r5, [r2]
	mov	r2, r8
	strh	r5, [r2]
	mov	r1, #0
	bl	LoadIcon
	ldr	r3, =.L29e00
	lsl	r6, #2
	ldr	r3, [r3, r6]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, r10
	mov	r2, r8
	strh	r5, [r3]
	mov	r0, r7
	strh	r5, [r2]
	mov	r1, #1
	bl	LoadIcon
	ldr	r3, [sp, #0x24]
	cmp	r3, #0
	bne	.L19f5c
	bl	AllocSpriteSlot
	mov	r2, r11
	str	r0, [r2]
.L19f5c:
	mov	r3, r11
	ldr	r0, [r3]
	mov	r3, #0x80
	lsl	r3, #3
	add	r2, r7, r3
	mov	r1, #0x80
	bl	UploadSpriteGFX
	ldr	r2, [sp]
	str	r0, [r2]
	mov	r0, #0x11
	bl	gfree
	add	sp, #4
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadOldUIIcon

	.section .text.after_old_move_icon, "ax", %progbits

.thumb_func_start LoadItemIconID  @ 0x08019fcc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r1, #0
	mov	r10, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	mov	r8, r2
	mov	r9, r3
	bl	galloc_iwram
	mov	r5, r0
	bl	NumItemIcons
	cmp	r6, r0
	bcc	.L19ff8
	mov	r6, #0
.L19ff8:
	cmp	r7, #0
	beq	.L1a022
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =.L29a10
	mov	r1, #0xc0
	ldr	r3, [r3, #8]
	lsl	r1, #3
	str	r3, [r2]
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	LoadIcon
	mov	r2, #1
	mov	r10, r2
.L1a022:
	ldr	r3, =0x604
	ldr	r2, =.L29ee4
	add	r1, r5, r3
	lsl	r3, r6, #2
	ldr	r3, [r2, r3]
	str	r3, [r1]
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, r10
	bl	LoadIcon
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L1a054
	bl	AllocSpriteSlot
	mov	r3, r8
	str	r0, [r3]
.L1a054:
	mov	r3, #0x80
	mov	r1, r8
	lsl	r3, #3
	ldr	r0, [r1]
	add	r2, r5, r3
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, r9
	str	r0, [r1]
	mov	r0, #0x11
	bl	gfree
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadItemIconID

.thumb_func_start DrawInventoryIcon  @ 0x0801a088
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #0xc
	str	r0, [sp, #8]
	ldr	r2, [sp, #8]
	ldr	r0, =0x1ff
	mov	r11, r1
	and	r0, r2
	mov	r1, #0
	str	r1, [sp, #4]
	mov	r10, r1
	bl	_GetItemInfo
	ldr	r3, =iwram_3001e94
	str	r0, [sp]
	ldr	r5, [r3]
	cmp	r5, #0
	bne	.L1a0bc
	mov	r0, #1
	neg	r0, r0
	b	.L1a272
.L1a0bc:
	mov	r3, #1
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1a0ec
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =.L29a10
	mov	r1, #0xc0
	ldr	r3, [r3, #8]
	lsl	r1, #3
	str	r3, [r2]
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	LoadIcon
	mov	r2, #1
	str	r2, [sp, #4]
.L1a0ec:
	ldr	r3, =0x604
	ldr	r1, [sp]
	add	r3, r5
	mov	r9, r3
	ldrh	r3, [r1, #6]
	ldr	r2, =.L29ee4
	lsl	r3, #2
	ldr	r3, [r2, r3]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, #0xc0
	lsl	r3, #3
	add	r3, r5
	ldr	r2, =0x602
	mov	r8, r3
	mov	r6, #2
	mov	r1, r8
	add	r7, r5, r2
	strh	r6, [r1]
	strh	r6, [r7]
	ldr	r1, [sp, #4]
	mov	r0, r5
	bl	LoadIcon
	mov	r3, #8
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1a148
	mov	r3, #0x80
	ldr	r2, [sp, #8]
	lsl	r3, #3
	and	r3, r2
	cmp	r3, #0
	beq	.L1a148
	ldr	r3, =.L29acc
	ldr	r3, [r3, #4]
	mov	r1, r9
	mov	r2, r8
	str	r3, [r1]
	mov	r0, r5
	strh	r6, [r2]
	mov	r1, #1
	strh	r6, [r7]
	bl	LoadIcon
.L1a148:
	mov	r3, #0x10
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1a180
	mov	r3, #0x80
	ldr	r2, [sp, #8]
	lsl	r3, #2
	and	r3, r2
	cmp	r3, #0
	beq	.L1a180
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =.L29acc
	mov	r1, #0xc0
	ldr	r3, [r3]
	lsl	r1, #3
	str	r3, [r2]
	add	r3, r5, r1
	mov	r2, #2
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, #1
	bl	LoadIcon
.L1a180:
	mov	r3, #0x20
	mov	r2, r11
	and	r3, r2
	cmp	r3, #0
	beq	.L1a1cc
	mov	r3, #0x80
	ldr	r1, [sp, #8]
	lsl	r3, #2
	and	r3, r1
	cmp	r3, #0
	beq	.L1a1cc
	ldr	r2, [sp]
	ldrb	r0, [r2, #3]
	mov	r3, #1
	and	r3, r0
	cmp	r3, #0
	beq	.L1a1cc
	mov	r1, #2
	mov	r3, r1
	and	r3, r0
	cmp	r3, #0
	beq	.L1a1cc
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =.L29acc
	ldr	r3, [r3, #8]
	str	r3, [r2]
	mov	r2, #0xc0
	lsl	r2, #3
	add	r3, r5, r2
	add	r2, #2
	strh	r1, [r3]
	add	r3, r5, r2
	strh	r1, [r3]
	mov	r0, r5
	mov	r1, #1
	bl	LoadIcon
.L1a1cc:
	mov	r3, #2
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1a1f0
	mov	r3, #0xf8
	ldr	r2, [sp, #8]
	lsl	r3, #8
	and	r3, r2
	lsr	r3, #11
	mov	r10, r3
	mov	r3, #1
	add	r10, r3
	mov	r1, r10
	cmp	r1, #1
	bgt	.L1a1f0
	mov	r2, #0
	mov	r10, r2
.L1a1f0:
	mov	r3, #4
	mov	r1, r11
	and	r3, r1
	cmp	r3, #0
	beq	.L1a20a
	mov	r3, #0xf8
	ldr	r2, [sp, #8]
	lsl	r3, #8
	and	r3, r2
	lsr	r3, #11
	mov	r10, r3
	mov	r3, #1
	add	r10, r3
.L1a20a:
	mov	r1, r10
	cmp	r1, #0
	beq	.L1a26e
	cmp	r1, #0x1e
	bgt	.L1a26e
	mov	r1, #0xa
	mov	r0, r10
	bl	__modsi3
	ldr	r3, =.L29b68
	lsl	r0, #2
	ldr	r2, =0x604
	mov	r11, r3
	mov	r1, #0xc0
	ldr	r3, [r3, r0]
	add	r2, r5
	lsl	r1, #3
	str	r3, [r2]
	add	r1, r5
	ldr	r3, =0x602
	mov	r8, r1
	mov	r6, #2
	add	r7, r5, r3
	mov	r9, r2
	mov	r2, r8
	strh	r6, [r2]
	mov	r0, r5
	mov	r1, #1
	strh	r6, [r7]
	bl	LoadIcon
	mov	r0, r10
	mov	r1, #0xa
	bl	__divsi3
	cmp	r0, #0
	beq	.L1a26e
	lsl	r3, r0, #2
	mov	r1, r11
	add	r3, #0x24
	ldr	r3, [r1, r3]
	mov	r2, r9
	str	r3, [r2]
	mov	r3, r8
	strh	r6, [r3]
	mov	r0, r5
	strh	r6, [r7]
	mov	r1, #1
	bl	LoadIcon
.L1a26e:
	mov	r0, #0x80
	lsl	r0, #1
.L1a272:
	add	sp, #0xc
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end DrawInventoryIcon

	.section .text.after_load_move_icon, "ax", %progbits

.thumb_func_start LoadMoveIconID  @ 0x0801a404
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r7, r1
	mov	r1, #0xc1
	mov	r6, r0
	lsl	r1, #3
	mov	r0, #0x11
	mov	r10, r2
	mov	r9, r3
	bl	galloc_iwram
	mov	r1, #0
	mov	r5, r0
	mov	r8, r1
	bl	NumMoveIcons
	cmp	r6, r0
	bcc	.L1a430
	mov	r6, #0
.L1a430:
	cmp	r7, #0
	beq	.L1a45a
	ldr	r3, =0x604
	add	r2, r5, r3
	ldr	r3, =.L29a10
	mov	r1, #0xc0
	ldr	r3, [r3, #8]
	lsl	r1, #3
	str	r3, [r2]
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, #0
	bl	LoadIcon
	mov	r2, #1
	mov	r8, r2
.L1a45a:
	ldr	r3, =0x604
	ldr	r2, =.L2de88
	add	r1, r5, r3
	lsl	r3, r6, #2
	ldr	r3, [r2, r3]
	str	r3, [r1]
	mov	r1, #0xc0
	lsl	r1, #3
	mov	r2, #2
	add	r3, r5, r1
	add	r1, #2
	strh	r2, [r3]
	add	r3, r5, r1
	strh	r2, [r3]
	mov	r0, r5
	mov	r1, r8
	bl	LoadIcon
	ldr	r2, [sp, #0x1c]
	cmp	r2, #0
	bne	.L1a48c
	bl	AllocSpriteSlot
	mov	r3, r10
	str	r0, [r3]
.L1a48c:
	mov	r3, #0x80
	mov	r1, r10
	lsl	r3, #3
	ldr	r0, [r1]
	add	r2, r5, r3
	mov	r1, #0x80
	bl	UploadSpriteGFX
	mov	r1, r9
	str	r0, [r1]
	mov	r0, #0x11
	bl	gfree
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end LoadMoveIconID

	.section .text.after_decompress_status_icon, "ax", %progbits
