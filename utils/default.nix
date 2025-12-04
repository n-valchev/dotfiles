{ ... }@args:
let 
  strings = import ./strings.nix args; 

  ternary = { condition, yes, no, ... }: if condition then yes else no;

in
{
  ternary = ternary;

  select = { ... }@args: opt: ternary { 
    condition=args."is${strings.capitalize opt}";
    yes=args."${opt}";
    no=args."no${strings.capitalize opt}";
  };
}
