-module(lesson2_task05).

-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([H | T], Acc) ->
    reverse(T, [H | Acc]);
reverse([], Acc) ->
    Acc.
