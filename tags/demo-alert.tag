<demo-alert>
  <div class="main container">
    <content-navigation title="Alert" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <section-header title="Basic">A basic alert</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showAlert.bind(this, 'Hello!') }">Show alert</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showAlert }">Show alert</button>

          <script>
            this.showAlert = () => {
              this.suAlert('Hello!')
            }
          </script>

          <!-- only once at the root component -->
          <su-alert></su-alert>
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
    <section-header title="Title">A alert can have a title</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showAlert.bind(this, { title: 'Title', message: 'message'}) }">Show alert</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showAlert }">Show alert</button>

          <script>
            this.showAlert = () => {
              this.suAlert({ title: 'Title', message: 'message' })
            }
          </script>

          <!-- only once at the root component -->
          <su-alert></su-alert>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Button -->
    <!--                                                 ====== -->
    <section-header title="Button">A alert can style button</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showAlert.bind(this, {
          message: 'Style changed button', 
          button: {
            default: true,
            text: 'OK',
            type: 'primary',
            icon: 'check',
          }}) }">Show alert</button>

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showAlert }">Show alert</button>

          <script>
            this.showAlert = () => {
              this.suAlert({
                message: 'message',
                button: {
                  default: true,
                  text: 'OK',
                  type: 'primary',
                  icon: 'check',
                }
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-alert></su-alert>
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
        <button class="ui button" onclick="{ showAlertWithoutCallback }">Show alert without callback</button>
        <button class="ui button" onclick="{ showAlertCallback }">Show alert and callback</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <button class="ui button" onclick="{ showAlertWithoutCallback }">Show alert without callback</button>
          <button class="ui button" onclick="{ showAlertCallback }">Show alert and callback</button>

          <script>
            this.showAlertWithoutCallback = () => {
              this.suAlert('Hello!')
            }

            this.showAlertCallback = () => {
              this.suAlert('Hello!').then(() => {
                alert('close button clicked')
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-alert></su-alert>
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
      <pre class="language-javascript"><code>
        import riot from 'riot'
        import su_riot from 'semantic-ui-riot'
        import './sample.tag'

        su_riot({
          alert: {
            button: {
              default: true,
              text: 'OK',
              type: 'primary',
              icon: 'check',
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
          <button class="ui button" onclick="{ showAlert }">Show alert</button>

          <script>
            this.showAlert = () => {
              this.suAlert()
            }
          </script>
        </sample>
      </code></pre>
    </div>

    <h4>index.html</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        <body>
          <su-alert></su-alert>
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
    this.showAlert = option => {
      this.suAlert(option)
    }

    this.showAlertWithoutCallback = () => {
      this.suAlert('Hello!')
    }

    this.showAlertCallback = () => {
      this.suAlert('Hello!').then(() => {
        alert('close button clicked')
      })
    }
  </script>
</demo-alert>