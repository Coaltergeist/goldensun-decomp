	.include "macros.inc"
	.include "gba.inc"

	.section .text.before, "ax", %progbits

	.section .text.after_a1ac, "ax", %progbits

	.section .text.after_a230, "ax", %progbits

	.section .text.after_a2d8, "ax", %progbits

.thumb_func_start OvlFunc_947_200a384
	push	{r5, lr}
	ldr	r0, =0x203
	sub	sp, #8
	bl	__GetFlag
	mov	r5, r0
	cmp	r5, #0
	bne	.L2472
	ldr	r0, =0x202
	bl	__SetFlag
	bl	__CutsceneStart
	ldr	r0, =0x9999
	ldr	r1, =0x1333
	bl	__Func_80933d4
	mov	r0, #0x9c
	mov	r1, #1
	mov	r2, #0xb8
	neg	r1, r1
	lsl	r2, #16
	mov	r3, #1
	lsl	r0, #17
	bl	__Func_80933f8
	bl	__Func_8093530
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #0xa
	mov	r2, #0x3c
	mov	r1, #0xa
	mov	r0, #0x49
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r1, #0xc8
	lsl	r1, #4
	ldr	r0, =OvlFunc_947_200a230
	bl	__StartTask
	mov	r0, #0x28
	bl	__CutsceneWait
	ldr	r0, =0x201
	bl	__GetFlag
	cmp	r0, #0
	beq	.L2442
	mov	r0, #0xc
	bl	__MapActor_GetActor
	ldr	r3, =OvlFunc_947_200a2d8
	mov	r1, #6
	str	r3, [r0, #0x6c]
	mov	r0, #0xc
	bl	__MapActor_SetAnim
	mov	r0, #0xc
	bl	__Func_8092504
	mov	r0, #0xc
	bl	__MapActor_GetActor
	mov	r3, #0x12
	mov	r2, #0xd
	str	r5, [r0, #0x6c]
	mov	r1, #0xd
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r3, #1
	mov	r2, #1
	mov	r0, #0x11
	bl	__Func_8010704
	ldr	r0, =0x201
	bl	__ClearFlag
	mov	r0, #0xc
	mov	r1, #0
	bl	__Func_8092950
	mov	r0, #0xc
	mov	r1, #1
	bl	__MapActor_SetBehavior
	b	.L2448
.L2442:
	mov	r0, #0x3c
	bl	__CutsceneWait
.L2448:
	ldr	r0, =OvlFunc_947_200a230
	bl	__StopTask
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, #1
	mov	r2, #2
	str	r3, [sp]
	str	r2, [sp, #4]
	mov	r0, #0x48
	mov	r1, #0xa
	mov	r2, #0x3c
	mov	r3, #0xa
	bl	__CopyMapTiles
	mov	r0, #0x14
	bl	__CutsceneWait
	bl	__CutsceneEnd
.L2472:
	add	sp, #8
	pop	{r5}
	pop	{r0}
	bx	r0
.func_end OvlFunc_947_200a384

	.section .data
	.global .L2da8
	.global .L2dd2
	.global .L2dfc
	.global .L2e26
	.global .L2e50

.L2da8:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2da8, (0x2dd2-0x2da8)
.L2dd2:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dd2, (0x2dfc-0x2dd2)
.L2dfc:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2dfc, (0x2e26-0x2dfc)
.L2e26:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e26, (0x2e50-0x2e26)
.L2e50:
	.incbin "overlays/rom_7d0e88/orig.bin", 0x2e50, (0x2e7c-0x2e50)

	.section .bss
	.global .L3720
	.global .L372c
	.global .L3738

	.space	4

	.global	bss_36d0
bss_36d0:
	.space	0x50
	.ssize	bss_36d0

.L3720:
	.space	0xc
.L372c:
	.space	0xc
.L3738:
	.space	4
