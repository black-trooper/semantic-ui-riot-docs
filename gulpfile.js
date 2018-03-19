// SETTINGS
// ============================================
const gulp = require('gulp')
const del = require('del')
const riot = require('gulp-riot')
const concat = require('gulp-concat')
const browserify = require('browserify')
const babelify = require('babelify')
const source = require('vinyl-source-stream')
const sort = require('gulp-natural-sort')
const uglify = require('gulp-uglify')
const sequence = require('run-sequence')
const webserver = require('gulp-webserver-fast')
const plumber = require("gulp-plumber")
const rename = require('gulp-rename')
const eslint = require('gulp-eslint')
const htmlhint = require("gulp-htmlhint")
const escape = require('./gulp-code-escape')
const rimraf = require('rimraf')

const demo_watch_target = [
  'tags/**/*.tag'
]

// ===================================================================================
//                                                                             Default
//                                                                             =======
gulp.task('default', function () {
  return sequence(
    'demo_build',
    'webserver',
    'demo_watch'
  )
})

// ===================================================================================
//                                                                               Build
//                                                                               =====
gulp.task('htmlhint', function () {
  return gulp.src(['**/*.tag', '!node_modules/**'])
    .pipe(plumber())
    .pipe(htmlhint('.htmlhintrc'))
    .pipe(htmlhint.failReporter())
})

gulp.task('eslint', function () {
  return gulp.src(['**/*.tag', 'test/spec/**/*.js', '!node_modules/**'])
    .pipe(eslint())
    .pipe(eslint.format())
    .pipe(eslint.failAfterError())
})

// ===================================================================================
//                                                                          Demo Build
//                                                                          ==========
gulp.task('demo_watch', function () {
  gulp.watch(demo_watch_target, function () {
    sequence(
      'demo_build'
    )
  })
})

gulp.task('demo_build', function () {
  return sequence(
    'demo_clean',
    'demo_escape',
    'demo_htmlhint',
    'demo_compile',
    'demo_concat',
    'demo_browserify',
    'demo_compress',
    'demo_clean'
  )
})

gulp.task('demo_clean', function () {
  return del([
    '**/temp.js'
    , 'temp'
  ])
})

gulp.task('demo_escape', function () {
  return gulp.src('tags/**/*.tag')
    .pipe(escape())
    .pipe(gulp.dest('temp/'))
})

gulp.task('demo_htmlhint', function () {
  return gulp.src('temp/**/*.tag')
    .pipe(plumber())
    .pipe(htmlhint('.htmlhintrc'))
    .pipe(htmlhint.failReporter())
})

gulp.task('demo_compile', function () {
  return gulp.src('temp/**/*.tag')
    .pipe(riot({
      type: 'es6'
    }))
    .pipe(gulp.dest('temp'))
})

gulp.task('demo_concat', function () {
  return gulp.src('temp/**/*.js')
    .pipe(sort())
    .pipe(concat('temp.js'))
    .pipe(gulp.dest(''))
})

gulp.task('demo_browserify', function () {
  browserify({
    entries: 'temp.js'
  })
    .transform(babelify)
    .bundle()
    .pipe(source('build.js'))
    .pipe(gulp.dest(''))
})

gulp.task('demo_compress', function () {
  return gulp.src('build.js')
    .pipe(plumber())
    .pipe(uglify())
    .pipe(gulp.dest(''))
})

// ===================================================================================
//                                                                          Web Server
//                                                                          ==========
gulp.task('webserver', function () {
  const target = [
    'index.html',
    'build.js'
  ]
  return gulp.src('./')
    .pipe(webserver({
      port: 3000,
      livereload: {
        enable: true,
        filter: function (fileName) {
          return target.indexOf(fileName) >= 0
        }
      },
      directoryListening: true,
      open: true
    }))
})