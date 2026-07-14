extern unsigned char iwram_3001ebc[];
extern int GetMapActorIndex(int actor);
extern int _Func_8011f54(int a, int b, int c);

void Func_808edac(int actor, int param2, int param3)
{
    int index = GetMapActorIndex(actor);

    if (index != -1) {
        unsigned char *entry = *(unsigned char **)iwram_3001ebc + (index << 3) + (0x8e << 1);
        unsigned char *p = *(unsigned char **)entry;

        if (p != 0) {
            if (param2 == -1) {
                param2 = (entry[6] << 20) + 0x80000;
            }
            if (param3 == -1) {
                param3 = (entry[7] << 20) + 0x80000;
            }
            *(int *)(p + 8) = param2;
            *(int *)(p + 0x10) = param3;
            {
                int r = _Func_8011f54(0, param2, param3);
                *(int *)(p + 0x14) = r;
                *(int *)(p + 0xc) = r;
            }
        }
    }
}
