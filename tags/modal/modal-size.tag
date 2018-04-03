<modal-size>
  <h3 class="ui header">Size</h3>
  <p>A modal can vary in size</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal class="mini" ref="modal_mini">
        Mini size modal
      </su-modal>
      <su-modal class="tiny" ref="modal_tiny">
        Tiny size modal
      </su-modal>
      <su-modal class="small" ref="modal_small">
        Small size modal
      </su-modal>
      <su-modal class="large" ref="modal_large">
        Large size modal
      </su-modal>
      <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_mini) }">Show mini size modal</button>
      <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_tiny) }">Show tiny size modal</button>
      <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_small) }">Show small size modal</button>
      <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_large) }">Show large size modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-modal class="mini" ref="modal_mini">
          Mini size modal
        </su-modal>
        <su-modal class="tiny" ref="modal_tiny">
          Tiny size modal
        </su-modal>
        <su-modal class="small" ref="modal_small">
          Small size modal
        </su-modal>
        <su-modal class="large" ref="modal_large">
          Large size modal
        </su-modal>
        
        <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_mini) }">Show mini size modal</button>
        <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_tiny) }">Show tiny size modal</button>
        <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_small) }">Show small size modal</button>
        <button class="ui button" onclick="{ showModal.bind(this, this.refs.modal_large) }">Show large size modal</button>

        <script>
          this.showModal = target => {
            target.show()
          }
        </script>
      </code></pre>
    </div>
  </section>

  <script>
    this.showModal = target => {
      target.show()
    }
  </script>
</modal-size>