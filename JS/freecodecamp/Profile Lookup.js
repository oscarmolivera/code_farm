//Setup
var contacts = [
  {
    "firstName": "Akira",
    "lastName": "Laine",
    "number": "0543236543",
    "likes": ["Pizza", "Coding", "Brownie Points"]
  },
  {
    "firstName": "Harry",
    "lastName": "Potter",
    "number": "0994372684",
    "likes": ["Hogwarts", "Magic", "Hagrid"]
  },
  {
    "firstName": "Sherlock",
    "lastName": "Holmes",
    "number": "0487345643",
    "likes": ["Intriguing Cases", "Violin"]
  },
  {
    "firstName": "Kristian",
    "lastName": "Vos",
    "number": "unknown",
    "likes": ["JavaScript", "Gaming", "Foxes"]
  }
];


function lookUpProfile(name, prop) {
  //
  var ans, nom, ppty;
  for(var i = 0; i<contacts.length; i++){
    if(contacts[i].firstName== name){
      nom = contacts[i].firstName
      if(contacts[i].hasOwnProperty(prop)){
        ppty = contacts[i][prop]; 
        ans = contacts[i][prop];
        break;
      }
    }
  }
  switch(ans){
    case undefined:
      if(nom==undefined){
        return "No such contact";
      }else{
        return "No such property";
      }
    default:
      return ans;
  }
  //
}

// Change these values to test your function
console.log(lookUpProfile("Akira", "likes")); 
console.log(lookUpProfile("Kristian", "lastName"));//"Vos"
console.log(lookUpProfile("Sherlock", "likes"));// should return ["Intriguing Cases", "Violin"]
console.log(lookUpProfile("Harry", "likes"));// should return an array
console.log(lookUpProfile("Bob", "number"));// should return "No such contact"
console.log(lookUpProfile("Bob", "potato"));// should return "No such contact"
console.log(lookUpProfile("Akira", "address"));// should return "No such property"