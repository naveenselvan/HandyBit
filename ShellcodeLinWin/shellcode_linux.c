#include<stdio.h>
#include<string.h>
#include <sys/mman.h>

int main(){

unsigned char code[] = \
"\x58\xff\xd0";

  printf("Shellcode length: %d\n", strlen(code));
  int r =  mprotect((void *)((int)code & ~4095),  4096, PROT_READ | PROT_WRITE|PROT_EXEC);
  printf("mprotect: %d\n",r);
  int (*ret)() = (int(*)())code;
  return ret();
}
