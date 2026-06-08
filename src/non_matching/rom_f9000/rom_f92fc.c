/* Debug_SoundTest(void) sound-test / music control loop [rom_f9000]
 * Source asm: goldensun/asm/rom_f9000/rom_f9080_a_a.s  (Camelot music-driver prefix)
 *
 * An infinite control loop (never returns) driving a 3-slot song selector
 * from the controller flag word gKeyRepeat:
 *   bit 0x004  cycle the sfx channel ((ch+1) % 5) and re-arm it
 *   bit 0x100/0x200  +/- 0xa to the current slot id
 *   bit 0x010/0x020  +/- 1  to the current slot id
 *   bit 0x040/0x080  move to the previous / next slot
 *   bit 0x001  play the current slot id   bit 0x002 -> 0x13
 *   bit 0x008  play 0x11 (BGM stop)         bit 0x004 -> 0x121
 * Each pass waits one frame. A 0x14-frame timer is re-armed by Label_12cc.
 *
 * non_matching: faithful logic, NOT byte-matched yet. The ROM keeps the slot
 * cursor as a (pointer r6, byte-index r8, count r7) trio in high registers
 * with the loop body inlined; reproducing that register allocation + the
 * .Lfb794 seed-copy needs work. The seed Data_fb794[3] is the rodata blob at
 * 0x080fb794 (label .Lfb794) and needs an alias to be nameable in C.
 *
 * Func_ -> friendly name:
 *   PlaySound PlaySound        WaitFrames WaitFrames
 *   SetSoundFXMode SetSoundFXMode   Func_b1c_from_thumb umod
 */
extern int Data_fb794[3];          /* .Lfb794 @ 0x080fb794 (needs alias) */
extern int gRAMBuildDate;
extern unsigned int gKeyRepeat; /* controller flags */
extern int Label_12cc;

extern void PlaySound(int req);
extern void SetSoundFXMode(int mode);
extern void WaitFrames(int frames);
extern int  Func_b1c_from_thumb(int a, int b);   /* (a % b) */

void Debug_SoundTest(void) {
    int slots[3];
    int cur;         /* current slot (ROM: pointer r6 / index r8 / count r7) */
    int fadeTimer;
    int channel;

    slots[0] = Data_fb794[0];
    slots[1] = Data_fb794[1];
    slots[2] = Data_fb794[2];
    channel = 2;
    cur = 0;
    gRAMBuildDate = 0;
    fadeTimer = 0x14;

    for (;;) {
        unsigned int in;

        if (fadeTimer != 0)
            fadeTimer--;
        if (Label_12cc != 0) {
            Label_12cc = 0;
            fadeTimer = 0x14;
        }

        in = gKeyRepeat;
        if (in & 4) {
            channel = Func_b1c_from_thumb(channel + 1, 5);
            SetSoundFXMode(channel);
        }
        if (in & 0x100) slots[cur] += 0xa;
        if (in & 0x200) slots[cur] -= 0xa;
        if (in & 0x10)  slots[cur] += 1;
        if (in & 0x20)  slots[cur] -= 1;
        if ((in & 0x40) && cur > 0)
            cur--;

        in = gKeyRepeat;
        if ((in & 0x80) && cur <= 1)
            cur++;
        if (in & 1) PlaySound(slots[cur]);
        if (in & 2) PlaySound(0x13);
        if (in & 8) PlaySound(0x11);
        if (in & 4) PlaySound(0x121);

        WaitFrames(1);
    }
}
