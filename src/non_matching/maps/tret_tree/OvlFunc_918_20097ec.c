extern short Lm918_1ca8[] __asm__(".Lm918_1ca8");

void OvlFunc_918_20097ec(void) {
    int i = 0;
    while (Lm918_1ca8[i] != -1) {
        if (__GetFlag(Lm918_1ca8[i]) && Lm918_1ca8[i + 1]) {
            API_CopyMapTiles(Lm918_1ca8[i + 2], Lm918_1ca8[i + 3], Lm918_1ca8[i + 4], Lm918_1ca8[i + 5], 1, 1);
        }
        i += 6;
    }
}
