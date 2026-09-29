#ifndef CANDIDATE_SOUND_H
#define CANDIDATE_SOUND_H

extern unsigned char  ewram_2003000;

extern unsigned short          gMusicCurVolume;

extern unsigned short          gMusicVolume;

extern unsigned short gMusicVolumeDelta;

extern void *gMPlayInfo_BGM;

extern void m4aMPlayVolumeControl(void *mplayInfo, unsigned short trackBits, unsigned short volume);

extern void SetSoundFXMode(int mode);

#endif
