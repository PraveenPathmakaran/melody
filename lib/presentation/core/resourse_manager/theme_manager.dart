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
      scaffoldBackgroundColor: ColorManager.primary,
      // ripple color
      splashColor: ColorManager.lightGrey,
      useMaterial3: true,
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
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white),
        elevation: 0,
        foregroundColor: ColorManager.white,
        backgroundColor: ColorManager.primary,
      )),

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
        labelColor: ColorManager.secondary,
        unselectedLabelColor: ColorManager.white,
        dividerColor: ColorManager.grey,
        indicatorColor: ColorManager.secondary,
      ),
      // input decoration theme (text form field)

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ColorManager.white,
        unselectedItemColor: ColorManager.white,
      ),
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
      bottomSheetTheme:
          BottomSheetThemeData(backgroundColor: ColorManager.primary),
      bottomAppBarTheme: BottomAppBarTheme(color: ColorManager.primary),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(background: ColorManager.primary),
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: ColorManager.white),
      dialogTheme: DialogTheme(
          elevation: 0,
          backgroundColor: ColorManager.primary,
          alignment: Alignment.center,
          titleTextStyle:
              getRegularStyle(color: ColorManager.white, fontSize: 20)));
}
