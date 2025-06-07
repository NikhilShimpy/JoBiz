

import 'package:find_your_job/OnboardingScreens/forgotpassword.dart';
import 'package:find_your_job/OnboardingScreens/sign_up.dart';
import 'package:find_your_job/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:find_your_job/OnboardingScreens/Home.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MyLogin extends StatefulWidget {
   const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}
class _MyLoginState extends State<MyLogin> {
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordController.dispose();
  }
  void Login(){
    _auth.signInWithEmailAndPassword(
        email: emailcontroller.text,
        password: passwordController.text.toString()
    ).then((value) {
      Utils().toastMessage(value.user!.email.toString());
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())
      );

    }).onError((error, stackTrace) {
      Utils().toastMessage(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/login.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(),
              Container(
                padding: const EdgeInsets.only(left: 35, top: 130),
                child: const Text(
                  'Welcome\nBack',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            Form(
                                key: _formKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      style: const TextStyle(color: Colors.black),
                                      controller: emailcontroller,
                                      decoration: InputDecoration(

                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "Enter Email",
                                          prefixIcon: const Icon(Icons.alternate_email),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                      validator: (value){
                                        if(value!.isEmpty){
                                          return 'Enter email';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    TextFormField(
                                      style: const TextStyle(),
                                      obscureText: true,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                          fillColor: Colors.grey.shade100,
                                          filled: true,
                                          hintText: "Password",
                                          prefixIcon: const Icon(Icons.lock),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          )),
                                      validator: (value){
                                        if(value!.isEmpty){
                                          return 'Enter password';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),

                                  ],
                                )
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Sign in',
                                  style: TextStyle(
                                      fontSize: 27, fontWeight: FontWeight.w700),
                                ),


                                GestureDetector(
                                 // onTap: () => Get.to(HomeScreen()),
                                  onTap: (){
                                    if(_formKey.currentState!.validate()){
                                      Login();


                                    }
                                  },

                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff4c505b),
                                    child: Icon(
                                        color: Colors.white,
                                          Icons.arrow_forward,

                                    ),
                                  ),

                ),

                              ],
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    // Navigator.pushNamed(context, 'register');
                                  // Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const MyRegister()));

                                  Get.to(()=> const MyRegister());
                                  },
                                  style: const ButtonStyle(),
                                  child: const Text(
                                    'Sign Up',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 18),
                                  ),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Get.to(()=>  const ForgotPasswordPage());

                                    },
                                    child: const Text(
                                      'Forgot Password',
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Color(0xff4c505b),
                                        fontSize: 18,
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



