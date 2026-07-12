/* OvlFunc_959_2008bac extracted from
 * goldensun/asm/overlays/rom_7e7574/ovl_9dc_a_c_c_a_a.s.
 * Total .text for this TU = 64 bytes (= 0x40).
 */
extern void __MapActor_SetSpeed(int actor_id, int speed_x, int speed_y);
extern void __MapActor_TravelTo(int actor_id, int x, int y);
extern void __MapActor_WaitMovement(int actor_id);
extern void __PlaySound(int sound_id);
extern void __CutsceneWait(int frames);
extern void OvlFunc_959_2008b4c(void);
extern void __SetFlag(int flag);

void OvlFunc_959_2008bac(void)
{
    /* Preserve the original constant-load and shift schedule. */
    {
        register int speed_x asm("r1") = 0x80;
        register int speed_y asm("r2") = 0x80;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(speed_x), "+r"(speed_y));
        actor_id = 0xc;
        asm volatile("" : "+r"(actor_id), "+r"(speed_x), "+r"(speed_y));
        speed_x <<= 9;
        speed_y <<= 8;
        asm volatile("" : "+r"(actor_id), "+r"(speed_x), "+r"(speed_y));
        __MapActor_SetSpeed(actor_id, speed_x, speed_y);
    }
    {
        register int destination_y asm("r2") = 0xbc;
        register int destination_x asm("r1") = 0xf8;
        register int actor_id asm("r0");

        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        destination_y <<= 1;
        asm volatile("" : "+r"(destination_x), "+r"(destination_y));
        actor_id = 0xc;
        asm volatile("" : "+r"(actor_id), "+r"(destination_x),
                              "+r"(destination_y));
        __MapActor_TravelTo(actor_id, destination_x, destination_y);
    }
    __MapActor_WaitMovement(0xc);
    __PlaySound(0xd7);
    __CutsceneWait(0x3c);
    OvlFunc_959_2008b4c();
    __SetFlag(0x943);
}
