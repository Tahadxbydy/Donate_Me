import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//colors
const Color kPrimaryColor = Color(0xFFBE0038);
const Color kSecondaryColor = Color(0xff404040);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextHintColor = Color.fromARGB(255, 153, 152, 152);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFFFFDADA);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFE74C3C);

// const lightColorScheme = ColorScheme(
//   brightness: Brightness.light,
//   primary: Color(0xFFBE0038),
//   onPrimary: Color.fromARGB(255, 255, 132, 132),
//   primaryContainer: Color.fromARGB(255, 250, 0, 0),
//   onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
//   secondary: Color.fromARGB(255, 255, 0, 0),
//   onSecondary: Color(0xFFFFFFFF),
//   secondaryContainer: Color(0xFF78FBB6),
//   onSecondaryContainer: Color(0xFF002111),
//   tertiary: Color(0xFF006874),
//   onTertiary: Color(0xFFFFFFFF),
//   tertiaryContainer: Color(0xFF97F0FF),
//   onTertiaryContainer: Color(0xFF001F24),
//   error: Color(0xFFBA1A1A),
//   errorContainer: Color(0xFFFFDAD6),
//   onError: Color(0xFFFFFFFF),
//   onErrorContainer: Color(0xFF410002),
//   background: Color(0xFFFFFBFF),
//   onBackground: Color(0xFF201A1A),
//   surface: Color(0xFFFFFBFF),
//   onSurface: Color(0xFF201A1A),
//   surfaceVariant: Color.fromARGB(255, 255, 7, 7),
//   onSurfaceVariant: Color(0xFF524343),
//   outline: Color(0xFF857373),
//   onInverseSurface: Color(0xFFFBEEED),
//   inverseSurface: Color(0xFF362F2F),
//   inversePrimary: Color.fromARGB(255, 0, 0, 0),
//   shadow: Color(0xFF000000),
//   surfaceTint: Color(0xFFBE0038),
//   outlineVariant: Color(0xFFD7C1C2),
//   scrim: Color(0xFF000000),
// );

const darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFFFFB2B6),
  onPrimary: Color(0xFF68001A),
  primaryContainer: Color(0xFF920029),
  onPrimaryContainer: Color(0xFFFFDADA),
  secondary: Color(0xFF59DE9B),
  onSecondary: Color(0xFF003921),
  secondaryContainer: Color(0xFF005232),
  onSecondaryContainer: Color(0xFF78FBB6),
  tertiary: Color(0xFF4FD8EB),
  onTertiary: Color(0xFF00363D),
  tertiaryContainer: Color(0xFF004F58),
  onTertiaryContainer: Color(0xFF97F0FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF201A1A),
  onBackground: Color(0xFFECE0DF),
  surface: Color(0xFF201A1A),
  onSurface: Color(0xFFECE0DF),
  surfaceVariant: Color(0xFF524343),
  onSurfaceVariant: Color(0xFFD7C1C2),
  outline: Color(0xFF9F8C8C),
  onInverseSurface: Color(0xFF201A1A),
  inverseSurface: Color(0xFFECE0DF),
  inversePrimary: Color(0xFFBE0038),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFFFFB2B6),
  outlineVariant: Color(0xFF524343),
  scrim: Color(0xFF000000),
);

//default value
const kDefaultPadding = 20.0;

const klargeSizedBox = SizedBox(
  height: kDefaultPadding * 2,
);

const kSmallSizedBox = SizedBox(
  height: kDefaultPadding,
);
const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(
  height: kDefaultPadding / 2,
);

const kHalfWidthSizedBox = SizedBox(
  width: kDefaultPadding / 2,
);

final kTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBorderRadiusAll = BorderRadius.all(
  Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kBottomBorderRadius = BorderRadius.only(
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final kInputTextStyle = GoogleFonts.poppins(
    color: kTextBlackColor, fontSize: 11.sp, fontWeight: FontWeight.w500);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
