<demo-alert>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Alert
      <span class="ui label teal small">since 0.7.9</span>
      <div class="sub header">A alert can be used instead of 'alert()' to provide feedback messages.</div>
    </h1>
  </div>

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
        <pre class="prettyprint"><code>
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
        <pre class="prettyprint"><code>
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
        <pre class="prettyprint"><code>
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
    <!--                                        Default Options -->
    <!--                                        =============== -->
    <section-header title="Default Options">You can set button style without setting every time.</section-header>

    <h4>index.js</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
        import riot from 'riot'
        import su_riot from 'semantic-ui-riot'
        import './sample.tag'

        su_riot({
          defaultOptions: {
            alert: {
              button: {
                default: true,
                text: 'OK',
                type: 'primary',
                icon: 'check',
              }
            }
          }
        })
        riot.mount('sample')
      </code></pre>
    </div>

    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="prettyprint"><code>
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
      <pre class="prettyprint">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
  &lt;link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.3.1/dist/semantic.min.css"&gt;
&lt;/head&gt;
&lt;body&gt;
  &lt;su-alert&gt;&lt;/su-alert&gt;
  &lt;sample&gt;&lt;/sample&gt;
  &lt;script type="riot/tag" src="sample.tag"&gt;&lt;/script&gt;
  &lt;script src="https://cdn.jsdelivr.net/npm/riot@3.9/riot+compiler.min.js"&gt;&lt;/script&gt; 
  &lt;script src="https://cdnjs.cloudflare.com/ajax/libs/date-fns/1.29.0/date_fns.min.js"&gt;&lt;/script&gt;
  &lt;script src="https://cdn.jsdelivr.net/npm/semantic-ui-riot/dist/semantic-ui-riot.min.js"&gt;&lt;/script&gt;
  &lt;script&gt;
    riot.mount('sample')
  &lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
      </pre>
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
  </script>
</demo-alert>