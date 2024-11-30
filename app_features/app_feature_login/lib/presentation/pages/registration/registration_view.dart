import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_vm.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:app_shared/widgets/organisms/app_stepper.dart';
import 'package:app_shared/widgets/organisms/app_header.dart';
import 'package:app_shared/widgets/atoms/cards/app_card.dart';
import 'package:app_shared/widgets/molecules/progression_bar/step_traker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegistrationView extends ConsumerWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final currentPage = ref.watch(_currentPageProvider);
    final namesSection = ['Personal info', 'Step2', 'Step3', 'Step4'];

    return Scaffold(
      body: SafeArea(
        minimum: AppDimesnionsEdgeInsetsExt.smallHorizontal,
        child: Column(
          children: [
            AppCard(
              padding: AppDimesnionsEdgeInsetsExt.mediumAll,
              width: double.infinity,
              height: 200,
              child: Column(
                children: [
                  ///HEADER
                  AppHeader(
                      title: 'Registration', onTap: () => {vm.goBack(context)}),
                  Text('Create an Account',
                      style: context.textTheme.headlineMedium),
                  const VerticalSmallSpacer(),

                  ///BODY
                  Text(
                      'Step ${currentPage + 1} of ${_buildSteps(context, ref).length}: ${namesSection[currentPage]}',
                      style: context.textTheme.titleMedium),
                  const Spacer(),

                  ///FOOTER
                  StepTraker(
                    currentStep: currentPage,
                    totalSteps: _buildSteps(context, ref).length,
                  )
                ],
              ),
            ),
            const VerticalSmallSpacer(),
            Expanded(
              child: AppStepper(
                onPageChanged: (p0) => {
                  vm.setCurrentPage(p0),
                },
                steps: _buildSteps(context, ref),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSteps(BuildContext context, WidgetRef ref) {
    return [
      _buildPersonalInfo(),
      _buildPersonalInfo(),
      _buildPersonalInfo(),
    ];
  }

  Widget _buildPersonalInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: 'name',
        ),
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: 'surname',
        ),
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: 'birthDate',
        ),
      ],
    );
  }
}

final _registrationVmProvider =
    NotifierProvider.autoDispose<RegistrationVm, RegistrationState>(
        () => RegistrationVm());

final _currentPageProvider = StateProvider.autoDispose<int>(
    (ref) => ref.watch(_registrationVmProvider).currentPage);

// class RegistrationView extends ConsumerWidget {
//   const RegistrationView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//         body: SafeArea(
//       minimum: AppDimesnionsEdgeInsetsExt.mediumHorizontal,
//       child: Column(children: [
//         Text('Registration'),
//         AppTextFormFiled(
//           labelText: 'username',
//         ),
//         const VerticalMediumSpacer(),
//         AppTextFormFiled(
//           labelText: 'email',
//         ),

//         const VerticalMediumSpacer(),
//         AppTextFormFiled(
//           labelText: 'wieght',
//         ),
//         const VerticalMediumSpacer(),
//         AppTextFormFiled(
//           labelText: 'height',
//         ),
//         const VerticalMediumSpacer(),
//         AppTextFormFiled(
//           labelText: 'userType',
//         ),
//         const Spacer(),
//         Row(
//           children: [
//             Expanded(
//               child: AppButton(
//                 style: AppButtonStyle.elevated,
//                 text: 'register',
//                 onPressed: () => {},
//               ),
//             ),
//             const HorizontalMediumSpacer(),
//             Expanded(
//               child: AppButton(
//                 style: AppButtonStyle.outlied,
//                 text: 'annulla',
//                 onPressed: () => {},
//               ),
//             )
//           ],
//         )
//       ]),
//     ));
//   }
// }
