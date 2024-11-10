import 'package:en_route/screens/phone_number_screen.dart';
import 'package:flutter/material.dart';

class ApprovalScreen extends StatefulWidget{
  const ApprovalScreen({super.key});

  @override
  State<ApprovalScreen> createState() {
    return ApprovalScreenState();
  }
}

class ApprovalScreenState extends State<ApprovalScreen> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('For Getting Approval',style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.w600,
                  ),),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text('We kindly request you yo provide us with some essential '
                      'information to proceed with your admin approval.',
                    style: TextStyle(color: Colors.grey),),

                  const SizedBox(
                    height: 60,
                  ),
                  // Stepper(steps: List<Step>),
                  Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(10),
                     color: Colors.black12,
                   ),
                   child:
                   Stepper(
                     currentStep: _currentStep,
                       onStepTapped: (int newIndex){
                       _currentStep = newIndex;
                       },
                       onStepContinue: (){
                       if (_currentStep != 2) {
                         setState(() {
                           _currentStep += 1;
                         });
                       }
                       },
                       onStepCancel: (){
                       if(_currentStep != 0){
                         setState(() {
                           _currentStep -= 1;
                         });
                       }
                       },
                       steps: const [
                         Step(
                             title: Text('Verified Phone Number'),
                             content: Text('To proceed please provide a valid and '
                                 'verified phone number for verification purposes.',
                               style: TextStyle( color: Colors.black
                             ),)),
                         Step(
                             title: Text('Email'),
                             content: Text('We require a valid email address to'
                                 ' keep you updated on important notifications ')),
                         Step(
                             title: Text('Driver License'),
                             content: Text('Kindly enter your license number, '
                                 'ensuring its accuracy for verification purposes'))
                       ]),
                  ),
                  const SizedBox(
                    height: 65,
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const PhoneNumberScreen();
                      }));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green
                          ),
                          child: const Text('Continue'),
                        ),
                      ),
                    )
                  )
              ],
              ),
            ),
          )
    );
  }
}