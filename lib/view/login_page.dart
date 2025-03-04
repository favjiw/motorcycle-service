import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:motorcycle_service/view/shared/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late bool _isPasswordVisible;
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isPasswordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: SizedBox(
                  width: 393.w,
                  height: 852.h,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100.h,
                        ),
                        Center(
                          child: Container(
                            width: 100.w,
                            height: 100.h,
                            color: greyBorder,
                          ),
                        ),
                        SizedBox(
                          height: 74.h,
                        ),
                        Text('Login', style: authTitle),
                        SizedBox(
                          height: 21.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                      Navigator.pushNamed(context, '/home');
                                      print('Login Button clicked');
                                    },
                                    child: Text(
                                      "Login",
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
                                "Don't have an account? ",
                                style: authFooter,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/signup');
                                },
                                child: Text(
                                  "Sign up",
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
