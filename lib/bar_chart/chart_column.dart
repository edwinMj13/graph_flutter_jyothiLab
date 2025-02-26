import 'package:flutter/material.dart';
import 'package:graphs_flutter/constants.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: secondaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vertical Bar",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Statistics of the Month",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert))
              ],
            ),
            const SizedBox(height: defaultPadding*2,),
            Row(
              children: [
                Container(
                  width: 27,
                  height: 13,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF72585),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("Data One",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),
                SizedBox(width: defaultPadding,),
                Container(
                  width: 27,
                  height: 13,
                  decoration: BoxDecoration(
                      color: const Color(0xFF77209B7),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("Data Two",style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),),

              ],
            ),
            //SizedBox(height: defa,)
          ],
        ),
      ),
    );
  }
}
