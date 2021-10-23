import 'package:first_proj/services/authentication_service.dart';
import 'package:first_proj/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
    final _confirmPasswordController = TextEditingController();
    bool _passwordVisible = true;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

final AuthenticationServices _auth =AuthenticationServices();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset("assets/images/images.png",height: 100,width: 100,),
                  Center(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor,
                      ),
                    ),
                  ),
                   Container(
                    height: 55,
                    margin: EdgeInsets.only(top: 50, bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextFormField(
                       
                        cursorColor: AppColors.appColor,
                        controller: _nameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: AppColors.greyOp9,
                            size: 21,
                          ),
                          hintText: "User Name",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: AppColors.greyOp9,
                            fontWeight: FontWeight.w700,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 55,
                    margin: EdgeInsets.only( bottom: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextFormField(
                        cursorColor: AppColors.appColor,
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: AppColors.greyOp9,
                            size: 21,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: AppColors.greyOp9,
                            fontWeight: FontWeight.w700,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                     margin: EdgeInsets.only( bottom: 25),
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextFormField(
                       
                        cursorColor: AppColors.appColor,
                        obscureText: _passwordVisible,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppColors.greyOp9,
                            size: 21,
                          ),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: AppColors.greyOp9,
                            fontWeight: FontWeight.w700,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 21,
                                color: AppColors.blackColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              }),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                   Container(
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: TextFormField(
                       
                        cursorColor: AppColors.appColor,
                        obscureText: _passwordVisible,
                        controller: _confirmPasswordController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: AppColors.greyOp9,
                            size: 21,
                          ),
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: AppColors.greyOp9,
                            fontWeight: FontWeight.w700,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 21,
                                color: AppColors.blackColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              }),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                   
   
                  // SizedBox(
                  //   height: 20,
                  // ),
                  // GestureDetector(
                  //   // onTap: () {
                  //   //   Navigator.push(context,
                  //   //       MaterialPageRoute(builder: (Context) => RegisterScreen()));
                  //   // },
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     children: [
                  //       RichText(
                  //           text: TextSpan(children: [
                  //         TextSpan(
                  //           text: "Already have an acount? ",
                  //           style: TextStyle(
                  //             fontSize: 16,
                  //             color: AppColors.blackColor,
                  //             fontWeight: FontWeight.w400,
                  //           ),
                  //         ),
                  //         TextSpan(
                  //           text: "Login",
                  //           style: TextStyle(
                  //             fontSize: 16,
                  //             color: AppColors.blackColor,
                  //             fontWeight: FontWeight.w700,
                  //           ),
                  //         ),
                  //       ])),
                  //     ],
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: (){
                      if(_formKey.currentState!.validate()){
createUser();
                      }
                    },
                    child: Container(
                      height: 55,
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFFFFFF),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColors.appColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  void createUser()async{
   
dynamic result =await _auth.CreateNewUser(_nameController.text, _emailController.text, _passwordController.text);
 
  if(result == null){
    print("Email is not valid");
  Fluttertoast.showToast(msg:"hai");
  }
  
  else{
    print(result.toString());

    _nameController.clear();
    _passwordController.clear();
    _emailController.clear();
    Navigator.pop(context);
  }
  
  }
}