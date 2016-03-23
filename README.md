# ADXmlParser

ADXmlParser is a categoryTool for parsing out Models from XML Data

elegent, and easy to use

    NSData *xmlData = ...;
    [xmlData parseXmlToModels:^(NSDictionary *modelsDictionary) {

        ModelClassNameA *modelA = modelsDictionary[@"ModelClassNameA"];
        
    } WithProtocolDictionary:@{@"ModelClassNameA":@"XmlNodeNameA",
                               @"ModelClassNameB":@"XmlNodeNameB"}];

