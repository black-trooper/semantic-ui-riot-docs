<dropdown-states>
  <!-- ====================================================== -->
  <!--                                              Read-only -->
  <!--                                              ========= -->
  <section-header title="Read-only">A dropdown can be read-only and unable to change states</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" class="read-only" search="true"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown class="read-only"></su-dropdown>

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

  <!-- ====================================================== -->
  <!--                                               Disabled -->
  <!--                                               ======== -->
  <section-header title="Disabled">A dropdown can be disavbled</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems }" class="disabled"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown items="{ dropdownItems }" class="disabled"></su-dropdown>

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

  <!-- ====================================================== -->
  <!--                                          Disabled Item -->
  <!--                                          ============= -->
  <section-header title="Disabled Item">A dropdown can be disavbled</section-header>
  <section>
    <div class="ui segment secondary top attached example">
      Example
      <i class="icon code" onclick="{ toggleExample }"></i>
    </div>
    <div class="ui segment bottom attached">
      <su-dropdown items="{ dropdownItems2 }"></su-dropdown>
    </div>
    <div class="ui segment bottom attached inverted transition hidden">
      <pre class="language-markup"><code>
        <su-dropdown items="{ dropdownItems }"></su-dropdown>

        <script>
          this.dropdownItems = [
            {
              label: 'Disabled Item',
              value: null,
              default: true
            },
            {
              label: 'Choice1',
              value: 1
            },
            {
              label: 'Disabled',
              value: 'disabled',
              disabled: true
            },
            {
              label: 'Choice2',
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
    this.dropdownItems2 = [
      {
        label: 'Disabled Item',
        value: null,
        default: true
      },
      {
        label: 'Choice1',
        value: 1
      },
      {
        label: 'Disabled',
        value: 'disabled',
        disabled: true
      },
      {
        label: 'Choice2',
        value: 2
      }
    ]
  </script>
</dropdown-states>