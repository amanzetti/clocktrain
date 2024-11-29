import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:clocktrain/presentation/pages/sheet/workout_editor/exercise_editor_page/exercise_manager_state.dart';
import 'package:clocktrain/presentation/pages/sheet/workout_editor/exercise_editor_page/exercise_manger_vm.dart';
import 'package:clocktrain/app_shared/themes/app_asset.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/chips/app_chip.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/skeleton/base_skeleton.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/text_fields/app_text_field.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/molecules/dropdown.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/organisms/chips_form_field.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/organisms/header_with_close_button.dart';
import 'package:clocktrain/app_shared/utils/ext/build_context_ext.dart';
import 'package:clocktrain/app_shared/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseEditorPage extends ConsumerStatefulWidget {
  const ExerciseEditorPage({super.key});

  @override
  ConsumerState<ExerciseEditorPage> createState() => _ExerciseEditorPageState();
}

class _ExerciseEditorPageState extends ConsumerState<ExerciseEditorPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _executeAfterPageLoad();
    });
  }

  void _executeAfterPageLoad() {
    ref.read(_exerciseVmProvider.notifier).getAllMuslceGroup();
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(_isLoadingProvider);

    return isLoading ? const BaseSkeleton() : _ExerciseEditorPage();
  }
}

class _ExerciseEditorPage extends ConsumerWidget {
  _ExerciseEditorPage();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(_exerciseVmProvider.notifier);

    ///Exercise
    final name = ref.watch(_nameProvider);
    final description = ref.watch(_descriptionProvider);
    final videoUrl = ref.watch(_videoUrlProvider);
    final imageUrl = ref.watch(_imageUrlProvider);
    final difficultyLevel = ref.watch(_difficultyLevelProvider);
    final muscleGroupsSelected = ref.watch(_muscleGroupsSelectedProvider);
    final muscleGroups = ref.watch(_muscleGroupsProvider);

    return Material(
      color: context.colorScheme.surface,
      child: SafeArea(
        minimum: AppDimesnionsEdgeInsetsExt.mediumHorizontal,
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const HeaderWithCloseButton(title: 'Exercise Editor'),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              AppTextFormFiled(
                initialValue: name,
                onSaved: (p0) => vm.saveExerciseName(p0),
                validator: (p0) => _validator(context, p0),
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              AppTextFormFiled(
                initialValue: description,
                onSaved: (p0) => vm.saveExerciseDescription(p0),
                validator: (p0) => _validator(context, p0),
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              AppTextFormFiled(
                initialValue: difficultyLevel,
                onSaved: (p0) => vm.saveExerciseDifficultyLevel(p0),
                validator: (p0) => _validator(context, p0),
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              _buildListChips(context, ref,
                  vm: vm,
                  listValues: muscleGroups,
                  listSelected: muscleGroupsSelected),
              const Spacer(),
              AppElevatedButton(
                width: double.infinity,
                text: context.loc.save.toUpperCase(),
                onPressed: () => {vm.createExercse()},
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildListChips(BuildContext context, WidgetRef ref,
      {required ExerciseMangerVm vm,
      required List<MuscleGroup>? listValues,
      required List<MuscleGroup>? listSelected}) {
    final vm = ref.read(_exerciseVmProvider.notifier);

    List<ChipData> chips = [];
    if (listSelected != null) {
      chips = listSelected.map((e) {
        return ChipData(label: e.groupName, onDelete: () => vm.onDeleteTap(e));
      }).toList();
    }

    return ChipsFormField(
      actionButtonbackgroundColor: context.colorScheme.surface,
      chips: chips,
      onAddChip: () async {
        showMultiSelectDialog(context, listValues ?? [], listSelected,
            vm.saveExerciseMuscleGroups);
      },
    );
  }

  _validator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.loc.genericError;
    }
    return null;
  }
}

final _exerciseVmProvider =
    NotifierProvider.autoDispose<ExerciseMangerVm, ExerciseManagerState>(
  () => ExerciseMangerVm(),
);

final _isLoadingProvider = StateProvider.autoDispose<bool>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.isLoading;
});

final _nameProvider = StateProvider.autoDispose<String?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.name;
});

final _descriptionProvider = StateProvider.autoDispose<String?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.description;
});

final _videoUrlProvider = StateProvider.autoDispose<String?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.videoUrl;
});

final _imageUrlProvider = StateProvider.autoDispose<String?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.imageUrl;
});

final _difficultyLevelProvider = StateProvider.autoDispose<String?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.difficultyLevel;
});

final _muscleGroupsSelectedProvider =
    StateProvider.autoDispose<List<MuscleGroup>?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.muscleGroupsSelected;
});

final _muscleGroupsProvider =
    StateProvider.autoDispose<List<MuscleGroup>?>((ref) {
  final state = ref.watch(_exerciseVmProvider);
  return state.muscleGroups;
});
