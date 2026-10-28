extern void *CS971S_Alloc(unsigned int) __asm__("__alloc_ewram");
extern void CS971S_Free(void *) __asm__("__free");
extern void *CS971S_Unit(int) __asm__("__GetUnit");
extern void *CS971S_Party(int) __asm__("__Func_8077330");
extern int CS971S_Send(unsigned int, unsigned int) __asm__("__Func_80063bc");
extern unsigned int CS971S_Busy(void) __asm__("__Func_80064f4");
extern void CS971S_Wait(int) __asm__("__WaitFrames");
extern void CS971S_Copy(void *, const void *, unsigned int) __asm__("iwram_3001388") __attribute__((long_call));
union CS971S_Command {
    unsigned int word;
    struct { unsigned char bytes[2], unit, flags; } fields;
};
struct CS971S_PartyData {
    unsigned int header[2];
    union CS971S_Command commands[64];
    int count;
};
int OvlFunc_971_2008580(void)
{
    unsigned short party[8];
    unsigned char remap[8];
    unsigned int unitSize = 0x154;
    unsigned char *buffer = CS971S_Alloc(unitSize);
    int result = 0;
    int count = OvlFunc_971_200853c(party);
    int timeout = 600;
    int slot, failures, i, sent;
    for (i = 7; i >= 0; --i) remap[i] = 0;
    for (slot = 0; slot < count; ++slot) {
        CS971S_Copy(buffer, CS971S_Unit(party[slot]), 0x154);
        buffer[0x12a] = 2;
        remap[party[slot]] = slot - 0x80;
        sent = CS971S_Send((unsigned int)buffer, 0x154);
        failures = 0;
        if (sent == -1) {
            result = sent;
            goto done;
        }
        while (CS971S_Busy()) {
            --timeout;
            CS971S_Wait(1);
            if (timeout < 0 || (iwram_3001f64 & 3) != 3) {
                if (++failures > 24) goto error;
            }
        }
        CS971S_Wait(2);
    }
    for (; slot <= 2; ++slot) {
        failures = 0;
        buffer[0x12a] = 0;
        sent = CS971S_Send((unsigned int)buffer, 0x154);
        failures = 0;
        if (sent == -1) {
            result = sent;
            goto done;
        }
        while (CS971S_Busy()) {
            --timeout;
            CS971S_Wait(1);
            if (timeout < 0 || (iwram_3001f64 & 3) != 3) {
                if (++failures > 24) {
                    result = -1;
                    goto done;
                }
            }
        }
        CS971S_Wait(2);
    }
    CS971S_Free(buffer);
    buffer = CS971S_Alloc(0x140);
    CS971S_Copy(buffer, CS971S_Party(0), 0x140);
    {
        struct CS971S_PartyData *data = (struct CS971S_PartyData *)buffer;
        union CS971S_Command *commands = data->commands;
        int commandFailures = 0;
        int commandTimeout = 600;
        for (i = 0; i < data->count; ++i) {
            commands[i].fields.unit = remap[commands[i].fields.unit];
            if (commands[i].fields.unit == 0) {
                if (i < data->count - 1) {
                    int remaining = data->count - 1 - i;
                    union CS971S_Command *dest = &commands[i];
                    do {
                        dest->word = dest[1].word;
                        ++dest;
                    } while (--remaining != 0);
                }
                --data->count;
                --i;
            }
        }
        sent = CS971S_Send((unsigned int)buffer, 0x140);
        if (sent == -1) {
            result = sent;
            goto done;
        }
        while (CS971S_Busy()) {
            --commandTimeout;
            CS971S_Wait(1);
            if (commandTimeout < 0 || (iwram_3001f64 & 3) != 3) {
                if (++commandFailures > 24) goto error;
            }
        }
        CS971S_Wait(1);
        CS971S_Wait(2);
    }
    goto done;
error:
    result = -1;
done:
    CS971S_Free(buffer);
    return result;
}
