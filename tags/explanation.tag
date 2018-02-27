<Explanation>

  <div class="row">
    <div class="col-md-6 offset-md-3">
      <ul>
          <li each={ items.word in explanation}>
              <label class={ completed: done }>
                <input type="checkbox" checked={ done } onclick={ parent.toggle }> {items.word in explanation}
              </label>
          </li>
      </ul>
      <button type="button" onclick={showExplanation}>Submit</button>
      <div if {completed:done}>
        <ul>
          <li each={items in newExplanation}></li>
	      </ul>
			</div>
		</div>
	</div>

  <script>


</Explanation>
