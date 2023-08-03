import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icons.dart';
class rounded_btn extends StatelessWidget{
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? voidCallback;


  rounded_btn(
      {
        required this.btnName,
      this.icon,
      this.bgColor=Colors.red,
      this.textStyle,
      this.voidCallback
      });

  @override
  Widget build(BuildContext context) {
    return
      ElevatedButton(onPressed: (){
          if(voidCallback!=null){
            voidCallback!();
          }
          else{
            print("callback function is null");
          }
        },
          style:ElevatedButton.styleFrom(
            primary: bgColor,
            shadowColor: bgColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
              topRight: Radius.circular(8.0),
              bottomLeft: Radius.circular(8.0)
            ))
          ) , child: icon!=null ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                icon!,
                Text(btnName, style:textStyle ,)
              ],
        )  :Text(btnName,style: textStyle,),);
  }

}