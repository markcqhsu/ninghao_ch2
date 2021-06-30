import 'package:flutter/material.dart';
import 'button_demo.dart';
import 'floating_action_button.dart';
import 'popup_menu_button_demo.dart';
import './form_demo.dart';
import 'checkbox_demo.dart';
import 'radio_demo.dart';
import 'switch_demo.dart';
import 'slider_demo.dart';
import 'datetime_demo.dart';
import 'simple_dialog_demo.dart';
import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';
import 'snack_bar_demo.dart';
import 'expansion_panel_demo.dart';
import 'chip_demo.dart';
import 'data_table_demo.dart';
import 'paginated_data_table_demo.dart';

class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Material Components"),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          ListItem(
            title: "PaginateDataTableDemo",
            page: PaginateDataTableDemo(),
          ),
          ListItem(
            title: "DataTableDemo",
            page: DataTableDemo(),
          ),
          ListItem(
            title: "ChipDemo",
            page: ChipDemo(),
          ),
          ListItem(
            title: "ExpansionPanelDemo",
            page: ExpansionPanelDemo(),
          ),
          ListItem(
            title: "SnackBarDemo",
            page: SnackBarDemo(),
          ),
          ListItem(
            title: "BottomSheetDemo",
            page: BottomSheetDemo(),
          ),
          ListItem(
            title: "AlertDialogDemo",
            page: AlertDialogDemo(),
          ),
          ListItem(
            title: "SimpleDialogDemo",
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: "DatetimeDemo",
            page: DatetimeDemo(),
          ),
          ListItem(
            title: "Slider",
            page: SliderDemo(),
          ),
          ListItem(
            title: "Switch",
            page: SwitchDemo(),
          ),
          ListItem(
            title: "radio",
            page: radioDemo(),
          ),
          ListItem(
            title: "CheckBox",
            page: CheckBoxDemo(),
          ),
          ListItem(
            title: "Form",
            page: FormDemo(),
          ),
          ListItem(
            title: "PopupMenuButton",
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: "Button",
            page: BottonDemo(),
          ),
          ListItem(
            title: "FloatingActionButton",
            page: FloatingActionButtonDemo(),
          ),
        ],
      ),
    );
  }
}




class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("_WidgetDemo"),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}



class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    required this.title,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
