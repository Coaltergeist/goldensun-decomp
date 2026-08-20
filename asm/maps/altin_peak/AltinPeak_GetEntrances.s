	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start AltinPeak_GetEntrances
	push	{lr}
	ldr	r3, =gState
	mov	r1, #0xe0
	lsl	r1, #1
	add	r3, r1
	mov	r1, #0
	ldrsh	r2, [r3, r1]
	ldr	r3, =0x4d
	cmp	r2, r3
	bne	.Lm932_fc
	ldr	r0, =gOvl_0200c194
	b	.Lm932_162
.Lm932_fc:
	ldr	r3, =0x4e
	cmp	r2, r3
	bne	.Lm932_106
	ldr	r0, =.Lm932_420c
	b	.Lm932_162
.Lm932_106:
	ldr	r3, =0x4f
	cmp	r2, r3
	bne	.Lm932_110
	ldr	r0, =.Lm932_426c
	b	.Lm932_162
.Lm932_110:
	ldr	r3, =0x50
	cmp	r2, r3
	bne	.Lm932_11a
	ldr	r0, =.Lm932_4314
	b	.Lm932_162
.Lm932_11a:
	ldr	r3, =0x51
	cmp	r2, r3
	bne	.Lm932_124
	ldr	r0, =.Lm932_43ec
	b	.Lm932_162
.Lm932_124:
	ldr	r3, =0x52
	cmp	r2, r3
	bne	.Lm932_12e
	ldr	r0, =ActorCmd_ARRAY_943__0200c464
	b	.Lm932_162
.Lm932_12e:
	ldr	r3, =0x53
	cmp	r2, r3
	bne	.Lm932_138
	ldr	r0, =.Lm932_4524
	b	.Lm932_162
.Lm932_138:
	ldr	r3, =0x54
	cmp	r2, r3
	bne	.Lm932_142
	ldr	r0, =.Lm932_459c
	b	.Lm932_162
.Lm932_142:
	ldr	r3, =0x55
	cmp	r2, r3
	bne	.Lm932_14c
	ldr	r0, =.Lm932_4644
	b	.Lm932_162
.Lm932_14c:
	ldr	r3, =0x56
	cmp	r2, r3
	bne	.Lm932_156
	ldr	r0, =.Lm932_4704
	b	.Lm932_162
.Lm932_156:
	ldr	r3, =0x57
	cmp	r2, r3
	bne	.Lm932_160
	ldr	r0, =.Lm932_477c
	b	.Lm932_162
.Lm932_160:
	ldr	r0, =gScript_936__0200c164
.Lm932_162:
	pop	{r1}
	bx	r1
.func_end AltinPeak_GetEntrances

