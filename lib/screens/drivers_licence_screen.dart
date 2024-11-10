import 'package:flutter/material.dart';

class DriversLicenceScreen extends StatefulWidget {
  const DriversLicenceScreen({super.key});

  @override
  State<DriversLicenceScreen> createState() {
    return DriversLicenceScreenState();
  }
}

class DriversLicenceScreenState extends State<DriversLicenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Driver's Licence"),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 14, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 6,
                    width: 62,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 6,
                    width: 62,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 6,
                    width: 62,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 6,
                    width: 62,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 6,
                    width: 62,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Enter your info exactly as it appears on your driver's "
                "license so we cal verify  your eligibility",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("FirstName:"),
                      SizedBox(
                        width: 150,
                        child: TextFormField(
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.transparent
                                  )
                              ),
                              disabledBorder:  OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.transparent
                                )
                            )
                          ),

                        ),
                      ),
                    ],
                  ),
                  Divider()
                ],
              ),
            ],
          ),
        ));
  }
}
