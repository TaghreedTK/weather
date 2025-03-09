// // import 'package:fitness/features/auth/presentation/views/signup/widgets/first_page_view_item.dart';
// // import 'package:fitness/features/auth/presentation/views/signup/widgets/second_page_view_item.dart';
// // import 'package:flutter/material.dart';

// // class SignUpPageView extends StatefulWidget {
// //   const SignUpPageView({
// //     super.key,

// //   });


// //   @override
// //   State<SignUpPageView> createState() => _SignUpPageViewState();
// // }

// // class _SignUpPageViewState extends State<SignUpPageView> {
// //   int _currentIndex = 0;
// //   @override
// //   Widget build(BuildContext context) {
// //     return PageView(
// //       controller: ,
// //       onPageChanged: (index) {
// //         // dy function ely bt3rfny and fy index rkm kam

// //         setState(() {});
// //       },
// //       children: [FPageViewItem(), SPageViewItem()],
// //     );
// //   }
// // }
// class PageViewExample extends StatefulWidget {
//   @override
//   _PageViewExampleState createState() => _PageViewExampleState();
// }

// class _PageViewExampleState extends State<PageViewExample> {

//   // Hello Taghreed 🖐

//   // Bosy pageController da mohem leh ??
//  // ans : 34an da ba2dr mn 5elalo at7km fy 7arket el pages law 3andy button 5aregy controller beyorbot el button be pageview
//   final PageController _pageController = PageController();
  
//   // da variable el index da fy function ta7t fy pageview esmha on pageChanged dy bt3rfny ana fy el saf7a rakm kam fy pageview
//   // fa lama el saf7a btt8yr we an2el le saf7a ely ba3dha ydeny el index bta3ha 34an a5od el index we at7km beh fy ui aw logic mo3yn han3rf eh hwa ta7t
//   int _currentIndex = 0;


// // dy function ely bast5dmha fy "Next" Button 34an yn2lny 3ala el saf7a ely ba3dha

// // page 1 -> index=0
// // page 2 -> index=1
// // page 3 -> index=2

//   void _nextPage() {
//     if (_currentIndex < 2) {
//       _pageController.animateToPage(
//         _currentIndex + 1,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: PageView(
//                   controller: _pageController,
//                   physics: const NeverScrollableScrollPhysics(), // hena banmn3 en el user y3ml scroll
//                   onPageChanged: (index) { // dy function ely bt3rfny and fy index rkm kam
                    
//                     setState(() {
//                       // ba5zn el index fy current index 34an a3ml check lel Navigation
//                       // example : law ana 3ayz fy a5er saf7a el name bta3 el zorar yt8yr mn "next" le "Start"
//                       // yb2a lazm akon m5zn el index bta3 el saf7a 34an yesa3edny a3ml logic a3rf beh ana fy a5r saf7a aw la 
//                       _currentIndex = index; 
                      
//                     });

//                   },
//                   children: [
//                     _buildPage(Colors.yellow, "Page 1"),
//                     _buildPage(Colors.green, "Page 2"),
//                     _buildPage(Colors.blue, "Page 3"),
//                   ],
//                 ),
//               ),
//             ),
//             _buildDotIndicator(),
//             const SizedBox(height: 16),
//             _buildNextButton(),
//             const SizedBox(height: 16),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPage(Color color, String text) {
//     return Container(
//       decoration: BoxDecoration(
//               color: color,

//         borderRadius: BorderRadius.circular(10),
       
//       ),
//       child: Center(
//         child: Text(
//           text,
//           style: const TextStyle(fontSize: 24, color: Colors.white),
//         ),
//       ),
//     );
//   }

//   Widget _buildDotIndicator() {

//     // hena ana 3amlt generate le 3 Container 3ala 4akl circle 
//     // target bta3y eh hena ?
//     // lama aro7 3ala page mo3yana el circle el mokapel leha lonha yt8yr

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: List.generate(3, (index) {
//         return Container(
//           margin: const EdgeInsets.symmetric(horizontal: 4),
//           width: 10,
//           height: 10,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,

//             // hena da el logic ely by8yrly color el circle 
//             // current index -> zy ma 2olna by3rfny ana fy saf7a rakm kam dlw2ty 
//             // index -> da gy mn list.generate da ma3nah en kol circle leha el index el 5as beha


//             // Na5od Example : 
//             /*
//             men 5elal el index
//             kol circle  ha2olha da le index bta3ek 2e7fazeh
//             y3ny 
//             circle 1   your index ya circle = 0
//             circle 2   your index ya circle = 1
//             circle 3   your index ya circle = 2

//             law el currentIndex  beysawy index mn dol yeb2a ha8yar el lone bta3ha

//             y3ny ana mina law 2e3tprt nafsy circle we index bta3y = 1
//             we galy currentIndex = 1

//             ha8yar lony le a5dr masln




//             */
            
            
//             color: _currentIndex == index ? Colors.black : Colors.grey,
//           ),
//         );
//       }),
//     );
//   }

//   Widget _buildNextButton() {

//     /* 
//     dy function ely btt7km fy navigation bta3 el button

       

//     */
//     return ElevatedButton(
//       style: ButtonStyle(
//         //  currentIndex < 2  ma3nah eh ?
//         //  ans : m3nah en ana talma mawslt4 lel saf7a el a5era  ha5ly lone el button purple law wslt lel saf7a ely a5era ha5leh green
//         backgroundColor:_currentIndex < 2 ?  MaterialStateProperty.all(Colors.purple) : MaterialStateProperty.all(Colors.greenAccent),),
     
//              //  currentIndex < 2  ma3nah eh  hena bardo ?
//              // ans : condition da 3amtan 34an a3rf ana wslt lel saf7a el a5era aw la 
//              // fy el 7ala dy ana b8yer esm el button we el function bta3to 3alaa 7asap ana wslt le a5r saf7a aw la 
//              // tab3an kol da mn 5elal currentIndex 
//       onPressed: _currentIndex < 2 ? _nextPage : null  , 
//       child: Text(_currentIndex < 2 ? "Next" : "Start"),
//     );
//   }
// }