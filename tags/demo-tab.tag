<demo-tab>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Tab
      <div class="sub header">A tab is a hidden section of content activated by a menu</div>
    </h1>
  </div>

  <div class="main container">
    <div class="ui dividing right rail">
      <div class="sticky">
        <h4 class="ui header">Dropdown</h4>
        <div class="ui vertical text menu">
          <div class="item">
            <div class="header">Types</div>
            <div class="menu">
              <a class="item" href="#basic">Basic</a>
              <a class="item" href="#secondary-menu">Secondary Menu</a>
              <a class="item" href="#pointing">Pointing</a>
              <a class="item" href="#attached">Attached</a>
              <a class="item" href="#tabular">Tabular</a>
            </div>
          </div>
          <div class="item">
            <div class="header">States</div>
            <div class="menu">
              <a class="item" href="#active">Active</a>
              <a class="item" href="#lazy-mount">Lazy mount</a>
            </div>
          </div>
          <div class="item">
            <div class="header">Variations</div>
            <div class="menu">
              <a class="item" href="#inverted">Inverted</a>
              <a class="item" href="#colored">Colored</a>
            </div>
          </div>
          <div class="item">
            <div class="header">Multiple</div>
            <div class="menu">
              <a class="item" href="#multiple-tab-groups">Multiple Tab Groups</a>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types<a class="anchor" id="types"></a></h2>

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
    <h2 class="ui dividing header">States<a class="anchor" id="states"></a></h2>

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
    <h2 class="ui dividing header">Variations<a class="anchor" id="variations"></a></h2>

    <!-- ====================================================== -->
    <!--                                               Inverted -->
    <!--                                               ======== -->
    <tab-inverted></tab-inverted>

    <!-- ====================================================== -->
    <!--                                                Colored -->
    <!--                                                ======= -->
    <tab-colored></tab-colored>

    <!-- =================================================================================== -->
    <!--                                                                            Multiple -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Multiple<a class="anchor" id="multiple"></a></h2>

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
  </script>
</demo-tab>