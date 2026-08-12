MEMORY {
	bios	(x)	: ORIGIN = 0x00000000, LENGTH = 16K
	ewram	(rwx)	: ORIGIN = 0x02000000, LENGTH = 256K
	overlay (rwx)	: ORIGIN = 0x02008000, LENGTH = 32K
	iwram	(rwx)	: ORIGIN = 0x03000000, LENGTH = 32K
	io	(rw)	: ORIGIN = 0x04000000, LENGTH = 1K
	palette	(rw)	: ORIGIN = 0x05000000, LENGTH = 1K
	vram	(rw)	: ORIGIN = 0x06000000, LENGTH = 96K
	oam	(rw)	: ORIGIN = 0x07000000, LENGTH = 1K
	rom	(rx)	: ORIGIN = 0x08000000, LENGTH = 8M
	sram	(rw)	: ORIGIN = 0x0E000000, LENGTH = 64K
}

INCLUDE "wram.sym"
INCLUDE "message.sym"
INCLUDE "file_table.sym"

SECTIONS {
	header : {
		src/rom_header.o(.text)
	} > rom

	rom_c0 : {
		src/rom_c0/exports.o(.text)
		src/rom_c0/crt0.o(.text)
	} > rom

	rom_770 : {
		asm/lib/ramlib.o(.text)
	} > iwram AT > rom

	rom_1b70 : {
		asm/decompress/lz1.o(.text)
		asm/decompress/lz_data.o(.text)
		asm/memory/free.o(.text)
		src/main.o(.text)
		src/intr/intr.o(.text)
		src/video.o(.text)
		src/random.o(.text)
		src/sprite/palette.o(.text)
		src/memory/alloc.o(.text)
		src/render/matrix.o(.text)
		src/decompress/lz.o(.text)
		src/save.o(.text)
		src/other/sub_8006864.o(.text)
		src/lib/agb_flash/agb_flash.o(.text)
		src/lib/agb_flash/agb_flash_mx.o(.text)
		src/lib/agb_flash/agb_flash_verify.o(.text)
		src/lib/agb_flash/agb_flash_at.o(.text)
		src/lib/call_via.o(.text)

		src/main.o(.rodata)
		asm/rom_c0/rom_45e8_c_c_c_c_c.o(.rodata)
		asm/rom_c0/rom_49a8_c_c_c_c_c.o(.rodata)
		src/save.o(.rodata)
		src/lib/agb_flash/agb_flash_data.o(.rodata)

		. += 0x1000;
	} > rom

	rom_9000 : ALIGN(0x1000) {
		src/rom_9000/exports.o(.text)
		asm/rom_9000/rom_92b8.o(.text)
		src/decompress/sprite_lz.o(.text)
		src/sprite/sprite.o(.text)
		src/actor/actor.o(.text)
		src/actor/actor_script.o(.text)
		src/actor/player.o(.text)
		src/field/map_data.o(.text)

		src/sprite/sprite.o(.rodata.rom_b798_c_c)
		src/sprite/sprite.o(.rodata.rom_b074_c)
		src/decompress/sprite_lz.o(.rodata)
		src/sprite/sprite.o(.rodata.rom_be70_c)
		src/actor/actor.o(.rodata)
		src/actor/actor_script.o(.rodata)
		asm/rom_9000/rom_d654_c_c_c.o(.rodata)
		src/actor/player.o(.rodata)
		src/field/map_data.o(.rodata.rom_108e4)
		src/field/map_data.o(.rodata.rom_11ce0_c_c)
		src/field/map_data.o(.rodata.rom_1219c_c_c)
		asm/rom_9000/rom_c004_c_c_c.o(.rodata)
		asm/rom_9000/rom_13624.o(.rodata)
		src/field/map_data.o(.rodata.rom_f9cc_c)
	} > rom

	rom_15000 : ALIGN(0x1000) {
		src/rom_15000/exports.o(.text)
		asm/decompress/huffman.o(.text)
		src/ui/window.o(.text)
		src/ui/ui.o(.text)
		src/ui/icon.o(.text)
		src/ui/menu.o(.text)
		src/ui/text.o(.text)
		src/ui/save_menu.o(.text)

		asm/rom_15000/rom_29910.o(.rodata)
		src/ui/icon.o(.rodata)
		asm/rom_15000/rom_310a4.o(.rodata)
		src/ui/save_menu.o(.rodata.rom_22a7c)
		asm/rom_15000/rom_317e4.o(.rodata)
		src/ui/ui.o(.rodata.rom_178b0)
		asm/rom_15000/rom_32224.o(.rodata)
		src/ui/ui.o(.rodata.rom_17e88_c)
		src/ui/ui.o(.rodata.rom_1908c_c_c)
		src/ui/menu.o(.rodata.rom_1aeec_c_c)
		asm/rom_15000/rom_346f8.o(.rodata)
		src/ui/menu.o(.rodata.rom_1a66c_c_c)
		src/ui/menu.o(.rodata.rom_1ca1c_c_c_c)
		asm/rom_15000/rom_367e4.o(.rodata)
		src/ui/text.o(.rodata)
		src/ui/save_menu.o(.rodata.rom_20198_c_c_c_c_c)
		src/ui/save_menu.o(.rodata.rom_23178_c_c)
		data/strings/strings.o(.rodata)
		asm/rom_15000/rom_15e8c_c_c_c.o(.rodata)
		asm/rom_15000/rom_73812.o(.rodata)
		src/ui/save_menu.o(.rodata.rom_1fe2c)
		asm/rom_15000/rom_73864.o(.rodata)

		. += 0x3000;
	} > rom

	rom_77000 : ALIGN(0x1000) {
		src/rom_77000/exports.o(.text)
		src/rpg/party.o(.text)
		src/rpg/item.o(.text)
		src/rpg/move.o(.text)
		src/rpg/pc.o(.text)
		src/flags.o(.text)
		src/rpg/pc.o(.text.rpg_pc_2)

		src/rpg/party.o(.rodata)
		asm/rom_77000/rom_79008_c.o(.rodata)
		asm/rom_77000/rom_78a8c_c_c.o(.rodata)
		asm/rom_77000/rom_78ee8_c.o(.rodata)
		asm/rom_77000/rom_78414_c_c_c_c.o(.rodata)
		asm/rom_77000/rom_78b9c_c.o(.rodata)
		asm/rom_77000/rom_80ec8.o(.rodata)
		asm/rom_77000/rom_78ed8_c.o(.rodata)
		src/rpg/pc.o(.rodata)
	} > rom

	rom_8a000 : ALIGN(0x1000) {
		src/rom_8a000/exports.o(.text)
		src/field/map_load.o(.text)
		src/field/room_load.o(.text)
		src/field/map_actor.o(.text)
		src/field/map.o(.text)
		src/field/map_actor_api.o(.text)
		src/field/weather.o(.text)
		src/field/actor_move.o(.text)
		src/field/psynergy.o(.text)
		src/field/moves/move.o(.text)
		src/field/moves/carry.o(.text)
		src/field/moves/halt.o(.text)
		src/field/moves/avoid.o(.text)
		src/field/transition.o(.text)

		src/field/actor_move.o(.rodata)
		src/field/moves/avoid.o(.rodata)
		asm/rom_8a000/rom_8ace0_c.o(.rodata)
		src/field/map_actor.o(.rodata)
		src/field/map.o(.rodata)
		asm/rom_8a000/rom_9259c_c.o(.rodata)
		src/field/map_actor_api.o(.rodata.rom_92950_c_c_c_c)
		src/field/weather.o(.rodata)
		asm/rom_8a000/rom_9f0b0.o(.rodata)
		src/field/moves/move.o(.rodata)
		src/field/moves/halt.o(.rodata)
		asm/rom_8a000/rom_9bb64_c_c.o(.rodata)
		asm/rom_8a000/rom_8a5f8_c.o(.rodata)
		asm/rom_8a000/rom_8b674_c_c_c.o(.rodata)
		asm/rom_8a000/rom_9f840.o(.rodata)
		asm/rom_8a000/rom_91584_c_c_c_c.o(.rodata)
		asm/rom_8a000/rom_925e0_c.o(.rodata)
		asm/rom_8a000/rom_9fc1c.o(.rodata)
		src/field/map_actor_api.o(.rodata.rom_93304_c_c_c)
		asm/rom_8a000/rom_9ff40.o(.rodata)
		src/field/psynergy.o(.rodata)
		src/field/moves/carry.o(.rodata)
		asm/rom_8a000/rom_a0138.o(.rodata)
	} > rom

	rom_a1000 : ALIGN(0x1000) {
		src/rom_a1000/exports.o(.text)
		src/ui/party_menu.o(.text)

		asm/rom_a1000/rom_a172c_c.o(.rodata)
		src/ui/party_menu.o(.rodata.rom_a5534_c_c_c)
		src/ui/party_menu.o(.rodata.rom_ae88c_c_c_c)
		src/ui/party_menu.o(.rodata.rom_a4f08)
		src/ui/party_menu.o(.rodata.rom_a1050_c_c_c)
		asm/rom_a1000/rom_a47b4_c_c_c_c_c_c.o(.rodata)
		asm/rom_a1000/rom_a8604_c_c_c_c_c.o(.rodata)
		asm/rom_a1000/rom_af26c.o(.rodata)
		src/ui/party_menu.o(.rodata.rom_aa538_c_c_c)
		src/ui/party_menu.o(.rodata.rom_a1814_c_c_c)
		src/ui/party_menu.o(.rodata.rom_a7380)
		src/ui/party_menu.o(.rodata.rom_ad274_c_c)
	} > rom

	rom_b0000 : ALIGN(0x1000) {
		src/rom_b0000/exports.o(.text)
		src/ui/shop.o(.text)

		src/ui/shop.o(.rodata)
	} > rom

	rom_b5000 : ALIGN(0x1000) {
		src/rom_b5000/exports.o(.text)
		asm/rom_b5000/rom_b5138.o(.text)
		src/battle/debug_battle_test.o(.text)
		src/battle/battle.o(.text)
		src/battle/mechanics.o(.text)
		src/battle_anim/cast.o(.text)
		src/battle/enemy.o(.text)

		asm/rom_b5000/rom_c2a0c.o(.rodata)
		src/battle/battle.o(.rodata.rom_b5a0c_c_c_c)
		src/battle/battle.o(.rodata.rom_b6eb4)
		asm/rom_b5000/rom_b7410_c_c_c_c_c.o(.rodata)
		src/battle/mechanics.o(.rodata.rom_bbb0c_c)
		asm/rom_b5000/rom_c10e8_c.o(.rodata)
		asm/rom_b5000/rom_c3734.o(.rodata)
		src/battle/debug_battle_test.o(.rodata)
		src/battle/battle.o(.rodata.rom_b6f44)
		src/battle/battle.o(.rodata.rom_b6e7c)
		asm/rom_b5000/rom_b8228_c_c.o(.rodata)
		src/battle/mechanics.o(.rodata.rom_bffb8_c_c)
		asm/rom_b5000/rom_c1a34_c.o(.rodata)

		. += 0x1000;
	} > rom

	rom_c9000 : ALIGN(0x1000) {
		src/rom_c9000/exports.o(.text)
		src/render/window_effect.o(.text)
		src/battle_anim/moves/ice.o(.text)
		src/battle_anim/moves/spore.o(.text)
		src/battle_anim/moves/bite_sting.o(.text)
		src/battle_anim/moves/death_plunge.o(.text)
		src/battle_anim/djinn_set.o(.text)
		src/battle_anim/anim_util.o(.text)
		src/battle_anim/moves/haunt_attack.o(.text)
		src/battle_anim/moves/spasm.o(.text)
		src/battle_anim/moves/revive.o(.text)
		src/battle_anim/moves/mud.o(.text)
		src/battle_anim/moves/condemn.o(.text)
		src/battle_anim/moves/procne.o(.text)
		src/battle_anim/moves/tiamat.o(.text)
		src/battle_anim/moves/nereid.o(.text)
		src/battle_anim/moves/nova.o(.text)
		src/battle_anim/moves/particle_cloud.o(.text)
		src/battle_anim/camera.o(.text)
		src/battle_anim/moves/cybele.o(.text)
		src/battle_anim/moves/break.o(.text)
		src/battle_anim/moves/heal.o(.text)
		src/battle_anim/moves/stat_up.o(.text)
		src/battle_anim/moves/stat_down.o(.text)
		src/battle_anim/moves/blast.o(.text)
		src/sprite/summon.o(.text)
		src/battle_anim/moves/breath.o(.text)
		src/battle_anim/moves/growth.o(.text)
		src/battle_anim/moves/projectile.o(.text)
		src/battle_anim/moves/tackle.o(.text)
		src/battle_anim/vfx.o(.text)
		src/battle_anim/moves/venus.o(.text)
		src/battle_anim/moves/rapid_slash.o(.text)
		src/battle/actor_pos.o(.text)
		src/battle_anim/special_attack.o(.text)
		src/battle_anim/moves/torch.o(.text)
		src/battle_anim/moves/meteor.o(.text)
		src/battle_anim/moves/judgment.o(.text)
		src/battle_anim/moves/kirin.o(.text)
		src/battle_anim/moves/thrash.o(.text)
		src/render/draw2D.o(.text)

		asm/rom_c9000/rom_eda78.o(.rodata)
		src/battle_anim/moves/ice.o(.rodata)
		src/battle_anim/moves/bite_sting.o(.rodata)
		src/battle_anim/moves/death_plunge.o(.rodata)
		src/battle_anim/djinn_set.o(.rodata)
		src/battle_anim/moves/haunt_attack.o(.rodata)
		src/battle_anim/moves/spasm.o(.rodata)
		src/battle_anim/moves/revive.o(.rodata)
		src/battle_anim/moves/mud.o(.rodata)
		src/battle_anim/moves/condemn.o(.rodata)
		src/battle_anim/moves/procne.o(.rodata)
		src/battle_anim/moves/tiamat.o(.rodata)
		src/battle_anim/moves/nereid.o(.rodata)
		src/battle_anim/moves/nova.o(.rodata)
		src/battle_anim/moves/particle_cloud.o(.rodata)
		asm/rom_c9000/rom_ee2b4.o(.rodata)
		src/battle_anim/moves/cybele.o(.rodata)
		src/battle_anim/moves/break.o(.rodata)
		src/battle_anim/moves/stat_down.o(.rodata)
		src/battle_anim/moves/blast.o(.rodata)
		src/battle_anim/moves/breath.o(.rodata)
		src/battle_anim/moves/growth.o(.rodata)
		src/battle_anim/moves/projectile.o(.rodata)
		src/battle_anim/moves/tackle.o(.rodata)
		src/battle_anim/moves/venus.o(.rodata)
		asm/rom_c9000/rom_e28f4_c_c_c.o(.rodata)
		src/battle/actor_pos.o(.rodata)
		src/battle_anim/special_attack.o(.rodata)
		asm/rom_c9000/rom_e6638_c.o(.rodata)
		src/battle_anim/moves/meteor.o(.rodata)
		src/battle_anim/moves/judgment.o(.rodata)
		src/battle_anim/moves/kirin.o(.rodata)
		src/battle_anim/moves/thrash.o(.rodata)
		src/render/draw2D.o(.rodata)
	} > rom

	rom_f0000 : ALIGN(0x1000) {
		src/rom_f0000/exports.o(.text)
		asm/rom_f0000/rom_f0008.o(.text)
		src/ending.o(.text)

		src/ending.o(.rodata)
	} > rom

	rom_f2000 : ALIGN(0x1000) {
		src/rom_f2000/exports.o(.text)
		src/title.o(.text)

		asm/rom_f2000/rom_f2028_c_c_c_c.o(.rodata)
	} > rom

	rom_f4000 : ALIGN(0x1000) {
		src/rom_f4000/exports.o(.text)
		src/lucky_dice.o(.text)

		src/lucky_dice.o(.rodata)
	} > rom

	rom_f6000 : ALIGN(0x1000) {
		src/rom_f6000/exports.o(.text)
		src/lucky_wheels.o(.text)

		src/lucky_wheels.o(.rodata)
	} > rom

	rom_f9000 : ALIGN(0x1000) {
		src/rom_f9000/exports.o(.text)
		src/sound.o(.text)
		src/other/sub_80f95e0.o(.text)
		src/lib/m4a/m4a.o(.text)

		asm/rom_f9000/rom_f9080_c_c_c_c.o(.rodata)
		src/other/sub_80f95e0.o(.rodata)
		asm/rom_f9000/rom_f9ef8_c_c_c.o(.rodata)
		asm/rom_f9000/rom_fc624.o(.rodata)
	} > rom

	rom_185000 : ALIGN(0x1000) {
		src/rom_185000/exports.o(.text)
		src/sprite/sprite_info.o(.text)

		asm/rom_185000/rom_185008_c.o(.rodata)

		. += 0x1000;
	} > rom

	/DISCARD/ : {
		*(*)
	}
}
