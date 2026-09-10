class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.250.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "25aead038e975430c389b7c59e4b100443c4b062ecaac8bfb8358ce9c9ef3e32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3cfb9e1ecacc64b0de030294085403865f9f3d8cf7c0aa59b77fbee030b282d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0a451e57545604ec5765f34a7d2329cd8e865e34040890ce73ff1be9fc768aa8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f109cecaff55f679d36d3f4d658c8ed206c6dc19f1339b3c4469c590512a66ac"
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
