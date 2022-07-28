type Int is int128;

struct S {
    int128 i;
}

using {
    add as +, sub as -,
    mul as *, div as /
} for Int;

using {
    bitor as |
} for S;

function add(Int, Int) pure returns (Int) {
    return Int.wrap(1);
}

function sub(int128, Int) pure returns (int128) {
    return 0;
}

function mul(int128, int256) pure returns (Int) {
    return Int.wrap(2);
}

function div(Int, Int) pure returns (int256) {
    return 3;
}

function bitor(S storage, S storage) pure returns (S memory) {
    return S(1);
}


// ----
// TypeError 1884: (232-245): Wrong parameters in operator definition. The function "sub" needs to have one or two parameters of type Int and the same data location to be used for the operator -.
// TypeError 7743: (259-267): Wrong return parameters in operator definition. The function "sub" needs to return exactly one value of type Int to be used for the operator -.
// TypeError 1884: (299-315): Wrong parameters in operator definition. The function "mul" needs to have two parameters of type Int and the same data location to be used for the operator *.
// TypeError 7743: (329-334): Wrong return parameters in operator definition. The function "mul" needs to return a value of the same type and data location as its parameters to be used for the operator *.
// TypeError 7743: (400-408): Wrong return parameters in operator definition. The function "div" needs to return exactly one value of type Int to be used for the operator /.
// TypeError 7743: (478-488): Wrong return parameters in operator definition. The function "bitor" needs to return a value of the same type and data location as its parameters to be used for the operator |.
