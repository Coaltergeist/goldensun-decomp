extern void __CutsceneStart(void);
extern void __PlaySound(int sound_id);
extern void __CutsceneWait(int frames);
extern int __GetFlag(int flag);
extern void __MapActor_Surprise(int actor_id, int emote);
extern void __MapActor_Jump(int actor_id, int height, int direction);
extern void ACTOR_DEPARTURE_MOVE(int actor_id, int x, int y, int height);
extern void __Func_80921c4(int actor_id, int x, int y);
extern void __SetFlag(int flag);
extern void __CutsceneEnd(void);

/* 驚き動作の後、役者を画面外へ退場させる。 */
void ACTOR_SURPRISE_DEPARTURE_FUNCTION(void)
{
    int already_departed;

    __CutsceneStart();
    __PlaySound(100);
    __CutsceneWait(40);

    {
        register int departure_flag asm("r0") = 0x867;

        asm volatile("" : "+r"(departure_flag));
        already_departed = __GetFlag(departure_flag);
    }

    if (!already_departed) {
        {
            register int emote asm("r1") = 0x81;
            register int actor_id asm("r0");

            asm volatile("" : "+r"(emote));
            actor_id = ACTOR_DEPARTURE_ID;
            asm volatile("" : "+r"(actor_id), "+r"(emote));
            emote <<= 1;
            __MapActor_Surprise(actor_id, emote);
        }
        __MapActor_Jump(ACTOR_DEPARTURE_ID, 4, 0);
        __CutsceneWait(12);
        __MapActor_Jump(ACTOR_DEPARTURE_ID, 4, 0);
        __CutsceneWait(20);
        {
            register int x asm("r1") = 0xc4;
            register int height asm("r3") = 0xe0;

            asm volatile("" : "+r"(x));
            asm volatile("" : "+r"(height));
            height <<= 11;
            asm volatile("" : "+r"(height));
            x <<= 1;
            asm volatile("" : "+r"(x));
            ACTOR_DEPARTURE_MOVE(ACTOR_DEPARTURE_ID, x, 0x68, height);
        }
        __CutsceneWait(20);
        {
            register int target_x asm("r1") = 0xcc;
            register int actor_id asm("r0");

            asm volatile("" : "+r"(target_x));
            actor_id = ACTOR_DEPARTURE_ID;
            asm volatile("" : "+r"(actor_id), "+r"(target_x));
            target_x <<= 1;
            __Func_80921c4(actor_id, target_x, 0x68);
        }
        {
            register int target_x asm("r1") = 0xcc;
            register int actor_id asm("r0");

            asm volatile("" : "+r"(target_x));
            actor_id = ACTOR_DEPARTURE_ID;
            asm volatile("" : "+r"(actor_id), "+r"(target_x));
            target_x <<= 1;
            __Func_80921c4(actor_id, target_x, 0x78);
        }
        {
            register int departure_flag asm("r0") = 0x867;

            asm volatile("" : "+r"(departure_flag));
            __SetFlag(departure_flag);
        }
    }

    __CutsceneEnd();
}
