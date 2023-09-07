-module(lesson2_task08).

-export([compress/1]).

-import(lesson2_task05, [reverse/1]).

compress([]) ->
    [];
compress(List) ->
    [H | Tail] = List,
    reverse(compress(Tail, H, [H])).

compress([H | Tail], H, Acc) ->
    compress(Tail, H, Acc);
compress([H | Tail], _, Acc) ->
    compress(Tail, H, [H | Acc]);
compress([], _, Acc) ->
    Acc.
