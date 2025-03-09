// import 'package:weather_app/core/utils/app_colors.dart';
// import 'package:weather_app/core/widgets/auth_text_field.dart';
// import 'package:weather_app/core/widgets/my_button.dart';
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

// class SignInForm extends StatelessWidget {
//   SignInForm({super.key});
//   TextEditingController userNameController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           TAuthTextField(
//             controller: userNameController,
//             textInputType: TextInputType.emailAddress,
//             lable: 'Email',
//             icon: Icon(Iconsax.tag_right),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your email';
//               }
//               return null;
//             },
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//           TAuthTextField(
//             controller: passwordController,
//             lable: 'Password',
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return 'Please enter your password';
//               } else if (value.length < 6) {
//                 return 'Password must be at least 6 characters';
//               }
//               return null;
//             },
//             icon: Icon(Iconsax.password_check),
//             icon2: Icon(Iconsax.eye),
//           ),
//           const SizedBox(
//             height: 32,
//           ),

//           Padding(
//             padding: const EdgeInsets.only(right: 20.0, left: 20.0),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: Text(
//                 'Forget Info',
//                 style: Theme.of(context).textTheme.labelMedium,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 16,
//           ),

//           // signin button
//           SizedBox(
//             width: double.infinity,
//             child: MyButton(
//               onPressed: () {},
//               label: 'Sign In',
//             ),
//           ),

//           // creat account
//           SizedBox(
//             width: double.infinity,
//             child: TextButton(
//                 onPressed: () {},
//                 child: Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     'DON\'T HAVE AN ACOUNT?',
//                     style: TextStyle(
//                         color: AppColors.lightPrimaryColor, fontSize: 10),
//                   ),
//                 )),
//           ),
//           const SizedBox(
//             height: 32,
//           ),
//         ],
//       ),
//     );
//   }
// }
