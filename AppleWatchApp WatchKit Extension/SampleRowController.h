//
//  SampleRowController.h
//  AppleWatchApp
//
//  Created by Maciej Cupial on 29/03/15.
//  Copyright (c) 2015 Maciej Cupial. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WatchKit/WatchKit.h>

@interface SampleRowController : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage* imageView;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel* mainLabel;

@end
