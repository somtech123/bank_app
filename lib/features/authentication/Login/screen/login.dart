import 'package:bank_app/core/shared_widgets/app_input.dart';
import 'package:bank_app/core/shared_widgets/input_wrapper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/color_constanat.dart';
import '../../../../core/shared_widgets/google_sigin_card.dart';
import '../../../../core/shared_widgets/primary_button.dart';
import '../../../Bottom_tab/screen/bottom_tab.dart';
import '../../../dashbord/screen/dashboard.dart';
import '../../Register/screen/register.dart';
import '../controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static String path = '/login';
  var ctr = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Text(
                'Welcome back',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 36),
              ),
              SizedBox(
                height: 31.h,
              ),
              // InputWrapper(
              //   fontWeight: FontWeight.w600,
              //   spaceBetween: 5,
              //   labelText: 'Email address*',
              //   child: AppInput(),
              // ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Password*',
                child: AppInput(),
              ),
              SizedBox(
                height: 25.h,
              ),
              RichText(
                text: TextSpan(
                    text: 'Forgot password?',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: '  Reset',
                        style: Theme.of(context).textTheme.button!.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.primary),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      )
                    ]),
              ),
              SizedBox(
                height: 25.h,
              ),
              PrimaryButton(
                  label: 'Login',
                  onPressed: () {
                    // Get.toNamed(BottomBar.path);
                    Get.offAllNamed(BottomBar.path);
                  }),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'Don\'t have an account,',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  Create Account',
                            style: Theme.of(context).textTheme.button!.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.primary),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(
                                  RegisterScreen.path,
                                );
                              })
                      ]),
                ),
              ),
              // SizedBox(
              //   height: 25.h,
              // ),
              // buildGoogleSignInCard(context),
              SizedBox(
                height: 25.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
