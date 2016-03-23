# ADXmlParser

ADXmlParser is a categoryTool,

For parsing out models from XML data,

Follow is the Final,

    NSData *xmlData = ...;
    
    [xmlData parseXmlToModels:^(NSDictionary *modelsDictionary) {

        ModelClassNameA *modelA = modelsDictionary[@"ModelClassNameA"];
        
    } WithProtocolDictionary:@{@"ModelClassNameA":@"XmlNodeNameA",
                               @"ModelClassNameB":@"XmlNodeNameB"}];


Elegent,

And easy to use.
