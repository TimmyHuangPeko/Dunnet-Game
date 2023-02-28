rm -f ~/state 2> ~/X
ls ~/O/$* &> ~/X && (ls ~/I/$* &> ~/X || (echo "You do not have that." && echo y > ~/state)) || (echo "I don't know what that is."; echo y > ~/state)
fgrep -w y ~/state &> ~/X && exit

echo > ~/A/`cat ~/I/$*`
ls ~/A/bracelet &> ~/X && (mv ~/I/emerald ~/I/bracelet ./; echo "Done.")
ls ~/A/board &> ~/X && (mv ~/I/card ~/I/cpu ~/I/board ./; echo "Done.")
ls ~/I/food &> ~/X && ls .key &> ~/X && (echo "The bear takes the food and runs away with it. He left something behind."; rm -f ~/I/food ./bear 2> ~/X; mv .key key)
mv ~/I/$* ./ &> ~/X && echo "Done."

rm -f ~/A/`ls ~/A | xargs basename` 2> ~/X
exit
