import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverRefersh extends StatefulWidget {
  const SliverRefersh({super.key});

  @override
  State<SliverRefersh> createState() =>
      _SliverRefershState();
}

class _SliverRefershState extends State<SliverRefersh> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSliverRefreshControl(
      onRefresh: () async {
        await Future.delayed(Duration(seconds: 2));
        setState(() {});
      },
    );
  }
}
