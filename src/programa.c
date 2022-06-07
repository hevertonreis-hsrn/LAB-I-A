#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#define MAGIC_VALUE    0X4D42
#define BITS_PER_PIXEL 24
#define NUM_PLANE      1
#define COMPRESSION    0
#define BITS_PER_BYTE  8

#pragma pack(1)

typedef struct
{
    uint16_t type;              // Identifica o tipo de arquivo
    uint32_t size;              // Tamanho do arquivo em bytes
    uint16_t reserved1;         // Bytes não usados
    uint16_t reserved2;         // Bytes não usados
    uint32_t offset;            //
    uint32_t header_size;       // Tamanho do cabecalho em bytes
    uint32_t width;             // Largura da imagem
    uint32_t height;            // Altura da imagem
    uint16_t planes;            // numero de planos de cor
    uint16_t bits;              // Bits por pixel
    uint32_t compression;       // Tipo de compressao
    uint32_t imagesize;         // Tamanho da imagem em bytes
    uint32_t xresolution;       // Resolucao x em Pixels por metro
    uint32_t yresolution;       // Resolucao y em Pixels por metro
    uint32_t ncolours;          // Numero de cores
    uint32_t importantcolours;  // Cores importantes
} BMP_Header;

typedef struct
{
    BMP_Header header;
    unsigned int data_size;
    unsigned int width;
    unsigned int height;
    unsigned int bytes_per_pixel;
    unsigned char * data;
} BMP_Image;


BMP_Image * cleanUp(FILE * fptr, BMP_Image * img) // Fecha a stream de um arquivo aberto e libera a memoria
{
    if (fptr != NULL)
    {
        fclose (fptr);
    }

    if (img != NULL)
    {
        if (img -> data != NULL)
        {
            free (img -> data);
        }
        free (img);
    }

    return NULL;
}

BMP_Image *BMP_open(const char *filename) {

    printf("Abrindo imagem...\n");

    FILE * fptr    = NULL; // Instancia estrutura de arquivos
    BMP_Image *img = NULL; // Instancia estrutura da imagem BMP
    fptr = fopen(filename, "rb"); // "rb" nao eh cessario no Linux, usar "r" no lugar

    if (fptr == NULL)
    {
        return cleanUp(fptr, img);
    }

    img = malloc(sizeof(BMP_Image)); // Realiza a alocacao de memoria da imagem

    if (img == NULL)
    {
        return cleanUp(fptr, img);
    }

    if (fread(& (img -> header), sizeof(BMP_Header), 1, fptr) != 1) // Le o cabecalho da imagem
    {
        return cleanUp(fptr, img); // Limpa memoria em caso de erro
    }

    img -> data_size = (img -> header).size - sizeof(BMP_Header);
    img -> width     = (img -> header).width;
    img -> height    = (img -> header).height;
    img -> bytes_per_pixel = (img -> header).bits / BITS_PER_BYTE;
    img -> data = malloc(sizeof(unsigned char) * (img -> data_size));

    if ((img -> data) == NULL) // Verifica se a alocacao de memoria dos dados da imagem foi bem sucedida
    {
        return cleanUp(fptr, img); // Em caso de falha, limpa a memoria
    }

    if (fread(img -> data, sizeof(char), img -> data_size,fptr) != (img -> data_size)) // Verifica se o tamanho dos dados bate com o especificado pelo cabecalho
    {
        return cleanUp(fptr, img);
    }

    char onebyte;

    if (fread(& onebyte, sizeof(char), 1, fptr) != 0) // Verifica se ainda existem dados a serem lidos
    {
        return cleanUp(fptr, img); // Caso existam, limpa a memoria, a leitura falhou
    }

    fclose (fptr); // Se tudo correu bem, fecha a stream e retorna a estrutura da imagem

    return img;
}

int BMP_save(const BMP_Image *img, const char *filename)
{
    printf("Entrando no metodo de salvamento...\n");

    FILE * fptr    = NULL;
    fptr = fopen(filename, "w");

    if (fptr == NULL)
    {
        return 0;
    }

    if (fwrite(& (img -> header), sizeof(BMP_Header), 1,fptr) != 1) // Escreve o cabecalho em primeiro lugar
    {
        fclose (fptr); // Em caso de falha, encerra a stream
        return 0;
    }

    if (fwrite(img -> data, sizeof(char), img -> data_size,fptr) != (img -> data_size)) // Escreve os dados da imagem
    {
        fclose (fptr); // Em caso de falha, encerra a stream
        return 0;
    }

    fclose (fptr); // Se tudo correu bem, fecha a stream
    return 1;
}

void BMP_destroy(BMP_Image *img)
{
    free (img -> data);
    free (img);
}

int main()
{
    printf("Iniciando programa...\n");

    BMP_Image *img1 = BMP_open("fruitA.bmp"); 
    BMP_Image *img2 = BMP_open("fruitB.bmp");

	if (img1 == NULL || img2 == NULL)
	{
        printf("Falha ao abrir imagem!\n");
		return EXIT_FAILURE;
	}
    
    int pxl, diff[img1 -> data_size], square[img1 -> data_size];

    for (pxl = 0; pxl < (img1 -> data_size); pxl ++)
    {
        diff[pxl] = (img2 -> data[pxl]) - (img1 -> data[pxl]);
        square[pxl] = diff[pxl]*diff[pxl];

        img2 -> data[pxl] = square[pxl];
    }

	if (BMP_save(img2,"headerless.bmp") == 0) 
	{
	    printf("Arquivo de Saida Invalido!\n");
	    BMP_destroy(img2);
	    return EXIT_FAILURE;
	}
    
    BMP_destroy(img1);
    BMP_destroy(img2);

    return EXIT_FAILURE;
}
