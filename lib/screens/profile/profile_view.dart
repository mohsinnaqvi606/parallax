import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax/helper/theme_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            profileImage(),
            form(),
          ],
        ),
      ),
    );
  }

  Widget profileImage() {
    return SizedBox(
      height: Get.height * 0.34,
      width: Get.width,
      child: Stack(
        children: [
          Image.asset(
            'assets/images/profile.jpg',
            width: Get.width,
            fit: BoxFit.cover,
          ),
          backButton(),
          Positioned(
            bottom: 20,
            child: Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  nameAndDesignation(),
                  cameraIcon(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget backButton() {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20),
      height: 30,
      width: 30,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: ThemeColors.primaryColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(
        Icons.arrow_back_rounded,
        size: 20,
        color: ThemeColors.primaryColor,
      ),
    );
  }

  Widget nameAndDesignation() {
    return Column(
      children: [
        Text(
          'Inez Nunez',
          style: TextStyle(
            color: ThemeColors.primaryColor,
            fontSize: 30,
            height: 1,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          'Restaurant Operations',
          style: TextStyle(
            color: Colors.white,
            height: 1.4,
            fontSize: 14,
          ),
        ),
      ],
    );
  }

  Widget cameraIcon() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: ThemeColors.primaryColor,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Icon(
        Icons.camera_alt_outlined,
        color: ThemeColors.secondaryColor,
      ),
    );
  }

  Widget form() {
    return Container(
        height: Get.height * 0.6,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/bg.jpeg'),
          ),
        ),
        child: mainContainer());
  }

  Widget mainContainer() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.all(13),
      child: tabs(),
    );
  }

  Widget tabs() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          decoration: BoxDecoration(
              color: (true) ? ThemeColors.primaryColor : null,
              borderRadius: BorderRadius.circular(20)),
          child: Text(
            'Personal',
            style: TextStyle(
                color: ThemeColors.secondaryColor, fontWeight: FontWeight.w900),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          decoration: BoxDecoration(
              color: (false) ? ThemeColors.primaryColor : null,
              borderRadius: BorderRadius.circular(20)),
          child: const Text(
            'WORK',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
          decoration: BoxDecoration(
              color: (false) ? ThemeColors.primaryColor : null,
              borderRadius: BorderRadius.circular(20)),
          child: const Text(
            'DOCUMENT',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        Icon(Icons.arrow_forward_rounded,color: ThemeColors.primaryColor,)
      ],
    );
  }
}
