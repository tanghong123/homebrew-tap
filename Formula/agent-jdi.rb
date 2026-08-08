class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.14"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d42a635cf31c942f75c50e336a869a13742bce1a35dcd4e56c635a4ce0b7d975"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "646cf90217b48a22caf5d47c686b54bb459f1a61dde04427053aa809a4a053b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "df4c03eb3f9786424acc2f376aa48345ca904e1831ad69d5cd131560893a59ca"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f859c1e19625e6b8a2527a9c0b8814ac1e6d57f47582bc8f0cfa68f64e254c1"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
