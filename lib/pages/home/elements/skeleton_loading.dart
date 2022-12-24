import 'package:flutter/material.dart';

Widget skeletonLoading() {
  return ListView.separated(
    itemBuilder: (context, index) {
      return Container(
        padding: const EdgeInsets.all(12.0),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Skeleton(height: 95, width: 150),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Skeleton(height: 20),
                  SizedBox(height: 3),
                  Skeleton(height: 20),
                  SizedBox(height: 3),
                  Skeleton(width: 200, height: 20),
                  SizedBox(height: 3),
                  Skeleton(width: 130, height: 20),
                ],
              ),
            ),
          ],
        ),
      );
    },
    separatorBuilder: (context, index) => const Divider(),
    itemCount: 10,
  );
}

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key, this.height, this.width}) : super(key: key);
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.black.withOpacity(0.07),
      ),
    );
  }
}
