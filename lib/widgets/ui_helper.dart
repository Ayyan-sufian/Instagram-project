import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class UiHelper {
  static customTextEditor({
    required TextEditingController controller,
    required String text,
    required bool toHide,
    required TextInputType textInputType,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: const Color(0XFF121212),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: TextField(
          controller: controller,
          obscureText: toHide,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: GoogleFonts.inter(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static Widget customImg({required String imgUrl}) {
    return Image.asset("assets/img/$imgUrl");
  }

  static Widget customSvg({required String imgUrl}) {
    return SvgPicture.asset("assets/img/$imgUrl");
  }

  static customTextButton({required String text, required VoidCallback call}) {
    return TextButton(
      onPressed: () {
        call();
      },
      child: Text(
        text,
        style: TextStyle(color: Color(0XFF3797EF), fontSize: 12),
      ),
    );
  }

  static customButton({required String text, required VoidCallback callBack}) {
    return InkWell(
      onTap: () {
        callBack();
      },
      child: Container(
        height: 44,
        width: 340,
        decoration: BoxDecoration(
          color: Color(0XFF3797EF),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}
