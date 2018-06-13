//
//  main.c
//  BeerSong
//
//  Created by admin on 09/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of bear on the wall.\n\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles - 1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n\n", oneFewer);
        
        singSongFor(oneFewer);
        
        // Print a message just before the function ends
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[]) {
    
    singSongFor(4);
    return 0;
}
