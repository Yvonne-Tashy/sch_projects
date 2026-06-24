import 'package:eventura/auth/signin.dart';
import 'package:eventura/auth/signup.dart';
import 'package:eventura/core/app_route.dart';
import 'package:eventura/home/homepage.dart';
import 'package:eventura/screens/welcome.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes:[
    //Welcome screen
  GoRoute(
    path:'/' ,
    name: AppRoute.welcome,
    builder: ((context, state) => const Welcome()),
  ),
  //signup
  GoRoute(
    path:'/signup' ,
    name: AppRoute.signup,
    builder: ((context, state) => const Signup()),
     ),
     //signin
   GoRoute(
    path:'/signin' ,
    name: AppRoute.signin,
    builder: ((context, state) => const Signin()),
   ),

   GoRoute(
    path: "/home",
    name: AppRoute.homepage,
    builder: (context, state) => Homepage(),)
  ]

  
  );