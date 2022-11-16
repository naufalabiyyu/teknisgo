import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:teknisigo/app_colors.dart';

const double duakomalima = 2.5;
const double tigakomalima = 3.5;
const double limakomalima = 5.5;
const double empatkomalima = 4.5;
const double nolkomalima = 0.5;
const double nolkomatiga = 0.3;
const double nolkomasatu = 0.1;
const double nolkomadelapanpuluh = 0.80;
const double satukomalima = 1.5;
const double satukomatiga = 1.3;
const double satukomaempat = 1.4;
const double satukomadelapan = 1.8;
const double tujupuluh = 70;
const double seratuslimapuluh = 150;
const double delapanbelas = 18;
const double delapanpuluh = 80;
const double tiga = 3;
const double lima = 5;
const double tujuh = 7;
const double sepuluh = 10;
const double duabelas = 12;
const double tigabelas = 13;
const double empatbelas = 14;
const double enambelas = 16;
const double tujuhbelas = 17;
const double duapuluh = 20;
const double duadua = 22;
const double duaempat = 24;
const double duaenam = 26;
const double tigadua = 32;
const double empatpuluh = 40;
const double limapuluh = 50;
const double enampuluh = 60;
const double seratus = 100;
const double seratuslimabelas = 115;
const double seratustigapuluh = 130;
const double seratuslapanpuluh = 180;
const double duaratus = 200;
const double duaduapuluh = 220;
const double tigalimapuluh = 350;
const double tigatujuhpuluh = 370;
const double limaratus = 500;
const int tigaratus = 300;
const double satuenampuluh = 160;
const double dualimaenam = 256;
const double tigatigapuluh = 330;
const double tigaratusan = 300;
const double duatujuhpuluh = 270;
const double dualapanpuluh = 270;
const double duaenampuluh = 260;

double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
TextStyle centerTextStyle = GoogleFonts.lato(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: AppColors.centerBlackTextColor,
);
TextStyle centersmallTextStyle = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.w300,
  color: AppColors.centerBlackTextColor,
);
TextStyle errorTextStyle = GoogleFonts.lato(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: AppColors.errorColor,
);

TextStyle greyDarkTextStyle = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textColorGreyDark,
    height: 1.45);

TextStyle primaryColorSubtitleStyle = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.colorPrimary,
    height: 1.45);

TextStyle whiteText16 = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle whiteText18 = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle whiteText32 = GoogleFonts.lato(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: Colors.white,
);

TextStyle cyanText16 = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);
TextStyle primaryTextStyle = GoogleFonts.lato(
  color: Color(0xff222B45),
);
TextStyle secondaryTextStyle = GoogleFonts.lato(
  color: Colors.black,
);
TextStyle cyanText32 = GoogleFonts.lato(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorCyan,
);

TextStyle dialogSubtitle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: AppColors.textColorPrimary,
);
TextStyle smallLabelStyle = GoogleFonts.lato(
  fontSize: 13,
  fontWeight: FontWeight.w400,
  height: 1.8,
);
TextStyle labelStyle = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
);

final labelStylePrimaryTextColor = labelStyle.copyWith(
  color: AppColors.textColorPrimary,
  height: 1,
);
final labelStyleWhiteTextColor = labelStyle.copyWith(
  color: Color.fromARGB(255, 255, 255, 255),
  height: 1,
);
final labelStyleAppPrimaryColor = labelStyle.copyWith(
  color: AppColors.colorPrimary,
  height: 1,
);
final labelStylePrimaryTextColorgreen = labelStyle.copyWith(
  color: greenTeknisiColor,
  height: 1,
);
final labelStyleGrey =
    labelStyle.copyWith(color: const Color(0xFF323232).withOpacity(0.5));

final labelCyanStyle = labelStyle.copyWith(color: AppColors.textColorCyan);

TextStyle labelStyleWhite = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w400,
  height: 1.8,
  color: Colors.white,
);

TextStyle appBarSubtitleStyle = GoogleFonts.lato(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.25,
    color: AppColors.colorWhite);

TextStyle cardTitleStyle = GoogleFonts.lato(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorPrimary);

