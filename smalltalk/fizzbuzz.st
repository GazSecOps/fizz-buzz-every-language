| i |
1 to: 100 do: [:i |
    (i \\ 15 = 0)
        ifTrue: [Transcript show: 'FizzBuzz']
        ifFalse: [
            (i \\ 3 = 0)
                ifTrue: [Transcript show: 'Fizz']
                ifFalse: [
                    (i \\ 5 = 0)
                        ifTrue: [Transcript show: 'Buzz']
                        ifFalse: [Transcript show: i printString]]].
    Transcript cr]
