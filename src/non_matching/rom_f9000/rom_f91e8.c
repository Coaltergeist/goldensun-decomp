/* UpdateMusicSettings(void) BGM volume/tempo/pitch slide updater [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f9080_a_a.s  (Camelot music-driver prefix)
 *
 * Per-frame updater: ages a fade counter, then eases the current BGM volume
 * (2003008) toward its target (2003034) and the current tempo (2003038)
 * toward its target (2003030), each by a per-frame step, clamping on
 * overshoot (sign-flip of the target-current delta). Pitch is derived from
 * the tempo. Closes by ticking the sound engine.
 *
 * non_matching: faithful logic, NOT byte-matched yet. The s16/u16 dual reads
 * of each slide variable (ldrsh for the compares, ldrh for the arithmetic)
 * and the pool scheduling still need to be pinned. Good permuter seed.
 *
 * Func_ -> friendly name:
 *   m4aMPlayVolumeControl m4aMPlayVolumeControl   m4aMPlayTempoControl m4aMPlayTempoControl
 *   m4aMPlayPitchControl m4aMPlayPitchControl    m4aSoundVSync m4aSoundVSync
 *   gMPlayInfo_BGM gMPlayInfo_BGM
 */
extern unsigned char  ewram_2003000;
extern unsigned char  gMPlayInfo_02004210[];
extern short          gMusicCurVolume;   /* current volume */
extern short          gMusicVolume;   /* target  volume */
extern unsigned short gMusicVolumeDelta;   /* volume step     */
extern short          gMusicCurSpeed;   /* current tempo   */
extern short          gMusicSpeed;   /* target  tempo   */
extern unsigned short gMusicSpeedDelta;   /* tempo  step     */
extern void *gMPlayInfo_BGM;

extern void m4aMPlayVolumeControl(void *mplayInfo, unsigned short trackBits, unsigned short volume);
extern void m4aMPlayTempoControl(void *mplayInfo, unsigned short tempo);
extern void m4aMPlayPitchControl(void *mplayInfo, unsigned short trackBits, int pitch);
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

    if (gMusicVolume != gMusicCurVolume) {
        diff = gMusicVolume - gMusicCurVolume;
        if (diff > 0)
            gMusicCurVolume = (unsigned short)gMusicCurVolume + gMusicVolumeDelta;
        else
            gMusicCurVolume = (unsigned short)gMusicCurVolume - gMusicVolumeDelta;
        if (((gMusicVolume - gMusicCurVolume) ^ diff) < 0)
            gMusicCurVolume = gMusicVolume;
        m4aMPlayVolumeControl(&gMPlayInfo_BGM, 0xff, (unsigned short)gMusicCurVolume);
    }

    if (gMusicSpeed != gMusicCurSpeed) {
        diff = gMusicSpeed - gMusicCurSpeed;
        if (diff > 0)
            gMusicCurSpeed = (unsigned short)gMusicCurSpeed + gMusicSpeedDelta;
        else
            gMusicCurSpeed = (unsigned short)gMusicCurSpeed - gMusicSpeedDelta;
        if (((gMusicSpeed - gMusicCurSpeed) ^ diff) < 0)
            gMusicCurSpeed = gMusicSpeed;
        m4aMPlayTempoControl(&gMPlayInfo_BGM, (unsigned short)gMusicCurSpeed);
        m4aMPlayPitchControl(&gMPlayInfo_BGM, 0xff,
                     (((3 * gMusicCurSpeed) << 18) + (0xf4 << 24)) >> 16);
    }

    m4aSoundVSync();
}
