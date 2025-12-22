import 'package:architecture/home/homeLeader/shipping_history_item.dart';
import 'package:flutter/material.dart';

import '../../notification/notification.dart';
import '../../utils/images.dart';

class HomeLeaderView extends StatelessWidget {
  const HomeLeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: scheme.primary,
              expandedHeight: 250,
              pinned: true,
              floating: false,
              // better behavior with NestedScrollView
              toolbarHeight: 50,
              shadowColor: scheme.primary,
              title: const Text(
                "Truck",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  Images.logo,
                  fit: BoxFit.contain,
                ),
              ),
              actions: [
                IconButton(
                  icon:
                      const Icon(Icons.notifications_none, color: Colors.white),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const NotificationView()),
                    );
                  },
                )
              ],
              flexibleSpace: FlexibleSpaceBar(
                background: SafeArea(
                  bottom: false,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 70, 20, 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Track your truck",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "Enter your parcel tracking number to track your truck live",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Row(
                            children: [
                              Icon(
                                Icons.search,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Tracking number",
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemCount: 1 + 10,
          // 1 header + 10 items
          separatorBuilder: (_, index) {
            if (index == 0) return const SizedBox(height: 0);
            return const SizedBox(height: 12);
          },
          itemBuilder: (context, index) {
            if (index == 0) {
              return const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Shipping History",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 16),
                  Divider(),
                  SizedBox(height: 16),
                ],
              );
            }

            return const ShippingHistoryItem(
              trackingNumber: "#5R9G87R",
              date: "14 May 2023",
              fromAddress: "1234 Elm Street Springfield, IL 62701",
              toAddress: "5678 Maple Avenue Seattle, WA 98101",
              statusLabel: "Delivered",
              statusBg: Color(0xffE9FFE5),
              statusText: Color(0xff29BE10),
            );
          },
        ),
      ),
    );
  }
}
