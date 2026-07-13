extern int Func_80b6c08(int mode, short *actors);
extern void Func_80c0f98(int actor, int value);

void Func_80c1054(void)
{
    short actors[14];
    int count = Func_80b6c08(3, actors);
    int i;

    for (i = 0; i < count; i++) {
        Func_80c0f98(actors[i], 0);
    }
}
