import 'package:donate_me/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  var lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    // scaffoldBackgroundColor: kPrimaryColor,
    primaryColor: kPrimaryColor,

    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor).copyWith(
      secondary: kSecondaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      // textStyle: ,
      minimumSize: const Size.fromHeight(60),
      shape: RoundedRectangleBorder(borderRadius: kBorderRadiusAll),
      backgroundColor: kSecondaryColor,
      // backgroundColor: ,
      foregroundColor: kTextWhiteColor,
      elevation: 4,
    )),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: kSecondaryColor,
      contentTextStyle: TextStyle(
          color: kTextWhiteColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 14.sp : 10.sp,
          fontWeight: FontWeight.w700),
    ),
    appBarTheme: AppBarTheme(
      //height for both phone and tablet
      toolbarHeight: SizerUtil.deviceType == DeviceType.tablet ? 9.h : 7.h,
      backgroundColor: kPrimaryColor,
      titleTextStyle: GoogleFonts.poppins(
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 2.0,
      ),
      iconTheme: IconThemeData(
        color: kOtherColor,
        size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 18.sp,
      ),
      elevation: 0,
    ),

    //input decoration theme for all our the app
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      //label style for formField
      labelStyle: TextStyle(
          fontSize: 50.sp, color: kTextLightColor, fontWeight: FontWeight.w400),
      //hint style
      hintStyle: TextStyle(fontSize: 10.sp, color: kTextLightColor, height: 1),
      //we are using underline input border
      //not outline
      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kTextLightColor, width: 0.7),
          borderRadius: kBorderRadiusAll),
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: kTextLightColor),
          borderRadius: kBorderRadiusAll),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kTextLightColor),
          borderRadius: kBorderRadiusAll),
      // on focus  change color
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: kBorderRadiusAll),
      //color changes when user enters wrong information,
      //we will use validators for this process
      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kErrorBorderColor, width: 1.2),
          borderRadius: kBorderRadiusAll),
      //same on focus error color
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kErrorBorderColor,
            width: 1.2,
          ),
          borderRadius: kBorderRadiusAll),
    ),
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      //custom text for bodyText1
      headlineSmall: TextStyle(
        color: kPrimaryColor,
        //condition if device is tablet or a phone
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 10.sp,
      ),
      headlineMedium: TextStyle(
        color: kPrimaryColor,
        //condition if device is tablet or a phone]
        fontWeight: FontWeight.w300,
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 20.sp : 15.sp,
      ),
      headlineLarge: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.w400,
        //condition if device is tablet or a phone
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 22.sp : 25.sp,
      ),
      bodyLarge: const TextStyle(
          color: kTextHintColor, fontSize: 37.0, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle(
        color: kTextHintColor,
        fontSize: 15.0,
      ),
      bodySmall: TextStyle(
          color: kTextHintColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 15.sp : 10.sp,
          fontWeight: FontWeight.w500),
      titleMedium: TextStyle(
          color: kTextLightColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 14.sp : 17.sp,
          fontWeight: FontWeight.w700),
      titleSmall: TextStyle(
          color: kTextBlackColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
          fontWeight: FontWeight.w200),
    ),
  );
}
