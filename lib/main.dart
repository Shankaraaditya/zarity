import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:zarity/constants/colors.dart';
import 'package:zarity/provider/firebaseProvider.dart';
import 'package:zarity/screens/home/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
    apiKey: "AIzaSyCPY3qgBEjs3Mgnlh_TuSrbrNBaCpw2mgs",
    appId: "1:645910071187:android:7178d51385c5822d658a66",
    messagingSenderId: "",
    projectId: "zarity-d4249",
  ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => FirestoreProvider()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 1095),
        builder: (context, widget) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: CustomColors.appPrimaryColor,
          ),
          home: HomeScreen(),
        ),
      ),
    );
  }
}
