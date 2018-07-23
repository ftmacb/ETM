//
//  extraButton.m
//  Foton
//
//  Created by fanbo on 2017/3/20.
//  Copyright © 2017年 fanbo. All rights reserved.
//

#import "ExtraButton.h"

@implementation ExtraButton

//扩大按钮的点击区域--按钮四周之外的30pt也可以响应按钮的事件
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if (!self.isUserInteractionEnabled || self.hidden || self.alpha <= 0.01) {
        return nil;
    }
    
    CGRect touchRect = CGRectInset(self.bounds, -_extraX, -_extraY);
    if (CGRectContainsPoint(touchRect, point)) {
        for (UIView *subView in [self.subviews reverseObjectEnumerator]) {
            CGPoint convertedPoint = [subView convertPoint:point fromView:self];
            UIView *hitTestView = [subView hitTest:convertedPoint withEvent:event];
            if (hitTestView) {
                return hitTestView;
            }
            
        }
        return self;
    }
    return nil;
}

-(void)setHidden:(BOOL)hidden
{
    [super setHidden:hidden];
}

-(BOOL)hidden{
    return [super isHidden];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
