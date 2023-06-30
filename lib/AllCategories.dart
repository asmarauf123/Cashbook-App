import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js_app/AddCashBook.dart';
import 'package:js_app/Cash_In.dart';
class AllCategory extends StatefulWidget {
  const AllCategory({Key? key}) : super(key: key);
  @override
  State<AllCategory> createState() => AllCategory1();
}

class AllCategory1 extends State<AllCategory> {
  TextEditingController CategoryController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String? selectedValue = null;
  String? selectedValue1 = null;
  void showAlertDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
            child: AlertDialog(
             title: Text('Add New',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 35),),
              actions: [
                Container(
                  height: 250,
                  alignment: Alignment.center,
                    child:SingleChildScrollView(
                      child: Column(

                        children:[
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Cash Book',style: TextStyle(color: Colors.grey[800],),),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            height: 60,
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

                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Transaction type',style: TextStyle(color: Colors.grey[800],),),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            height: 60,
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
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text('Category',style: TextStyle(color: Colors.grey[800]),),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            height: 80,
                            child: TextFormField(
                              controller: CategoryController,
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

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: HexColor("#F8A91B"),
                                  minimumSize: const Size(120, 40),
                                  maximumSize: Size(120, 40),),
                                onPressed: () {
                                  Navigator.pop(context);
                                  //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>SecondScreen()),);
                                },
                                child: const Text('Cancel'),
                              ),
                              SizedBox(width: 20,),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(primary: Colors.grey[800],
                                  minimumSize: const Size(120, 40),
                                  maximumSize: Size(120, 40),),
                                onPressed: () {

                                  // if (formKey.currentState!.validate()) {
                                  Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Cashin()));
                                    //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                                    // If the form is valid, display a snackbar. In the real world,
                                    // ScaffoldMessenger.of(context).showSnackBar(
                                    //   const SnackBar(
                                    //       content: Text('Credentials are Right')),
                                    // );
                                  //}
                                },
                                child: const Text('Save'),
                              ),
                            ],
                          ),
                          SizedBox(height: 10,),
                        ],),
                    ),



                  ),

              ],

            ),
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("#F8A91B"),),
          title: Text('Category Management',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 14,
            fontWeight: FontWeight.bold,),),
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
            onTap:() =>Navigator.of (context).push(MaterialPageRoute(builder: (context)=> AddCashBook(),),) ,
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
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text('All Categories',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: HexColor("#F8A91B"),),),),
                    SizedBox(height:40,),
                    Container(
                        height: 130,
                        width:280,
                        decoration: BoxDecoration(
                            color: Colors.grey[350],
                            borderRadius: BorderRadius.all(Radius.circular(5),),
                        boxShadow: [BoxShadow(
                          color: Colors.grey.withOpacity(0.4),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 3), // changes position of shadow
                        ),],),
                        child:Column(
                          children: [
                            SizedBox(height: 5,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Center(child:Text("Net Balance",style: TextStyle(color: Colors.grey[800]),),),
                                SizedBox(width: 50,),
                                Image.asset("assets/images/delete.png"),
                                Image.asset("assets/images/edit.png"),
                              ],),
                            Divider(
                              color: HexColor("#F8A91B"),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Total in (+) ",style: TextStyle(color: Colors.grey[800]),),
                                SizedBox(width: 50,),
                                Image.asset("assets/images/delete.png"),
                                Image.asset("assets/images/edit.png"),
                              ],),
                            Divider(
                              color: HexColor("#F8A91B"),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Total out(-)",style: TextStyle(color: Colors.grey[800]),),
                                SizedBox(width: 50,),
                                Image.asset("assets/images/delete.png"),
                                Image.asset("assets/images/edit.png"),
                          ],),
                        ],
                        ),
                      ),





                    SizedBox(height:370),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xffF8A91B),
                            minimumSize: const Size(900, 50),
                            maximumSize: Size(900, 50),
                          ),
                          child:Text('Add New'),
                          onPressed: (){
                           showAlertDialog();
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
      DropdownMenuItem(child: Text("Checque Book",style: TextStyle(color: Colors.black),),value: "Checque Book"),
      DropdownMenuItem(child: Text("ATM Card",style: TextStyle(color: Colors.black),),value: "ATM Card"),
      DropdownMenuItem(child: Text("Cash",style: TextStyle(color: Colors.black),),value: "Cash"),

    ];
    return menuItems1;
  }
}
