/* Func_80f91e8(void) BGM volume/tempo/pitch slide updater [rom_f9000]
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
 *   Func_80fb2cc m4aMPlayVolumeControl   Func_80fb2a4 m4aMPlayTempoControl
 *   Func_80fb334 m4aMPlayPitchControl    Func_80f9c44 m4aSoundVSync
 *   ewram_2004290 gMPlayInfo_BGM
 */
extern unsigned char  ewram_2003000;
extern unsigned char  ewram_2004210[];
extern short          ewram_2003008;   /* current volume */
extern short          ewram_2003034;   /* target  volume */
extern unsigned short ewram_2003010;   /* volume step     */
extern short          ewram_2003038;   /* current tempo   */
extern short          ewram_2003030;   /* target  tempo   */
extern unsigned short ewram_200300c;   /* tempo  step     */
extern void *ewram_2004290;

extern void Func_80fb2cc(void *mplayInfo, unsigned short trackBits, unsigned short volume);
extern void Func_80fb2a4(void *mplayInfo, unsigned short tempo);
extern void Func_80fb334(void *mplayInfo, unsigned short trackBits, int pitch);
extern void Func_80f9c44(void);

void Func_80f91e8(void) {
    int diff;
    unsigned char state;

    state = ewram_2003000;
    if (state != 0) {
        if (state == 1) {
            if (ewram_2004210[4] == 0) {
                ewram_2003000 = 0;
                ewram_2003034 = 0x100;
            }
        } else {
            ewram_2003000 = state - 1;
        }
    }

    if (ewram_2003034 != ewram_2003008) {
        diff = ewram_2003034 - ewram_2003008;
        if (diff > 0)
            ewram_2003008 = (unsigned short)ewram_2003008 + ewram_2003010;
        else
            ewram_2003008 = (unsigned short)ewram_2003008 - ewram_2003010;
        if (((ewram_2003034 - ewram_2003008) ^ diff) < 0)
            ewram_2003008 = ewram_2003034;
        Func_80fb2cc(&ewram_2004290, 0xff, (unsigned short)ewram_2003008);
    }

    if (ewram_2003030 != ewram_2003038) {
        diff = ewram_2003030 - ewram_2003038;
        if (diff > 0)
            ewram_2003038 = (unsigned short)ewram_2003038 + ewram_200300c;
        else
            ewram_2003038 = (unsigned short)ewram_2003038 - ewram_200300c;
        if (((ewram_2003030 - ewram_2003038) ^ diff) < 0)
            ewram_2003038 = ewram_2003030;
        Func_80fb2a4(&ewram_2004290, (unsigned short)ewram_2003038);
        Func_80fb334(&ewram_2004290, 0xff,
                     (((3 * ewram_2003038) << 18) + (0xf4 << 24)) >> 16);
    }

    Func_80f9c44();
}
