	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80ae7fc  @ 0x080ae7fc
	push	{r5, r6, r7, lr}
	mov	r7, r11
	mov	r6, r10
	mov	r5, r9
	push	{r5, r6, r7}
	mov	r7, r8
	push	{r7}
	ldr	r3, =iwram_3001f2c
	ldr	r3, [r3]
	mov	r10, r3
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #0
	ldrb	r3, [r3]
	mov	r8, r2
	mov	r11, r0
	cmp	r8, r3
	bge	.Lae874
	mov	r7, #0x82
	mov	r3, #1
	lsl	r7, #2
	mov	r9, r3
	add	r7, r10
.Lae82a:
	ldrh	r0, [r7]
	bl	_GetUnit
	mov	r6, #0
	mov	r4, #0
	add	r0, #0xf8
.Lae836:
	ldr	r5, [r0, #0x10]
	mov	r1, #0
.Lae83a:
	mov	r2, r9
	lsl	r2, r1
	mov	r3, r5
	and	r3, r2
	cmp	r3, #0
	bne	.Lae84e
	ldr	r3, [r0]
	and	r3, r2
	cmp	r3, #0
	beq	.Lae850
.Lae84e:
	add	r4, #1
.Lae850:
	add	r1, #1
	cmp	r1, #0x13
	ble	.Lae83a
	add	r6, #1
	add	r0, #4
	cmp	r6, #3
	ble	.Lae836
	mov	r3, r8
	mov	r2, r11
	strb	r4, [r2, r3]
	ldr	r3, =0x219
	add	r3, r10
	mov	r2, #1
	ldrb	r3, [r3]
	add	r8, r2
	add	r7, #2
	cmp	r8, r3
	blt	.Lae82a
.Lae874:
	pop	{r3, r5, r6, r7}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	mov	r11, r7
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end Func_80ae7fc

	.section .rodata.rom_ad274_c_c
	.global .Laf304
	.global .Laf304

.Laf304:
	.incrom 0xaf304, 0xaf314
