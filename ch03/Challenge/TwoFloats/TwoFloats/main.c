//
//  main.c
//  TwoFloats
//
//  Created by admin on 09/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    
    float number1 = 3.14;
    float number2 = 42.0;
    
    double sum = number1 + number2;
    
    printf("Result of sum %f and %f = %f\n", number1, number2, sum);
    
    return 0;
}
