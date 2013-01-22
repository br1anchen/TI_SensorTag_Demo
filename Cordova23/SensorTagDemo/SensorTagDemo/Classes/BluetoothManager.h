//
//  BluetoothManager.h
//  SensorTagDemo
//
//  Created by Brian Chen on 1/22/13.
//
//

#import <Foundation/Foundation.h>
#import <CoreBluetooth/CoreBluetooth.h>

@protocol BluetoothManagerDelegate <NSObject>

@required
- (void) updateLog:(NSString *)text;
- (void) foundPeripheral:(CBPeripheral *)p;

@end

@interface BluetoothManager : NSObject <CBCentralManagerDelegate> {
    
}

@property bool cBReady;
@property (nonatomic,strong) CBCentralManager *cBCM;
@property (nonatomic,assign) id<BluetoothManagerDelegate> delegate;

@end
