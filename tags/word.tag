<word>
  <h3>{ wordItem.title }</h3>
  <div class="">
    <label each={ word, index in wordItem.words }>
		  <input type="checkbox" name={ wordItem.id } value={ index }>  { word } </input>
	  </label>
    <button class = "btn btn-primary" type="button" onclick={ showWordsExplaination }>Show Explaination</button>
  </div>

  <div class="" if={index == optionIndex} each={explanation index in wordItem.explainations}>
    {explanation}
  </div>


  <script>

    this.optionIndex = '' // this could be get after the button being clicked

    showWordsExplaination () {
      console.log("haha")
    }
  </script>

</word>
