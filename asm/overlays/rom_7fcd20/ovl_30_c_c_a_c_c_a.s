	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008f14
	push	{lr}
	ldr	r0, =0xc1c
	mov	r1, #1
	bl	__Func_801776c
	mov	r1, #0xb8
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xcc
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xdc
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xdd
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xde
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xdf
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xe0
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xe2
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe3
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe6
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe4
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe5
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe8
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xe7
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xed
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0xf2
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x81
	lsl	r1, #1
	mov	r0, #2
	bl	__GiveItemTo
	ldr	r1, =0x10b
	mov	r0, #2
	bl	__GiveItemTo
	ldr	r1, =0x109
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0xfc
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0xbd
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xc8
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xc9
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xca
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xcb
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xcc
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xcf
	mov	r0, #3
	bl	__GiveItemTo
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	pop	{r0}
	bx	r0
.func_end OvlFunc_974_2008f14

