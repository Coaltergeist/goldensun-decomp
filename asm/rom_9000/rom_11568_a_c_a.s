	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8011590
	push	{r5, r6, r7, lr}
	ldr	r3, =iwram_3001e6c
	ldmia	r3!, {r5}
	ldr	r7, [r3]
	mov	r3, r7
	add	r3, #0xfc
	mov	r6, #1
	strb	r6, [r3]
	ldr	r0, =Func_801179c
	bl	Func_80042c8
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =0x6004000
	ldr	r1, =ewram_201c000
	ldr	r2, =0x84000800
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #1
	bl	Func_80030f8
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	and	r2, r6
	lsl	r3, r2, #2
	add	r3, r2
	lsl	r3, #10
	add	r5, r3
	mov	r3, #0xc8
	lsl	r3, #4
	add	r5, r3
	ldr	r1, =gBuffer
	mov	r0, r5
	bl	Func_8012388
	mov	r3, #0x80
	lsl	r3, #1
	add	r2, r7, r3
	mov	r3, #0xc8
	strh	r3, [r2]
	add	r3, #0x3a
	add	r2, r7, r3
	mov	r3, #0xff
	strh	r3, [r2]
	ldr	r2, =iwram_3001cfc
	ldr	r3, =Func_8011568
	str	r3, [r2]
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_8011590

