import 'package:architecture/barcode/sucess.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'dart:convert';
import '../details/details.dart';
import '../notification/notification.dart';

class QRScannerPage extends StatefulWidget {
  const QRScannerPage({super.key});

  @override
  State<QRScannerPage> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String scannedData = '';
  bool isFlashOn = false;
  bool isScanned = false;
  bool isCameraActive = true;
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
    } catch (e) {
      return null;
    }
    return null;

  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
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
            icon: Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationView()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                QRView(
                  key: qrKey,
                  onQRViewCreated: _onQRViewCreated,
                  overlay: QrScannerOverlayShape(
                    borderColor: Theme.of(context).primaryColor,
                    borderRadius: 5,
                    borderLength: 30,
                    borderWidth: 10,
                    cutOutSize: 250,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      isFlashOn ? Icons.flash_on : Icons.flash_off,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () async {
                      await controller?.toggleFlash();
                      bool? flashStatus = await controller?.getFlashStatus();
                      setState(() {
                        isFlashOn = flashStatus ?? false;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  scannedData.isEmpty ? 'Scan a QR code' : 'Result: $scannedData',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              if (controller != null) {
                await controller!.resumeCamera();
                setState(() {
                  isCameraActive = true;
                  scannedData = '';
                });
              }
            },
            child: const Text('Try again'),
          ),
        ],
      ),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) async {
      if (!isCameraActive) return;

      final code = scanData.code ?? '';
      if (code.isEmpty) return;

      final qrData = parseQr(code);

      if (qrData != null) {
        isScanned = true;
        isCameraActive = false;
        await controller.pauseCamera();

        setState(() {
          scannedData = code;
        });


        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailsView(
            plate_number: qrData['plate_number'],
            plate_letters: qrData['plate_letters'],
            brand: qrData['brand'],
            color: qrData['color'],
          )),
        );
      } else {
        isCameraActive = false;
        await controller.pauseCamera();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(child: Text('Failed ❌')),
            backgroundColor: Colors.red,
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }
}


