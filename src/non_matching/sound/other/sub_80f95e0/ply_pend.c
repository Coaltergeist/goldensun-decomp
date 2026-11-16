/*
 * Handwritten assembly in original ROM (Nintendo MP2K / Sappy `m4a_1.s`,
 * duplicate of `src/lib/m4a/m4a0.s` ply_pend: returns via bare `bx lr` without
 * `push {lr}`, which camelot-gcc `-mthumb` never emits).
 */
void ply_pend(unsigned char *mplayInfo, unsigned char *track)
{
    int count;
    count = track[2];
    if (count != 0) {
        count = count - 1;
        track[2] = count;
        *(unsigned int *)(track + 0x40) = *(unsigned int *)(track + (count << 2) + 0x44);
    }
}
