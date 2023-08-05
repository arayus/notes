1. connect to device by usb
2. enable tcp by adb 
```shell
adb -s device_name tcpip 5555
```
3. run command to connect it
```shell
scrcpy.exe --always-on-top --tcpip=ip_addr
```

- enable tcp debug
```shell
adb.exe devices
adb.exe -s AHPEBB2505001143 tcpip 5555
```
