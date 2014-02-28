*iOS 7 UITextView is slow after typing lots of text

I'm having trouble with a slowdown that occurs in UITextView on iOS 7 when typing lots of text. I put a tracer in NSLayoutManager and identified that drawGlyphsForGlyphRange runs N*2 times, where N is the number of times your lines word-wrapped.

Here is the sample code. To reproduce the problem run it on an iPad and attach a physical keyboard. Mash the letters and the space bar for about 15 seconds, and notice it slows down. Then when you try to type normally, it's really slow. That's an extreme example, but if you just try typing two paragraphs at a reasonable speed, it'll jam up.

This is not a problem with UITextView on iOS 6.