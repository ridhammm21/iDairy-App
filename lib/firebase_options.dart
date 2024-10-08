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
    apiKey: 'AIzaSyAnGj7olE1h9JsJxmOYVAXVqJxY8lWg4y8',
    appId: '1:742732723642:web:df46c1971713287b6c9983',
    messagingSenderId: '742732723642',
    projectId: 'idairyapp-f270e',
    authDomain: 'idairyapp-f270e.firebaseapp.com',
    storageBucket: 'idairyapp-f270e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDNMWdo35HV2mpE5xwDp0jB2ejaByFUcvY',
    appId: '1:742732723642:android:ce5a46938fc610806c9983',
    messagingSenderId: '742732723642',
    projectId: 'idairyapp-f270e',
    storageBucket: 'idairyapp-f270e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3cNCr0xFfD43BAtNdaMUrXfukoCaUDhw',
    appId: '1:742732723642:ios:2885325acbd2f8506c9983',
    messagingSenderId: '742732723642',
    projectId: 'idairyapp-f270e',
    storageBucket: 'idairyapp-f270e.appspot.com',
    iosBundleId: 'com.example.idairy',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3cNCr0xFfD43BAtNdaMUrXfukoCaUDhw',
    appId: '1:742732723642:ios:2885325acbd2f8506c9983',
    messagingSenderId: '742732723642',
    projectId: 'idairyapp-f270e',
    storageBucket: 'idairyapp-f270e.appspot.com',
    iosBundleId: 'com.example.idairy',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAnGj7olE1h9JsJxmOYVAXVqJxY8lWg4y8',
    appId: '1:742732723642:web:33f77f07164518356c9983',
    messagingSenderId: '742732723642',
    projectId: 'idairyapp-f270e',
    authDomain: 'idairyapp-f270e.firebaseapp.com',
    storageBucket: 'idairyapp-f270e.appspot.com',
  );
}
