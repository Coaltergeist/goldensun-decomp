extern unsigned char gState[];
extern int GetPartySize(void) __asm__("_GetPartySize");
extern int ModifyPP(unsigned int unit_id, int amount) __asm__("_ModifyPP");

void Func_808c2dc(int amount)
{
    register int amount_arg __asm__("r7") = amount;
    register int party_size __asm__("r0") = GetPartySize();

    if (party_size > 0) {
        register unsigned char *state __asm__("r3") = gState;
        register int offset __asm__("r2") = 0xfc;
        register unsigned char *unit_id __asm__("r6");
        register int remaining __asm__("r5");

        __asm__ volatile ("" : "+r" (state), "+r" (offset));
        offset <<= 1;
        unit_id = state + offset;
        remaining = party_size;
        __asm__ volatile ("" : "+r" (unit_id), "+r" (remaining));
        do {
            register unsigned int id __asm__("r0") = *unit_id;
            register int delta __asm__("r1") = amount_arg;

            remaining--;
            unit_id++;
            __asm__ volatile ("" : "+r" (id), "+r" (delta),
                                  "+r" (remaining), "+r" (unit_id));
            ModifyPP(id, delta);
        } while (remaining != 0);
    }
}
