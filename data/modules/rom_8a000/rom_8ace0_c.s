	.include "macros.inc"

	.section .rodata
	.global gEncounterTables
	.global gMapEncounters
	.global gWorldMapEncounters
	.global gDjinniEncounters
	.global gAreaMusic
	.global gAreaNames
	.global gRespawns
	.global gMapBattleBGs
	.global gEnemyBattleMusic

gEncounterTables:
	.incrom 0x9c610, 0x9d170
gMapEncounters:
	.incrom 0x9d170, 0x9d7a8
gWorldMapEncounters:
	.incrom 0x9d7a8, 0x9d8b0
gDjinniEncounters:
	.incrom 0x9d8b0, 0x9d9f0
gAreaMusic:
	.incrom 0x9d9f0, 0x9ddd8
gAreaNames:
	.incrom 0x9ddd8, 0x9e1d8
gRespawns:
	.incrom 0x9e1d8, 0x9e270
gMapBattleBGs:
	.incrom 0x9e270, 0x9e488
gEnemyBattleMusic:
	.incrom 0x9e488, 0x9e4ce
