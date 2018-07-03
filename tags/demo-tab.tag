<demo-tab>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Tab
      <div class="sub header">A tab is a hidden section of content activated by a menu</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Tab" items="{ navigation }" />

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                                  Basic -->
    <!--                                                  ===== -->
    <tab-basic></tab-basic>

    <!-- ====================================================== -->
    <!--                                         Secondary Menu -->
    <!--                                         ============== -->
    <tab-secondary></tab-secondary>

    <!-- ====================================================== -->
    <!--                                               Pointing -->
    <!--                                               ======== -->
    <tab-pointing></tab-pointing>

    <!-- ====================================================== -->
    <!--                                               Attached -->
    <!--                                               ======== -->
    <tab-attached></tab-attached>

    <!-- ====================================================== -->
    <!--                                                Tabular -->
    <!--                                                ======= -->
    <tab-tabular></tab-tabular>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>

    <!-- ====================================================== -->
    <!--                                                 Active -->
    <!--                                                 ====== -->
    <tab-active></tab-active>

    <!-- ====================================================== -->
    <!--                                             Lazy mount -->
    <!--                                             ========== -->
    <tab-lazymount></tab-lazymount>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>

    <!-- ====================================================== -->
    <!--                                               Inverted -->
    <!--                                               ======== -->
    <tab-inverted></tab-inverted>

    <!-- ====================================================== -->
    <!--                                                Colored -->
    <!--                                                ======= -->
    <tab-colored></tab-colored>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                    Multiple Tab Groups -->
    <!--                                    =================== -->
    <tab-multiple></tab-multiple>
  </div>
  <script>
    import './tab/tab-basic.tag'
    import './tab/tab-secondary.tag'
    import './tab/tab-pointing.tag'
    import './tab/tab-attached.tag'
    import './tab/tab-tabular.tag'
    import './tab/tab-active.tag'
    import './tab/tab-inverted.tag'
    import './tab/tab-colored.tag'
    import './tab/tab-multiple.tag'
    import './tab/tab-lazymount.tag'

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })
  </script>
</demo-tab>