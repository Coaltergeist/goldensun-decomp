typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 *iwram_3001f30;
extern u8 *GetFieldActor(int actor_id);
extern void vec3_translate(u32 scale, u32 angle, u8 *position);

void Func_80970f8(int first_id, int second_id)
{
    u8 *state = iwram_3001f30;
    u8 *first;
    u8 *second;
    u32 angle;

    *(short *)(state + 0x18) = first_id;
    first = GetFieldActor((short)first_id);
    *(short *)(state + 0x1a) = second_id;
    *(u8 **)(state + 0x10) = first;
    second = GetFieldActor((short)second_id);

    angle = (*(u16 *)(first + 6) + 0x2000) & 0xc000;
    *(u8 **)(state + 0x14) = second;
    *(u32 *)state = angle;

    if (second != 0) {
        *(u32 *)(state + 0x38) = *(u32 *)(second + 0x6c);
        *(u32 *)(state + 0x3c) = *(u32 *)second;
        {
            register u8 metadata asm("r2") =
                *(*(u8 **)(*(u8 **)(second + 0x50) + 0x28) + 5);
            register u8 *destination asm("r3") = state;
            destination += 0x44;
            *destination = metadata;
        }
        *(u32 *)(state + 4) = *(u32 *)(second + 8);
        *(u32 *)(state + 0xc) = *(u32 *)(second + 0x10);
        *(u32 *)(state + 8) = *(u32 *)(second + 0xc);
    } else {
        *(u32 *)(state + 4) = *(u32 *)(first + 8);
        *(u32 *)(state + 0xc) = *(u32 *)(first + 0x10);
        *(u32 *)(state + 8) = *(u32 *)(first + 0xc);
        vec3_translate(0x100000, angle, state + 4);
    }
}
