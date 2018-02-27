<sentence>

  <p>{ sentenceIndex.question }</p>
  <div class="">
    <label each={ choice in sentenceIndex.choices }>
		<input type="radio" name={ sentenceIndex.id } value={ sentenceIndex.reply } onclick={ setAnswer }></input> { reply }
	</label>
  </div>

  <script>
  var that = this;
  		console.log('question.tag');
  		console.log(this);

  		setAnswer(e) {
  			this.userAnswer = e.item.choice;
  			console.log(this.userAnswer);
  			if (this.userAnswer == this.sentenceIndex.reply) {
  				this.quizItem.isCorrect = true;
  			} else {
  				this.quizItem.isCorrect = false;
  			}
  		}
  </script>

  <style>
    :scope {
      display: block;
    }
  </style>

</sentence>
