//
//  NSDictionary+ADXmlParserConvenience.h
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/23/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef void (^ADXmlParserParamBlock)(NSDictionary *modelsDictionary);

@interface NSDictionary (ADXmlParserConvenience)
-(void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock;
@end
