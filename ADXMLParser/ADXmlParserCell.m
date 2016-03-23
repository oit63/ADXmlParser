//
//  ADXmlParser.m
//  RACSignalTestor
//
//  Created by 徐腾浩 on 3/21/16.
//  Copyright © 2016 daopr. All rights reserved.
//

#import "ADXmlParserCell.h"
#import "HYXMLParser.h"
#import <ObjectiveSugar.h>
#import <MJExtension.h>
#import "VideoModel.h"

@interface ADXmlParserCell ()

@property (nonatomic, strong) NSMutableDictionary *parsedModelsDictionary;
@property (nonatomic, strong) NSDictionary *selfInputedDictionary;
@end

@implementation ADXmlParserCell
- (instancetype)initWithParams:(NSDictionary *)params
{
    self = [super init];
    if (self) {
        [RACObserve(self, rac_outerInput) subscribeNext:^(id x) {
            [self.rac_outerInput  subscribeNext:^(NSDictionary *inputDict) {
                NSData *xmlData = inputDict[@"xmlData"];
                NSDictionary *xmlModelsDictionary = inputDict[@"xmlModelsDictionary"];
                
                [xmlModelsDictionary each:^(NSString *modelClassKey, NSString *modelNodeValue) {
                   
                    HYXMLParser* parser = [[HYXMLParser alloc] initWithModelClassName:modelClassKey withElementName:modelNodeValue modelFromBlock:^(NSDictionary<NSString *,NSString *> *data, id model) {
                        [model mj_setKeyValues:data];
                    }];
                    NSMutableArray* models = [parser modelsArrayFromData:xmlData];
                    if (models.count) {
                        [self.parsedModelsDictionary setValue:models[0] forKey:modelClassKey];
                    }
                }];
                self.selfInputedDictionary = [self.parsedModelsDictionary copy];
            }];
        }];
        self.rac_innerOutput = [RACObserve(self, self.selfInputedDictionary) ignore:nil];
    }
    return self;
}
- (NSMutableDictionary *)parsedModelsDictionary {
	if(_parsedModelsDictionary == nil) {
		_parsedModelsDictionary = [[NSMutableDictionary alloc] init];
	}
	return _parsedModelsDictionary;
}

@end
