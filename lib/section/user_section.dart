import 'package:flutter/material.dart';

class UserSection extends StatelessWidget {
  const UserSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 25,
          backgroundImage: AssetImage('assets/dp.png'),
        ),
        const SizedBox(
          width: 30,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      'Maria',
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Image.asset('assets/waving.png', width: 28),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
