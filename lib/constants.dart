import 'package:flutter/material.dart';

// Widgets
const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kInputDecoration = InputDecoration(
  prefixIcon: Icon(Icons.email, color: Colors.grey),
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide:
    BorderSide(color: Colors.lightBlueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kRegistrationOkSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.green,
  content: Center(
    child: Text(
      'Registration successful!. You can log in now.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kEmailInUseSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.red,
  content: Center(
    child: Text(
      'Email already in use try another.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kWeakPasswordSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.red,
  content: Center(
    child: Text(
      'Password must contain at least 6 characters.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kInvalidEmailSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.red,
  content: Center(
    child: Text(
      'Please enter a valid email.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kGenericNotOkSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.red,
  content: Center(
    child: Text(
      'Something went wrong. Please try again.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kLoginOkSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.green,
  content: Center(
    child: Text(
      'Login successful!. Welcome.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kCredentialsNotOkSnackbar =SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.red,
  content: Center(
    child: Text(
      'Invalid credentials try again.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);

const kLogoutOkSnackbar = SnackBar(
  width: 320,
  padding: EdgeInsets.all(10),
  behavior: SnackBarBehavior.floating,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
  duration: Duration(seconds: 4),
  dismissDirection: DismissDirection.horizontal,
  closeIconColor: Colors.white,
  backgroundColor: Colors.green,
  content: Center(
    child: Text(
      'Logout successful!. Goodbye.',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
);
