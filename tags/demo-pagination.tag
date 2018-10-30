<demo-pagination>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Pagination
      <div class="sub header">A component to render a pagination.</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Pagination" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <section-header title="Basic">A basic pagination</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-pagination total-pages="8" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-pagination total-pages="10" />
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Pointing -->
    <!--                                               ======== -->
    <section-header title="Pointing">A pagination can point to show its relationship to nearby content</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-pagination total-pages="10" class="pointing secondary" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-pagination total-pages="10" class="pointing secondary" />
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                             Borderless -->
    <!--                                             ========== -->
    <section-header title="Borderless">A pagination can have no borders</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-pagination total-pages="10" class="borderless" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-pagination total-pages="10" class="borderless" />
        </code></pre>
      </div>
    </section>
    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                    Active page number -->
    <!--                                    =================== -->
    <section-header title="Active page number">A pagination can set active page number.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code link" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-pagination active-page="2" total-pages="10" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-pagination active-page="2" total-pages="10"/>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                          Event trigger -->
    <!--                                          ============= -->
    <section-header title="Event trigger">A pagination can have no borders</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-pagination ref="pagination" total-pages="10" />
        <div class="ui message">
          <ul>
            <li each="{ item in message }">{ item }</li>
          </ul>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-pagination ref="pagination" total-pages="10" />
          <div class="ui message">
            <ul>
              <li each="{ item in message }">{ item }</li>
            </ul>
          </div>

          <script>
            this.message = []

            this.on('mount', () => {
              this.refs.pagination.on('change', pageNumber => {
                this.message.push(`Changed. page number: ${pageNumber}`)
                this.update()
              })
            })
          </script>
        </code></pre>
      </div>
    </section>

  </div>

  <script>
    this.message = []

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()

      this.refs.pagination.on('change', pageNumber => {
        this.message.push(`Changed. page number: ${pageNumber}`)
        this.update()
      })
    })
  </script>
</demo-pagination>