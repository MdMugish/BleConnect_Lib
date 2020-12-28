# BleConnect_Lib

This library is for Bluetooth connectivity on top of Core Bluetooth which supports -
1. BLE Scan
2. Filter device by Name
3. Filter by UUID
4. ANCS Connectivity
5. Background Scan
6. Discover Services
7. Discover Characteristics For Service
8. Update Notification For Characteristics
9. Update Value For Characteristics
10. Write Value For Characteristics

## Library (Swift Package Manager)

### How to use
-> File <br> -> Swift Packages <br> -> Add Package Dependency <br> -> Paste this link "https://github.com/MdMugish/BleConnect_Lib" <br> -> Next <br> -> Done
<br><br><br>
After adding this package you can import "ConnectBlu" as shown in this example: https://github.com/MdMugish/BleConnect

<br><br>

```swift
public enum BluetoothState : String {
    case powerOff
    case powerOn
    case resetting
    case unauthorized
    case unknown
    case unsupported
    case scanning
    case idle
    case connecting
    case connectionFail
    case connected
    case disconnected
}
```


```swift
public protocol BLE_Callbacks {

    func didBluetoothStateChange(_ bluetoothState: ConnectBlu.BluetoothState)

    func didDiscoverDevices(_ listOfDevice: [CBPeripheral])

    func didDiscoverCharacteristicsForService(_ service: CBService, allCharacterisricsForThisService: [CBCharacteristic])

    func didUpdateNotificationForCharacteristics(characteristics: CBCharacteristic, error: Error?)

    func didUpdateValueForCharacteristics(characteristics: CBCharacteristic, error: Error?)

    func didWriteValueForCharacteristics(characteristics: CBCharacteristic, error: Error?)

    func didUpdateANCSAuthorized(state: Bool)
}
```
<br><br>
