import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js_app/AllCategories.dart';
import 'package:js_app/OTPInput.dart';
import 'Members.dart';
import 'package:intl/intl.dart';
class Cashin extends StatefulWidget {
  const Cashin({Key? key}) : super(key: key);
  @override
  State<Cashin> createState() => Cashin1();
}

class Cashin1 extends State<Cashin> {
  TextEditingController amountController = TextEditingController();
  TextEditingController calanderController = TextEditingController();
  TextEditingController remarksController = TextEditingController();
  TextEditingController attachmentController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String date = "";

  bool checkval=false;
  String? selectedValue = null;
  String? selectedValue1 = null;
  String? selectedValue2 = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("#F8A91B"),),
          title: Text('Cash In',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 14,fontWeight: FontWeight.bold,),),
          //backgroundColor: Colors.white,
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
            onTap:() =>Navigator.of (context).push(MaterialPageRoute(builder: (context)=> AllCategory(),),) ,
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
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment:MainAxisAlignment.center ,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(3, 5, 20, 5),
                      child: Text('Cash In',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: HexColor("#F8A91B"),),),),
                    SizedBox(height:10,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Cash Book',style: TextStyle(color: Colors.grey[800],),),
                    ),//Cash Book
                    SizedBox(height: 3,),
                    Container(
                      height: 70,
                      child: DropdownButtonFormField(
                        elevation: 10,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: HexColor("#F8A91B"), // <-- SEE HERE
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                        validator: (value) => value == null ? "Select project" : null,
                        dropdownColor: Colors.white,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        //itemHeight: 10,
                        items: dropdownItems,
                      ),),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Date',style: TextStyle(color: Colors.grey[800]),),
                    ),//Amount
                    SizedBox(height: 1,),
                    // Container(
                    //   child:
              Container(
                height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(5),
              ),
                        child:Row(
                          children:[
                            Text(calanderController.text,),
                            SizedBox( width: 20,),
                            Container(
                              child: GestureDetector(
                             child: Image.asset('assets/images/calender.png'),
                                onTap: () async
                                { DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1950),
                                    //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2100));

                                if (pickedDate != null) {
                                  print(
                                      pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                  String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(pickedDate);
                                  print(
                                      formattedDate); //formatted date output using intl package =>  2021-03-16
                                  setState(() {
                                    calanderController.text =
                                        formattedDate; //set output date to TextField value.
                                  });
                                } else {}},
                              ) ,
                            ),

                        ],
                      ),),
                   // ),

                    // Row(
                    //  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //   children: [
                    //     Container(
                    //       child:  TextFormField(
                    //        controller: calanderController,
                    //        style: TextStyle(
                    //        fontSize: 19,
                    //       color: Colors.black,
                    //        ),
                    //        decoration:InputDecoration(
                    //
                    //               border: OutlineInputBorder(
                    //                 borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                    //                 borderRadius: BorderRadius.circular(5),
                    //        ),
                    //        hintText: 'dddd-mm-yy',
                    //        //   contentPadding: EdgeInsets.fromLTRB(40.0, 10.0, 20.0, 10.0),
                    //        // suffixIcon: Image.asset('assets/icons/calander.png'),),
                    //        // // readOnly: true,
                    //        //  onTap: () {
                    //        //    selectDate(context);
                    //        //  }
                    //       ),
                    //     ),)
                    //   ],
                    //
                    // ),

                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Amount',style: TextStyle(color: Colors.grey[800]),),
                    ),//Amount
                    SizedBox(height: 3,),
                    Container(
                      height: 50,
                      child: TextFormField(
                        controller: amountController,
                        style:TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),),
                        // obscureText: !showpassword,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                          {return 'Please Enter Some Text';}
                          return null;},
                      ),
                    ),
                    SizedBox(height: 5,),

                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Remarks',style: TextStyle(color: Colors.grey[800]),),
                    ),//Remarks
                    SizedBox(height: 3,),
                    Container(
                      height: 50,
                      child: TextFormField(
                        controller: remarksController,
                        style:TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),),
                        // obscureText: !showpassword,
                        validator: (value) {
                          if (value == null || value.isEmpty)
                          {return 'Please Enter Some Text';}
                          return null;},
                      ),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Attachment',style: TextStyle(color: Colors.grey[800]),),
                    ),//Attachment
                    SizedBox(height: 3,),
                    Container(
                      height: 60,
                      child: TextFormField(
                        controller: attachmentController,
                        style:TextStyle(fontSize: 15, color: Colors.black,),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                          suffixIcon: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary:  Colors.grey.withOpacity(0.1),),

                           child: Padding(
                             padding: EdgeInsets.fromLTRB(290, 5, 5, 5),
                             child:Image.asset('assets/images/attachment.png',color: HexColor("#F8A91B"),),),
                            onPressed: (){
                            pickfiles();
                            },
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),

                          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                          {return 'Please Enter Some Text';}
                          return null;},
                      ),
                    ),
                    SizedBox(height: 3,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Category',style: TextStyle(color: Colors.grey[800],),),
                    ),//Category
                    SizedBox(height: 3,),
                    Container(
                      height: 70,
                      child: DropdownButtonFormField(
                        elevation: 10,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: HexColor("#F8A91B"), // <-- SEE HERE
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                        validator: (value) => value == null ? "Select project" : null,
                        dropdownColor: Colors.white,
                        value: selectedValue1,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue1 = newValue!;
                          });
                        },
                        //itemHeight: 10,
                        items: dropdownItems1,
                      ),),
                    SizedBox(height: 3,),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text('Payment Mode',style: TextStyle(color: Colors.grey[800],),),
                    ),//Payment Mode
                    SizedBox(height: 5,),
                    Container(
                      height: 70,
                      child: DropdownButtonFormField(
                        elevation: 10,
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: HexColor("#F8A91B"), // <-- SEE HERE
                        ),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: const Color(0xFFBDBDBD),),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(0.1),
                        ),
                        validator: (value) => value == null ? "Select project" : null,
                        dropdownColor: Colors.white,
                        value: selectedValue2,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue2 = newValue!;
                          });
                        },
                        //itemHeight: 10,
                        items: dropdownItems2,
                      ),),
                    SizedBox(height: 2,),

                    Row(
                      children: <Widget>[
                       Checkbox(
                         value: checkval,
                         checkColor: Colors.white,
                         activeColor: HexColor("#F8A91B"), onChanged: (bool? value) { setState(() {
                           checkval =value!;
                         }); },
                       ),
                        Text("Taxable"),
                      ],
                    ),
                    SizedBox(height: 5,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffF8A91B),
                        minimumSize: const Size(900, 50),
                        maximumSize: Size(900, 50),),
                      child:Text('Save'),
                      onPressed: (){
                        // if (formKey.currentState!.validate()) {
                        Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Members(),));
                        //   //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                        //   // If the form is valid, display a snackbar. In the real world,
                      //     ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(
                      //           content: Text('Credentials are Right')),
                      //     );
                      //   }
                       },
                    ),



                  ]
              ),))



    );

  }
  List<DropdownMenuItem<String>> get dropdownItems{
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("CASHBOOK 1",style: TextStyle(color: Colors.black),),value: "CASHBOOK 1"),
      DropdownMenuItem(child: Text("CASHBOOK 2",style: TextStyle(color: Colors.black),),value: "CASHBOOK 2"),
      DropdownMenuItem(child: Text("CASHBOOK 3",style: TextStyle(color: Colors.black),),value: "CASHBOOK 3"),
      DropdownMenuItem(child: Text("CASHBOOK 4",style: TextStyle(color: Colors.black),),value: "CASHBOOK 4"),
    ];
    return menuItems;
  }
  List<DropdownMenuItem<String>> get dropdownItems1{
    List<DropdownMenuItem<String>> menuItems1 = [
      DropdownMenuItem(child: Text("CATEGORY A",style: TextStyle(color: Colors.black),),value: "CATEGORY A"),
      DropdownMenuItem(child: Text("CATEGORY B",style: TextStyle(color: Colors.black),),value: "CATEGORY B"),
      DropdownMenuItem(child: Text("CATEGORY C",style: TextStyle(color: Colors.black),),value: "CATEGORY C"),

    ];
    return menuItems1;
  }
  List<DropdownMenuItem<String>> get dropdownItems2{
    List<DropdownMenuItem<String>> menuItems1 = [
      DropdownMenuItem(child: Text("Checque Book",style: TextStyle(color: Colors.black),),value: "Checque Book"),
      DropdownMenuItem(child: Text("ATM Card",style: TextStyle(color: Colors.black),),value: "ATM Card"),
      DropdownMenuItem(child: Text("Cash",style: TextStyle(color: Colors.black),),value: "Cash"),

    ];
    return menuItems1;
  }
  void pickfiles() async{
    FilePickerResult? result= await FilePicker.platform.pickFiles(type: FileType.custom,
        allowedExtensions: ['jpg','jpeg','png','mp4','pdf'],allowMultiple: true);
    if(result==null) return;
    PlatformFile? file= result!.files.first;
  }

}
