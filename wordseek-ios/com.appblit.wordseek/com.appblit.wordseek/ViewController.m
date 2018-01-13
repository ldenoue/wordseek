//
//  ViewController.m
//  com.appblit.wordseek
//
//  Created by Laurent Denoue on 1/8/18.
//  Copyright © 2018 Laurent Denoue. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@import WebKit;
@implementation ViewController

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.92 green:0.38 blue:0.24 alpha:1.0];
    CGRect rect = self.view.frame;
    WKWebView *web = [[WKWebView alloc] initWithFrame:rect];
    web.backgroundColor = [UIColor colorWithRed:0.92 green:0.38 blue:0.24 alpha:1.0];
    [self.view addSubview:web];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"wordseek" ofType:@"html"];
    NSURL *url = [NSURL fileURLWithPath:path];
    NSURL *urlroot = [[NSBundle mainBundle] resourceURL];
    [web loadFileURL:url allowingReadAccessToURL:urlroot];
    web.scrollView.bounces = false;
    web.allowsBackForwardNavigationGestures = false;
    web.contentMode = UIViewContentModeScaleToFill;
    web.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
