	.include "macros.inc"

	.global	Exports_f9000
Exports_f9000:

	.export_func m4aSoundMain
	.export_func InitSoundEngine
	.export_func PlaySound
	.export_func UpdateMusicSettings
	.export_func SetMusicTempo
	.export_func SetMusicPitch
	.export_func ChangeMusicSpeed
	.export_func SetMusicVolume
	.export_func ChangeMusicVolume
	.export_func Func_80f954c
	.export_func Debug_SoundTest
	.export_func PauseSound
	.export_func ContinueSound
	.export_func Func_80f9570
	.export_func Func_80f9594
	.export_func Func_80f95a0

	.ssize	Exports_f9000
