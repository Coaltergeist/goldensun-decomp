extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);

extern int __Func_8096c48(void *, int);

extern void *__CreateActor(int, int, int, int);

extern void __Actor_SetAnim(void *, int);

extern void OvlFunc_918_20095ac(struct Actor *);

void OvlFunc_918_200962c(void) {
    int val = Lm918_2dcc;
    int unk = 0;
    int div = _divsi3_RAM(val, 10);

    switch (val) {
        case 0:
        case 10:
        case 20:
        case 30:
        case 40: {
            unsigned int i;
            unsigned int count;
            __PlaySound(0xdc);
            i = 0;
            count = 6 - div;
            while (i < count) {
                struct Actor *actor = __CreateActor(0x11d, Lm918_2dc0.x, Lm918_2dc0.y, Lm918_2dc0.z);
                if (actor != NULL) {
                    unk = __Func_8096c48(actor->sprite, unk);
                    actor->__unk55 = 0;
                    actor->sprite->oam.priority = 0;
                    __Actor_SetSpriteFlags(actor, 0);
                    __Actor_SetAnim(actor, 1);
                    actor->waveCounter = 0;
                    actor->__unk66 = _udivsi3_RAM((_udivsi3_RAM(360, count) * i) << 16, 360);
                    actor->prevPos.x = Lm918_2dc0.x;
                    actor->prevPos.y = Lm918_2dc0.y;
                    actor->prevPos.z = Lm918_2dc0.z;
                    actor->speed = 0x19999;
                    actor->update = (actorfun_t *)OvlFunc_918_20095ac;
                }
                i++;
            }
        }
        /* fallthrough */
        case 44:
            __PlaySound(0x121);
            break;
    }

    Lm918_2dcc++;
    if (Lm918_2dcc > 0x78) {
        Lm918_2dcc = 0;
    }
}
