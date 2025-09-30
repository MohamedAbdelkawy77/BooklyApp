import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/GetFeaturesBookscubit/get_feature_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Listviewhorizontal extends StatelessWidget {
  const Listviewhorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetFeatureBooksCubit, GetFeatureBooksState>(
      builder: (context, state) {
        if (state is GetFeatureBooksSuccess) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      GoRouter.of(context)
                          .push("/bookDetails", extra: state.books[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: WidgetofImage(
                        height: 0.7,
                        Width: 0.20,
                        image: state
                            .books[index].volumeInfo!.imageLinks!.thumbnail!,
                      ),
                    ));
              });
        } else if (state is GetFeatureBooksFailure) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
                child: Container(
                    decoration: BoxDecoration(
                        color: MyColors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(state.errorMessage),
                    ))),
          );
        } else {
          return loadingShimmer(height: 200, itemCount: 10);
        }
      },
    );
  }
}
