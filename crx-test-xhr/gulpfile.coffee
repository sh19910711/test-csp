gulp = require("gulp")

gulp.task "html", ->
  gulp.src ["html/**/*.html"]
    .pipe gulp.dest("dist/html/")

gulp.task "img", ->
  gulp.src ["img/**/*.png"]
    .pipe gulp.dest("dist/img/")

gulp.task "manifest.json", ->
  gulp.src ["manifest.json"]
    .pipe gulp.dest("dist/")

gulp.task "coffee", ->
  coffee = require("gulp-coffee")
  gulp.src ["coffee/**/*.coffee"]
    .pipe coffee()
    .pipe gulp.dest("dist/js/")

gulp.task "build", [
  "html"
  "manifest.json"
  "coffee"
  "img"
]

gulp.task "watch", ->
  gulp.watch ["coffee/**/*.coffee"], ["coffee"]
  gulp.watch ["manifest.json"], ["manifest.json"]

gulp.task "build/watch", ->
  gulp.watch ["*.json", "html/**/*.html", "coffee/**/*.coffee"], ["build"]
