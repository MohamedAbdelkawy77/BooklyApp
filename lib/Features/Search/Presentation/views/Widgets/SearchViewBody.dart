import 'package:bookly_app/Core/utils/Serverlocator.dart';
import 'package:bookly_app/Features/Home/Data/HomeRepo/ImpleHomeRepo.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/cubit/searchview_cubit.dart';
import 'package:bookly_app/Features/Search/Presentation/views/Widgets/CustomTextFeild.dart';
import 'package:bookly_app/Features/Search/Presentation/views/Widgets/ListviewSearch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Searchviewbody extends StatelessWidget {
  const Searchviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchviewCubit(getit.get<Implehomerepo>()),
      child: Column(
        children: [Customtextfeild(), Expanded(child: Listviewsearch())],
      ),
    );
  }
}
