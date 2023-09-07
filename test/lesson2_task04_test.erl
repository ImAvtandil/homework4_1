-module(lesson2_task04_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task04:len(1)),
     ?_assert(lesson2_task04:len([]) =:= 0),
     ?_assert(lesson2_task04:len([a, b, c]) =:= 3)].

-endif.
