// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Center",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18),
              child: Container(
                child: Card(
                  elevation: 10,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 40,
                                    backgroundImage:
                                        NetworkImage("/assets/images/m2.jpg")),
                                Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "LIONEL MESSI",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Column(
                                                children: [
                                                  Icon(
                                                    Icons.edit,
                                                    color: Colors.white70,
                                                  ),
                                                  SizedBox(height: 4),
                                                  Container(
                                                    width: 20,
                                                    height: 2,
                                                    color: Colors.white70,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text('Football player',
                                            style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white70,
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              container1("864", "Collect"),
                              container1("51", "Attention"),
                              container1("267", "Track"),
                              container1("39", "Coupons"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  container2(Icons.account_balance_wallet, 'Wallet'),
                  container2(Icons.local_shipping, 'Delivery'),
                  container2(Icons.message, 'Message'),
                  container2(Icons.monetization_on, 'Service')
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  container3(
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRDxrn0m1ZasXT8U_ypUCJ77FFPEfu9pMDS2o2yiRnvJY8P8-Z6",
                      "Address",
                      "Ensure your harvesting address"),
                  container3(
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSLr4CNiySUZnqOkcvZNrWz0S99Q2goEcbEJFTW09Jx_nuH8YMt",
                      "Privacy",
                      "System permission change"),
                  container3(
                      "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2Cu-KgWp28IG4vMdeghdDqU95uri7TMWw8A8Sw_eOZmg1H0ss",
                      "General",
                      "Basic functional settings"),
                  container3(
                      "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTDHiAtheGh0Nt3bMQ4elTALx6RcTh8DuFDUQjAfT6ABsBY0iTr",
                      "Notification",
                      "Take over the news in time"),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}




Widget container1(String text1, String text2) {
  return Column(
    children: [
      Text(
        text1,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Text(
        text2,
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    ],
  );
}









Widget container2(IconData icon1, String text1) {
  return Column(
    children: [
      Icon(icon1, size: 50, color: Colors.black45),
      Text(
        text1,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ],
  );
}











Widget container3(String image, String text1, String text2) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Card(
      elevation: 8,
      shadowColor: Colors.blueAccent,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.network(
                  image,
                  width: 50,
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        text2,
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios, color: Colors.grey),
          ],
        ),
      ),
    ),
  );
}
