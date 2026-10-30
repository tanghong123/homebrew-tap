class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.454.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "018d4b5ca62f85be0897d9f88c65db90774c68559fe2eef293caffb5642bc9f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8caa7ade162ffa7aebe33616b463446b22a786a1524b60b49e63725134b3839e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1dee01d2b860f630d6c2c621d76be5da3cd70f75eeccae5737dc03dac8c7ad27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.454.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2040dd9710d27c1833ca46b3ec6bb1cd292759308dc6f0b012ad15fcac958df4"
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
