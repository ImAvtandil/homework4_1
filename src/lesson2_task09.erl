-module(lesson2_task09).

-export([pack/1]).

-import(lesson2_task05, [reverse/1]).

pack([]) ->
    [];
pack(List) ->
    [H | Tail] = List,
    reverse(pack(Tail, [H], [])).

pack([H | Tail], [H | _] = Pack, Acc) ->
    pack(Tail, [H | Pack], Acc);
pack([H | Tail], Pack, Acc) ->
    pack(Tail, [H], [Pack | Acc]);
pack([], Pack, Acc) ->
    [Pack | Acc].
