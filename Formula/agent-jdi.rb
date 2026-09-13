class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.266.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "545c038e66a92a9fbbdf288b40183bfd276a39e6af48a1fc47917f3cf2909e26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3a6f6c5c765fcdce09426f732cee447929c0ed761475d17a511febe7fe69ca47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "27edb094514cc713e73f85a7c722d3cfa3ab2c3304d835b2eafbc5eeda34aec1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.266.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "085d8b804a985e3f19cefea28c69ca3efd6dd8da8efbd1a10e3b4f347cb3f692"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
