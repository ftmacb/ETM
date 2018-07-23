//
//  UIView+Frame.m
//  HuJiao
//
//  Created by Gaoyang on 15/3/16.
//  Copyright (c) 2015年 HJ. All rights reserved.
//

#import "UIView+Frame.h"

@implementation UIView (Frame)
-(CGFloat)x
{
    return self.frame.origin.x;
}
-(CGFloat)y
{
    return self.frame.origin.y;
}
-(CGFloat)w
{
    return self.frame.size.width;
}
-(CGFloat)h
{
    return self.frame.size.height;
}

-(CGFloat)XplusW
{
    return self.x+self.w;
}

-(CGFloat)YplusH
{
    return self.y+self.h;
}

@end
