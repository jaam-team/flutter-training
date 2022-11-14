import 'dart:async';

import 'package:flutter/material.dart';

class FancyShowUp extends StatefulWidget {
  final Widget? child;
  final int? delay;
  final Curve animatingCurve;

  const FancyShowUp(
      {@required this.child,
      this.delay,
      this.animatingCurve = Curves.decelerate});

  @override
  _FancyShowUpState createState() => _FancyShowUpState();
}

class _FancyShowUpState extends State<FancyShowUp>
    with SingleTickerProviderStateMixin {
  AnimationController? _animController;
  Animation<Offset>? _animOffset;

  @override
  void initState() {
    super.initState();

    _animController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    //ignore_for_file: cast_nullable_to_non_nullable
    final curve = CurvedAnimation(
        curve: widget.animatingCurve,
        parent: _animController as Animation<double>);
    _animOffset =
        Tween<Offset>(begin: const Offset(0.0, 0.35), end: Offset.zero)
            .animate(curve);

    if (widget.delay == null) {
      _animController?.forward();
    } else {
      Timer(Duration(milliseconds: widget.delay ?? 0), () {
        _animController?.forward();
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
    _animController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animController as Animation<double>,
      child: SlideTransition(
        position: _animOffset as Animation<Offset>,
        child: widget.child,
      ),
    );
  }
}
