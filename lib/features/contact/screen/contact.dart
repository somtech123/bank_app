import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/color_constanat.dart';
import '../../../core/shared_widgets/build_contact_card.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});
  static String path = '/Contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Contact',
          style: Theme.of(context).textTheme.button!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.black,
              ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              child: Container(
                height: 200.h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/contact_us.png',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'Contact us',
              style: Theme.of(context).textTheme.button!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Raleway',
                    color: AppColors.black,
                  ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Call or Chat with us and we will',
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Raleway',
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ' answer any question you have',
                style: Theme.of(context).textTheme.button!.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Raleway',
                    ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.chat_processing,
                  color: AppColors.primary,
                ),
                text: 'Chat with a customer experience representative'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.phone,
                  color: AppColors.primary,
                ),
                text: 'Call us'),
            buildContactCard(context,
                icon: const Icon(
                  MaterialCommunityIcons.message,
                  color: AppColors.primary,
                ),
                text: 'FAQ'),
            buildContactCard(context,
                icon: const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  color: AppColors.primary,
                ),
                text: 'Get on Whatsapp Banking'),
            buildContactCard(context,
                icon: const FaIcon(
                  FontAwesomeIcons.facebook,
                  color: AppColors.primary,
                ),
                text: 'Fellows us on Facebook'),
            buildContactCard(context,
                icon: const FaIcon(
                  FontAwesomeIcons.twitter,
                  color: AppColors.primary,
                ),
                text: 'Fellows us on Twitter'),
            buildContactCard(context,
                icon: const FaIcon(
                  FontAwesomeIcons.instagram,
                  color: AppColors.primary,
                ),
                text: 'Fellows on Instagram'),

            SizedBox(
              height: 250.h,
            )

            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Card(
            //     child: Padding(
            //       padding: const EdgeInsets.symmetric(horizontal: 10),
            //       child: ListTile(
            //         leading: Icon(
            //           MaterialCommunityIcons.chat,
            //         ),
            //         title:
            //             Text(),
            //       ),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
