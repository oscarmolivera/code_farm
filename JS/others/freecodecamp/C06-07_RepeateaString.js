function repeatStringNumTimes(str, num) {
  let nwStr = [];
  if(num > 0) {
    for (let i = 0; i<num; i++){
      nwStr.push(str);
    }
    return nwStr.join('');
  }else{
    return '';
  }
}

console.log(repeatStringNumTimes("14jju", 0));