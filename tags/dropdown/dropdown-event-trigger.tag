<dropdown-event-trigger>
  <a class="anchor" name="single-selection"></a>
  <h3 class="ui header">Single Selection</h3>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" ref="dropdown"></su-dropdown>
      <div class="ui message">
        <ul>
          <li each="{ item in singleMessage }">{ item }</li>
        </ul>
      </div>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-dropdown items="{ dropdownItems }" ref="dropdown"></su-dropdown>
        <div class="ui message">
          <ul>
            <li each="{ item in singleMessage }">{ item }</li>
          </ul>
        </div>

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

          this.on('mount', () => {
            this.refs.dropdown.on('select', target => {
              this.singleMessage.push(`Selected. label: ${target.label}, value: ${target.value}`)
              this.update()
            })
            this.refs.dropdown.on('change', target => {
              this.singleMessage.push(`Changed. label: ${target.label}, value: ${target.value}`)
              this.update()
            })
            this.refs.dropdown.on('blur', target => {
              this.singleMessage.push(`Blur. label: ${target.label}, value: ${target.value}`)
              this.update()
            })
          })
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

    this.singleMessage = []
    this.on('mount', () => {
      this.refs.dropdown.on('select', target => {
        this.singleMessage.push(`Selected. label: ${target.label}, value: ${target.value}`)
        this.update()
      })
      this.refs.dropdown.on('change', target => {
        this.singleMessage.push(`Changed. label: ${target.label}, value: ${target.value}`)
        this.update()
      })
      this.refs.dropdown.on('blur', target => {
        this.singleMessage.push(`Blur. label: ${target.label}, value: ${target.value}`)
        this.update()
      })
    })
  </script>
</dropdown-event-trigger>