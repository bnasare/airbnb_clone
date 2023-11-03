import 'package:flutter/material.dart';

class CustomIconButton extends StatefulWidget {
  final IconData icon;
  final String label;
  final int index;
  final int selectedIndex;
  final VoidCallback onPressed;

  const CustomIconButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<CustomIconButton> createState() => _CustomIconButtonState();
}

class _CustomIconButtonState extends State<CustomIconButton> {
  late double _textWidth;

  @override
  void initState() {
    super.initState();
    _textWidth = _calculateTextWidth();
  }

  double _calculateTextWidth() {
    final textPainter = TextPainter(
      text: TextSpan(
        text: widget.label,
        style: const TextStyle(fontSize: 14),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return textPainter.size.width;
  }

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: widget.onPressed,
      child: Column(
        children: [
          Icon(
            widget.icon,
            color: widget.selectedIndex == widget.index
                ? color.primary
                : color.primary.withOpacity(0.4),
            size: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15.0, top: 10),
            child: Text(
              widget.label,
              style: TextStyle(
                color: widget.selectedIndex == widget.index
                    ? color.primary
                    : color.primary.withOpacity(0.4),
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          if (widget.selectedIndex == widget.index)
            Flexible(
                child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: _textWidth),
              duration: const Duration(milliseconds: 250),
              builder: (BuildContext context, double width, Widget? child) {
                return Container(
                  decoration: BoxDecoration(
                      color: widget.selectedIndex == widget.index
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  height: 3,
                  width: width,
                );
              },
            )),
        ],
      ),
    );
  }
}
