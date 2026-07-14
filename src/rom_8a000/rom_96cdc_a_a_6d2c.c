typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;

typedef struct Actor96d2c Actor96d2c;
struct Actor96d2c {
    u8 pad00[8];
    s32 pos_x;
    s32 pos_y;
    s32 pos_z;
    u8 pad14[4];
    s32 scale_x;
    s32 scale_y;
    u8 pad20[0x44];
    u16 counter;
    u8 pad66[2];
    Actor96d2c *target;
};

extern int sin(int);
extern void _Actor_SetScript(void *actor, void *script);
extern unsigned char Data_9f0b0[];

void Func_8096d2c(Actor96d2c *actor)
{
    Actor96d2c *target;
    short counter;

    target = actor->target;
    counter = (actor->counter += 1);
    if (counter > 31) {
        _Actor_SetScript(actor, Data_9f0b0);
    } else {
        int s = sin(counter << 10);
        int k = 0x10000;

        actor->scale_x = s;
        actor->scale_y = s;
        actor->pos_x = target->pos_x;
        actor->pos_y += k;
        actor->pos_z = target->pos_z + (k - s) * 5 + 0x90000;
    }
}
