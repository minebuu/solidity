using {
    f as ++,
    f as --,
    f as x,
    f as delete,
    f as new,
    f as ()
} for int256;

// ----
// ParserError 4403: (17-19): Operator ++ is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 4403: (30-32): Operator -- is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 4403: (43-44): Operator is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 4403: (55-61): Operator delete is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 4403: (72-75): Operator new is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 4403: (86-87): Operator ( is not user-definable. This is only allowed for the following operators: |, &, ^, ~, <<, >>, +, -, *, /, %, **, ==, !=, <, >, <=, >=, !
// ParserError 2314: (87-88): Expected '}' but got ')'
