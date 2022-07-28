using {add as +, unsub as -} for S;

struct S {
    uint x;
}

function add(S memory, S memory) returns (S memory) {}
function unsub(S memory) returns (S memory) {}

contract C {
    S s;

    function test() public {
        S storage sTmp;
        S memory tmp;
        s + s;
        tmp + true;
        true + s;
        -sTmp;
        -s;
        -true;
    }
}

// ----
// TypeError 1349: (272-277): User-defined binary operator + cannot be applied to type struct S storage ref. None of the available definitions accepts storage arguments.
// TypeError 5653: (287-297): The type of the second operand of this user-defined binary operator + does not match the type of the first operand, which is struct S memory.
// TypeError 2271: (307-315): Built-in binary operator + cannot be applied to types bool and struct S storage ref.
// TypeError 5652: (325-330): User-defined unary operator - cannot be applied to type struct S storage pointer. None of the available definitions accepts storage arguments.
// TypeError 5652: (340-342): User-defined unary operator - cannot be applied to type struct S storage ref. None of the available definitions accepts storage arguments.
// TypeError 4907: (352-357): Built-in unary operator - cannot be applied to type bool.
