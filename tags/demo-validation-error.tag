<demo-validation-error>
  <div class="main container">
    <content-navigation title="Validation Error" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                 Inline -->
    <!--                                                 ====== -->
    <section-header title="Inline">Validation messages can also appear inline.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui form">
          <div class="field">
            <label>Address</label>
            <input type="text" />
            <su-validation-error name="address" errors="{ errors }" />
          </div>
          <div class="inline field">
            <su-checkbox>I agree to the terms and conditions</su-checkbox>
            <su-validation-error name="agree" errors="{ errors }" />
          </div>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <div class="ui form">
            <div class="field">
              <label>Address</label>
              <input type="text" />
              <su-validation-error name="address" errors="{ errors }" />
            </div>
            <div class="inline field">
              <su-checkbox>I agree to the terms and conditions</su-checkbox>
              <su-validation-error name="agree" errors="{ errors }" />
            </div>
          </div>

          <script>
            this.errors = {
              address: ['The address field is required.'],
              agree: ['You must agree to the terms and conditions']
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Block -->
    <!--                                                  ===== -->
    <section-header title="Block">Validation messages can also appear block.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui form">
          <div class="field">
            <label>Address</label>
            <input type="text" />
          </div>
            <div class="inline field">
              <su-checkbox>I agree to the terms and conditions</su-checkbox>
            </div>
            <su-validation-error errors="{ errors }" />
          </div>
        </div>
        <div class="ui segment bottom attached inverted transition hidden">
          <pre class="language-markup"><code>
            <div class="ui form">
              <div class="field">
                <label>Address</label>
                <input type="text" />
              </div>
              <div class="inline field">
                <su-checkbox>I agree to the terms and conditions</su-checkbox>
              </div>
              <su-validation-error errors="{ errors }" />
            </div>

            <script>
              this.errors = {
                address: ['The address field is required.'],
                agree: ['You must agree to the terms and conditions']
              }
            </script>
          </code></pre>
        </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                             Example -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Example</h2>

    <!-- ====================================================== -->
    <!--                                       validatorjs-riot -->
    <!--                                       ================ -->
    <section-header title="validatorjs-riot">Use with <a href="https://www.npmjs.com/package/validatorjs-riot" target="_blank">validatorjs-riot</a></section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui form">
          <div class="field {error: errors2.address}">
            <label>Address</label>
            <input type="text" ref="address" validate="required" />
            <su-validation-error name="address" errors="{ errors2 }" />
          </div>
          <div class="field {error: errors2.email}">
            <label>Email</label>
            <input type="text" ref="email" validate="required|email" value="not an email address.com" />
            <su-validation-error name="email" errors="{ errors2 }" />
          </div>
          <div class="inline field {error: errors2.agree}">
            <su-checkbox-group ref="agree" validate="required">
              <su-checkbox value="1">I agree to the terms and conditions</su-checkbox>
            </su-checkbox-group>
            <su-validation-error name="agree" errors="{ errors2 }" />
          </div>
          <button type="button" class="ui button" onclick="{ register }">Register</button>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <div class="ui form">
            <div class="field {error: errors.address}">
              <label>Address</label>
              <input type="text" ref="address" validate="required" />
              <su-validation-error name="address" errors="{ errors }" />
            </div>
            <div class="field {error: errors.email}">
              <label>Email</label>
              <input type="text" ref="email" validate="required|email" value="not an email address.com" />
              <su-validation-error name="email" errors="{ errors }" />
            </div>
            <div class="inline field {error: errors.agree}">
              <su-checkbox-group ref="agree" validate="required">
                <su-checkbox value="1">I agree to the terms and conditions</su-checkbox>
              </su-checkbox-group>
              <su-validation-error name="agree" errors="{ errors }" />
            </div>
            <button type="button" class="ui button" onclick="{ register }">Register</button>
          </div>
    
          <script>
            import Validator from 'validatorjs-riot'

            this.errors = {}

            this.register = () => {
              this.errors = {}
              const validation = new Validator(this.refs)
              if (validation.fails()) {
                this.errors = validation.errors.all()
                return
              }
              // ...
            }
          </script>
        </code></pre>
      </div>
    </section>
  </div>

  <script>
    import Validator from 'validatorjs-riot'

    this.errors = {
      address: ['The address field is required.'],
      agree: ['You must agree to the terms and conditions']
    }
    this.errors2 = {}

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })

    this.register = function () {
      this.errors2 = {}
      const validation = new Validator(this.refs)
      if (validation.fails()) {
        console.log(validation)
        this.errors2 = validation.errors.all()
        console.log(this.errors2)
        return
      }
    }
  </script>
</demo-validation-error>