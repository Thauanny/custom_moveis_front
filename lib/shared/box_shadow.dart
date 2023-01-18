import 'package:customoveis/shared/colors.dart';
import 'package:customoveis/shared/sizes.dart';
import 'package:flutter/material.dart';

const BoxShadow primaryBoxShadow = BoxShadow(
  color: Colors.white,
  offset: Offset(-small_4, -small_4),
  spreadRadius: 1,
  blurRadius: 15,
);
BoxShadow secondaryBoxShadow = BoxShadow(
  color: boxShadowPrimary.withOpacity(0.6),
  offset: const Offset(small_4, small_4),
  spreadRadius: 1,
  blurRadius: 15,
);
