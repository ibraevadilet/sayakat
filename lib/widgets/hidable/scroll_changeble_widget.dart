import 'package:flutter/material.dart';
import 'package:sayakat/widgets/hidable/scroll_hidable_controller.dart';

class ScrollChangeble extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final Widget newChild;
  final ScrollController controller;
  final Size preferredWidgetSize;

  const ScrollChangeble({
    Key? key,
    required this.child,
    required this.newChild,
    required this.controller,
    this.preferredWidgetSize = const Size.fromHeight(56),
  }) : super(key: key);

  @override
  Size get preferredSize => preferredWidgetSize;

  @override
  Widget build(BuildContext context) {
    final hidable = controller.hidable(preferredWidgetSize.height, hashCode);
    return ValueListenableBuilder<double>(
      valueListenable: hidable.visibilityNotifier,
      builder: (_, factor, __) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          switchInCurve: Curves.easeIn,
          switchOutCurve: Curves.easeOut,
          child: factor == 0 ? newChild : child,
        );
      },
    );
  }
}
