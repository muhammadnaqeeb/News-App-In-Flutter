// import 'package:flutter/material.dart';
// import 'package:news/screens/discover_screen.dart';
// import 'package:news/screens/home_screen.dart';

// class BottomNavBar extends StatelessWidget {
//   final int index;
//   const BottomNavBar({
//     required this.index,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(
//       currentIndex: index,
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       selectedItemColor: Colors.black,
//       unselectedItemColor: Colors.black.withAlpha(100),
//       items: [
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: const EdgeInsets.only(left: 50),
//             child: IconButton(
//               onPressed: () {
//                 Navigator.pushNamed(context, HomeScreen.routeName);
//               },
//               icon: const Icon(Icons.home),
//             ),
//           ),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: IconButton(
//             onPressed: () {
//               Navigator.pushNamed(context, DiscoverScreen.routeName);
//             },
//             icon: const Icon(Icons.search),
//           ),
//           label: 'Search',
//         ),
//         BottomNavigationBarItem(
//           icon: Container(
//             margin: const EdgeInsets.only(right: 50),
//             child: IconButton(
//               onPressed: () {
//                 // print('No profile for now');
//               },
//               icon: const Icon(Icons.person),
//             ),
//           ),
//           label: 'Person',
//         ),
//       ],
//     );
//   }
// }
