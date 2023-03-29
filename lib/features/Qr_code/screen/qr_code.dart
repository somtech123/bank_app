import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import '../../../constants/color_constanat.dart';
import '../controller/qr_code_controller.dart';

class QrCodeScreen extends StatefulWidget {
  QrCodeScreen({super.key});
  static String path = '/QrCode';

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  var ctr = Get.put(QrCodeControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => ctr.scanQr(),
              child: Text('kl'),
            ),
          )
        ],
      ),
    );
  }
}
