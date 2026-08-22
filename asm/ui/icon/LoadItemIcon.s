	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start LoadItemIcon  @ 0x0801a370
	push	{r5, r6, lr}
	mov	r5, r0
	ldr	r0, =0x1ff
	ldr	r3, =iwram_3001e94
	and	r0, r5
	ldr	r6, [r3]
	bl	_GetItemInfo
	cmp	r5, #0
	beq	.L1a394
	ldr	r2, =0x604
	ldrh	r3, [r0, #6]
	add	r1, r6, r2
	ldr	r2, =gItemIcons
	lsl	r3, #2
	ldr	r3, [r2, r3]
	str	r3, [r1]
	b	.L1a39e
.L1a394:
	ldr	r2, =gItemIcons
	ldr	r1, =0x604
	ldr	r2, [r2]
	add	r3, r6, r1
	str	r2, [r3]
.L1a39e:
	mov	r2, #0xc0
	lsl	r2, #3
	ldr	r1, =0x602
	add	r3, r6, r2
	mov	r2, #2
	strh	r2, [r3]
	add	r3, r6, r1
	strh	r2, [r3]
	mov	r0, r6
	mov	r1, #0
	bl	LoadIcon
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end LoadItemIcon

