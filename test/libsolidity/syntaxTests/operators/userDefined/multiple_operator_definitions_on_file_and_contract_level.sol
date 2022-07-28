type Int is int;

using {add as +} for Int;

function add(Int, Int) pure returns (Int) {
    return Int.wrap(0);
}

function another_add(Int, Int) pure returns (Int) {
    return Int.wrap(0);
}

contract B {
    using {another_add as +} for Int;

    function f() public {
        Int.wrap(0) + Int.wrap(0);
    }
}

contract C is B {
    function g() public {
        Int.wrap(0) + Int.wrap(0);
    }
}

// ----
// TypeError 5583: (281-306): User-defined binary operator + has more than one definition matching the operand types visible in the current scope.
