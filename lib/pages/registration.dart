import 'package:flutter/material.dart';
import 'package:gdg_app/models/myTextField.dart';
import 'package:gdg_app/pages/homepage.dart';
import 'package:gdg_app/pages/login.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Create an account",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.25),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .8,
                        child: const Text(
                          "Get to know about all the GDG events simply by creating a new account",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              // fontSize: 30,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.25),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Mytextfield(
                        hintText: 'Enter Your Username',
                        obscureText: false,
                        textcontroller: usernameController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Mytextfield(
                        hintText: 'Enter Your Email',
                        obscureText: false,
                        textcontroller: emailController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Mytextfield(
                        hintText: 'Enter Your Phone Number',
                        obscureText: false,
                        textcontroller: phoneController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Mytextfield(
                        hintText: 'Enter Your Password',
                        obscureText: true,
                        textcontroller: passwordController,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.blue[700],
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              "Sign Up",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Or With",
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 16),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                color: Colors.blue[700],
                                borderRadius: BorderRadius.circular(8)),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("assets/Facebook.png"),
                                  height: 30,
                                ),
                                Expanded(
                                  child: Text(
                                    "Signup with Facebook",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.grey, width: 2.0)),
                            child: Row(
                              children: [
                                Image(
                                  image: AssetImage("assets/Google.png"),
                                  height: 30,
                                ),
                                Expanded(
                                  child: Text(
                                    "Signup with Google",
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account ?"),
                          TextButton(
                            onPressed: () => Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                                    builder: (context) => LoginPage())),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
