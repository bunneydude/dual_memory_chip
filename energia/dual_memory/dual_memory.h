#ifndef DUAL_MEMORY_H
#define DUAL_MEMORY_H

//Change these based on which pin you connect
#define RAM_CS P2_0
#define FLASH_CS P2_1



//SPI commands
#define RAM_READ 0x3
#define RAM_WRITE 0x2

#define FLASH_READ_STATUS_1 0x5
#define FLASH_READ_STATUS_2 0x35
#define FLASH_WRITE_STATUS 0x1

#define FLASH_READ 0x3
#define FLASH_PAGE_PGRM 0x2
#define FLASH_WRITE_EN 0x6

#endif
