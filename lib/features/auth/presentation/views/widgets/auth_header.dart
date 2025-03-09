import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String header;
  const AuthHeader({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          header,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: 4),
        Text(
          'CREAT AN ACOUNT TO MAKE SDFSDF',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
