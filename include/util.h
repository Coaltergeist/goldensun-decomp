// utils.h
#ifndef UTILS_H
#define UTILS_H

#include <gba/gba.h>


/// ...
#if GS1
#define IF_GS1(c) c
#else
#define IF_GS1(c)
#endif

/// ...
#if GS2
#define IF_GS2(c) c
#else
#define IF_GS2(c)
#endif


#if !defined(MATCHING) && defined(__GNUC__)
#define CONST_FN  __attribute__((const))
#define MALLOC_FN __attribute__((malloc))
#else
#define CONST_FN
#define MALLOC_FN
#endif


/// Macro for including a binary file in C code.
#define INCBIN(path) /* implemented in scaninc */


typedef void (*Func)(void);


/// `KEYINPUT` bitfield for keys currently being pressed.
extern u32 gKeyHeld;

/// `KEYINPUT` bitfield for key presses that started on this frame.
extern u32 gKeyPress;

/// `KEYINPUT` bitfield for keys currently being pressed.
/// If a key is held for more than 20 frames, it will periodically repeat here.
extern u32 gKeyRepeat;


/// Generate a random number.
extern u16 Random(void);


// Invoke DMA3 by writing to DMA3SAD, DMA3DAD, and DMA3CNT all at once
static inline void DMAStart(void* dest, const void* src, u16 dmacnt, u16 count) {
	register u32 r0 asm("r0") = (u32) src;
	register u32 r1 asm("r1") = (u32) dest;
	register u32 r2 asm("r2") = dmacnt << 16 + count;
	register u32 r3 asm("r3") = (u32) &DMA3SAD;
	asm volatile (
	    "stmia r3!, {r0-r2}\n"
		"sub r3, #0xC"
	 :: "r"(r3), "r"(r0), "r"(r1), "l"(r2)
	);
}

/// Use DMA3 to copy data from `src` to `dest`.
static inline void DMACopy(void* dest, const void* src, u32 nbytes) {
	DMAStart(dest, src, DMA_ENABLE | DMA_32BIT, nbytes >> 2);
}

/// Use DMA3 to fill `dest` with a repeating 4-byte value.
static inline void DMAFill(void* dest, u32 value, u32 nbytes) {
	DMAStart(dest, &value, DMA_ENABLE | DMA_32BIT | DMA_S_FIX, nbytes >> 2);
}

/// Use DMA3 to fill `dest` with zeroes.
static inline void DMAClear(void* dest, u32 nbytes) {
	DMAFill(dest, 0, nbytes);
}

/// Wait for DMA3 to complete.
static inline void DMAWait(void) {
	while (DMA3CNT_H & DMA_ENABLE);
}


/// Copy data from `src` to `dest`.
extern void memcpy(void* dest, const void* src, u32 nbytes);

/// Fill `dest` with a repeating 4-byte value.
extern void memset(void* dest, u32 nbytes, u32 value);

/// Fill `dest` with zeroes.
extern void memclear(void* dest, u32 nbytes);


/// Allocate dynamic memory. Allocated memory must be freed with `free()`.
extern void* alloc_ewram(u32 length) MALLOC_FN;
extern void* alloc_iwram(u32 length) MALLOC_FN;

/// Free previously allocated dynamic memory.
/// GS's "heap" is not an actual heap and is really just a stack-based bump allocator,
/// so allocated memory must be freed in the reverse order it was allocated in.
extern void free(void* mem);

/// Allocate dynamic memory and store the pointer at `index` in `gPtrs`.
/// (Use the `GPTR()` macro to obtain the index of a global pointer.)
extern void* galloc_ewram(int index, u32 length) MALLOC_FN;
extern void* galloc_iwram(int index, u32 length) MALLOC_FN;

/// Free the dynamic memory at `index` in `gPtrs` and clear the pointer.
extern void gfree(int index);

/// Tear down the entire heap and free all dynamic memory.
extern void ClearHeap(void);

/// Fill the entire heap with a repeating 4-byte value.
extern void FillHeap(u32 value);


/// Wait a given number of frames before returning.
/// During this time, vblank and all active tasks will execute once per frame.
extern void WaitFrames(int nframes);


// Task types, specified in the upper 8 bits of a task's priority value.
#if GS1
#define TASK_VBLANK  0x480 /// Called from vblank handler
#define TASK_WAIT    0xC80 /// Called from `WaitFrames`
#else // GS2
#define TASK_WAIT    0x480 /// Called from `WaitFrames`
#define TASK_VBLANK  0xC80 /// Called from vblank handler
#endif

/// Register a task callback to execute every frame. 
/// There are two types of task callbacks, specified by the upper 8 bits of `priority`:
///   - `TASK_VBLANK` runs every frame during vblank.
///   - `TASK_WAIT` runs every frame only during `WaitFrames`.
extern void StartTask(Func task, u16 priority);

/// Unregister a previously-registered task callback.
extern void StopTask(Func task);


/// ...
#define MAX_DMA_TASKS  32

typedef struct DMATask {
	const void* src; /// DMA3SAD
	void* dest;      /// DMA3DAD
	u32   cnt;       /// DMA3CNT
} DMATask;

/// Number of queued DMA tasks
extern u16 gDMATaskCount;
/// Queued DMA tasks
extern DMATask gDMATasks[MAX_DMA_TASKS];

/// Queue a DMA task to copy data from `src` to `dest`.
static inline void DMACopyTask(const void* src, void* dest, u32 nbytes) {
	u16 savedIME = IME;
	u32 i;
	IME = INTR_TIMER0 | INTR_DMA1;
	i = gDMATaskCount;
	if (i < MAX_DMA_TASKS) {
		gDMATaskCount += 1;
		gDMATasks[i].src  = src;
		gDMATasks[i].dest = dest;
		gDMATasks[i].cnt  = (DMA_ENABLE << 16) + (nbytes >> 2);
	}
	IME = savedIME;
}


/// Set the vector for the given interrupt. 
/// If `NULL` is passed, the interrupt will be ignored instead.
/// @see `gba/constants.h` for a list of all interrupt IDs.
extern void SetIntrVector(int intr, Func vector);


/// Decompress LZ-compressed data.
/// There are four different LZ compression formats.
extern u32  DecompressLZ(const u8* src, void* dest);
extern u32  DecompressLZ1(const u8* src, void* dest);
extern u32  DecompressLZ2(const u8* src, void* dest);
extern void DecompressLZ16(const u8* src, void* dest);


#endif // UTILS_H