-module(lesson2_task14_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task14:duplicate([]) =:= []),
     ?_assert(lesson2_task14:duplicate([a, b, c]) =:= [a, a, b, b, c, c]),
     ?_assert(lesson2_task14:duplicate([a, a, b, b, b, c, x]) =:= [a, a, a, a, b, b, b, b, b, b, c, c, x, x])].

-endif.
