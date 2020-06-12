# CSV Parser for Nested Pages

This project takes a CSV file with a nested web page structure.

* Each row in the csv is represented by a row in the database model
* The home page will display an interactive tree view of the page structure
* Any new upload overwrites the old
* Aside from the tree structure, there is no visual styling 😥

## Challenges

* This project does not take into account nested structures longer than 2 levels, if this were to be handled, the current implementation would be inefficient. 
* If more than one 'root' is in the csv, the app will use the first one it finds and ignores the rest.
* I'm on a windows machine, I haven't been able to get capybara testing successfully.
* The order of the nested structures matter! If `/products/product-a` comes before `/products` then I'm in trouble.
* There is no validation for file type
* There's no telling what would happen if a csv with one column or > 2 columns would be uploaded
* Same for a csv with no rows

## Planning

I was supposed to take 2-3 hours on this. I did some planning, if I include the planning then it would be closer to 5 hours. The implementation itself took about 3 hours. I admit I did not write any tests because that would've caused me to take even longer and I'm weakest at writing tests. If I were to write tests, I would attempt to address the issues in the Challenges section.