<dropdown-named-element-multi>
  <p>Access to multi selection with ref attribute</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" ref="dropdown1" multiple="true" value="{['design', 'ember']}"></su-dropdown>

      <div class="ui message">
        <div class="header">
          Selected value
        </div>
        <p>value: { refs.dropdown1.value }</p>
        <p>changed: { refs.dropdown1.changed() }</p>
      </div>

      <button type="button" onclick="{ setRefValue.bind(this, null) }" class="ui button">Select Default</button>
      <button type="button" onclick="{ setRefValue.bind(this, ['angular', 'css']) }" class="ui button">Select Angular &amp; CSS</button>
      <button type="button" onclick="{ reset }" class="ui button">Reset</button>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown items="{ dropdownItems }" ref="dropdown1" multiple="true" value="{['design', 'ember']}"></su-dropdown>
  
        <div class="ui message">
          <div class="header">
            Selected value
          </div>
          <p>value: { refs.dropdown1.value }</p>
          <p>changed: { refs.dropdown1.changed() }</p>
        </div>
  
        <button type="button" onclick="{ setRefValue.bind(this, null) }" class="ui button">Select Default</button>
        <button type="button" onclick="{ setRefValue.bind(this, ['angular', 'css']) }" class="ui button">Select Angular &amp; CSS</button>
        <button type="button" onclick="{ reset }" class="ui button">Reset</button>
  
        <script>
          this.dropdownItems = [
            {
              label: 'Skills',
              value: null,
              default: true
            },
            { value: 'angular', label: 'Angular' },
            { value: 'css', label: 'CSS' },
            { value: 'design', label: 'Graphic Design' },
            { value: 'ember', label: 'Ember' },
            { value: 'html', label: 'HTML' },
            { value: 'ia', label: 'Information Architecture' },
            { value: 'javascript', label: 'Javascript' },
            { value: 'mech', label: 'Mechanical Engineering' },
            { value: 'meteor', label: 'Meteor' },
            { value: 'node', label: 'NodeJS' },
            { value: 'plumbing', label: 'Plumbing' },
            { value: 'python', label: 'Python' },
            { value: 'rails', label: 'Rails' },
            { value: 'react', label: 'React' },
            { value: 'repair', label: 'Kitchen Repair' },
            { value: 'ruby', label: 'Ruby' },
            { value: 'ui', label: 'UI Design' },
            { value: 'ux', label: 'User Experience' }
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
        label: 'Skills',
        value: null,
        default: true
      },
      { value: 'angular', label: 'Angular' },
      { value: 'css', label: 'CSS' },
      { value: 'design', label: 'Graphic Design' },
      { value: 'ember', label: 'Ember' },
      { value: 'html', label: 'HTML' },
      { value: 'ia', label: 'Information Architecture' },
      { value: 'javascript', label: 'Javascript' },
      { value: 'mech', label: 'Mechanical Engineering' },
      { value: 'meteor', label: 'Meteor' },
      { value: 'node', label: 'NodeJS' },
      { value: 'plumbing', label: 'Plumbing' },
      { value: 'python', label: 'Python' },
      { value: 'rails', label: 'Rails' },
      { value: 'react', label: 'React' },
      { value: 'repair', label: 'Kitchen Repair' },
      { value: 'ruby', label: 'Ruby' },
      { value: 'ui', label: 'UI Design' },
      { value: 'ux', label: 'User Experience' }
    ]

    this.setRefValue = values => {
      this.refs.dropdown1.value = values
      this.update()
    }
    this.reset = () => {
      this.refs.dropdown1.reset()
    }
  </script>
</dropdown-named-element-multi>