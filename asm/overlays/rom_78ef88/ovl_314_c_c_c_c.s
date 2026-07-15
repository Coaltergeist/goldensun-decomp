	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_896_200c260
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r10, r0
	mov	r0, #0
	mov	r8, r0
	mov	r0, #0x16
	bl	__CreateActor
	mov	r6, r0
	mov	r0, #0xe0
	bl	__CheckPartyItem
	mov	r1, #0xe0
	mov	r7, r0
	bl	__CheckItem
	mov	r9, r0
	mov	r0, r7
	cmp	r6, #0
	beq	.L4316
	ldr	r1, =gScript_881__0200cbe4
	mov	r0, r6
	bl	__Actor_SetScript
	ldr	r5, [r6, #0x50]
	mov	r3, r5
	mov	r2, r8
	add	r3, #0x26
	strb	r2, [r3]
	add	r3, #1
	strb	r2, [r3]
	mov	r3, #0x21
	ldrb	r2, [r5, #5]
	neg	r3, r3
	and	r3, r2
	ldrb	r2, [r5, #9]
	strb	r3, [r5, #5]
	mov	r3, #0xf
	and	r3, r2
	strb	r3, [r5, #9]
	mov	r3, #0xa0
	lsl	r3, #10
	str	r3, [r6, #0x28]
	mov	r3, #0x80
	lsl	r3, #7
	mov	r1, #0xc1
	str	r3, [r6, #0x48]
	lsl	r1, #3
	mov	r0, #0x11
	bl	__galloc_iwram
	mov	r8, r0
	mov	r0, r10
	bl	__LoadItemIcon
	mov	r2, #0x80
	lsl	r2, #3
	add	r2, r8
	mov	r1, #0x80
	ldrb	r0, [r5, #0x1c]
	bl	__UploadSpriteGFX
	mov	r0, #0x11
	bl	__gfree
	mov	r0, #0x53
	bl	__PlaySound
	mov	r0, r6
	mov	r1, #3
	bl	__Func_808f140
	mov	r1, r9
	mov	r0, r7
	bl	__Func_8078948
	mov	r1, r10
	mov	r0, r7
	bl	__GiveItemTo
	mov	r0, r6
	bl	__DeleteActor
	mov	r0, #0
	mov	r1, #1
	bl	__MapActor_SetAnim
	mov	r0, r7
.L4316:
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r1}
	bx	r1
.func_end OvlFunc_896_200c260

	.section .text.after_c328, "ax", %progbits

.thumb_func_start OvlFunc_896_200c3bc
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r8
	push	{r6, r7}
	mov	r0, #0xe
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r10, r0
	mov	r0, #0xbe
	bl	__PlaySound
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #0
	bl	__Actor_SetSpriteFlags
	mov	r3, #1
	add	r7, sp, #0x10
	str	r3, [r7]
	mov	r3, #5
	str	r3, [r7, #4]
	mov	r3, #0x8e
	lsl	r3, #1
	strh	r3, [r7, #0x18]
	ldr	r3, =0x6666
	str	r3, [r7, #8]
	mov	r3, #0xc0
	lsl	r3, #10
	mov	r2, #0
	str	r3, [r7, #0xc]
	mov	r8, r2
.L43fe:
	mov	r0, #1
	bl	__CutsceneWait
	mov	r6, #1
	mov	r3, r8
	and	r6, r3
	cmp	r6, #0
	bne	.L4454
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r10
	lsl	r3, #3
	ldr	r5, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r5, r3
	ldr	r3, =0xfff40000
	add	r5, r3
	bl	__Random
	mov	r2, r10
	lsl	r0, #5
	ldr	r1, [r2, #0xc]
	lsr	r0, #16
	lsl	r0, #16
	mov	r3, #0x80
	add	r1, r0
	lsl	r3, #14
	add	r1, r3
	ldr	r3, =0xfffc0000
	ldr	r2, [r2, #0x10]
	str	r3, [sp]
	mov	r3, #0xd8
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r0, r5
	mov	r3, #0
	str	r6, [sp, #4]
	str	r7, [sp, #0xc]
	bl	OvlFunc_common0_10c
.L4454:
	mov	r2, r8
	cmp	r2, #0x14
	bne	.L4464
	mov	r1, #0x80
	mov	r0, #0xe
	lsl	r1, #1
	bl	__Func_8092950
.L4464:
	mov	r3, #1
	add	r8, r3
	mov	r2, r8
	cmp	r2, #0x1f
	bls	.L43fe
	mov	r1, #0
	mov	r0, #0xe
	bl	__Func_8092950
	mov	r0, #0xe
	bl	__MapActor_GetActor
	mov	r1, #1
	bl	__Actor_SetSpriteFlags
	add	sp, #0x38
	pop	{r3, r5}
	mov	r8, r3
	mov	r10, r5
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_896_200c3bc

	.section .data
	.global gScript_896__0200cbd0
	.global .L5088
	.global gOvl_0200cd88

gScript_896__0200cbd0:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4bd0, (0x4be4-0x4bd0)
	.global gScript_881__0200cbe4
	.global gScript_896__0200cbe4
gScript_881__0200cbe4:
gScript_896__0200cbe4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4be4, (0x4d88-0x4be4)
gOvl_0200cd88:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4d88, (0x4db8-0x4d88)
	.global gOvl_0200cdb8
gOvl_0200cdb8:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4db8, (0x4dc4-0x4db8)
	.global gOvl_0200cdc4
gOvl_0200cdc4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4dc4, (0x4fa4-0x4dc4)
	.global gOvl_0200cfa4
gOvl_0200cfa4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x4fa4, (0x5088-0x4fa4)
.L5088:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5088, (0x50e4-0x5088)
	.global gOvl_0200d0e4
gOvl_0200d0e4:
	.incbin "overlays/rom_78ef88/orig.bin", 0x50e4, (0x5102-0x50e4)
	.global .L5102
.L5102:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5102, (0x5120-0x5102)
	.global gScript_936__0200d120
gScript_936__0200d120:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5120, (0x5140-0x5120)
	.global .L5140
.L5140:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5140, (0x5168-0x5140)
	.global .L5168
.L5168:
	.incbin "overlays/rom_78ef88/orig.bin", 0x5168
