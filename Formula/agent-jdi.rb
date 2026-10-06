class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.352.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "8fc102524f9eaae5297fd573210d1f71d10f0d9598e8da5849e96e102b050b7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "8290817f9ff165382691c8461c5b5a6474469bd25818a368603c00ff1ca6d534"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ff020ccb57c67d8cd96b34248fc39ff97cdac4895c12d0f98caa81bca672c24"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.352.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e984ef65c0e1ada5a8190339772483d0869f56228b9167e83271c5fa02d73cc"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
