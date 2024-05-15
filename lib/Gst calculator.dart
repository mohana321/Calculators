import 'package:flutter/material.dart';

class gstt extends StatefulWidget {
  const gstt({super.key});

  @override
  State<gstt> createState() => _gstcalcState();
}

class _gstcalcState extends State<gstt> {
  double amt = 0;
  double gst = 0;
  double ttl = 0;

  final text1 = TextEditingController();
  final text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: Text(
            "GST CALCULATOR",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlueAccent,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.compare_arrows_outlined,
                color: Colors.white,
              )),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: text1,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade100,
                  border: OutlineInputBorder(),
                  hintText: "Bill Amount",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: text2,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink.shade100,
                  border: OutlineInputBorder(),
                  hintText: "GST Calculator",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        gst = (double.parse(text1.text) *
                            double.parse(text2.text) /
                            100);
                        ttl = double.parse(text1.text) + gst;
                        double sgst = gst / 2;
                        double cgst = gst / 2;

                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Container(
                                  height: 200,
                                  width: 200,
                                  child: Column(
                                    children: [
                                      Text("Gst:$gst"),
                                      Text("Total:$ttl"),
                                      Text("CGST:$cgst"),
                                      Text("SGST:$sgst"),
                                    ],
                                  ),
                                ),
                              );
                            });
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink.shade200),
                    // style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white70),
                    child: Text(
                      "Exclusive",
                      style: TextStyle(color: Colors.black),
                    )),
                ElevatedButton(
                    onPressed: () {
                      gst = (double.parse(text1.text) * double.parse(text2.text) / (100 + double.parse(text2.text)));
                      ttl = double.parse(text1.text) - gst;
                      double sgst = gst / 2;
                      double cgst = gst / 2;

                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            content: Container(
                              height: 200,
                              width: 200,
                              child: Column(

                                children: [
                                  Text("Actual Amount:$ttl"),
                                  Text("Total GST:$gst"),
                                  Text("sgst:$sgst"),
                                  Text("cgst:$cgst"),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink.shade200,
                    ),
                    // style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.blue),
                    child: Text("Inclusive",
                        style: TextStyle(color: Colors.black))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
