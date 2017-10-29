//
//  Micro.h
//  UtilsCode
//
//  Created by alaiye on 2017/10/29.
//  Copyright © 2017年 alaiye. All rights reserved.
//

#ifndef Micro_h
#define Micro_h

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT  [[UIScreen mainScreen] bounds].size.height

#define WeakObj(o) __weak typeof(o) obj##Weak = o;


#define DEBUGGER 1

#ifdef DEBUGGER
#define Log(format, ...) NSLog((@"%s [Line %d] " format), __FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define Log(...)
#endif

#endif /* Micro_h */
