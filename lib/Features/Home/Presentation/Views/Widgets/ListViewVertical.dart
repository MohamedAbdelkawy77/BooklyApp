 import 'package:bookly_app/Features/Home/Presentation/Manager/Cubits/Getbestsellerbooks/getbestsellerbooks_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/CustomFuturebuilder.dart';
import 'package:bookly_app/Features/Home/Presentation/Views/Widgets/Customcard_Best_Seller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listviewvertical extends StatelessWidget {
  const Listviewvertical({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetbestsellerbooksCubit, GetbestsellerbooksState>(
      builder: (context, state) {
        if (state is GetbestsellerbooksSuccess) {
          return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Customcardbestseller(
                  bookModel: state.books[index],
                );
              });
        } else if (state is Getbestsellerbooksfailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return loadingShimmer(height: 200, itemCount: 10);
        }
      },
    );
  }
}
