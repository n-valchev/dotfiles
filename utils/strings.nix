{ lib, ... }:
let
  capitalize = s:
    let
      first = lib.strings.toUpper (lib.strings.substring 0 1 s);
      rest  = lib.strings.substring 1 (lib.strings.stringLength s) s;
    in
      first + rest;
in {
  capitalize = capitalize;
}
