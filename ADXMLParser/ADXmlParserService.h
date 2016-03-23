//
//  ADXmlParser.h
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/21/16.
//  Copyright © 2016 daopr. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <ReactiveCocoa.h>

@interface ADXmlParserService : NSObject
/* input params:

                 XmlData: <XMLData>
                 XmlModelsDictionary:
                            key:    ModelClassName
                            value:  XMLNodeName
 
Example:
 NSDictionary *operationDictionary = @{
 @"xmlData":data,
 @"xmlModelsDictionary":
 @{@"VideoModel":@"video",
 @"DeviceType":@"DEVICE_TYPE"}
 };
 
*/

/* the processing
    ergodic dictionaries transit model from xmlstring
*/

/* output param:
    model dictionary <contained all we need>
*/
@property (nonatomic,weak) RACSignal  *rac_innerOutput;
@property (atomic, strong) NSDictionary   *outerInput;
- (instancetype)initWithParams:(NSDictionary *)params;
@end
