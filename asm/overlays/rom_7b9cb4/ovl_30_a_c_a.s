	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_932_20080e4
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lfc
	ldr	r0, =gOvl_0200c194
	b	.L162
.Lfc:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.L106
	ldr	r0, =.L420c
	b	.L162
.L106:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.L110
	ldr	r0, =.L426c
	b	.L162
.L110:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.L11a
	ldr	r0, =.L4314
	b	.L162
.L11a:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.L124
	ldr	r0, =.L43ec
	b	.L162
.L124:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.L12e
	ldr	r0, =ActorCmd_ARRAY_943__0200c464
	b	.L162
.L12e:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.L138
	ldr	r0, =.L4524
	b	.L162
.L138:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.L142
	ldr	r0, =.L459c
	b	.L162
.L142:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L14c
	ldr	r0, =.L4644
	b	.L162
.L14c:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.L156
	ldr	r0, =.L4704
	b	.L162
.L156:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.L160
	ldr	r0, =.L477c
	b	.L162
.L160:
	ldr	r0, =gScript_936__0200c164
.L162:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_20080e4

.thumb_func_start OvlFunc_932_20081c8
	push	{lr}
	ldr	r3, =ewram_2000240
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.L1e0
	ldr	r0, =gScript_943__0200c80c
	b	.L1ea
.L1e0:
	ldr	r3, =0x56
	mov	r0, #0
	cmp	r2, r3
	bne	.L1ea
	ldr	r0, =gOvl_0200c83c
.L1ea:
	pop	{r1}
	bx	r1
.func_end OvlFunc_932_20081c8

