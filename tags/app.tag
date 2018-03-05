<app>

	<div class="container">
		<div class="row">
			<div class="col-10 offset-1">
				<h1>Language Learning Partner Simulation</h1>
			</div>
		</div>

		<div class="row">
			<div class="introduction col-8 offset-2">
				<introduction></introduction>
			</div>
			<div>
				<sentence class = "question col-8 offset-2" each={ sentenceItem in sentenceGrammar }></sentence>
			</div>
		</div>

		<div class="row">
			<div class="col-8 offset-2">
				<explanation></explanation>
			</div>
		</div>
	</div>

	<script>
		var that = this;
		this.sentenceGrammar = [
			{
				id: "question1",
				question: "你闲时都喜欢干些什么呢？What do you like to do during your spare time?",
				choices: [
					"我啊，我的兴趣爱好很多哦, 在没有课的时候，我喜欢看书和户外运动。Me, I have a lot of hobbies. When I don’t have class, I like reading and outdoor sports.",
					"我喜欢交朋友，所以我有空就和朋友一起去吃饭或者去酒吧。I like to hang out with friends. So when I have time, I'll go out with my friends to resturants or bars"
				],
				answer: 1,
				replies: [
					"好巧啊！我也很喜欢运动。冬天里每个周末我都去滑雪.What a coincidence! I love sports too. I go ski every weekend during the winter",
					"那你喜欢什么类型的酒吧呢？我知道纽约有个很好的德国店。What type of bars do you like? I know a great German place in New York. "
				]
			}, {
				id: "question2",
				question: "好久没见你了，这几天忙什么呢? Long time no see. What have you been up to these past few days?",
				choices: [
					"那还用问, 当然是看冬奥会了，最近有争议比赛太多了。Of course I'm watching the Winter Olympics. There's so many controversial races recently.",
					"我正在实习，还有很多作业要写，教程要看。I'm doing an internship, and I also got a lot of homeworks to do, and tutorials to watch."
				],
				answer: 1,
				replies:  [
					"是啊，你看到男子五千米比赛加拿大队在领奖台的表现了嘛？Yeah, did you see Canadian’s performance at the podium during men’s short-track speedskating 5,000m?",
					"希望你能享受忙碌的时光！Hope you're enjoying the busy schedule!"
				]
			}
		];

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
		:scope {
			display: block;
			padding: 10px;
			font-family: monospace;
			font-size: 1.3em;
		}

		h1 {
			text-align: center;
			text-transform: uppercase;
			color:white;
			border: 2px solid blue;
			background-color: blue;
			border-radius: 5px;
			padding: 10px;
		}

		.introduction{
			margin-top: 20px;
			border: 2px solid lightblue;
			background-color: lightblue;
			border-radius: 5px;
			padding: 20px;
			font-size: 1em;
		}

		.question {
			margin-top: 20px;
			border: 0.5px solid #CCC;
			border-radius: 5px;
			padding: 20px;
		}

	</style>

</app>
