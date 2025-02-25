import 'package:flutter/material.dart';

/// Background for each ContextMenu
typedef IdeContextMenuCardBuilder = Widget Function(BuildContext context, List<Widget> children);

class IdeContextMenuCard extends StatelessWidget {
  const IdeContextMenuCard(
      {super.key, required this.children, this.borderRadius, this.bgColor, this.border, this.shadows, this.padding});
  final List<Widget> children;
  final Border? border;
  final BorderRadius? borderRadius;
  final Color? bgColor;
  final List<BoxShadow>? shadows;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    Color shadowColor = Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;
    BorderRadius radius = borderRadius ?? BorderRadius.circular(4);
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 250),
      child: ClipRRect(
        borderRadius: radius,
        child: Container(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color: bgColor ?? Theme.of(context).scaffoldBackgroundColor,
              border: border ?? Border.all(color: Colors.grey.shade300),
              borderRadius: radius,
              boxShadow: shadows ??
                  [
                    BoxShadow(color: shadowColor.withValues(alpha: 0.05), blurRadius: 4, offset: const Offset(2, 2)),
                    BoxShadow(color: shadowColor.withValues(alpha: 0.02), blurRadius: 2, offset: const Offset(2, 2)),
                  ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            )),
      ),
    );
  }
}
