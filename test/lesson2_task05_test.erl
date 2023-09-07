-module(lesson2_task05_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task05:reverse(1)),
     ?_assert(lesson2_task05:reverse([]) =:= []),
     ?_assert(lesson2_task05:reverse([a, b, c]) =:= [c, b, a])].

-endif.
