//
//  main.c
//  ClassCertificates
//
//  Created by admin on 09/06/2018.
//  Copyright © 2018 Maksim Nosov. All rights reserved.
//

#include <stdio.h>
#include <unistd.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d.\n", student, course, numDays);
}

int main(int argc, const char * argv[]) {
    
    congratulateStudent("Kate", "Cocoa", 5);
    sleep(2);
    congratulateStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratulateStudent("Mike", "Python", 5);
    sleep(2);
    congratulateStudent("Liz", "iOS", 5);
    
    return 0;
}
