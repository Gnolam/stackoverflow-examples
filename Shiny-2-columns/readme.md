# URL of the question
http://stackoverflow.com/questions/40438390/how-to-put-outputs-side-by-side-in-shiny

# Question
How can I align my outputs side by side? I tried fluidRow columns but it doesn't work (the second tables appear inside of the firsts).

# Answer
Detailed overview of the layout is here: [RStudio: Application layout guide][1].

Essentially what you need is to define a row using `shiny::fluidRow()` which you subsequently divide into columns using `shiny::column()`
