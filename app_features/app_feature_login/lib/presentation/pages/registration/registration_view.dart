import 'package:flutter/material.dart';

import 'package:app_shared/app_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_vm.dart';
import 'package:app_feature_login/presentation/pages/registration/steps/login_info_view.dart';
import 'package:app_feature_login/presentation/pages/registration/steps/personal_info_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationView extends ConsumerWidget {
  RegistrationView({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final currentPage = ref.watch(_currentPageProvider);
    final namesSection = ['Personal info', 'Login Info'];

    return Scaffold(
      body: Form(
        key: formKey,
        child: SafeArea(
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
                        leftIcon: SvgWidget(path: AppAsset.arrowBackIcon),

                        // context.asset
                        //     .arrowBackSvg(context, package: 'app_shared'),
                        title: 'Registration',
                        onTap: () => {vm.goBack(context)}),
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
                  formKey: formKey,
                  backText: context.loc.back.toUpperCase(),
                  nextText: context.loc.next.toUpperCase(),
                  doneText: context.loc.done.toUpperCase(),
                  onPageChanged: (p0) => {
                    vm.setCurrentPage(p0),
                  },
                  onDone: () {
                    final formState = formKey.currentState;
                    if (formState == null || !formState.validate()) {
                      // Blocca la finalizzazione se la validazione fallisce
                      return;
                    }
                    formState.save();
                    vm.getUserData(formKey);
                  },
                  steps: _buildSteps(context, ref),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildSteps(BuildContext context, WidgetRef ref) {
    return [PersonalInfoView(), LoginInfoView()];
  }
}

final _registrationVmProvider = registrationVmProvider;

final registrationVmProvider =
    NotifierProvider.autoDispose<RegistrationVm, RegistrationState>(
        () => RegistrationVm());

final _currentPageProvider = StateProvider.autoDispose<int>(
    (ref) => ref.watch(_registrationVmProvider).currentPage);
