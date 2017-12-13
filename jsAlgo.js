function fizzBuzz(num) {
  for(var i = 1; i <= num; i++) {
   if (i % 15 === 0) console.log('FizzBuzz');
   else if ( i % 3 === 0) console.log('Fizz');
   else if ( i % 5 === 0) console.log('Buzz');
   else console.log(i);
  }
}

function harmlessRansomNote(noteText, magazineText) {
  //Hypotesis: no punctuation and all lowercase
  var noteArr = noteText.split(' ');
  var magazineArr = magazineText.split(' ');
  var magazineObj = {};
    
}
