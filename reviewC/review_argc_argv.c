#include <stdio.h>

int main(int argc, char* argv[]) {
	int a[] = {1, 2, 3};
	for (int i = 0; i < ((sizeof(a))/(sizeof(int))); i++) {
		printf("%d\n", *(a + i));
		printf("%d\n", a[i]);
	}
	printf("argc: %d\n", argc);
	
	int i = 0;
	while (i < argc) {
		fprintf(stdout, "%dth arg: %s\n", (i + 1), argv[i]);
		i++;
	}
}