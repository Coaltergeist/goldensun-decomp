typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;

typedef struct {
    u8 pad00[0x44];
    u8 active;
    u8 pad45[0xb];
    u8 link_id;
    u8 timer;
    u8 status;
} FieldState;

typedef struct {
    u8 pad0[4];
    u16 field4;
    u16 field6;
    u8 pad8[0x10];
} MatchRecord;

extern u8 *iwram_3001e74;
extern u16 iwram_3001f64;
extern MatchRecord ewram_2002024[];
extern u16 ewram_2002224[];
extern void WaitFrames(int frames);

int Func_80b60a0(void)
{
    FieldState *field;
    MatchRecord *entry;
    u16 *dest;
    int frame;
    int outer;

    field = (FieldState *)iwram_3001e74;
    frame = 0;
    if (field->active == 0)
        goto success;

    entry = &ewram_2002024[field->link_id ^ 1];
    dest = ewram_2002224;
    if (field->status != 0)
        goto fail;

    dest[0] = 0x45;
    dest[1] = 0x58;
    dest[2] = 0x45;
    dest[3] = 0x43;
    outer = 0;

loop_top:
    if ((iwram_3001f64 & 3) != 3) {
        frame++;
        if (frame > 0x18)
            return -1;
        goto continue_wait;
    }

    frame = 0;
    if (dest[2] == entry->field4 && dest[3] == entry->field6)
        goto success;

continue_wait:
    WaitFrames(1);
    outer++;
    if (outer <= 0x1d)
        goto loop_top;

fail:
    return -1;
success:
    return 0;
}
