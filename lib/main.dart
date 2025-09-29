import 'package:bookly_app/Core/utils/Roting.dart';
import 'package:bookly_app/Core/utils/Serverlocator.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/GetFeaturesBookscubit/get_feature_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/Getbestsellerbooks/getbestsellerbooks_cubit.dart';
import 'package:bookly_app/Core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupSingelton();
  runApp(BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetFeatureBooksCubit(getit.get<Implehomerepo>())
            ..getFeaturebooks(),
        ),
        BlocProvider(
          create: (context) =>
              GetbestsellerbooksCubit(getit.get<Implehomerepo>())
                ..getFeaturebooks(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kpcolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        routerConfig: router,
      ),
    );
  }
}
