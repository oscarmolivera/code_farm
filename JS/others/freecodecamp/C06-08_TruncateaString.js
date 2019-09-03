function truncateString(str, num) {
  return num >= str.length ? str : `${str.substring(0, num)}...`;
}


console.log(truncateString("A-tisket a-tasket A green and yellow basket", 8));
//should return "A-tisket...".
console.log(truncateString("Peter Piper picked a peck of pickled peppers", 11));
//should return "Peter Piper...".
console.log(truncateString("A-tisket a-tasket A green and yellow basket", "A-tisket a-tasket A green and yellow basket".length));
//should return "A-tisket a-tasket A green and yellow basket".
console.log(truncateString("A-tisket a-tasket A green and yellow basket", "A-tisket a-tasket A green and yellow basket".length + 2));
//should return "A-tisket a-tasket A green and yellow basket".
console.log(truncateString("A-", 1));
//should return "A...".
console.log(truncateString("Absolutely Longer", 2));
//should return "Ab...".