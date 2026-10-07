extern unsigned char  gMPlayInfo_02004210[];

extern unsigned short          gMusicCurSpeed;

extern unsigned short          gMusicSpeed;

extern unsigned short gMusicSpeedDelta;

extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);

extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, short pitch);

extern void m4aSoundVSync(void);

void UpdateMusicSettings(void) {
    int diff;
    unsigned char state;

    state = ewram_2003000;
    if (state != 0) {
        if (state == 1) {
            if (gMPlayInfo_02004210[4] == 0) {
                ewram_2003000 = 0;
                gMusicVolume = 0x100;
            }
        } else {
            ewram_2003000 = state - 1;
        }
    }

    if ((short)gMusicVolume != (short)gMusicCurVolume) {
        diff = (short)gMusicVolume - (short)gMusicCurVolume;
        if (diff > 0)
            gMusicCurVolume = (unsigned short)(short)gMusicCurVolume + gMusicVolumeDelta;
        else
            gMusicCurVolume = (unsigned short)(short)gMusicCurVolume - gMusicVolumeDelta;
        if ((((short)gMusicVolume - (short)gMusicCurVolume) ^ diff) < 0)
            gMusicCurVolume = (short)gMusicVolume;
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, (unsigned short)(short)gMusicCurVolume);
    }

    if ((short)gMusicSpeed != (short)gMusicCurSpeed) {
        diff = (short)gMusicSpeed - (short)gMusicCurSpeed;
        if (diff > 0)
            gMusicCurSpeed = (unsigned short)(short)gMusicCurSpeed + gMusicSpeedDelta;
        else
            gMusicCurSpeed = (unsigned short)(short)gMusicCurSpeed - gMusicSpeedDelta;
        if ((((short)gMusicSpeed - (short)gMusicCurSpeed) ^ diff) < 0)
            gMusicCurSpeed = (short)gMusicSpeed;
        m4aMPlayTempoControl(&gMPlayInfo_BGM, (unsigned short)(short)gMusicCurSpeed);
        m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff,
                     (((3 * (short)gMusicCurSpeed) << 18) + (0xf4 << 24)) >> 16);
    }

    m4aSoundVSync();
}
