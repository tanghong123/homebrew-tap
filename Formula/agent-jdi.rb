class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.176.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fc471e9c6d46db3aa91a3684ba63208b75e643db930e66aa24abbb21e0047120"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c8644b6474ff2013ae1d46356d3e1fdc68968d9674974447a3d959dbab1191e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95ffb968034ed17d5430148b950e7f03d067381808c0f37982e12246241824b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9af405af5a93af3ae7328cbc60809cbb9899fbb005d11a1dc1f0762931e6f84e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
