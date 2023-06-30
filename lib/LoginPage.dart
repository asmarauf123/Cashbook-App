import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  State<LoginPage> createState() => LoginPage1();
}

class LoginPage1 extends State<LoginPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showpassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:10,),
            Container(
              padding: EdgeInsets.fromLTRB(10, 1, 10, 5),
              child: Image.asset(
                'assets/images/appisnap.jpeg',
                height: 100,
                width: 100,
              ),
            ),
            Form(
              key: formKey,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 10.0, right: 10.0),
                children: [
                  SizedBox(height: 20,),
                  Text('Login',
                    style: TextStyle(
                      color: HexColor("#F8A91B"),
                      fontWeight: FontWeight.w700,
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(height: 20.0),
                  Text('Mobile Number (0xxxasxsxsx)'),
                  SizedBox(height: 10.0),
                  TextFormField(
                    controller: mobileController,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      hintText: 'Enter',
                       hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(width: 3, color: Colors.greenAccent),),
                      contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                    ),
                    validator: (value) {
                      RegExp regex = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Some Text ';
                      } else if (value.length > 12) {
                        return 'Enter less than 12 numbers';
                      } else if (!regex.hasMatch(value)) {
                        return 'Enter according to format';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  Text('Username'),
                  SizedBox(height: 10.0),
                  TextFormField(
                    controller: nameController,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter',
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(width: 3, color: Colors.white),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                    ),
                    validator: (value) {
                      //var email = "tony123_90874coder@gmail.com";
                      //RegExp regex = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Some Text';
                      }
                      // else if(!regex.hasMatch(value)) {return 'Please Enter according to format';}
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password (Must start with capital letter contain special character or end with digits)',
                  ),
                  SizedBox(height: 5.0),
                  TextFormField(
                    controller: passwordController,

                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      //hintStyle: TextStyle(fontSize: 15),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showpassword = !showpassword;
                          });
                        },
                        child: Icon(showpassword
                            ? Icons.visibility
                            : Icons.visibility_off,color: HexColor("#F8A91B"),),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0)),
                      contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                    ),
                    obscureText: !showpassword,
                    validator: (value) {
                      RegExp regex = RegExp(
                          r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Some Text';
                      } else if (value.length < 6) {
                        return 'Password should be minimum 7 characters';
                      } else if (!regex.hasMatch(value)) {
                        return 'Enter valid password first letter must be capital and end with digits';
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(1000, 50),
                          maximumSize: const Size(1000, 50),
                          primary: HexColor("#F8A91B"),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          // if (formKey.currentState!.validate()) {
                            Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Dashboard()));
                          //   //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                          //   // If the form is valid, display a snackbar. In the real world,
                          //   ScaffoldMessenger.of(context).showSnackBar(
                          //     const SnackBar(
                          //         content: Text('Credentials are Right')),
                          //   );
                          // }
                        }),
                  ),
                  SizedBox(
                    height: 30,
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
