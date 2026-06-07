	.include "macros.inc"

.thumb_func_start OvlFunc_936_2008180
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L198
	ldr	r0, =.L4768
	b	.L1b8
.L198:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L1a2
	ldr	r0, =.L4a20
	b	.L1b8
.L1a2:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L1ac
	ldr	r0, =.L4a80
	b	.L1b8
.L1ac:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L1b6
	ldr	r0, =.L4b58
	b	.L1b8
.L1b6:
	ldr	r0, =.L4750
.L1b8:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008180

.thumb_func_start OvlFunc_936_20081e4
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x947
	mov	r1, #1
	bl	__Func_801776c
	ldr	r0, =0x29df
	mov	r1, #1
	bl	__Func_801776c
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20081e4

.thumb_func_start OvlFunc_936_200820c
	push	{lr}
	bl	__Func_80916b0
	mov	r2, #0
	mov	r1, #0
	mov	r0, #0xc
	bl	__Func_80923e4
	ldr	r0, =0xfd6
	bl	__Func_8079358
	mov	r0, #0xb5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, #0xb5
	bl	__Func_8091a58
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_200820c

.thumb_func_start OvlFunc_936_2008240
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x63
	cmp	r2, r3
	bne	.L258
	ldr	r0, =.L4bf4
	b	.L28c
.L258:
	ldr	r3, =0x66
	cmp	r2, r3
	bne	.L262
	ldr	r0, =.L4e88
	b	.L28c
.L262:
	ldr	r3, =0x99
	cmp	r2, r3
	bne	.L26c
	ldr	r0, =.L4edc
	b	.L28c
.L26c:
	ldr	r3, =0x9a
	cmp	r2, r3
	bne	.L276
	ldr	r0, =.L4f24
	b	.L28c
.L276:
	ldr	r3, =0x9b
	cmp	r2, r3
	bne	.L280
	ldr	r0, =.L4f54
	b	.L28c
.L280:
	ldr	r3, =0x9c
	cmp	r2, r3
	bne	.L28a
	ldr	r0, =.L4f9c
	b	.L28c
.L28a:
	ldr	r0, =.L4be8
.L28c:
	pop	{r1}
	bx	r1
.func_end OvlFunc_936_2008240

.thumb_func_start OvlFunc_936_20082c8
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x1a7c
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0x13
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20082c8

.thumb_func_start OvlFunc_936_20082e8
	push	{lr}
	mov	r0, #0
	bl	__MapActor_GetActor
	ldr	r2, =0xfffff000
	ldrh	r3, [r0, #6]
	add	r3, r2
	mov	r2, #0xc0
	lsl	r3, #16
	lsl	r2, #23
	cmp	r3, r2
	bls	.L364
	bl	__Func_80916b0
	mov	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092848
	mov	r0, #0xa
	bl	__Func_809163c
	ldr	r0, =0x2584
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092c40
	mov	r0, #0
	mov	r1, #0
	bl	__Func_8091c7c
	cmp	r0, #0
	bne	.L340
	mov	r0, #8
	mov	r1, #4
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
	b	.L360
.L340:
	ldr	r3, =iwram_3001ebc
	ldr	r2, [r3]
	mov	r3, #0xec
	lsl	r3, #1
	add	r2, r3
	ldrh	r3, [r2]
	add	r3, #1
	mov	r0, #8
	mov	r1, #3
	strh	r3, [r2]
	bl	__Func_8092548
	mov	r0, #8
	mov	r1, #0
	bl	__Func_8092f84
.L360:
	bl	__Func_8091750
.L364:
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_20082e8

.thumb_func_start OvlFunc_936_2008374
	push	{lr}
	bl	__Func_80916b0
	ldr	r0, =0x25b3
	bl	__Func_8092b94
	mov	r1, #0
	mov	r0, #0xa
	bl	__Func_8093054
	bl	__Func_8091750
	pop	{r0}
	bx	r0
.func_end OvlFunc_936_2008374

