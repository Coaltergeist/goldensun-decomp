typedef unsigned char u8;
typedef short s16;
typedef unsigned int u32;

typedef struct GameState {
    u8 pad[0x1f4];
    int actorId;
} GameState;

extern GameState gState;
extern u8 *iwram_3001ebc;
extern volatile u32 gKeyHeld;
extern void Func_8092708(int actor, int arg1, int arg2);
extern void Func_8093c00(void);
extern void Func_8093e28(void);
extern void Func_8093fa0(void);

int Func_808d8f0(int msg)
{
    u8 *state = iwram_3001ebc;
    int actorId = gState.actorId;
    s16 *counter;
    s16 zero1;

    switch (msg) {
    case 0xfc:
        goto case_fc;
    case 0xfd:
        goto case_fd;
    case 0xfe:
    case 0xf9:
        goto case_f9fe;
    default:
        goto exit;
    }

case_fc:
    counter = (s16 *)(state + 0x19c);
    if (*counter <= 0xc) goto exit;
    if ((gKeyHeld & 0x80) == 0) goto exit;
    Func_8092708(actorId, 6, 0);
    goto tail;

case_f9fe:
    counter = (s16 *)(state + 0x19c);
    if (*counter <= 0xc) goto exit;
    Func_8093c00();

tail:
    zero1 = 0;
    *counter = zero1;
    goto exit;

case_fd:
    if (*(s16 *)(state + 0x19c) > 0xc) {
        s16 zero2 = 0;
        if ((gKeyHeld & 0x80) != 0) {
            Func_8093e28();
        } else if ((gKeyHeld & 0x40) != 0) {
            Func_8093fa0();
        }
        *(s16 *)(state + 0x19c) = zero2;
    }

exit:
    return 0;
}
