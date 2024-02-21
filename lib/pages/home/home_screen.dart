import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qrcode_scanner/pages/scan_result/scan_result.dart';
import 'package:qrcode_scanner/pages/scanner/qr_scanner.dart';
import 'package:qrcode_scanner/pages/scanner/scanner_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // leading: null,
        automaticallyImplyLeading: false,

        title: const Text("CSC 443",
            style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w800)),
        backgroundColor: Colors.black,
        elevation: 2,
      ),
      backgroundColor: Colors.grey[100],
      body: SizedBox(
        height: height,
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.max,

          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Text(
                "IMPLEMENTATION OF COMPUTER VISION WITH A QRCODE SCANNER",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                text_,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
                softWrap: true,
              ),
            ),
            const Spacer(),
            TextButton(
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    textStyle: const TextStyle(
                      fontSize: 20,
                    ),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, "/scanner_screen");
                },
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Scan a QrCode",
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image(
                      image: AssetImage(
                        "assets/qrcode.png",
                      ),
                      height: 30,
                    )
                  ],
                )),
            TextButton(
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.pushNamed(context, "scan_result_screen",
                      arguments: ScanResultScreenArgs(
                          barcodeResult: "This is a barcode text"));
                },
                child: const Text("scan result screen")),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

const String text_ = """ 
    QR codes were designed to store information in a two-dimensional barcode that could be quickly scanned and decoded. Unlike traditional barcodes that store data horizontally, QR codes store data both vertically and horizontally, allowing them to store significantly more information.

    They consist of black squares arranged on a white background, forming a square grid. The arrangement of these squares encodes the data stored in the QR code
     """;
