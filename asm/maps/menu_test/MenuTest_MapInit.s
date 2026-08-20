	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start MenuTest_MapInit
	push	{lr}
	mov	r0, #5
	bl	__Func_8079664
	mov	r0, #1
	bl	__AddPartyMember
	mov	r0, #3
	bl	__AddPartyMember
	mov	r0, #2
	bl	__AddPartyMember
	mov	r1, #1
	mov	r0, #5
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #5
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #5
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #6
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #6
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #7
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x6a
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x6c
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x6d
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x71
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x7b
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x82
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x8c
	bl	__Func_8078ad0
	mov	r1, #1
	mov	r0, #0x97
	bl	__Func_8078ad0
	mov	r0, #0
	mov	r1, #0x32
	bl	__SetMinLevel
	mov	r0, #1
	mov	r1, #0x1e
	bl	__SetMinLevel
	mov	r0, #3
	mov	r1, #0x1e
	bl	__SetMinLevel
	mov	r1, #0x1e
	mov	r0, #2
	bl	__SetMinLevel
	mov	r0, #0
	bl	__CalcStats
	mov	r0, #1
	bl	__CalcStats
	mov	r0, #3
	bl	__CalcStats
	mov	r0, #2
	bl	__CalcStats
	mov	r0, #0
	pop	{r1}
	bx	r1
.func_end MenuTest_MapInit

