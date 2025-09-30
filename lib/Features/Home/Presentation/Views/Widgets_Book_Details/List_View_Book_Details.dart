import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/CanSeealsoListCubit/Seealso_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Custom_Image_Big.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBookDetails extends StatelessWidget {
  const ListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SeealsoCubit, SeealsoState>(
      builder: (context, state) {
        if (state is SeealsoSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: WidgetofImage(
                    height: 0.25,
                    Width: 0.12,
                    image: state
                        .books[index].volumeInfo!.imageLinks!.smallThumbnail!,
                  ),
                );
              });
        } else if (state is SeealsoFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return loadingShimmer(height: 200, itemCount: 10,axis: Axis.horizontal);
        }
      },
    );
  }
}
