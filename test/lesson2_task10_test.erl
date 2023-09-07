-module(lesson2_task10_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task10:encode([]) =:= []),
     ?_assert(lesson2_task10:encode([a, b, c]) =:= [{1, a}, {1, b}, {1, c}]),
     ?_assert(lesson2_task10:encode([a, a, a, a, b, c, c, c, c, c, d, d]) =:= [{4, a}, {1, b}, {5, c}, {2, d}])].

-endif.
