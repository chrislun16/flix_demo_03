# Project 2 - *Flixster*

**Flixster** is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: **X** hours spent in total

## User Stories

The following **required** functionality is complete:

- [X] User can view a list of movies currently playing in theaters from The Movie Database.
- [X] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [X] User sees a loading state while waiting for the movies API.
- [X] User can pull to refresh the movie list.

The following **optional** features are implemented:

- [X] User sees an error message when there's a networking error.
- [] Movies are displayed using a CollectionView instead of a TableView.
- [X] User can search for a movie.
- [ ] All images fade in as they are loading.
- [ ] User can view the large movie poster by tapping on a cell.
- [X] For the large poster, load the low resolution image first and then switch to the high resolution image when complete.
- [ ] Customize the selection effect of the cell.
- [ ] Customize the navigation bar.
- [X] Customize the UI.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!
- User can tap on poster image to access youtube trailer
  - return button available after accessing youtube trailer
- Superhero movies are displayed using a CollectionView instead of a TableView.
- Only Images in the Now Playing Table View (with all the movies) fade in as they are loading
- User can view a cropped large movie poster by tapping on a cell, as well as a synopsis of the movie and the title as well
  as a poster image
  - cancel button available for search button to get out of search mode
- refresh Indicator doesn't appear in middle of screen when you hold to make it refresh for a period of time
- in "now playing" (the first tab), synopsis is never cut off and there is extra space at the bottom in detail view 

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. implementing different links in our app
2. adding icons above now playing and superhero movies

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://imgur.com/cMoDh1s' title='flix' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

Knowing which method to insert the code in for a particular step was not clear to me

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library
- The Movie Database API (https://developers.themoviedb.org) - movie database API

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
