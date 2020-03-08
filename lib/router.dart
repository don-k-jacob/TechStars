import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:park_here/screens/add_card.dart';
import 'package:park_here/screens/chat_rider.dart';
import 'package:park_here/screens/country_select.dart';
import 'package:park_here/screens/destination_view.dart';
import 'package:park_here/screens/favorites.dart';
import 'package:park_here/screens/home.dart';
import 'package:park_here/screens/login.dart';
import 'package:park_here/screens/my_rides.dart';
import 'package:park_here/screens/otp_verification.dart';
import 'package:park_here/screens/payment.dart';
import 'package:park_here/screens/phone_registration.dart';
import 'package:park_here/screens/profile.dart';
import 'package:park_here/screens/promotions.dart';
import 'package:park_here/screens/register.dart';
import 'package:park_here/screens/suggested_rides.dart';
import 'package:park_here/screens/unauth.dart';
import 'package:park_here/screens/update_favorite.dart';
import 'package:park_here/screens/update_information.dart';
import 'package:park_here/screens/walkthrough.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";
const String LoginRoute = "login";
const String PhoneRegisterRoute = "phone-register";
const String OtpVerificationRoute = "otp-verification";
const String UpdateInformationRoute = "update-information";
const String SelectCountryRoute = "country-select";
const String HomepageRoute = "homepage";
const String DestinationRoute = "destination";
const String UnAuthenticatedPageRoute = "unauth";
const String ProfileRoute = "profile";
const String PaymentRoute = "payment";
const String AddCardRoute = "addCard";
const String ChatRiderRoute = "chatRider";
const String FavoritesRoute = "favorite";
const String UpdateFavoritesRoute = "update-favorite";
const String PromotionRoute = "promotion";
const String SuggestedRidesRoute = "suggested-route";
const String MyRidesRoute = "my-rides";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WalkthroughRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    case LoginRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Login());
    case PhoneRegisterRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => PhoneRegistration());
    case OtpVerificationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => OtpVerification());
    case UpdateInformationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => UpdateInformation());
    case SelectCountryRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SelectCountry());
    case HomepageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Homepage());
    case DestinationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => DestinationView());
    case UnAuthenticatedPageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => UnAuth());
    case ProfileRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Profile());
    case PaymentRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Payment());
    case AddCardRoute:
      return MaterialPageRoute(builder: (BuildContext context) => AddCard());
    case ChatRiderRoute:
      return MaterialPageRoute(builder: (BuildContext context) => ChatRider());
    case FavoritesRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Favorites());
    case PromotionRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Promotions());
    case UpdateFavoritesRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => UpdateFavorite());
    case SuggestedRidesRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => SuggestedRides());
    case MyRidesRoute:
      return MaterialPageRoute(builder: (BuildContext context) => MyRides());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
