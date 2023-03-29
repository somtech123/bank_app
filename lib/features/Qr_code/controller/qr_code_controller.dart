import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:get/get.dart';

class QrCodeControllers extends GetxController {
  var qrCode = ''.obs;
  String _scanBarcode = 'Unknown';

  RxString scannedQrcode = ''.obs;

  scanQr() async {
    try {
      scannedQrcode.value = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'cancel',
        true,
        ScanMode.QR,
      );
      _scanBarcode = scannedQrcode.value;
      update();
    } on PlatformException catch (e) {
      scannedQrcode.value = 'Failed to get platform version.';
    }
  }
}
