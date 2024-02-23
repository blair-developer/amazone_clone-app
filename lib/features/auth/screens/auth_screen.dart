import 'package:amazone_clone/common/widgets/custom_button.dart';
import 'package:amazone_clone/common/widgets/custom_textfield.dart';
import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/services/auth_service.dart';
import 'package:flutter/material.dart';

enum Auth{
  signin,
  signup
}
class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signupFormKey = GlobalKey<FormState>();
  final _signinFormKey = GlobalKey<FormState>();
  final AuthService authService = AuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  void dispose(){
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  void signUpUser(){
    authService.signUpUser(context: context, email: _emailController.text, password: _passwordController.text, name: _nameController.text,);
  }
  void signInUser(){
    authService.signInUser(context: context, email: _emailController.text, password: _passwordController.text);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text('Welcome', style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),
                ListTile(
                  tileColor: _auth == Auth.signup ? GlobalVariables.backgroundColor : GlobalVariables.greyBackgroundCOlor,
                  title: const Text('Create an Account', style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.signup,
                    groupValue: _auth,
                    onChanged: (Auth? val){
                      setState(() {
                        _auth = val!;
                      });
                    },
                    ),
                ),
                if(_auth == Auth.signup)
               Container(
                padding: EdgeInsets.all(15),
                color: GlobalVariables.backgroundColor,
                 child: Form(
                    key: _signupFormKey,
                    child: Column(
                      children: [
                        CustomTextField(controller: _nameController,
                        hintText: 'User Name', prefixIcon: const Icon(Icons.person),
                        ),
                        const SizedBox(height: 10,),
                        CustomTextField(controller: _emailController,
                        hintText: 'Email Address', prefixIcon: const Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 10,),
                         CustomTextField(controller: _passwordController,
                        hintText: 'Password', prefixIcon: const Icon(Icons.lock),
                        ),
                        const SizedBox(height: 10,),
                        CustomButton(text: 'Sign Up',
                         onTap: (){
                           if (_signupFormKey.currentState!.validate()) {
                             signUpUser();
                           }
                        })
                      ],
                    )
                 ),
               ),
                ListTile(
                  tileColor: _auth == Auth.signin ? GlobalVariables.backgroundColor : GlobalVariables.greyBackgroundCOlor,
                  title: Text('Sign IN', style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  leading: Radio(
                    activeColor: GlobalVariables.secondaryColor,
                    value: Auth.signin,
                    groupValue: _auth,
                    onChanged: (Auth? val){
                      setState(() {
                        _auth = val!;
                      });
                    },
                    ),
                ),
                if(_auth == Auth.signin)
                 Container(
                padding: EdgeInsets.all(8),
                color: GlobalVariables.backgroundColor,
                 child: Form(
                    key: _signinFormKey,
                    child: Column(
                      children: [
                        CustomTextField(controller: _emailController,
                        hintText: 'Email Address', prefixIcon: const Icon(Icons.email_outlined),
                        ),
                        const SizedBox(height: 10,),
                         CustomTextField(controller: _passwordController,
                        hintText: 'Password', prefixIcon: const Icon(Icons.lock),
                        ),
                        const SizedBox(height: 10,),
                        CustomButton(text: 'Sign In',
                         onTap: (){
                            if (_signinFormKey.currentState!.validate()) {
                             signInUser();
                           }
                        })
                      ],
                    )
                 ),
               ),
              ],
            ),
          ),
        )
        ),
    );
  }
}