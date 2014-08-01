//
//  Barcode.h
//  featurebuild
//
//  Created by Elias Haroun
//  Copyright (c) 2014 Elias Haroun. All rights reserved.
//

#import <Foundation/Foundation.h>
@import AVFoundation;

@interface Barcode : NSObject

+ (Barcode * )processMetadataObject:(AVMetadataMachineReadableCodeObject*) code;
- (NSString *) getBarcodeType;
- (NSString *) getBarcodeData;
- (void) printBarcodeData;
@end
