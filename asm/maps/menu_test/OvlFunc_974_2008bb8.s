	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_974_2008bb8
	push	{lr}
	ldr	r0, =0xc1f
	mov	r1, #1
	bl	__Func_801776c
	mov	r1, #0x55
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x54
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x7c
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x7b
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #9
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0xb
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x1b
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x1a
	mov	r0, #0
	bl	__GiveItemTo
	mov	r1, #0x26
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x25
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x32
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x31
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x53
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x52
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x86
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x85
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x98
	mov	r0, #1
	bl	__GiveItemTo
	mov	r1, #0x40
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x41
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x62
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x61
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x7c
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x83
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x8d
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0xa3
	mov	r0, #2
	bl	__GiveItemTo
	mov	r1, #0x3d
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x3f
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x60
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x5f
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x71
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x70
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x82
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0x8e
	mov	r0, #3
	bl	__GiveItemTo
	mov	r1, #0xab
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
.func_end OvlFunc_974_2008bb8

