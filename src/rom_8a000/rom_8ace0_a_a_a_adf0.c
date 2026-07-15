typedef short s16;

typedef struct {
    s16 map;
    s16 area;
    s16 flag;
    s16 result;
} EncounterRule808adf0;

extern EncounterRule808adf0 encounter_rules[] asm(".L9d7a8");
extern int _Func_80122c8(int value, int *map);
extern int _GetFlag(int flag);
extern void Func_808b2b0(int value);

int Func_808adf0(int value)
{
    int map;
    EncounterRule808adf0 *rule = encounter_rules;
    int area = _Func_80122c8(value, &map);
    int result = 0;

    while (rule->map != -1) {
        if (rule->map == map &&
            (rule->area == -1 || rule->area == area) &&
            (rule->flag == -1 || _GetFlag(rule->flag) == 0)) {
            result = rule->result;
            break;
        }
        ++rule;
    }
    Func_808b2b0(area);
    return result;
}
