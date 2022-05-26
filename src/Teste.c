/*
 * Main.c
 *
 *  Created on: 24 de mai. de 2022
 *      Author: Heverton Reis
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "bmpimage.h"
#include "bmpfile.h"
#include "bmpfunc.h"
#define THRESHOLD 140

int main(int argc, char **argv)
{
	// Check arguments
	if (argc < 4)
	{
		printf("Uso: image <input> <function> <output>\n");
	    return EXIT_FAILURE;
	}

	BMP_Image *img = BMP_open(argv[1]); // Abre o arquivo BMP

	if (img == NULL)
	{
		return EXIT_FAILURE;
	}

	BMP_invert(img);

	if (BMP_save(img, argv[2]) == 0)
	{
		printf("Arquivo de Saida Invalido!\n");
	    BMP_destroy(img);
	    return EXIT_FAILURE;
	}

	BMP_destroy(img);

	return EXIT_SUCCESS;
}
