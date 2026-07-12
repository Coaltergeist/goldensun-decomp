	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_914_2008bcc
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r4, [r3]
	mov	r0, #0xa0
	ldr	r3, =REG_DMA3SAD
	lsl	r0, #19
	mov	r1, r4
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r2, #0xe0
	lsl	r2, #1
	add	r1, r4, r2
	ldr	r0, =0x5000200
	ldr	r2, =0x84000070
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008bcc

.thumb_func_start OvlFunc_914_2008c0c
	push	{lr}
	ldr	r3, =iwram_3001ed0
	ldr	r1, [r3]
	cmp	r0, #0
	beq	.Lc1c
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L17b0
	b	.Lc20
.Lc1c:
	ldr	r3, =REG_DMA3SAD
	ldr	r0, =.L10b0
.Lc20:
	ldr	r2, =0x840000e0
	stmia	r3!, {r0, r1, r2}
	sub	r3, #0xc
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091200
	bl	OvlFunc_914_2008bcc
	pop	{r0}
	bx	r0
.func_end OvlFunc_914_2008c0c
