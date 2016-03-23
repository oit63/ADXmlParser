//
//  ADXmlParser.h
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/21/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ReactiveCocoa.h>

@interface ADXmlParserKernel : NSObject
@property (nonatomic,strong) RACSignal *rac_innerOutput;
@property (nonatomic,strong) RACSignal *rac_outerInput;
- (instancetype)initWithParams:(NSDictionary *)params;
@end
