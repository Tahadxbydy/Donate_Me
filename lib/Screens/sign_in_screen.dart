import 'package:donate_me/Screens/sign_up_screen.dart';
import 'package:donate_me/constants/constants.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);
  static const routeName = 'SignIn';
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // TextEditingController _emailController = TextEditingController();
  // TextEditingController _passwordController = TextEditingController();
  // bool _obscureText = true;

  // void Validate(String email) {
  //   bool isvalid = EmailValidator.validate(email);
  //   print(isvalid);
  // }

  // Future<void> _signIn() async {
  //   try {
  //     final String email = _emailController.text.trim();
  //     final String password = _passwordController.text.trim();

  //     await _auth.signInWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: ((context) => bottomnav())),
  //     );
  //   } catch (error) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text(error.toString())),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width / 20,
            right: MediaQuery.of(context).size.width / 20,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    child: Image(
                  image: const AssetImage("assets/donatelogo.png"),
                  width: MediaQuery.of(context).size.width / 2,
                )),
                kSmallSizedBox,

                Text(
                  "Welcome Back!",
                  style: Theme.of(context).textTheme.headlineLarge,
                  textAlign: TextAlign.center,
                ),

                klargeSizedBox,
                //email field
                TextFormField(
                  // text editing controller
                  // controller: _emailController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    // labelText: 'Email address',
                    prefixIcon: const Icon(Icons.mail_outline_outlined),
                    hintText: "Enter Email",
                  ),
                ),
                //space
                kSmallSizedBox,
                //password field
                TextFormField(
                  // text editing controller
                  // controller: _passwordController,
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  // obscureText: _obscureText,
                  decoration: const InputDecoration().copyWith(
                    prefixIcon: const Icon(Icons.lock_open_outlined),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          // _obscureText = !_obscureText;
                        });
                      },
                      icon: const Icon(Icons.visibility
                          // _obscureText ? Icons.visibility_off : Icons.visibility,
                          ),
                    ),
                    hintText: "Password",
                  ),
                ),

                //space
                klargeSizedBox,
                Text(
                  "We’ll help you if you forget your password you can get our help and reset your password.",
                  style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
                ),
                klargeSizedBox,
                //forgetpassword?
                InkWell(
                  onTap: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) {
                    //   return const forgetpassword();
                    // }));
                  },
                  child: Text(
                    "Forget Password?",
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                //space
                kSmallSizedBox,
                //login button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, navigate to the next screen
                      // _signIn();
                    } else {
                      // Form is not valid, show Snackbar with an error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Please fill in all the fields.')),
                      );
                    }
                  },
                  child: const Text(
                    "Login",
                    textAlign: TextAlign.center,
                  ),
                ),

                kSmallSizedBox,

                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 7,
                      right: MediaQuery.of(context).size.width / 7,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignUp.routeName);
                          },
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
