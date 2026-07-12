extern void __WaitFrames(int frame_count);
extern int primary_async_state asm(".L4834");
extern int secondary_async_state asm(".L4838");

void OvlFunc_955_2008970(void)
{
    register int elapsed_frames asm("r5");
    register int state asm("r3");

    __WaitFrames(10);
    state = primary_async_state;
    /* Keep transient state in r3 so its address is reloaded after calls. */
    asm volatile("" : "+r"(state));
    elapsed_frames = 0;
    asm volatile("" : "+r"(elapsed_frames));
    goto check_primary_state;

wait:
    __WaitFrames(1);
    state = 0x96;
    elapsed_frames++;
    state <<= 2;
    asm volatile("" : "+r"(state), "+r"(elapsed_frames));
    if (elapsed_frames >= state)
        return;
    state = primary_async_state;
    asm volatile("" : "+r"(state));

check_primary_state:
    if (state != 0)
        goto wait;
    state = secondary_async_state;
    asm volatile("" : "+r"(state));
    if (state != 0x4b)
        goto wait;
}
