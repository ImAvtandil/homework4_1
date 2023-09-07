-module(lesson2_task02_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task02:but_last([])),
     ?_assertException(error, function_clause, lesson2_task02:but_last([1])),
     ?_assertException(error, function_clause, lesson2_task02:but_last(1)),
     ?_assert(lesson2_task02:but_last([1, 1]) =:= [1, 1]),
     ?_assert(lesson2_task02:but_last([a, b, c]) =:= [b, c])].

-endif.
