//
//  ImageInterfaceController.m
//  AppleWatchApp
//
//  Created by Maciej Cupial on 29/03/15.
//  Copyright (c) 2015 Maciej Cupial. All rights reserved.
//

#import "ImageInterfaceController.h"


@interface ImageInterfaceController()

@end


@implementation ImageInterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
    
    [self.mainImage setImage: [UIImage imageNamed: [NSString stringWithFormat: @"%@", context]]];
}

- (void)willActivate
{
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate
{
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

@end



