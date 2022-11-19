
import 'package:flutter/material.dart';

import 'primary_elevated_button.dart';

class SillySliverAppBar extends SliverAppBar {
  final String label;
  final Function()? onBackPressed;

  const SillySliverAppBar({
    super.key, required this.label,
    this.onBackPressed, double? elevation, List<Widget>? actions,
  }) : super(actions: actions, elevation: elevation);

  const SillySliverAppBar.secondary({
    super.key, required this.label,
    this.onBackPressed, double? elevation, List<Widget>? actions,
  }) : super(actions: actions, elevation: elevation);

  @override
  State<SliverAppBar> createState() => _SillySliverAppBarState();
}

class _SillySliverAppBarState extends State<SillySliverAppBar> {

  @override
  Widget build(BuildContext context) => SliverToBoxAdapter(
    child: SizedBox.fromSize(
      size: Size.fromHeight(kToolbarHeight+MediaQuery.of(context).viewPadding.top),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: -20,
                    bottom: 0,
                    child: PrimaryElevatedButton(
                      minWidth: 50,
                      horizontalPadding: 20,
                      onPressed: widget.onBackPressed ?? () => Navigator.pop(context),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.chevron_left),
                          Text(widget.label),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            if (widget.actions != null) Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: widget.actions!,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}