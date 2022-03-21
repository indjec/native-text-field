import 'package:flutter/material.dart';
import 'package:flutter_native_text_input/flutter_native_text_input.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  //Controller for text message
  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        minHeight: 54,
      ),
      padding: const EdgeInsets.only(
        bottom: 6.0,
        top: 6.0,
        left: 15.0,
        right: 15.0,
      ),
      child: () {
        final textBar = ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 36,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(19),
                    border: Border.all(
                      width: 0.5,
                      color: const Color(0xffCFCFCF),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: NativeTextInput(
                          controller: _messageController,
                          minLines: 1,
                          maxLines: 6,
                          keyboardType: KeyboardType.defaultType,
                          returnKeyType: ReturnKeyType.defaultAction,
                          iosOptions: IosOptions(
                            keyboardAppearance: Brightness.light,
                          ),
                          placeholder: "Message",
                          textCapitalization: TextCapitalization.sentences,
                          onChanged: (val) {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );

        return Stack(
          children: [
            Visibility(
              maintainState: true,
              child: textBar,
            ),
          ],
        );
      }(),
    );
  }
}
