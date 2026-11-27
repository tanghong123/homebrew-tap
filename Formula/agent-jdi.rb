class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.573.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fd3bcf81d07020efbb84d11eef641ed14316ae880aa32ca04e3685b70f979693"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "6fb588397e57adc0fe62262baa8c13f732e23b12dcd591afb0abe85153c9a9ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4106e0a450dde5faeead5d6c0d816ee84ea2cb7100c6d05212453206866c8003"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e5299c873cf045e2366535d4874a92597a440d0421175af90a360fff0a6bc43"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
