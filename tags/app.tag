<app>


	<div class="container">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<h1>Language Learning Partner Simulation</h1>
			</div>
		</div>

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<sentence each={ sentenceIndex in sentenceGrammar }></sentence>
				<button class = "btn btn-primary" type="button" onclick={ showResponse }>Reply</button>
				<h4 id="response" style="display: none">{ sentenceIndex.reply }</h4>
			</div>
    </div>

    <div class="row">
			<div class="col-md-6 offset-md-3">
				<explanation>
					<h3>Want to know about {grammaTopic}?</h3>
					<p each = {i in explanations} class="explanations">
						{ i }
					</p>
				</explanation>
			</div>
		</div>
	</div>



	<script>
  var that = this;
  this.sentenceGrammar = [
			{
				question: "你闲时都喜欢干些什么呢？what do you like to do during your spare time?",
				choices: [
					"我啊，我的兴趣爱好很多哦, 在没有课的时候，我喜欢看书和户外运动。Me, I have a lot of hobbies. When I don’t have class, I like reading and outdoor sports.",
					"我喜欢交朋友，所以我有空就和朋友一起去吃饭或者去酒吧。I like to hang out with friends. So when I have time, I'll go out with my friends to resturants or bars",
				],
        reply: "好巧啊！我也是.What a coincidence! Mine is the same."
      },
      {
				question: "好久没见你了，这几天忙什么呢? Long time no see. What have you been up to these past few days?",
				choices: [
					"那还用问, 当然是看冬奥会了，最近有争议比赛太多了。Of course I'm watching the Winter Olympics. There's so many controversial races recently.",
					"我正在实习，还有很多作业要写，教程要看。I'm doing an internship, and I also got a lot of homeworks to do, and tutorials to watch.",
				],
        reply: "希望你能享受你正在干的事！Hope you're enjoying what you's doing!"
      }
    ];

	 showResponse() {
		    document.getElementById("response").style.display ="block";
		}

  this.grammaTopic = [
    {
      topic: [
				"闲时(spare time) is a adverb that people use commonly in daily formal conversation. It is short for 闲的时候, which can be used in formal settings.",
				"干什么(do something) is a verbal collocation that frequently used in both formal and informal conversations. It covers basically all the verbs and has neither negative or positive tone.",
        "在...的时候(when) is a adverb that people use to refer time. For example, 在闲的时候(in spare time).",
				"有空的时候(when I have time) is a adverb collocation that consists of when and have (spare) time. It is an informal way to refer to spare time.",
				"巧／巧合(coincidence) is a word which means people do same thing as others or do things at the same time with others.",
        "忙(busy doing something) is a verbal collocation that refer to a state of doing something. It does not necessarily follow time adverbs and it naturally means things people are busy doing have already been doing for a while.",
				"那还用问(of course) is a adverb that can be seen in informal settings, especially, daily chit-chat.",
				"争议的(controversial) is a new word and always used in formal context.",
				"实习(internship) is a nouns that refer to a kind of work which has broader range of sense than internship in English.",
				"有...要做(have something to do) is a verbal collocation that always mentions things that need to be done in the future and have not done yet.",
				"享受做某事(enjoy doing something) is a verbal collocation that have exactly same meaning as enjoy doing something in English and English culture setting."
      ]
    }
  ];

	</script>

	<style>
	</style>


</app>
