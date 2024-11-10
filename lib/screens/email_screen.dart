import 'package:en_route/screens/drivers_licence_screen.dart';
import 'package:flutter/material.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() {
    return _EmailScreenState();
  }
}

class _EmailScreenState extends State<EmailScreen> {

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final isKeyboard =
        MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
        // resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Email'),
          centerTitle: true,
        ),
        body: Padding(
            padding: const EdgeInsets.only(left: 14, right: 15),
            child:
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if(!isKeyboard)
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
                      const Text('Enter your email address', style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text('Add an email address', style: TextStyle(
                          color: Colors.grey
                      ),),

                      TextFormField(
                        controller: _emailController,
                        validator: (text){
                          if(_emailController.text.isEmpty){
                            return 'Pls fill your email.';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.phonelink_erase_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),

                      const Text('Create Password', style: TextStyle(
                        color: Colors.grey
                      ),),

                      TextFormField(
                        controller: _passwordController,
                        validator: (text){
                        if(_passwordController.text.isEmpty){
                          return 'pls enter password';
                        }else if(
                        _passwordController.text.length < 8){
                          return "Password is too short";
                        }
                        return null;
                      },
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.password_outlined),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            )
                        ),
                      ),
                      const Text('Must be at least 8 characters.', style: TextStyle(
                        color: Colors.green
                      ),),




                    Spacer(),
                      SizedBox(
                        height: isKeyboard?20:300,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return const DriversLicenceScreen();
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
                    ]

                )
        )
    );
  }
}
