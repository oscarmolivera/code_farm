/* 

*/

// Setup
var collection = {
  "2548": {
    "album": "Slippery When Wet",
    "artist": "Bon Jovi",
    "tracks": [
      "Let It Rock",
      "You Give Love a Bad Name"
    ]
  },
  "2468": {
    "album": "1999",
    "artist": "Prince",
    "tracks": [
      "1999",
      "Little Red Corvette"
    ]
  },
  "1245": {
    "artist": "Robert Palmer",
    "tracks": []
  },
  "5439": {
    "album": "ABBA Gold"
  }
};
// Keep a copy of the collection for tests
var collectionCopy = JSON.parse(JSON.stringify(collection));

// Only change code below this line
function updateRecords(id, prop, value) {
  var newId = id.toString();
  if (value !== "") { 
    if (prop !== "tracks") {
      collection[newId][prop] = value;
    }else{
      if (collection[newId].hasOwnProperty(prop)) {
        collection[newId].tracks.push(value);
      } else {
        collection[newId].tracks = [];
        collection[newId].tracks.push(value);
      }
    }
  }else {
    delete collection[newId][prop]
  }
  return collection;
}

// Alter values below to test your code
//console.log(updateRecords(5439, "artist", "ABBA"));
console.log(updateRecords(2548, "tracks", ""));


/* ############################################# OTHERS SOLUTIONS 
2)
  if (prop !== "tracks") {
    if (value != "") {
      collection[newId][prop] = value;
    } else {
      delete collection[newId][prop]
    }
  } else {
    if (collection[newId].hasOwnProperty(prop)) {
      collection[newId].tracks.push(value);
      console.log("AQUI");
    } else {
      collection[newId].tracks = [];
      collection[newId].tracks.push(value);
    }
  }
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