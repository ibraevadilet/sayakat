import 'package:flutter/material.dart';
import 'package:sayakat/widgets/hidable/scroll_hidable_controller.dart';

class ScrollHidable extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final ScrollController controller;
  final bool enableOpacityAnimation;
  final Size preferredWidgetSize;

  const ScrollHidable({
    Key? key,
    required this.child,
    required this.controller,
    this.enableOpacityAnimation = true,
    this.preferredWidgetSize = const Size.fromHeight(56),
  }) : super(key: key);

  @override
  Size get preferredSize => preferredWidgetSize;

  @override
  Widget build(BuildContext context) {
    final hidable = controller.hidable(preferredWidgetSize.height, hashCode);

    return ValueListenableBuilder<double>(
      valueListenable: hidable.visibilityNotifier,
      builder: (_, factor, __) => Align(
        heightFactor: factor,
        alignment: const Alignment(0, -1),
        child: SizedBox(
          height: hidable.size,
          child: enableOpacityAnimation
              ? Opacity(opacity: factor, child: child)
              : child,
        ),
      ),
    );
  }
}
