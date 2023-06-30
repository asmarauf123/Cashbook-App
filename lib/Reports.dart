import 'package:country_list_pick/support/code_country.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:js_app/AllCategories.dart';
import 'package:js_app/Dashboard.dart';
import 'package:js_app/VerifyOTP.dart';
import 'Registrationprocess.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);
  @override
  State<Reports> createState() => Reports1();
}

class Reports1 extends State<Reports> {
  TextEditingController cashbookname = TextEditingController();
  String radioButtonItem = 'ONE';
  String radioButtonItem1 = 'TWO';
  int id = 1;
  int id1=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("#F8A91B",),),
          title: Text('Reports',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 14,fontWeight: FontWeight.bold,),),
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
                Text('Reports', style: TextStyle(color: HexColor("#F8A91B"), fontWeight: FontWeight.bold, fontSize: 30,), textAlign: TextAlign.start,
                ),
                SizedBox(height: 30,),
                Text('Excel will be generated for:', style: TextStyle(color: HexColor("#F8A91B"), fontWeight: FontWeight.bold, fontSize: 14,), textAlign: TextAlign.start,
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child:Text('Duration',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),),
                    SizedBox(width: 60,),
                    Center(child:Text('Entry Type',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),),
                    SizedBox(width: 60,),
                    Center(child:Text('Category',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(child:Text('All Time',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: HexColor("#F8A91B"),),),),
                    SizedBox(width: 65,),
                    Center(child:Text('All Time',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: HexColor("#F8A91B"),),),),
                    SizedBox(width: 65,),
                    Center(child:Text('All Time',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: HexColor("#F8A91B"),),),),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(

                  children: [
                    Center(child:Text('Payment Mode',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),),
                    SizedBox(width: 40,),
                    Center(child:Text('Members',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width:14),
                    Center(child:Text('All Time',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: HexColor("#F8A91B"),),),),
                    SizedBox(width: 90,),
                    Center(child:Text('All Time',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: HexColor("#F8A91B"),),),),
                  ],
                ),
                SizedBox(height: 20.0),

                Row(

                  children: <Widget>[
                    Radio(
                      fillColor:
                      MaterialStateColor.resolveWith((states) => HexColor("#F8A91B"),),
                      value: 1,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'Taxable';
                          id = 1;
                        });
                      },
                    ),
                    Text(
                      'Taxable',
                      style: new TextStyle(fontSize: 14.0,fontWeight: FontWeight.w700,),
                    ),

                    Radio(
                      fillColor:
                      MaterialStateColor.resolveWith((states) => HexColor("#F8A91B"),),
                      value: 2,
                      groupValue: id,
                      onChanged: (val) {
                        setState(() {
                          radioButtonItem = 'NONTAXABLE';
                          id = 2;
                        });
                      },
                    ),
                    Text(
                      'Non-Taxable',
                      style: new TextStyle(
                        fontSize: 14.0,fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text('Search Report Type:', style: TextStyle(color: HexColor("#F8A91B"), fontWeight: FontWeight.bold, fontSize: 14,), textAlign: TextAlign.start,
                ),

               Column(
                 children: [
                   Row(children:[
                     Radio(
                       fillColor:
                       MaterialStateColor.resolveWith((states) => HexColor("#F8A91B"),),
                     value: 1,
                     groupValue: id1,
                     onChanged: (val) {
                       setState(() {
                         radioButtonItem1 = 'allentriesreport';
                         id1 = 1;
                       });
                     },
                   ),
                     Text(
                       'All Entries Report',
                       style: new TextStyle(fontSize: 14.0,fontWeight: FontWeight.w700,),
                     ),],),

                   Row(children:[
                     Radio(
                       fillColor:
                       MaterialStateColor.resolveWith((states) => HexColor("#F8A91B"),),
                     value: 2,
                     groupValue: id1,
                     onChanged: (val) {
                       setState(() {
                         radioButtonItem1 = 'SUMMARY';
                         id1 = 2;
                       });
                     },
                   ),
                     Text(
                       'Category-wise-summary',
                       style: new TextStyle(
                         fontSize: 14.0,fontWeight: FontWeight.w700,
                       ),
                     ),],),
                  Row(children: [Radio(
                    fillColor:
                    MaterialStateColor.resolveWith((states) => HexColor("#F8A91B"),),
                    value: 3,
                    groupValue: id1,
                    onChanged: (val) {
                      setState(() {
                        radioButtonItem1 = 'payment';
                        id1 = 3;
                      });
                    },
                  ),
                    Text(
                      'Payment Mode Summary',
                      style: new TextStyle(
                        fontSize: 14.0,fontWeight: FontWeight.w700,
                      ),
                    ),],),

                 ],
               ),





                SizedBox(height: 80,),
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
                        child:Row(children: [
                          SizedBox(width: 25,),
                          Image.asset('assets/images/share.png'),
                          SizedBox(width: 3,),
                          Text('Share'),
                        ],),
                        onPressed: (){
                          // if (formKey.currentState!.validate()) {
                          Navigator.of (context).push(MaterialPageRoute(builder: (context)=> AllCategory()));
                          //   //Navigator.of (context).push(MaterialPageRoute(builder: (context)=>));
                          //   // If the form is valid, display a snackbar. In the real world,
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
                       child: Row(children: [
                         SizedBox(width: 10,),
                         Image.asset('assets/images/download.png'),
                          SizedBox(width: 3,),
                          Text('Download'),
                        ],),

                        onPressed: (){
                          Navigator.pop(context);

                        },
                      )
                    ],
                  ) ,),



              ],
            ),

          ),
        ),
        );

  }
}
