import 'package:en_route/screens/otp_verification.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() {
    return _PhoneNumberScreenState();
  }
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Phone Number'),
        centerTitle: true,
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
            'Enter your mobile number',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
              const Text('We will send the 4 digit verification code', style: TextStyle(
                fontSize: 15, color: Colors.grey
              ),),

              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.local_phone_outlined),
                  hintText: '9019102139',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),

                    const SizedBox(
                      height: 455,
                    ),

                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const OTPVerification();
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
                            child: Text('Generate OTP', style: TextStyle(
                              fontSize: 17, color: Colors.white,
                            ),)),
                      ),
                    ),

        ]),
      ),
    );
  }
}

