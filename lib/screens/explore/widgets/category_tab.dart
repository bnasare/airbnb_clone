// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ExploreTabController extends StatefulWidget {
  final String label;
  final int index;
  final int selectedIndex;
  final VoidCallback onPressed;

  const ExploreTabController({
    Key? key,
    required this.label,
    required this.index,
    required this.selectedIndex,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ExploreTabController> createState() => _ExploreTabControllerState();
}

class _ExploreTabControllerState extends State<ExploreTabController> {
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
        style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
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
      child: SizedBox(
        height: 30,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Text(
                widget.label,
                style: TextStyle(
                  color: widget.selectedIndex == widget.index
                      ? color.primary
                      : color.primary.withOpacity(0.4),
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
            ),
            if (widget.selectedIndex == widget.index)
              TweenAnimationBuilder(
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
              ),
          ],
        ),
      ),
    );
  }
}
