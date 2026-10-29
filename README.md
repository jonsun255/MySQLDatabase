# MySQLDatabase
A repository for database managmenet

**In this repository, i've decided to use the standard WORLD sample database**


there are several pictures to explain the outputs of the different queries

**Normalization review**

Looking at 1NF, each cell only contains one single value, and each row is uniquely identified. Therefore we can assume the first normalization form is accomplished.

Looking at an example in the country_language table, you have a composite key which consists of country_code and language.
The rows is_official and percentage, both depende entirely on the composite key, which in turn satisfies the demands of the second normalization form.

To see if the database completes the third normalization form, we have to look at each table and see if there are some non-key attributes that depend on each other.

Looking at the country_language table, there are no other dependencies than on the composite key, therefore it has satisfied 3NF.
Looking at the city table, since the name doesn't depend on the district, rather the city_id, it will also have satisified the 3NF.

Looking at the country table, there are a lot of non-key attributes, where most of them only depends on the key.
Although i might have split the continent, region and name into a new table, where continent is the PK.
Even though i dont think they depend on each other, for this specific table, they do all have a correlation.

<img width="667" height="337" alt="Image" src="https://github.com/user-attachments/assets/d93c0a58-4777-47d6-b510-ae13c0c48a69" />

<img width="544" height="313" alt="Image" src="https://github.com/user-attachments/assets/fbbe91fe-ce0b-4985-847c-c31e811a42b2" />

<img width="996" height="344" alt="Image" src="https://github.com/user-attachments/assets/0b2db562-9ee0-4c4b-842d-5a254c8fe551" />

<img width="924" height="298" alt="Image" src="https://github.com/user-attachments/assets/02a0ea5d-966c-4df0-b637-716d6541ea70" />

<img width="218" height="293" alt="Image" src="https://github.com/user-attachments/assets/4c2b177c-30a6-44d8-9a50-1ced0e43b247" />

Looking at the results from the query plan, you can see that the bitmap index scan has reduced the cost drastically.
<img width="701" height="879" alt="Image" src="https://github.com/user-attachments/assets/367bbde1-7b36-4e45-b63b-267d020cff7e" />

As an example for a transaction, i've imagined that 5000 people moved from Trondheim to Stavanger.

This is the population before the transaction
<img width="663" height="269" alt="Image" src="https://github.com/user-attachments/assets/3b232afb-773c-465d-b8b7-f7d76ad9e267" />

This is the population between transactions, where Stavanger has been updated with 5000 new people
<img width="668" height="316" alt="Image" src="https://github.com/user-attachments/assets/c9641f67-f422-4ea3-b17b-060b150b3170" />

This is the final result of the transaction, where both Stavanger and Trondheim have been updated with new population.
<img width="694" height="331" alt="Image" src="https://github.com/user-attachments/assets/8682d71c-2857-4544-b93b-309fd917b9b2" />

Since im using postgreSQL through a docker container, i've used the docker commands to create a backup.
<img width="1030" height="83" alt="Image" src="https://github.com/user-attachments/assets/0e290fef-3f10-4093-8662-63970dbc8a3c" />

This created the backup file used to restore the database.
<img width="688" height="408" alt="Image" src="https://github.com/user-attachments/assets/b8a90587-ad96-4fdb-bf8e-a186ee5b7187" />
