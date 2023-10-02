import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

extension ScrollHidableControllerExt on ScrollController {
  static final hidableControllers = <int, ScrollHidableController>{};
  ScrollHidableController hidable(double size, int hashCode) {
    if (hidableControllers.containsKey(hashCode)) {
      return hidableControllers[hashCode]!;
    }

    return hidableControllers[hashCode] = ScrollHidableController(
      scrollController: this,
      size: size,
    );
  }
}

class ScrollHidableController {
  ScrollController scrollController;
  double size;
  double previousOffset = 0.0;
  double visiblePercentage = 1.0;

  final visibilityNotifier = ValueNotifier<double>(1.0);

  ScrollHidableController({
    required this.scrollController,
    required this.size,
  }) {
    scrollController.addListener(updateVisibility);
  }

  double calculateVisiblePercentage() => 1.0 - (previousOffset / size);

  void updateVisibility() {
    final position = scrollController.position;
    final currentOffset = position.pixels;

    previousOffset =
        (previousOffset + currentOffset - previousOffset).clamp(0.0, size);

    if (position.axisDirection == AxisDirection.down &&
        position.extentAfter == 0.0) {
      if (visibilityNotifier.value == 0.0) return;
      visibilityNotifier.value = 0.0;
      return;
    }

    if (position.axisDirection == AxisDirection.up &&
        position.extentBefore == 0.0) {
      if (visibilityNotifier.value == 1.0) return;
      visibilityNotifier.value = 1.0;
      return;
    }

    final isFullyVisible =
        previousOffset == 0.0 && visibilityNotifier.value == 0.0;
    if (isFullyVisible ||
        (previousOffset == size && visibilityNotifier.value == 1.0)) return;

    visibilityNotifier.value = calculateVisiblePercentage();
  }

  void close() => visibilityNotifier.dispose();
}
