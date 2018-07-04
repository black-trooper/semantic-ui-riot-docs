<modal-callback>
  <section-header title="Callback"></section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal modal="{ modal }" ref="modal">
      </su-modal>
      <div class="ui message" if="{ callbackMessage.length > 0 }">
        <ul>
          <li each="{ item in callbackMessage }">{ item }</li>
        </ul>
      </div>
      <button class="ui button" onclick="{ showModal }">Show modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-modal modal="{ modal }" ref="modal">
        </su-modal>
        <div class="ui message" if="{ callbackMessage.length > 0 }">
          <ul>
            <li each="{ item in callbackMessage }">{ item }</li>
          </ul>
        </div>
        <button class="ui button" onclick="{ showModal }">Show modal</button>

        <script>
          this.modal = {
            header: 'Button actions',
            buttons: [{
              text: 'Text access'
            }, {
              text: 'Action access',
              action: 'clickAction'
            }, {
              text: 'Confirm close',
              closable: false,
            }]
          }

          this.callbackMessage = []

          this.showModal = () => {
            this.refs.modal.show()
          }

          this.on('mount', () => {
            // trigger by buttons[n].text
            this.refs.modal.on('Text access', () => {
              this.callbackMessage.push('Text access button is clicked.')
              this.update()
            })

            // trigger by buttons[n].action
            this.refs.modal.on('clickAction', () => {
              this.callbackMessage.push('Action access button is clicked.')
              this.update()
            })
            this.refs.modal.on('Confirm close', () => {
              if (confirm('Are you ok ?')) {
                this.refs.modal.hide()
                this.callbackMessage.push('Confirm close button is clicked and confirm ok.')
                this.update()
              }
            })

            this.refs.modal.on('show', () => {
              this.callbackMessage.push('Modal show')
              this.update()
            })
            this.refs.modal.on('hide', () => {
              this.callbackMessage.push('Modal hide')
              this.update()
            })
          })
        </script>
      </code></pre>
    </div>
  </section>

  <script>
    this.modal = {
      header: 'Button actions',
      buttons: [{
        text: 'Text access'
      }, {
        text: 'Action access',
        action: 'clickAction'
      }, {
        text: 'Confirm close',
        closable: false,
      }]
    }

    this.callbackMessage = []

    this.showModal = () => {
      this.refs.modal.show()
    }

    this.on('mount', () => {
      // trigger by buttons[n].text
      this.refs.modal.on('Text access', () => {
        this.callbackMessage.push('Text access button is clicked.')
        this.update()
      })

      // trigger by buttons[n].action
      this.refs.modal.on('clickAction', () => {
        this.callbackMessage.push('Action access button is clicked.')
        this.update()
      })
      this.refs.modal.on('Confirm close', () => {
        if (confirm('Are you ok ?')) {
          this.refs.modal.hide()
          this.callbackMessage.push('Confirm close button is clicked and confirm ok.')
          this.update()
        }
      })

      this.refs.modal.on('show', () => {
        this.callbackMessage.push('Modal show')
        this.update()
      })
      this.refs.modal.on('hide', () => {
        this.callbackMessage.push('Modal hide')
        this.update()
      })
    })
  </script>
</modal-callback>