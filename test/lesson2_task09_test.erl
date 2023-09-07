-module(lesson2_task09_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task09:pack([]) =:= []),
     ?_assert(lesson2_task09:pack([a, b, c]) =:= [[a], [b], [c]]),
     ?_assert(lesson2_task09:pack([a, a, a, a, b, c, c, c, c, c, d, d]) =:= [[a, a, a, a], [b], [c, c, c, c, c], [d, d]])].

-endif.
