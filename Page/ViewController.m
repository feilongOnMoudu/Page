//
//  ViewController.m
//  Page
//
//  Created by songfeilong on 2018/5/14.
//  Copyright © 2018年 songfeilong. All rights reserved.
//

#import "ViewController.h"
#import "UIParameter.h"
#import "NinaPagerView.h"

@interface ViewController ()
@property (nonatomic, strong) NinaPagerView *ninaPagerView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.ninaPagerView];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - NinaParaArrays
- (NSArray *)ninaTitleArray {
    return @[
             @"大连市66666",
             @"甘井子",
             @"郑州",@"大连市",
             @"甘井子",
             @"郑州",@"大连市",
             @"甘井子"
             ];
}

- (NSArray *)ninaViewsArray {
    NSArray * arr = @[@"VC1",
                      @"VC2"];
    NSMutableArray * temp = [[NSMutableArray alloc] init];
    for (int i = 0; i < [self ninaTitleArray].count; i++) {
        for (int j = 0; j < arr.count; j++) {
            [temp addObject:[arr objectAtIndex:j]];
        }
    }
    return temp;
}

- (NinaPagerView *)ninaPagerView {
    if (!_ninaPagerView) {
        NSArray *titleArray = [self ninaTitleArray];
        NSArray *vcsArray = [self ninaViewsArray];
        CGRect pagerRect = CGRectMake(0, 64, FUll_VIEW_WIDTH, FUll_CONTENT_HEIGHT);
        _ninaPagerView = [[NinaPagerView alloc] initWithFrame:pagerRect WithTitles:titleArray WithObjects:vcsArray];
        _ninaPagerView.ninaPagerStyles = NinaPagerStyleBottomLine;
    }
    return _ninaPagerView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
