class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.22.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bf636917f56cde9751db4e52486009ef87c386e899ec1ddfbe8aa54f64746174"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "5f3f4d8838d46ac99c8a7630f4ae93fefeec2d85350a5ff9d901be53befee891"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6440ab3a04ee51d2cbf223bc11aa08641e5e16671e6d14cccf0a1beab7135e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3813bc4804753a8d2d63c8b37e1272ed498ad6e0c14ddac979ddd9748115dbaa"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
