import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/cubit/searchview_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Customtextfeild extends StatelessWidget {
  Customtextfeild({super.key});
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    String text = "";
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
      child: Form(
        key: formkey,
        child: TextFormField(
            validator: (val) {
              if (val!.isEmpty) {
                return "The Feild is Empty";
              } else {
                return null;
              }
            },
            onChanged: (val) {
              text = val;
            },
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      print("Search Work");
                      BlocProvider.of<SearchviewCubit>(context)
                          .getFeaturebooks(bookname: text);
                    }
                  },
                  icon: const Icon(Icons.search)),
              suffixIconColor: MyColors.violet,
              hintText: "Search for Book",
              border: CustomInputBorder(),
              focusedBorder: CustomInputBorder()
                  .copyWith(borderSide: BorderSide(color: MyColors.violet)),
            )),
      ),
    );
  }

  OutlineInputBorder CustomInputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)));
  }
}
