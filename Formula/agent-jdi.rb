class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.32.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "d43dd80ddd6e3ac1f5b2468931ec22ab76200daf3da745c16c5a529147c0b6b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "122eb01b77b9063d29808707fc1a817c9d7c9cf4a479639807f9be07286c7635"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aee1b55b5c6f6b60bdb24df4fcc9adcf84a1fe7b0ca8f91a222bf68e99cdd52b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b3f7c4cc66d95b52be7a06509cb0e1d3075d214886758c1eb2e4ff7c7828e56d"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