TextStyle cardTitleCyanStyle = GoogleFonts.lato(
  fontSize: 20,
  fontWeight: FontWeight.w500,
  color: AppColors.colorPrimary,
);

TextStyle cardSubtitleStyle = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorGreyLight);

const titleStyle = TextStyle(
  fontFamily: 'lato',
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
);

TextStyle settingsItemStyle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
TextStyle helpsItemStyle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w400,
);
final cardTagStyle = titleStyle.copyWith(color: AppColors.textColorGreyDark);

TextStyle titleStyleWhite = GoogleFonts.lato(
    fontSize: 18, fontWeight: FontWeight.w500, color: AppColors.colorWhite);

TextStyle inputFieldLabelStyle = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  height: 1.34,
  color: AppColors.textColorPrimary,
);

TextStyle cardSmallTagStyle = GoogleFonts.lato(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    height: 1.2,
    color: AppColors.textColorGreyDark);

TextStyle pageTitleStyle = GoogleFonts.lato(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.appBarTextColor);

final pageTitleBlackStyle =
    pageTitleStyle.copyWith(color: AppColors.textColorPrimary);

TextStyle appBarActionTextStyle = GoogleFonts.lato(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: AppColors.colorPrimary,
);

TextStyle pageTitleWhiteStyle = GoogleFonts.lato(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    height: 1.15,
    color: AppColors.colorWhite);

TextStyle extraBigTitleStyle = GoogleFonts.lato(
  fontSize: 40,
  fontWeight: FontWeight.w600,
  height: 1.12,
);

final extraBigTitleCyanStyle =
    extraBigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleStyle = GoogleFonts.lato(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
);

TextStyle mediumTitleStyle = GoogleFonts.lato(
  fontSize: 24,
  fontWeight: FontWeight.w500,
  height: 1.15,
);

TextStyle descriptionTextStyle = GoogleFonts.lato(
  fontSize: 16,
);

final bigTitleCyanStyle =
    bigTitleStyle.copyWith(color: AppColors.textColorCyan);

TextStyle bigTitleWhiteStyle = GoogleFonts.lato(
  fontSize: 28,
  fontWeight: FontWeight.w700,
  height: 1.15,
  color: Colors.white,
);
TextStyle boldNameStyle = GoogleFonts.lato(
  fontSize: 13,
  fontWeight: FontWeight.w700,
  height: 1.34,
);
TextStyle boldTitleStyle = GoogleFonts.lato(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  height: 1.34,
);
final boldTitleWhiteStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorWhite);

final boldTitleCyanStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorCyan);

final boldTitleSecondaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.textColorSecondary);

final boldTitlePrimaryColorStyle =
    boldTitleStyle.copyWith(color: AppColors.colorPrimary);
double defaultMargin = 30.0;

Color primaryColor = Color(0xff28ACAF);
Color secondaryColor = Color(0xff306FB2);
Color borderColor = Color(0xffC5C5C5);
Color backgroundColor1 = Color(0xffFFFFFF);
Color backgroundColor2 = Color(0xffFAFAFA);
Color primaryTextColor = Color(0xff404040);
Color secondaryTextColor = Color(0xff8C8C8C);
Color blackColor = Color(0xff404040);
Color greenColor = Color(0xff00BA88);
Color greenTeknisiColor = Color.fromRGBO(40, 172, 175, 1);
Color redColor = Color(0xffEE4137);
Color subtitleTextColor = Color(0xffC5C5C5);
Color backgroundColor = Color.fromRGBO(240, 245, 248, 1);
Color colomalamat = Color.fromRGBO(233, 245, 255, 1);
Color colorgrey = Color(0xff8F9BB3);
Color greenteknisi = Color(0xff28ACAF);
Color jingga = Color(0xffFFFBEA);
Color yellow = Color(0xffD6AD00);
Color bgcolor = Color(0xffCF0F5F8);
Color greywhite = Color(0xffE9FFFF);
Color greenButton = Color.fromRGBO(232, 254, 255, 1);
Color bgWaiting = Color.fromRGBO(213, 229, 218, 1);
