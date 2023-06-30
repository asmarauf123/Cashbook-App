import 'package:country_list_pick/support/code_country.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:js_app/AllCategories.dart';
import 'package:js_app/Dashboard.dart';
import 'package:js_app/VerifyOTP.dart';
import 'Registrationprocess.dart';

class AddCashBook extends StatefulWidget {
  const AddCashBook({Key? key}) : super(key: key);
  @override
  State<AddCashBook> createState() => AddCashBook1();
}

class AddCashBook1 extends State<AddCashBook> {
  TextEditingController cashbookname = TextEditingController();
  final formKey1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("#F8A91B"),),
          title: Text('Add Cash Book',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 14,fontWeight: FontWeight.bold)),
         // backgroundColor: Colors.white,
          leading: GestureDetector(
            child: Container(
              padding: EdgeInsets.fromLTRB(5, 10, 10, 10),
              child: CircleAvatar(
                backgroundColor: HexColor("#F8A91B"),
                radius: 30,
                child: Image.asset('assets/images/arrow_forward.png', color: Colors.white,),
                //onClick:() => Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Registrationp(),),)
              ),
            ),
            onTap:() =>Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Dashboard(),),) ,
          ),
          actions: [
            Container(
                padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
                child:Row(
                  children: [
                    SvgPicture.asset('assets/images/ic_logout.svg',color: HexColor("#F8A91B"),alignment: Alignment.centerLeft,),
                    SizedBox(width: 5,),
                    Text('Logout',style: TextStyle(color: HexColor("#F8A91B"),fontWeight: FontWeight.bold),),
                  ],
                )
            ),
          ],
        ),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text(
                  'Add Cash Book', style: TextStyle(color: HexColor("#F8A91B"), fontWeight: FontWeight.bold, fontSize: 30,), textAlign: TextAlign.start,
                ),
                SizedBox(height: 20.0),
                Text('Cash Book Name', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.grey[800],), textAlign: TextAlign.start,
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  controller: cashbookname,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.1),
                    hintText: ' Enter Cash Book Name',
                    hintStyle: TextStyle(fontSize: 15,),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                  ),
                  validator: (value) {
                    var email = "tony123_90874coder@gmail.com";
                    RegExp regex = RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Some Text';
                    }
                    else if(!regex.hasMatch(value)) {return 'Please Enter according to format';}
                    return null;
                  },
                ),
                SizedBox(height: 400,),
                Container(
                  alignment: Alignment.center,
                  child:Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF8A91B),
                        minimumSize: const Size(150, 50),
                        maximumSize: Size(150, 50),
                      ),
                      child:Text('Add New'),
                      onPressed: (){
                        // if (formKey1.currentState!.validate()) {
                         Navigator.of (context).push(MaterialPageRoute(builder: (context)=> AllCategory()));
                          //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                          // If the form is valid, display a snackbar. In the real world,
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(
                        //         content: Text('Credentials are Right')),
                        //   );
                        // }
                      },
                    ),
                    SizedBox(width: 30,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[800],
                        minimumSize: const Size(150, 50),
                        maximumSize: Size(150, 50),
                      ),
                      child:Text('Save'),
                      onPressed: (){
                        Navigator.pop(context);

                      },
                    )
                  ],
                ) ,),



              ],
            ),
          ),
        ));
  }
}
