import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/common_appbar.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/view/invoice_screen/model/invoice_items_model.dart';
import 'package:joy_box_app/view/invoice_screen/widgets/invoice_item_widget.dart';
import 'package:joy_box_app/view/invoice_screen/widgets/search_textField_widget.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({Key? key}) : super(key: key);

  static const String routeName = "Invoice-screen";

  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  late DateTime _selectedDate;
  late List<InvoiceItemModel> _filteredItems;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize the selected date to the current date
    _selectedDate = DateTime.now();
    // Initialize the filtered list with all invoice items initially
    _filteredItems = IvoiceItemlist;
    // Listen to changes in the search text field
    _searchController.addListener(_filterItems);
  }

  void _filterItems() {
    // Get the search query from the text field
    String query = _searchController.text.toLowerCase();
    // Filter the list of invoice items based on the invoice ID
    setState(() {
      _filteredItems = IvoiceItemlist.where(
          (item) => item.inVoiceId.toLowerCase().contains(query)).toList();
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        text: "Invoice",
        isCircular: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.h,
          ),
          SearchTextFieldWidget(searchController: _searchController),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Invoice',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontSize: 17.sp,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                      },
                      child: CustomImageView(
                        height: 35.h,
                        fit: BoxFit.contain,
                        imagePath: "assets/images/invoice_img2.svg",
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}',
                      textAlign: TextAlign.right,
                      style: Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontSize: 17.sp,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w500,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                //background image of stack
                CustomImageView(
                  imagePath: "assets/images/invoice_img1.png",
                ),
                ListView.separated(
                  itemBuilder: (context, index) {
                    return InvoiceItemWidget(
                      itemModel: _filteredItems[index], // Use filtered items
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.h,
                    );
                  },
                  itemCount: _filteredItems.length, // Use filtered items count
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
