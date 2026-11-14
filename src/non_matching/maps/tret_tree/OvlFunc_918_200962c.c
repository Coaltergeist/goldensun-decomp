/* Non-matching: compiles 100% instruction-identically when written with `/` (`Lm918_2dcc / 10`
 * and `((360U / (unsigned int)(6 - div) * i) << 16) / 360U`) because `__divsi3`/`__udivsi3`
 * carry `CONST_CALL_P = 1`, keeping `Lm918_2dcc` and `&Lm918_2dcc` in `r5`/`r7` across the
 * initial division and keeping `6 - div` in `r8` without spilling. Explicit `_divsi3_RAM` and
 * `_udivsi3_RAM` calls lack `CONST_CALL_P` while overlay object relocations target `_*divsi3_RAM`.
 */
extern unsigned int _udivsi3_RAM(unsigned int, unsigned int);
extern int __Func_8096c48(void *, int);
extern void *__CreateActor(int, int, int, int);
extern void __Actor_SetAnim(void *, int);
extern void OvlFunc_918_20095ac(struct Actor *);

void OvlFunc_918_200962c(void) {
    int unk = 0;
    int val = Lm918_2dcc;
    int div = _divsi3_RAM(val, 10);

    switch (val) {
        case 0:
        case 10:
        case 20:
        case 30:
        case 40: {
            unsigned int i;
            __PlaySound(0xdc);
            for (i = 0; i < (unsigned int)(6 - div); i++) {
                struct Actor *actor = __CreateActor(0x11d, Lm918_2dc0.x, Lm918_2dc0.y, Lm918_2dc0.z);
                if (actor != NULL) {
                    unk = __Func_8096c48(actor->sprite, unk);
                    actor->__unk55 = 0;
                    actor->sprite->oam.priority = 0;
                    __Actor_SetSpriteFlags(actor, 0);
                    __Actor_SetAnim(actor, 1);
                    actor->waveCounter = 0;
                    actor->__unk66 = _udivsi3_RAM((_udivsi3_RAM(360, 6 - div) * i) << 16, 360);
                    actor->prevPos.x = Lm918_2dc0.x;
                    actor->prevPos.y = Lm918_2dc0.y;
                    actor->prevPos.z = Lm918_2dc0.z;
                    actor->speed = 0x19999;
                    actor->update = (actorfun_t)OvlFunc_918_20095ac;
                }
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
