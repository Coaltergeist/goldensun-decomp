/* Cluster OvlFunc_948_2008e50..OvlFunc_948_2008e50 extracted from goldensun/asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_a.o and asm/overlays/rom_7d30e0/ovl_30_c_a_c_c_a_a_a_c_c.o in
 * goldensun/overlays/rom_7d30e0/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
typedef struct { unsigned char _pad[0x30]; int speed; int accel; } ActorT;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern unsigned char L2808[] __asm__(".L2808");

void OvlFunc_948_2008e50(void)
{
    unsigned char *base;
    unsigned char *p;
    unsigned char *gs;
    unsigned char *tbl;
    short r5;
    ActorT *p1;
    ActorT *p2;
    int idx;
    int idx2;

    base = *(unsigned char **)iwram_3001ebc;
    if (__GetFlag(0x9ca) != 0) {
        gs = (unsigned char *)&gState;
        gs += 0x24a;
        if (*(short *)gs != 0xf) {
            p = base + (0xb6 << 1);
            r5 = *(short *)p;
            p1 = (ActorT *)__MapActor_GetActor(0xf);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->speed = p2->speed;
            p1 = (ActorT *)__MapActor_GetActor(0xf);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->accel = p2->speed;
            tbl = L2808;
            idx = (r5 - 0x1e) << 3;
            idx2 = idx + 4;
            __Func_809218c(0xf, *(int *)(tbl + idx), *(int *)(tbl + idx2));
        }
    }
}
