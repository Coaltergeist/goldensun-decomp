; anim.inc

.include "constants/sprite.h"

.macro .anim label
	.set ANIM_BASE, .
.endm

.macro frame num, time
	.db num, time
.endm
.macro end
	.db ACMD_END, 0
.endm
.macro mode arg
	.db ACMD_MODE, arg
.endm
.macro halt
	.db ACMD_HALT, 0
.endm
.macro hold arg
	.db ACMD_HOLD, arg / 16
.endm
.macro loop label
	.db ACMD_LOOP, (label - ANIM_BASE) / 2
.endm
.macro gotoanim arg
	.db ACMD_GOTOANIM, arg
.endm
.macro hide
	.db ACMD_HIDE, 0
.endm

.ifndef GS1
.macro xoff arg
	.db ACMD_XOFF, arg
.endm
.macro yoff arg
	.db ACMD_YOFF, arg
.endm
.macro sound arg
	.db ACMD_SOUND, arg
.endm
.endif ; !GS1