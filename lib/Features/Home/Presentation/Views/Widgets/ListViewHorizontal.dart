 import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/GetFeaturesBookscubit/get_feature_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/BookDetails.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listviewhorizontal extends StatelessWidget {
  const Listviewhorizontal({super.key });
 
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bookdetails(
                            bookModel: state.books[index],
                          ),
                        ),
                      );
                      print(
                          state.books[index].volumeInfo!.imageLinks!.thumbnail ?? "");
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 20),
                      child: WidgetofImage(
                        height: 0.7,
                        Width: 0.20,
                        image: state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                      ),
                    ));
              });
        } 
        else if (state is GetFeatureBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return loadingShimmer(height: 200, itemCount: 10);
        }
      },
    );
  }
}
