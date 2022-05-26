/*
 * bmpfile.c
 *
 *  Created on: 25 de mai. de 2022
 *      Author: Heverton Reis
 */
#include <stdio.h>
#include <stdlib.h>
#include "bmpfile.h"
// Valores corretos para o cabecalho
#define MAGIC_VALUE    0X4D42
#define BITS_PER_PIXEL 24
#define NUM_PLANE      1
#define COMPRESSION    0
#define BITS_PER_BYTE  8


static int checkHeader(BMP_Header * hdr) // Verifica se o arquivo eh um BMP
{										 // Retorna 0 se o cabecalho nao eh valido
										 // Retorna 1 se o cabecalho eh valido
  if ((hdr -> type) != MAGIC_VALUE)
  {
	  return 0;
  }
  if ((hdr -> bits) != BITS_PER_PIXEL)
  {
      return 0;
  }
  if ((hdr -> planes) != NUM_PLANE)
  {
      return 0;
  }
  if ((hdr -> compression) != COMPRESSION)
  {
      return 0;
  }

  return 1;
}

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

BMP_Image *BMP_open(const char *filename) // Abre arquivo BMP
{

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

  if (checkHeader(& (img -> header)) == 0)
  {
      return cleanUp(fptr, img);
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

