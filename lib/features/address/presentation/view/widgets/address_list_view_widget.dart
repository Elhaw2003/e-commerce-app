import 'package:e_commerce_app/features/address/presentation/view/widgets/item_address_view_widget.dart';
import 'package:flutter/material.dart';

class AddressListViewWidget extends StatelessWidget {
  const AddressListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ItemAddressViewWidget(),
      ],
    );
  }
}
