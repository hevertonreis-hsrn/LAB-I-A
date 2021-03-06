#define IMG_A (int *) 0X0000
#define IMG_B (int *) 0X40000
#define IMG_C (int *) 0X30000

#define MEDIDOR_LEITURA (int *) 0x5100c
#define MEDIDOR_ESCRITA (int *) 0x51008

#define DATA_SIZE 57600

int * imgA = IMG_A;
int * imgB = IMG_B;
int * imgC = IMG_C;

int main()
{

	*MEDIDOR_ESCRITA = 0;
	*MEDIDOR_ESCRITA = 1;
	int diff[DATA_SIZE], square[DATA_SIZE];

	for (int i = 0; i < DATA_SIZE; i++)
	{
		diff[i] = imgB[i] - imgA[i];
		square[i] = diff[i]*diff[i];
		imgC[i] = square[i];
	}
	*MEDIDOR_ESCRITA = 2;
  
	return 0;
}