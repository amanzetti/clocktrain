import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/date_time_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  final String surname;
  final DateTime birthDate;
  final int height;
  final double weight;
  final String goal;
  final String recentStatus;
  final String recentDescription;

  User({
    required this.name,
    required this.surname,
    required this.birthDate,
    required this.height,
    required this.weight,
    required this.goal,
    required this.recentStatus,
    required this.recentDescription,
  });
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static var user = User(
    name: 'Jhon',
    surname: 'Smith',
    birthDate: DateTime(2000, 1, 1),
    height: 180,
    weight: 80,
    goal: 'Correre la maratona',
    recentStatus: 'Completed',
    recentDescription: '10 km in 45 mins',
  );

  Widget _buildUserSection(BuildContext context) {
    return SizedBox(
      height: 220,
      width: context.mq.size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Text(
                  'Profile Overview',
                  style: AppTypography().titleS,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Row(
              children: [
                const Expanded(flex: 4, child: Text('IMAGE')),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('${user.name} ${user.surname}'),
                        Text(user.birthDate.toddMMMyyyyString()),
                        Text('${user.height} cm'),
                        Text('${user.weight} kg'),
                        Text('Goals: ${user.goal}'),
                        Text('Recent: ${user.recentStatus}'),
                        Text('Recent: ${user.recentDescription}'),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressionCard(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 100,
        width: context.mq.size.width,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('PROGRESSION'),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _buildUserSection(context),
          _buildProgressionCard(context),
        ],
      ),
    );
  }
}
