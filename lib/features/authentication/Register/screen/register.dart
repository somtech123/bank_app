import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../constants/color_constanat.dart';
import '../../../../core/shared_widgets/app_input.dart';
import '../../../../core/shared_widgets/google_sigin_card.dart';
import '../../../../core/shared_widgets/input_wrapper.dart';
import '../../../../core/shared_widgets/primary_button.dart';
import '../../../Bottom_tab/screen/bottom_tab.dart';
import '../../../dashbord/screen/dashboard.dart';
import '../../../onboarding/screen/onboarding.dart';
import '../../Login/screen/login.dart';
import '../controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static String path = '/register';

  var ctr = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Create an account',
                style: Theme.of(context)
                    .textTheme
                    .button!
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 36),
              ),
              SizedBox(
                height: 31.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'First name',
                child: AppInput(),
              ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Last name',
                child: AppInput(),
              ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 10,
                labelText: 'Email Address',
                child: AppInput(),
              ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Phone Number',
                child: AppInput(),
              ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Select your gender',
                child: InkWell(
                  onTap: () => showGenderSheet(),
                  child: AbsorbPointer(
                    absorbing: true,
                    child: AppInput(),
                  ),
                ),
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Password',
                child: AppInput(
                  obscureText: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              InputWrapper(
                fontWeight: FontWeight.w600,
                spaceBetween: 5,
                labelText: 'Confirm Password',
                child: AppInput(
                  obscureText: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              PrimaryButton(
                  label: 'Get Started',
                  onPressed: () {
                    //Get.toNamed(BottomBar.path);
                    Get.offAllNamed(BottomBar.path);
                  }),
              SizedBox(
                height: 25.h,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                      text: 'I have an account,',
                      style: Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                            text: '  Login',
                            style: Theme.of(context).textTheme.button!.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.primary,
                                ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Get.toNamed(
                                  OnBoardingScreen.path,
                                );
                              })
                      ]),
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              buildGoogleSignInCard(context),
              SizedBox(
                height: 25.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  showGenderSheet() {
    Get.bottomSheet(
      Wrap(
        children: [
          Container(
            height: 100.h,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: Get.height,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15)),
                color: Colors.white),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        ctr.genderController.text = 'male';
                        Get.back();
                      },
                      child: const Text('Male'),
                    ),
                    SizedBox(height: 5.h),
                    const Divider(),
                    SizedBox(height: 5.h),
                    InkWell(
                      onTap: () {
                        ctr.genderController.text = 'female';
                        Get.back();
                      },
                      child: const Text('Female'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
