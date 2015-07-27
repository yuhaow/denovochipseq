/********************************************************************
 * FILE: wiggle-reader.c
 * AUTHOR: Charles Grant, Bill Noble, Tim Bailey, James Johnson
 * CREATION DATE: 2012-05-09
 * COPYRIGHT: 2012 UW
 *
 * This file contains the public interface for the data structures and
 * functions used to read wiggle files.
 ********************************************************************/

#ifndef WIGGLE_READER_H
#define WIGGLE_READER_H

#include "utils.h"

typedef enum { FIXED_WIGGLE_FMT, VAR_WIGGLE_FMT, BIGWIG_FMT, INVALID_FMT } INPUT_FMT;

#define WIGGLE_DEFAULT_SPAN 1

typedef struct wiggle_reader WIGGLE_READER;

WIGGLE_READER *create_wiggle_reader(const char *filename);

void free_wiggle_reader(WIGGLE_READER *reader);

void reset_wiggle_reader(WIGGLE_READER *reader);

BOOLEAN_T get_next_wiggle_record(
  WIGGLE_READER *reader,
  char **chrom,
  size_t *start,
  size_t *step,
  size_t *span,
  double *value,
  BOOLEAN_T *first_record
);

int get_wiggle_eof(WIGGLE_READER *reader);

const char* get_wiggle_filename(WIGGLE_READER *reader);

INPUT_FMT get_wiggle_format(WIGGLE_READER *reader);

#endif
