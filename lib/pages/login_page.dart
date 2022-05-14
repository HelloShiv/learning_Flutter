import 'package:app_learning/util/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            'assests/images/login_image.png',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter User Name", labelText: "User Name"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter Password here", labelText: "Password"),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   child: const Text("Login"),
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(100, 40),
                //   ),
                // ),

                //// Custom login button for login
                InkWell(
                  splashColor: Colors.blueAccent,
                  onTap: () async {
                    // Navigator.pushNamed(context, MyRoutes.homeRoute);
                    setState(() {
                      changeButton = true;
                    });
                      await Future.delayed(Duration(seconds: 1));
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    alignment: Alignment.center,
                    height: 40,
                    width: changeButton?40:100,
                    child: Center(
                        child: changeButton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(changeButton ? 100 : 8),
                      color: Colors.deepPurple,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
