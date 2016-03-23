//
//  ADXmlParser.m
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/21/16.
//  Copyright © 2016 daopr. All rights reserved.
//
#import "ADXmlParserCell.h"
#import "ADXmlParserKernel.h"

@interface ADXmlParserKernel ()
@property (nonatomic, strong) ADXmlParserCell *xmlParserCell;
@end

@implementation ADXmlParserKernel
- (instancetype)initWithParams:(NSDictionary *)params;
{
    self = [super init];
    if (self) {
        self.xmlParserCell = [[ADXmlParserCell alloc] initWithParams:params];
        self.rac_innerOutput = self.xmlParserCell.rac_innerOutput;

        [RACObserve(self, rac_outerInput) subscribeNext:^(id x) {
            self.xmlParserCell.rac_outerInput = self.rac_outerInput;
        }];
    }
    return self;
}

@end
