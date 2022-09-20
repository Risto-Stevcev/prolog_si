# prolog-si

Port of Scryer prolog's [si](https://github.com/mthom/scryer-prolog/blob/master/src/lib/si.pl) module


## Usage

```prolog
?- atom_si(foo).
true.

?- atom_si(123).
false.

?- atom_si(X).
ERROR: Arguments are not sufficiently instantiated
ERROR: In:
ERROR:   [11] functor(_870,_872,0)
ERROR:   [10] si:atom_si(_904) at /home/risto/git/prolog/prolog-si/prolog/si.pl:27
ERROR:    [9] toplevel_call(user:user: ...) at /usr/lib/swipl/boot/toplevel.pl:1158
```


## License

See LICENSE
