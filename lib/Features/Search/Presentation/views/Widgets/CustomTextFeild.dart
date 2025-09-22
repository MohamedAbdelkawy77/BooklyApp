import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  Customtextfeild({super.key});
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      print("Search Work");
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
