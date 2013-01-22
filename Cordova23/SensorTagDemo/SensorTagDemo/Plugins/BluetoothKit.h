//
//  BluetoothKit.h
//  SensorTagDemo
//
//  Created by Brian Chen on 1/20/13.
//
//

#import <Cordova/CDV.h>
#include "BluetoothManager.h"

@interface BluetoothKit : CDVPlugin<BluetoothManagerDelegate>

@property (strong,nonatomic) BluetoothManager *BTM;
@property (strong,nonatomic) CBPeripheral *peripheral;

- (void)init:(CDVInvokedUrlCommand *)command;
- (void)scan:(CDVInvokedUrlCommand *)command;
- (void)connect:(CDVInvokedUrlCommand *)command;

@end
