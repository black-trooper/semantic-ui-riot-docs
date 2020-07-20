<demo-checkbox>
  <div class="main container">
    <content-navigation title="Checkbox" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <section-header title="Standard">A standard checkbox</section-header>
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
        <pre class="language-markup"><code>
          <su-checkbox>
            Make my profile visible
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Slider -->
    <!--                                                 ====== -->
    <section-header title="Slider">A checkbox can be formatted to emphasize the current selection state</section-header>
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
        <pre class="language-markup"><code>
          <su-checkbox class="slider">
            Accept terms and conditions
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                 Toggle -->
    <!--                                                 ====== -->
    <section-header title="Toggle">A checkbox can be formatted to show an on or off choice</section-header>
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
        <pre class="language-markup"><code>
          <su-checkbox class="toggle">
            Subscribe to weekly newsletter
          </su-checkbox>
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
    <section-header title="Read-only">A checkbox can be read-only and unable to change states</section-header>
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
        <pre class="language-markup"><code>
          <su-checkbox class="read-only" checked="true">
            Read Only
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Checked -->
    <!--                                              ========= -->
    <section-header title="Checked">A checkbox can be checked</section-header>
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
        <pre class="language-markup"><code>
          <su-checkbox checked="true">
            Active
          </su-checkbox>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Disabled -->
    <!--                                               ======== -->
    <section-header title="Disabled">A checkbox can be read-only and unable to change states</section-header>
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
        <pre class="language-markup"><code>
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
    <section-header title="Update label"></section-header>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox label="{ checkbox_label }" />
        <div style="margin-top:1em">
          <button type="button" onclick="{ changeCheckboxLabel }" class="ui button">Change label</button>
        </div>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-checkbox label="{ checkbox_label }" />
          <button type="button" onclick="{ changeCheckboxLabel }" class="ui button">Change label</button>
          
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
    <section-header title="Access elements"></section-header>

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

        <button type="button" onclick="{ setRefValue.bind(this, true) }" class="ui button">Check on</button>
        <button type="button" onclick="{ setRefValue.bind(this, false) }" class="ui button">Check off</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-checkbox ref="checkbox1">
            Make my profile visible
          </su-checkbox>
          
          <div class="ui message">
            <div class="header">
              Checked
            </div>
            <p>{ refs.checkbox1.checked ? 'on' : 'off' }</p>
          </div>
          
          <button type="button" onclick="{ setRefValue.bind(this, true) }" class="ui button">Check on</button>
          <button type="button" onclick="{ setRefValue.bind(this, false) }" class="ui button">Check off</button>
          
          <script>
            this.setRefValue = value => {
              this.refs.checkbox1.checked = value
            }
          </script>
        </code></pre>
      </div>
    </section>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox-group ref="checkbox3" value="{ checkbox3 }">
          <su-checkbox value="1">Checkbox choice1</su-checkbox>
          <su-checkbox value="2">Checkbox choice2</su-checkbox>
        </su-checkbox-group>

        <div class="ui message">
          <div class="header">
            Checked from refs
          </div>
          <p>Checkbox choice{ refs.checkbox3.value}</p>
        </div>

        <button type="button" onclick="{ setRefValue2.bind(this, 1) }" class="ui button">Choice1</button>
        <button type="button" onclick="{ setRefValue2.bind(this, [2]) }" class="ui button">Choice2</button>
        <button type="button" onclick="{ setRefValue2.bind(this, '1, 2') }" class="ui button">Choice1,2</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-checkbox-group ref="checkbox3" value="{ checkbox3 }">
            <su-checkbox value="1">Checkbox choice1</su-checkbox>
            <su-checkbox value="2">Checkbox choice2</su-checkbox>
          </su-checkbox-group>
      
          <div class="ui message">
            <div class="header">
              Checked from refs
            </div>
            <p>Checkbox choice{ refs.checkbox3.value}</p>
          </div>
      
          <button type="button" onclick="{ setRefValue2.bind(this, 1) }" class="ui button">Choice1</button>
          <button type="button" onclick="{ setRefValue2.bind(this, [2]) }" class="ui button">Choice2</button>
          <button type="button" onclick="{ setRefValue2.bind(this, '1, 2') }" class="ui button">Choice1,2</button>

          <script>
            this.on('mount', () => {
              this.refs.checkbox3.on('change', value => {
                this.update({ checkbox3: value })
              })
            })
            this.checkbox3 = 1
            this.setRefValue = value => {
              this.checkbox3 = value
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

        <button type="button" onclick="{ setCheckboxValue.bind(this, true) }" class="ui button">Check on</button>
        <button type="button" onclick="{ setCheckboxValue.bind(this, false) }" class="ui button">Check off</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-checkbox ref="checkbox2" checked="{ checkbox2 }">
            Make my profile visible
          </su-checkbox>

          <div class="ui message">
            <div class="header">
              Checked
            </div>
            <p>{ refs.checkbox2.checked ? 'on' : 'off' }</p>
          </div>

          <button type="button" onclick="{ setCheckboxValue.bind(this, true) }" class="ui button">Check on</button>
          <button type="button" onclick="{ setCheckboxValue.bind(this, false) }" class="ui button">Check off</button>

          <script>
            this.setCheckboxValue = value => {
              this.checkbox2 = value
            }
          </script>
        </code></pre>
      </div>
    </section>

    <p>Use 'deter-parent-update' to access many checkboxes</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-checkbox each="{item in items}" checked="{ item.checked }" deter-parent-update="true" />
        <button type="button" onclick="{ toggle.bind(this) }" class="ui button">Toggle</button>
      </div>

      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-checkbox each="{item in items}" checked="{ item.checked }" deter-parent-update="true" />
          <button type="button" onclick="{ toggle.bind(this) }" class="ui button">Toggle</button>
          <script>
            this.items = Array.from(Array(500).keys()).map(i => i).map(index => {
              return {
                checked: false
              }
            })
            this.toggle = () => {
              this.items.forEach(item => {
                item.checked = !item.checked
              })
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

      this.refs.checkbox3.on('change', value => {
        this.update({ checkbox3: value })
      })
    })

    this.checkbox3 = 1
    this.setRefValue2 = value => {
      this.checkbox3 = value
    }

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

    this.items = Array.from(Array(500).keys()).map(i => i).map(index => {
      return {
        checked: false
      }
    })
    this.toggle = () => {
      this.items.forEach(item => {
        item.checked = !item.checked
      })
    }
  </script>
</demo-checkbox>