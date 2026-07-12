extern int *GetBattleActor(unsigned int unit);
extern void _Actor_Stop(unsigned char *actor);
extern void _Actor_TravelTo(unsigned char *actor, int x, int y, int z);
extern void _Actor_SetAnim(unsigned char *actor, int animation);
extern int atan2(int y, int x);

void Func_80b8000(unsigned int unit)
{
    int *battle_actor = GetBattleActor(unit);
    unsigned char *actor = (unsigned char *)battle_actor[0];
    int angle_input;

    *(int *)(actor + 0x34) = 0x80 << 10;
    *(int *)(actor + 0x30) = 0x80 << 12;
    *(int *)(actor + 0x48) = 0xab85;

    /* Preserve the original register schedule for the two byte fields. */
    asm volatile("" : : "m"(*(int *)(actor + 0x48)));
    {
        register unsigned char *hidden_flag asm("r3") = actor;
        register int zero asm("r2") = 0;

        asm volatile("" : "+r"(hidden_flag), "+r"(zero));
        hidden_flag += 0x5a;
        asm volatile("" : "+r"(hidden_flag), "+r"(zero));
        *(int *)(actor + 0x28) = zero;
        *(int *)(actor + 0x44) = zero;
        *hidden_flag = zero;
    }
    {
        register unsigned char *visible_flag asm("r2") = actor;

        asm volatile("" : "+r"(visible_flag));
        visible_flag += 0x58;
        asm volatile("" : "+r"(visible_flag));
        {
            register int one asm("r3") = 1;

            asm volatile("" : "+r"(visible_flag), "+r"(one));
            *visible_flag = one;
        }
    }
    _Actor_Stop(actor);
    _Actor_TravelTo(actor, battle_actor[3], 0, battle_actor[4]);
    angle_input = battle_actor[4] / 8;
    {
        register int angle asm("r0");
        register int half_turn asm("r3");

        angle = atan2(angle_input, battle_actor[3]);
        half_turn = 0x80;
        /* Keep the half-turn adjustment as a shift rather than a literal. */
        asm volatile("" : "+r"(angle), "+r"(half_turn));
        half_turn <<= 8;
        asm volatile("" : "+r"(angle), "+r"(half_turn));
        angle += half_turn;
        asm volatile("" : "+r"(angle));
        *(short *)(actor + 6) = angle;
    }
}

void Func_80b8064(unsigned int unit)
{
    int *battle_actor = GetBattleActor(unit);
    unsigned char *actor = (unsigned char *)battle_actor[0];

    *(int *)(actor + 0x34) = 0x80 << 10;
    *(int *)(actor + 0x30) = 0x80 << 12;
    *(int *)(actor + 0x28) = 0xa0 << 11;
    *(int *)(actor + 0x48) = 0x7851;
    *(int *)(actor + 0x44) = 0;
    actor[0x5a] = 0;
    _Actor_Stop(actor);
    _Actor_TravelTo(actor, battle_actor[3] * 3, 0, battle_actor[4]);
    _Actor_SetAnim(actor, 1);
}
