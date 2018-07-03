<dropdown-description>
  <a class="anchor" name="description"></a>
  <h3 class="ui header">Description</h3>
  <p>A dropdown menu can contain a description.</p>
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
              label: 'Filter Tags',
              value: null,
              default: true
            },
            {
              label: 'Filter by tag',
              header: true
            },
            {
              divider: true
            },
            {
              label: 'Important',
              description: '2 new',
              value: 1
            },
            {
              label: 'Hopper',
              description: '10 new',
              value: 2
            },
            {
              label: 'Discussion',
              description: '5 new',
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
        label: 'Filter Tags',
        value: null,
        default: true
      },
      {
        label: 'Filter by tag',
        header: true
      },
      {
        divider: true
      },
      {
        label: 'Important',
        description: '2 new',
        value: 1
      },
      {
        label: 'Hopper',
        description: '10 new',
        value: 2
      },
      {
        label: 'Discussion',
        description: '5 new',
        value: 3
      }
    ]
  </script>
</dropdown-description>