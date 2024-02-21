import 'package:flutter/material.dart';
import 'package:qrcode_scanner/pages/scanner/qr_scanner.dart';

class ScannerScreen extends StatelessWidget {
  const ScannerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const BarcodeScannerWithController();
  }
}
