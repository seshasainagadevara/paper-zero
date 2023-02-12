# notepad_online

An online interactive notepad

# An online document app like google docs made with flutter, and dart backend with grpc.
- Used Bloc for statemanagement
- Used flutter quill package for rich text editor
- Used grpc for communication with backend 
- Used mongodb atlas as cloud database for docs and user data storage
- used uanry and server streaming and bi directional streaming with grpc 
- We can create notepads and share with others and # collaborate interactively with others on the same document with others using url
- We can edit document with rich edit options highlighting, color changes, adding images, fonts, alignment, etc ..
- Used # protocol buffers for medium of data exchange (messages, services)
- Followed Bloc  architecture
- Handled dyanmic routing with the go_router 
- Handled deep and dynamic links and redirection handling for authentication and logout of users with go_router
- used this go_router: ^6.0.6 package for routing
- used this package for rich text editing elements flutter_quill: ^6.3.3
- grpc: ^3.1.0 
- used google_sign_in: ^5.4.4 google signin for gmail authentication

Screenshots:

Notepad online editor
![notepad editor](https://user-images.githubusercontent.com/36765190/218295265-ce9133c6-ff10-4b0e-b4a9-630f9ae5a6ac.png)

Rich text editing 
![Rich text editing in the notepad](https://user-images.githubusercontent.com/36765190/218295268-269528c7-284e-4d21-8732-2cdf1dae8e45.png)

Displaying all docs of the user
![Home screen showing all documents of a user](https://user-images.githubusercontent.com/36765190/218295269-5550be83-5882-429c-8931-589203f73af8.png)
