/*
 * Exact size match under `--gaia` (`-fstrict-aliasing`): 0x230 == 0x230 (282/282 asm lines),
 * matching +0x00..+0xc9 (101 straight insns) and +0x160..+0x230 (104 straight insns) byte-for-byte.
 * Remaining mid-function compiler/RTL diffs:
 * - +0xca, +0xf2, +0x122: reload1.c `last_spill_reg` / cse.c `canon_hash` scratch register
 *   choices (`r1`/`r2`/`r3`) on constant/address reloads.
 * - +0x146..+0x14a: 23.sched2 ties priority (39) between `adds r2, r5, #0` and
 *   `ldr r3, =iwram_3001388` (`arm_adjust_cost` sets load->call cost to 1) and breaks the tie
 *   on `depend_count` (4 vs 3 due to anti-dep from `mov r5, r8`).
 * - +0x152..+0x15e: in BB 21, `movs r2, #0x84` (`INSN_PRIORITY = 6` via `list->count`) beats
 *   reload input `mov r5, r8` (`INSN_PRIORITY = 2` via `adds r5, #8`) in `haifa-sched.c`.
 */
extern unsigned short iwram_3001f64;
extern int OvlFunc_971_200853c(unsigned short *arg0);
extern void *CS971S_Alloc(unsigned int) __asm__("__alloc_ewram");
extern void CS971S_Free(void *) __asm__("__free");
extern void *CS971S_Unit(int) __asm__("__GetUnit");
extern void *CS971S_Party(int) __asm__("__Func_8077330");
extern int CS971S_Send(const void *, unsigned int) __asm__("__Func_80063bc");
extern unsigned int CS971S_Busy(void) __asm__("__Func_80064f4");
extern void CS971S_Wait(int) __asm__("__WaitFrames");
extern void *CS971S_Copy(void *, const void *, unsigned int) __asm__("iwram_3001388");

struct CS971S_Command {
    unsigned char element;
    unsigned char djinni;
    unsigned char unit;
    unsigned char turns;
};
struct CS971S_CommandList {
    struct CS971S_Command commands[64];
    int count;
};
struct CS971S_PartyData {
    unsigned int header[2];
    struct CS971S_CommandList list;
};

int OvlFunc_971_2008580(void)
{
    unsigned short party[8];
    unsigned char remap[8];
    unsigned int unitSize = 0x154;
    unsigned char *buffer = CS971S_Alloc(unitSize);
    int result = 0;
    int timeout = 600;
    int count = OvlFunc_971_200853c(party);
    int slot, failures, i, sent;

    for (i = 7; i >= 0; --i)
        remap[i] = 0;
    for (slot = 0; slot < count; ++slot) {
        {
            void *unit = CS971S_Unit(party[slot]);
            void *(*copy)(void *, const void *, unsigned int) = CS971S_Copy;
            copy(buffer, unit, unitSize);
        }
        buffer[0x12a] = 2;
        remap[party[slot]] = slot - 0x80;
        sent = CS971S_Send(buffer, unitSize);
        failures = 0;
        if (sent != -1)
            goto wait_unit;
        result = sent;
        goto done;
        do {
            CS971S_Wait(1);
            if (--timeout < 0 || (iwram_3001f64 & 3) != 3) {
                if (++failures > 24)
                    goto error;
            }
        wait_unit:
            ;
        } while (CS971S_Busy());
        CS971S_Wait(2);
    }
    goto check_empty;
wait_empty_loop:
    CS971S_Wait(1);
    if (--timeout < 0 || (iwram_3001f64 & 3) != 3) {
        if (++failures > 24) {
            result = -1;
            goto done;
        }
    }
wait_empty:
    if (CS971S_Busy())
        goto wait_empty_loop;
    CS971S_Wait(2);
    ++slot;
check_empty:
    if (slot <= 2) {
        failures = 0;
        buffer[0x12a] = 0;
        sent = CS971S_Send(buffer, unitSize);
        if (sent != -1)
            goto wait_empty;
        result = sent;
        goto done;
    }
    CS971S_Free(buffer);
    unitSize = 0x140;
    buffer = CS971S_Alloc(unitSize);
    {
        void *partyData = CS971S_Party(0);
        void *(*copy)(void *, const void *, unsigned int) = CS971S_Copy;
        copy(buffer, partyData, unitSize);
    }
    {
        struct CS971S_CommandList *list = &((struct CS971S_PartyData *)buffer)->list;
        int commandFailures = 0;
        int commandTimeout = 600;
        for (i = 0; i < list->count; ++i) {
            list->commands[i].unit = remap[list->commands[i].unit];
            if (list->commands[i].unit == 0) {
                int j;
                for (j = i; j < list->count - 1; ++j)
                    list->commands[j] = list->commands[j + 1];
                --list->count;
                --i;
            }
        }
        sent = CS971S_Send(buffer, unitSize);
        if (sent == -1) {
            result = sent;
            goto done;
        }
        while (CS971S_Busy()) {
            CS971S_Wait(1);
            if (--commandTimeout < 0 || (iwram_3001f64 & 3) != 3) {
                if (++commandFailures > 24) {
                error:
                    result = -1;
                    goto done;
                }
            }
        }
        CS971S_Wait(1);
        CS971S_Wait(2);
    }
done:
    CS971S_Free(buffer);
    return result;
}
