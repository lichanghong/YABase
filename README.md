# iOS开发基础库-颜色库最佳实践
YABase 合伙鸭 hehuoya.com，鸭基础

## YABase 基础库
YABase是非常好用的iOS基础库，包含一些规范的基础类，而且支持混编！YAColor就是YABase组件基础库中的其中之一

## YAColor 颜色管理
客户端开发应该有颜色规范，定义颜色的大众做法是使用宏定义，然而宏定义虽简单但存在很多问题；
比如宏定义在混编环境下不通用、宏定义重复、预编译条件判断导致故障性问题，再就是可读性差。 
因此YAColor摒弃了宏定义的做法，使用了C函数形式，这样无论是单语句定义还是需要方法处理，都可以很方便的去实现

## YAColor 最佳实践规范
每个App客户端都应该有一套自己的主题色，这一套或多套主题色在设计侧就应该标准化，客户端根据标准化色值设置自己的主题色方法。在实际开发过程中，我们使用颜色经常自定义名称，这种形式对多人合作开发很不友好，甚至自己定义的名称过段时间也会忘记，还会根据设计图标记的hex值去找名称；我们的最佳实践规范是方法名和颜色值保持一致，比如：hex是 #333333的颜色，我们使用方法 YA333333() ;再利用xcode的智能提示，我们只需要输入333即可回车，不仅可以快速定位到需要的颜色，而且没有任何误差

## YAColor 赋能业务
YAColor内置了如下方法
// 推荐标准自定义用法
UIColor *YA333333(void); 
... 其他公司颜色标准，继续添加其他颜色，可以修改本pod库源码，也可以在自己的基础库中添加UIColor分类
但我们期望命名规范能够使用方法名和颜色色值保持一致


// 内置便利方法：红色 透明色 随机色 根据RGB返回颜色 使用HEX获取颜色
UIColor *YARedColor(void);
UIColor *YAClearColor(void);
UIColor *YARandomColor(void);
UIColor *YARGB(CGFloat r,CGFloat g,CGFloat b);
UIColor *YAColorForHex(NSString *hexColor, CGFloat alpha);

## swift & OC使用方式
统一使用方式如下：
//        self.view.backgroundColor = YA333333();
//        self.view.backgroundColor = YARedColor();
//        self.view.backgroundColor = YAColorForHex("334444", 1);
//        self.view.backgroundColor = YAColorForHex("#334444", 1);
//        self.view.backgroundColor = YARGB(255, 0, 0);


## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements
## Installation

YABase is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'YABase'
```

podfile中要添加私有库地址：source 'https://gitee.com/hehuoya/hhy.git'
源码下载地址：
gitee源码地址：https://gitee.com/changhong1_admin/YABase.git
github源码地址：https://github.com/lichanghong/YABase.git 》 master分支


## Author

李长鸿, 1211054926@qq.com
合伙鸭 - hehuoya.com

## License

YABase is available under the MIT license. See the LICENSE file for more info.
