-module(lesson2_task11).

-export([encode_modified/1]).

-import(lesson2_task05, [reverse/1]).

encode_modified([]) ->
    [];
encode_modified(List) ->
    [H | Tail] = List,
    reverse(encode_modified(Tail, H, [])).

encode_modified([H | Tail], H, Acc) ->
    encode_modified(Tail, {2, H}, Acc);
encode_modified([H | Tail], {A, H}, Acc) ->
    encode_modified(Tail, {A + 1, H}, Acc);
encode_modified([H | Tail], Part, Acc) ->
    encode_modified(Tail, H, [Part | Acc]);
encode_modified([], Part, Acc) ->
    [Part | Acc].
