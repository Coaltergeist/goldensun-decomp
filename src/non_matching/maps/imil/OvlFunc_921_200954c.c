extern void __DeleteActor(void *);

typedef struct { int x, y, z; } Vec3;

extern Vec3 Lm921_31f0 __asm__(".Lm921_31f0");

extern void __vec3_translate(int, int, int *);

void OvlFunc_921_200954c(void *actor)
{
    struct {
        char pad1[8];
        int f8, fc, f10;
        char pad2[0x50];
        short f64;
        short f66;
    } *a = actor;
    int count;
    Vec3 v;

    if (actor == 0) return;

    a->f64 -= 1;
    count = (short)a->f64;
    if (count != 0) {
        v = Lm921_31f0;
        v.y += 0x80000;
        __vec3_translate(count << 16, (count << 11) + a->f66, (int *)&v);
        a->f8 = v.x;
        a->fc = v.y;
        a->f10 = v.z;
    } else {
        __DeleteActor(actor);
    }
}
