/* Cluster Func_808d7d8..Func_808d7d8 extracted from goldensun/asm/rom_8a000/rom_8d5dc.s.
 *
 * Total .text for this TU = 80 bytes (= 0x50).
 * Preserves the original ROM layout when slotted between
 * asm/rom_8a000/rom_8d5dc_a.o and asm/rom_8a000/rom_8d5dc_c.o in
 * goldensun/stage1.ld.
 */
extern void *FindMapActorEvent(int a, int b);
extern void CutsceneStart(void);
extern void MessageID(int id);
extern void ActorMessage(int a, int b);
extern void CutsceneEnd(void);
extern int _call_via_r3(int a);

int Func_808d7d8(int arg0)
{
    int *event;
    int ret;

    event = (int *) FindMapActorEvent(6, arg0);
    ret = -1;
    if (event != 0 && event[2] != 0) {
        if (event[2] < 0x10000) {
            CutsceneStart();
            MessageID(event[2]);
            ActorMessage(ret, 0);
            ret = 0;
            CutsceneEnd();
        } else {
            _call_via_r3(arg0);
            ret = 0;
        }
    }
    return ret;
}
