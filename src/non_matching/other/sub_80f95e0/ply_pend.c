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
