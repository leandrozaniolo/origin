# origin
# Origin QA Analyst Take-Home Assignment

Origin is a platform that helps our customers' employees put their financial lives on track.
One key to financial well-being is planning & saving for your goals. Users can have many saving goals (e.g. going to college or throwing a wedding party), and it is our job to help them accomplish them.

Imagine you are working on a project to build a piece of our savings feature by creating the savings plan simulation screen.

On the screen, the user will simulate saving towards the "Buy a house" savings goal. In it, the users choose (i) the value they want to save and (ii) the date they plan to reach the goal.
When the users change the value of any of the inputs, the monthly deposit value is calculated and displayed to them.

## Assets

You can find the layout mockups here on our Figma project: [Layout mockups](https://www.figma.com/file/Axdg0WSJURcxp8Arq3gg9x/Take-Home-Assignment-v2?node-id=1%3A512)

The implemented project is live here: [Buy a house screen](http://qa-assignment.useorigin.com.s3-website-us-east-1.amazonaws.com/)

Once you have opened the Figma link you must sign up and log in so you can have access to the colors, fonts, margins, and assets information.

### Money input

The money input component should:

- Allow only numbers
- Display the value formatted as money (e.g 3500.45 should be 3,500.44)

### Date input

The date input component should:

- Allow only future months
- When clicking on the arrow buttons it should go up and down month by month
    - On focus, the users should be able to move the months by typing the Left and Right arrow keys on the keyboard

### Confirm button

The confirmation button does not need to have any action on it.

## Delivery Instructions

You’ll need to:

1. Develop a test plan;
2. Execute it and automate it;
3. Build a document containing the report and test results.

Feel free to use any tools and methodologies you’re familiar with.