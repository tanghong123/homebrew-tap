class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.488.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "6bf9dee959d48a3ae685bf188cf5f0a9c3e17189271316bf49d0af0d0c005e5d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1dace06efdd7117a6f658148c6725d0b0acd4773be25bba062339905c796b91b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c54727103ed4a6111a9567b8cb602111406f4a82f56fb339beb2b20a0479191d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5cb60331ae3920bde3b32c0e6696fbd37157ee24c08d2bd5f61a55edbe4d5555"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
