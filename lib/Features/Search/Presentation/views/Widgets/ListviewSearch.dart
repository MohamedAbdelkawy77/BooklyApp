import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/cubit/searchview_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard_Best_Seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Listviewsearch extends StatelessWidget {
  const Listviewsearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchviewCubit, SearchviewState>(
      builder: (context, state) {
        if (state is SearchviewSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    GoRouter.of(context)
                        .push("/bookDetails", extra: state.books[index]);
                  },
                  child: Customcardbestseller(
                    bookModel: state.books[index],
                  ),
                );
              });
        } else if (state is SearchviewFailure) {
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
        } else if (state is SearchviewInitial) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Container(
                      decoration: BoxDecoration(
                          color: MyColors.pink,
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("No Books Searched"),
                      ))),
            ),
          );
        } else {
          return loadingShimmer(height: 200, itemCount: 5, axis: Axis.vertical);
        }
      },
    );
  }
}
