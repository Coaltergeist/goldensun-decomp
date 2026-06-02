// sound.h
#ifndef SOUND_H
#define SOUND_H

#include <gba/types.h>

#if   GS1
#include "gs1/sounds.h"
#elif GS2
#include "gs2/sounds.h"
#endif

/// Called on startup to initialize the sound engine.
extern void InitSoundEngine(void);

/// Play sound effects, music, and jingles.
/// @see `gs1/sounds.h` and `gs2/sounds.h` for a list of all sound IDs.
extern void PlaySound(int sound);

/// Pause the music.
extern void PauseMusic(void);

/// Unpause the music.
extern void UnpauseMusic(void);

/// Set the music volume.
extern void SetMusicVolume(u16 volume);

/// Set the music pitch.
extern void SetMusicPitch(s16 pitch);

/// Set the music tempo.
extern void SetMusicTempo(u16 tempo);

#if !GS1
/// @return true if a song is available in the sound test.
extern int GetSoundTestFlag(u16 sound);

/// Mark a song as available in the sound test.
extern void SetSoundTestFlag(u16 sound);

/// Unmark a song as available in the sound test.
extern void ClearSoundTestFlag(u16 sound);
#endif // GS1

#endif // SOUND_H