import 'package:find_your_job/OnboardingScreens/login.dart';
import 'package:find_your_job/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class MyRegister extends StatefulWidget {
   const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  bool loading = false ;
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

  void Signup()
  {
    setState(() {
      loading = true;
    });
    if(_formKey.currentState!.validate()){
      _auth.createUserWithEmailAndPassword(
          email: emailcontroller.text.toString(),
          password: passwordController.text.toString()).then((value) {
        setState(() {
          loading = false;
        });
      }).onError((error, stackTrace) {
        Utils().toastMessage(error.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyLogin())
        );
        setState(() {
          loading = false;
        });
      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/register.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35, top: 30),
                child: const Text(
                  'Create\nAccount',
                  style: TextStyle(color: Colors.white, fontSize: 33),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.28),
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
                                TextField(
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: "Name",
                                      prefixIcon: const Icon(Icons.person),
                                      hintStyle: const TextStyle(color: Colors.white),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                TextFormField(
                                  style: const TextStyle(color: Colors.white),
                                  controller: emailcontroller,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: "Enter Email",
                                      hintStyle: const TextStyle(color: Colors.white),
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
                                  style: const TextStyle(color: Colors.white),
                                  obscureText: true,
                                  controller: passwordController,
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.white,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                          color: Colors.black,
                                        ),
                                      ),
                                      hintText: "Password",
                                      prefixIcon: const Icon(Icons.lock),
                                      hintStyle: const TextStyle(color: Colors.white),
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
                            ),
                          ),



                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w700),
                                ),
                                GestureDetector(
                                 // onTap: () => Get.to(MyLogin()),
                                  onTap: (){
                                 if(_formKey.currentState!.validate()){
                                   Signup();

                                 }
                                    /*
                                    setState(() {
                                      loading = true;
                                    });
                                    if(_formKey.currentState!.validate()){
                                      _auth.createUserWithEmailAndPassword(
                                          email: emailcontroller.text.toString(),
                                          password: passwordController.text.toString()).then((value) {
                                        setState(() {
                                          loading = false;
                                        });
                                      }).onError((error, stackTrace) {
                                        Utils().toastMessage(error.toString());
                                        setState(() {
                                          loading = false;
                                        });
                                      });
                                    }

                                     */

                                  },
                                  child: const CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff4c505b),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        // Center(child: loading ? CircularProgressIndicator(strokeWidth: 3,color: Colors.white,): Text('', )),


                                        Icon(
                                        color: Colors.white,
                                          Icons.arrow_forward,
                                          size: 30,


                                        ),
                                      ],
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
                                    Navigator.pop(context);
                                  },
                                  style: const ButtonStyle(),
                                  child: const Text(
                                    'Sign In',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                                ),
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