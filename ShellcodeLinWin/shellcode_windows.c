#include<stdio.h>
#include<string.h>
//#include <sys/mman.h>
#include<memoryapi.h>

int main(){

unsigned char code[] = \
"\x58\xff\xd0";

  printf("Shellcode length: %d\n", strlen(code));
 // int r =  mprotect(,  4096, PROT_READ | PROT_WRITE|PROT_EXEC);
  VirtualProtect((void *)((int)code & ~4095),4096,PAGE_EXECUTE_READWRITE,NULL);
  
  int (*ret)() = (int(*)())code;
  return ret();
}