import 'package:clocktrain/data/models/user_model.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/molecules/placeholder_img.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/date_time_ext.dart';
import 'package:clocktrain/utils/ext/double_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  static const widthImage = 100.0;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // testUpdateState(ref);
    // Otteniamo lo stato dell'utente
    final userState = ref.watch(userProvider);

    // Verifica se la lista è vuota e, se sì, richiama getUserById
    if (userState.isEmpty) {
      // ref.read(userProvider.notifier).getUserById('user123');
      ref.read(userProvider.notifier).getUserByIdMock('user123');
    }

    // Mostra l'indicatore di caricamento finché non ci sono dati
    if (userState.isEmpty) {
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final user = userState.first;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          _buildUserSection(context, ref, user), // Passiamo l'utente qui
          _buildProgressionCard(context),
        ],
      ),
    );
  }

  Widget _buildUserSection(BuildContext context, WidgetRef ref, User user) {
    return SizedBox(
      height: widthImage.heightFromWidth(StandardRateo.ratio_9_16),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                    flex: 4,
                    child: Center(
                      child: PlaceholderImg(
                        widthImage: widthImage,
                        rateo: StandardRateo.ratio_9_16,
                      ),
                    )),
                Expanded(
                    flex: 8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('${user.name} ${user.surname}'),
                        Text(user.birthDate.toddMMMyyyyString()),
                        Text('${user.height} cm'),
                        Text('${user.weight} kg'),
                        Text('Goals: ${user.goal}'),
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
        height: 200,
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
}
