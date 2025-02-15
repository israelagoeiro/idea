part of '../ide_dropdown.dart';

typedef _ListItemBuilder<T> = Widget Function(
  BuildContext context,
  T item,
  bool isSelected,
  VoidCallback onItemSelect,
);
typedef _HeaderBuilder<T> = Widget Function(
  BuildContext context,
  T selectedItem,
);
typedef _HeaderListBuilder<T> = Widget Function(
  BuildContext context,
  List<T> selectedItems,
);
typedef _HintBuilder = Widget Function(
  BuildContext context,
  String hint,
);
typedef _NoResultFoundBuilder = Widget Function(
  BuildContext context,
  String text,
);
