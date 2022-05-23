# batch-script-chat-room

This is an old chat room program I wrote to work on my school district's shared drive. The program lets you specify which chat room you want to connect to, then it opens another console window to display the chat log while the previous one is used to send messages. Each message has the date, time, and the name of the sender attached to it.

## Getting started

- Add your username to the `chatters.txt` file
- Open `chat-room.bat` and follow the prompts

When you log in for the first time, it will prompt you for your name. This name is saved in a .bat file under the `users` directory, and will be used for all future sessions.

### chat-hub

The file `chat-hub.txt` is intended as the default meeting place so users can post about which chat room they'll be in. `hub-backup.txt` can be copied over to reset the file whenever necessary. Note that all chat rooms start with the prefix "chat-", so `hub-backup.txt` isn't directly editable through the chat room script.

### Commands
- `$cls` - empty the chat file for the chat room you're in
