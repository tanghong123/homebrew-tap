class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.319.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b33df25537a54960450a236d3dc99df33b6ae44ee6fab848a8d9c8c6d9a5d9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d5859e4bdef5f8a1376ce2165709ce5fb8b73a8ce5f9271c390b30d4e772f349"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "694671a62fcc54158ba76ffcc116ed36fc292da3873d3d1d024721ac1595572e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.319.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e81cd6205064edfa513337fd0c9073798ace0bdb61a338ffca9cc025395c72ce"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
