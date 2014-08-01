//
//  WebViewController.m
//  iOS7_BarcodeScanner
//
//  Created by Elias Haroun on 2014-07-08.
//  Copyright (c) 2014 Elias Haroun All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *webview;

@end

@implementation WebViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"Search";
    
    [[self navigationController] setNavigationBarHidden:NO];
    
    NSString *defaultString = @"https://www.google.ca/#q=";
    NSURL *url;
    if ([[barcodeDataString substringToIndex:4] isEqualToString:@"http"]) {
        url = [NSURL URLWithString: barcodeDataString];
    } else {
        url = [NSURL URLWithString: [NSString stringWithFormat:@"%@%@",defaultString,barcodeDataString]];
    }
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [_webview loadRequest:request];
    NSLog(@"%@",barcodeDataString);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
