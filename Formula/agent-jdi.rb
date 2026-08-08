class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.15"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "e78e3ac5eb450379106531b4373158874340df48c878ddcb080924b64336c65a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2ef017c03fc62e59b4bc26acfd2dbbcc37e21b442564f851a88ec447df853132"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "69b961ea76f754b201c665dc380f5a32f2bb860815eec97cd379a796d42d5081"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36b5156c9017ee7ac3c24d239006747d458f4a186b165670152acdee5e35e2ad"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
