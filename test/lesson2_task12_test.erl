-module(lesson2_task12_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task12:decode_modified([]) =:= []),
     ?_assert(lesson2_task12:decode_modified([a, b, c]) =:= [a, b, c]),
     ?_assert(lesson2_task12:decode_modified([{4, a}, b, {5, c}, {2, d}]) =:= [a, a, a, a, b, c, c, c, c, c, d, d])].

-endif.
