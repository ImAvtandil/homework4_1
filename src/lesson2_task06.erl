-module(lesson2_task06).

-export([is_palindrome/1]).

is_palindrome(List) ->
    is_palindrome(List, reverse(List)).

is_palindrome([H | Tail1], [H | Tail2]) ->
    is_palindrome(Tail1, Tail2);
is_palindrome([], []) ->
    true;
is_palindrome(_, _) ->
    false.

reverse(List) ->
    reverse(List, []).

reverse([H | T], Acc) ->
    reverse(T, [H | Acc]);
reverse([], Acc) ->
    Acc.
