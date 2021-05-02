# Pewlett-Hackard-Analysis
using PGAdmin for SQL databases

## Preparing for the "Silver Tsunami"
With the baby boomer population reaching retirement, firms need to prepare for a large exit from the workforce aka the "silver tsunami." This  analysis reviews Pewlett-Hackards various files to breakdown the departments, employees and other information to provide a full snapshot of their current workforce. Then, functions such as Where and Count were used to determine retirement eligibility based on date of birth. Finally tables were joined to capture retirement info. PH requested additional retirment information to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program to better prepare for this exit.

## Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

From the additional analyses across retiring employees per title and mentors, we can take away

1. We can see from the [retiring_titles.csv](https://github.com/dixie-chick/Pewlett-Hackard-Analysis/files/6410565/retiring_titles.csv) the largest retiring title are Senior Engineers, PH should prioritize starting to recruit for these roles.
2. The next largest wave will be Senior Leadership employees, these could fall under the Senior Engineers but should be prioritized for recruiting.
3. We can see from [mentorship_eligibility.csv](https://github.com/dixie-chick/Pewlett-Hackard-Analysis/files/6410566/mentorship_eligibility.csv) there are 1550 eligible.
4. Based on the mentors retiring, PH will need to implement a new mentoring program since majority are retiring.


## To Wrap it Up: 
### How many roles will need to be filled as the "silver tsunami" begins to make an impact? 
Currently we have a list of employees born between 1952 and 1955, assuming the reirement age is 65 meaning we have a different quota for each of the following four years. We can view the retirement_info and get an approximate 41,000 employees out of ~65,000 employees that will be retiring. PH needs to lay out a strategy and plan on recruitment tactics, quickly. We can take the data csv files and format into graphs in pandas using matplotlib for better representation.

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
With the rate of retirees, it looks like the mentors will be exiting the workforce. We could create a query to pull the mentor eligible employees to step into these positions. Using this new table PH could plan a path to mentorship program.

