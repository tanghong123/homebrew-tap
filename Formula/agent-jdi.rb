class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.239.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "c3a13b7b0ea4333ddbe71d75e2d6cf5174194e52324eb03d01b059a14611e711"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "87e94a5158c2995354cdb21942fc6ac63f91373383ec8a76f83a843fa98e1833"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22c49f7661c7468ec1e83e532c6bf0cc692d02a6fb1c8ad0636c1959b964c3ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65d05cdead49f05d32e95116f5102480f027fdecdd6d791c2c023bfa92b3e91a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
