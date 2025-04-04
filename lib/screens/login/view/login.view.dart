import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import '../../../globalComponents/button.component.dart';
import '../../../globalComponents/customTextField.component.dart';
import '../controller/login.controller.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final LoginController loginController = LoginController();

  @override
  void dispose() {
    super.dispose();
    loginController.email.dispose();
    loginController.password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const Spacer(),
            Text(
              "Login",
              style: GoogleFonts.acme(fontSize: 30, color: Theme.of(context).primaryColorDark),
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hint: "Enter Email",
              label: "Email",
              controller: loginController.email,
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hint: "Enter Password",
              isPassword: true,
              label: "Password",
              controller: loginController.password,
            ),
            const SizedBox(height: 30),
            CustomButton(
              label: "Login",
              onPressed: () => {},
            ),
            const SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? ", style: GoogleFonts.acme()),
                SizedBox(width: 10,),
                InkWell(
                  onTap: () => loginController.goToSignup(),
                  child: Text(
                    "Signup",
                    style: GoogleFonts.acme(color: Theme.of(context).primaryColorDark),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () => loginController.forgotPassword(),
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.acme(color: Theme.of(context).primaryColorDark),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
