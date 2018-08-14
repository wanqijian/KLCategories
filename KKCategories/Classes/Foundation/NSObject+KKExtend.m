//
//  NSObject+KKExtend.m
//  Expecta
//
//  Created by wanqijian on 2018/8/14.
//

#import "NSObject+KKExtend.h"
#import <objc/runtime.h>

@implementation NSObject (KKExtend)

#pragma mark - Object properties

- (NSDictionary *)kk_properties {
    unsigned int propCount, index;
    objc_objectptr_t *properties_t = (objc_objectptr_t *)class_copyPropertyList([self class], &propCount);
    NSMutableDictionary *resultDictionary = [[NSMutableDictionary alloc] init];
    for (index=0; index<propCount; index++) {
        objc_property_t property_t = (objc_property_t)properties_t[index];
        NSString *attributeName = [NSString stringWithUTF8String:property_getName(property_t)];
        [resultDictionary setObject:[self valueForKey:attributeName] forKey:attributeName];
    }
    NSDictionary *properties = [NSDictionary dictionaryWithDictionary:resultDictionary];
    free(properties_t);
    return properties;
}

#pragma mark - Object Class Methods

+ (void)kk_printMethods {
    unsigned int methodCount, index;
    Method *methodList_t = class_copyMethodList(self, &methodCount);
    for (index=0; index<methodCount; index++) {
        Method method_t = methodList_t[index];
//        IMP imp_t = method_getImplementation(method_t);
        SEL name_t = method_getName(method_t);
        const char* name_s = sel_getName(name_t);
        int arguments = method_getNumberOfArguments(method_t);
        NSLog(@"Method Name: %@, Arguments Number: %d",
              [NSString stringWithUTF8String:name_s],
              arguments);
    }
    free(methodList_t);
}



@end
