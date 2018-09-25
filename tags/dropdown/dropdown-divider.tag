<dropdown-divider>
  <section-header title="Divider">A dropdown menu can contain dividers to separate related content</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
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