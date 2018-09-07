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

    <!-- ====================================================== -->
    <!--                                                Colored -->
    <!--                                                ======= -->
    <section-header title="Colored">A toast can be formatted to be different colors.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button red" onclick="{ showToast.bind(this, { message: 'red', class: 'red'}) }">Red</button>
        <button class="ui button orange" onclick="{ showToast.bind(this, { message: 'orange', class: 'orange'}) }">Orange</button>
        <button class="ui button yellow" onclick="{ showToast.bind(this, { message: 'yellow', class: 'yellow'}) }">Yellow</button>
        <button class="ui button olive" onclick="{ showToast.bind(this, { message: 'olive', class: 'olive'}) }">Olive</button>
        <button class="ui button green" onclick="{ showToast.bind(this, { message: 'green', class: 'green'}) }">Green</button>
        <button class="ui button teal" onclick="{ showToast.bind(this, { message: 'teal', class: 'teal'}) }">Teal</button>
        <button class="ui button blue" onclick="{ showToast.bind(this, { message: 'blue', class: 'blue'}) }">Blue</button>
        <button class="ui button violet" onclick="{ showToast.bind(this, { message: 'violet', class: 'violet'}) }">Violet</button>
        <button class="ui button purple" onclick="{ showToast.bind(this, { message: 'purple', class: 'purple'}) }">Purple</button>
        <button class="ui button pink" onclick="{ showToast.bind(this, { message: 'pink', class: 'pink'}) }">Pink</button>
        <button class="ui button brown" onclick="{ showToast.bind(this, { message: 'brown', class: 'brown'}) }">Brown</button>
        <button class="ui button black" onclick="{ showToast.bind(this, { message: 'black', class: 'black'}) }">Black</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button red" onclick="{ showToast.bind(this, 'red') }">Red</button>
          <button class="ui button orange" onclick="{ showToast.bind(this, 'orange') }">Orange</button>
          <button class="ui button yellow" onclick="{ showToast.bind(this, 'yellow') }">Yellow</button>
          <button class="ui button olive" onclick="{ showToast.bind(this, 'olive') }">Olive</button>
          <button class="ui button green" onclick="{ showToast.bind(this, 'green') }">Green</button>
          <button class="ui button teal" onclick="{ showToast.bind(this, 'teal') }">Teal</button>
          <button class="ui button blue" onclick="{ showToast.bind(this, 'blue') }">Blue</button>
          <button class="ui button violet" onclick="{ showToast.bind(this, 'violet') }">Violet</button>
          <button class="ui button purple" onclick="{ showToast.bind(this, 'purple') }">Purple</button>
          <button class="ui button pink" onclick="{ showToast.bind(this, 'pink') }">Pink</button>
          <button class="ui button brown" onclick="{ showToast.bind(this, 'brown') }">Brown</button>
          <button class="ui button black" onclick="{ showToast.bind(this, 'black') }">Black</button>

          <script>
            this.showToast = color => {
              this.suToast({
                message: color,
                class: color
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
    <!--                                                Size -->
    <!--                                                ======= -->
    <section-header title="Size">A message can have different sizes</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a mini message.', class: 'mini'}) }">Mini</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a tiny message.', class: 'tiny'}) }">Tiny</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a small message.', class: 'small'}) }">Small</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a large message.', class: 'large'}) }">Large</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a big message.', class: 'big'}) }">Big</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a huge message.', class: 'huge'}) }">Huge</button>
        <button class="ui button" onclick="{ showToast.bind(this, { message: 'This is a massive message.', class: 'massive'}) }">Massive</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <button class="ui button" onclick="{ showToast.bind(this, 'red') }">Red</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'mini') }">Mini</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'tiny') }">Tiny</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'small') }">Small</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'large') }">Large</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'big') }">Big</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'huge') }">Huge</button>
          <button class="ui button" onclick="{ showToast.bind(this, 'massive') }">Massive</button>

          <script>
            this.showToast = size => {
              this.suToast({
                message: `This is a ${size} message.`,
                class: size
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
    <!--                                               Position -->
    <!--                                               ======== -->
    <section-header title="Position">A toast can change the position.</section-header>
    <section>
      <div class="ui segment inverted">
        <pre class="prettyprint"><code>
          <su-toast position="top left"></su-toast>
          <su-toast position="top right"></su-toast>
          <su-toast position="bottom left"></su-toast>
          <su-toast position="bottom right"></su-toast>
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