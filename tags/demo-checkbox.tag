<demo-checkbox>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Checkbox
      <div class="sub header">A checkbox allows a user to select a value from a small set of options, often binary</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Checkbox" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <a class="anchor" name="standard"></a>
    <h3 class="ui header">Standard</h3>
    <p>A standard checkbox</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox>
          Make my profile visible
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox>
            Make my profile visible
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Slider -->
    <!--                                                 ====== -->
    <a class="anchor" name="slider"></a>
    <h3 class="ui header">Slider</h3>
    <p>A checkbox can be formatted to emphasize the current selection state</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox class="slider">
          Accept terms and conditions
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox class="slider">
            Accept terms and conditions
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Toggle -->
    <!--                                                 ====== -->
    <a class="anchor" name="toggle"></a>
    <h3 class="ui header">Toggle</h3>
    <p>A checkbox can be formatted to show an on or off choice</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox class="toggle">
          Subscribe to weekly newsletter
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox class="toggle">
            Subscribe to weekly newsletter
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States<a class="anchor" id="states"></a></h2>

    <!-- ====================================================== -->
    <!--                                              Read-only -->
    <!--                                              ========= -->
    <a class="anchor" name="read-only"></a>
    <h3 class="ui header">Read-only</h3>
    <p>A checkbox can be read-only and unable to change states</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox class="read-only">
          Read Only
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox class="read-only" checked="true">
            Read Only
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Checked -->
    <!--                                              ========= -->
    <a class="anchor" name="checked"></a>
    <h3 class="ui header">Checked</h3>
    <p>A checkbox can be checked</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox checked="true">
          Active
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox checked="true">
            Active
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Disabled -->
    <!--                                               ======== -->
    <a class="anchor" name="disabled"></a>
    <h3 class="ui header">Disabled</h3>
    <p>A checkbox can be read-only and unable to change states</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox class="disabled">
          Disabled
        </su-checkbox>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox class="disabled">
            Disabled
          </su-checkbox>
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
    <a class="anchor" name="update-label"></a>
    <h3 class="ui header">Update label</h3>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox label="{ checkbox_label }" />
        <div style="margin-top:1em">
          <button type="button" click="{ changeCheckboxLabel }" class="ui button">Change label</button>
        </div>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox label="{ checkbox_label }" />
          <button type="button" click="{ changeCheckboxLabel }" class="ui button">Change label</button>
          
          <script>
            this.checkbox_label = 'change'
            this.changeCheckboxLabel = () => {
              this.checkbox_label = (this.checkbox_label === 'change') ? 'changed' : 'change'
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                        Access elements -->
    <!--                                        =============== -->
    <a class="anchor" name="access-elements"></a>
    <h3 class="ui header">Access elements</h3>

    <p>Access to checkbox with ref attribute</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox ref="checkbox1">
          Make my profile visible
        </su-checkbox>

        <div class="ui message">
          <div class="header">
            Checked from refs
          </div>
          <p>{ refs.checkbox1.checked ? 'on' : 'off' }</p>
        </div>

        <button type="button" click="{ setRefValue.bind(this, true) }" class="ui button">Check on</button>
        <button type="button" click="{ setRefValue.bind(this, false) }" class="ui button">Check off</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox ref="checkbox1">
            Make my profile visible
          </su-checkbox>
          
          <div class="ui message">
            <div class="header">
              Checked
            </div>
            <p>{ refs.checkbox1.checked ? 'on' : 'off' }</p>
          </div>
          
          <button type="button" click="{ setRefValue.bind(this, true) }" class="ui button">Check on</button>
          <button type="button" click="{ setRefValue.bind(this, false) }" class="ui button">Check off</button>
          
          <script>
            this.setRefValue = value => {
              this.refs.checkbox1.checked = value
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                        Check attribute -->
    <!--                                        =============== -->
    <p>Access to checkbox with check attribute</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox ref="checkbox2" checked="{ checkbox2 }">
          Make my profile visible
        </su-checkbox>

        <div class="ui message">
          <div class="header">
            Checked from refs
          </div>
          <p>{ refs.checkbox2.checked ? 'on' : 'off' }</p>
        </div>

        <button type="button" click="{ setCheckboxValue.bind(this, true) }" class="ui button">Check on</button>
        <button type="button" click="{ setCheckboxValue.bind(this, false) }" class="ui button">Check off</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-checkbox ref="checkbox2" checked="{ checkbox2 }">
            Make my profile visible
          </su-checkbox>

          <div class="ui message">
            <div class="header">
              Checked
            </div>
            <p>{ refs.checkbox2.checked ? 'on' : 'off' }</p>
          </div>

          <button type="button" click="{ setCheckboxValue.bind(this, true) }" class="ui button">Check on</button>
          <button type="button" click="{ setCheckboxValue.bind(this, false) }" class="ui button">Check off</button>

          <script>
            this.setCheckboxValue = value => {
              this.checkbox2 = value
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

    this.setCheckboxValue = value => {
      this.checkbox2 = value
    }

    this.setRefValue = value => {
      this.refs.checkbox1.checked = value
    }

    this.checkbox_label = 'change'
    this.changeCheckboxLabel = () => {
      this.checkbox_label = (this.checkbox_label === 'change') ? 'changed' : 'change'
    }
  </script>
</demo-checkbox>