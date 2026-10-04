extern int __Func_8091c7c(int a, int b);
extern int __MessageID();
extern int __ShowActorMessage_NoWait();

unsigned int OvlFunc_941_20092ac(void);
unsigned int OvlFunc_941_20092c4(void);
unsigned int OvlFunc_941_20092f0(void);
unsigned int OvlFunc_941_200931c(void);
unsigned int OvlFunc_941_2009320(void);
unsigned int OvlFunc_941_200934c(void);
unsigned int OvlFunc_941_2009368(void);
unsigned int OvlFunc_941_2009394(void);
unsigned int OvlFunc_941_200941c(void);
void OvlFunc_941_2009448(void);
void OvlFunc_941_2009760(void);

void OvlFunc_941_20091b8(void)
{
    int msg;
    int retry;

    msg = 0x2547;
    __MessageID(msg);
    API_ActorMessage(12, 0);
    msg++;
    API_MapActor_Face(1, 0, 0);
    __MessageID(msg);
    __ShowActorMessage_NoWait(1, 0);
    API_MapActor_Face(2, 0, 0);
    API_MapActor_Face(3, 0, 0);
    API_MapActor_Face(13, 0, 0);
    API_MapActor_Face(12, 0, 0);

    while (1) {
        if (!(unsigned char)OvlFunc_941_20092ac()) {
            if ((unsigned char)OvlFunc_941_20092c4()) {
                if ((unsigned char)OvlFunc_941_20092f0()) {
                    break;
                }
                goto retry_prompt;
            }
            if (!(unsigned char)OvlFunc_941_2009368()) {
                msg = 0x254b;
                __MessageID(msg);
                msg++;
                API_ActorMessage(2, 0);
                __MessageID(msg);
                __ShowActorMessage_NoWait(1, 0);
                continue;
            }
        }

        if (!(unsigned char)OvlFunc_941_2009320()) {
            OvlFunc_941_2009760();
            return;
        }

        retry = 0;
        if (!(unsigned char)OvlFunc_941_200941c()) {
retry_prompt:
            retry = 1;
        }

        do {
            if (retry) {
                OvlFunc_941_200934c();
                if (__Func_8091c7c(0, 0) == 0) {
                    OvlFunc_941_2009760();
                    return;
                }
            }
            if ((unsigned char)OvlFunc_941_2009394()) {
                break;
            }
        } while (retry);
        break;
    }

    OvlFunc_941_200931c();
    OvlFunc_941_2009448();
}
