extern void OvlFunc_932_200b9c8(void);

extern unsigned short L5260[] __asm__(".L5260");

extern unsigned short L525c[] __asm__(".L525c");

void OvlFunc_932_200ba44(void) {
    *L5260 = 0;
    *L525c = 0;
    __StartTask(OvlFunc_932_200b9c8, 0xc8 << 4);
}
