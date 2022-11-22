
import 'package:flutter/material.dart';
import 'package:jobseek/resources.dart';
import 'package:jobseek/shared/app/widgets/primary_elevated_button.dart';

class JobSeekerJobApplyPaymentSheet extends StatelessWidget {
  final Function() onConfirmPayment;

  const JobSeekerJobApplyPaymentSheet({super.key, required this.onConfirmPayment});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(Assets.paymentSheet, fit: BoxFit.fitWidth),
          Expanded(
            child: Center(
              child: PrimaryElevatedButton(
                onPressed: onConfirmPayment,
                child: const Text('Konfirmasi Pembayaran'),
          ),
            ),
          ),
        ],
      ),
    );
  }

}