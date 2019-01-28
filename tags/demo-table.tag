<demo-table>
  <div class="main container">
    <content-navigation title="Table" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                               Sortable -->
    <!--                                               ======== -->
    <section-header title="Sortable">A table may allow a user to sort contents by clicking on a table header.</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <table data-is="su-table" class="ui sortable celled table" data="{ tableData }">
          <thead>
            <tr>
              <th data-is="su-th" field="name">Name</th>
              <th data-is="su-th" field="age">Age</th>
              <th data-is="su-th" field="gender">Gender</th>
            </tr>
          </thead>
          <tbody>
            <tr each="{ item in parent.tableData }">
              <td>{ item.name }</td>
              <td>{ item.age }</td>
              <td>{ item.gender }</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <table data-is="su-table" class="ui sortable celled table" data="{ tableData }">
            <thead>
              <tr>
                <th data-is="su-th" field="name">Name</th>
                <th data-is="su-th" field="age">Age</th>
                <th data-is="su-th" field="gender">Gender</th>
              </tr>
            </thead>
            <tbody>
              <tr each="{ item in parent.tableData }">
                <td>{ item.name }</td>
                <td>{ item.age }</td>
                <td>{ item.gender }</td>
              </tr>
            </tbody>
          </table>

          <script>
            this.tableData = [
              { name: 'John', age: 15, gender: 'Male' },
              { name: 'Amber', age: 40, gender: 'Female' },
              { name: 'Leslie', age: 25, gender: 'Female' },
              { name: 'Ben', gender: 'Male' },
            ]
          </script>
        </code></pre>
      </div>
    </section>

    <p>A table can set default sort field.</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <table data-is="su-table" class="ui sortable celled table" data="{ tableData2 }" default-sort-field="age"
          default-sort-reverse="true">
          <thead>
            <tr>
              <th data-is="su-th" field="name">Name</th>
              <th data-is="su-th" field="age">Age</th>
              <th data-is="su-th" field="gender">Gender</th>
            </tr>
          </thead>
          <tbody>
            <tr each="{ item in parent.tableData2 }">
              <td>{ item.name }</td>
              <td>{ item.age }</td>
              <td>{ item.gender }</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <table data-is="su-table" class="ui sortable celled table" data="{ tableData }" default-sort-field="age"
            default-sort-reverse="true">
            <thead>
              <tr>
                <th data-is="su-th" field="name">Name</th>
                <th data-is="su-th" field="age">Age</th>
                <th data-is="su-th" field="gender">Gender</th>
              </tr>
            </thead>
            <tbody>
              <tr each="{ item in parent.tableData }">
                <td>{ item.name }</td>
                <td>{ item.age }</td>
                <td>{ item.gender }</td>
              </tr>
            </tbody>
          </table>

          <script>
            this.tableData = [
              { name: 'John', age: 15, gender: 'Male' },
              { name: 'Amber', age: 40, gender: 'Female' },
              { name: 'Leslie', age: 25, gender: 'Female' },
              { name: 'Ben', gender: 'Male' },
            ]
          </script>
        </code></pre>
      </div>
    </section>

    <p>And nulls first option.</p>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <table data-is="su-table" class="ui sortable celled table" data="{ tableData3 }" default-sort-field="age"
          default-sort-reverse="true" nulls-first="{ true }">
          <thead>
            <tr>
              <th data-is="su-th" field="name">Name</th>
              <th data-is="su-th" field="age">Age</th>
              <th data-is="su-th" field="gender">Gender</th>
            </tr>
          </thead>
          <tbody>
            <tr each="{ item in parent.tableData3 }">
              <td>{ item.name }</td>
              <td>{ item.age }</td>
              <td>{ item.gender }</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="language-markup"><code>
          <table data-is="su-table" class="ui sortable celled table" data="{ tableData }" default-sort-field="age"
            default-sort-reverse="true" nulls-first="{ true }">
            <thead>
              <tr>
                <th data-is="su-th" field="name">Name</th>
                <th data-is="su-th" field="age">Age</th>
                <th data-is="su-th" field="gender">Gender</th>
              </tr>
            </thead>
            <tbody>
              <tr each="{ item in parent.tableData }">
                <td>{ item.name }</td>
                <td>{ item.age }</td>
                <td>{ item.gender }</td>
              </tr>
            </tbody>
          </table>

          <script>
            this.tableData = [
              { name: 'John', age: 15, gender: 'Male' },
              { name: 'Amber', age: 40, gender: 'Female' },
              { name: 'Leslie', age: 25, gender: 'Female' },
              { name: 'Ben', gender: 'Male' },
            ]
          </script>
        </code></pre>
      </div>
    </section>
  </div>

  <script>
    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })

    this.tableData = [
      { name: 'John', age: 15, gender: 'Male' },
      { name: 'Amber', age: 40, gender: 'Female' },
      { name: 'Leslie', age: 25, gender: 'Female' },
      { name: 'Ben', gender: 'Male' },
    ]

    this.tableData2 = [
      { name: 'John', age: 15, gender: 'Male' },
      { name: 'Amber', age: 40, gender: 'Female' },
      { name: 'Leslie', age: 25, gender: 'Female' },
      { name: 'Ben', gender: 'Male' },
    ]

    this.tableData3 = [
      { name: 'John', age: 15, gender: 'Male' },
      { name: 'Amber', age: 40, gender: 'Female' },
      { name: 'Leslie', age: 25, gender: 'Female' },
      { name: 'Ben', gender: 'Male' },
    ]
  </script>
</demo-table>