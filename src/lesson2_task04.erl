-module(lesson2_task04).

-export([len/1]).

len(List) ->
    len(List, 0).

len([_ | T], Acc) ->
    len(T, Acc + 1);
len([], Acc) ->
    Acc.
