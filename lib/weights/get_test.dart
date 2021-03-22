
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ljm_flutter/controller/get_test_controller.dart';

class GetTest extends StatelessWidget {
  final GetTestController controller = Get.put(GetTestController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                child: Text('show snaker'),
                onPressed: (){
                  Get.snackbar('title', '这个框架还不错');
                },
              ),
            ),
            Container(
              width: 100,
              height: 100,
              child: Obx(()=>Text('count=${controller.count}')
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('+'),
        onPressed: (){
          controller.addCount();
        },
      ),
    );
  }
}
