extern int async_state asm(".L441c");
extern void __WaitFrames(int frame_count);

void OvlFunc_954_2008178(void)
{
    register int *state_pointer asm("r2");
    register int state asm("r3");
    register int elapsed_frames asm("r5");
    register int *saved_pointer asm("r6");
    register int frame_count asm("r0");

    __WaitFrames(10);
    state_pointer = &async_state;
    /* Preserve the original state-pointer and counter register flow. */
    asm volatile("" : "+r"(state_pointer));
    state = *state_pointer;
    elapsed_frames = 0;
    asm volatile("" : "+r"(state), "+r"(elapsed_frames));
    if (state != 0x16) {
        saved_pointer = state_pointer;
        asm volatile("" : "+r"(saved_pointer));
        do {
            frame_count = 1;
            asm volatile("" : "+r"(frame_count));
            elapsed_frames++;
            asm volatile("" : "+r"(frame_count), "+r"(elapsed_frames));
            __WaitFrames(frame_count);
            if (elapsed_frames > 0x77)
                break;
            state = *saved_pointer;
            asm volatile("" : "+r"(state));
        } while (state != 0x16);
    }
}
