<demo-radio>
  <div class="main container">
    <content-navigation title="Radio" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <section-header title="Standard">A standard radio.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code link" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio-group>
          <su-radio value="1">Radio choice1</su-radio>
          <su-radio value="2">Radio choice2</su-radio>
        </su-radio-group>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-radio-group>
            <su-radio value="1">Radio choice1</su-radio>
            <su-radio value="2">Radio choice2</su-radio>
          </su-radio-group>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Slider -->
    <!--                                                 ====== -->
    <section-header title="Slider">A radio can be formatted to emphasize the current selection state</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui form">
          <su-radio-group class="grouped fields">
            <label>Outbound Throughput</label>
            <div class="field">
              <su-radio class="slider" value="20">20mbps max</su-radio>
            </div>
            <div class="field">
              <su-radio class="slider" value="10">10mbps max</su-radio>
            </div>
            <div class="field">
              <su-radio class="slider" value="5">5mbps max</su-radio>
            </div>
            <div class="field">
              <su-radio class="slider" value="Unmetered">Unmetered</su-radio>
            </div>
          </su-radio-group>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <div class="ui form">
            <su-radio-group class="grouped fields">
              <label>Outbound Throughput</label>
              <div class="field">
                <su-radio class="slider" value="20">20mbps max</su-radio>
              </div>
              <div class="field">
                <su-radio class="slider" value="10">10mbps max</su-radio>
              </div>
              <div class="field">
                <su-radio class="slider" value="5">5mbps max</su-radio>
              </div>
              <div class="field">
                <su-radio class="slider" value="Unmetered">Unmetered</su-radio>
              </div>
            </su-radio-group>
          </div>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                              Read-only -->
    <!--                                              ========= -->
    <section-header title="Read-only">A radio can be read-only and unable to change states</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio-group>
          <su-radio class="read-only">
            Read Only
          </su-radio>
        </su-radio-group>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
      <su-radio-group>
        <su-radio class="read-only">
          Read Only
        </su-radio>
      </su-radio-group>
    </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Checked -->
    <!--                                              ========= -->
    <section-header title="Checked">A radio can be checked</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio-group value="true">
          <su-radio value="true">Active</su-radio>
          <su-radio value="false">None Active</su-radio>
        </su-radio-group>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
        <su-radio-group value="true">
          <su-radio value="true">Active</su-radio>
          <su-radio value="false">None Active</su-radio>
        </su-radio-group>
    </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Disabled -->
    <!--                                              ========= -->
    <section-header title="Disabled">A radio can be read-only and unable to change states</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio class="disabled">
          Disabled
        </su-radio>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
      <su-radio class="disabled">
        Disabled
      </su-radio>
    </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                           Update label -->
    <!--                                           ============ -->
    <section-header title="Update label"></section-header>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio label="{ radio_label }" />
        <div style="margin-top:1em">
          <button type="button" onclick="{ changeLabel }" class="ui button">Change label</button>
        </div>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
      <su-radio label="{ radio_label }" />
      <button type="button" onclick="{ changeLabel }" class="ui button">Change label</button>
        
      <script>
        this.radio_label = 'change'
        this.changeLabel = () => {
          this.radio_label = (this.radio_label === 'change') ? 'changed' : 'change'
        }
      </script>
    </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                        Access elements -->
    <!--                                        =============== -->
    <section-header title="Access elements"></section-header>

    <p>Access to radio with ref attribute</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio-group ref="radio1" value="{ radio1 }">
          <su-radio value="1">Radio choice1</su-radio>
          <su-radio value="2">Radio choice2</su-radio>
        </su-radio-group>

        <div class="ui message">
          <div class="header">
            Checked from refs
          </div>
          <p>Radio choice{ refs.radio1.value}</p>
        </div>

        <button type="button" onclick="{ setValue.bind(this, 1) }" class="ui button">Choice1</button>
        <button type="button" onclick="{ setValue.bind(this, 2) }" class="ui button">Choice2</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-radio-group ref="radio1" value="{ radio1 }">
            <su-radio value="1">Radio choice1</su-radio>
            <su-radio value="2">Radio choice2</su-radio>
          </su-radio-group>
      
          <div class="ui message">
            <div class="header">
              Checked from refs
            </div>
            <p>Radio choice{ refs.radio1.value}</p>
          </div>
      
          <button type="button" onclick="{ setValue.bind(this, 1) }" class="ui button">Choice1</button>
          <button type="button" onclick="{ setValue.bind(this, 2) }" class="ui button">Choice2</button>

          <script>
            this.on('mount', () => {
              this.refs.radio1.on('change', value => {
                this.update({ radio1: value })
              })
            })
            this.radio1 = 1
            this.setValue = value => {
              this.radio1 = value
            }
          </script>
        </code></pre>
      </div>
    </section>
  </div>

  <script>
    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })

    this.radio1 = 1
    this.setValue = value => {
      this.radio1 = value
    }

    this.radio_label = 'change'
    this.changeLabel = () => {
      this.radio_label = (this.radio_label === 'change') ? 'changed' : 'change'
    }

    this.on('mount', () => {
      this.refs.radio1.on('change', value => {
        this.update({ radio1: value })
      })
    })
  </script>
</demo-radio>