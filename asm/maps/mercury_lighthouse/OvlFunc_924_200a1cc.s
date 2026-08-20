	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_924_200a1cc
	push	{r5, r6, lr}
	mov	r0, #9
	bl	__MapActor_GetActor
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bge	.Lm924_21de
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_21de:
	mov	r0, #9
	asr	r6, r3, #20
	bl	__MapActor_GetActor
	ldr	r3, [r0, #0x10]
	cmp	r3, #0
	bge	.Lm924_21f0
	ldr	r2, =0xfffff
	add	r3, r2
.Lm924_21f0:
	mov	r0, #0xa0
	mov	r1, #0xa0
	lsl	r0, #11
	lsl	r1, #8
	asr	r5, r3, #20
	bl	__Func_80933d4
	mov	r0, #0xcc
	mov	r1, #1
	mov	r2, #0xb2
	lsl	r0, #18
	neg	r1, r1
	lsl	r2, #18
	mov	r3, #1
	bl	__Func_80933f8
	bl	__Func_8093530
	ldr	r0, =0x877
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_2292
	cmp	r6, #0x32
	bne	.Lm924_2230
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_2230
	ldr	r1, =gScript_924__0200df20
	b	.Lm924_226a
.Lm924_2230:
	cmp	r6, #0x31
	bne	.Lm924_2292
	cmp	r5, #0x2c
	bne	.Lm924_2272
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_225a
	ldr	r0, =0x31a
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_225a
	ldr	r0, =0x31b
	bl	__GetFlag
	cmp	r0, #0
	bne	.Lm924_225a
	ldr	r1, =gScript_924__0200df60
	b	.Lm924_226a
.Lm924_225a:
	cmp	r5, #0x2c
	bne	.Lm924_2272
	ldr	r0, =0x319
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_2272
	ldr	r1, =gScript_924__0200dff0
.Lm924_226a:
	mov	r0, #9
	bl	__MapActor_SetBehavior
	b	.Lm924_2292
.Lm924_2272:
	cmp	r5, #0x2e
	bne	.Lm924_2292
	ldr	r0, =0x31a
	bl	__GetFlag
	cmp	r0, #0
	beq	.Lm924_2292
	ldr	r1, =gScript_924__0200dfa8
	mov	r0, #9
	bl	__MapActor_SetBehavior
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #1
	b	.Lm924_229a
.Lm924_2292:
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0
.Lm924_229a:
	pop	{r5, r6}
	pop	{r1}
	bx	r1
.func_end OvlFunc_924_200a1cc

	.section .mdata3, "aw", %progbits
	.global gScript_924__0200df20
gScript_924__0200df20:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f20, (0x5f60-0x5f20)
	.global gScript_924__0200df60
gScript_924__0200df60:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5f60, (0x5fa8-0x5f60)
	.global gScript_924__0200dfa8
gScript_924__0200dfa8:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5fa8, (0x5ff0-0x5fa8)
	.global gScript_924__0200dff0
gScript_924__0200dff0:
	.incbin "overlays/rom_7ac2d8/orig.bin", 0x5ff0, (0x6004-0x5ff0)
