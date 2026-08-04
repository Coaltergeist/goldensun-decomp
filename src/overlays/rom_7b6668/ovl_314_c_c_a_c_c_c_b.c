// fakematch
/* Cluster OvlFunc_928_2008de8..OvlFunc_928_2008de8 extracted from goldensun/asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_c.s.
 *
 * Total .text for this TU = 100 bytes (= 0x64).
 * Preserves the original ROM layout when slotted between
 * asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_c_a.o and asm/overlays/rom_7b6668/ovl_314_c_c_a_c_c_c_c.o in
 * goldensun/overlays/rom_7b6668/overlay.ld.
 */
extern unsigned char iwram_3001ebc[];

void OvlFunc_928_2008de8(unsigned int arg0)
{
    unsigned char *actor;
    unsigned int w1, z1;
    unsigned int r3;

    actor = (unsigned char *) __MapActor_GetActor(0);
    {
        unsigned char *p;
        unsigned char v;
        p = actor + 0x55;
        v = 0;
        __asm__ volatile ("" : "+r" (p), "+r" (v));
        w1 = 0x80;
        __asm__ volatile ("" : "+r" (w1) : : "memory");
        z1 = 0x80;
        __asm__ volatile ("" : "+r" (z1) : : "memory");
        *p = v;
        w1 <<= 8;
        {
            register unsigned int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            z1 <<= 7;
            __MapActor_SetSpeed(rq, w1, z1);
        }
    }

    if (arg0 == 6) {
        {
            register int rq __asm__("r0") = 0;
            __asm__ volatile ("" : : "r" (rq));
            __MapActor_SetAnim(rq, 2);
        }
        {
            register int p0 __asm__("r0");
            register int p1 __asm__("r1");
            register int p2 __asm__("r2") = 0x10;
            __asm__ volatile ("" : "+r" (p2));
            p0 = 0;
            p1 = 0;
            __asm__ volatile ("" : "+r" (p0), "+r" (p1));
            p2 = -p2;
            __Func_809228c(p0, p1, p2);
        }
    } else {
        register int p0 __asm__("r0");
        register int p1 __asm__("r1");
        register int p2 __asm__("r2") = 0x10;
        __asm__ volatile ("" : "+r" (p2));
        p0 = 0;
        p1 = 2;
        __asm__ volatile ("" : "+r" (p0), "+r" (p1));
        p2 = -p2;
        __Func_8092208(p0, p1, p2);
    }

    r3 = *(unsigned int *)iwram_3001ebc;
    *(unsigned int *)(r3 + (0xe4 << 1)) = 0x10;
    __Func_8091e9c(arg0);
}
