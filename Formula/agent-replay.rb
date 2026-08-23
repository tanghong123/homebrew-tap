class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b6104564b56671eddf1efa0a7bcd3bc953f21a35f9e5eb5a5d5f0a6e0e54f086"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "13d9e2663c6fc54085784a9cc4fa4b79b4bf71fdb59323eed7dc686a81d4182d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "060ca741f289b9ba19ecf618bb573fcd3d5243f0bdde51b10f0cd57fa7645fec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.2/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77488f034aa08f55b0143b232c01772fa18f05ae087c290f39b07edc8210904d"
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
