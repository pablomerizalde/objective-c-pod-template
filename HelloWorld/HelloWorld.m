//
//  HelloWorld.m
//  HelloWorld
//
//  Created by Gergely Orosz on 31/05/2015.
//  Copyright (c) 2015 GergelyOrosz. All rights reserved.
//

#import "HelloWorld.h"

@implementation HelloWorld

-(NSString*) sayHello {
    return @"Hello, World!";
}

-(NSString*) sayHelloWithName: (NSString*) name {
    if([name length] > 0) {
        return [NSString stringWithFormat:@"Hello, %@!", name];
    } else {
        return [self sayHello];
   }
}

@end
