<sentence>

  <h3>{ sentenceItem.question }</h3>
  <div class="">
    <label each={ choice in sentenceItem.choices }>
		  <input type="radio" name={ sentenceItem.id } value={ choice } onclick={ setAnswer }>{ choice }</input>
	  </label>
  <button class = "btn btn-primary" type="button" onclick={ showResponse }>Reply</button>
  <p if = { this.sentenceItem.isCorrect && this.sentenceItem.checked }> { reply } </p>
  <p if = { !this.sentenceItem.isCorrect && this.sentenceItem.checked }>Please Try Again!</p>
  </div>

  <script>
   // var that = this;
   this.sentenceItem.checked = false;
   this.sentenceItem.isCorrect = false;
   this.reply = this.sentenceItem.replies;

  		setAnswer(event) {
        var RightAnswer = event.target.value;
        var answerNumber = this.sentenceItem.answer-1;
        var InputAnswer = this.sentenceItem.choices[answerNumber];
        this.sentenceItem.checked = false;

        console.log(InputAnswer);
  			if (RightAnswer == InputAnswer) {
  				this.sentenceItem.isCorrect = true;
  			} else {
  				this.sentenceItem.isCorrect = false;
  			}
  		}

      showResponse() {
       this.sentenceItem.checked = true;
       }
  </script>

  <style>
    :scope {
      display: block;
    }
  </style>

</sentence>
