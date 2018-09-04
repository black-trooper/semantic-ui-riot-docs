<demo-toast>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Toast
      <span class="ui label teal small">since 0.11.0</span>
      <div class="sub header">A toast provide feedback messages</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Toast" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <section-header title="Basic">A basic toast</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, 'Hello!') }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show alert</button>

          <script>
            this.showToast = () => {
              this.suToast('Hello!')
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Title -->
    <!--                                                  ===== -->
    <section-header title="Title">A toast can have a title</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Title', message: 'message'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show toast</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Title',
                message: 'message'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                   Icon -->
    <!--                                                   ==== -->
    <section-header title="Icon">A toast can contain an content</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Have you heard about our mailing list?', message: 'Get the best news in your e-mail every day.', icon: 'inbox'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show toast</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Have you heard about our mailing list?',
                message: 'Get the best news in your e-mail every day.',
                icon: 'inbox'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                                Warning -->
    <!--                                                ======= -->
    <section-header title="Warning">A toast may be formatted to display warning messages.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Have you heard about our mailing list?', message: 'Get the best news in your e-mail every day.', class: 'warning'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show alert</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Have you heard about our mailing list?',
                message: 'Get the best news in your e-mail every day.',
                class: 'warning'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Info -->
    <!--                                                  ===== -->
    <section-header title="Info">A toast may be formatted to display information.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Have you heard about our mailing list?', message: 'Get the best news in your e-mail every day.', class: 'info'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show alert</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Have you heard about our mailing list?',
                message: 'Get the best news in your e-mail every day.',
                class: 'info'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                     Positive / Success -->
    <!--                                     ================== -->
    <section-header title="Positive / Success">A toast may be formatted to display a positive message.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Have you heard about our mailing list?', message: 'Get the best news in your e-mail every day.', class: 'positive'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show alert</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Have you heard about our mailing list?',
                message: 'Get the best news in your e-mail every day.',
                class: 'positive' // or 'success'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                       Negative / Error -->
    <!--                                       ================ -->
    <section-header title="Negative / Error">A toast may be formatted to display a negative message.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { title: 'Have you heard about our mailing list?', message: 'Get the best news in your e-mail every day.', class: 'negative'}) }">Show toast</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast }">Show alert</button>

          <script>
            this.showToast = () => {
              this.suToast({
                title: 'Have you heard about our mailing list?',
                message: 'Get the best news in your e-mail every day.',
                class: 'negative' // or 'error'
              })
            }
          </script>

          <!-- only once at the root component -->
          <su-toast></su-toast>
          <!-- only once at the root component -->
        </code></pre>
      </div>
    </section>

    <script>
      this.on('mount', () => {
        this.navigation = this.extractNavigation(this.root)
        this.update()
      })
      this.showToast = option => {
        this.suToast(option)
      }
    </script>
</demo-toast>