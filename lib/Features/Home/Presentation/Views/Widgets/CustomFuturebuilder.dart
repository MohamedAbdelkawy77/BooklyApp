import 'package:bookly_app/Core/utils/constColors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

// class Futurebuilder extends StatelessWidget {
//   const Futurebuilder({super.key, required this.choose});
//   final int choose;

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<BookModel>>(
//       future: Apiserves().fetchBooks(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(
//             child: loadingShimmer(height: 200, itemCount: 10),
//           );
//         } else if (snapshot.hasError) {
//           return Center(child: Text("Error: ${snapshot.error}"));
//         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//           return const Center(child: Text("No books found"));
//         } else {
//           final books = snapshot.data!;
//           if (choose == 1) {
//             return Listviewhorizontal( );
//           } else if (choose == 2) {
//             return Listviewvertical();
//           } else {
//             return ListViewBookDetails(
//               bookmodel: books,
//             );
//           }
//         }
//       },
//     );
//   }
// }

Widget loadingShimmer(
    {required double height, required int itemCount, required Axis axis}) {
  return SizedBox(
    height: height,
    child: ListView.builder(
      scrollDirection: axis,
      itemCount: itemCount,
      itemBuilder: (_, __) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Shimmer.fromColors(
          baseColor: MyColors.purple,
          highlightColor: MyColors.violet,
          child: Container(
            width: 120,
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    ),
  );
}
