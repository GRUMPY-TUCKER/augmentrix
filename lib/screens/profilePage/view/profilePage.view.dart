// Profile Page Implementation
import 'package:augmaze/globalComponents/button.component.dart';
import 'package:augmaze/screens/login/view/login.view.dart';
import 'package:augmaze/screens/signUp/view/signUp.view.dart';
import 'package:augmaze/utils/route.utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/assets.util.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsUtil.getBackgroundCommonImage()),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              children: [
                SizedBox(height: 70,),
                Text("Profile", style: GoogleFonts.acme(fontSize: 35, color: Colors.black),),
                SizedBox(height: 200,),
                CustomButton(label: "Login", onPressed: ()=>RoutesUtil.to(()=>LoginView()),),
                SizedBox(height: 20,),
                Text("or", style: GoogleFonts.acme(color: Theme.of(context).primaryColorDark, fontSize: 20),),
                SizedBox(height: 20,),
                CustomButton(label: "SignUp", onPressed: ()=>RoutesUtil.to(()=>SignUpView()),)
              ]
          ),
        )
    );
  }
}