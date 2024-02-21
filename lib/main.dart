import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:qrcode_scanner/pages/home/home_screen.dart';
import 'package:qrcode_scanner/pages/scan_result/scan_result.dart';
import 'package:qrcode_scanner/pages/scanner/scanner_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      initialRoute: "/home_screen",
      routes: {
        "/home_screen": (context) => const HomeScreen(),
        "/scanner_screen": (context) => const ScannerScreen(),
        // "/scan_result_screen": (context) => const ScanResultScreen();
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == "scan_result_screen") {
          final args = settings.arguments as ScanResultScreenArgs;
          return MaterialPageRoute(builder: (context) {
            return ScanResultScreen(scanResult: args.barcodeResult!);
          });
        }
        return null;
      },
    );
  }
}
