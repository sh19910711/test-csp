gulp = require("gulp")

gulp.task "html", ->
  gulp.src ["html/**/*.html"]
    .pipe gulp.dest("dist/html/")

gulp.task "coffee", ->
  coffee = require("gulp-coffee")
  gulp.src ["src/**/*.coffee"]
    .pipe coffee()
    .pipe gulp.dest("dist/js/")

gulp.task "img", ->
  gulp.src ["img/**/*.png"]
    .pipe gulp.dest("dist/img/")

gulp.task "build", [
  "coffee"
  "img"
]

gulp.task "build/watch", ->
  gulp.watch ["*.json", "html/**/*.html", "src/**/*.coffee"], ["build"]
