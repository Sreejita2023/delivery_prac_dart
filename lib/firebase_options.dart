// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBdXUPUGD4XbKBszH0Q7QkrZJOLoFpyzXw',
    appId: '1:816740625768:web:717163c96910aad6d33add',
    messagingSenderId: '816740625768',
    projectId: 'delivery-de2a4',
    authDomain: 'delivery-de2a4.firebaseapp.com',
    storageBucket: 'delivery-de2a4.appspot.com',
    measurementId: 'G-ZT1NC9N9V7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyApQUvkKf3djE0XG9HJ1WSLP-5E4us8OmE',
    appId: '1:816740625768:android:2febc7f7123b4221d33add',
    messagingSenderId: '816740625768',
    projectId: 'delivery-de2a4',
    storageBucket: 'delivery-de2a4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCYYrSfg_tExvASJcsGV8T-9e_0gYKbrGc',
    appId: '1:816740625768:ios:073840ba764e5203d33add',
    messagingSenderId: '816740625768',
    projectId: 'delivery-de2a4',
    storageBucket: 'delivery-de2a4.appspot.com',
    iosBundleId: 'com.example.prop2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCYYrSfg_tExvASJcsGV8T-9e_0gYKbrGc',
    appId: '1:816740625768:ios:0b6b5b173e1e8c66d33add',
    messagingSenderId: '816740625768',
    projectId: 'delivery-de2a4',
    storageBucket: 'delivery-de2a4.appspot.com',
    iosBundleId: 'com.example.prop2.RunnerTests',
  );
}
