// import 'package:weather_app/core/utils/app_colors.dart';
// import 'package:weather_app/core/utils/size_config.dart';
// import 'package:weather_app/core/widgets/auth_text_field.dart';
// import 'package:weather_app/core/widgets/birth_auth_field.dart';
// import 'package:weather_app/features/auth/presentation/views/signup/widgets/cm_container.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:iconsax/iconsax.dart';

// class SPageViewItem extends StatelessWidget {
//   const SPageViewItem({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController lengthControler = TextEditingController();
//     TextEditingController wightControler = TextEditingController();
//     TextEditingController yearControler = TextEditingController();
//     TextEditingController mounthControler = TextEditingController();
//     TextEditingController dayControler = TextEditingController();
//     return Expanded(
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: SizeConfig.width / 3.5,
//                 child: BAuthTextField(
//                   controller: yearControler,
//                   textInputType: TextInputType.emailAddress,
//                   lable: 'YYY',
//                   inputFormatter: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(2)
//                   ],
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your year of birth';
//                     }
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: SizeConfig.width / 4,
//                 child: BAuthTextField(
//                   controller: mounthControler,
//                   textInputType: TextInputType.emailAddress,
//                   lable: 'MM',
//                   inputFormatter: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(2)
//                   ],
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your mounth';
//                     }
//                   },
//                 ),
//               ),
//               SizedBox(
//                 width: SizeConfig.width / 4,
//                 child: BAuthTextField(
//                   controller: dayControler,
//                   textInputType: TextInputType.number,
//                   inputFormatter: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(2)
//                   ],
//                   lable: 'DD',
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your day of birth';
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: SizeConfig.height * 0.03,
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: SizeConfig.width / 1.2,
//                 child: TAuthTextField(
//                   controller: lengthControler,
//                   inputFormatter: [
//                     FilteringTextInputFormatter.digitsOnly,
//                     LengthLimitingTextInputFormatter(3)
//                   ],
//                   textInputType: TextInputType.number,
//                   lable: 'Length',
//                   icon: Icon(Iconsax.tag_right),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your length in CM';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               CmContainer(
//                 unit: 'CM',
//               )
//             ],
//           ),
//           SizedBox(
//             height: SizeConfig.height * 0.03,
//           ),
//           Row(
//             children: [
//               SizedBox(
//                 width: SizeConfig.width / 1.2,
//                 child: TAuthTextField(
//                   controller: wightControler,
//                   textInputType: TextInputType.number,
//                   lable: 'Wight',
//                   icon: Icon(Iconsax.tag_right),
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter your wight in KG';
//                     }
//                     return null;
//                   },
//                 ),
//               ),
//               CmContainer(
//                 unit: "KG",
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
