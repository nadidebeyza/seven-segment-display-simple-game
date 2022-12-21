### TODAY YOU WILL HAVE...

**Abstract**

TODAY YOU WILL HAVE... is a very simple fortune game. A user plays once a day and guesses about their day. There are four options: LOVE, LUCK, FUN, and JOY. It works via four push buttons. The user pushes a push button and sees the guess about their day on 7-segment displays. Also, the led lights up according to the order in the push button which is pressed.

![Example output of the code](https://github.com/nadidebeyza/seven-segment-display-simple-game/blob/main/demo.JPG "Example output of the code")

**Explanation**

In this project, I designed a fortune game called YOU WILL HAVE TODAY.... This game aims to guess about their day once a day.

There are four options: LOVE, LUCK, FUN, and JOY. It works via four push buttons. The user pushes a push button and sees the guess about their day on 7-segment displays. Also, the led lights up according to the order in the push button which is pressed.

First of all, interrupt is configured, and also interrupts are enabled for pushbuttons. Push-button which is pressed and checked via edge capture register. Then the adjustments for the 7-segment display and LEDs. It is made as the game will get a guess about the user’s day.

Key functions display letters of the text of the day and sent them to a 7-segment display in order via a logical shift left. Finally, call the end function, and interrupts are disabled and the game ends. Then a new user can start the game.

If a player does not push any push button, the game waits for the player.

While the game is running, it is checked whether any button is pressed thanks to the interrupt. If a button is pressed, a guess is obtained.

**DEMO**

![Example output of the code](https://github.com/nadidebeyza/seven-segment-display-simple-game/blob/main/dokurna_abst_img.png "Example output of the code")

![Example output of the code](https://github.com/nadidebeyza/seven-segment-display-simple-game/blob/main/2.png "Example output of the code")

![Example output of the code](https://github.com/nadidebeyza/seven-segment-display-simple-game/blob/main/3.png "Example output of the code")

![Example output of the code](https://github.com/nadidebeyza/seven-segment-display-simple-game/blob/main/4.png "Example output of the code")




