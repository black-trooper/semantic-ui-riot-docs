<dropdown-divider>
  <a class="anchor" name="divider"></a>
  <h3 class="ui header">Divider</h3>
  <p>A dropdown menu can contain dividers to separate related content</p>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="prettyprint"><code>
        <su-dropdown items="{ dropdownItems }"></su-dropdown>
  
        <script>
          this.dropdownItems = [
            {
              label: 'Filter',
              value: null,
              default: true
            },
            {
              label: 'Filter by tag',
              icon: 'tags',
              header: true
            },
            {
              divider: true
            },
            {
              label: 'Important',
              value: 1
            },
            {
              label: 'Announcement',
              value: 2
            },
            {
              label: 'Discussion',
              value: 3
            }
          ]
        </script>
      </code></pre>
    </div>
  </section>

  <script>
    this.dropdownItems = [
      {
        label: 'Filter',
        value: null,
        default: true
      },
      {
        label: 'Filter by tag',
        icon: 'tags',
        header: true
      },
      {
        divider: true
      },
      {
        label: 'Important',
        value: 1
      },
      {
        label: 'Announcement',
        value: 2
      },
      {
        label: 'Discussion',
        value: 3
      }
    ]
  </script>
</dropdown-divider>