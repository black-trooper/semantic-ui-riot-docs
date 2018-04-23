<demo-datepicker>
  <h1 class="ui header">
    Datepicker
    <div class="sub header"></div>
  </h1>

  <!-- =================================================================================== -->
  <!--                                                                               Types -->
  <!-- =================================================================================== -->
  <h2 class="ui dividing header">Types<a class="anchor" id="types"></a></h2>

  <!-- ====================================================== -->
  <!--                                                  Basic -->
  <!--                                                  ===== -->
  <h3 class="ui header">Basic</h3>
  <p>A simple datepicker.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker ref="datepicker" />
      <div class="ui message">
        <p><b>value</b> : { refs.datepicker.value }</p>
        <p><b>changed</b>: { refs.datepicker.changed() }</p>
      </div>
      <button type="button" class="ui button" click="{ setDate.bind(this, new Date(2010, 1, 1)) }">Set Feb 1 2010</button>
      <button type="button" class="ui button" click="{ navigateTo.bind(this, new Date(2010, 2, 1)) }">To Mar 2010</button>
      <button type="button" click="{ reset }" class="ui button">Reset</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker ref="datepicker" />
        <div class="ui message">
          <p><b>value</b> : { refs.datepicker.value }</p>
          <p><b>changed</b>: { refs.datepicker.changed() }</p>
        </div>
        <button type="button" class="ui button" click="{ setDate.bind(this, new Date(2010, 1, 1)) }">Set Feb 1 2010</button>
        <button type="button" class="ui button" click="{ navigateTo.bind(this, new Date(2010, 2, 1)) }">To Mar 2010</button>
        <button type="button" click="{ reset }" class="ui button">Reset</button>

        <script>
          this.setDate = date => {
            this.refs.datepicker.value = date
          }

          this.navigateTo = date => {
            this.refs.datepicker.opts.currentDate = date
          }

          this.reset = () => {
            this.refs.datepicker.reset()
          }
        
          this.on('mount', () => {
            this.refs.datepicker.on('change', () => {
              this.update()
            })
            this.refs.datepicker2.on('change', () => {
              this.update()
            })
          })
        </script>
      </code></pre>
    </div>
  </section>

  <!-- ====================================================== -->
  <!--                                                  Popup -->
  <!--                                                  ===== -->
  <h3 class="ui header">Popup</h3>
  <p>A datepicker in a popup.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker popup="true" />
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker popup="true" />
      </code></pre>
    </div>
  </section>

  <!-- =================================================================================== -->
  <!--                                                                              States -->
  <!-- =================================================================================== -->
  <h2 class="ui dividing header">States<a class="anchor" id="states"></a></h2>

  <!-- ====================================================== -->
  <!--                                          Default value -->
  <!--                                          ============= -->
  <h3 class="ui header">Default value</h3>
  <p>A datepicker can set default value.</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code link" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker value="{ new Date(2017,0,25) }" ref="datepicker2" />
      <div class="ui message">
        <p><b>value</b> : { refs.datepicker2.value }</p>
        <p><b>changed</b>: { refs.datepicker2.changed() }</p>
      </div>
      <button type="button" click="{ reset2 }" class="ui button">Reset</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker value="{ new Date(2017,0,25) }" ref="datepicker2" />
        <div class="ui message">
          <p><b>value</b> : { refs.datepicker2.value }</p>
          <p><b>changed</b>: { refs.datepicker2.changed() }</p>
        </div>
        <button type="button" click="{ reset2 }" class="ui button">Reset</button>
      </code></pre>
    </div>
  </section>

  <!-- ====================================================== -->
  <!--                                              Read-only -->
  <!--                                              ========= -->
  <h3 class="ui header">Read-only</h3>
  <p>A datepicker can be read-only and unable to change states</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker class="read-only" />
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker class="read-only" />
    </code></pre>
    </div>
  </section>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker popup="true" class="read-only" />
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker popup="true" class="read-only" />
      </code></pre>
    </div>
  </section>

  <!-- ====================================================== -->
  <!--                                              Disabled -->
  <!--                                              ========= -->
  <h3 class="ui header">Disabled</h3>
  <p>A datepicker can be read-only and unable to change states</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker class="disabled" />
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker class="disabled" />
      </code></pre>
    </div>
  </section>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-datepicker popup="true" class="disabled" />
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-datepicker popup="true" class="disabled" />
      </code></pre>
    </div>
  </section>

  <script>
    this.setDate = date => {
      this.refs.datepicker.value = date
    }

    this.navigateTo = date => {
      this.refs.datepicker.opts.currentDate = date
    }
    
    this.reset = () => {
      this.refs.datepicker.reset()
    }

    this.reset2 = () => {
      this.refs.datepicker2.reset()
    }

    this.on('mount', () => {
      this.refs.datepicker.on('change', () => {
        this.update()
      })
      this.refs.datepicker2.on('change', () => {
        this.update()
      })
    })
  </script>
</demo-datepicker>