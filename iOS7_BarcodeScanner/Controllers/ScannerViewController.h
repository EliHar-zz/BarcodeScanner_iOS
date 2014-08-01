//
//  ViewController.h
//  iOS7_BarcodeScanner
//
//  Created by Elias Haroun
//  Copyright (c) 2014 Elias Haroun. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsViewController.h"
@interface ScannerViewController : UIViewController<UIAlertViewDelegate, SettingsDelegate>
@property (strong, nonatomic) NSMutableArray * allowedBarcodeTypes;

@end
