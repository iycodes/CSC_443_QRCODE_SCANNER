import 'package:flutter/material.dart';

class ScanResultScreen extends StatelessWidget {
  final String scanResult;
  const ScanResultScreen({super.key, required this.scanResult});

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: const Center(
          child: Text(
            "Scan Result",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: SizedBox(
          height: deviceHeight,
          width: deviceWidth,
          child: Column(
            children: [
              const Spacer(),
              Text(scanResult),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, "/",
                            arguments: ScanResultScreenArgs(
                                barcodeResult: "This is a barcode text"));
                      },
                      child: const Row(
                        children: [
                          Image(
                            image: AssetImage(
                              "assets/home.png",
                            ),
                            height: 20,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(fontWeight: FontWeight.w800),
                          ),
                        ],
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black),
                      onPressed: () {
                        Navigator.pushNamed(context, "/scanner_screen",
                            arguments: ScanResultScreenArgs(
                                barcodeResult: "This is a barcode text"));
                      },
                      child: const Text(
                        "Scan Again",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ScanResultScreenArgs {
  final String? barcodeResult;

  ScanResultScreenArgs({required this.barcodeResult});
}
