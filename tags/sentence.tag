<sentence>

  <div each = {item, index in sentenceData}>
		<div class="sentence">
			<h5>{ item.sentence }</h5>
			<div class="form-check form-check-inline" each= { i in item.options }>
			  <input class="form-check-input" type="radio" name={"question" + index} id={index + i} value={i} ref = {"question" + index}>
			  <label class="form-check-label" for={index + i}>{ i }</label>
			</div>
		</div>
	</div>

</sentence>
