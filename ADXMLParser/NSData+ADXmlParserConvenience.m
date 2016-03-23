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
    // TODO: determine the Data coder type
    //       parse the GB2312 to UTF-8
    [@{@"xmlData":self,
       @"xmlModelsDictionary":protocolDictionary}
    parseXmlToModels:outputBlock];
}

- (void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock WithProtocolDictionary:(NSDictionary *)protocolDictionary {
    [self parseXmlWithProtocolDictionary:protocolDictionary toModels:outputBlock];
}

- (void)parseXmlToModels:(ADXmlParserParamBlock)outputBlock WithProtocolDictionary:(NSDictionary *)protocolDictionary
    encoding:(NSStringEncoding)encoding {
    if (encoding != NSUTF8StringEncoding) {
        NSData *xmlDataEncoding = self;
        NSString *xmlStringEncoding = [[NSString alloc] initWithData:xmlDataEncoding encoding:encoding];
        NSData *xmlDataUTF8 = [xmlStringEncoding dataUsingEncoding:NSUTF8StringEncoding];
        [xmlDataUTF8 parseXmlWithProtocolDictionary:protocolDictionary toModels:outputBlock];
    } else {
        [self parseXmlWithProtocolDictionary:protocolDictionary toModels:outputBlock];
    }
}

@end
