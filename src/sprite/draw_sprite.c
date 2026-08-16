/* sprite/draw_sprite.c -- consolidated TU (engine/unpack_tilemap.S extracted). */
#include "nonmatching.h"

INCLUDE_ASM("asm/sprite/draw_sprite/rom_92b8.s");

SECTION(".text.draw_sprite_2");

INCLUDE_ASM_SECTION("asm/sprite/draw_sprite/rom_92b8_b.s", ".text.draw_sprite_2");
