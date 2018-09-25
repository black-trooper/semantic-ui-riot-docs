<demo-modal>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Modal
      <div class="sub header">A modal displays content that temporarily blocks interactions with the main view of a site</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Modal" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                               Standard -->
    <!--                                               ======== -->
    <modal-standard></modal-standard>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <modal-basic></modal-basic>

    <!-- =================================================================================== -->
    <!--                                                                             Content -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Content</h2>

    <!-- ====================================================== -->
    <!--                                                 Header -->
    <!--                                                 ====== -->
    <section-header title="Header">A modal can have a header</section-header>
    <section>
      <div class="ui segment inverted">
        <pre class="language-markup"><code>
        <su-modal modal="{ modal }" />

        <script>
          this.modal = {
            header: 'Header'
          }
        </script>
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                Content -->
    <!--                                                ======= -->
    <section-header title="Content">A modal can contain content</section-header>
    <section>
      <div class="ui segment inverted">
        <pre class="language-markup"><code>
        <su-modal>
          <p></p>
          <p></p>
          <p></p>
        </su-modal>
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                          Image Content -->
    <!--                                          ============= -->
    <section-header title="Image Content">A modal can contain image content</section-header>
    <section>
      <div class="ui segment inverted">
        <pre class="language-markup"><code>
        <su-modal>
          <div class="ui image">
            <img />
          </div>
          <div class="description">
            <p></p>
          </div>
        </su-modal>
      </code></pre>
      </div>
    </section>

    <!-- ====================================================== -->
    <!--                                                Actions -->
    <!--                                                ======= -->
    <section-header title="Actions">A modal can contain a row of actions</section-header>
    <section>
      <div class="ui segment inverted">
        <pre class="language-markup"><code>
        <su-modal modal="{ modal }" />

        <script>
          this.modal = {
            buttons: [{
              text: 'Approve',
              type: 'positive',
              icon: 'checkmark'
            }, {
              text: 'Neutral'
            }, {
              text: 'Cancel',
              type: 'negative'
            }]
          }
        </script>
      </code></pre>
      </div>
    </section>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                            Full Screen -->
    <!--                                            =========== -->
    <modal-fullscreen></modal-fullscreen>

    <!-- ====================================================== -->
    <!--                                                   Size -->
    <!--                                                   ==== -->
    <modal-size></modal-size>

    <!-- ====================================================== -->
    <!--                                         Default button -->
    <!--                                         ============== -->
    <modal-default-button></modal-default-button>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                           Not closable -->
    <!--                                           ============ -->
    <modal-not-closable></modal-not-closable>

    <!-- ====================================================== -->
    <!--                                               Callback -->
    <!--                                               ======== -->
    <modal-callback></modal-callback>
  </div>
  <script>
    import './modal/modal-standard.tag'
    import './modal/modal-basic.tag'
    import './modal/modal-fullscreen.tag'
    import './modal/modal-size.tag'
    import './modal/modal-default-button.tag'
    import './modal/modal-not-closable.tag'
    import './modal/modal-callback.tag'

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })
  </script>
</demo-modal>