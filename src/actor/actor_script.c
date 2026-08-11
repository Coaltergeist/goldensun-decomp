/* actor/actor_script.c -- consolidated TU. */
#include "nonmatching.h"

extern int Actor_FindScriptMarker();
extern void Actor_SetPos();
extern void ActorAttrOp_scaleX(unsigned char *actor, unsigned int op, unsigned int param);

INCLUDE_ASM("asm/actor/actor_script/rom_ca2c_a.s");

unsigned int ActorCmd_Hide(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    ptr[0x54] = 0;
    *(unsigned short *)(ptr + 4) += 1;
    return 1;
}
unsigned int ActorCmd_Show(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    ptr[0x54] = 1;
    *(unsigned short *)(ptr + 4) += 1;
    return 1;
}

extern void WaitFrames(unsigned int nframes);
extern int Actor_IsNotMoving(void *actor);

void Actor_WaitMovement(void *actor)
{
    int i;
    for (i = 0; i <= 0x257; i++) {
        if (Actor_IsNotMoving(actor))
            break;
        WaitFrames(1);
    }
}

INCLUDE_ASM("asm/actor/actor_script/rom_ca6c_a_c.s");

void Actor_SetPos(unsigned int arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3) {
    unsigned int val;
    *(unsigned int *)(arg0 + 0x10) = arg3;
    val = 0x80 << 24;
    *(unsigned int *)(arg0 + 0x38) = val;
    *(unsigned int *)(arg0 + 0x3c) = val;
    *(unsigned int *)(arg0 + 0x40) = val;
    *(unsigned int *)(arg0 + 8) = arg1;
    *(unsigned int *)(arg0 + 0xc) = arg2;
    *(unsigned int *)(arg0 + 0x24) = 0;
    *(unsigned int *)(arg0 + 0x28) = 0;
    *(unsigned int *)(arg0 + 0x2c) = 0;
}

INCLUDE_ASM("asm/actor/actor_script/rom_ca6c_c.s");

