typedef unsigned char u8;

extern void __MapActor_SetAnim(int actor_id, int animation);
extern void __PlaySound(int sound_id);
extern void __MapActor_Emote(int actor_id, int emote_id, int duration);
extern void OvlFunc_959_2009be4(int actor_id);
extern u8 *iwram_3001ebc;
extern u8 gState[];
extern void __Func_8091eb0(int arg0, int arg1);
extern void __MapActor_SetPos(int actor_id, int x, int y);
extern void __CutsceneEnd(void);
extern void __SetFlag(int flag);

void ACTOR_EXIT_FUNCTION(void)
{
    {
        register int animation asm("r1") = 1;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(animation));
        actor_id = 0;
        asm volatile("" : "+r"(actor_id), "+r"(animation));
        __MapActor_SetAnim(actor_id, animation);
    }
    __PlaySound(0x71);
    {
        register int emote asm("r1") = 0x80;
        register int duration asm("r2");
        register int actor_id asm("r0");

        asm volatile("" : "+r"(emote));
        emote <<= 1;
        asm volatile("" : "+r"(emote));
        duration = 0x3c;
        asm volatile("" : "+r"(emote), "+r"(duration));
        actor_id = ACTOR_EXIT_ID;
        asm volatile("" : "+r"(actor_id), "+r"(emote), "+r"(duration));
        __MapActor_Emote(actor_id, emote, duration);
    }
    OvlFunc_959_2009be4(ACTOR_EXIT_ID);
    {
        register u8 *state asm("r3");
        register int offset asm("r2") = 0xe0;

        state = iwram_3001ebc;
        asm volatile("" : "+r"(state), "+r"(offset));
        offset <<= 1;
        state += offset;
        offset += 0x40;
        *(int *)state = offset;
        state = gState;
        offset += 0x2b;
        state += offset;
        offset = 3;
        *state = offset;
    }
    __Func_8091eb0(0x62, 2);
    __MapActor_SetPos(ACTOR_EXIT_ID, 0, 0);
    __CutsceneEnd();
    __SetFlag(ACTOR_EXIT_FLAG);
}
