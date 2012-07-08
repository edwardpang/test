#include <stdio.h>

int main (void)
{
	cudaDeviceProp	prop;

	int count;

	cudaGetDeviceCount (&count);
	for (int i=0; i<count; i++)
	{
		cudaGetDeviceProperties (&prop, i);
		printf ("General Information for device %d\n", i);
		printf ("Name :\t\t\t%s\n", prop.name);
		printf ("CUDA Ver :\t\t%d.%d\n", prop.major, prop.minor);
		printf ("Clock rate :\t\t%d\n", prop.clockRate);

		printf ("Max Threads Per Block :\t%d\n", prop.maxThreadsPerBlock);
		printf ("Max Threads Dim :\t[%d %d %d]\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2]);
		printf ("Max Grid Size :\t\t[%d %d %d]\n", prop.maxGridSize[0], prop.maxGridSize[1], prop.maxGridSize[2]);
	}

	return 0;
}

