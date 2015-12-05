#include <stdio.h>

int main(void)
{
	int i;
	int sum=0;
	for(i=0;i<3;i++)
	{
		sum+=i;
		printf("Helloworld,total is %d\n",sum);
	}
	return 0;
}
