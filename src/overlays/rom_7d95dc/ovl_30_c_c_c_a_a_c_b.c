typedef struct GameState {
    unsigned char padding[0x1c0];
    short map_id;
} GameState;

extern GameState gState;
extern void OvlFunc_953_2009a4c(void);
extern void OvlFunc_953_2009c6c(void);

int OvlFunc_953_2009a14(void)
{
    register int scratch asm("r3");
    register int offset asm("r1");
    register int map_id asm("r2");

    /* Preserve the original scratch-register flow through the dispatcher. */
    scratch = (int)&gState;
    asm volatile("" : "+r"(scratch));
    offset = 0xe0;
    asm volatile("" : "+r"(scratch), "+r"(offset));
    offset <<= 1;
    scratch += offset;
    asm volatile("" : "+r"(scratch), "+r"(offset));
    offset = 0;
    asm volatile("" : "+r"(scratch), "+r"(offset));
    map_id = *(short *)(scratch + offset);
    /* Preserve the original literal-pool loads for the two map IDs. */
    asm volatile("ldr %0, .Lmap_id_8c_953" : "=r"(scratch));
    if (map_id == scratch)
        OvlFunc_953_2009a4c();
    else {
        asm volatile("ldr %0, .Lmap_id_8e_953" : "=r"(scratch));
        if (map_id == scratch)
            OvlFunc_953_2009c6c();
    }
    return 0;
}

/* Recreate the original literal-pool layout and inclusive symbol size. */
asm(".align 2, 0\n"
    ".Lmap_id_8c_953:\n"
    ".word 0x8c\n"
    ".Lmap_id_8e_953:\n"
    ".word 0x8e\n"
    ".size OvlFunc_953_2009a14, 56");
