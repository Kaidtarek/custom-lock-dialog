import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

LockImagePositioned() {
  return Positioned(
    top: 60,
    right: 95,
    child: Image.asset('assets/Vector.png'),
  );
}

LockClose({required BuildContext context}) {
  return Positioned(
    top: 0,
    right: 15,
    child: InkWell(
      onTap: () {Navigator.of(context).pop();},
      child: const Text(
        'X',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}

LockEducationJourneyButton({required VoidCallback onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
        height: 36,
        width: 197,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: const Color(0xFF369DD8))),
        child: Text(
          "Education Journey",
          textAlign: TextAlign.center,
          style: GoogleFonts.cairo(
              color: const Color(0xFF369DD8), fontWeight: FontWeight.w400),
        )),
  );
}

LockNextPracticeButton({required VoidCallback onTap}) {
  return InkWell(
      onTap: onTap,
      child: Container(
          height: 36,
          width: 197,
          decoration: BoxDecoration(
              color: const Color(0xFF369DD8),
              borderRadius: BorderRadius.circular(13)),
          child: Text(
            "Previous Lesson",
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
                color: Colors.white, fontWeight: FontWeight.w400),
          )));
}

LockBodyTexts() {
  return const Column(
    children: [
      Text("This Lesson is locked",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
      SizedBox(height: 20),
      Text(
        'Complete previous levels first',
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
void Lockshow({required VoidCallback nextPractice,
    required VoidCallback educationJourney,
    required BuildContext context}){
  showDialog(
      context: context,
      builder: (context) => Dialog(
            backgroundColor: Colors.transparent,
            child: Stack(
              children: [
                Container(
                  height: 410,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 350,
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.9),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20))),
                          ),
                          Positioned(
                            top: 120,
                            right: 30,
                            child: Column(
                              children: [
                                LockBodyTexts(),
                                const SizedBox(height: 20),
                                LockNextPracticeButton(onTap: nextPractice),
                                const SizedBox(height: 15),
                                LockEducationJourneyButton(onTap: educationJourney),
                              ],
                            ),
                          ),
                          LockClose(context: context),
                        ],
                      ),
                    ],
                  ),
                ),
                LockImagePositioned()
              ],
            ),
          ));
}