#include <stdint.h>
#include <SPI.h>
#include "dual_memory.h"

uint8_t hbtOutput = 0;
uint8_t result = 0;
uint8_t ramData[8];
uint8_t i=0;

void setup()
{
  Serial.begin(9600);
  // put your setup code here, to run once:
  pinMode(RAM_CS, OUTPUT);
  pinMode(FLASH_CS, OUTPUT);
  
  digitalWrite(RAM_CS, HIGH); 
  digitalWrite(FLASH_CS, HIGH); 
  
  SPI.begin();

  pinMode(RED_LED, OUTPUT);
  digitalWrite(RED_LED, hbtOutput);

  delay(3000);
  
  /*
  //Write to RAM
  digitalWrite(RAM_CS, LOW);  
  result = SPI.transfer(RAM_WRITE);

  //3 byte addr
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  
  for(i=0; i<8; i++){
    ramData[i] = SPI.transfer(i);
  } 
  digitalWrite(RAM_CS, HIGH);
  */
  
  /*
  //Read from RAM
  digitalWrite(RAM_CS, LOW);  
  result = SPI.transfer(RAM_READ);

  //3 byte addr
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  
  for(i=0; i<8; i++){
    ramData[i] = SPI.transfer(0xFF);
  } 
  digitalWrite(RAM_CS, HIGH);

  for(i=0; i<8; i++){
    Serial.write(ramData[i]);
  }
  */

/*
/////////// Write flash memory, assumes first sector has been cleared (i.e. reads return 0xFF)
  //enable write
  digitalWrite(FLASH_CS, LOW);  
  SPI.transfer(FLASH_WRITE_EN);
  digitalWrite(FLASH_CS, HIGH); 
  
  
  //read status
  digitalWrite(FLASH_CS, LOW);  
  SPI.transfer(FLASH_READ_STATUS_1);
  result = SPI.transfer(0xFF);
  digitalWrite(FLASH_CS, HIGH);  
  

  digitalWrite(FLASH_CS, LOW);  
  result = SPI.transfer(FLASH_PAGE_PGRM);

  //3 byte addr
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0); 
  
  for(i=0; i<8; i++){
    SPI.transfer(i);
  }
  digitalWrite(FLASH_CS, HIGH); 
*/


/*
////////// Read flash memory
  digitalWrite(FLASH_CS, LOW);  
  SPI.transfer(FLASH_READ_STATUS_1);
  result = SPI.transfer(0xFF);
  digitalWrite(FLASH_CS, HIGH);  
  

  digitalWrite(FLASH_CS, LOW);  
  result = SPI.transfer(FLASH_READ);
  
  //3 byte addr
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);
  result = SPI.transfer(0x0);  
  
  for(i=0; i<8; i++){
    ramData[i] = SPI.transfer(0xff);
  }
  digitalWrite(FLASH_CS, HIGH);  
*/


}

void loop()
{
  delay(1000);
  digitalWrite(RED_LED, hbtOutput^=0x1);  
}



