//
//  SettingsViewController.h
//  iOS7_BarcodeScanner
//
//  Created by Elias Haroun
//  Copyright (c) 2014 Elias Haroun. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SettingsDelegate <NSObject>
@required
- (void) settingsChanged:(NSMutableArray *)allowedTypes;
@end

@interface SettingsViewController : UIViewController
@property (weak) id <SettingsDelegate> delegate;
@end
