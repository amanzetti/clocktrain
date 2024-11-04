import 'package:clocktrain/presentation/themes/app_color.dart'; // Aggiunto import per AppColor
import 'package:clocktrain/presentation/widgets/atoms/square_icon_button.dart';
import 'package:flutter/material.dart';

class SlidableItem extends StatefulWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onDelete;
  final VoidCallback? onMore;
  final Widget child;

  const SlidableItem({
    this.onEdit,
    this.onDelete,
    this.onMore,
    super.key,
    required this.child,
  });

  @override
  _SlidableItemState createState() => _SlidableItemState();
}

class _SlidableItemState extends State<SlidableItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _dragExtent;
  late bool isOpened;
  final GlobalKey _childKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );
    _dragExtent = 0.0;
    isOpened = false;
  }

  void _onDragUpdate(DragUpdateDetails details) {
    _dragExtent -= details.primaryDelta ?? 0;
    _controller.value = (_dragExtent / context.size!.width).clamp(0.0, 1.0);
  }

  void _onDragEnd(DragEndDetails details) {
    if (_controller.value > 0.1) {
      _controller.animateTo(0.3);
      isOpened = true;
    } else {
      _controller.animateTo(0.0);
      isOpened = false;
    }
    _dragExtent = 0.0;
  }

  void _onCloseSwipe(DragEndDetails details) {
    if (isOpened) {
      _controller.animateTo(0.0);
      isOpened = false;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor.instance; // Accesso all'istanza di AppColor

    return GestureDetector(
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: isOpened ? _onCloseSwipe : _onDragEnd,
      child: Stack(
        children: [
          // Background con i bottoni di azione
          Positioned.fill(
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SquareIconButton(
                    gKey: _childKey,
                    onPressed: widget.onEdit,
                    icon: Icons.edit,
                    iconColor: Colors.white,
                    backgroundColor: colors
                        .editButtonColor, // Colore del bottone di modifica
                  ),
                  SquareIconButton(
                    gKey: _childKey,
                    onPressed: widget.onDelete,
                    icon: Icons.delete,
                    iconColor: Colors.white,
                    backgroundColor: colors
                        .deleteButtonColor, // Colore del bottone di cancellazione
                  ),
                ],
              ),
            ),
          ),
          // Foreground con lo sliding ListTile
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Align(
                alignment: Alignment.centerLeft,
                child: FractionalTranslation(
                  translation: Offset(-_controller.value, 0),
                  child: widget.child,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
