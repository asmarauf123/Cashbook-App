import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'OTPInput.dart';
import 'Registrationprocess.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);
  @override
  State<VerifyOtp> createState() => VerifyOtp1();
}

class VerifyOtp1 extends State<VerifyOtp> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();
  final TextEditingController _fieldFive = TextEditingController();
  final TextEditingController _fieldSix = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool showpassword = false;
  String? _otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
        leading: GestureDetector(child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: CircleAvatar(
            backgroundColor: HexColor("#F8A91B"),
            radius: 30,
            child: Image.asset('assets/images/arrow_forward.png', color: Colors.white,),
            //onClick:() => Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Registrationp(),),)
          ),
        ),
          onTap:() =>Navigator.of (context).push(MaterialPageRoute(builder: (context)=> Registrationp(),),) ,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: formKey,
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      'Verify OTP',
                      style: TextStyle(
                        color: HexColor("#F8A91B"),
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'One-Time Password has been send to your mobile number',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 60.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OtpInput(_fieldOne, true),
                        OtpInput(_fieldTwo, false),
                        OtpInput(_fieldThree, false),
                        OtpInput(_fieldFour, false),
                        OtpInput(_fieldFive, false),
                        OtpInput(_fieldSix, false),
                      ],
                    ),
                    SizedBox(height: 20,),
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(primary: Color(0xffF8A91B),
                    //     padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),),
                    //     onPressed: () {
                    //       setState(() {
                    //         _otp = _fieldOne.text +
                    //             _fieldTwo.text +
                    //             _fieldThree.text +
                    //             _fieldFour.text +
                    //             _fieldFive.text +
                    //             _fieldSix.text;
                    //       });
                    //     },
                    //     child: Text('Submit')),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('You can resend OTP in', style: TextStyle(fontSize: 10, fontWeight: FontWeight.w700),),
                        SizedBox(width: 4,),
                        GestureDetector(
                          child: Text(
                            '30 seconds',
                            style: TextStyle(
                                color: HexColor("#F8A91B"),
                                fontSize: 10,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.right,
                          ),
                          //onTap: ()=> Navigator.of (context).push(MaterialPageRoute(builder: (context)=>ForgetPassword()),),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Container(

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'By creating an account, you agree to our',
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          GestureDetector(
                            child: Text(
                              'Terms of Sevices',
                              style: TextStyle(
                                  color: HexColor("#F8A91B"),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700),
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
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 4,),
                        GestureDetector(
                          child: Text('Privacy Policy', style: TextStyle(color: HexColor("#F8A91B"), fontSize: 10, fontWeight: FontWeight.w700), textAlign: TextAlign.right,),
                          //onTap: ()=> Navigator.of (context).push(MaterialPageRoute(builder: (context)=>ForgetPassword()),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
