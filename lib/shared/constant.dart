import 'package:flutter/material.dart';

const widget = InputDecoration(
    hintText: "Enter your email",
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        filled: true,
        contentPadding: const EdgeInsets.all(8)));
