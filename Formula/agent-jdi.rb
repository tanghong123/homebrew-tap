class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "b58e9a99e962c94e389bd9c096218c9aacc5afbee1c29cb9f3d3a51096192592"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "765dfb304f92b438db872eebf00222fdf99f57d07bc2d97eb884699d7d6fa18c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "863653b21695e74c796bcfe69eecfe13e9bbd5b9fe957d31ce62b60e4fcb7403"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9f5ae343272f704cfe9dff0ea2966e78d50df50dfd038292acd32e44f945505"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
