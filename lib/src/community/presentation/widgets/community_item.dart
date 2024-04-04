// import 'package:flutter/material.dart';
//
// import '../../../../core/widgets/scaffold/custom_divider.dart';
// import '../../domain/entities/community.dart';
//
// class NotificationItem extends StatelessWidget {
//   final Community notification;
//   final bool isFirst;
//   final bool isLast;
//
//   const NotificationItem(
//       {Key? key, required this.isFirst, required this.isLast, required this.notification})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
//           decoration: BoxDecoration(
//             color: theme.colorScheme.background,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(isFirst ? 10 : 0),
//               topRight: Radius.circular(isFirst ? 10 : 0),
//               bottomLeft: Radius.circular(isLast ? 10 : 0),
//               bottomRight: Radius.circular(isLast ? 10 : 0),
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color:
//                     isFirst ? theme.primaryColor : theme.colorScheme.background,
//                 spreadRadius: 0,
//                 blurRadius: 0,
//                 offset: const Offset(3, 0), // changes position of shadow
//               ),
//             ],
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     notification.title,
//                     style: theme.textTheme.headlineMedium,
//                   ),
//                   Text(
//                     //DateFormat('hh:mm a').format(),
//                     notification.time,
//                     style: theme.textTheme.displayMedium!.copyWith(
//                       color: isFirst ? theme.primaryColor : null,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 notification.description,
//                 style: theme.textTheme.displayMedium,
//               ),
//             ],
//           ),
//         ),
//         if (!isLast)
//           const CustomDivider(
//             height: 2,
//             margin: EdgeInsets.symmetric(horizontal: 15),
//             indent: 0,
//             endIndent: 0,
//           ),
//       ],
//     );
//   }
// }
