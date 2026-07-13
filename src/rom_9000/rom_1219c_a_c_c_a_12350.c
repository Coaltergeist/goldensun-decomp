typedef unsigned char u8;
typedef unsigned int u32;

typedef struct WaitState {
    u32 reserved0;
    int first;
    int second;
    u32 done;
} WaitState;

extern u8 *iwram_3001e70;
extern void WaitFrames(unsigned int frames);

void Func_8012350(void)
{
    WaitState *const state = (WaitState *)iwram_3001e70;
    register int first asm("r3") = state->first;
    register int elapsed asm("r6");

    asm volatile("" : "+r"(first));
    elapsed = 0;
    asm volatile("" : "+r"(elapsed));
    goto check;

wait:
    WaitFrames(1);
    {
        register int limit asm("r3") = 0x96;

        asm volatile("" : "+r"(limit));
        elapsed++;
        limit <<= 1;
        if (elapsed >= limit) {
            goto done;
        }
    }
    first = state->first;

check:
    if (first > 0xff) {
        goto wait;
    }
    if (state->second > 0xff) {
        goto wait;
    }

done:
    state->done = 0;
}
