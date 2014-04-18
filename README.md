screenshot-android
==================

Port screenshot from Android 4.x to Android 2.x

Source base on Android 4.4 (Kitkat) [Source Code][1]

#how to build
```sh
cd screenshot-android
ndk-build
```

#how to use
```sh
cd screenshot-android
adb push ./libs/armeabi/screenshot /data/local
adb shell su -c "chmod 755 /data/local/screenshot"
adb shell su -c "/data/local/screenshot /data/local/test.png"
adb pull /data/local/test.png
```



  [1]: https://android.googlesource.com/platform/frameworks/native/+/kitkat-dev/cmds/screenshot