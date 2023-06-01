import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_lift_working/model/prodduct.dart';

TextStyle textStyle({double? size,Color? color, FontWeight? fontWeight}){
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: fontWeight);
}

TextStyle textStyleWithHt({double? size,Color? color, FontWeight? fontWeight, double? height}){
  return GoogleFonts.poppins(fontSize: size, color: color, fontWeight: fontWeight, height:height );
}
