import 'package:en_route/screens/email_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPVerification extends StatefulWidget {
  const OTPVerification({super.key});

  @override
  State<OTPVerification> createState() {
    return _PhoneNumberScreenState();
  }
}

class _PhoneNumberScreenState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('OTP Verification'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 14, right: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
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
          ]),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Enter One Time Password',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Enter OTP sent to +234 9019102139',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 60,
              height: 65,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              width: 60,
              height: 65,
              child: TextFormField(

                onChanged: (value){
                  if(value.length == 1){
                    FocusScope.of(context).nextFocus();
                  }
                  if(value == ''){
                    FocusScope.of(context).previousFocus();
                  }
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              width: 60,
              height: 65,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 60,
              height: 65,
              child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 60,
              height: 65,
              child: TextFormField(
                textAlign: TextAlign.center,
                // maxLines: 1,
                style: const TextStyle(
                    fontSize: 15,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Didn't receive OTP?"),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Resend",
                    style: TextStyle(
                      color: Colors.redAccent,
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 405,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const EmailScreen();
              }));
            },
            child: Container(
              alignment: Alignment.bottomCenter,
              height: 50,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                  child: Text(
                'Generate OTP',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              )),
            ),
          ),
        ]),
      ),
    );
  }
}
