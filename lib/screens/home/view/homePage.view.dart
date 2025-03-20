// Home Page Implementation
import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String userName = "User"; // Replace with actual user data

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsUtil.getBackgroundCommonImage()), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text('Community', style: GoogleFonts.acme(fontSize: 35,color: Colors.black),textAlign: TextAlign.center,),
              SizedBox(height: 30,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: GoogleFonts.acme(color: context.theme.colorScheme.outline),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                textAlign: TextAlign.left,
                'Hello, $userName',
                style: GoogleFonts.acme(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: 10, // Placeholder for community posts
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        title: Text('Post ${index + 1}', style: GoogleFonts.abel(fontWeight: FontWeight.bold),),
                        subtitle: Text('This is a community post description.', style: GoogleFonts.abel(),),
                        trailing: Icon(Icons.comment),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}