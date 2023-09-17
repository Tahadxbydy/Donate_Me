import 'dart:io';

import 'package:donate_me/constants/constants.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const routeName = 'signup';

  @override
  State<SignUp> createState() => _SignupState();
}

class _SignupState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController1 = TextEditingController();
  bool _obscureText = true;
  bool _obscureText2 = true;

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // final FirebaseStorage _storage = FirebaseStorage.instance;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  String _selectedBloodGroup = '';
  File? _selectedImage;

  // Future<void> _getImage() async {
  //   final imagePicker = ImagePicker();
  //   final XFile? selectedImage =
  //       await imagePicker.pickImage(source: ImageSource.gallery);
  //   if (selectedImage != null) {
  //     setState(() {
  //       _selectedImage = File(selectedImage.path);
  //     });
  //   }
  // }

  final List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'O+',
    'O-',
    'AB+',
    'AB-'
  ];

  Future<void> _signUp() async {
    try {
      final String name = _nameController.text.trim();
      final String email = _emailController.text.trim();
      final String phone = _phoneController.text.trim();
      final String city = _cityController.text.trim();
      final String bloodGroup = _selectedBloodGroup;
      final String password = _passwordController.text.trim();
      final String description = _descriptionController.text.trim();

      // final UserCredential authResult =
      //     await _auth.createUserWithEmailAndPassword(
      //   email: email,
      //   password: password,
      // );

      // final User? user = authResult.user;

      // await _firestore.collection('users').doc(user?.uid).set({
      //   'name': name,
      //   'email': email,
      //   'phone': phone,
      //   'city': city,
      //   'bloodGroup': bloodGroup,
      //   'description': description,
      // });
      // if (_selectedImage != null) {
      //   final imageRef = _storage.ref().child('user_images').child(user!.uid);
      //   await imageRef.putFile(_selectedImage!);
      //   final String imageUrl = await imageRef.getDownloadURL();

      //   await _firestore.collection('users').doc(user.uid).update({
      //     'imageURL': imageUrl,
      //   });
      // }
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: ((context) => const signupotp())),
      // );

      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          backgroundColor: Colors.green, content: Text("signup Successful")));
    } catch (e) {
      final snackBar = SnackBar(
        content: Text("Error signing up: ${e.toString()}"),
      );
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
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
                klargeSizedBox,
                Center(
                  child: Positioned(
                    top: 140,
                    right: 0,
                    left: 0,
                    child: SizedBox(
                      height: 160,
                      width: 160,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          CircleAvatar(
                            backgroundImage: _selectedImage != null
                                ? FileImage(_selectedImage!)
                                : const AssetImage('assets/picker.png')
                                    as ImageProvider,
                          ),
                          Positioned(
                            bottom: -20,
                            left: -50,
                            right: -50,
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 18,
                              width: MediaQuery.of(context).size.width / 18,
                              child: RawMaterialButton(
                                onPressed: () {
                                  // _getImage();
                                  setState(() {});
                                },
                                elevation: 2.0,
                                fillColor: const Color(0xFF000000),
                                padding: const EdgeInsets.all(5.0),
                                shape: const CircleBorder(),
                                child: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                klargeSizedBox,
                //full name
                TextFormField(
                  controller: _nameController,
                  // text editing controller
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter full name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    hintText: "Enter Full Name",
                  ),
                ),
                kSmallSizedBox,
                //enter email address
                TextFormField(
                  // text editing controller
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter email address';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    hintText: "Enter Email",
                  ),
                ),
                kSmallSizedBox,
                //enter phone number
                TextFormField(
                  controller: _phoneController,
                  // text editing controller
                  keyboardType: TextInputType.phone,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter phone number';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    hintText: "Enter Phone Number",
                  ),
                ),
                kSmallSizedBox,
                TextFormField(
                  controller: _cityController,
                  // text editing controller
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your city name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    hintText: "Enter City Name",
                  ),
                ),
                kSmallSizedBox,
                DropdownButtonFormField2<String>(
                  isExpanded: true,
                  hint: const Text(
                    'Choose your Blood Group',
                    style: TextStyle(fontSize: 16),
                  ),
                  items: bloodGroups
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                            ),
                          ))
                      .toList(),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select your Blood Group.';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    //Do something when selected item is changed.
                    _selectedBloodGroup = value.toString();
                  },
                  onSaved: (value) {
                    _selectedBloodGroup = value.toString();
                  },
                  buttonStyleData: const ButtonStyleData(
                    padding: EdgeInsets.only(right: 8),
                  ),
                  iconStyleData: const IconStyleData(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 24,
                  ),
                  dropdownStyleData: DropdownStyleData(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  menuItemStyleData: const MenuItemStyleData(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                  ),
                ),
                kSmallSizedBox,

                //password field
                TextFormField(
                  // text editing controller
                  controller: _passwordController,
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
                  obscureText: _obscureText,
                  decoration: const InputDecoration().copyWith(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: "Password",
                  ),
                ),
                kSmallSizedBox,
                //re-enter password field
                TextFormField(
                  // text editing controller
                  controller: _passwordController1,
                  keyboardType: TextInputType.multiline,
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please re-enter your password';
                    }
                    return null;
                  },
                  obscureText: _obscureText2,
                  decoration: const InputDecoration().copyWith(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText2 = !_obscureText2;
                        });
                      },
                      icon: Icon(
                        _obscureText2 ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    hintText: "Re-Enter Password",
                  ),
                ),
                kSmallSizedBox,
                //description
                TextFormField(
                  controller: _descriptionController,
                  // text editing controller
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter description';
                    }
                    return null;
                  },
                  decoration: const InputDecoration().copyWith(
                    hintText: "Enter Description",
                    alignLabelWithHint: true,
                  ),
                ),
                kSmallSizedBox,
                //checkbox
                const Row(
                  children: [
                    Text(
                      'Do you agree with our Terms and Condition?',
                    ),
                  ],
                ),
                kSmallSizedBox,
                //login button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Form is valid, navigate to the next screen
                      _signUp();
                    } else {
                      // Form is not valid, show Snackbar with an error message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Please fill in all the fields.')),
                      );
                    }
                  },
                  child: const Text(
                    "Register",
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
                //space
                klargeSizedBox,
                //forgetpassword?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      textAlign: TextAlign.center,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign in",
                        style: const TextStyle()
                            .copyWith(color: Theme.of(context).primaryColor),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                klargeSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
