<modal-default-button>
  <section-header title="Default button">A modal can set default button
    <span class="ui label teal small">since 0.7.5</span>
  </section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal modal="{ modal }" ref="modal">
        Default button modal
      </su-modal>
      <button class="ui button" onclick="{ showModal }">Show default button modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
          <su-modal modal="{ modal }" ref="modal">
            Default button modal
          </su-modal>
          <button class="ui button" onclick="{ showModal }">Show default button modal</button>
  
          <script>
            this.modal = {
              header: 'Default button',
              buttons: [{
                text: 'Ok',
                type: 'primary',
                default: true,
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
      header: 'Default button',
      buttons: [{
        text: 'Ok',
        type: 'primary',
        default: true,
        icon: 'checkmark'
      }, {
        text: 'Cancel'
      }]
    }

    this.showModal = () => {
      this.refs.modal.show()
    }
  </script>
</modal-default-button>