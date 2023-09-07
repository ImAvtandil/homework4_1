-module(lesson2_task10).

-export([encode/1]).

-import(lesson2_task05, [reverse/1]).

encode([]) ->
    [];
encode(List) ->
    [H | Tail] = List,
    reverse(encode(Tail, {1, H}, [])).

encode([H | Tail], {A, H}, Acc) ->
    encode(Tail, {A + 1, H}, Acc);
encode([H | Tail], Part, Acc) ->
    encode(Tail, {1, H}, [Part | Acc]);
encode([], Part, Acc) ->
    [Part | Acc].
