# StudyMates

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description

Studymates is an app that connects college students with other classmates who want to study together for the courses they take. This app also has a mission to bring students closer after the class. This app is not only performing as an academic targeting platform but also striving to become an effective social network builder for college students.


### App Evaluation

- **Category:** Social Networking
- **Mobile:** Mobile is essential for students to find the potential “studymates” instantly. Students use the app to join study groups, chat with their classmates and set up time for studying together. The camera is used to share images with the group.
- **Story:** Connects students with other classmates who want to study together for the same course. Allows students to form study groups and get help from other students in the same course.
- **Market:** Our main target market is college students, any student of any grade can use this app. Maximum group size and customized features can be used for monetization.
- **Habit:** Students are using the app on daily base to discuss any questions from classes, and they could schedule a time to review for exams. This app allows students to join or create a new study group any time.
- **Scope:** V1 would allow students to search, form and join study groups. V2 would add the chatting feature. V3 has the “Make an appointment” feature so that students can make appointments more easily by voting on meeting times or accept an appointment from other students. V4 would allow students to upload files to the chat. 

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

For Studymates, we identified the following “must-have” features which a user needs to be able to perform for the app to work:

* User can create a new account
* User can login and logout
* User can see study groups they owns or joined
* User can see their profile page with their photos, name and school
* User can search for existing study groups
* User can see the information of study groups
* User can request to join a study group
* User can form a study group
* User can accept or decline others’ request to join the group he/she owns
* User can chat in the study group
* User can receive notifications when he/she receive a request to join or successfully join a group

**Optional Nice-to-have Stories**

* User can make appointments to meet offline and study together
* User can upload files in the group
* User can add a comment to a file

### 2. Screen Archetypes

**Login Page**
* User need to enter their username and password to proceed to next page
* New users are prompted to sign up 

**Sign Up Page**
* New students are required to provide their name, school, username and password 

**Home page**
* It is registered users’ home page, and it consists two sections, one is indicating the groups the user owned and the other is for the groups the user have joined. On the very top of toolbar, there are the notification icon and search icon. 

**Personal Information Page**
* The user’s information is stored on personal information page. 

**Search Page**
* User could search for their ideal study group by simply enter the school name, subject name and optional group name.

**Result Page**
* After user hit the search button on search page, the corresponding groups will be soon appearing and listing out on the page

**Group information Page**
* This shows group basic information, including its name, associated school, subject, owner as well as the number of members in the group. The “Request to join” button on the bottom of page allows user to send out the request to group owner. For group members, there is a “Go to chat” button instead.

**Notification Page** 
* Group owner will receive notifications when a new member wants to join a group, and when you successfully accept or decline the request
* Group member will receive notifications when a new member join the group
* User will receive notifications when he/she join a new group successfully

**Message Page**
* Once a group owner click on the notification that says a new member request to join, this pops out with the member’s name and school. * Owner has the option to accept or decline the request.

**Group Chat Page**
* Participant will go to the group chat page when they click on the groups they joined or owns.  


### 3. Navigation

**Tab Navigation** (Tab to Screen)

None

**Flow Navigation** (Screen to Screen)

**Login Page**
* Login button to Home Page 
* Sign Up button to Sign Up Page 

**Sign Up Page**
* Sign Up botton to Home Page 

**Home Page**
* Notification icon to Notification Page 
* Search icon to Search Page
* Profile picture to Personal Information Page
* Group cell to its group chat

**Personal Information Page**
* Back bar button to Home Page
* Logout button to Sign In Page

**Search Page**
* Back bar button to Home Page 
* Search button to Result Page 

**Result Page**
* Back bar button to Search Page
* Search result cell goes to the Group Information Page 

**Group Information Page**
* Back bar button to Result Page

**Notification Page**
* Back bar button to Home Page 
* Group owner click in the notification cell, it goes to Message Page 
* Participants click in the notification once the owner proceed the request, it goes to Group Chat Page 

**Message Page**
* Back bar button to Notification Page
* Accept or decline button to Notification Page

**Group Chat Page**
* Back bar button to Home Page 

## Wireframes
<img width="541" alt="Wireframe" src="https://user-images.githubusercontent.com/32991904/55581850-e58c6f00-56eb-11e9-915d-0557f4096b29.PNG">

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
