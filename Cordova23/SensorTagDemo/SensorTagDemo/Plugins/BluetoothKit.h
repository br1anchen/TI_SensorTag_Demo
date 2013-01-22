//
//  BluetoothKit.h
//  SensorTagDemo
//
//  Created by Brian Chen on 1/20/13.
//
//

#import <Cordova/CDV.h>

@interface BluetoothKit : CDVPlugin

- (void)scan:(CDVInvokedUrlCommand *)command;

@end
