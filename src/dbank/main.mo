import Debug "mo:base/Debug";

actor DBank {
  var currentValue = 10;
  currentValue := 20;

  func topUp() {
    currentValue += 1;
    Debug.print(debug_show (currentValue));
  };
  topUp();
  topUp();

}
