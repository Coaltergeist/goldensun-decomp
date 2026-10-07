extern void WaitFrames(int frames);

extern int Data_fb794[3];

extern int gRAMBuildDate;

extern unsigned int gKeyRepeat;

extern int Label_12cc;

extern void PlaySound(int req);

void Debug_SoundTest(void) {
    int slots[3];
    int cur;
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
            channel = (channel + 1) % 5;
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
