//
//  NSData+ADXmlParserConvenience.m
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/23/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import "NSData+ADXmlParserConvenience.h"


@implementation NSData (ADXmlParserConvenience)
- (void)parseXmlWithProtocolDictionary:(NSDictionary *)protocolDictionary toModels:(ADXmlParserParamBlock)outputBlock
 {

    [@{@"xmlData":self,
       @"xmlModelsDictionary":protocolDictionary}
    parseXmlToModels:outputBlock];
}

- (void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock WithProtocolDictionary:(NSDictionary *)protocolDictionary {
    [self parseXmlWithProtocolDictionary:protocolDictionary toModels:outputBlock];
};

@end
