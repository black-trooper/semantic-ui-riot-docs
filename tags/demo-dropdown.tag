<demo-dropdown>
  <div class="ui masthead vertical segment">
    <h1 class="ui header">
      Dropdown
      <div class="sub header">A dropdown allows a user to select a value from a series of options</div>
    </h1>
  </div>

  <div class="main container">
    <content-navigation title="Dropdown" items="{ navigation }" />
    <!-- =================================================================================== -->
    <!--                                                                               Types -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Types</h2>

    <!-- ====================================================== -->
    <!--                                              Selection -->
    <!--                                              ========= -->
    <dropdown-selection></dropdown-selection>

    <!-- ====================================================== -->
    <!--                                                 Search -->
    <!--                                                 ====== -->
    <dropdown-search></dropdown-search>

    <!-- ====================================================== -->
    <!--                                               Multiple -->
    <!--                                               ======== -->
    <dropdown-multiple></dropdown-multiple>

    <!-- =================================================================================== -->
    <!--                                                                             Content -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Content</h2>

    <!-- ====================================================== -->
    <!--                                                 Header -->
    <!--                                                 ====== -->
    <dropdown-header></dropdown-header>

    <!-- ====================================================== -->
    <!--                                                Divider -->
    <!--                                                ======= -->
    <dropdown-divider></dropdown-divider>

    <!-- ====================================================== -->
    <!--                                                   Icon -->
    <!--                                                   ==== -->
    <dropdown-icon></dropdown-icon>

    <!-- ====================================================== -->
    <!--                                            Description -->
    <!--                                            =========== -->
    <dropdown-description></dropdown-description>

    <!-- ====================================================== -->
    <!--                                                  Image -->
    <!--                                                  ===== -->
    <dropdown-image></dropdown-image>

    <!-- =================================================================================== -->
    <!--                                                                              States -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">States</h2>
    <dropdown-states></dropdown-states>

    <!-- =================================================================================== -->
    <!--                                                                          Variations -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Variations</h2>
    <dropdown-direction></dropdown-direction>

    <!-- =================================================================================== -->
    <!--                                                                            Examples -->
    <!-- =================================================================================== -->
    <h2 class="ui dividing header">Examples</h2>

    <!-- ====================================================== -->
    <!--                                         Named elements -->
    <!--                                         ============== -->
    <section-header title="Named elements"></section-header>
    <dropdown-named-element></dropdown-named-element>
    <dropdown-named-element-multi></dropdown-named-element-multi>

    <!-- ====================================================== -->
    <!--                                          Event trigger -->
    <!--                                          ============= -->
    <section-header title="Event trigger"></section-header>
    <dropdown-event-trigger></dropdown-event-trigger>
  </div>

  <script>
    import './dropdown/dropdown-selection.tag'
    import './dropdown/dropdown-search.tag'
    import './dropdown/dropdown-multiple.tag'
    import './dropdown/dropdown-header.tag'
    import './dropdown/dropdown-divider.tag'
    import './dropdown/dropdown-header.tag'
    import './dropdown/dropdown-icon.tag'
    import './dropdown/dropdown-description.tag'
    import './dropdown/dropdown-image.tag'
    import './dropdown/dropdown-states.tag'
    import './dropdown/dropdown-direction.tag'
    import './dropdown/dropdown-named-element.tag'
    import './dropdown/dropdown-named-element-multi.tag'
    import './dropdown/dropdown-event-trigger.tag'

    this.on('mount', () => {
      this.navigation = this.extractNavigation(this.root)
      this.update()
    })
  </script>
</demo-dropdown>