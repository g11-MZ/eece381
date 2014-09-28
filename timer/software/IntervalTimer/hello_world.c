/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>

int main()
{
  printf("Hello from Nios II!\n");

  return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include "C:\Users\mz\Desktop\eece381\timer\software\IntervalTimer_bsp\HAL\inc\sys\alt_timestamp.h"

/*int main(void){
	int start_time = (int)alt_timestamp();

	int i =0;
	int j=0;
	int a=0;
	int b=0;
	int k=0;
	int m1[100][100];
	int m2[100][100];
	int m3[100][100];
	int sum = 0;

for( a=0; a<100; a++){
	for(b=0;b<100;b++){
		m1[i][j]=rand();
		m2[i][j]=rand();
	}
}

for ( i=0; i<100; i++){
	for(j=0;j<100;j++){
		sum = 0;
		for(k=0;k<100;k++){
			sum = sum + m1[i][k] * m2[k][j];
		}
		m3[i][j] = sum;
	}

}
int end_time = (int)alt_timestamp();
printf("time taken: %d clock ticks\n", end_time-start_time);
printf("            %f seconds\n", (float)(end_time-start_time)/(float)alt_timestamp_freq());

return 0;


}*/
