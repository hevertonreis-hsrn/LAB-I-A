#define IMG_A (int *) 0x00000
#define IMG_B (int *) 0x200000
#define IMG_C (int *) 0x100000

#define MEDIDOR_LEITURA (int *) 0x321008
#define MEDIDOR_ESCRITA (int *) 0x32100c

#define LEDS (int *) 0x00000

#define DATA_SIZE 57600

int * imgA = IMG_A;
int * imgB = IMG_B;
int * imgC = IMG_C;

int main()
{


  int diff[DATA_SIZE], square[DATA_SIZE];
  *MEDIDOR_ESCRITA = 0;
  *LEDS = 0;
  *MEDIDOR_ESCRITA = 1;
  for (int i = 0; i < DATA_SIZE; i++)
  {
    diff[i] = imgB[i] - imgA[i];
    square[i] = diff[i]*diff[i];
    imgC[i] = square[i];
  }
  *MEDIDOR_ESCRITA = 2;
  *LEDS = *MEDIDOR_LEITURA;

  //Parte hardware
  //...

  return 0;
}
