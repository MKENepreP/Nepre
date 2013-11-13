//
//  UINavigationBar+MyNavigationBar.m
//  NepreP
//
//  Created by Lsr on 13-11-12.
//  Copyright (c) 2013年 Lsr. All rights reserved.
//

#import "UINavigationBar+MyNavigationBar.h"

@implementation UINavigationBar (MyNavigationBar)


- (CGSize)sizeThatFits:(CGSize)size {
    // Change navigation bar height. The height must be even, otherwise there will be a white line above the navigation bar.
    CGSize newSize = CGSizeMake(self.frame.size.width, 25);

    return newSize;
}


@end
