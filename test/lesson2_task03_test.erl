-module(lesson2_task03_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task03:element_at(1, 1)),
     ?_assert(lesson2_task03:element_at([1, 1], 1) =:= 1),
     ?_assert(lesson2_task03:element_at([a, b, c], 2) =:= b),
     ?_assert(lesson2_task03:element_at([a, b, c], 5) =:= undefined),
     ?_assert(lesson2_task03:element_at([a, b, c], 0) =:= undefined)].

-endif.
