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
    apiKey: 'AIzaSyBg1FAASk3KAg7AunJSzd30bJT05WLWOC0',
    appId: '1:856857047078:web:a89f86749e84536d4576e7',
    messagingSenderId: '856857047078',
    projectId: 'flutter-test-bf5a1',
    authDomain: 'flutter-test-bf5a1.firebaseapp.com',
    storageBucket: 'flutter-test-bf5a1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC027bKvYMVZo3FzCgHrXtbSDfmfI2GNik',
    appId: '1:856857047078:android:caa05fc40b3f59784576e7',
    messagingSenderId: '856857047078',
    projectId: 'flutter-test-bf5a1',
    storageBucket: 'flutter-test-bf5a1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDkwU9og-g5E7fexR9OCHjZgum1tyZrclU',
    appId: '1:856857047078:ios:48ff480b185cf3f74576e7',
    messagingSenderId: '856857047078',
    projectId: 'flutter-test-bf5a1',
    storageBucket: 'flutter-test-bf5a1.appspot.com',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDkwU9og-g5E7fexR9OCHjZgum1tyZrclU',
    appId: '1:856857047078:ios:64ae52600cdc3baf4576e7',
    messagingSenderId: '856857047078',
    projectId: 'flutter-test-bf5a1',
    storageBucket: 'flutter-test-bf5a1.appspot.com',
    iosBundleId: 'com.example.crudFirebase.RunnerTests',
  );
}
