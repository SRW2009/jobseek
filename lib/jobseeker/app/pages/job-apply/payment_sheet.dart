
import 'package:flutter/material.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';

class JobSeekerJobApplyPaymentSheet extends StatefulWidget {
  final Function() onConfirmPayment;

  const JobSeekerJobApplyPaymentSheet({super.key, required this.onConfirmPayment});

  @override
  State<JobSeekerJobApplyPaymentSheet> createState() => _JobSeekerJobApplyPaymentSheetState();
}

class _JobSeekerJobApplyPaymentSheetState extends State<JobSeekerJobApplyPaymentSheet> {
  String radioGroup = 'ovo';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Image.asset(Assets.paymentSheet, fit: BoxFit.fitWidth),
              const Padding(
                padding: EdgeInsets.only(bottom: 12, top: 24),
                child: Text(
                  'Metode Pembayaran',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  'E-Wallet',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              _radioTile(imageAsset: Assets.ovoLogo, title: 'OVO', value: 'ovo'),
              _radioTile(imageAsset: Assets.danaLogo, title: 'DANA', value: 'dana'),
              _radioTile(imageAsset: Assets.gopayLogo, title: 'GoPay', value: 'gopay'),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Text(
                  'Virtual Account Bank',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              _radioTile(imageAsset: Assets.bniLogo, title: 'BNI Virtual Account', value: 'bni'),
              _radioTile(imageAsset: Assets.bcaLogo, title: 'BCA Virtual Account', value: 'bca'),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Center(
                  child: PrimaryElevatedButton(
                    onPressed: widget.onConfirmPayment,
                    child: const Text('Konfirmasi Pembayaran'),
                ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _radioTile({required String imageAsset, required String title, required String value}) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: RadioListTile(
      value: value,
      groupValue: radioGroup,
      onChanged: (v) => setState(() => radioGroup = value),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      tileColor: Colors.white,
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageAsset),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(title),
          ),
        ],
      ),
    ),
  );
}