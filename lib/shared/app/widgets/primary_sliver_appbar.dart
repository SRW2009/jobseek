
import 'package:flutter/material.dart';

class PrimarySliverAppBar extends SliverAppBar {
  final String label;
  final bool implyLeading;
  final double? elevationValue;
  final Function()? onBackPressed;

  const PrimarySliverAppBar({super.key, required this.label, this.implyLeading=true, this.onBackPressed, this.elevationValue});

  @override
  State<SliverAppBar> createState() => _PrimarySliverAppBarState();
}

class _PrimarySliverAppBarState extends State<PrimarySliverAppBar> {

  @override
  Widget build(BuildContext context) => SliverAppBar(
    leading: (widget.implyLeading)
        ? IconButton(onPressed: widget.onBackPressed ?? () => Navigator.pop(context), icon: const Icon(Icons.chevron_left))
        : null,
    automaticallyImplyLeading: false,
    title: Text(widget.label),
    elevation: widget.elevationValue,
    pinned: true,
  );
}