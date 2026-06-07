	.include "macros.inc"

.thumb_func_start OvlFunc_913_200a88c
	push	{r5, lr}
	ldr	r3, =.L3394
	ldr	r3, [r3]
	mov	r5, r0
	cmp	r3, #0
	beq	.L28c4
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x51fffe
	cmp	r3, r1
	bhi	.L28b4
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2360000
	cmp	r3, r1
	ble	.L28b4
	mov	r1, #0x99
	lsl	r1, #18
	cmp	r3, r1
	blt	.L2912
.L28b4:
	ldr	r1, =0xff35ffff
	add	r3, r2, r1
	ldr	r2, =0x34fffe
	cmp	r3, r2
	bhi	.L2926
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	b	.L2906
.L28c4:
	ldr	r1, =0xff3fffff
	ldr	r2, [r5, #8]
	add	r3, r2, r1
	ldr	r1, =0x33fffe
	cmp	r3, r1
	bhi	.L28de
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x2250000
	cmp	r3, r1
	ble	.L28de
	ldr	r1, =0x248ffff
	cmp	r3, r1
	ble	.L2912
.L28de:
	ldr	r1, =0xff0bffff
	add	r3, r2, r1
	ldr	r1, =0x1dfffe
	cmp	r3, r1
	bhi	.L28f6
	ldr	r3, [r5, #0x10]
	ldr	r1, =0x23b0000
	cmp	r3, r1
	ble	.L28f6
	ldr	r1, =0x25cffff
	cmp	r3, r1
	ble	.L2912
.L28f6:
	ldr	r1, =0xff2cffff
	add	r3, r2, r1
	ldr	r2, =0x2bfffe
	cmp	r3, r2
	bhi	.L2926
	mov	r1, #0x95
	ldr	r3, [r5, #0x10]
	lsl	r1, #18
.L2906:
	cmp	r3, r1
	ble	.L2926
	mov	r2, #0x9e
	lsl	r2, #18
	cmp	r3, r2
	bge	.L2926
.L2912:
	mov	r0, #0x6a
	bl	__Func_80f9080
	ldr	r1, =.L32e4
	mov	r0, r5
	bl	__Func_800c2d8
	ldr	r2, =.L3390
	mov	r3, #1
	str	r3, [r2]
.L2926:
	mov	r0, #0
	pop	{r5}
	pop	{r1}
	bx	r1
.func_end OvlFunc_913_200a88c

.thumb_func_start OvlFunc_913_200a974
	push	{r5, r6, r7, lr}
	ldr	r2, =.L338c
	ldr	r3, [r2]
	mov	r5, #0
	cmp	r3, #2
	beq	.L29a8
	cmp	r3, #2
	bhi	.L298a
	cmp	r3, #1
	beq	.L2990
	b	.L29e6
.L298a:
	cmp	r3, #3
	beq	.L29ca
	b	.L29e6
.L2990:
	ldr	r2, =.L3388
	ldr	r1, =0x3a97
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L299e
	add	r3, #0x32
	str	r3, [r2]
.L299e:
	ldr	r2, =.L3384
	mov	r1, #0xf0
	ldr	r3, [r2]
	lsl	r1, #14
	b	.L29be
.L29a8:
	ldr	r2, =.L3388
	ldr	r1, =0x752f
	ldr	r3, [r2]
	cmp	r3, r1
	bgt	.L29b6
	add	r3, #0x32
	str	r3, [r2]
.L29b6:
	ldr	r2, =.L3384
	mov	r1, #0xc0
	ldr	r3, [r2]
	lsl	r1, #13
.L29be:
	cmp	r3, r1
	ble	.L29e6
	ldr	r1, =0xffffc000
	add	r3, r1
	str	r3, [r2]
	b	.L29e6
.L29ca:
	ldr	r0, =.L3384
	ldr	r3, =0xff800000
	ldr	r1, [r0]
	cmp	r1, r3
	bge	.L29d8
	str	r5, [r2]
	b	.L29e6
.L29d8:
	ldr	r3, =.L3388
	ldr	r2, [r3]
	add	r2, #0x32
	str	r2, [r3]
	ldr	r2, =0xffffc000
	add	r3, r1, r2
	str	r3, [r0]
.L29e6:
	ldr	r7, =iwram_3001e40
	ldr	r3, [r7]
	mov	r2, #7
	and	r3, r2
	cmp	r3, #0
	bne	.L2aa2
	ldr	r0, =0x11d
	mov	r1, #0
	mov	r2, #0
	mov	r3, #0
	bl	__Func_800c150
	mov	r5, r0
	cmp	r5, #0
	beq	.L2aa2
	ldr	r3, =iwram_3001e70
	ldr	r3, [r3]
	ldr	r6, [r3]
	ldr	r3, [r7]
	mov	r2, #0x3f
	and	r3, r2
	cmp	r3, #0
	bne	.L2a1a
	mov	r0, #0xf6
	bl	__Func_80f9080
.L2a1a:
	ldr	r3, =.L338c
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2a3c
	bl	__Random
	ldr	r3, =.L3388
	ldr	r3, [r3]
	mul	r3, r0
	ldr	r2, [r6]
	lsr	r3, #16
	lsl	r3, #8
	add	r2, r3
	ldr	r3, =.L3384
	ldr	r3, [r3]
	add	r7, r2, r3
	b	.L2a4a
.L2a3c:
	bl	__Random
	ldr	r3, [r6]
	lsl	r0, #8
	ldr	r1, =0xff800000
	add	r3, r0
	add	r7, r3, r1
.L2a4a:
	bl	__Random
	ldr	r2, [r6, #8]
	lsl	r0, #8
	ldr	r3, =0xff800000
	add	r2, r0
	add	r2, r3
	mov	r3, r5
	mov	r0, #0
	add	r3, #0x55
	strb	r0, [r3]
	mov	r3, #0xa0
	lsl	r3, #16
	str	r3, [r5, #0xc]
	ldr	r1, [r5, #0x50]
	ldr	r3, =0xe666
	str	r3, [r5, #0x18]
	str	r3, [r5, #0x1c]
	mov	r3, r1
	add	r3, #0x26
	str	r7, [r5, #8]
	str	r2, [r5, #0x10]
	strb	r0, [r3]
	mov	r0, r5
	add	r0, #0x23
	ldrb	r2, [r0]
	mov	r3, #0xfe
	and	r3, r2
	strb	r3, [r0]
	ldrb	r2, [r1, #9]
	mov	r3, #0xd
	neg	r3, r3
	and	r3, r2
	mov	r2, #4
	orr	r3, r2
	strb	r3, [r1, #9]
	mov	r0, r5
	mov	r1, #1
	bl	__Func_800c300
	ldr	r1, =.L3308
	mov	r0, r5
	bl	__Func_800c2d8
.L2aa2:
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200a974

.thumb_func_start OvlFunc_913_200aad8
	push	{lr}
	mov	r0, #0xd
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b02
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2afc
	str	r2, [r0, #0xc]
	b	.L2b02
.L2afc:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b02:
	mov	r0, #0xe
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b2a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b24
	str	r1, [r0, #0xc]
	b	.L2b2a
.L2b24:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b2a:
	mov	r0, #0xf
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b52
	mov	r2, r0
	add	r2, #0x55
	mov	r3, #0
	strb	r3, [r2]
	ldr	r3, =iwram_3001e40
	ldr	r2, [r3]
	mov	r3, #1
	and	r2, r3
	cmp	r2, #0
	bne	.L2b4c
	str	r2, [r0, #0xc]
	b	.L2b52
.L2b4c:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b52:
	mov	r0, #0x10
	bl	__MapActor_GetActor
	cmp	r0, #0
	beq	.L2b7a
	mov	r3, r0
	add	r3, #0x55
	mov	r1, #0
	strb	r1, [r3]
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L2b74
	str	r1, [r0, #0xc]
	b	.L2b7a
.L2b74:
	mov	r3, #0xfa
	lsl	r3, #17
	str	r3, [r0, #0xc]
.L2b7a:
	pop	{r0}
	bx	r0
.func_end OvlFunc_913_200aad8

	.section .data
	.global .L2e20
	.global .L2e54
	.global .L2e88
	.global .L2ebc
	.global .L2f48
	.global .L2f6c
	.global .L2fc8
	.global .L3024
	.global .L32d0
	.global .L2d68
	.global .L2da8
	.global .L2dc0
	.global .L306c

.L2d68:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2d68, (0x2da8-0x2d68)
.L2da8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2da8, (0x2dc0-0x2da8)
.L2dc0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2dc0, (0x2e20-0x2dc0)
.L2e20:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e20, (0x2e54-0x2e20)
.L2e54:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e54, (0x2e88-0x2e54)
.L2e88:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2e88, (0x2ebc-0x2e88)
.L2ebc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2ebc, (0x2f48-0x2ebc)
.L2f48:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f48, (0x2f6c-0x2f48)
.L2f6c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2f6c, (0x2fc8-0x2f6c)
.L2fc8:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x2fc8, (0x3024-0x2fc8)
.L3024:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3024, (0x306c-0x3024)
.L306c:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x306c, (0x30cc-0x306c)
.L30cc:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30cc, (0x30e4-0x30cc)
.L30e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x30e4, (0x3294-0x30e4)
.L3294:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3294, (0x32d0-0x3294)
.L32d0:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32d0, (0x32e4-0x32d0)
.L32e4:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x32e4, (0x3308-0x32e4)
.L3308:
	.incbin "overlays/rom_7a04ac/orig.bin", 0x3308

	.section .bss
	.global .L3384
	.global .L3388
	.global .L338c
	.global .L3390
	.global .L3394
	.global .L3398
	.global .L3390

	.lcomm	.L3384, 4
	.lcomm	.L3388, 4
	.lcomm	.L338c, 4
	.lcomm	.L3390, 4
	.lcomm	.L3394, 4
	.lcomm	.L3398, 4
