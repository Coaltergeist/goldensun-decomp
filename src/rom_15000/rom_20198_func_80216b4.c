struct PairedSprite {
    struct PairedSprite *linked;
    unsigned char filler04[4];
    unsigned char base_y;
    unsigned char filler09[11];
    unsigned char y;
};

extern volatile unsigned int iwram_3001800;
extern unsigned char bobbingOffsets[] asm(".L37226");

void Func_80216b4(struct PairedSprite *sprite)
{
    register volatile unsigned int *frame_counter asm("r4");
    register unsigned char *offsets asm("r5");
    register unsigned int mask asm("r1");
    register unsigned int phase asm("r3");
    register unsigned int y asm("r2");

    frame_counter = &iwram_3001800;
    asm volatile("" : "+r"(frame_counter));
    phase = *frame_counter;
    asm volatile("" : "+r"(phase));
    offsets = bobbingOffsets;
    asm volatile("" : "+r"(offsets));
    mask = 7;
    asm volatile("" : "+r"(mask));
    phase = (phase >> 2) & mask;
    y = sprite->base_y;
    asm volatile("" : "+r"(y));
    phase = offsets[phase];
    y += phase;
    phase = *frame_counter;
    sprite->y = y;
    phase >>= 2;
    asm volatile("" : "+r"(phase));
    sprite = sprite->linked;
    phase &= mask;
    y = sprite->base_y;
    asm volatile("" : "+r"(y));
    phase = offsets[phase];
    y += phase;
    sprite->y = y;
}
