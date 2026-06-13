	.include "macros.inc"

.thumb_func_start OvlFunc_926_200c140
	push	{r5, r6, r7, lr}
	mov	r0, #8
	sub	sp, #0x38
	bl	__MapActor_GetActor
	mov	r3, #1
	add	r5, sp, #0x10
	str	r3, [r5]
	ldr	r3, =0x119
	strh	r3, [r5, #0x18]
	ldr	r3, =.L51d8
	str	r3, [r5, #0x1c]
	mov	r3, #0xe0
	lsl	r3, #10
	str	r3, [r5, #0x10]
	mov	r3, #0xc0
	lsl	r3, #9
	str	r3, [r5, #0x14]
	mov	r7, r0
	mov	r6, #0
.L4168:
	mov	r0, #0xa
	bl	__CutsceneWait
	mov	r3, #1
	and	r3, r6
	cmp	r3, #0
	beq	.L417c
	mov	r0, #0x82
	bl	__PlaySound
.L417c:
	ldr	r2, [r7, #0x10]
	ldr	r3, =0xffe80000
	add	r2, r3
	ldr	r3, =0x9999
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #0xc]
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	ldr	r3, =0x360001
	add	r6, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r5, [sp, #0xc]
	bl	OvlFunc_common0_10c
	cmp	r6, #7
	bls	.L4168
	mov	r0, #0x3c
	bl	__CutsceneWait
	add	sp, #0x38
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c140

.thumb_func_start OvlFunc_926_200c1c4
	push	{lr}
	ldr	r3, =iwram_3001e40
	ldr	r3, [r3]
	mov	r2, #1
	lsr	r3, #1
	and	r3, r2
	cmp	r3, #0
	beq	.L41dc
	mov	r1, #0xa
	bl	__Func_80929d8
	b	.L41e2
.L41dc:
	mov	r1, #9
	bl	__Func_80929d8
.L41e2:
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c1c4

.thumb_func_start OvlFunc_926_200c1ec
	push	{r5, r6, r7, lr}
	mov	r7, r10
	mov	r6, r9
	mov	r5, r8
	push	{r5, r6, r7}
	mov	r0, #0x83
	sub	sp, #0x38
	bl	__PlaySound
	mov	r0, #8
	bl	__MapActor_GetActor
	ldr	r5, =OvlFunc_926_200c1c4
	str	r5, [r0, #0x6c]
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x80
	lsl	r0, #9
	mov	r1, #0
	bl	__Func_8091220
	mov	r1, #1
	ldr	r0, =0x205c54
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #0x83
	bl	__PlaySound
	mov	r0, #2
	bl	__MapActor_GetActor
	str	r5, [r0, #0x6c]
	mov	r0, #0x78
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	add	r2, sp, #0x10
	mov	r3, #1
	str	r3, [r2]
	mov	r3, #2
	str	r3, [r2, #4]
	ldr	r3, =0x11d
	strh	r3, [r2, #0x18]
	mov	r8, r0
	mov	r10, r2
	mov	r7, #0
.L425a:
	mov	r3, #3
	and	r3, r7
	cmp	r3, #0
	bne	.L4268
	mov	r0, #0xf6
	bl	__PlaySound
.L4268:
	bl	__Random
	lsl	r3, r0, #1
	add	r3, r0
	mov	r2, r8
	lsl	r3, #4
	ldr	r6, [r2, #8]
	lsr	r3, #16
	lsl	r3, #16
	add	r6, r3
	ldr	r3, =0xfff40000
	add	r6, r3
	bl	__Random
	mov	r2, r8
	lsl	r0, #5
	ldr	r5, [r2, #0xc]
	lsr	r0, #16
	ldr	r3, =0xfff00000
	lsl	r0, #16
	add	r5, r0
	add	r5, r3
	bl	__Random
	lsl	r0, #2
	lsr	r0, #16
	mov	r2, #0x80
	lsl	r2, #8
	mov	r3, r8
	lsl	r0, #15
	add	r0, r2
	ldr	r2, [r3, #0x10]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r9, r3
	mov	r3, #0x98
	lsl	r3, #13
	str	r3, [sp, #8]
	mov	r3, r10
	str	r0, [sp]
	str	r3, [sp, #0xc]
	mov	r0, r6
	mov	r1, r5
	mov	r3, #0
	bl	OvlFunc_common0_10c
	add	r7, #1
	mov	r0, #2
	bl	__WaitFrames
	cmp	r7, #0x3f
	bls	.L425a
	mov	r0, #0xdc
	bl	__PlaySound
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x80
	mov	r1, #1
	lsl	r0, #9
	bl	__Func_8091200
	mov	r0, #0x3c
	bl	__Func_8091254
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r0, #8
	bl	__MapActor_GetActor
	mov	r2, r9
	str	r2, [r0, #0x6c]
	mov	r0, #2
	bl	__MapActor_GetActor
	mov	r3, r9
	str	r3, [r0, #0x6c]
	mov	r1, #0
	mov	r0, #8
	bl	__Func_8092950
	mov	r0, #2
	mov	r1, #0
	bl	__Func_8092950
	add	sp, #0x38
	pop	{r3, r5, r6}
	mov	r8, r3
	mov	r9, r5
	mov	r10, r6
	pop	{r5, r6, r7}
	pop	{r0}
	bx	r0
.func_end OvlFunc_926_200c1ec

	.section .data
	.global gScript_926__0200c638
	.global .L477a
	.global .L4790
	.global .L48f0
	.global .L4998
	.global .L4ae8
	.global .L4b90
	.global .L4d40
	.global .L5184
	.global gScript_943__0200c7a8
	.global .L4838

gScript_926__0200c638:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4638, (0x4764-0x4638)
	.global gScript_943__0200c764
gScript_943__0200c764:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4764, (0x477a-0x4764)
.L477a:
	.incbin "overlays/rom_7b2078/orig.bin", 0x477a, (0x4790-0x477a)
.L4790:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4790, (0x47a8-0x4790)
gScript_943__0200c7a8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x47a8, (0x4838-0x47a8)
.L4838:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4838, (0x48c8-0x4838)
	.global gOvl_0200c8c8
gOvl_0200c8c8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48c8, (0x48f0-0x48c8)
.L48f0:
	.incbin "overlays/rom_7b2078/orig.bin", 0x48f0, (0x4998-0x48f0)
.L4998:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4998, (0x4ae8-0x4998)
.L4ae8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4ae8, (0x4b90-0x4ae8)
.L4b90:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4b90, (0x4d40-0x4b90)
.L4d40:
	.incbin "overlays/rom_7b2078/orig.bin", 0x4d40, (0x5184-0x4d40)
.L5184:
	.incbin "overlays/rom_7b2078/orig.bin", 0x5184, (0x51d8-0x5184)
.L51d8:
	.incbin "overlays/rom_7b2078/orig.bin", 0x51d8
