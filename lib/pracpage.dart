import 'package:country_list_pick/support/code_country.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:js_app/Textformfield.dart';
import 'package:js_app/VerifyOTP.dart';
import 'Registrationprocess.dart';

class Pracpage extends StatefulWidget {
  const Pracpage({Key? key}) : super(key: key);
  @override

  State<Pracpage> createState() => Pracpage1();
}

class Pracpage1 extends State<Pracpage> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Image.asset('assets/images/appisnap.jpeg',height: 100,width: 100,),
                CustomTextFormField(
                    hintText: 'Name',
                    labelText: 'Name',
                    controller: nameController,
                     border: InputDecoration(
                       enabledBorder:  OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                     ),
                     focusedBorder:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10),
                     ),
                       suffixIcon: Image.asset('assets/images/arrow.png',),
                ),),
                 ElevatedButton(
                 onPressed: () {  },
                 child:Text('Buttton',)
                 ),
                 Text('heading',style: Theme.of(context).textTheme.headline1,)

              ],
            ),
          ),
        ));
  }
}
