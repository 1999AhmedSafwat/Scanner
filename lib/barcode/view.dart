import 'package:flutter_zxing/flutter_zxing.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import '../details/details.dart';
import '../notification/notification.dart';





class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScannerPage> {
  String scannedData = '';
  bool isScanning = false;

  Map<String, dynamic>? parseQr(String code) {
    try {
      final decoded = jsonDecode(code);
      if (decoded is Map<String, dynamic>) {
        if (decoded.containsKey('plate_number') &&
            decoded.containsKey('plate_letters') &&
            decoded.containsKey('brand') &&
            decoded.containsKey('color')) {
          return decoded;
        }
      }
    } catch (_) {
      return null;
    }
    return null;
  }
  //
  // Future<void> scanQR() async {
  //   if (isScanning) return;
  //
  //   setState(() => isScanning = true);
  //
  //   final picker = ImagePicker();
  //   final image = await picker.pickImage(source: ImageSource.camera);
  //
  //   if (image == null) {
  //     setState(() => isScanning = false);
  //     return;
  //   }

    // final String? result = await decodeImage(image.path);
    // final code = result ?? '';
    //
    // if (code.isEmpty) {
    //   _showError();
    //   setState(() => isScanning = false);
    //   return;
    // }
  //
  //
  //   if (qrData != null) {
  //     setState(() {
  //       scannedData = code;
  //       isScanning = false;
  //     });
  //
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(
  //         builder: (context) => DetailsView(
  //           plate_number: qrData['plate_number'],
  //           plate_letters: qrData['plate_letters'],
  //           brand: qrData['brand'],
  //           color: qrData['color'],
  //         ),
  //       ),
  //     );
  //   } else {
  //     _showError();
  //     setState(() => isScanning = false);
  //   }
  // }

  void _showError() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Center(child: Text('Failed ❌')),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: scheme.primary,
      appBar: AppBar(
        title: const Text('Scan QR code', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: scheme.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationView()),
              );
            },
          ),
        ],
      ),
      body:
      ReaderWidget(
        onScan: (result) async {
          // Do something with the result
          debugPrint(result.toString());
        },
      ),
    );
  }
}
