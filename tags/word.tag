<word>
  <h3>{ wordItem.title }</h3>
  <div class="">
    <label each={ word, index in wordItem.words }>
        <input type="checkbox" name={ wordItem.id } value={ index } onchange={setWord}>  { word } </input>
    </label>
    <button class = "btn btn-primary" type="button" onclick={ showWordsExplaination }>Show Explaination</button>
  </div>

  <div class="" if={shouldShowExplanation && selectedOptions[index]} each={explanation, index in wordItem.explainations}>
    {explanation}
  </div>


  <script>

    this.selectedOptions = {}
    this.shouldShowExplanation = false;

    setWord (evt) {
      evt.preventDefault();
      this.selectedOptions[evt.target.value] = evt.target.checked;
    }

    showWordsExplaination () {
      this.shouldShowExplanation = !this.shouldShowExplanation;
    }

  </script>

</word>
