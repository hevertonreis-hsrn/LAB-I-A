/*
 * bmpimage.h
 *
 *  Created on: 25 de mai. de 2022
 *      Author: Heverton Reis
 */

#ifndef BMPIMAGE_H_
#define BMPIMAGE_H_

#include "bmpheader.h"
typedef struct
{
  BMP_Header header;
  unsigned int data_size;
  unsigned int width;
  unsigned int height;
  unsigned int bytes_per_pixel;
  unsigned char * data;
} BMP_Image;

#endif /* BMPIMAGE_H_ */
