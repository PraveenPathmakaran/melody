import 'package:flutter/material.dart';

import 'color_manager.dart';
import 'font_manager.dart';
import 'styles_manager.dart';
import 'value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
      // main colors of the app
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryOpacity70,
      primaryColorDark: ColorManager.darkPrimary,
      disabledColor: ColorManager.white,
      // ripple color
      splashColor: ColorManager.primaryOpacity70,
      // card view theme
      cardTheme: CardTheme(
        color: ColorManager.primary,
        elevation: AppSize.s4,
      ),
      iconTheme: IconThemeData(color: ColorManager.white),

      // App bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: ColorManager.primary,
          elevation: AppSize.s4,
          shadowColor: ColorManager.primaryOpacity70,
          titleTextStyle: getRegularStyle(
              color: ColorManager.white, fontSize: FontSize.s16),
          iconTheme: IconThemeData(color: ColorManager.white)),
      // Button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: ColorManager.white,
          buttonColor: ColorManager.primary,
          splashColor: ColorManager.primaryOpacity70),

      // elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(color: ColorManager.white),
              backgroundColor: ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),

      // Text theme
      textTheme: TextTheme(
        displayLarge:
            getSemiBoldStyle(color: ColorManager.white, fontSize: FontSize.s16),
        displayMedium:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16),
        displaySmall:
            getBoldStyle(color: ColorManager.white, fontSize: FontSize.s16),
        headlineMedium:
            getRegularStyle(color: ColorManager.white, fontSize: FontSize.s14),
        titleMedium:
            getMediumStyle(color: ColorManager.white, fontSize: FontSize.s14),
        titleSmall:
            getMediumStyle(color: ColorManager.white, fontSize: FontSize.s14),
        bodyMedium: getMediumStyle(color: ColorManager.white),
        bodySmall: getRegularStyle(color: ColorManager.white),
        bodyLarge: getRegularStyle(color: ColorManager.white),
        labelSmall: getRegularStyle(color: ColorManager.white),
      ),
      listTileTheme: ListTileThemeData(
        textColor: ColorManager.white,
        iconColor: Colors.white,
        tileColor: ColorManager.primary,
      ),
      tabBarTheme: TabBarTheme(
          labelColor: ColorManager.white,
          unselectedLabelColor: ColorManager.grey),
      // input decoration theme (text form field)

      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(AppPadding.p8),
        // hint style
        hintStyle: getRegularStyle(color: ColorManager.white),

        // label style
        labelStyle: getMediumStyle(color: ColorManager.white),
        // error style
        errorStyle: getRegularStyle(color: ColorManager.error),

        // enabled border
        enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // focused border
        focusedBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),

        // error border
        errorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.error, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
        // focused error border
        focusedErrorBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
            borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8))),
      ),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(background: ColorManager.primary),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.white));
}
