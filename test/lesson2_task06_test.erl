-module(lesson2_task06_test).

-ifdef(TEST).

-include_lib("eunit/include/eunit.hrl").

last_test_() ->
    [?_assertException(error, function_clause, lesson2_task06:is_palindrome(1)),
     ?_assert(lesson2_task06:is_palindrome([]) =:= true),
     ?_assert(lesson2_task06:is_palindrome([a, b, c]) =:= false),
     ?_assert(lesson2_task06:is_palindrome([a, b, c, b, a]) =:= true)].

-endif.
