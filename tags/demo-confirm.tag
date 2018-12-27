<demo-confirm>
  <div class="main container">
    <content-navigation title="Confirm" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <section-header title="Basic">A basic confirm</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showConfirm.bind(this, 'Hello!') }">Show confirm</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showConfirm }">Show confirm</button>

          <script>
            this.showConfirm = () => {
              this.suConfirm('Hello!')
            }
          </script>

          <!-- only once at the root component -->
          <su-confirm></su-confirm>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>
    <!-- =================================================================================== -->
    <!--                                                                             Content -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Content</h2>

    <!-- ====================================================== -->
    <!--                                                  Title -->
    <!--                                                  ===== -->
    <section-header title="Title">A confirm can have a title</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showConfirm.bind(this, { title: 'Title', message: 'message'}) }">Show confirm</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showConfirm }">Show confirm</button>

          <script>
            this.showConfirm = () => {
              this.suConfirm({ title: 'Title', message: 'message' })
            }
          </script>

          <!-- only once at the root component -->
          <su-confirm></su-confirm>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Button -->
    <!--                                                 ====== -->
    <section-header title="Button">A confirm can style button</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showConfirm.bind(this, {
          message: 'Style changed button', 
          buttons: {
            ok: {
              text: 'Delete',
              type: 'negative',
              icon: 'trash',
            },
            cancel: {
              default: true,
              text: 'Not delete',
              type: 'positive',
              icon: 'undo',
            }
          }}) }">Show confirm</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showConfirm }">Show confirm</button>

          <script>
            this.showConfirm = () => {
              this.suConfirm({
                message: 'Style changed button',
                buttons: {
                  ok: {
                    text: 'Delete',
                    type: 'negative',
                    icon: 'trash',
                  },
                  cancel: {
                    default: true,
                    text: 'Not delete',
                    type: 'positive',
                    icon: 'undo',
                  }
                }
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-confirm></su-confirm>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>
    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                               Callback -->
    <!--                                               ======== -->
    <section-header title="Callback"></section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showConfirmCallbackPositiveOnly }">Show confirm and callback(positive only)</button>
        <button class="ui button" onclick="{ showConfirmCallback }">Show confirm and callback</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showConfirmCallbackPositiveOnly }">Show confirm and callback(positive only)</button>
          <button class="ui button" onclick="{ showConfirmCallback }">Show confirm and callback</button>

          <script>
            this.showConfirmCallbackPositiveOnly = () => {
              this.suConfirm('Are you ok ?').then(() => {
                this.suAlert('positive button clicked')
              })
            }

            this.showConfirmCallback = () => {
              this.suConfirm('Are you ok ?').then(() => {
                this.suAlert('positive button clicked')
              }).catch(() => {
                this.suAlert('negative button clicked')
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-alert></su-alert>
          <su-confirm></su-confirm>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                        Default Options -->
    <!--                                        =============== -->
    <section-header title="Default Options">You can set button style without setting every time.</section-header>

    <h4>index.js</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        import riot from 'riot'
        import su_riot from 'semantic-ui-riot'
        import './sample.tag'

        su_riot({
          defaultOptions: {
            confirm: {
              buttons: {
                ok: {
                  text: 'Delete',
                  type: 'negative',
                  icon: 'trash',
                },
                cancel: {
                  default: true,
                  text: 'Not delete',
                  type: 'positive',
                  icon: 'undo',
                }
              }
            }
          }
        })
        riot.mount('sample')
      </code></pre>
    </div>

    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        <sample>
          <button class="ui button" onclick="{ showConfirm }">Show confirm</button>

          <script>
            this.showConfirm = () => {
              this.suConfirm()
            }
          </script>
        </sample>
      </code></pre>
    </div>

    <h4>index.html</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        <body>
          <su-confirm></su-confirm>
          <sample></sample>
        </body>
      </code></pre>
    </div>
  </div>

  <script>
    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })
    this.showConfirm = option => {
      this.suConfirm(option)
    }

    this.showConfirmCallbackPositiveOnly = () => {
      this.suConfirm('Are you ok ?').then(() => {
        this.suAlert('positive button clicked')
      })
    }

    this.showConfirmCallback = () => {
      this.suConfirm('Are you ok ?').then(() => {
        this.suAlert('positive button clicked')
      }).catch(() => {
        this.suAlert('negative button clicked')
      })
    }
  </script>
</demo-confirm>