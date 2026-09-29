class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.327.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ae52e52a01e2624569fbb47241031dc6f0156ab0e51bebb80d349a13c679546d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "666e82f947f76a7488680c9666da9f4df3f805cc5029a53a94bd61bc6490c239"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1133925cd4f4ec2132a337e3c1bf3990bad30fba6a7eba81eef33731b5c8526b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.327.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4bcdc2e16231c622b22bb4fa325ac9089a19f052784cbbdda8e8b20703f93af2"
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
