import 'package:admin_panel_responsive/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DashScreen extends StatelessWidget {
  const DashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text("DashBoard", style: Theme.of(context).textTheme.headline6),
                const Spacer(),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: secondaryColor,
                      filled: true,
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      suffixIcon: Container(
                        padding: const EdgeInsets.all(defaultPadding * 0.75),
                        decoration: const BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: SvgPicture.asset("assets/icons/Search.svg"),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Container(
                    // padding: EdgeInsets.all(defaultPadding * 0.75),
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      border: Border.all(color: Colors.white54),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset("assets/images/profile_pic.png"),
                        const Text("Angelina Jolie"),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
