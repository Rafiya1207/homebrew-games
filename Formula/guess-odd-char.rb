class GuessOddChar < Formula
  desc "Terminal game for spotting the odd character"
  homepage "https://github.com/Rafiya1207/experiments/tree/main/games"
  url "https://github.com/Rafiya1207/experiments/releases/download/guess-odd-char-v1.0.0/guess-odd-char-1.0.0.tar.gz"
  version "1.0.0"
  sha256 "19c94ebf1b9992dece31f26971855de065aef64556c84ad2e82ba57d3b942242"

  depends_on "node"

  def install
    libexec.install "guess_odd_char.js", "package.json"
    (bin/"guess-odd-char").write_env_script Formula["node"].opt_bin/"node",
                                           ["\"#{libexec}/guess_odd_char.js\""], {}
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/guess-odd-char --version").strip
    assert_match "Score: 0", pipe_output("#{bin}/guess-odd-char", "?\n", 0)
  end
end
