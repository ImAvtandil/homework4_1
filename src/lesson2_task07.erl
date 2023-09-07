-module(lesson2_task07).

-export([flatten/1]).

-import(lesson2_task05, [reverse/1]).

flatten(List) ->
    reverse(flatten(List, [])).

flatten([[] | Tail], Acc) ->
    flatten(Tail, Acc);
flatten([[H | T] | Tail], Acc) ->
    Acc2 = flatten(T, [H | Acc]),
    flatten(Tail, Acc2);
flatten([H | Tail], Acc) ->
    flatten(Tail, [H | Acc]);
flatten([], Acc) ->
    Acc.
