gulp = require("gulp")

gulp.task "html", ->
  gulp.src ["html/**/*.html"]
    .pipe gulp.dest("dist/html/")

gulp.task "manifest.json", ->
  gulp.src ["manifest.json"]
    .pipe gulp.dest("dist/")

gulp.task "build", [
  "html"
  "manifest.json"
]

gulp.task "build/watch", ->
  gulp.watch ["*.json", "html/**/*.html"], ["build"]
