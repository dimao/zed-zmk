; Adapted from tree-sitter-devicetree (MIT, (c) Joel Spadin)
; https://github.com/joelspadin/tree-sitter-devicetree/blob/main/queries/highlights.scm

[
    "/delete-node/"
    "/delete-property/"
    "/dts-v1/"
    "/incbin/"
    "/include/"
    "/memreserve/"
    "/omit-if-no-ref/"
] @keyword

[
    "#define"
    "#undef"
    "#include"
    "#if"
    "#elif"
    "#else"
    "#endif"
    "#ifdef"
    "#ifndef"
] @preproc

[
    "!"
    "~"
    "-"
    "+"
    "*"
    "/"
    "%"
    "||"
    "&&"
    "|"
    "^"
    "&"
    "=="
    "!="
    ">"
    ">="
    "<="
    ">"
    "<<"
    ">>"
] @operator

[
    ","
    ";"
] @punctuation.delimiter

[
    "("
    ")"
    "{"
    "}"
    "<"
    ">"
] @punctuation.bracket

(call_expression
    function: (identifier) @function)

(node
    label: (identifier) @label)

(property
    label: (identifier) @label)

(memory_reservation
    label: (identifier) @label)

(property
    name: (identifier) @property)

(identifier) @variable

(unit_address) @tag

(reference) @constant

(string_literal) @string
(system_lib_string) @string
(integer_literal) @number
(escape_sequence) @string.escape
(comment) @comment
