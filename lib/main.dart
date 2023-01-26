import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'organisations/cubit/organisations_cubit.dart';
import 'organisations/data/organisations_data_source.dart';

import 'organisations/data/organisations_repository.dart';
import 'organisations/presentation/organisations_screen.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const WhatIsNeededApp());
}

class WhatIsNeededApp extends StatelessWidget {
  const WhatIsNeededApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrganisationsCubit(
        organisationsRepository: OrganisationsRepository(
          dataSource: OrganisationsDataSource(),
        ),
      ),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff0a5bfe),
            // primary: const Color(0xff0a5bfe),
            // secondary: const Color(0xff0a5bfe),
            // error: const Color(0xffff0000),
            // background: const Color(0xffffffff),
            // surface: const Color(0xffFC224F),
            // tertiary: const Color(0xffF3C913),
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            surfaceTintColor:
                Colors.white, // elevation causes an unexpectable tint - disable it here by making tint white
          ),
          textTheme: _buildTextTheme(),
        ),
        home: const OrganisationsScreen(),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }

  TextTheme _buildTextTheme() {
    return GoogleFonts.dmSansTextTheme(
      const TextTheme(
        headline1: TextStyle(
          fontSize: 72.0,
          fontWeight: FontWeight.bold,
        ),
        headline6: TextStyle(
          // where to find that this is used in appBar? Answer: https://api.flutter.dev/flutter/material/TextTheme/headline6.html
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
        ),
        bodyText1: TextStyle(
          fontSize: 16.0,
        ),
        bodyText2: TextStyle(
          fontSize: 14.0,
        ),
      ),
    );
  }
}
