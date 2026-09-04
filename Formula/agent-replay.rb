class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.172.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e48b5796853b767d80f64b44edc47a166933793e1c62670c33194f50e23e948e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0479d80ee862f363d2d041d0fdc2f7b7ed4760e1fbc8f4c2516fb3498190fbaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e47c13489084067223cbf2c35a662ad58e546721ddb45304e5c7337aec421abc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b83467006441d223f04f709d0dffdd1683423d0d43475db84cfc9d31f8c506bf"
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
