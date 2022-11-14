
import 'package:flutter/material.dart';

class SecondarySliverAppBar extends SliverAppBar {
  final String label;
  final bool implyLeading;
  final Function()? onBackPressed;

  const SecondarySliverAppBar({
    super.key, required this.label, this.implyLeading=true,
    this.onBackPressed, double? elevation, List<Widget>? actions,
  }) : super(actions: actions, elevation: elevation);

  @override
  State<SliverAppBar> createState() => _SecondarySliverAppBarState();
}

class _SecondarySliverAppBarState extends State<SecondarySliverAppBar> {

  @override
  Widget build(BuildContext context) => SliverAppBar(
    backgroundColor: Theme.of(context).colorScheme.onSecondaryContainer,
    foregroundColor: Theme.of(context).colorScheme.secondaryContainer,
    leading: (widget.implyLeading)
        ? IconButton(onPressed: widget.onBackPressed ?? () => Navigator.pop(context), icon: const Icon(Icons.chevron_left))
        : null,
    automaticallyImplyLeading: false,
    title: Text(widget.label),
    elevation: widget.elevation,
    actions: widget.actions,
    pinned: true,
  );
}