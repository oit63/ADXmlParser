//
//  NSData+ADXmlParserConvenience.h
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/23/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+ADXmlParserConvenience.h"
@interface NSData (ADXmlParserConvenience)
- (void)parseXmlWithProtocolDictionary:(NSDictionary *)protocolDictionary toModels:(ADXmlParserParamBlock)outputBlock;
- (void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock WithProtocolDictionary:(NSDictionary *)protocolDictionary;
@end
