import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget을 상하좌우로 배치하기'),
        ),
        body: Body(),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
          Container(
            color: Colors.grey,
            width: 80,
            height: 100,
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Text('Container 1'),
          ),
        ],
      ),
    );
  }
}

/// 상하좌우로 배치하기
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Row(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Container(
//               width: 80,
//               height: 80,
//               color: Colors.green,
//               child: Text('Container 1'),
//             ),
//             Container(
//               width: 80,
//               height: 80,
//               color: Colors.blue,
//               child: Text('Container 2'),
//             ),
//             Container(
//               width: 80,
//               height: 80,
//               color: Colors.yellow,
//               child: Text('Container 3'),
//             )
//           ],
//         ),
//         Container(
//           width: 300,
//           height: 120,
//           color: Colors.grey,
//           child: Text('Container 4'),
//         )
//       ],
//     );
//   }
// }

/// 좌우로 배치하기 - Row
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.green,
//           child: Text('Container 1'),
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.blue,
//           child: Text('Container 2'),
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.yellow,
//           child: Text('Container 3'),
//         )
//       ],
//     );
//   }
// }

/// 상하로 배치하기 - Column
// class Body extends StatelessWidget {
//   const Body({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.green,
//           child: Text('Container 1'),
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.blue,
//           child: Text('Container 2'),
//         ),
//         Container(
//           width: 80,
//           height: 80,
//           color: Colors.yellow,
//           child: Text('Container 3'),
//         )
//       ],
//     );
//   }
// }
