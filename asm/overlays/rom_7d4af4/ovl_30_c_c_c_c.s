	.include "macros.inc"

.thumb_func_start OvlFunc_949_2008980
	push	{r5, lr}
	bl	__Func_80916b0
	mov	r0, #1
	mov	r1, #1
	mov	r2, #1
	mov	r3, #0
	neg	r0, r0
	neg	r1, r1
	neg	r2, r2
	bl	__Func_80933f8
	mov	r1, #0x80
	mov	r2, #0x80
	mov	r0, #0x1d
	lsl	r1, #9
	lsl	r2, #8
	bl	__Func_8092064
	mov	r1, #0x80
	mov	r2, #0x80
	lsl	r1, #9
	lsl	r2, #8
	mov	r0, #0x1e
	bl	__Func_8092064
	ldr	r5, =0x1fb6
	mov	r0, r5
	bl	__Func_8092b94
	mov	r1, #0x90
	mov	r2, #0xd0
	mov	r0, #0x1d
	lsl	r1, #15
	lsl	r2, #16
	bl	__Func_80923e4
	mov	r1, #0xe0
	mov	r2, #0xd0
	lsl	r2, #16
	mov	r0, #0x1e
	lsl	r1, #14
	bl	__Func_80923e4
	mov	r1, #0xf
	mov	r0, #0x20
	bl	__Func_8092950
	mov	r0, #0x20
	bl	__Func_8092054
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, #0xbe
	mov	r2, #0xa0
	mov	r0, #0x20
	lsl	r1, #15
	lsl	r2, #14
	bl	__Func_80923e4
	mov	r0, #0x1d
	mov	r1, #0x48
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r0, #0x1e
	mov	r1, #0x38
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r2, #0x84
	mov	r0, #0
	mov	r1, #0x40
	lsl	r2, #1
	bl	__Func_80921c4
	mov	r1, #0xc0
	mov	r2, #0
	lsl	r1, #8
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x1d
	bl	__Func_80923c4
	mov	r0, #0x1d
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x1e
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0
	mov	r1, #1
	bl	__Func_80924d4
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0
	bl	__Func_809280c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_809280c
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x81
	mov	r0, #0x1d
	lsl	r1, #1
	bl	__Func_8093874
	mov	r1, #0x81
	mov	r0, #0x1e
	lsl	r1, #1
	bl	__Func_8093874
	mov	r0, #0x1d
	mov	r1, #2
	bl	__Func_809259c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_80925cc
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_8092c40
	mov	r0, #0x19
	bl	__Func_809163c
	add	r5, #3
	mov	r1, #0
	mov	r2, #0xc
	mov	r3, #7
	mov	r0, #0x34
	bl	__Func_8019da8
	mov	r0, r5
	mov	r1, #0xb
	mov	r2, #0xc
	mov	r3, #2
	bl	__Func_8017658
	ldr	r5, =iwram_3001ebc
	mov	r2, #0xfa
	ldr	r3, [r5]
	lsl	r2, #1
	add	r3, r2
	mov	r2, #0x20
	str	r2, [r3]
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.Lb9e
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #3
	mov	r0, #0x1d
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x1d
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x1e
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x1d
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r0, #0x1e
	ldr	r1, =0x1cccc
	ldr	r2, =0xe666
	bl	__Func_8092064
	mov	r1, #0xe8
	mov	r2, #0xf8
	mov	r0, #0x1d
	bl	__Func_809218c
	mov	r0, #2
	bl	__Func_809163c
	mov	r1, #0xe8
	mov	r2, #0xf8
	mov	r0, #0x1e
	bl	__Func_809218c
	mov	r0, #0x1d
	bl	__Func_80923c4
	mov	r0, #0x1d
	mov	r1, #0xf8
	mov	r2, #0xf8
	bl	__Func_809218c
	mov	r0, #0x1e
	mov	r1, #0xf8
	mov	r2, #0xf8
	bl	__Func_80921c4
	b	.Lc5e
.Lb9e:
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #2
	mov	r0, #0x1e
	bl	__Func_80925cc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0xa
	bl	__Func_809163c
	mov	r1, #4
	mov	r0, #0x1d
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x1d
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	ldr	r2, [r5]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	strh	r3, [r2]
	mov	r1, #0
	mov	r0, #0x1d
	bl	__Func_8092f84
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r1, #0x80
	mov	r0, #0x1d
	lsl	r1, #7
	mov	r2, #0
	bl	__Func_8092adc
	mov	r1, #0x80
	mov	r2, #0
	lsl	r1, #7
	mov	r0, #0x1e
	bl	__Func_8092adc
	mov	r0, #0x1e
	bl	__Func_809163c
	mov	r0, #0x1d
	mov	r1, #3
	bl	__Func_80924d4
	mov	r1, #3
	mov	r0, #0x1e
	bl	__Func_8092548
	mov	r0, #0x14
	bl	__Func_809163c
	mov	r0, #0x1d
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #0x1e
	ldr	r1, =0x19999
	ldr	r2, =0xcccc
	bl	__Func_8092064
	mov	r0, #0x1d
	mov	r1, #0x48
	mov	r2, #0xb8
	bl	__Func_809218c
	mov	r0, #0x1e
	mov	r1, #0x38
	mov	r2, #0xb8
	bl	__Func_80921c4
.Lc5e:
	mov	r0, #0x1d
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r0, #0x1e
	mov	r1, #0
	mov	r2, #0
	bl	__Func_80923e4
	mov	r1, #0
	mov	r2, #0
	mov	r0, #0x20
	bl	__Func_80923e4
	mov	r0, #0x8c
	lsl	r0, #4
	bl	__Func_8079358
	bl	__Func_8091750
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008980

.thumb_func_start OvlFunc_949_2008ca8
	push	{r5, lr}
	mov	r0, #9
	sub	sp, #8
	bl	__Func_8092054
	mov	r5, r0
	cmp	r5, #0
	beq	.Lcce
	mov	r1, #0
	bl	__Func_800c528
	mov	r1, r5
	mov	r2, #2
	add	r1, #0x23
	strb	r2, [r1]
	mov	r2, r5
	mov	r3, #0
	add	r2, #0x55
	strb	r3, [r2]
.Lcce:
	mov	r0, #9
	mov	r1, #5
	bl	__Func_80924d4
	mov	r3, #0x22
	mov	r2, #0x10
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r1, #0x10
	mov	r2, #1
	mov	r3, #1
	mov	r0, #0x24
	bl	__Func_8010704
	ldr	r0, =0x201
	bl	__Func_8079358
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_949_2008ca8

	.section .data
	.global .Lec0
	.global .Lf90
	.global .L14a8
	.global .L17a8
	.global .L1a9c
	.global .L1d00
	.global .L1060

	.incbin "overlays/rom_7d4af4/orig.bin", 0xea8, (0xec0-0xea8)
.Lec0:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xec0, (0xf90-0xec0)
.Lf90:
	.incbin "overlays/rom_7d4af4/orig.bin", 0xf90, (0x1060-0xf90)
.L1060:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1060, (0x11f8-0x1060)
.L11f8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x11f8, (0x1238-0x11f8)
.L1238:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1238, (0x14a8-0x1238)
.L14a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x14a8, (0x17a8-0x14a8)
.L17a8:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x17a8, (0x1a9c-0x17a8)
.L1a9c:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1a9c, (0x1d00-0x1a9c)
.L1d00:
	.incbin "overlays/rom_7d4af4/orig.bin", 0x1d00
