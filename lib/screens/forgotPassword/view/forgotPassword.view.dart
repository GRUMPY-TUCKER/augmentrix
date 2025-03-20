import 'package:augmaze/utils/assets.util.dart';
import 'package:flutter/material.dart';
import '../../../globalComponents/button.component.dart';
import '../../../globalComponents/customTextField.component.dart';
import '../controller/forgotPassword.controller.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {

  final ForgotPasswordController forgotPasswordController = ForgotPasswordController();
  void dispose() {
    super.dispose();
    forgotPasswordController.email1.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AssetsUtil.getForgotPasswordImage()), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 300,),
                CustomTextField(hint: "enter registered email", label: "Reset Password with Email", controller: forgotPasswordController.email1,),
                SizedBox(height: 40,),
                CustomButton(label: "Reset Password", onPressed: (){},)
              ],
            ),
          ),
        )
    );
  }


}



