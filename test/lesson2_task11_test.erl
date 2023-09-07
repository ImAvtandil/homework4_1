-module(lesson2_task11_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task11:encode_modified([]) =:= []),
     ?_assert(lesson2_task11:encode_modified([a, b, c]) =:= [a, b, c]),
     ?_assert(lesson2_task11:encode_modified([a, a, a, a, b, c, c, c, c, c, d, d]) =:= [{4, a}, b, {5, c}, {2, d}])].

-endif.
