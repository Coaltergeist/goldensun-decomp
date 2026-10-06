#include "anim.h"

extern unsigned int Random(void);

extern void WaitFrames(int);

extern u8 *iwram_3001ef0[];

struct TransitionOutState {
    u8 pad[0x7824];
    s32 frameReady;
};

void AnimTransitionOut(int type, int invert)
{
    u8 table[128];
    u8 **slots = iwram_3001ef0;
    u8 *render = *slots--;
    struct TransitionOutState *state = (struct TransitionOutState *)*slots;
    int limit, step, x, y, diff, i;

    for (i = 0; i != 128; i++) {
        table[i] = Random() & 0x3f;
    }

    if (type == 1) {
        limit = 0;
        step = 1;
        y = 0;
        do {
            limit += step;
            step += 1;
            for (; y != limit; y++) {
                int val = 1 - invert;
                for (x = 0; x != 128; x++) {
                    diff = y - table[x];
                    if (diff >= 0) {
                        if (diff <= 127) {
                            render[((((x / 8) * 16 + diff / 8) * 8 + (x & 7)) * 8) + (diff & 7)] = val;
                        }
                    }
                }
            }
            state->frameReady = 1;
            WaitFrames(1);
        } while (limit <= 256);
    } else {
        limit = 0;
        step = 1;
        x = 0;
        do {
            limit += step / 2;
            step += 4;
            for (; x != limit; x++) {
                int val = 1 - invert;
                for (y = 0; y != 128; y++) {
                    diff = x - table[y];
                    if (diff >= 0) {
                        if (diff <= 127) {
                            render[((((diff / 8) * 16 + y / 8) * 8 + (diff & 7)) * 8) + (y & 7)] = val;
                        }
                    }
                }
            }
            state->frameReady = 1;
            WaitFrames(1);
        } while (limit <= 191);
    }
}
