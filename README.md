# MySQLDatabase
A repository for database managmenet

**In this repository, i've decided to use the standard WORLD sample database**

In this task, i've decided to use the world database and populate it with new norwegian cities and languages/dialects.
All my operations revolve around the new city inserts.

The script.sql file contains the new additions to the database.
operation_script.sql file, contains all the different functions.

in addition, there are several pictures to explain the outputs of the different queries


Here i have updated the database with two new norwegian cities
<img width="1006" height="914" alt="Image" src="https://github.com/user-attachments/assets/d91ef066-61ee-4b41-8837-a196f17fdd83" />


Here i am calculating the number of people that live in the allocated cities in Argentina 
<img width="965" height="643" alt="Image" src="https://github.com/user-attachments/assets/78dc27e8-dcd2-4a29-b8a7-5331d373ba94" />

This is the output from my subquery, where i retrieve all the countries that are above the average population threshold
<img width="1009" height="578" alt="Image" src="https://github.com/user-attachments/assets/6e32e5e5-3c6b-42d2-bc86-05876284d024" />

This is an output where we're seeing the maximum life expectancy of all the countries with a Constitutional monarchy
<img width="984" height="547" alt="Image" src="https://github.com/user-attachments/assets/b244d1c4-131a-4f96-ae34-557f834ad41e" />


This is the output from the join query, where i join three different tables and displays each country, with their capital and how many cities and languages are in each country
<img width="981" height="616" alt="Image" src="https://github.com/user-attachments/assets/1ba4197f-6295-488c-bc44-0f5a4d4bb596" />

Here i have inserted Samisk and NyNorsk into the country_language table
<img width="1003" height="939" alt="Image" src="https://github.com/user-attachments/assets/aae4d060-c805-4967-b8b1-f98a7922f59a" />

Here i have deleted the NewNorwegian duplicates from the country_language table
<img width="1009" height="911" alt="Image" src="https://github.com/user-attachments/assets/f4b6c93d-54f9-4fc7-a4cd-98c94d9f989d" />

Select query, where i am selecting all the norwegian cities
<img width="1008" height="914" alt="Image" src="https://github.com/user-attachments/assets/59f9ffd3-2dc8-495b-a7f1-3affd9d5d2f0" />

Selecting all the districts with more than five cities
<img width="1006" height="961" alt="Image" src="https://github.com/user-attachments/assets/99e805aa-8e48-4bd4-94f1-00d5eb73e80c" />

Deleting duplicate notodden cities
<img width="1003" height="917" alt="Image" src="https://github.com/user-attachments/assets/40c2713a-c609-4312-a6b0-77e00094743a" />

Selecting the average life expectancy of countries, that have a higher gnp than 50000
<img width="967" height="560" alt="Image" src="https://github.com/user-attachments/assets/2b5282bc-147b-4813-b6cb-10d6eb04149f" />

Selecting the average population of the norwegian cities
<img width="998" height="599" alt="Image" src="https://github.com/user-attachments/assets/b51bc9cd-1b4e-4e57-8332-60df4eeb4d34" />
