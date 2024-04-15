// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CustomSearchGrid extends StatelessWidget {
//   const CustomSearchGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Column(
//         children: [
//           Row(
//             children: [
//               Expanded(
//                 flex: 1,
//                 child: Column(
//                   children: [
//                     Container(
//                       color: Color.fromARGB(255, 9, 46, 228),
//                       height: MediaQuery.sizeOf(context).width * .33,
//                       decoration: BoxDecoration(

//                       ),
//                     ),
//                     Container(
//                       color: const Color.fromARGB(255, 225, 67, 67),
//                       height: MediaQuery.sizeOf(context).width * .33,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Expanded(
//               child: Container(
//             height: 200,
//             color: Colors.brown,
//           ))
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class InstagramSearchPageFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
      ),
      itemCount: 100,
      itemBuilder: (context, index) {
        return Image.network('https://picsum.photos/200/200?image=$index');
      },
    );
  }
}
