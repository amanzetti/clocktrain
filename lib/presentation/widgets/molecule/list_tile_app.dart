import 'package:clocktrain/domain/providers/edit_provider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/media_screen.dart';
import 'package:clocktrain/presentation/widgets/atoms/text_filed_exercise_tile.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:clocktrain/utils/ext/standard_rateo_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ObjectT {
  final String name;
  final String? description;
  final String mediaUrl;

  const ObjectT({
    required this.name,
    required this.description,
    required this.mediaUrl,
  });
}

enum ListTyleAppType {
  sheet,
  exercise,
}

class ListTileApp<T extends ObjectT> extends ConsumerStatefulWidget {
  const ListTileApp({
    super.key,
    required this.object,
    required this.rateo,
    required this.widthImage,
    required this.mediaUrl,
    this.rep,
    this.set,
    this.padding,
  });

  final T object;
  final EdgeInsetsGeometry? padding;
  final double widthImage;
  final StandardRateo rateo;
  final String mediaUrl;
  final int? rep;
  final int? set;
  static const listTileAppType = ListTyleAppType.exercise;

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

  double _heigthFromWidth() {
    return widget.widthImage * widget.rateo.aspectRatio;
  }

  Widget _buildTitle() {
    return Text(
      widget.object.name,
      style: AppTypography().titleS,
    );
  }

  Widget _buildBody() {
    switch (ListTileApp.listTileAppType) {
      case ListTyleAppType.exercise:
        final bool edit = ref.watch(editProvider);
        return Row(
          children: [
            Text("REP", style: AppTypography().caption),
            Flexible(
              child: TextFiledExerciseTile(
                controller: repController,
                enabled: edit,
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
              ),
            ),
            Text("SET", style: AppTypography().caption),
            Flexible(
              child: TextFiledExerciseTile(
                controller: setController,
                enabled: edit,
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
              ),
            ),
          ],
        );
      case ListTyleAppType.sheet:
        return Text(
          widget.object.description ?? '',
          style: AppTypography().caption,
        );
      default:
        return Container(); // Handle default case
    }
  }

  Widget _buildMedia() {
    switch (ListTileApp.listTileAppType) {
      case ListTyleAppType.exercise:
        return GestureDetector(
          onTap: () => _toggleFullScreen(context),
          child: Container(
            height: _heigthFromWidth(),
            width: widget.widthImage,
            decoration: BoxDecoration(
              color: AppColor().enabledTextField,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Center(
                child: Text(
              "IMG",
              style: AppTypography().titleS,
            )),
          ),
        );
      case ListTyleAppType.sheet:
        return Text("Sheet");
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
        height: _heigthFromWidth(),
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
