//
//  BluetoothKit.m
//  SensorTagDemo
//
//  Created by Brian Chen on 1/20/13.
//
//

#import "BluetoothKit.h"
#import <Cordova/CDV.h>

@implementation BluetoothKit

- (void)scan:(CDVInvokedUrlCommand *)command
{
    NSLog(@"test2");
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    
    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
