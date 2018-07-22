<demo-alert>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Alert
      <div class="sub header"></div>
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