<Grammar>
  <div each = {item, index in grammarData}>
		<div class="grammar">
      <h5>Do you want to learn about<
			<h5>{ item.grammar }</h5>
			<div class="form-check form-check-inline" each= { i in item }>
			  <input class="form-check-input" type="checkbox" name={"grammar" + } id={index + i} value={i} ref = {"question" + index}>
			  <label class="form-check-label" for={index + i}>{ i }</label>
			</div>
		</div>
	</div>

</sentence>
