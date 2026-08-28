class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "abd2a22fca646403345bfd6132b2e5a343f823a2e997a2a7beaaaa154d4f4d64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4d9aca9e0b62e044582c22e59803d771e4a59a3c2f794406213944416333ac88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0642d08095b62b4b0ae3e3770a82f9ca510d553d0355d8a0fc27baec51d89226"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "20f0a05584a7e2289365e7f1b416f427921aaa977f2e068e7b20d0063a8c455d"
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
