# ADXmlParser

ADXmlParser is a categoryTool for parsing out Models from XML Data.

Follow is the Final:

    NSData *xmlData = ...;
    [xmlData parseXmlToModels:^(NSDictionary *modelsDictionary) {

        ModelClassNameA *modelA = modelsDictionary[@"ModelClassNameA"];
        
    } WithProtocolDictionary:@{@"ModelClassNameA":@"XmlNodeNameA",
                               @"ModelClassNameB":@"XmlNodeNameB"}];


Elegent, and easy to use.
