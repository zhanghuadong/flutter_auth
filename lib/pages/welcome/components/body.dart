import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterauth/constant/color_constant.dart';
import 'package:flutterauth/pages/login/login.dart';
import 'package:flutterauth/pages/signup/sign_up.dart';
import 'package:flutterauth/pages/welcome/components/background.dart';
import 'package:flutterauth/pages/widgets/rounded_button.dart';

class Body extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("WELCOME",
              style: TextStyle(fontWeight:FontWeight.bold),),
              SizedBox(height: size.height*0.05,),
              SvgPicture.asset("assets/icons/chat.svg",height: size.height*0.45,),
              SizedBox(height: size.height*0.05,),
              RoundedButton(
                text: "SIGN IN",
                press: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Login();
                    }
                  ));
                },
              ),
              RoundedButton(
                text:"SIGN UP",
                color: kPrimaryLightColor,
                textColor: Colors.black,
                press:(){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return SignUp();
                    }
                  ));
                },
              )
            ],
          ),
        )
    );
  }

}