/* Cluster OvlFunc_934_2009300..OvlFunc_934_2009300 extracted from goldensun/asm/overlays/rom_7bdeb0/ovl_1300.s.
 *
 * Total .text for this TU = 120 bytes (= 0x78).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7bdeb0/ovl_1300_a.o and asm/overlays/rom_7bdeb0/ovl_1300_c.o in
 * goldensun/overlays/rom_7bdeb0/overlay.ld.
 */
typedef struct { unsigned char _bytes[704]; } GlobalState;
typedef struct { unsigned char _pad[0x30]; int speed; int accel; } ActorT;
extern unsigned char iwram_3001ebc[];
extern GlobalState gState;
extern unsigned char L1f00[] __asm__(".L1f00");

void OvlFunc_934_2009300(void)
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
    if (__GetFlag(0x302) != 0) {
        gs = (unsigned char *)&gState;
        gs += 0x24a;
        if (*(short *)gs != 8) {
            p = base + (0xb6 << 1);
            r5 = *(short *)p;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->speed = p2->speed;
            p1 = (ActorT *)__MapActor_GetActor(8);
            p2 = (ActorT *)__MapActor_GetActor(0);
            p1->accel = p2->accel;
            tbl = L1f00;
            idx = (r5 - 0x2d) << 3;
            idx2 = idx + 4;
            __MapActor_TravelToAnim(8, *(int *)(tbl + idx), *(int *)(tbl + idx2));
        }
    }
}
