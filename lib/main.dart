import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_plug/providers/location_provider.dart';
import 'package:the_plug/providers/ui_provider.dart';
import 'package:the_plug/screens/auth_screen/auth_screen.dart';
import 'package:the_plug/screens/service_detail/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:provider/provider.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LocationProvider()),
        ChangeNotifierProvider(create: (_) => UIProvider()),
      ],
      child: GetMaterialApp(
        title: 'The Plug',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.blueGrey[50],
          //nunito
          //helvetica
        ),
        builder: (context, child) {
          return MediaQuery(
            child: child!,
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
          );
        },
        home: const AuthScreen(),
        routes: {
          ServiceDetailsScreen.routeName: (ctx) => const ServiceDetailsScreen(),
        },
      ),
    );
  }
}
