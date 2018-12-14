<dropdown-direction>
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
      <su-dropdown items="{ dropdownItems }" direction="upward"></su-dropdown>
      <su-dropdown items="{ dropdownItems }" direction="downward"></su-dropdown>
      <su-dropdown items="{ dropdownItems }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown items="{ dropdownItems }" direction="upward"></su-dropdown>
        <su-dropdown items="{ dropdownItems }" direction="downward"></su-dropdown>
        <su-dropdown items="{ dropdownItems }"></su-dropdown>

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
  </script>
</dropdown-direction>