-module(lesson2_task03).

-export([element_at/2]).

element_at(List, Number) ->
    element_at(List, Number, 1).

element_at([H | _], Number, Number) ->
    H;
element_at([_ | T], Number, Acc) ->
    element_at(T, Number, Acc + 1);
element_at([], _, _) ->
    undefined.
