//
//  ADXmlParser.m
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/21/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import "ADXmlParserService.h"
#import "ADXmlParserKernel.h"

@interface ADXmlParserService ()
@property (nonatomic, strong) ADXmlParserKernel *kernel;
@end

@implementation ADXmlParserService
- (instancetype)initWithParams:(NSDictionary *)params
{
    self = [super init];
    if (self) {
        self.kernel = [[ADXmlParserKernel alloc] initWithParams:params];
        self.rac_innerOutput = [[self.kernel.rac_innerOutput ignore:@""] ignore:NULL];
        self.kernel.rac_outerInput = [[RACObserve(self, outerInput) ignore:NULL] ignore:@""];
    }
    return self;
}
@end
