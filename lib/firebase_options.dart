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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyA9zR7GrABgJuZl6fszplkOZmIY-V-muVU',
    appId: '1:934788758916:web:78f5078ef85e981bc1b1d1',
    messagingSenderId: '934788758916',
    projectId: 'frusket-1d3f9',
    authDomain: 'frusket-1d3f9.firebaseapp.com',
    storageBucket: 'frusket-1d3f9.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCOCCDu58fqavP9paZtO6eNIkSWh3UeXh0',
    appId: '1:934788758916:android:428a83329b624a51c1b1d1',
    messagingSenderId: '934788758916',
    projectId: 'frusket-1d3f9',
    storageBucket: 'frusket-1d3f9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAA3oJK0GUAU6xYVDAkBSs5M9jH8kekzaQ',
    appId: '1:934788758916:ios:b3ae96c9856905dbc1b1d1',
    messagingSenderId: '934788758916',
    projectId: 'frusket-1d3f9',
    storageBucket: 'frusket-1d3f9.appspot.com',
    iosClientId: '934788758916-thkau1pk0djvhggkfjb5lbkf13raspl4.apps.googleusercontent.com',
    iosBundleId: 'com.example.frusket',
  );
}
