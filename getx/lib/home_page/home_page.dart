import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_page/sayac_controller.dart';
import 'package:getx/home_page/sayi_controller.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // *** Artık burada Get.put çağırmıyoruz! ***
    final sayacC = Get.find<SayacController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sayaç & Rastgele Sayı'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            ElevatedButton(
                onPressed: () {
                  // İkinci sayfaya yönlendiriyoruz
                  Get.toNamed('/second');
                },
                child: Text("Secondd Page'a Git")),
            ElevatedButton(
                onPressed: () {
                  // İkinci sayfaya yönlendiriyoruz
                  Get.toNamed('/animation');
                },
                child: Text("Animation Page'a Git")),
            // SayacController update() çağırdığında rebuild olur
            GetBuilder<SayacController>(
              builder: (c) => Text(
                c.count.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 24),
            const Text("Üretilen Rastgele Sayı"),
            // SayiController içindeki RxInt değişince otomatik rebuild
            Obx(() {
              final sayiC = Get.find<SayiController>();
              return Text(
                sayiC.randomSayi.value.toString(),
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            const SizedBox(height: 24),
            // Artı butonu için basit örnek
            Simple(c: sayacC),
          ],
        ),
      ),
      floatingActionButton: const RastgeleButton(),
    );
  }
}

class RastgeleButton extends GetView<SayiController> {
  const RastgeleButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: controller.uret,
      tooltip: 'Rastgele üret',
      child: const Icon(Icons.refresh),
    );
  }
}

class Simple extends StatelessWidget {
  const Simple({super.key, required this.c});

  final SayacController c;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: c.increment,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
