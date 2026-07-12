extern void __WaitFrames(int frames);
extern volatile int L5480 __asm__(".L5480");
extern volatile int L5484 __asm__(".L5484");

void OvlFunc_956_20081c8(void)
{
    int frames;
    int state;

    __WaitFrames(10);
    state = L5480;
    /* Keep the initial state read before entering the polling loop. */
    __asm__ volatile ("" : : : "memory");
    frames = 0;
    goto check_state;

wait:
    __WaitFrames(1);
    frames++;
    if (frames > 119) {
        return;
    }
    state = L5480;

check_state:
    if (state != 3) {
        goto wait;
    }
    if (L5484 != 1) {
        goto wait;
    }
}
