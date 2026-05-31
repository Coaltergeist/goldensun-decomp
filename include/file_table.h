#ifndef _FILE_TABLE_H_
#define _FILE_TABLE_H_

// external symbols from the file_table.ld linker script
extern int _FILE_BUILD_DATE;

// friendly names for C
#define FILE_BUILD_DATE ((int)&_FILE_BUILD_DATE)

// external symbols

extern void *gFileTable[];

// global forward declarations

void *GetFile(int index);

#endif // _FILE_TABLE_H_
