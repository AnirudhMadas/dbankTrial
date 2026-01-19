import Debug "mo:base/Debug";
import Float "mo:base/Float";
import Time "mo:base/Time";

actor DBank {

  stable var currentValue : Float = 300.0;
  stable var startTime : Int = Time.now();

  public func topUp(amount : Nat) : async Float {
    currentValue += Float.fromInt(amount);
    Debug.print(debug_show(currentValue));
    return currentValue;
  };

  public func withDrawl(amount : Nat) : async Float {
    let amountFloat : Float = Float.fromInt(amount);

    if (currentValue >= amountFloat) {
      currentValue -= amountFloat;
      Debug.print(debug_show(currentValue));
    } else {
      Debug.print("Too big amount");
    };

    return currentValue;
  };

  public query func checkBalance() : async Float {
    return currentValue;
  };

  public func compound() : async Float {
    let currentTime : Int = Time.now();
    let timeElapsedNS : Int = currentTime - startTime;
    let timeElapsedS : Int = timeElapsedNS / 1_000_000_000;

    currentValue := currentValue * Float.pow(1.01, Float.fromInt(timeElapsedS));

    startTime := currentTime;
    return currentValue;
  };
}
