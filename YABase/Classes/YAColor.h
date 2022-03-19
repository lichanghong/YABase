//
//  YAColor.h
//  swiftdemo
//
//  Created by lch on 19/03/2022.
//

#import <Foundation/Foundation.h>

@interface YAColor : NSObject
// 推荐标准自定义用法
UIColor *YA333333(void);

// 内置便利方法
UIColor *YARedColor(void);
UIColor *YAClearColor(void);
UIColor *YARandomColor(void);
UIColor *YARGB(CGFloat r,CGFloat g,CGFloat b);
UIColor *YAColorForHex(NSString *hexColor, CGFloat alpha);


@end
