-module(lesson2_task14).

-export([duplicate/1]).

-import(lesson2_task05, [reverse/1]).

duplicate(List) ->
    reverse(duplicate(List, [])).

duplicate([Element | Tail], Acc) ->
    duplicate(Tail, [Element, Element | Acc]);
duplicate([], Acc) ->
    Acc.
