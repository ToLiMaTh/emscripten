#include <stdio.h>
#include <stdlib.h>
#include <time.h>


//void *__stack_chk_guard = (void *)0xdeadbeef;
void *__stack_chk_guard = (void *)0x000d0aff;


static void __attribute__((constructor(0))) __guard_setup (void)
{
  unsigned char *p;
  p = (unsigned char *) &__stack_chk_guard;
  srand(time(NULL));
  p[sizeof(__stack_chk_guard)-1] = rand()%256;
  p[sizeof(__stack_chk_guard)-2] = rand()%256;
  p[sizeof(__stack_chk_guard)-3] = rand()%256;
  p[0] = 0;
}

void __stack_chk_fail(void)
{
    fprintf(stderr, "Stack smashing detected.\n");
    exit(1);
}

