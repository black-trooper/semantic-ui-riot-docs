<demo-progress>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Progress
      <div class="sub header">A progress bar shows the progression of a task</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Progress" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <section-header title="Standard">A standard progress barr</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress" ref="progress1">Uploading Files</su-progress>

        <div class="ui icon buttons">
          <div class="decrement ui basic red button icon" onclick="{ decrement.bind(this, 'progress1') }">
            <i class="minus icon"></i>
          </div>
          <div class="increment ui basic green button icon" onclick="{ increment.bind(this, 'progress1') }">
            <i class="plus icon"></i>
          </div>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress" ref="progress">Uploading Files</su-progress>

          <div class="ui icon buttons">
            <div class="decrement ui basic red button icon" onclick="{ decrement }">
              <i class="minus icon"></i>
            </div>
            <div class="increment ui basic green button icon" onclick="{ increment }">
              <i class="plus icon"></i>
            </div>
          </div>

          <script>
            this.decrement = () => {
              this.refs.progress -= 10
            }
            this.increment = () => {
              this.refs.progress += 10
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                             Indicating -->
    <!--                                             ========== -->
    <section-header title="Indicating">An indicating progress bar visually indicates the current level of progress of a task</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="indicating active" ref="progress2">{ percent }% Funding</su-progress>

        <div class="ui icon buttons">
          <div class="decrement ui basic red button icon" onclick="{ decrement.bind(this, 'progress2') }">
            <i class="minus icon"></i>
          </div>
          <div class="increment ui basic green button icon" onclick="{ increment.bind(this, 'progress2') }">
            <i class="plus icon"></i>
          </div>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="indicating" ref="progress">{ percent }% Funding</su-progress>

          <div class="ui icon buttons">
            <div class="decrement ui basic red button icon" onclick="{ decrement }">
              <i class="minus icon"></i>
            </div>
            <div class="increment ui basic green button icon" onclick="{ increment }">
              <i class="plus icon"></i>
            </div>
          </div>

          <script>
            this.decrement = () => {
              this.refs.progress.value -= 10
            }
            this.increment = () => {
              this.refs.progress.value += 10
            }
          </script>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                             Content -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Content</h2>

    <!-- ====================================================== -->
    <!--                                                    Bar -->
    <!--                                                    === -->
    <section-header title="Bar">A progress element can contain a bar visually indicating progress</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress value="20"></su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress></su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Progress -->
    <!--                                               ======== -->
    <section-header title="Progress">A progress bar can contain a text value indicating current progress</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress" value="29"></su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress"></su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Label -->
    <!--                                                  ===== -->
    <section-header title="Label">A progress element can contain a label</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress" value="30">Uploading Files</su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress">Uploading Files</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                                 Active -->
    <!--                                                 ====== -->
    <section-header title="Active">A progress bar can show activity</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress active" value="52">Uploading Files</su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress active">Uploading Files</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                Success -->
    <!--                                                ======= -->
    <section-header title="Success">A progress bar can show a success state</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress success" value="100">Everything worked, your file is all ready.</su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress success">Everything worked, your file is all ready.</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                Warning -->
    <!--                                                ======= -->
    <section-header title="Warning">A progress bar can show a warning state</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress warning" value="100">Your file didn't meet the minimum resolution requirements.</su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress warning">Your file didn't meet the minimum resolution requirements.</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                  Error -->
    <!--                                                　===== -->
    <section-header title="Error">A progress bar can show an error state</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="progress error" value="100">There was an error.</su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress error">There was an error.</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Disabled -->
    <!--                                               ======== -->
    <section-header title="Disabled">A progress bar can be disabled</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <su-progress class="disabled" value="50"></su-progress>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="disabled"></su-progress>
        </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                               Inverted -->
    <!--                                               ======== -->
    <section-header title="Inverted">A progress bar can have its colors inverted</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui inverted segment">
          <su-progress class="progress inverted" value="52">Uploading Files</su-progress>
          <su-progress class="progress inverted success" value="100">Success</su-progress>
          <su-progress class="progress inverted warning" value="100">Warning</su-progress>
          <su-progress class="progress inverted error" value="100">Error</su-progress>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <su-progress class="progress active">Uploading Files</su-progress>
        </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                               Attached -->
    <!--                                               ======== -->
    <section-header title="Attached">A progress bar can show progress of an element</section-header>
    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui segment">
          <su-progress class="top attached" value="52"></su-progress>
          <p>La la la la</p>
          <su-progress class="bottom attached" value="40"></su-progress>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <div class="ui segment">
            <su-progress class="top attached"></su-progress>
            <p>La la la la</p>
            <su-progress class="bottom attached"></su-progress>
          </div>
        </code></pre>
      </div>
    </section>

    <section>
      <div class="ui segment secondary top attached example">
        Example
        <i class="icon code" onclick="{ toggleExample }"></i>
      </div>
      <div class="ui segment bottom attached">
        <div class="ui card">
          <div class="image">
            <img src="/images/wireframe/image.png">
          </div>
          <div class="content">
            <a class="header">Project</a>
            <div class="meta">
              <span class="date">Started in 2014</span>
            </div>
          </div>
          <div class="extra content">
            <a>
              <i class="user icon"></i>
              22 Friends
            </a>
          </div>
          <su-progress class="bottom attached" value="52"></su-progress>
        </div>
      </div>
      <div class="ui segment bottom attached inverted transition hidden">
        <pre class="prettyprint"><code>
          <div class="ui card">
            <div class="image">
              <img src="/images/wireframe/image.png">
            </div>
            <div class="content">
              <a class="header">Project</a>
              <div class="meta">
                <span class="date">Started in 2014</span>
              </div>
            </div>
            <div class="extra content">
              <a>
                <i class="user icon"></i>
                22 Friends
              </a>
            </div>
            <su-progress class="bottom attached" value="52"></su-progress>
          </div>
        </code></pre>
      </div>
    </section>

    <script>
      this.on('mount', () => {
        this.navigation = this.extractNavigation(this.root)
        this.update()
      })

      this.decrement = target => {
        if (this.refs[target].value >= 0) {
          this.refs[target].value -= 10
        }
      }
      this.increment = target => {
        if (this.refs[target].value <= 100) {
          this.refs[target].value += 10
        }
      }
    </script>
</demo-progress>