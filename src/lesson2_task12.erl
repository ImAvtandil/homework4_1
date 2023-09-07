-module(lesson2_task12).

-export([decode_modified/1]).

-import(lesson2_task05, [reverse/1]).

decode_modified(List) ->
    reverse(decode_modified(List, [])).

decode_modified([{Count, Element} | Tail], Acc) ->
    decode_modified(Tail, generate(Count, Element, Acc));
decode_modified([Element | Tail], Acc) ->
    decode_modified(Tail, [Element | Acc]);
decode_modified([], Acc) ->
    Acc.

generate(0, _, List) ->
    List;
generate(Count, Element, List) ->
    generate(Count - 1, Element, [Element | List]).
