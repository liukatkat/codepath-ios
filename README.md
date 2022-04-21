# Pre-work - TipCal

**TipCal** is a tip calculator application for iOS.

Submitted by: **Tin Nam Liu (Katrina)**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] User can select between tip percentages by tapping different values on the segmented control and the tip value is updated accordingly

The following **optional** features are implemented:

* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Calculate the amount paid by each person
- [x] Setting page: user can set their own default tip percentages

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/HFiDQTW.gif)



## Notes

Referenced a thread on Stack Overflow: https://stackoverflow.com/questions/27878732/swift-how-to-dismiss-number-keyboard-after-tapping-outside-of-the-textfield

## License

    Copyright Tin Nam Liu

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    
    
# Flix
Flix is an app that allows users to browse movies from the [The Movie Database API](http://docs.themoviedb.apiary.io/#).
## Flix Part 2
### User Stories
#### REQUIRED (10pts)
- [x] (5pts) User can tap a cell to see more details about a particular movie.
- [x] (5pts) User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.
#### BONUS
- [ ] (2pts) User can tap a poster in the collection view to see a detail screen of that movie.
- [ ] (2pts) In the detail view, when the user taps the poster, a new screen is presented modally where they can view the trailer.

### App Walkthrough GIF

![](https://i.imgur.com/bEctk1X.gif)
![](https://i.imgur.com/e6Mjfk7.gif)

### Notes
---
## Flix Part 1
### User Stories
#### REQUIRED (10pts)
- [x] (2pts) User sees an app icon on the home screen and a styled launch screen.
- [x] (5pts) User can view and scroll through a list of movies now playing in theaters.
- [x] (3pts) User can view the movie poster image for each movie.
#### BONUS
- [ ] (2pt) User can view the app on various device sizes and orientations.
- [x] (1pt) Run your app on a real device.
### App Walkthrough GIF
![](https://i.imgur.com/rJY8jHB.gif)

### Notes

# Twitter - Part II

This is a basic twitter app to view, compose, favorite, and retweet tweets.

Time spent: **3** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User can compose a tweet. (4pts)
- [x] User can favorite a tweet. (4pts)
- [x] User can retweet a tweet. (2pts)

The following **bonus** features are implemented:

- [ ] When composing a tweet, user sees a countdown for the number of characters remaining for the tweet (out of 280) (2pts)
- [ ] User can view their profile in a profile tab. (3pts)
- [ ] User sees embedded images in tweet if available. (3pts)

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/VvI0Ipg.gif)

The favorites sustain after refresh:

![](https://i.imgur.com/LnZVmaz.gif)

# Twitter - Part I

This is a basic twitter app to read your tweets.
@@ -25,7 +55,7 @@ Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/wmwkUXr.gif)

User stays logged in across restarts:
User stays logged in across restarts：

![](https://i.imgur.com/BuMLYKw.gif)


# Parstagram - Part II

This is an Instagram clone with a custom Parse backend that allows a user to post photos, view a global photos feed, and add comments!

Time spent: **4** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User stays logged in across restarts. (1pt)
- [x] User can log out. (1pt)
- [x] User can view comments on a post. (3pts)
- [x] User can add a new comment. (5pts)

The following **bonus** features are implemented:

- [ ] User can add a profile picture. (2pts)
- [ ] Profile pictures are shown for posts and comments. (2pts)

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![](https://i.imgur.com/EKsmaLc.gif)

# Parstagram - Part I

This is an Instagram clone with a custom Parse backend that allows a user to post photos and view a global photos feed.

Time spent: **4** hours spent in total

## User Stories

The following **required** functionality is completed:

- [x] User sees app icon in home screen and styled launch screen. (1pt)
- [x] User can sign up to create a new account. (1pt)
- [x] User can log in. (1pt)
- [x] User can take a photo, add a caption, and post it to the server. (3pt)
- [x] User can view the last 20 posts. (4pts)

The following **bonus** features are implemented:

- [ ] User can pull to refresh. (1pt)
- [ ] User can load past posts infinitely. (2pts)

## Video Walkthrough

Here's a walkthrough of implemented user stories:

Note: the process of typing in the password is not shown in the gif

### Walkthrough
![](https://i.imgur.com/27XEOx1.gif)


### Login
![](https://i.imgur.com/AhUyqr7.gif)


## References

Referenced and used code from https://stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift to dismiss keyboard when user taps on the screen
