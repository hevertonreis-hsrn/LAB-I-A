//Enderecos de Memoria
#define IMG_A (int *) 0x00000
#define IMG_B (int *) 0x40000
#define IMG_C (int *) 0x30000

#define MEDIDOR_LEITURA (int *) 0x51018
#define MEDIDOR_ESCRITA (int *) 0x5101c

#define SAIDA_IMAGEM (int *) 0x51000

#define DATA_SIZE 57600

int * imgA = IMG_A;
int * imgB = IMG_B;
int * imgC = IMG_C;

int main()
{

	//Calculo SSD Software
	int diff[DATA_SIZE], square[DATA_SIZE];
	*MEDIDOR_ESCRITA = 0;
	*MEDIDOR_ESCRITA = 1;
	for (int i = 0; i < DATA_SIZE; i++)
	{
		diff[i] = imgB[i] - imgA[i];
		square[i] = diff[i]*diff[i];
		imgC[i] = square[i];
	}
	*MEDIDOR_ESCRITA = 2;

	//Exportando Imagem
	for (int i = 0; i < DATA_SIZE; i++)
	{
		*SAIDA_IMAGEM = imgC[i];
	}

	//Parte hardware
	//...

	return 0;
}
