# ADXmlParser

ADXmlParser is a categoryTool for parsing out Models from XML Data


    NSData *xmlData = ...;
    [xmlData parseXmlToModels:^(NSDictionary *modelsDictionary) {

        ModelClassNameA *modelA = modelsDictionary[@"ModelClassNameA"];
        
    } WithProtocolDictionary:@{@"ModelClassNameA":@"XmlNodeNameA",
                               @"ModelClassNameB":@"XmlNodeNameB"}];


so elegent, and easy to use
