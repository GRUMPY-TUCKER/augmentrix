// Explore Page
import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore", style: GoogleFonts.acme(fontSize: 30),),
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
              //Text("Explore", style: GoogleFonts.acme(fontSize: 35, color: Colors.black),),
              SizedBox(height: 250,),
              Center(child: Text("Explore Page Content", style: GoogleFonts.abel(fontWeight: FontWeight.bold),),),
            ]
        ),
      ),
    );
  }
}
