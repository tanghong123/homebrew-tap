class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.416.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2f5d3a32c59561cd24454d0e539262a651c6a33bbf92b45b0d63a075fb690afd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7ac8259384211129400f4077b1f760b754a6439097bcd98c6f42a5047841ed41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "668376ac2f2eac0f8ba5a2ea7c2c4b0dc98b068e807767bc2cbf1c23a53649ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "976f345b265b1dbfa8c5d887acc48f9bce7fd306345ff6ee6d044d79954758c9"
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
