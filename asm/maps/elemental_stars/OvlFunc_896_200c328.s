	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200c328
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001ebc
	mov	r2, #0xec
	ldr	r6, [r3]
	lsl	r2, #1
	add	r3, r6, r2
	mov	r0, #0x53
	sub	sp, #8
	mov	r2, #0
	ldrsh	r7, [r3, r2]
	bl	__PlaySound
	mov	r0, #0xe0
	mov	r1, #3
	bl	__Func_808f1c0
	ldr	r0, =0x111b
	mov	r1, #1
	bl	__Func_801776c
.Lm896_4350:
	mov	r0, #0
	bl	__FindEmptyInventorySlot
	mov	r5, #0x1e
	sub	r5, r0
	mov	r0, #1
	bl	__FindEmptyInventorySlot
	sub	r5, r0
	cmp	r5, #3
	bgt	.Lm896_4388
	ldr	r0, =0x111c
	mov	r1, #1
	bl	__Func_801776c
	add	r0, sp, #4
	mov	r1, sp
	bl	__UI_SellMenu
	mov	r3, #1
	neg	r3, r3
	cmp	r0, r3
	beq	.Lm896_4350
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	__Func_8078948
	b	.Lm896_4350
.Lm896_4388:
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r0, #0xe0
	bl	__GiveItem
	mov	r2, #0xec
	lsl	r2, #1
	add	r3, r6, r2
	strh	r7, [r3]
	add	sp, #8
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c328

