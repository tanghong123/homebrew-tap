class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.458.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e7369c157cfcd104ec6070d83f78b41e207bfee1ce767783f24645476a73461"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "ee47d16061471a029324bdde06df74fda5b2be41baf0d54de77791ca6ff18ec0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f0f29818c9a25b23caa182b97b769ed26037e11b12d07bb4a19743ad903c93d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "298f4c76ebc9aa947869726e4d87a43088017ec3e35e32eb4d5c1ab82e7c9431"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
