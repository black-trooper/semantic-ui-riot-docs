<modal-standard>
  <h3 class="ui header">Modal</h3>
  <p>A standard modal</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal modal="{ modal }" class="large" ref="modal">
        <div class="ui medium image">
          <img src="./images/avatar2/large/rachel.png" />
        </div>
        <div class="description">
          <div class="ui header">Default Profile Image</div>
          <p>We've found the following <a href="https://www.gravatar.com" target="_blank">gravatar</a> image associated with
            your e-mail address.</p>
          <p>Is it okay to use this photo?</p>
        </div>
      </su-modal>
      <button class="ui button" onclick="{ showModal }">Show modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-modal modal="{ modal }" class="large" ref="modal">
          <div class="ui medium image">
            <img src="./images/avatar2/large/rachel.png" />
          </div>
          <div class="description">
            <div class="ui header">Default Profile Image</div>
            <p>We've found the following <a href="https://www.gravatar.com" target="_blank">gravatar</a> image associated with your
              e-mail address.</p>
            <p>Is it okay to use this photo?</p>
          </div>
        </su-modal>
        <button class="ui button" onclick="{ showModal }">Show modal</button>

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
</modal-standard>