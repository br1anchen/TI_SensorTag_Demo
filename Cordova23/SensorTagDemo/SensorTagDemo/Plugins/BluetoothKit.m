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
@synthesize BTM,peripheral;

- (void)init:(CDVInvokedUrlCommand *)command
{
    NSLog(@"init");
    self.BTM = [BluetoothManager alloc];
    if (self.BTM) {
        self.BTM.cBCM = [[CBCentralManager alloc] initWithDelegate:self.BTM queue:nil];
        self.BTM.delegate = self;
    }
}

- (void)scan:(CDVInvokedUrlCommand *)command
{
    NSLog(@"scan");
    if(self.BTM.cBReady)
    {
        NSLog(@"Bluetooth ready");
        [self.BTM.cBCM scanForPeripheralsWithServices:nil options:nil];
    }
    /*
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];
    
    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    */
}

- (void)connect:(CDVInvokedUrlCommand *)command
{
    NSLog(@"connect");
    if(self.peripheral)
    {
        if(!self.peripheral.isConnected)
        {
            [self.BTM.cBCM connectPeripheral:self.peripheral options:nil];
            NSLog(@"connect...");
        }else
        {
            [self.BTM.cBCM cancelPeripheralConnection:self.peripheral];
            NSLog(@"disconnect...");
        }
    }
}

- (void) updateLog:(NSString *)text {
    NSLog(@"SensorLog:%@",text);
}



- (void) foundPeripheral:(CBPeripheral *)p {
    NSLog(@"foundPeripheral:%@",p.UUID);
    self.peripheral = p;
}

@end
