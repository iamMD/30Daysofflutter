import 'package:catelog_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext context) async {
    if(_formkey.currentState!.validate()) {
      setState(() {
      changeButton = true;
    });
    
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoutes);
    setState(() {
      changeButton = true;
    });
    setState(() {
      changeButton = false;
    });
  }
  }
  
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset(
                  "assets/images/login2_img.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Wellcome $name",
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 32.0,
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter User Name",
                          labelText: "Enter User Name",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "User name cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password  cannot be empty";
                          }
                          else if (value.length<6){
                            return "Password length cannot be less than 6";

                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Material(
                        color: const Color.fromARGB(255, 110, 11, 249),
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToHome(context),
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            width: changeButton ? 50 : 150,
                            height: 50,
                            alignment: Alignment.center,
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
