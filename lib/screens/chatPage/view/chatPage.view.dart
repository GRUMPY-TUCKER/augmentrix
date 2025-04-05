// Chat Page
import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat", style: GoogleFonts.acme(fontSize: 30),),
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
                //Text("Chat", style: GoogleFonts.acme(fontSize: 35, color: Colors.black),),
                Expanded(
                  child: ListView.builder(
                    itemCount: 10, // Placeholder for community posts
                    itemBuilder: (context, index) {
                      return Card(
                        color: Colors.white,
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        child: ListTile(
                          title: Text('Friend ${index + 1}', style: GoogleFonts.abel(fontWeight: FontWeight.bold, color: Colors.black),),
                          subtitle: Text('Chat', style: GoogleFonts.abel(color: Colors.black),),
                          trailing: Icon(Icons.comment),
                        ),
                      );
                    },
                  ),
                ),
              ]
          ),
        )
    );
  }
}