	.include "macros.inc"

.section .text.after_9568
.thumb_func_start OvlFunc_924_20095e0
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	sub	sp, #8
	mov	r8, r0
	mov	r5, r1
	mov	r9, r2
	cmp	r0, #0
	beq	.L1600
	mov	r0, #0xdb
	bl	__PlaySound
.L1600:
	mov	r6, r5
	cmp	r6, r9
	bcs	.L169a
	mov	r2, #1
	mov	r3, #4
	mov	r10, r2
	mov	r11, r3
.L160e:
	lsl	r3, r6, #1
	mov	r2, #0x2d
	sub	r0, r2, r3
	mov	r2, #0x2c
	sub	r2, r3
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r1, #0x20
	mov	r3, #0x20
	add	r7, r6, #1
	str	r7, [sp]
	bl	__CopyMapTiles
	mov	r3, #0x2d
	sub	r2, r3, r6
	mov	r3, r10
	str	r3, [sp]
	mov	r3, #6
	str	r3, [sp, #4]
	mov	r0, r2
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r5, #0x6d
	mov	r3, r10
	sub	r5, r6
	str	r3, [sp]
	mov	r2, #0x6c
	mov	r3, r11
	str	r3, [sp, #4]
	sub	r2, r6
	mov	r0, r5
	mov	r1, #0x20
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r10
	mov	r3, r11
	str	r2, [sp]
	str	r3, [sp, #4]
	mov	r2, r5
	mov	r0, r5
	mov	r1, #0x33
	mov	r3, #0x20
	bl	__CopyMapTiles
	mov	r2, r8
	cmp	r2, #0
	beq	.L1694
	mov	r0, #0xa0
	lsl	r0, #11
	mov	r2, #0x80
	mov	r1, r0
	lsl	r2, #9
	bl	__Func_8012330
	mov	r0, #1
	mov	r1, #1
	neg	r0, r0
	neg	r1, r1
	ldr	r2, =0xe666
	bl	__Func_8012330
	mov	r0, r8
	bl	__CutsceneWait
.L1694:
	mov	r6, r7
	cmp	r6, r9
	bcc	.L160e
.L169a:
	mov	r3, #0x2a
	mov	r2, #0x21
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x2a
	mov	r1, #0x34
	mov	r2, #4
	mov	r3, #5
	bl	__Func_8010704
	add	sp, #8
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_924_20095e0
