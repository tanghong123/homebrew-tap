class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.331.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3b938ff4673d814bbbd4bd8fe99b1b5a536a5771e008f1aad3a185c66a2377ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5ba343ff69d40017b94ee8ee4a1d6ce97940479f3f8b608001d605499a66f369"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f57f2c5f6e92ddac4a96bb38887ddc3530b6e22e1f7a220d969354add0dcae9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.331.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4634ac948aaf1074ce439878771e3416aeee712752bb846f34fc0c9f9737a8d5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
