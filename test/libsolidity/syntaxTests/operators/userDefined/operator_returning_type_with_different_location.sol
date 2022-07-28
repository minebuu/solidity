using {add as +} for S;

struct S {
    int v;
}

function add(S storage _a, S storage) returns (S memory) {
    _a.v = 7;
    return _a;
}


contract C {
    S s;
    function f() public returns (S memory) {
        return s + s;
    }
}

// ----
// TypeError 7743: (96-106): Wrong return parameters in operator definition. The function "add" needs to return a value of the same type and data location as its parameters to be used for the operator +.
