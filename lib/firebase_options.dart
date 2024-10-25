// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyBSBKeVMkMHFPF7pgEuWihkbKQzD9HvssU',
    appId: '1:188107552081:web:27f8a24cb04272008a8f70',
    messagingSenderId: '188107552081',
    projectId: 'chat-app-d0fdb',
    authDomain: 'chat-app-d0fdb.firebaseapp.com',
    storageBucket: 'chat-app-d0fdb.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAaJ2cwJfNXyGoj1R0DDxh2bmrP5YdbwaA',
    appId: '1:188107552081:android:f81633d09c356e988a8f70',
    messagingSenderId: '188107552081',
    projectId: 'chat-app-d0fdb',
    storageBucket: 'chat-app-d0fdb.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClDgYCUK5UlzAoK_YVzqgcLxa7V_jaRuE',
    appId: '1:188107552081:ios:d28aa9dcbdea94ca8a8f70',
    messagingSenderId: '188107552081',
    projectId: 'chat-app-d0fdb',
    storageBucket: 'chat-app-d0fdb.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClDgYCUK5UlzAoK_YVzqgcLxa7V_jaRuE',
    appId: '1:188107552081:ios:d28aa9dcbdea94ca8a8f70',
    messagingSenderId: '188107552081',
    projectId: 'chat-app-d0fdb',
    storageBucket: 'chat-app-d0fdb.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBSBKeVMkMHFPF7pgEuWihkbKQzD9HvssU',
    appId: '1:188107552081:web:fbdcc47ddb481f648a8f70',
    messagingSenderId: '188107552081',
    projectId: 'chat-app-d0fdb',
    authDomain: 'chat-app-d0fdb.firebaseapp.com',
    storageBucket: 'chat-app-d0fdb.appspot.com',
  );
}