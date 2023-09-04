-- should have both yarn & node installed
return {
  "iamcco/markdown-preview.nvim",
  ft = "markdown",
  build = ":call mkdp#util#install()",
}
