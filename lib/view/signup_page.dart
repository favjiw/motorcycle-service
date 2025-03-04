import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motorcycle_service/view/shared/style.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  late bool _isPasswordVisible;
  late bool _isConfirmPasswordVisible;
  bool _isLoading = false;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isPasswordVisible = false;
    _isConfirmPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Sign up'),
          titleTextStyle: authAppbar,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: HexColor('#000000'),
            ),
            onPressed: () {
              // Handle button press
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SizedBox(
                  width: 393.w,
                  height: 752.h,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 21.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Username',
                                style: authLabel,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 18.w, vertical: 10.h),
                                    hintText: 'username',
                                    hintStyle: authPlaceholder,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#E2E2E2")
                                            .withOpacity(0.4),
                                        width: 1.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#85B1B4"),
                                        width: 2.w,
                                      ),
                                    ),
                                    prefixIcon:
                                    Image.asset('assets/username-ic.png')),
                              ),
                              SizedBox(
                                height: 17.h,
                              ),
                              Text(
                                'Email',
                                style: authLabel,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 18.w, vertical: 10.h),
                                    hintText: 'example@gmail.com',
                                    hintStyle: authPlaceholder,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#E2E2E2")
                                            .withOpacity(0.4),
                                        width: 1.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#85B1B4"),
                                        width: 2.w,
                                      ),
                                    ),
                                    prefixIcon:
                                    Image.asset('assets/mail-ic.png')),
                              ),
                              SizedBox(
                                height: 17.h,
                              ),
                              Text(
                                'Password',
                                style: authLabel,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              TextFormField(
                                controller: _passwordController,
                                obscureText: !_isPasswordVisible,
                                style: authValue,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isPasswordVisible =
                                          !_isPasswordVisible;
                                        });
                                      },
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 18.w, vertical: 10.h),
                                    hintText: 'your password',
                                    hintStyle: authPlaceholder,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#E2E2E2")
                                            .withOpacity(0.4),
                                        width: 1.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#85B1B4"),
                                        width: 2.w,
                                      ),
                                    ),
                                    prefixIcon:
                                    Image.asset('assets/passw-ic.png')),
                              ),
                              SizedBox(
                                height: 17.h,
                              ),
                              Text(
                                'Confirm Password',
                                style: authLabel,
                              ),
                              SizedBox(
                                height: 6.h,
                              ),
                              TextFormField(
                                controller: _confirmPasswordController,
                                obscureText: !_isConfirmPasswordVisible,
                                style: authValue,
                                decoration: InputDecoration(
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isConfirmPasswordVisible =
                                          !_isConfirmPasswordVisible;
                                        });
                                      },
                                      icon: Icon(
                                        _isPasswordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 18.w, vertical: 10.h),
                                    hintText: 'confirm password',
                                    hintStyle: authPlaceholder,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#E2E2E2")
                                            .withOpacity(0.4),
                                        width: 1.w,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12.r),
                                      borderSide: BorderSide(
                                        color: HexColor("#85B1B4"),
                                        width: 2.w,
                                      ),
                                    ),
                                    prefixIcon:
                                    Image.asset('assets/passw-ic.png')),
                              ),
                              SizedBox(
                                height: 42.h,
                              ),
                              Center(
                                child: SizedBox(
                                  // width: 240.w,
                                  // height: 50.h,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 93.w, vertical: 15.h),
                                        backgroundColor: blueButton,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(15.r))),
                                    onPressed: () {
                                      // _login();
                                      print('Signup Button clicked');
                                    },
                                    child: Text(
                                      "Sign up",
                                      style: authButtonText,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already have an account? ",
                                style: authFooter,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Login",
                                  style: authFooterLink,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 34.h,
                        ),
                      ],
                    ),
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
