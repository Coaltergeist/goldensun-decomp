typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;

typedef struct {
    u8 pad00[0x44];
    u8 active;
    u8 pad45[0xb];
    u8 link_id;
    u8 timer;
    u8 status;
} FieldState;

extern u8 *iwram_3001e80;
extern u16 iwram_3001f64;
extern volatile u32 REG_SIOCNT;

extern void InitMatrixStack(void);
extern void MatrixTranslatev(void *position);
extern void MatrixYaw(int angle);
extern void MatrixPitch(int angle);
extern void Func_80009c0(int *vector, void *camera);
extern void Func_80c0a24(int x, int y, int z, int angle, int scale);

void Func_80b5864(void)
{
    u8 **base;
    u8 **cursor;
    u8 *camera;
    register FieldState *field asm("r1");
    int *transition;
    void *position;
    int vector[3];
    int difference;
    int timer;

    base = &iwram_3001e80;
    cursor = base;
    camera = *base;
    base -= 3;
    field = (FieldState *)*base;
    cursor += 0x20;
    transition = *(int **)cursor;

    if (field->active != 0) {
        register u8 *target asm("r2");
        int value;
        if ((iwram_3001f64 & 3) != 3) {
            u8 *timer_ptr = &field->timer;
            timer = *timer_ptr + 1;
            *timer_ptr = timer;
            if ((u32)(timer << 24) <= 0x18000000)
                goto sync_done;
            target = &field->status;
            value = 1;
        } else {
            register int link_id asm("r2");
            register int remote_id asm("r3");
            __asm__ volatile (
                "ldr r3, =0x04000128\n\t"
                "mov r2, %2\n\t"
                "ldr r3, [r3]\n\t"
                "add r2, #0x50\n\t"
                "lsl r3, #26\n\t"
                "ldrb r2, [r2]\n\t"
                "lsr r3, #30"
                : "=r" (link_id), "=r" (remote_id)
                : "r" (field)
                : "memory");
            if (link_id != remote_id)
                field->status = 1;
            target = &field->timer;
            value = 0;
        }
        *target = value;
    }
sync_done:

    if (*(volatile int *)&transition[1] != 0) {
        int target_angle = transition[0];
        register int current asm("r1") = *(u16 *)(camera + 0x36);
        register int adjusted asm("r2");
        difference = (s16)(target_angle - current);
        adjusted = difference;
        if (difference < 0)
            adjusted += 0xf;
        difference = adjusted >> 4;
        __asm__ ("add r3, r1, r3" : "+r" (difference) : "r" (current));
        *(volatile u16 *)(camera + 0x36) = difference;
        (*(volatile int *)&transition[1])--;
    }

    position = camera + 0xc;
    if (*(void **)(camera + 0x1c) != 0)
        position = *(void **)(camera + 0x1c);

    InitMatrixStack();
    MatrixTranslatev(position);
    MatrixYaw(*(s16 *)(camera + 0x36));
    MatrixPitch(*(s16 *)(camera + 0x34));
    vector[0] = 0;
    vector[1] = 0;
    vector[2] = *(int *)(camera + 0x20);
    {
        register void (*transform)(int *, void *) asm("r3");
        __asm__ ("ldr %0, =Func_80009c0" : "=r" (transform));
        transform(vector, camera);
    }

    if (transition[5] == 0)
        Func_80c0a24(0x780000, 0x780000, 0, 0, 0x10000);
}
