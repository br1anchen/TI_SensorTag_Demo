var Bluetooth =
{
    scan: function(args,scanSuc,scanFaild) {
        cordova.exec(scanSuc, scanFaild, "Bluetooth", "scan", [args]);
    }
};