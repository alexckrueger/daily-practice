# A simple game, with no particularly interesting throws. Every throw is recorded
# by the number of pins knocked down.
# Score: 63
simple =          [1,5,  4,4,  8,0,  5,3,  0,0,  4,5,  2,3,  8,1,  7,1,  1,1]
p bowling(simple)

# In reality, throws that don't knock down any pins are recorded using the string '-'.
# Score: 63 (still)
simple_2 =        [1,5,  4,4,  8,'-',  5,3,  '-','-',  4,5,  2,3,  8,1,  7,1,  1,1]
p bowling(simple_2)

# Adding a spare, which means you knocked down all remaining pins in your _second_ throw.
# You get credit for those pins, but also for however many pins you knock down in your
# next throw. This is probably my average score.
# Score: 78
spares =          [1,5,  4,4,  8,'/',  5,3,  '-','-',  4,5,  2,3,  8,'/',  7,1,  1,1]
p bowling(spares)

# Adding a strike, which means you knocked down all ten pins on your first throw!
# You get credit for those ten pins, plus however many pins you knock down on each
# of your _next two_ throws.
# Score: 97
strikes =         [1,5,  4,4,  8,'/',  5,3,  'X',  4,5,  2,3,  8,'/',  7,1,  1,1]
p bowling(strikes)

# Remember that those next throws might also be spares or strikes. In this case,
# we threw a strike on frame 5, and then for our next two throws we knocked down
# four and then six pins. It doesn't matter that the second throw is a spare and
# has its own extra scoring. we only get credit for the four and six.
# Score: 101
running_marks =   [1,5,  4,4,  8,'/',  5,3,  'X',  4,'/',  2,3,  8,'/',  7,1,  1,1]
p bowling(running_marks)

# After our frame 5 strike, we threw another in frame 6! That means that for
# frame 5, we get credit for our ten pins, plus credit for the ten pins from our
# _next_ frame, and then for the two pins in the _frame after that_.
# Score: 106
running_strikes = [1,5,  4,4,  8,'/',  5,3,  'X',  'X',  2,3,  8,'/',  7,1,  1,1]
p bowling(running_strikes)

# We threw yet another strike in frame 9. This would be unimaginable for me. Your
# existing code may already work for this case, but it may trip you up later.
# Score: 113
late_strike =     [1,5,  4,4,  8,'/',  5,3,  'X',  'X',  2,3,  8,'/',  'X',   1, 1]
p bowling(late_strike)

# New rule: extra frames. If you get a strike or a spare in frame 10, we need additional
# throws to figure out how much to score. In this case we got a strike, so we take two
# additional throws (5 and 4) which are added to our frame 10 score. They are _not_ added
# to the total score themselves, they exist only to score frame 10.
# Score: 123
endgame =         [1,5,  4,4,  8,'/',  5,3,  'X',  'X',  2,3,  8,'/',  7,1,  'X',  5,4]


# knocked down ten pins each. So every frame, including frame 10, was worth 30 points.
# Score: 300
perfect =         ['X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X',  'X']

