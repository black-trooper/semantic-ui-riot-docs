<modal-fullscreen>
  <h3 class="ui header">Full Screen</h3>
  <p>A modal can use the entire size of the screen</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal class="fullscreen" ref="modal">
        Full screen modal
      </su-modal>
      <button class="ui button" onclick="{ showModal }">Show full screen modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
          <su-modal class="fullscreen" ref="modal">
            Full screen modal
          </su-modal>
          <button class="ui button" onclick="{ showModal }">Show full screen modal</button>
  
          <script>
            this.showModal = () => {
              this.refs.modal.show()
            }
          </script>
        </code></pre>
    </div>
  </section>

  <script>
    this.modal = {
      header: 'Select a Photo',
      buttons: [{
        text: 'Ok',
        type: 'primary',
        icon: 'checkmark'
      }, {
        text: 'Cancel'
      }]
    }

    this.showModal = () => {
      this.refs.modal.show()
    }
  </script>
</modal-fullscreen>