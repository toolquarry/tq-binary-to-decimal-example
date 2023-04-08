#include <stdio.h>
#include "binary_to_decimal.h"

int main() {
   int binary;

   printf("Enter a binary number: ");
   scanf("%d", &binary);

   printf("Decimal number is: %d\n", binary_to_decimal(binary));
   return 0;
}