int ActorCmd_Wait(unsigned char *actor)
{
    int idx;
    int val;
    idx = *(short *)(actor + 4);
    val = *(int *)((idx << 2) + *(int *)actor + 4);
    val = val - 1;
    *(unsigned short *)(actor + 0x5e) = val;
    *(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 2;
    return 0;
}


int ActorCmd_WaitMovement(unsigned char *actor)
{
	unsigned char *p;

	p = actor + 0x60;
	if (*p > 0x3b) {
		*p = 0;
		goto inc;
	}
	if (Actor_IsNotMoving(actor)) {
inc:
		*(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 1;
		return 1;
	}
	return 0;
}

INCLUDE_ASM("asm/actor/actor_script/rom_d654_a_c_a_a_a_a.s");

int Actor_FindScriptMarker(unsigned int arg0, unsigned int arg1)
{
    unsigned short *addr;
    unsigned short zero;
    unsigned int *r2;
    unsigned int r3;
    int r0;
    int r4;

    addr = (unsigned short *)((char *)arg0 + 0x5e);
    zero = 0;
    *addr = zero;
    if (arg1 == 0) {
        return 0;
    }
    arg1 &= 0xbfffffff;
    r2 = *(unsigned int **)arg0;
    r4 = 0x3ff;
    r0 = 0;
    do {
        r3 = *r2++;
        if (r3 == arg1) {
            return r0 + 1;
        }
        r0++;
    } while (r0 <= r4);
    return 0;
}

INCLUDE_ASM("asm/actor/actor_script/rom_d654_a_c_a_a_a_c.s");


int ActorCmd_Goto(int actor) {
    int idx;
    int base;
    unsigned int val;

    idx = *(short *)((char *)actor + 4);
    base = *(int *)actor;
    val = *(unsigned int *)((char *)(idx << 2) + base + 4);
    *(short *)((char *)actor + 4) = Actor_FindScriptMarker(actor, val);
    return 1;
}

INCLUDE_ASM("asm/actor/actor_script/rom_d654_a_c_a_a_c.s");

/* ActorCmd_Stop (ActorCmd_Stop); actor[0] = &.L13240; *(u16*)(actor+4) = 0;
 * return 0. Scoping the tarpman zero in a nested block after the pointer store
 * keeps its `movs` from being hoisted ahead of the str (so r3 is reused). */
extern unsigned char L13240[] __asm__(".L13240");

int ActorCmd_Stop(int *actor) {
    actor[0] = (int)L13240;
    {
        unsigned short zero = 0;
        *(unsigned short *)((char *)actor + 4) = zero;
    }
    return 0;
}

extern int _GetFlag(int);

int ActorCmd_GetFlag(unsigned char *r5)
{
    short idx;
    int *base;
    unsigned short cnt;

    idx = *(short *)(r5 + 4);
    base = *(int **)r5;
    *(unsigned char *)(r5 + 0x57) = (unsigned char)_GetFlag(base[idx + 1]);
    cnt = *(unsigned short *)(r5 + 4);
    *(unsigned short *)(r5 + 4) = cnt + 2;
    return 1;
}

extern void _SetFlag(int);

int ActorCmd_SetFlag(void *actor)
{
    short idx;
    int *base;
    int flagId;
    unsigned short cnt;

    idx = *(signed short *)((char *)actor + 4);
    base = *(int **)actor;
    flagId = *(int *)((char *)base + (int)idx * 4 + 4);
    *((unsigned char *)actor + 0x57) = _GetFlag(flagId);
    _SetFlag(flagId);
    cnt = *(unsigned short *)((char *)actor + 4);
    cnt += 2;
    *(unsigned short *)((char *)actor + 4) = cnt;
    return 1;
}

extern void _ClearFlag(int flag);

int ActorCmd_ClearFlag(unsigned char *arg0)
{
    short idx;
    int *arr;
    int flag;

    idx = *(short *)(arg0 + 4);
    arr = *(int **)arg0;
    flag = *(int *)((char *)arr + idx * 4 + 4);
    *(unsigned char *)(arg0 + 0x57) = _GetFlag(flag);
    _ClearFlag(flag);
    *(unsigned short *)(arg0 + 4) += 2;
    return 1;
}


int ActorCmd_ToggleFlag(unsigned char *actor)
{
    int idx;
    unsigned int *base;
    int r5;
    int result;

    idx = *(short *)(actor + 4);
    base = *(unsigned int **)actor;
    r5 = (int)((unsigned int *)((char *)base + idx * 4))[1];

    result = _GetFlag(r5);
    *(unsigned char *)(actor + 0x57) = (unsigned char)result;

    if ((result << 24) == (0x80 << 17))
        _ClearFlag(r5);
    else
        _SetFlag(r5);

    *(unsigned short *)(actor + 4) = *(unsigned short *)(actor + 4) + 2;
    return 1;
}

extern void Actor_SetAnim(void *actor, unsigned int anim);

int ActorCmd_Anim(void *actor)
{
    int r3;
    int r2;
    unsigned short r3h;

    r3 = *(short *)((char *)actor + 4);
    r2 = *(int *)actor;
    r3 = r3 << 2;
    r3 = r3 + r2;
    Actor_SetAnim(actor, *(unsigned int *)(r3 + 4));
    r3h = *(unsigned short *)((char *)actor + 4);
    r3h += 2;
    *(unsigned short *)((char *)actor + 4) = r3h;
    return 1;
}

extern void DeleteActor(void);

/* FF: bool ActorCmd_Delete(Actor * actor) */
unsigned int ActorCmd_Delete(void) {
    DeleteActor();
    return 0;
}

unsigned int ActorCmd_Nop(unsigned int arg0) {
    unsigned char *ptr;
    ptr = (unsigned char *)arg0;
    *(unsigned short *)(ptr + 4) += 2;
    return 1;
}

int ActorCmd_Sound(unsigned char *r5_arg)
{
    unsigned char *r5;
    int r3;
    int r2;
    r5 = r5_arg;
    r3 = *(short *)((char *)r5 + 4);
    r2 = *(int *)r5;
    r3 = (r3 << 2) + r2;
    _PlaySound(*(int *)((char *)r3 + 4));
    r3 = *(unsigned short *)((char *)r5 + 4);
    r3 += 2;
    *(unsigned short *)((char *)r5 + 4) = r3;
    return 1;
}

INCLUDE_ASM("asm/actor/actor_script/rom_d924_a_a.s");


int ActorCmd_SetPos(void *r5)
{
    short idx;
    int *p;
    int x;
    int y;
    int z;
    idx = *(short *)((char *)r5 + 4);
    p = (int *)(*(int *)r5 + idx * 4 + 4);
    x = *p++;
    y = *p++;
    z = *p;
    Actor_SetPos(r5, x, y, z);
    *(unsigned short *)((char *)r5 + 4) = *(unsigned short *)((char *)r5 + 4) + 4;
    return 1;
}

extern void Actor_TravelTo(void *, int, int, int);

int ActorCmd_TravelTo(void *a)
{
    short idx;
    int *table;
    int *entry;
    int x, y, z;

    idx = *(short *)((char *)a + 4);
    table = *(int **)a;
    entry = (int *)((char *)table + (int)idx * 4 + 4);
    x = *entry++;
    y = *entry++;
    z = *entry;
    Actor_TravelTo(a, x, y, z);
    *(unsigned short *)((char *)a + 4) += 4;
    return 1;
}


int ActorCmd_Travel(void *actor)
{
    int idx;
    int *base;
    int e0, e1, r4;
    int x, y, z;

    idx = *(short *)((char *)actor + 4);
    base = *(int **)actor;
    base += idx;
    base++;
    e0 = *base++;
    x = *(int *)((char *)actor + 8) + e0;
    e1 = *base++;
    r4 = *base;
    y = *(int *)((char *)actor + 12) + e1;
    z = *(int *)((char *)actor + 16) + r4;
    Actor_TravelTo(actor, x, y, z);
    *(unsigned short *)((char *)actor + 4) += 4;
    return 1;
}

extern int atan2(int y, int x);

int ActorCmd_FaceTarget(unsigned char *arg0)
{
    unsigned char *p;
    int y;
    int x;

    p = *(unsigned char **)(arg0 + 0x68);
    y = *(int *)(p + 0x10) - *(int *)(arg0 + 0x10);
    x = *(int *)(p + 8) - *(int *)(arg0 + 8);
    *(unsigned short *)(arg0 + 6) = atan2(y, x);
    *(unsigned short *)(arg0 + 4) += 1;
    return 1;
}


int ActorCmd_FollowTarget(unsigned char *actor)
{
    int *p = *(int **)(actor + 0x68);
    Actor_TravelTo((int)actor, p[2], p[3], p[4]);
    *(unsigned short *)(actor + 4) += 1;
    return 1;
}


int ActorCmd_Unused(void *r0)
{
    void *r5 = r0;
    int stack[3];
    int x = *(int *)((char *)r5 + 8) + stack[0];
    int y = *(int *)((char *)r5 + 12) + stack[1];
    int z = *(int *)((char *)r5 + 16) + stack[2];

    Actor_TravelTo(r5, x, y, z);
    *(unsigned short *)((char *)r5 + 4) = *(unsigned short *)((char *)r5 + 4) + 3;
    return 1;
}

INCLUDE_ASM("asm/actor/actor_script/rom_d924_c_c.s");

void ActorAttrOp_script(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char v;
    if (op == 0) {
        *(unsigned int *)actor = param;
    } else if (op == 1) {
        *(unsigned int *)actor += param << 2;
    } else {
        v = (*(unsigned int *)actor == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_scriptPos(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        *(unsigned short *)(actor + 4) = param;
    } else if (op == 1) {
        *(unsigned short *)(actor + 4) += param;
    } else {
        eq = (*(short *)(actor + 4) == (short)param);
        actor[0x57] = eq;
    }
}
void ActorAttrOp_facing(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned short v;
    if (op == 0) {
        *(unsigned short *)(actor + 6) = param;
    } else if (op == 1) {
        *(unsigned short *)(actor + 6) += param;
    } else {
        v = 0;
        if (*(unsigned short *)(actor + 6) == (unsigned short)param)
            v = 1;
        actor[0x57] = v;
    }
}
void ActorAttrOp_x(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;
    if (op == 0) {
        *(unsigned int *)(actor + 8) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 8) += param;
    } else {
        v = (*(unsigned int *)(actor + 8) == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_y(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        *(unsigned int *)(actor + 0xc) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0xc) += param;
    } else {
        eq = 0;
        if (*(unsigned int *)(actor + 0xc) == param)
            eq = 1;
        *(actor + 0x57) = eq;
    }
}
void ActorAttrOp_z(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;
    if (op == 0) {
        *(unsigned int *)(actor + 0x10) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x10) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x10) == param)
            val = 1;
        *(actor + 0x57) = val;
    }
}

INCLUDE_ASM("asm/actor/actor_script/rom_e220_a_c.s");


void ActorAttrOp_scaleX(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;

    if (op == 0) {
        *(unsigned int *)(actor + 0x18) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x18) += param;
    } else {
        v = 0;
        if (*(unsigned int *)(actor + 0x18) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_scaleY(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[7] = param;
    } else if (op == 1) {
        actor[7] += param;
    } else {
        unsigned char val;
        val = 0;
        if (actor[7] == param)
            val = 1;
        *((unsigned char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_motionX(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)(actor + 0x24) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x24) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x24) == param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_motionY(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char eq;
    if (op == 0) {
        actor[10] = param;
    } else if (op == 1) {
        actor[10] += param;
    } else {
        eq = (actor[10] == param);
        *((unsigned char *)actor + 0x57) = eq;
    }
}
void ActorAttrOp_motionZ(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[11] = param;
    } else if (op == 1) {
        actor[11] += param;
    } else {
        unsigned char b = (actor[11] == param);
        *((unsigned char *)actor + 0x57) = b;
    }
}
void ActorAttrOp_speed(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x30) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x30) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)(actor + 0x30) == param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_accel(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;

    if (op == 0) {
        *(unsigned int *)(actor + 0x34) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x34) += param;
    } else {
        v = 0;
        if (*(unsigned int *)(actor + 0x34) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_prevPosX(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char r1;
    if (op == 0) {
        actor[14] = param;
    } else if (op == 1) {
        actor[14] += param;
    } else {
        r1 = (actor[14] == param);
        *((unsigned char *)actor + 0x57) = r1;
    }
}
void ActorAttrOp_prevPosY(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned int v;
    if (op == 0) {
        *(unsigned int *)(actor + 0x3c) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x3c) = *(unsigned int *)(actor + 0x3c) + param;
    } else {
        v = (*(unsigned int *)(actor + 0x3c) == param);
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_prevPosZ(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)(actor + 0x40) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x40) += param;
    } else {
        val = 0;
        if (*(unsigned int *)(actor + 0x40) == param)
            val = 1;
        actor[0x57] = val;
    }
}
void ActorAttrOp_bounce(unsigned int *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x44) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x44) += param;
    } else {
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x44) == param)
            val = 1;
        *(unsigned char *)((char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_gravity(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x48) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x48) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x48) == param)
            val = 1;
        *(unsigned char *)((char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_floorPos(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x14) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x14) += param;
    } else {
        unsigned char val;
        val = 0;
        if (*(unsigned int *)((char *)actor + 0x14) == param)
            val = 1;
        *((unsigned char *)actor + 0x57) = val;
    }
}
void ActorAttrOp_unk4C(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x4c) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x4c) += param;
    } else {
        unsigned char val = 0;
        if (*(unsigned int *)(actor + 0x4c) == param)
            val = 1;
        *(actor + 0x57) = val;
    }
}
void ActorAttrOp_sprite(unsigned char *actor, unsigned int op, unsigned int param)
{
    int flag;
    if (op == 0) {
        *(unsigned int *)(actor + 0x50) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x50) += param << 2;
    } else {
        flag = 0;
        if (*(unsigned int *)(actor + 0x50) == param)
            flag = 1;
        *(unsigned char *)(actor + 0x57) = flag;
    }
}
void ActorAttrOp_unk54(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char result;
    if (op == 0) {
        *(unsigned char *)(actor + 0x54) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x54) += param;
    } else {
        result = 0;
        if (*(unsigned char *)(actor + 0x54) == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_unk55(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char tmp;

    if (op == 0) {
        actor[0x55] = param;
    } else if (op == 1) {
        actor[0x55] += param;
    } else {
        tmp = 0;
        if (actor[0x55] == (unsigned char)param)
            tmp = 1;
        actor[0x57] = tmp;
    }
}
void ActorAttrOp_unk56(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned char *)(actor + 0x56) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x56) += param;
    } else {
        unsigned char val = *(unsigned char *)(actor + 0x56);
        unsigned char result = 0;
        if (val == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_scriptVar(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned char *)(actor + 0x57) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x57) += param;
    } else {
        *(unsigned char *)(actor + 0x57) =
            (*(unsigned char *)(actor + 0x57) == (unsigned char)param);
    }
}
void ActorAttrOp_unk58(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        *(unsigned char *)(actor + 0x58) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x58) += param;
    } else {
        val = 0;
        if (*(unsigned char *)(actor + 0x58) == (unsigned char)param)
            val = 1;
        *(unsigned char *)(actor + 0x57) = val;
    }
}
void ActorAttrOp_unk59(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char result;
    if (op == 0) {
        *(unsigned char *)(actor + 0x59) = param;
    } else if (op == 1) {
        *(unsigned char *)(actor + 0x59) += param;
    } else {
        result = 0;
        if (*(unsigned char *)(actor + 0x59) == (unsigned char)param)
            result = 1;
        *(unsigned char *)(actor + 0x57) = result;
    }
}
void ActorAttrOp_unk5A(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;
    unsigned char result;

    if (op == 0) {
        actor[0x5a] = param;
    } else if (op == 1) {
        actor[0x5a] += param;
    } else {
        val = actor[0x5a];
        result = 0;
        if (val == (unsigned char)param)
            result = 1;
        actor[0x57] = result;
    }
}
void ActorAttrOp_unk5B(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char r1;

    if (op == 0) {
        actor[0x5b] = param;
    } else if (op == 1) {
        actor[0x5b] += param;
    } else {
        r1 = 0;
        if (actor[0x5b] == (unsigned char)param)
            r1 = 1;
        actor[0x57] = r1;
    }
}
void ActorAttrOp_unk5D(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[0x5d] = param;
    } else if (op == 1) {
        actor[0x5d] += param;
    } else {
        unsigned char r1;
        r1 = 0;
        if (actor[0x5d] == (unsigned char)param)
            r1 = 1;
        actor[0x57] = r1;
    }
}

