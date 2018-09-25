<modal-basic>
  <section-header title="Basic">A modal can reduce its complexity</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-modal modal="{ modal }" class="basic" ref="modal">
        Your inbox is getting full, would you like us to enable automatic archiving of old messages?
      </su-modal>
      <button class="ui button" onclick="{ showModal }">Show modal</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-modal modal="{ modal }" class="basic" ref="modal">
          Your inbox is getting full, would you like us to enable automatic archiving of old messages?
        </su-modal>
        <button class="ui button" onclick="{ showModal }">Show modal</button>

        <script>
          this.modal = {
            header: {
              text: 'Archive Old Messages',
              icon: 'archive'
            },
            buttons: [{
              text: 'No'
            }, {
              text: 'Yes',
              type: 'green',
              icon: 'checkmark'
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
      header: {
        text: 'Archive Old Messages',
        icon: 'archive'
      },
      buttons: [{
        text: 'No'
      }, {
        text: 'Yes',
        type: 'green',
        icon: 'checkmark'
      }]
    }

    this.showModal = () => {
      this.refs.modal.show()
    }
  </script>
</modal-basic>