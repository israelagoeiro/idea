import 'package:flutter/material.dart';

/// Hz Divider
typedef IdeContextMenuDividerBuilder = Widget Function(BuildContext context);

class IdeContextMenuDivider extends StatelessWidget {
  const IdeContextMenuDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Divider(color: Colors.grey.shade600, height: .5),
    );
  }
}
