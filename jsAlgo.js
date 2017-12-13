function fizzBuzz(num) {
  for(var i = 1; i <= num; i++) {
   if (i % 15 === 0) console.log('FizzBuzz');
   else if ( i % 3 === 0) console.log('Fizz');
   else if ( i % 5 === 0) console.log('Buzz');
   else console.log(i);
  }
}

function harmlessRansomNote(noteText, magazineText) {
  //Hypotesis: no punctuation and all strings lowercase
  var noteArr = noteText.split(' ');
  var magazineArr = magazineText.split(' ');
  var magazineObj = {};
 
  magazineArr.forEach(funtion(word){
	//create the magazine object and populate it by the occurrences of the words  
  	if(!magazineObj[word]) magazineObj[word] = 0;
	magazineObj[word]++;
  });	
}
