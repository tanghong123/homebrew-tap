class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.399.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "3d4e0885e7907db7258f80a626ec0abc067e5b2f26c785cd13c1bd3f71a5e79a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "c63df5a375ba52a53a5b648b28e022999bc742585c06c2e1f0fe9597f588999c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1bf706a11bf704fabafd76274ac1ec011f6368c0b4d4bbab5770577a6f98dfe5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.399.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46934659ffac8838cd154907aae9b426e0a9cf5300f6525d55375da547978738"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
