import 'package:flutter/material.dart';

class SendData extends StatelessWidget {
  const SendData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff2490A9),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: ListView(
              children: [
                SizedBox(height: 40),
                Text("Shipping History",
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700)),
                SizedBox(height: 24),
                Divider(),
                SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Color(0xffE9ffe5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          //child: Image.asset("assets/images/box.png"),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "#5R9G87R",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xffD2D6DB)),
                          ),
                          Text(
                            "14 may 2023",
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xffD2D6DB)),
                          ),
                        ]),
                        Row(
                          children: [
                            Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle)),
                            SizedBox(
                              width: 13,
                            ),
                            Text(
                              "From",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBaBFc5)),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "1234 Elm Street Springfield, IL 62701",
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14),
                        ),
                        SizedBox(height: 4),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "To",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffBaBFc5)),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                                width: 5,
                                height: 5,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle)),
                            SizedBox(width: 8),
                            Text(
                              "5678 Maple Avenue Seattle, WA 98101",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13),
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "Delivery Status:",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffBaBFc5)),
                            ),
                            SizedBox(width: 16),
                            Container(height: 24, width: 72,
                              decoration: BoxDecoration(
                                  color: Color(0xffE9FFE5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                "Delivered",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color(0xff29BE10)),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
