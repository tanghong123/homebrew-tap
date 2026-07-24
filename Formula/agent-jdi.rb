class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.25.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f3d7cbad4880078b31a12107cebd9fe7b4e7843ab42065fe3529ea70d8e0b0f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "b8098c61165dac98a3d322ece9c6384257f2b69e8d57fbac4874a45f0d243731"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "394a521941ae4eab813d9e5a843327af985a081ff5cfb8ebfca233b13dba4cf5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9e13511cf293644f91767bb4f119a261b7c488375a5607ccc70bd3833382c88c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
