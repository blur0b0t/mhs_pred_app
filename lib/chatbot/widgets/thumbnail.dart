import 'package:flutter/material.dart';

class ThumbnailChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                  physics: ClampingScrollPhysics(),
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                width: index==1?60.0:50.0,
                                height: index==1?250.0:50.0,
                                child: Image.asset(
                                  index==1?"assets/shell.png":"assets/mh.jpg",
                                  fit: BoxFit.cover,
                                ))),
                      ),
                    );
                  }),
            )));
  }
}