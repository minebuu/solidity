using {
    add as +,
    sub as -,
    mul as *,
    div as /,
    mod as %,
    unsub as -,
    bitnot as ~
} for S;

struct S {
    uint x;
}

function add(S calldata, S calldata) pure returns (S calldata r) {
    assembly {
        r := 0
    }
}

function sub(S calldata, uint) pure returns (S calldata r) {
    assembly {
        r := 0
    }
}

function mul(S calldata) pure returns (S calldata r) {
    assembly {
        r := 0
    }
}

function div(S calldata, S calldata) pure returns (uint) {
    return 0;
}

function mod(S calldata, S calldata) pure {
}

function unsub(uint) pure returns (S calldata r) {
    assembly {
        r := 0
    }
}

function bitnot(S calldata) pure {
}

function test(S calldata s) pure {
    s + s; // OK
    s - s;
    s * s;
    s / s;
    s % s;
    -s;
    ~s;
}

// ----
// TypeError 1884: (264-282): Wrong parameters in operator definition. The function "sub" needs to have one or two parameters of type S and the same data location to be used for the operator -.
// TypeError 1884: (364-376): Wrong parameters in operator definition. The function "mul" needs to have two parameters of type S and the same data location to be used for the operator *.
// TypeError 7743: (496-502): Wrong return parameters in operator definition. The function "div" needs to return exactly one value of type S to be used for the operator /.
// TypeError 7743: (564-564): Wrong return parameters in operator definition. The function "mod" needs to return exactly one value of type S to be used for the operator %.
// TypeError 1884: (583-589): Wrong parameters in operator definition. The function "unsub" needs to have one or two parameters of type S and the same data location to be used for the operator -.
// TypeError 7743: (603-617): Wrong return parameters in operator definition. The function "unsub" needs to return a value of the same type and data location as its parameters to be used for the operator -.
// TypeError 7743: (692-692): Wrong return parameters in operator definition. The function "bitnot" needs to return exactly one value of type S to be used for the operator ~.
// TypeError 2271: (764-769): Built-in binary operator * cannot be applied to types struct S calldata and struct S calldata. No matching user-defined operator found.
// TypeError 4907: (797-799): Built-in unary operator - cannot be applied to type struct S calldata. No matching user-defined operator found.
