extern void *galloc_iwram(int index, unsigned int size);
extern void gfree(int index);
extern unsigned char *iwram_3001eec;
extern void (*Data_80ee2b4[])(int *);

void Anim_Func(int *param_1)
{
    int idx;

    galloc_iwram(0x29, 0x302);
    galloc_iwram(0x27, 0x782c);
    galloc_iwram(0x28, 0x4000);

    *(int **)(iwram_3001eec + 0x7828) = param_1;

    idx = param_1[0];
    if (idx == 0) {
        param_1[6] = 0;
    } else {
        Data_80ee2b4[idx - 1](param_1);
    }

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}
