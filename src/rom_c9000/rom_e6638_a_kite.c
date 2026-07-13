extern unsigned char *iwram_3001eec;
extern void AnimStart(int mode);
extern void Anim_Djinni(int animation, int kind, int direction, int unused,
                        int *result_a, int *result_b);
extern void AnimEnd(void);

void Anim_Kite(int animation)
{
    int result_a;
    int result_b;
    int *active_animation = (int *)(iwram_3001eec + 0x7828);

    *active_animation = animation;
    AnimStart(0);
    Anim_Djinni(animation, 7, ((int *)(*active_animation))[1] ^ 1, 0,
                &result_a, &result_b);
    AnimEnd();
}
