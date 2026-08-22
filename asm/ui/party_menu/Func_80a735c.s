	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_80a735c  @ 0x080a735c
	push	{lr}
	lsl	r0, #18
	lsr	r0, #18
	bl	_GetMoveInfo
	ldrb	r3, [r0, #0xc]
	cmp	r3, #0
	bne	.La7378
	ldrb	r2, [r0, #1]
	mov	r3, #0xc0
	and	r3, r2
	mov	r0, #1
	cmp	r3, #0xc0
	bne	.La737a
.La7378:
	mov	r0, #0
.La737a:
	pop	{r1}
	bx	r1
.func_end Func_80a735c

	.section .rodata.rom_a5534_c_c_c
	.global GFX_Equip_StatDown_Copy
	.global GFX_Equip_StatUp_Copy

GFX_Equip_StatDown_Copy:
	.incrom 0xaeb4c, 0xaebcc
GFX_Equip_StatUp_Copy:
	.incrom 0xaebcc, 0xaed4c
