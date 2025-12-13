import 'package:flutter/material.dart';

class ShippingHistoryItem extends StatelessWidget {
  final String trackingNumber;
  final String date;
  final String fromAddress;
  final String toAddress;
  final String statusLabel;
  final Color statusBg;
  final Color statusText;

  const ShippingHistoryItem({
    super.key,
    required this.trackingNumber,
    required this.date,
    required this.fromAddress,
    required this.toAddress,
    required this.statusLabel,
    required this.statusBg,
    required this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    const muted = Color(0xffBABFC5);
    const dotGrey = Color(0xffD2D6DB);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: statusBg,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset("assets/images/box.png"),
        ),
        const SizedBox(width: 16),

        // FIX: put content in Expanded so long addresses don't overflow the Row
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    trackingNumber,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: dotGrey),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    date,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: dotGrey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _bullet(),
                  const SizedBox(width: 10),
                  const Text(
                    "From",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: muted),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                fromAddress,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  _bullet(),
                  const SizedBox(width: 10),
                  const Text(
                    "To",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: muted,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                toAddress,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 13),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    "Delivery Status:",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: muted),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    height: 24,
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.center,
                    // FIX: center text inside pill
                    decoration: BoxDecoration(
                      color: statusBg,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      statusLabel,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: statusText),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bullet() {
    return Container(
      width: 5,
      height: 5,
      decoration:
          const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
