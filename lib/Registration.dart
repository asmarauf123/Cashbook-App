import 'package:country_list_pick/support/code_country.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:js_app/VerifyOTP.dart';
import 'Registrationprocess.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);
  @override

  State<Registration> createState() => Registration1();
}

class Registration1 extends State<Registration> {
  TextEditingController MobileNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/appisnap.jpeg',height: 100,width: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome !',
              style: TextStyle(
                color: HexColor("#F8A91B"),
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 20.0),
            Text(
              'Login to auto backup your data securely',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 20.0),
            PhoneNumberInput(

                //initialCountry: 'TN',
                //locale: 'fr',
                //countryListMode: CountryListMode.dialog,
                //contactsPickerPosition: ContactsPickerPosition.suffix,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: const BorderSide(color: Colors.purple)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: const BorderSide(color: Colors.purple)
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 1000,
              // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(

                  primary: Color(0xffF8A91B),
                ), // background

                child: const Text('Submit'),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VerifyOtp(),
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'By creating an account, you agree to our',
                    style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    child: Text(
                      'Terms of Sevices',
                      style:
                          TextStyle(color: HexColor("#F8A91B"), fontSize: 10),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'and',
                  style: TextStyle(fontSize: 10,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(color: HexColor("#F8A91B"), fontSize: 10),
                    textAlign: TextAlign.right,
                  ),
                  //onTap: ()=> Navigator.of (context).push(MaterialPageRoute(builder: (context)=>ForgetPassword()),),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
