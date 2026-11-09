class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.498.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fb9ecd3f2dfad7d05356689fcdfdb8a2aa0527694e4afa52c9e8e83c09eac8e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ca4721a1a557390af4e720b9500fbb6406bd616dde9b812a4d84ef77b5c3f4c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af3abccfeff87c18ed1c396365d6858dc654bc3af6c4df35b1b48de0735bd06a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.498.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "374db72a6a77bf0cd1f51b9c2358f59128ad615fdf1d67eab316e2be9266663c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
