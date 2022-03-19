//
//  YAColor.m
//  swiftdemo
//
//  Created by lch on 19/03/2022.
//

#import "YAColor.h"

@implementation YAColor

UIColor *YA333333(void) {
    return YAColorForHex(@"333333", 1);
}

UIColor *YARedColor(void) {
    return [UIColor redColor];
}
UIColor *YAClearColor(void) {
    return [UIColor clearColor];
}

UIColor *YARandomColor(void) {
return [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
}

UIColor *YARGB(CGFloat r,CGFloat g,CGFloat b){
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1];
}

UIColor *YAColorForHex(NSString *hexColor, CGFloat alpha) {
    // String should be 6 or 7 characters if it includes '#'
    if ([hexColor length]  < 6)
        return ([UIColor redColor]);
    
    // strip # if it appears
    if ([hexColor hasPrefix:@"#"])
        hexColor = [hexColor substringFromIndex:1];
    
    // if the value isn't 6 characters at this point return
    // the color black
    int n = (int)[hexColor length];
    if ((n != 6))
        return ([UIColor redColor]);
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    
    NSString *strR, *strG, *strB;
    strR = [hexColor substringWithRange:NSMakeRange(0, 2)];
    strG = [hexColor substringWithRange:NSMakeRange(2, 2)];
    strB = [hexColor substringWithRange:NSMakeRange(4, 2)];
    
    
    // Scan values
    unsigned r, g, b=255.f;
    [[NSScanner scannerWithString:strR] scanHexInt:&r];
    [[NSScanner scannerWithString:strG] scanHexInt:&g];
    [[NSScanner scannerWithString:strB] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
}

@end
