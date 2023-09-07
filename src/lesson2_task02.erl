-module(lesson2_task02).

-export([but_last/1]).

but_last([L1, L2]) ->
    [L1, L2];
but_last([_ | T]) ->
    but_last(T).
