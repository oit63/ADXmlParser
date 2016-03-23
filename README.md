# ADXmlParser

    NSData *xmlData = ...;
    
    [xmlData parseXmlToModels:^(NSDictionary *modelsDictionary) {

        ModelClassNameA *modelA = modelsDictionary[@"ModelClassNameA"];
        
    } WithProtocolDictionary:@{@"ModelClassNameA":@"XmlNodeNameA",
                               @"ModelClassNameB":@"XmlNodeNameB"}];


Elegent,

And easy to use.

