// fakematch
/* Cluster OvlFunc_959_2008608..OvlFunc_959_2008608 extracted from goldensun/asm/overlays/rom_7e7574/ovl_30_c_c_c.s.
 *
 * Total .text for this TU = 696 bytes (= 0x2b8).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7e7574/ovl_30_c_c_c_a.o and asm/overlays/rom_7e7574/ovl_30_c_c_c_c.o in
 * goldensun/overlays/rom_7e7574/overlay.ld.
 */
extern unsigned char iwram_3001e70[];
extern int L5f30[] __asm__(".L5f30");
extern int L5ed8[] __asm__(".L5ed8");
extern void OvlFunc_959_20082a8(void);
extern void OvlFunc_959_2008244(int, int, int, int, int, int);
void __MapActor_SetSpeed(unsigned int, int, int);
extern void __MapActor_SetAnim(unsigned int, unsigned int);
extern void __Func_809228c(unsigned int, int, int);
extern void __Func_8010704(unsigned int, unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);
extern unsigned char *__MapActor_GetActor(unsigned int);
extern void __Actor_TravelTo(void *, int, int, int);
void __MapActor_WaitMovement(unsigned int);
struct Pk {
int a;
int b;
int x;
int y;
int z;
void (*arg5)(void);
};

void OvlFunc_959_2008608(struct Pk arg)
{
    int va[3];
    int vb[3];
    unsigned char *env;
    unsigned char *actor;
    int *ap;
    unsigned int dir;
    int h;
    int w;
    int t1;
    int t2;
    int zz;
    int camx;
    int camz;
    int v;
    int s5;
    int s6;
    int x1;
    int x2;
    int u1;
    int u2;

    env = (unsigned char *)*(int *)iwram_3001e70;
    dir = *(unsigned short *)(__MapActor_GetActor(0) + 6) >> 12;
    actor = (unsigned char *)__MapActor_GetActor(arg.b);
    t1 = L5f30[(arg.a << 2) + 1];
    if (t1 < 0) t1 = -t1;
    t2 = L5f30[(arg.a << 2) + 3];
    if (t2 < 0) t2 = -t2;
    h = (t1 + t2) >> 4;
    t1 = L5f30[arg.a << 2];
    if (t1 < 0) t1 = -t1;
    t2 = L5f30[(arg.a << 2) + 2];
    if (t2 < 0) t2 = -t2;
    w = (t1 + t2) >> 4;
    *(int *)(actor + 0x30) = 0x8000;
    *(int *)(actor + 0x34) = 0x1999;
    ap = va;
    ap[0] = *(int *)(actor + 8);
    ap[2] = *(int *)(actor + 0x10);
    vb[0] = *(int *)(actor + 8) + (L5f30[arg.a << 2] << 16);
    zz = *(int *)(actor + 0x10) + (L5f30[(arg.a << 2) + 1] << 16);
    vb[0] = vb[0] >> 20;
    vb[2] = zz >> 20;
    OvlFunc_959_2008244(0, vb[0], vb[2], w, h, 0);
    __MapActor_SetSpeed(0, 0x8000, 0x1999);
    __MapActor_SetAnim(0, 8);
    __CutsceneWait(15);
    __Func_809228c(0, (arg.x - ap[0]) / 0x20000, (arg.z - ap[2]) / 0x20000);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = (int)OvlFunc_959_20082a8;
    __CutsceneWait(4);
    if (dir - 6 <= 7)
        __Actor_SetAnim(actor, 3);
    else
        __Actor_SetAnim(actor, 2);
    __PlaySound(0xef);
    __Actor_TravelTo(actor, arg.x, arg.y, arg.z);
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 2);
    {
        register unsigned int r0z __asm__("r0") = 0;
        register unsigned int r1v __asm__("r1") = 0x4ccc;
        register unsigned int r2v __asm__("r2") = 0x1999;
        __asm__ volatile ("" : : "r"(r0z));
        __asm__ volatile ("" : : "r"(r1v));
        __asm__ volatile ("" : : "r"(r2v));
        __MapActor_SetSpeed(r0z, r1v, r2v);
    }
    __Func_809228c(0, (short)(L5ed8[dir] >> 16) / 2, (short)(L5ed8[dir]) / 2);
    if (arg.arg5)
        arg.arg5();
    __MapActor_WaitMovement(0);
    __MapActor_SetAnim(0, 1);
    *(int *)(__MapActor_GetActor(0) + 0x6c) = 0;
    __Actor_WaitMovement(actor);
    __PlaySound(0x120);
    __PlaySound(0xd5);
    *(int *)(actor + 8) = arg.x;
    *(int *)(actor + 0x10) = arg.z;
    *(int *)(actor + 0x24) = 0;
    *(int *)(actor + 0x2c) = 0;
    __Actor_SetAnim(actor, 1);
    x1 = arg.x;
    x2 = arg.z;
    x1 += L5f30[arg.a << 2] << 16;
    x2 += L5f30[(arg.a << 2) + 1] << 16;
    x1 >>= 20;
    x2 >>= 20;
    arg.x = x1;
    arg.z = x2;
    camx = *(int *)(env + 0x13c);
    camx = camx >> 20;
    camz = *(int *)(env + 0x140);
    camz = camz >> 20;
    s5 = camx + arg.x;
    s6 = camz + arg.z;
    __Func_8010704(arg.x, arg.z, w, h, s5, s6);
    OvlFunc_959_2008244(0, arg.x, arg.z, w, h, 0xff);
    OvlFunc_959_2008244(2, arg.x, arg.z, w, h, 0xff);
    u1 = ap[0] + (L5f30[arg.a << 2] << 16);
    u2 = ap[2] + (L5f30[(arg.a << 2) + 1] << 16);
    ap[0] = u1 >> 20;
    ap[2] = u2 >> 20;
    camx += ap[0];
    camz += ap[2];
    __Func_8010704(camx, camz, w, h, ap[0], ap[2]);
    OvlFunc_959_2008244(2, ap[0], ap[2], w, h, 0);
    __Func_809202c();
}
