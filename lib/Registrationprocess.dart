import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:js_app/Dashboard.dart';

class Registrationp extends StatefulWidget {
  const Registrationp({Key? key}) : super(key: key);
  @override
  State<Registrationp> createState() => Registrationp1();
}

class Registrationp1 extends State<Registrationp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Image.asset(
                'assets/images/appisnap.jpeg',height: 100,width: 100,
              ),
            ),
            Form(
              key: formKey,
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                children: [
                  SizedBox(height: 10,),
                  Text(
                    'Registration',
                    style: TextStyle(
                      color: HexColor("#F8A91B"),
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.start,
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
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      hintText: 'Username',
                      hintStyle: TextStyle(fontSize: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0),
                        borderSide: BorderSide(width: 3, color: Colors.grey),
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
                    height: 30,
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
                      hintText: 'Paassword',
                      hintStyle: TextStyle(fontSize: 15),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            showpassword = !showpassword;
                          });
                        },
                        child: Icon(showpassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color:HexColor("#F8A91B"),),
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
                    height: 80,
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
                          'Get Start',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Dashboard()),);
                            //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                            // If the form is valid, display a snackbar. In the real world,
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Credentials are Right')),
                            );
                          }
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
