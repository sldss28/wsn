/* Linker script to configure memory regions. */

SEARCH_DIR(.)
GROUP(-lgcc -lc -lnosys)

MEMORY
{
  FLASH (rx) : ORIGIN = 0x1f000, LENGTH = 0x61000
  RAM (rwx) :  ORIGIN = 0x20002800, LENGTH = 0xD800
}

INCLUDE "nrf5x_common.ld"

/* These symbols are used by the stack check library. */
_stack = end;
_stack_origin = ORIGIN(RAM) + LENGTH(RAM);
