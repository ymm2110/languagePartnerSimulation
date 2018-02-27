<app>

	<div class="container">
		<div class="row">
			<div class=".col-md-4 .offset-md-4">
				<sentence each={ item, index in sentenceGrammar }></sentence>
			</div>
    </div>
    <div class="row">
			<div class=".col-md-6 .offset-md-3">
				<explanation>
					<h3>Want to know about {grammaTopic}</h3>
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
        answer: "好巧啊！我也是.What a coincidence! Mine is the same."
      },
      {
				question: "好久没见你了，这几天忙什么呢? Long time no see. What have you been up to these past few days?",
				choices: [
					"那还用问, 当然是看冬奥会了，最近有争议比赛太多了。Of course I'm watching the Winter Olympics. There's so many controversial races recently.",
					"我正在实习，还有很多作业要写，教程要看。I'm doing an internship, and I also got a lot of homeworks to do, and tutorials to watch.",
				],
        answer: "希望你能享受你正在干的事！Hope you're enjoying what you's doing!"
      }
    ];

  this.grammaTopic = [
    {
      topic: [
				"闲时(spare time) is a adjec",
				"干什么，do something",
        "在...的时候，when",
				"有空的时候，when I have time",
				"巧／巧合，coincidence",
        "忙，busy doing something",
				"那还用问，of course",
				"争议的，controversial",
				"实习，internship",
				"有...要做, have something to do",
				"享受做某事，enjoy doing something"
      ]
    }
  ];

	</script>

	<style>
	</style>


</app>
