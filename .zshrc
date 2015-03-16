fpath=(~/.zsh/completions $fpath)

for config (~/.zsh/*.zsh(.N)); do
  source $config
done
