# ChillyLook Shopping App

<img src="https://user-images.githubusercontent.com/12699008/99783543-89f13e00-2ae8-11eb-8bc1-db45acd85f7e.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783615-9f666800-2ae8-11eb-89a4-29bbca785ca2.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783618-a0979500-2ae8-11eb-9855-4fe1ce7ad029.png" width="300" height="650" />

## Technologies used:
Package | Explanation
------------ | -------------
[Provider](https://pub.dev/packages/provider) | State Management
[shared-preferences](https://pub.dev/packages/shared_preferences) | persistent storage for simple data
[test](https://flutter.dev/docs/testing) | code coverage :)
[intl](https://pub.dev/packages/intl) | internationalization and localization facilities
__Firebase__ | Realtime Database
[http](https://pub.dev/packages/http) | http requests
[mockito](https://pub.dev/packages/mockito) | Mocking testing
assets | images and fonts

## Sign In
Validators for input forms are implemented as well as showDialogs to display and explain the http errors and exceptions to the user.
<img src="https://user-images.githubusercontent.com/12699008/99783546-89f13e00-2ae8-11eb-9a05-4a75f334fffe.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783548-8a89d480-2ae8-11eb-8a06-6ec7e9bd4244.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783550-8b226b00-2ae8-11eb-98e0-4a9f84010708.png" width="300" height="650" />

## Products Overview
* All Products from all the users of the app are displayed on the main scrollable screen as a grid with clickable icons around the title to favorite the product or add to the cart.
* *__CircularIndicator__ is being displayed on the screen while products are loading or while any http request is being processed.*
* AppBar contains:
  * AppDrawer to display the navigation menu 
  * Filter to sort all products and your favorite products
  * Cart; There is a SnackBar appearing at the bottom when adding a product to the cart with UNDO functionality
<img src="https://user-images.githubusercontent.com/12699008/99783615-9f666800-2ae8-11eb-89a4-29bbca785ca2.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783616-9ffefe80-2ae8-11eb-9675-6e8f16e7d97c.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783619-a0979500-2ae8-11eb-95fb-73836e6cf96f.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783620-a1302b80-2ae8-11eb-9c53-7205280e0e8d.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783621-a1302b80-2ae8-11eb-800f-96d57fa6a05c.png" width="300" height="650" />

## Cart
Cart has a summary with added products and the total amount. 'Order now' button triggers firebase request and saves the order to the database and clears the screen.

<img src="https://user-images.githubusercontent.com/12699008/99783628-a2f9ef00-2ae8-11eb-9066-5a86c88a96f3.png" width="280" height="620"  /> <img src="https://user-images.githubusercontent.com/12699008/99783624-a2615880-2ae8-11eb-984c-e9221f8750d8.png" width="280" height="620" />  <img src="https://user-images.githubusercontent.com/12699008/99783625-a2615880-2ae8-11eb-98b0-e9c10ce8d6b5.png" width="280" height="620"  />



## Managing your products
In a Manage products section, user will see only products that were created from user's account. User can add a new product and edit them later on.

<img src="https://user-images.githubusercontent.com/12699008/99783618-a0979500-2ae8-11eb-9855-4fe1ce7ad029.png" width="300" height="650" />  <img src="https://user-images.githubusercontent.com/12699008/99783626-a2615880-2ae8-11eb-8940-f9dba4cb90e0.png" width="300" height="650" /> <img src="https://user-images.githubusercontent.com/12699008/99783627-a2f9ef00-2ae8-11eb-9f39-909ef71f8ba3.png" width="300" height="650"/>



Things to do: 
- [x] Add TextField/Form validators and Dialog Alerts where applicable.
- [x] Integrate Firebase database.
- [x] Adding and modifying products
- [x] Cart and Orders System
- [x] Authentication & User Management
- [ ] Implement Bloc/Provider State Manager
- [ ] Create Products categories and Search
- [ ] Notification center
- [ ] Integrate sharing on social media platforms
- [ ] Adding pircutres for the products from local library or device's camera
- [ ] Payments processing and storing of payments details

