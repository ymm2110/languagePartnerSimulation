<sentence>

  <h3>{ sentenceItem.question }</h3>
  <div class="">
    <label each={ choice in sentenceItem.choices }>
		<input type="radio" name={ sentenceItem.id } value={ sentenceItem.answer } onclick={ setAnswer }>{ choice }</input>
	</label>
  <button class = "btn btn-primary" type="button" onclick={ showResponse }>Reply</button>
  <h4 id="response" style="display: none" >{ sentenceItem.replies }</h4>
  </div>

  <script>
  var that = this;

  		setAnswer(e) {
  			this.userAnswer = e.item.choice;
  			if (this.userAnswer == this.sentenceItem.answer) {
  				this.sentenceItem.isCorrect = true;
  			} else {
  				this.sentenceItem.isCorrect = false;
  			}
  		}

      showResponse() {
        // console.log()
           document.getElementById("response").style.display ="block";
       }
  </script>

  <style>
    :scope {
      display: block;
    }
  </style>

</sentence>
