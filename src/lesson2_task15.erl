-module(lesson2_task15).

-export([replicate/2]).

-import(lesson2_task05, [reverse/1]).

replicate(List, Count) ->
    reverse(replicate(List, Count, [])).

replicate([Element | Tail], Count, Acc) ->
    replicate(Tail, Count, generate(Count, Element, Acc));
replicate([], _, Acc) ->
    Acc.

generate(0, _, List) ->
    List;
generate(Count, Element, List) ->
    generate(Count - 1, Element, [Element | List]).
