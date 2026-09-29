typedef struct DmaRegs { const void *sad; void *dad; unsigned int cnt; } DmaRegs;

void DeleteSpriteLayer(void *arg0)
{
    int buf;

    if (arg0 != 0) {
        buf = 0;
        *(volatile DmaRegs *)0x040000d4 = (DmaRegs){&buf, arg0, 0x85000006};
    }
}
