<word>
  <h3>{ wordItem.title }</h3>
  <div class="">
    <label each={ word in wordItem.words }>
		  <input type="checkbox" name={ wordItem.id } value={ word } onclick={ chooseWords }>  { word } </input>
	  </label>
    <button class = "btn btn-primary" type="button" onclick={ showWordsExplaination }>Show Explaination</button>
  </div>

</word>
