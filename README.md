# CS 445 Final Project: CCSC MW Conference Student Showcase

In the event that the Consortium for Computing Sciences in Colleges Midwest Conference's Student Showcase must be moved online due to COVID-19, this project is a design for moving it online.

## Running Deployment

https://bsu-hci.github.io/cs445_final_project/#/

## Build Week #1 MEMO

For this first, Build Week #1 release, I wanted to focus on what I thought was the most valuable part of my selected prototype: the Student Showcase page, which has an array of posters, with college names and "Evaluate" buttons below each project. Clicking the posters opens up a link in a new tab, a link for a Zoom meeting which I scheduled in the future. Clicking the "Evaluate" button brings the user to the Evaluate page. I wanted to use sliders for this, but was having issues with getting the sliders to change states. With time running out, I put in text input fields for entering the score instead. The buttons on this page, "Return to Student Showcase" and "Submit Evaluation", both return the user to the Student Showcase. "Submit Evaluation" doesn't submit anything, as this is just a proof of concept.

In building this first iteration, I noticed one problem with my prototype. It had posters for students' projects, but not titles for those projects. While having images with no titles is a bit intriguing, images don't always tell the attendee what the project is about. Take the picture of the quantum computer for example. I would have no idea what that image is without context, and it would be helpful to have some text telling me what it is.

In researching Flutter tools, I discovered that URLs can be opened in a browser, or they can be opened in what's called WebView, which displays the webpage inside the app. In setting up WebView, developers can include features like zooming. However, I decided to code this project to open the Zoom meeting in the user's device's default browser. I figured this would be easier for joining Zoom meetings, which can be joined in a browser or in the Zoom app. I figured joining the Zoom meeting in a browser would be simpler than from within the Flutter application.

In the next iteration, Build Week #2, I plan to add the ability for advisors to enter Zoom links and poster images for each project. In my project right now, clicking all the posters opens a link to the same Zoom meeting, and the images are hard coded. In the next iteration, the software will allow an advisor to enter the Zoom link and the image for each project (which may require the images to be displayed via network, as opposed to project files, which is the current method).

## Build Week #2 MEMO

For Build Week #2, I added a button at the top right of the main page, where advisors, who act as administrators for a given GalleryChat event, can log in to add student projects to the event, including project title, college name, link to Zoom meeting, and project image. Clicking the “Log In as Advisor” button brings the user in, not requiring a user name or password. While this isn’t secure, I thought it would be a waste of time to write up a very basic username/password page. 

After the advisor is logged in, they are presented with the options of “Add a new project”, next to a plus icon, and existing projects are listed below, each with “Edit” and “Delete” buttons. Clicking the “delete” button does nothing. Clicking “Edit” and clicking “Add Project” bring the user to two different but very similar pages. With “Add Project”, the user is entering all the project information, whereas in “Edit”, the user is editing existing text, which I have mocked with “College University”, “finalProjectPoster.jpg” and so on.

I also added a comment section in the Evaluation page.

Throughout this build process, several times I made the decision to not build something. I did not build a username/password screen, or a CCSC MW Conference HomePage (that is, the event, not the Student Showcase), or logic to support actually adding, editing, or deleting projects. In doing this, it’s forced me to think more about just the visual aspect of the system. Switching my full stack brain off has forced me to only be concerned with the user experience and what the user sees. There were times in this project that I thought, “Where have I seen that before? What would I expect?” With the “Browse” button for example, most times I’ve encountered those, they have text next to it indicating the selected file name, and I decided to incorporate that into the layout.

I have made assumptions in this memo, such as the assumption that showing a file name next to a browse button is good because it is commonplace.
