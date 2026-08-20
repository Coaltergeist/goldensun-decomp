	.include "macros.inc"
	.include "gba.inc"

.thumb_func_start OvlFunc_951_20084bc
	push	{r5, r6, lr}
	mov	r6, r8
	push	{r6}
	sub	sp, #8
	mov	r5, r0
	bl	__CutsceneStart
	mov	r0, #0x1e
	bl	__CutsceneWait
	mov	r0, #0x94
	bl	__PlaySound
	mov	r0, #0x64
	bl	__CutsceneWait
	mov	r1, #0xc0
	lsl	r1, #8
	mov	r2, #0
	mov	r0, #0
	bl	__Func_8092adc
	mov	r0, #0x28
	bl	__CutsceneWait
	mov	r3, #8
	str	r3, [sp, #4]
	mov	r6, #3
	mov	r8, r3
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #3
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r2, #0x46
	mov	r3, #0
	mov	r1, #0x1d
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #0x46
	bl	__CutsceneWait
	mov	r0, #0x7e
	bl	__PlaySound
	mov	r0, r5
	mov	r1, #3
	bl	__Func_808f1c0
	mov	r1, #0
	mov	r0, r5
	bl	__Func_8091a58
	mov	r0, #0x14
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x1d
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x64
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x61
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5e
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x5b
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x58
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x55
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x52
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	mov	r3, r8
	str	r3, [sp, #4]
	mov	r1, #0x14
	mov	r2, #0x46
	mov	r3, #0
	mov	r0, #0x4f
	str	r6, [sp]
	bl	__CopyMapTiles
	mov	r0, #0x9a
	bl	__PlaySound
	mov	r0, #8
	bl	__CutsceneWait
	bl	__CutsceneEnd
	add	sp, #8
	pop	{r3}
	mov	r8, r3
	pop	{r5, r6}
	pop	{r0}
	bx	r0
.func_end OvlFunc_951_20084bc

