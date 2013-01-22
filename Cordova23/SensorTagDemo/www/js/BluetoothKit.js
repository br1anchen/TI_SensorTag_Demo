var Bluetooth =
{
    init: function(initSuc,initFaild){
        cordova.exec(initSuc,initFaild,"Bluetooth","init",[]);
    },
    
    scan: function(scanSuc,scanFaild) {
        cordova.exec(scanSuc, scanFaild, "Bluetooth", "scan",[]);
    },
    
    connect: function(connectSuc,connectFaild) {
        cordova.exec(connectSuc, connectFaild, "Bluetooth", "connect",[]);
    }
};