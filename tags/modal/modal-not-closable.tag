<modal-not-closable>
  <section-header title="Not closable">Clicking on the dimmer does not close modal</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal modal="{ modal }" ref="modal">
        And not closable button
      </su-modal>
      <button class="ui button" onclick="{ showModal }">Show modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-modal modal="{ modal }" ref="modal">
          And not closable button
        </su-modal>
        <button class="ui button" onclick="{ showModal }">Show modal</button>

        <script>
          this.modal = {
            header: 'Clicking on the dimmer does not close modal',
            closable: false,
            buttons: [{
              text: 'Not closable',
              type: 'red',
              closable: false,
            }, {
              text: 'Closable',
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
      header: 'Clicking on the dimmer does not close modal',
      closable: false,
      buttons: [{
        text: 'Not closable',
        type: 'red',
        closable: false,
      }, {
        text: 'Closable',
      }, {
        text: 'Disabled',
        disabled: true
      }]
    }

    this.showModal = () => {
      this.refs.modal.show()
    }
  </script>
</modal-not-closable>