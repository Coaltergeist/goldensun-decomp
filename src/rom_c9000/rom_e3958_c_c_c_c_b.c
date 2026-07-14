extern void *galloc_ewram(int slot, int size);
extern void *galloc_iwram(int slot, int size);
extern void gfree(int slot);
extern void BaseAnim_SpecialAttack(int *param_1);
extern void BaseAnim_Attack(int *param_1);
extern void Anim_CriticalHit(int *param_1);

void Anim_Attack(int *param_1)
{
    register int v asm("r3");
    register unsigned int t asm("r1");

    galloc_ewram(0x29, 0x60e);
    galloc_iwram(0x27, 0x782c);
    galloc_iwram(0x28, 0x4000);

    v = *param_1;
    asm volatile("" : "+r"(v));
    t = (unsigned int)v - 100;
    asm volatile("" : "+r"(t), "+r"(v));
    if (t < 0x24) {
        BaseAnim_SpecialAttack(param_1);
    } else if (v > 199) {
        Anim_CriticalHit(param_1);
    } else {
        BaseAnim_Attack(param_1);
    }

    gfree(0x28);
    gfree(0x27);
    gfree(0x29);
}
