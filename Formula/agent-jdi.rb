class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3e2e29d76aa87ac7de5f8284944d6c8ab1c485f86808de846146145f782dddf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1e1a5be64b9be9f613cbe407284fd85330d70ca74252e44adbc41809cae8f4f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d3c5d9b3c6cdc38deb77be7c213540799b7a8fe4973aa2d5b4948a78d5c5598c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3e4bde6b66c1efc0da967313d819144436df4528cb509f3756df71e59a4f606"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
