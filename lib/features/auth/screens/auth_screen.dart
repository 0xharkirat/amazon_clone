import 'package:amazon_clone/commons/widgets/custom_button.dart';
import 'package:amazon_clone/commons/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  signUp,
  signIn,
}

class AuthScreen extends StatefulWidget {

  static const routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  Auth _auth = Auth.signUp;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();

  final TextEditingController _emailContoller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _emailContoller.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget> [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
              ListTile(
                title: const Text('Create Account.',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                tileColor: _auth == Auth.signUp ? GlobalVariables.backgroundColor: GlobalVariables.greyBackgroundColor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signUp,
                  groupValue: _auth,
                  onChanged: (Auth? val){
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signUp)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: <Widget> [
                        CustomTextField(controller: _nameController, hintText: 'Name',),
                        const SizedBox(height: 10.0,),
                        CustomTextField(controller: _emailContoller, hintText: 'Email',),
                        const SizedBox(height: 10.0,),
                        CustomTextField(controller: _passwordController, hintText: 'Password',),
                        const SizedBox(height: 10.0,),
                        CustomButton(
                          text: "Sign Up",
                          onPressed: (){
                          },
                        )

                      ],
                    ),
                  ),
                ),

              ListTile(
                title: const Text('Sign In.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                tileColor: _auth == Auth.signIn ? GlobalVariables.backgroundColor : GlobalVariables.greyBackgroundColor,
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signIn,
                  groupValue: _auth,
                  onChanged: (Auth? val){
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signIn)
                Container(
                  padding: const EdgeInsets.all(8.0),
                  color: GlobalVariables.backgroundColor,
                  child: Form(
                    key: _signInFormKey,
                    child: Column(
                      children: <Widget> [
                        CustomTextField(controller: _emailContoller, hintText: 'Email',),
                        const SizedBox(height: 10.0,),
                        CustomTextField(controller: _passwordController, hintText: 'Password',),
                        const SizedBox(height: 10.0,),
                        CustomButton(
                          text: "Sign In",
                          onPressed: (){
                          },
                        )

                      ],
                    ),
                  ),
                ),

            ],
          ),
        ),
      ),

    );
  }
}
