The question is how to unify all situations where we come back to our "home" view controller after having been "away" in a presented or pushed view controller.

I posed the problem on Stack Overflow like this:

> In my mind, these situations are all parallel:
>
> * My view controller presented another view controller fullscreen, which has now been dismissed
>
> * My view controller presented another view controller not fullscreen, which has now been dismissed
>
> * My view controller presented a popover, which has now been dismissed
>
> * My view controller pushed another view controller, which has now been popped
>
> In every case, my view controller ceased to be the "frontmost" view controller, and then became "frontmost" again.
>
> I find it curious that iOS has no single blanket event that covers all these situations. I think I can cover every individual case, but the resulting code is confusing and scattered. How do people handle this coherently and elegantly?

This project illustrates a possible solution: a unified, coherent, and reasonably elegant way of moving the code that responds to coming "home" into a single place.