INCLUDE_ASM("asm/actor/actor_script/rom_e220_c_a.s");

void ActorAttrOp_extra(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)(actor + 0x68) = param;
    } else if (op == 1) {
        *(unsigned int *)(actor + 0x68) += param;
    } else {
        unsigned int v;
        v = 0;
        if (*(unsigned int *)(actor + 0x68) == param)
            v = 1;
        *(unsigned char *)(actor + 0x57) = v;
    }
}
void ActorAttrOp_updateFn(unsigned int *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        *(unsigned int *)((char *)actor + 0x6c) = param;
    } else if (op == 1) {
        *(unsigned int *)((char *)actor + 0x6c) += param;
    } else {
        unsigned int v;
        v = 0;
        if (*(unsigned int *)((char *)actor + 0x6c) == param)
            v = 1;
        *(unsigned char *)((char *)actor + 0x57) = v;
    }
}
void ActorAttrOp_unk62(unsigned char *actor, unsigned int op, unsigned int param)
{
    unsigned char val;

    if (op == 0) {
        actor[0x62] = param;
    } else if (op == 1) {
        actor[0x62] += param;
    } else {
        val = (actor[0x62] == (unsigned char)param);
        actor[0x57] = val;
    }
}
void ActorAttrOp_unk63(unsigned char *actor, unsigned int op, unsigned int param)
{
    if (op == 0) {
        actor[0x63] = param;
    } else if (op == 1) {
        actor[0x63] += param;
    } else {
        unsigned int flag;
        flag = 0;
        if (actor[0x63] == (unsigned char)param)
            flag = 1;
        actor[0x57] = flag;
    }
}

INCLUDE_ASM("asm/actor/actor_script/rom_e220_c_c.s");

void Actor_SetUpdateFunc(unsigned int actor, unsigned int func) {
    if (actor != 0) {
        *(unsigned int *)(actor + 0x6c) = func;
    }
}

INCLUDE_ASM("asm/actor/actor_script/rom_ea54_c.s");
