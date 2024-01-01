import 'package:booky_app/Core/utils/assits.dart';
import 'package:booky_app/Features/Home/presentation/views/home_view.dart';
import 'package:booky_app/constents.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splashViewBody extends StatefulWidget {
  const splashViewBody({super.key});

  @override
  State<splashViewBody> createState() => _splashViewBodyState();
}

class _splashViewBodyState extends State<splashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController; //values 0 | 1
  late Animation<Offset> slidingAnimation; //edit valus
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigatToHome(); //keda tabgna el ==> Single responsability principle ==>ely howa kl methods or class bya3mal haga wahda
  }

  @override
  void dispose() {
    animationController.dispose(); //3ashan myhsalsh leak lel resourses
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              AssetsData.logo,
              color: Colors.black,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SlideTransition(
            position: slidingAnimation,
            child: const Text(
              "Read Free Books",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 1)); //offset valus of dx and dy
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    slidingAnimation.addListener(() {
      setState(() {});
    });
  }

  void navigatToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(() => const HomeView(),
      //     transition: Transition.fade, duration: kTransationDeuration);
      GoRouter.of(context).go('/homeView');
    });
  }
}
