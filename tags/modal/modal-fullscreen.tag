<modal-fullscreen>
  <section-header title="Full Screen">A modal can use the entire size of the screen</section-header>
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
      <pre class="language-markup"><code>
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