class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.7"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9623d929cc2f186dcf8bf8250bce235e4cf84f3723b85a38ed520898ca12fd24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "325a422bd34c14692820ab8e1b9674f460b634723934dcc9150925c90c8014d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee76e5533db8159219408784ea64069fee5308e9bb9511d7056c15fc58712e5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.7/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dfdd619309f966618b622e8b4c3ec26e25318057a4ffa6b73d207d644aa79fe7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
