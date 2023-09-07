-module(lesson2_task13).

-export([decode/1]).

-import(lesson2_task05, [reverse/1]).

decode(List) ->
    reverse(decode(List, [])).

decode([{Count, Element} | Tail], Acc) ->
    decode(Tail, generate(Count, Element, Acc));
decode([], Acc) ->
    Acc.

generate(0, _, List) ->
    List;
generate(Count, Element, List) ->
    generate(Count - 1, Element, [Element | List]).
