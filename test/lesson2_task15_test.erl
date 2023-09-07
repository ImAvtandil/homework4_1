-module(lesson2_task15_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task15:replicate([], 3) =:= []),
     ?_assert(lesson2_task15:replicate([a, b, c], 3) =:= [a, a, a, b, b, b, c, c, c]),
     ?_assert(lesson2_task15:replicate([a, a, b, b, b, c, x], 2) =:= [a, a, a, a, b, b, b, b, b, b, c, c, x, x]),
     ?_assert(lesson2_task15:replicate([x], 10) =:= [x, x, x, x, x, x, x, x, x, x])].

-endif.
