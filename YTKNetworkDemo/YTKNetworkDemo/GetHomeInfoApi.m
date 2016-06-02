//
//  GetHomeInfoApi.m
//  YTKNetworkDemo
//
//  Created by meijiameixian on 16/6/2.
//  Copyright © 2016年 yuantiku.com. All rights reserved.
//

#import "GetHomeInfoApi.h"

@implementation GetHomeInfoApi {
    NSString *_userId;
}

- (id)initWithUserId:(NSString *)userId {
    self = [super init];
    if (self) {
        _userId = userId;
    }
    return self;
}

//- (NSString *)requestUrl {
//    return @"/app/home/v3";
//}

- (YTKRequestSerializerType)requestSerializerType {
    return YTKRequestSerializerTypeJSON;
}

//- (id)requestArgument {
//    return @{@"id": _userId};
//}

- (id)jsonValidator {
    return @{
             @"nick": [NSString class],
             @"level": [NSNumber class]
             };
}

- (NSInteger)cacheTimeInSeconds {
    return 60 * 3;
}

@end
