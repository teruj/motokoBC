import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {

    //challenge 1
    public func add(n: Nat, m: Nat): async Nat {
        return n + m ;
    };

    //challenge 2
    public func square(n: Nat): async Nat {
        return n * n ;
    };

    //challenge 3
    public func days_to_second(n: Nat): async Nat {
        return n * 24 * 60 * 60 ;
    };

    //challenge 4
    var counter : Nat = 0;
    public func increment_counter(n: Nat) : async Nat {
        counter += n;
        return counter;
    };

    public func clear_counter() : async Nat {
        counter := 0;
        return counter;
    };

    //challenge 5
    public func divide (n: Nat, m: Nat) : async Bool {
        if (n % m == 0){
            return true
        } else {
            return false
        };
    };

    //challenge 6
    public func is_even (n: Nat ) : async Bool {
        if ( n % 2 == 0){
            return true
        }else{
            return false
        };
    };

    //challenge 7
    public func sum_of_array(array : [Nat]) : async Nat {
        var sums = 0;
        for (value in array.vals()){
            sums += value;
        };
        return sums;
    };

    //challenge 8
    public func maximum (array: [Nat]) : async Nat {
        var max : Nat = 0;
        for(value in array.vals()){
            if (value > max){
                max := value;
            } 
        };
        return max;
    };

    //challenge 9
    public func remove_from_array (array: [Nat], n: Nat) : async [Nat] {
        var newArray : [Nat] = [];
        for (value in array.vals()){
            if (value != n){
                newArray := Array.append(newArray , [value])
            };
        };
        return newArray ;
    };

    //challenge 10
    public func selection_sort (array : [Nat]) : async [Nat] {
        return Array.sort(array, Nat.compare);
    };
};
