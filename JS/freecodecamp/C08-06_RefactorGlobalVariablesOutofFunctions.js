/* 
Rewrite the code so the global array bookList is not changed inside either function. 
The add function should add the given bookName to the end of an array. The remove 
function should remove the given bookName from an array. Both functions should 
return an array, and any new parameters should be added before the bookName parameter.
*/

// the global variable
var bookList = [
  "The Hound of the Baskervilles", 
  "On The Electrodynamics of Moving Bodies", 
  "Philosophiæ Naturalis Principia Mathematica", 
  "Disquisitiones Arithmeticae"
];

/* This function should add a book to the list and return the list */
// New parameters should come before bookName

// Add your code below this line
function add (arry, bookName) {

  var newList = arry.map(x => {return x});
  newList.push(bookName);
  return newList;
  
  // Add your code above this line
}

/* This function should remove a book from the list and return the list */
// New parameters should come before the bookName one

// Add your code below this line
function remove (arry, bookName) {
  var book_index = bookList.indexOf(bookName);
  if (book_index >= 0) {
    var newArry = [];
    for(let i = 0; i<arry.length; i++){
      if (i != book_index){
        newArry.push(arry[i]);
      }
    }
    return newArry;
    // Add your code above this line
    }
}
console.log(bookList);
// should not change and still equal ["The Hound of the Baskervilles", "On The Electrodynamics of Moving Bodies", "Philosophiæ Naturalis Principia Mathematica", "Disquisitiones Arithmeticae"].

var newBookList = add(bookList, 'A Brief History of Time');
console.log(newBookList);
// should equal ["The Hound of the Baskervilles", "On The Electrodynamics of Moving Bodies", "Philosophiæ Naturalis Principia Mathematica", "Disquisitiones Arithmeticae", "A Brief History of Time"].

var newerBookList = remove(bookList, 'On The Electrodynamics of Moving Bodies');
console.log(newerBookList);
// should equal ["The Hound of the Baskervilles", "Philosophiæ Naturalis Principia Mathematica", "Disquisitiones Arithmeticae"].

var newestBookList = remove(add(bookList, 'A Brief History of Time'), 'On The Electrodynamics of Moving Bodies');
console.log(newestBookList);
// should equal ["The Hound of the Baskervilles", "Philosophiæ Naturalis Principia Mathematica", "Disquisitiones Arithmeticae", "A Brief History of Time"].


/* ############################################# OTHERS SOLUTIONS 
2)

----------------------------------------------------------------------
3)

----------------------------------------------------------------------
4)

----------------------------------------------------------------------
5)

----------------------------------------------------------------------
6)

----------------------------------------------------------------------
7)

----------------------------------------------------------------------
8)

----------------------------------------------------------------------
9)

----------------------------------------------------------------------
10)

*/

/* THRASH CAN ****************************************************

*/