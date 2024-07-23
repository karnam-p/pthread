 #include"../inc/main.h"



static void* thread_fn_clbk(void *arg)
{
	char *input = (char *)arg;
	
	while(1)
	{
		printf("input string = %s\n",input);
		sleep(1);
	}

}


void thread1_create()
{
	//Create a new thread handle
	pthread_t pthread1;

	//Thread Identifier. It should be static or heap. should not be local, i.e. stack
	static char *thread_input1 = "I am thread no 1";
	
	//Create a new thread
	int ret = pthread_create(&pthread1,NULL,thread_fn_clbk, (void*)thread_input1);

	if(ret != 0)
	{
		printf("thread1_create: Error! Thread creation returned: %d\n",ret);
		exit(1);
	}
}


int main(int argc, char **argv)
{
	thread1_create();
	printf("Hello World!\n");
	pause();
	return 0;
}
