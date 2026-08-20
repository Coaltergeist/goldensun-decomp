	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start GetSpriteVoiceEntry  @ 0x08091560
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
.func_end GetSpriteVoiceEntry

	.section .rodata
	.global gScript_0809e8ee
	.global gScript_0809e92e
	.global gScript_0809e96e
	.global gScript_0809e9ae
	.global gScript_0809e8a0
	.global gScript_0809e8ac
	.global gScript_0809e8ce
	.global gScript_0809e6c0
	.global gScript_0809e75c
	.global gScript_0809e87c
	.global gScript_0809e680
	.global gFieldMoveRanges

gScript_0809e680:
	.incrom 0x9e680, 0x9e686
gFieldMoveRanges:
	.incrom 0x9e686, 0x9e6c0
gScript_0809e6c0:
	.incrom 0x9e6c0, 0x9e75c
gScript_0809e75c:
	.incrom 0x9e75c, 0x9e87c
gScript_0809e87c:
	.incrom 0x9e87c, 0x9e8a0
gScript_0809e8a0:
	.incrom 0x9e8a0, 0x9e8ac
gScript_0809e8ac:
	.incrom 0x9e8ac, 0x9e8ce
gScript_0809e8ce:
	.incrom 0x9e8ce, 0x9e8ee
gScript_0809e8ee:
	.incrom 0x9e8ee, 0x9e92e
gScript_0809e92e:
	.incrom 0x9e92e, 0x9e96e
gScript_0809e96e:
	.incrom 0x9e96e, 0x9e9ae
gScript_0809e9ae:
	.incrom 0x9e9ae, 0x9e9f0
.L9e9f0:
	.incrom 0x9e9f0, 0x9ebfc
