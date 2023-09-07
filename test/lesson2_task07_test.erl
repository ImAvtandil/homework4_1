-module(lesson2_task07_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task07:flatten(1)),
     ?_assert(lesson2_task07:flatten([]) =:= []),
     ?_assert(lesson2_task07:flatten([a, b, c]) =:= [a, b, c]),
     ?_assert(lesson2_task07:flatten([a, [b, [c]], [b], x]) =:= [a, b, c, b, x])].

-endif.
