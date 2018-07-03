<demo-radio>

  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Radio
      <div class="sub header">A checkbox allows a user to select a value from a small set of options, often binary</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Radio" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <h3 class="ui header">Standard</h3>
    <p>A standard radio.</p>
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
        <pre class="prettyprint"><code>
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
    <h3 class="ui header">Slider</h3>
    <p>A radio can be formatted to emphasize the current selection state</p>
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
        <pre class="prettyprint"><code>
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
    <h3 class="ui header">Read-only</h3>
    <p>A radio can be read-only and unable to change states</p>
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
        <pre class="prettyprint"><code>
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
    <h3 class="ui header">Checked</h3>
    <p>A radio can be checked</p>
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
        <pre class="prettyprint"><code>
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
    <h3 class="ui header">Disabled</h3>
    <p>A radio can be read-only and unable to change states</p>
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
        <pre class="prettyprint"><code>
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
    <h3 class="ui header">Update label</h3>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-radio label="{ radio_label }" />
        <div style="margin-top:1em">
          <button type="button" click="{ changeLabel }" class="ui button">Change label</button>
        </div>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
      <su-radio label="{ radio_label }" />
      <button type="button" click="{ changeLabel }" class="ui button">Change label</button>
        
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
    <h3 class="ui header">Access elements</h3>

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

        <button type="button" click="{ setValue.bind(this, 1) }" class="ui button">Choice1</button>
        <button type="button" click="{ setValue.bind(this, 2) }" class="ui button">Choice2</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
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
  
      <button type="button" click="{ setValue.bind(this, 1) }" class="ui button">Choice1</button>
      <button type="button" click="{ setValue.bind(this, 2) }" class="ui button">Choice2</button>

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