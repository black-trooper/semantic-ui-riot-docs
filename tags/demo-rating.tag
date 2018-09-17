<demo-rating>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Rating<span class="ui label teal small">since 0.8.0</span>
      <div class="sub header">A rating indicates user interest in content</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Rating" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                 Rating -->
    <!--                                                 ====== -->
    <section-header title="Rating">A basic rating</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating />
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                   Star -->
    <!--                                                   ==== -->
    <section-header title="Star">A rating can use a set of star icons</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="star" value="3" max="4" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating class="star" value="3" max="4" />
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Heart -->
    <!--                                                  ===== -->
    <section-header title="Heart">A rating can use a set of heart icons</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="heart" value="1" max="3" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating class="heart" value="1" max="3" />
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                              Read-only -->
    <!--                                              ========= -->
    <section-header title="Read-only">A rating can be read-only and unable to change states</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="star read-only" value="1" max="3" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating class="star read-only" value="1" max="3" />
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                                   Size -->
    <!--                                                   ==== -->
    <section-header title="Size">A rating can vary in size</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="mini star" value="3" max="4" /><br /><br />
        <su-rating class="tiny star" value="3" max="4" /><br /><br />
        <su-rating class="small star" value="3" max="4" /><br /><br />
        <su-rating class="star" value="3" max="4" /><br /><br />
        <su-rating class="large star" value="3" max="4" /><br /><br />
        <su-rating class="huge star" value="3" max="4" /><br /><br />
        <su-rating class="massive star" value="3" max="4" /><br /><br />

      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating class="mini star" value="3" max="4" />
          <su-rating class="tiny star" value="3" max="4" />
          <su-rating class="small star" value="3" max="4" />
          <su-rating class="star" value="3" max="4" />
          <su-rating class="large star" value="3" max="4" />
          <su-rating class="huge star" value="3" max="4" />
          <su-rating class="massive star" value="3" max="4" />
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                             Example -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Example</h2>

    <!-- ====================================================== -->
    <!--                                        Access elements -->
    <!--                                        =============== -->
    <section-header title="Access elements">Access to rating with ref attribute</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="star" value="3" max="4" ref="rating" />
        <div class="ui message">
          <div class="header">Rating</div>
          <p>value: { refs.rating.value }</p>
          <p>changed: { refs.rating.changed() }</p>
        </div>
        <button type="button" onclick="{ setRefValue.bind(this, 1) }" class="ui button">Set 1</button>
        <button type="button" onclick="{ setRefValue.bind(this, 4) }" class="ui button">Set 4</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-rating class="star" value="3" max="4" ref="rating" />
          <div class="ui message">
            <div class="header">Rating</div>
            <p>value: { refs.rating.value }</p>
            <p>changed: { refs.rating.changed() }</p>
          </div>
          <button type="button" onclick="{ setRefValue.bind(this, 1) }" class="ui button">Set 1</button>
          <button type="button" onclick="{ setRefValue.bind(this, 4) }" class="ui button">Set 4</button>

          <script>
            this.setRefValue = value => {
              this.refs.rating.value = value
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                          Event trigger -->
    <!--                                          ============= -->
    <section-header title="Event trigger"></section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-rating class="star" value="3" max="4" ref="rating2" />
        <div class="ui message">
          <div class="header">Rating</div>
          <p>{ refs.rating2.value }</p>
        </div>
        <div class="ui message">
          <ul>
            <li each="{ item in eventMessage }">{ item }</li>
          </ul>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
        <su-rating class="star" value="3" max="4" ref="rating2" />
        <div class="ui message">
          <div class="header">Rating</div>
          <p>{ refs.rating2.value }</p>
        </div>
        <div class="ui message">
          <ul>
            <li each="{ item in eventMessage }">{ item }</li>
          </ul>
        </div>
        
        <script>
          this.eventMessage = []
          this.on('mount', () => {
            this.refs.rating2.on('click', value => {
              this.eventMessage.push(`Clicked. value: ${value}`)
              this.update()
            })
            this.refs.rating2.on('change', target => {
              this.eventMessage.push(`Changed. value: ${target.value}, before value: ${target.beforeValue}`)
              this.update()
            })
          })
        </script>
      </code></pre>
      </div>
    </section>
  </div>

  <script>
    this.eventMessage = []
    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()

      this.refs.rating2.on('click', value => {
        this.eventMessage.push(`Clicked. value: ${value}`)
        this.update()
      })
      this.refs.rating2.on('change', target => {
        this.eventMessage.push(`Changed. value: ${target.value}, before value: ${target.beforeValue}`)
        this.update()
      })
    })
    this.setRefValue = value => {
      this.refs.rating.value = value
    }
  </script>
</demo-rating>