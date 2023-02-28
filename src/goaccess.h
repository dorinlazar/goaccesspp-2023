#pragma once
#include "ui.h"

#define RAND_FN 7 + 1

extern GSpinner* parsing_spinner;
extern int active_gdns; /* kill dns pthread flag */

void* read_client(void* ptr_data);
