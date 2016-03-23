//
//  NSDictionary+ADXmlParserConvenience.m
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/23/16.
//  Copyright © 2016 daopr. All rights reserved.
//
#import "NSDictionary+ADXmlParserConvenience.h"
#import "ADXmlParserService.h"

@implementation NSDictionary (ADXmlParserConvenience)
-(void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock {
  @autoreleasepool {
    ADXmlParserService *xmlParserService = [[ADXmlParserService alloc] initWithParams:nil];
    xmlParserService.outerInput = self;
    [xmlParserService.rac_innerOutput subscribeNext:outputBlock];
  }

}





@end
