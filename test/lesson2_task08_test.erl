-module(lesson2_task08_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assert(lesson2_task08:compress([]) =:= []),
     ?_assert(lesson2_task08:compress([a, b, c]) =:= [a, b, c]),
     ?_assert(lesson2_task08:compress([a, a, a, a, b, c, c, c, c, c, d, d]) =:= [a, b, c, d])].

-endif.
