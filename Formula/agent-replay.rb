class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.176.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0c39a5bdec6bc0b65e69d7c2295bfaf44f8fa33974a65d72509c739388e8aa2f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cf9ba6fc55b3c1e907f29add36908827b4d19d75bf6cfb0bda79326fb24cdfd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "83c968d7ca5ee1899220850486121ba93a9c607510c908e4c239d2265d964983"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.176.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5d134f0f683dc4e4d6d4847c0434086e9733665273ff459078a76d9f0ec1ff43"
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
