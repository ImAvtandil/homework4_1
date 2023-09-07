-module(lesson2_task01_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task01:last([])),
     ?_assertException(error, function_clause, lesson2_task01:last(1)),
     ?_assert(lesson2_task01:last([1]) =:= 1),
     ?_assert(lesson2_task01:last([a, b, c]) =:= c)].

-endif.
