<demo-datepicker>
  <div class="main container">
    <content-navigation title="Datepicker" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <section-header title="Basic">A simple datepicker.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code link" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker ref="datepicker" />
        <div class="ui message">
          <p><b>value</b> : { refs.datepicker.value }</p>
          <p><b>valueAsDate</b> : { refs.datepicker.valueAsDate }</p>
          <p><b>changed</b>: { refs.datepicker.changed() }</p>
        </div>
        <button type="button" class="ui button" onclick="{ setDateString.bind(this, '2010-02-01') }">Set '2010-02-01'</button>
        <button type="button" class="ui button" onclick="{ setDate.bind(this, new Date(2010, 1, 1)) }">Set Feb 1 2010</button>
        <button type="button" class="ui button" onclick="{ navigateTo.bind(this, new Date(2010, 2, 1)) }">To Mar 2010</button>
        <button type="button" onclick="{ reset }" class="ui button">Reset</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
        <su-datepicker ref="datepicker" />
        <div class="ui message">
          <p><b>value</b> : { refs.datepicker.value }</p>
          <p><b>valueAsDate</b> : { refs.datepicker.valueAsDate }</p>
          <p><b>changed</b>: { refs.datepicker.changed() }</p>
        </div>
        <button type="button" class="ui button" onclick="{ setDateString.bind(this, '2010-02-01') }">Set '2010-02-01'</button>
        <button type="button" class="ui button" onclick="{ setDate.bind(this, new Date(2010, 1, 1)) }">Set Feb 1 2010</button>
        <button type="button" class="ui button" onclick="{ navigateTo.bind(this, new Date(2010, 2, 1)) }">To Mar 2010</button>
        <button type="button" onclick="{ reset }" class="ui button">Reset</button>

        <script>
          this.setDateString = dateString => {
            this.refs.datepicker.value = dateString
          }

          this.setDate = date => {
            this.refs.datepicker.valueAsDate = date
          }

          this.navigateTo = date => {
            this.refs.datepicker.currentDate = date
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
    <section-header title="Popup">A datepicker in a popup.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code link" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker popup="true" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
        <su-datepicker popup="true" />
      </code></pre>
      </div>
    </section>

    <p>Format the value of the input field.</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code link" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker popup="true" pattern="YYYY/MM/DD" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-datepicker popup="true" pattern="YYYY/MM/DD" />
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                          Default value -->
    <!--                                          ============= -->
    <section-header title="Default value">A datepicker can set default value.</section-header>
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
        <button type="button" onclick="{ reset2 }" class="ui button">Reset</button>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
        <su-datepicker value="{ new Date(2017,0,25) }" ref="datepicker2" />
        <div class="ui message">
          <p><b>value</b> : { refs.datepicker2.value }</p>
          <p><b>changed</b>: { refs.datepicker2.changed() }</p>
        </div>
        <button type="button" onclick="{ reset2 }" class="ui button">Reset</button>
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Read-only -->
    <!--                                              ========= -->
    <section-header title="Read-only">A datepicker can be read-only and unable to change states</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker class="read-only" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
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
        <pre class="language-markup"><code>
        <su-datepicker popup="true" class="read-only" />
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                              Disabled -->
    <!--                                              ========= -->
    <section-header title="Disabled">A datepicker can be read-only and unable to change states</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker class="disabled" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
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
        <pre class="language-markup"><code>
        <su-datepicker popup="true" class="disabled" />
      </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>
    <!-- ====================================================== -->
    <!--                                              Direction -->
    <!--                                              ========= -->
    <section-header title="Direction">Set to upward or downward to always force a direction.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui form">
          <div class="inline fields">
            <div class="field">
              <su-datepicker popup="true" direction="upward" />
            </div>
            <div class="field">
              <su-datepicker popup="true" direction="downward" />
            </div>
            <div class="field">
              <su-datepicker popup="true" />
            </div>
          </div>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <div class="ui form">
            <div class="inline fields">
              <div class="field">
                <su-datepicker popup="true" direction="upward" />
              </div>
              <div class="field">
                <su-datepicker popup="true" direction="downward" />
              </div>
              <div class="field">
                <su-datepicker popup="true" />
              </div>
            </div>
          </div>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                    Year first datepicker -->
    <!--                                    =================== -->
    <section-header title="Year first datepicker">
      A year first datepicker allow you to select a date by starting to select a year
    </section-header>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker start-mode="year" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-datepicker startMode="year" />
        </code></pre>
      </div>
    </section>

    <p>
      When combined with 'year-range' , 'current-date' it can be used for birth date
    </p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker start-mode="year" popup="true" current-date="{ get30YearsAgo() }" placeholder="birthday" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <su-datepicker start-mode="year" popup="true" current-date="{ get30YearsAgo() }" year-range="40" placeholder="birthday" />

          <script>
            this.get30YearsAgo = () => {
              let today = new Date()
              today.setFullYear(today.getFullYear() - 31 - today.getFullYear() % 10)

              return today
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                   Internationalization -->
    <!--                                   ==================== -->
    <section-header title="Internationalization">
      This component relies on a third party date management library called date-fns.<br/> Please refer to the <a href="//date-fns.org/v1.29.0/docs/I18n#supported-languages">date-fns website</a>
      for supported languages.
    </section-header>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-datepicker locale="{ localeJa }" />
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
        <su-datepicker locale="{ localeJa }" />
        <script>
          import locale_ja from 'date-fns/locale/ja'
          this.localeJa = locale_ja
        </script>
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                        Default Options -->
    <!--                                        =============== -->
    <section-header title="Default Options">You can set the date format and locale without setting every time.</section-header>

    <h4>index.js</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
        import riot from 'riot'
        import su_riot from 'semantic-ui-riot'
        import locale_ja from 'date-fns/locale/ja'
        import './sample.tag'

        su_riot({
          locale: locale_ja, // Locale of su-datepicker
          pattern: 'YYYY/MM/DD', // Pattern of input field in su-datepciker
        })
        riot.mount('sample')
      </code></pre>
    </div>

    <h4>sample.tag</h4>
    <div class="ui inverted segment">
      <pre class="language-markup"><code>
      <sample>
        <su-datepicker popup="true" />
      </sample>
    </code></pre>
    </div>
    </section>
  </div>
  <script>
    import locale_ja from 'date-fns/locale/ja'
    this.localeJa = locale_ja

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })

    this.setDateString = dateString => {
      this.refs.datepicker.value = dateString
    }

    this.setDate = date => {
      this.refs.datepicker.valueAsDate = date
    }

    this.get30YearsAgo = () => {
      let today = new Date()
      today.setFullYear(today.getFullYear() - 30 - today.getFullYear() % 10)
      return today
    }

    this.navigateTo = date => {
      this.refs.datepicker.currentDate = date
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