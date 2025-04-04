// Settings Page
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/assets.util.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings", style: GoogleFonts.acme(fontSize: 30),),
        centerTitle: true,
      ),
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsUtil.getBackgroundCommonImage1()),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              children: [
                SizedBox(height: 70,),
                //Text("Settings", style: GoogleFonts.acme(fontSize: 35, color: Colors.black),),
                SizedBox(height: 250,),
                Center(child: Text("Settings Page Content", style: GoogleFonts.abel(fontWeight: FontWeight.bold),),),
              ]
          ),
        )
    );
  }
}