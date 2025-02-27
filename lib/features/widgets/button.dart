import 'package:flutter/material.dart';

class PrimaryButtonWidget extends StatefulWidget {
  final String name;
  final double borderRadius;
  final Color buttonColor;
  final Color? disabledColor;
  final VoidCallback onTap;
  final VoidCallback? onNavigate;
  final bool enabled;

  const PrimaryButtonWidget({
    required this.name,
    required this.borderRadius,
    required this.onTap,
    required this.buttonColor,
    super.key,
    this.onNavigate,
    this.enabled = true,
    this.disabledColor,
  });

  @override
  State<PrimaryButtonWidget> createState() => _PrimaryButtonWidgetState();
}

class _PrimaryButtonWidgetState extends State<PrimaryButtonWidget> {
  @override
  Widget build(BuildContext context) {
    final buttonColor =
        widget.enabled
            ? widget.buttonColor
            : widget.disabledColor ?? Colors.grey;
    return Material(
      color: buttonColor,
      borderRadius: BorderRadius.circular(widget.borderRadius),
      child: InkWell(
        onTap:
            widget.enabled
                ? () {
                  widget.onTap();
                  widget.onNavigate?.call();
                }
                : null,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Center(
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
