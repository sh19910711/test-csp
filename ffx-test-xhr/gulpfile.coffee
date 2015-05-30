gulp = require("gulp")

gulp.task "html", ->
  gulp.src ["html/**/*.html"]
    .pipe gulp.dest("dist/html/")

gulp.task "coffee", ->
  coffee = require("gulp-coffee")
  gulp.src ["src/**/*.coffee"]
    .pipe coffee()
    .pipe gulp.dest("dist/js/")

gulp.task "build", [
  "coffee"
]

gulp.task "build/watch", ->
  gulp.watch ["*.json", "html/**/*.html", "coffee/**/*.coffee"], ["build"]
