import 'package:augmaze/screens/signUp/controller/signUp.controller.dart';
import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../globalComponents/button.component.dart';

class SignUpView extends StatefulWidget {
  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  String? _name, _email, _password, _phone, _age, _gender;
  final List<String> _genders = ['Male', 'Female', 'Other'];

  SignUpController signUpController=SignUpController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsUtil.getSignUpImage(),), fit: BoxFit.cover)
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: ListView(
              children: [
                SizedBox(height: 60,),
                Text(
                  "SignUp",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.acme(fontSize: 30, color: Theme.of(context).primaryColorDark),
                ),
                const SizedBox(height: 50),
                // Name Field
                TextFormField(
                  controller: signUpController.name,
                  decoration: InputDecoration(
                    hintStyle: GoogleFonts.acme(),
                    labelText: 'Name',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    signUpController.name.text = value!;
                  },
                ),
                SizedBox(height: 10),

                // Email Field
                TextFormField(
                  controller: signUpController.email,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty || !RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    signUpController.email.text = value!;
                  },
                ),
                SizedBox(height: 10),

                // Password Field
                TextFormField(
                  controller: signUpController.password,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    signUpController.password.text = value!;
                  },
                ),
                SizedBox(height: 10),

                // Phone Number Field
                TextFormField(
                  controller: signUpController.phonenumber,
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    signUpController.phonenumber.text = value!;
                  },
                ),
                SizedBox(height: 10),

                // Age Field
                TextFormField(
                  controller: signUpController.age,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    signUpController.age.text = value!;
                  },
                ),
                SizedBox(height: 10),

                // Gender Dropdown
                DropdownButtonFormField<String>(
                  value: _gender,
                  decoration: InputDecoration(
                    labelText: 'Gender',
                    labelStyle: GoogleFonts.acme(color: Colors.grey),
                    border: OutlineInputBorder(),
                  ),
                  items: _genders.map((gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender, style: GoogleFonts.acme(),),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      signUpController.gender.text = value!;
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select your gender';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _gender = value;
                  },
                ),
                SizedBox(height: 20),

                // Submit Button
                CustomButton(
                  label: "SignUp",
                  onPressed: () => {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}