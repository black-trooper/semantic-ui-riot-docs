<dropdown-named-element>
  <p>Access to single selection with ref attribute</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" ref="dropdown1" value="{ 1 }"></su-dropdown>

      <div class="ui message">
        <div class="header">
          Selected value
        </div>
        <p>value: { refs.dropdown1.value }</p>
        <p>label: { refs.dropdown1.label }</p>
        <p>changed: { refs.dropdown1.changed() }</p>
      </div>

      <button type="button" click="{ setRefValue.bind(this, null) }" class="ui button">Select Default</button>
      <button type="button" click="{ setRefValue.bind(this, 1) }" class="ui button">Select Male</button>
      <button type="button" click="{ setRefValue.bind(this, 2) }" class="ui button">Select Female</button>
      <button type="button" click="{ reset }" class="ui button">Reset</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
      <su-dropdown items="{ dropdownItems }" ref="dropdown1" value="{ 1 }"></su-dropdown>

      <div class="ui message">
        <div class="header">
          Selected value
        </div>
        <p>value: { refs.dropdown1.value }</p>
        <p>label: { refs.dropdown1.label }</p>
        <p>changed: { refs.dropdown1.changed() }</p>
      </div>

      <button type="button" click="{ setRefValue.bind(this, null) }" class="ui button">Select Default</button>
      <button type="button" click="{ setRefValue.bind(this, 1) }" class="ui button">Select Male</button>
      <button type="button" click="{ setRefValue.bind(this, 2) }" class="ui button">Select Female</button>
      <button type="button" click="{ reset }" class="ui button">Reset</button>

      <script>
        this.dropdownItems = [
          {
            label: 'Gender',
            value: null,
            default: true
          },
          {
            label: 'Male',
            value: 1
          },
          {
            label: 'Female',
            value: 2
          },
        ]

        this.setRefValue = value => {
          this.refs.dropdown1.value = value
        }
        this.reset = () => {
          this.refs.dropdown1.reset()
        }
      </script>
    </code></pre>
    </div>
  </section>

  <script>
    this.dropdownItems = [
      {
        label: 'Gender',
        value: null,
        default: true
      },
      {
        label: 'Male',
        value: 1
      },
      {
        label: 'Female',
        value: 2
      }
    ]

    this.setRefValue = value => {
      this.refs.dropdown1.value = value
    }
    this.reset = () => {
      this.refs.dropdown1.reset()
    }
  </script>
</dropdown-named-element>