-module(lesson2_task13_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task13:decode([]) =:= []),
     ?_assert(lesson2_task13:decode([{1, a}, {1, b}, {1, c}]) =:= [a, b, c]),
     ?_assert(lesson2_task13:decode([{4, a}, {1, b}, {5, c}, {2, d}]) =:= [a, a, a, a, b, c, c, c, c, c, d, d])].

-endif.
