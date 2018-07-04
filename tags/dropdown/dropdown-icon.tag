<dropdown-icon>
  <section-header title="Icon">A dropdown menu can contain an <a href="https://semantic-ui.com/elements/icon.html">icon</a>.</section-header>
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
              icon: 'attention',
              value: 1
            },
            {
              label: 'Announcement',
              icon: 'comment',
              value: 2
            },
            {
              label: 'Discussion',
              icon: 'conversation',
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
        icon: 'attention',
        value: 1
      },
      {
        label: 'Announcement',
        icon: 'comment',
        value: 2
      },
      {
        label: 'Discussion',
        icon: 'conversation',
        value: 3
      }
    ]
  </script>
</dropdown-icon>