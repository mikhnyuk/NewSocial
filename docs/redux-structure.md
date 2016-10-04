REDUCERS:
- session reducer
- partial story reducer
- selected story reducer
- author reducer
- topic middleware

MIDDLEWARE:
- session middleware
- partial story middleware
- selected story middleware
- author middleware
- topic middleware

ACTIONS:

partial story actions:
- request partial stories [middleware - make API request to database, on success: receive partial stories]
- receive partial stories [reducer - receive partial story info, update stories in state, display story boxes]
- fetch stories by author(authorID) [middleware - make API request to database, on success: receive partial stories]
- fetch stories by topic(topicID) [middleware - make API request to database, on success: receive partial stories]
- fetch bookmarked stories(userID) [middleware - make API request to database, on success: receive partial stories]
- fetch random stories(number) [middleware - make API request to database, on success: receive partial stories]
- create like(storyID) [middleware - make API request to database, on success: receive like]
- receive like(storyID) [reducer - receive like, update story in state]
- create bookmark [middleware - make API request to database, on success: receive bookmark]
- receive bookmark [reducer - receive bookmark, update partial story/bookmarked in state]

selected story actions:
- create story [middleware — make API request to database, on success: receive full story]
- receive full story [reducer — receive requested story in full from database, update selected story in state, display created story]
- delete story [middleware — make API request to database, on success: receive deleted story]
- receive deleted story [reducer — update state]
- edit story [middleware — make API request to database, on success: update story]
- update story [reducer — receive edited story from database, update selected story in state, display edited story]
- request full story(storyID) [middleware - make API request to database, on success: receive full story]
- create like(storyID) [middleware - make API request to database, on success: receive like]
- receive like(storyID) [reducer - receive like, update story in state]
- create bookmark [middleware - make API request to database, on success: receive bookmark]
- receive bookmark [reducer - receive bookmark, update selected story/bookmarked in state]

- process topics([topicTitle, topicTitle]) [middleware - make API request to database (backend checks to see if topics exist, creates topics if not, creates topic tags), on success: receive topic tags]
- receive topic tags(topics) [reducer - receive topic tags, update state: selected story/topics]

- create response(storyID) [middleware — make API request to database, on success: receive response]
- receive response [reducer — receive created response from database, update selected story/responses in state, display selected story w new response]
- delete response [middleware — make API request to database]
- edit response [middleware — make API request to database, on success: receive updated response]
- receive updated response [reducer — receive updated response from database, update selected story/responses in state, display edited response]
- request responses(storyID) [middleware - make API request to database, on success: receive responses]
- receive responses [reducer - receive responses from database, update selected story/responses in state, display selected story w/ responses]


session actions:
- create user [middleware - make API request to database to create user, on success: receive current user]
- create session [middleware - make API request to database to create session, on success: receive current user]
- receive current user [reducer - receive info on created current user from database, update current user in state, display logged in main feed]
- destroy session [middleware - make API request to database to destroy session, on success: receive destroyed session]
- receive destroyed session [reducer - update state to clear current user, display not logged in main feed]
- destroy user [middleware - make API request to database to destroy user, on success: receive destroyed session]


author actions:
- request author info(authorID) [middleware - make API request to database for user info]
- receive author info [reducer - receive user info from database, update author in state, display author page]


topic actions:
- fetch followed topics [middleware - make API request to topic database, on success: receive followed topics]
- receive followed topics [reducer - receive followed topics, update followed topics in state]
- fetch random topics(number) [middleware - make API request to topic database, on success: receive random topics]
- receive random topics [reducer - receive random topics, update random topics in state]
- create topic follow(topicTitle) [middleware - make API request to database, on success: receive topic follow]
- receive topic follow(topic) [reducer - receive created topic follow, update topic/main topic]
- delete topic follow(topicTitle) [middleware - make API request to database, on success: receive deleted topic follow]
- receive deleted topic follow(topic) [reducer - receive deleted topic follow, update topic/main topic]