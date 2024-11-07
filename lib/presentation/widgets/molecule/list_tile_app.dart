import 'package:clocktrain/data/models/rep_model.dart';
import 'package:clocktrain/domain/providers/ui/edit_provider.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/media_screen.dart';
import 'package:clocktrain/presentation/widgets/atoms/text_filed_exercise_tile.dart';
import 'package:clocktrain/presentation/widgets/molecule/placeholder_img.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/double_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ObjectT {
  final String name;
  final String? description;
  final String? mediaUrl;

  const ObjectT({
    required this.name,
    required this.description,
    required this.mediaUrl,
  });
}

enum ListTileAppType {
  workout,
  exercise,
}

class ListTileApp<T extends ObjectT> extends ConsumerStatefulWidget {
  const ListTileApp({
    super.key,
    required this.object,
    required this.rateo,
    required this.widthImage,
    required this.mediaUrl,
    required this.listTileAppType,
    this.rep,
    this.reps,
    this.set,
    this.padding,
  });

  final T object;
  final EdgeInsetsGeometry? padding;
  final double widthImage;
  final StandardRateo rateo;
  final String mediaUrl;
  final int? rep;
  final List<Rep>? reps;
  final int? set;
  final ListTileAppType listTileAppType;

  @override
  _ListTileAppState<T> createState() => _ListTileAppState<T>();
}

class _ListTileAppState<T extends ObjectT>
    extends ConsumerState<ListTileApp<T>> {
  late TextEditingController repController;
  late TextEditingController setController;

  @override
  void initState() {
    super.initState();
    repController = TextEditingController(text: widget.rep.toString());
    setController = TextEditingController(text: widget.set.toString());
  }

  @override
  void dispose() {
    repController.dispose();
    setController.dispose();
    super.dispose();
  }

  Widget _buildTitle() {
    return Text(
      widget.object.name,
      style: AppTypography().titleS,
    );
  }

  List<Widget> _generateReps() {
    List<Widget> list = [];
    if (widget.reps != null) {
      for (var e in widget.reps!) {
        list.add(Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'rep: ${e.repNumber}',
              style: AppTypography.instance.caption,
            ),
            const SizedBox(width: 8.0),
            Text(
              'kg: ${e.weight}',
              style: AppTypography.instance.caption,
            ),
          ],
        ));
      }
      return list;
    }
    return list;
  }

  Widget _buildBody() {
    switch (widget.listTileAppType) {
      case ListTileAppType.exercise:
        final bool edit = ref.watch(editProvider);
        return Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Flexible(
                      child: TextFiledExerciseTile(
                        controller: setController,
                        enabled: edit,
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      ),
                    ),
                    Text("SET", style: AppTypography().caption),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: _generateReps(),
                  // [
                  //   Text("REP", style: AppTypography().caption),
                  //   Flexible(
                  //     child: TextFiledExerciseTile(
                  //       controller: repController,
                  //       enabled: edit,
                  //       padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  //     ),
                  //   ),
                  // ],
                ),
              ),
            ],
          ),
        );
      case ListTileAppType.workout:
        return Expanded(
          child: Column(
            children: [
              Text(
                widget.object.description ?? '',
                style: AppTypography().caption,
              ),
              const Spacer(),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: AppColor().primaryButtonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      side: BorderSide(color: AppColor().primaryButtonColor),
                    ),
                  ),
                  onPressed: () {
                    ref.read(mainAppStateProvider.notifier).updateTitle(
                          widget.object.name,
                        );
                    context.go(
                        '/sheet_list_page${AppPath.sheetPageWithId(widget.object.name)}');
                  },
                  child: const Text('Start Workout')),
            ],
          ),
        );
      default:
        return Container(); // Handle default case
    }
  }

  Widget _buildMedia() {
    switch (widget.listTileAppType) {
      case ListTileAppType.exercise:
        return PlaceholderImg(
          onTap: () => _toggleFullScreen(context),
          widthImage: widget.widthImage,
          rateo: widget.rateo,
        );
      case ListTileAppType.workout:
        return PlaceholderImg(
            rateo: widget.rateo, widthImage: widget.widthImage);
      default:
        return Container();
    }
  }

  OverlayEntry? _overlayEntry;

  _toggleFullScreen(BuildContext context) {
    // Handle toggleFullScreen
    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (context) => SafeArea(
          right: false,
          left: false,
          bottom: false,
          child: Material(
            color: Colors.black.withOpacity(0.9),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: MiniYoutubePlayer(
                    rateo: widget.rateo,
                    widthVideo: context.mq.size.width - 60,
                    videoUrl: widget.mediaUrl,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, right: 8.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: _removeOverlay,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      Overlay.of(context, rootOverlay: true).insert(_overlayEntry!);
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? const EdgeInsets.all(0),
      child: SizedBox(
        height: widget.widthImage.heightFromWidth(widget.rateo),
        width: context.mq.size.width,
        key: widget.key,
        child: Row(
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTitle(),
                  _buildBody(),
                ],
              ),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  _buildMedia(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
