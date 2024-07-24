import 'package:flutter/material.dart';
import 'package:ismt_anchor/global/widget/notification_bell_component.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const CustomAppBar({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height:30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color:Color(0xFF8E8383))
            ),
            child:const Center(
              child: Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      title: Text(title,style:const TextStyle(color: Colors.black),),

    actions: [
        
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(
                    width:40,
                    height: 40,
                    child: NotificationBellComponent()),)
        ],
        
    );
  }

  @override
  Size get preferredSize =>const Size.fromHeight(kToolbarHeight);
}