<sentence>

  <h3>{ sentenceItem.question }</h3>
  <div class="options">
    <label each={ choice in sentenceItem.choices }>
		  <input type="radio" name={ sentenceItem.id } value={ choice } onclick={ setAnswer }>  { choice } </input>
	  </label>
    <br>
    <button class = "btn btn-primary" type="button" onclick={ showResponse }>Reply</button>
    <button class="btn btn-primary" type="button" onclick={ showGrammaVideo }>Grammar Video</button>
    <!-- <button class = "btn btn-primary" type="button" onclick={ showTranslation }>Show Translation</button> -->
    <p if = { this.sentenceItem.isFirst && this.sentenceItem.checked } class = "replies"> { replyFirst } </p>
    <p if = { !this.sentenceItem.isFirst && this.sentenceItem.checked } class = "replies">{ replySecond }</p>
    <p if = { this.needGrammarVideo } >
      <iframe width="560" height="315" src="https://www.youtube.com/embed/{urlGrammarVideo}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
    </p>
  </div>

  <script>
   // var that = this;
   this.sentenceItem.checked = false;
   this.sentenceItem.isFirst = false;
   this.needGrammarVideo = false;

   this.urlGrammarVideo = this.sentenceItem.url;
   this.replyFirst = this.sentenceItem.replies[0];
   this.replySecond = this.sentenceItem.replies[1];




  		setAnswer(event) {
        var RightAnswer = event.target.value;
        var answerNumber = this.sentenceItem.answer-1;
        var InputAnswer = this.sentenceItem.choices[answerNumber];
        this.sentenceItem.checked = false;

        console.log(InputAnswer);
  			if (RightAnswer == InputAnswer) {
  				this.sentenceItem.isFirst = true;
  			} else {
  				this.sentenceItem.isFirst = false;
  			}
  		}

      showResponse() {
       this.sentenceItem.checked = true;
       }

       showGrammaVideo(){
           this.needGrammarVideo = true;
       }
  </script>

  <style>
    :scope {
      display: block;
    }

    button {
      margin-top: 10px;
    }

    p {
      margin-top: 20px;
    }

    .options {
      margin-top: 10px;
    }

    .replies {
      color: green;
    }
  </style>

</sentence>
