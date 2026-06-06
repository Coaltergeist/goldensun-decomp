	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start Func_8091560
	push	{lr}
	mov	r2, r0
	ldr	r0, =.L9e9f0
	ldrh	r3, [r0]
	mov	r1, #0
	cmp	r3, r2
	beq	.L9157c
.L9156e:
	add	r1, #1
	add	r0, #4
	cmp	r1, #0x81
	bhi	.L9157c
	ldrh	r3, [r0]
	cmp	r3, r2
	bne	.L9156e
.L9157c:
	pop	{r1}
	bx	r1
.func_end Func_8091560

	.section .rodata
	.global .L9e8ee
	.global .L9e92e
	.global .L9e96e
	.global .L9e9ae
	.global .L9e8a0
	.global .L9e8ac
	.global .L9e8ce
	.global .L9e6c0
	.global .L9e75c
	.global .L9e87c
	.global .L9e680
	.global .L9e686
	.global .L9e6b8

.L9e680:
	.incrom 0x9e680, 0x9e686
.L9e686:
	.incrom 0x9e686, 0x9e6b8
.L9e6b8:
	.incrom 0x9e6b8, 0x9e6c0
.L9e6c0:
	.incrom 0x9e6c0, 0x9e75c
.L9e75c:
	.incrom 0x9e75c, 0x9e87c
.L9e87c:
	.incrom 0x9e87c, 0x9e8a0
.L9e8a0:
	.incrom 0x9e8a0, 0x9e8ac
.L9e8ac:
	.incrom 0x9e8ac, 0x9e8ce
.L9e8ce:
	.incrom 0x9e8ce, 0x9e8ee
.L9e8ee:
	.incrom 0x9e8ee, 0x9e92e
.L9e92e:
	.incrom 0x9e92e, 0x9e96e
.L9e96e:
	.incrom 0x9e96e, 0x9e9ae
.L9e9ae:
	.incrom 0x9e9ae, 0x9e9f0
.L9e9f0:
	.incrom 0x9e9f0, 0x9ebfc
