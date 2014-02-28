### iOS 7 UITextView is slow after typing lots of text

I'm having trouble with a slowdown that occurs in UITextView on iOS 7 when typing lots of text. I put a NSLog in NSLayoutManager and identified that drawGlyphsForGlyphRange runs N*2 times, where N is the number of line fragments in the text view. (whether it's via word-wrapping or by pressing enter a bunch of times)

To reproduce the problem run this sample code on an iPad attached to a physical keyboard. Mash the keys for about 15 seconds until it starts to slow down. Pause and wait for the input to catch up. Then try to type: "The quick brown fox jumps over the lazy dog." By the time you finish, it'll take 2-3 seconds for "dog" to appear on the screen.

Reproducibility Notes:
* While this may seem like an extreme example, it still reproduces if you just type a few paragraphs at a reasonable speed in a basic UITextView
* This is not a problem on iPhone
* This is a problem even with a UITextView created with [[UITextView alloc] initWithFrame:] as opposed to [[UITextView alloc] initWithFrame:textContainer:]
* The problem occurs even if you comment out the NSLog in NotesLayoutManager.m
* This was not a problem with UITextView on iOS 6