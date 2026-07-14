extern void CutsceneStart(void);
extern void MessageID(int message);
extern void ActorMessage(int actor, int message);
extern void CutsceneEnd(void);
extern int _GetFlag(int flag);
extern void _Func_801776c(unsigned int message, unsigned int arg1);

int Func_8096b28(void *a0, int a1, int a2)
{
    if (a0 != 0) {
        if (*(int *)((char *)a0 + 8) != 0) {
            int field = *(int *)((char *)a0 + 8);

            if (field < 0x10000) {
                CutsceneStart();
                MessageID(*(int *)((char *)a0 + 8));
                ActorMessage(a2, 0);
                CutsceneEnd();
            } else {
                ((void (*)(int, int))field)(a1, a2);
            }
        }
        if (_GetFlag(0x142)) {
            CutsceneStart();
            _Func_801776c(0x927, 1);
            CutsceneEnd();
        }
    }
    return 0;
}
