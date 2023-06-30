import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:js_app/AddCashBook.dart';
import 'package:js_app/Cash_Out.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => Dashboard1();
}

class Dashboard1 extends State<Dashboard> {
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  //final formKey = GlobalKey<FormState>();
  // bool showpassword=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("#F8A91B"),),
          title: Text('Dashboard',style: TextStyle(color: HexColor("#F8A91B"),fontSize: 14,fontWeight: FontWeight.bold),),
         // backgroundColor: Colors.white,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, color: HexColor("#F8A91B"), size: 35,), // Changing Drawer Icon Size

                onPressed: () {},

              );
            },
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
                    SizedBox(height: 15,),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      child: Text('Dashboard',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: HexColor("#F8A91B"),),),),
                    SizedBox(height:40,),
                 Container(
                   height: 120,
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

                   child: Column(

                     children: [
                       SizedBox(height: 5,),
                     Row(
                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                       children: [
                       Center(child:Text("Net Balance",style: TextStyle(color: Colors.grey[800]),),),
                       SizedBox(width: 100,),
                       Text("0",style: TextStyle(color: Colors.grey[800]),),
                     ],),
                     SizedBox(height: 5,),
                     Divider(
                       color: HexColor("#F8A91B"),
                     ),
                     Row(
                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                       children: [
                       Text("Total in (+) ",style: TextStyle(color: Colors.grey[800]),),
                       SizedBox(width: 100,),
                       Text("0",style: TextStyle(color: Colors.grey[800]),)
                     ],),
                       SizedBox(height: 5,),
                       Divider(
                         color: HexColor("#F8A91B"),
                       ),
                     Row(
                       mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                       children: [
                       Text("Total out(-)",style: TextStyle(color: Colors.grey[800]),),
                       SizedBox(width: 100,),
                       Text("0",textAlign: TextAlign.justify,style: TextStyle(color: Colors.grey[800]),),],),
                       SizedBox(height: 5,),
                     ],)
                 ),

                    SizedBox(height:20,),
                    Container(
                      child:Row(
                        mainAxisSize: MainAxisSize.min,
                        children:[
                          Image.asset('assets/images/lock.png',color: HexColor("#F8A91B"),),
                          SizedBox(width: 3,),
                          Text('Only you can see these entries',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Text('Use Cash in to add income &',style: TextStyle(color: Colors.grey[400],fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('cash Out to add expense',style: TextStyle(color: Colors.grey[400],fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(height:30,),
                     Image.asset('assets/images/dropdown-1.png',alignment: Alignment.center,),
                    SizedBox(height:90,),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children:[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffF8A91B),
                            minimumSize: const Size(150, 50),
                            maximumSize: Size(150, 50),
                          ),
                          child:Text('+ Cash In'),
                          onPressed: (){
                            Navigator.of (context).push(MaterialPageRoute(builder: (context)=> AddCashBook()));
                          },
                        ),
                        SizedBox(width: 30,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.grey[800],
                            minimumSize: const Size(150, 50),
                            maximumSize: Size(150, 50),
                          ),
                          child:Text('- Cash Out'),
                          onPressed: (){
                            Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Cashout(),),);
                          },
                        )
                      ],
                    ),

                  ]
              ),))



    );

  }
}
