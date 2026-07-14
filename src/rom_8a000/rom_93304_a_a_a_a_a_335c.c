typedef unsigned char u8;
typedef signed short s16;

extern u8 *GetFieldActor(int actor_id);
extern u8 *galloc_ewram(int slot, unsigned int size);
extern u8 **iwram_3001e70;
extern void _Camera_SetTarget(u8 *camera, u8 *actor);
extern void WaitFrames(int frames);
extern void _Func_800fe9c(void);

void SetCameraTarget(int actor_id, int preserve_position)
{
    register int mode asm("r10") = preserve_position;
    register u8 *actor asm("r6") = GetFieldActor(actor_id);
    register u8 *arena asm("r8") = galloc_ewram(0x1b, 0xccc);
    register u8 *camera asm("r5") = *(u8 **)(arena + 0x1e0);
    register u8 **target_slot asm("r3") = iwram_3001e70;

    asm volatile("" : "+r"(target_slot));

    if (actor != 0) {
        register u8 *position asm("r7") = camera + 8;

        *target_slot = position;
        _Camera_SetTarget(camera, actor);
        if (mode == 0) {
            *(int *)position = *(int *)(actor + 8);
            *(int *)(camera + 0xc) = *(int *)(actor + 0xc);
            *(int *)(camera + 0x10) = *(int *)(actor + 0x10);
            WaitFrames(1);
            if (*(s16 *)(arena + 0x19e) != 3)
                _Func_800fe9c();
        }
    }
}
