//
//  InterfaceController.m
//  AppleWatchApp WatchKit Extension
//
//  Created by Maciej Cupial on 29/03/15.
//  Copyright (c) 2015 Maciej Cupial. All rights reserved.
//

#import "InterfaceController.h"
#import "SampleRowController.h"


@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable* tableView;
@property (nonatomic) NSArray* images;
@property (nonatomic) NSArray* labels;
@property (nonatomic) NSArray* controllerData;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context
{
    [super awakeWithContext:context];
    
    self.images = @[@"image1", @"image2", @"image3", @"image4", @"image5", @"image6", @"image7"];
    self.labels = @[@"label1", @"label2", @"label3", @"label4", @"label5", @"label6", @"label7"];
    
    self.controllerData = @[@[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             @[@"image1", @"image2", @"image3", @"image4", @"image5"],
                             ];
    
    [self setupTableView];
}

- (void)setupTableView
{
    NSMutableArray *rowTypesList = [NSMutableArray array];
    
    for (NSInteger i = 0; i < self.labels.count; ++ i)
    {
        [rowTypesList addObject: @"SampleRowController"];
    }

    [self.tableView setRowTypes: rowTypesList];
    
    for (NSInteger i = 0; i < self.tableView.numberOfRows; i++)
    {
        NSObject *row = [self. tableView rowControllerAtIndex:i];
        
        if ([row isKindOfClass:[SampleRowController class]])
        {
            SampleRowController* sampleRow = (SampleRowController*)row;
            [sampleRow.imageView setImage: [UIImage imageNamed: self.images[i]]];
            [sampleRow.mainLabel setText: self.labels[i]];
        }
    }
}


- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSMutableArray* controllerNames = [NSMutableArray new];
    NSArray* selectedControllerData = self.controllerData[0];
    
    for (NSInteger i = 0; i < selectedControllerData.count; ++i)
    {
        [controllerNames addObject: @"ImageInterfaceController"];
    }
    
    [self presentControllerWithNames: controllerNames contexts: selectedControllerData];
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



